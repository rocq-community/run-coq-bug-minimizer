#!/usr/bin/env bash
# coqchk-as-coqc.sh
#
# Wrapper that makes a coqchk / `rocq check` invocation look like a coqc
# invocation to the bug minimizer.  It implements the four-step plan from
# https://github.com/rocq-community/run-coq-bug-minimizer/issues/53:
#
#   1. collect the list of file modules that coqchk is asked to check;
#   2. create a new .v file in /tmp that is just `Require <list of things>.`,
#      named as a valid module name;
#   3. emit the relevant MINIMIZER_DEBUG metadata as if coqc had been invoked
#      on the tmp file, indicating which coqchk flags should be passed on to
#      the minimizer (via a `${debug_prefix}.coqchk` side file);
#   4. run coqchk as it was originally called, rewriting any errors in
#      stdout/stderr to match the format of coqc errors, pointing at the last
#      line of the tmp file.
#
# Usage:
#   coqchk-as-coqc.sh <coqc-cmd> <coqchk-cmd> -- <original coqchk arguments...>
#
# where <coqc-cmd> and <coqchk-cmd> are `printf %q`-quoted command prefixes
# (so that, e.g., `rocq c` can be passed as a single argument).  <coqc-cmd> is
# the (unwrapped) compiler used to build the tmp file; <coqchk-cmd> is the
# (unwrapped) checker that is actually run and recorded in the metadata.

set -o pipefail

coqc_q="$1"; shift || true
coqchk_q="$1"; shift || true
if [ "${1:-}" == "--" ]; then shift; fi

eval "coqc_cmd=( ${coqc_q} )"
eval "coqchk_cmd=( ${coqchk_q} )"
orig_args=("$@")

# If we have no checker command for some reason, fail loudly rather than
# silently doing nothing.
if [ "${#coqchk_cmd[@]}" -eq 0 ]; then
    >&2 printf 'coqchk-as-coqc.sh: no coqchk command provided\n'
    exit 1
fi

# ---------------------------------------------------------------------------
# Step 1: parse the original coqchk arguments.
#
# coqchk's option grammar (see checker/coqchk_main.ml) is closed, so we can
# classify every argument as one of:
#   * load-path / kernel options that also make sense for coqc (-R, -Q,
#     -coqlib, -bytecode-compiler, -impredicative-set, -indices-matter, -boot)
#   * checker-only options that must be forwarded to the minimizer's coqchk
#     (-silent, -admit, -norec)
#   * purely diagnostic options we can drop (-o, -m, -d, -debug, -profile)
#   * everything else, which coqchk treats as a target (a .vo file or a
#     logical module name)
# ---------------------------------------------------------------------------

coqc_extra=()   # forwarded to the synthetic coqc invocation
chk_fwd=()      # forwarded to the minimizer via --coqchk-args
targets=()      # .vo files / module names to be Require'd
R_dirs=()       # physical dirs of -R/-Q bindings (for .vo -> module mapping)
R_logs=()       # logical names of -R/-Q bindings

args=("${orig_args[@]}")
while [ "${#args[@]}" -gt 0 ]; do
    arg="${args[0]}"
    case "${arg}" in
        -R|-Q)
            dir="${args[1]}"; log="${args[2]}"
            coqc_extra+=("${arg}" "${dir}" "${log}")
            R_dirs+=("${dir}"); R_logs+=("${log}")
            args=("${args[@]:3}")
            ;;
        -coqlib|--coqlib|-bytecode-compiler|--bytecode-compiler)
            coqc_extra+=("${arg}" "${args[1]}")
            chk_fwd+=("${arg}" "${args[1]}")
            args=("${args[@]:2}")
            ;;
        -impredicative-set|--impredicative-set|-indices-matter|--indices-matter|-boot|--boot)
            coqc_extra+=("${arg}")
            chk_fwd+=("${arg}")
            args=("${args[@]:1}")
            ;;
        -admit|--admit|-norec|--norec)
            chk_fwd+=("${arg}" "${args[1]}")
            args=("${args[@]:2}")
            ;;
        -silent|--silent)
            chk_fwd+=("${arg}")
            args=("${args[@]:1}")
            ;;
        -o|--output-context|-m|--memory|-debug)
            # purely diagnostic; not needed to reproduce the error
            args=("${args[@]:1}")
            ;;
        -d|-profile)
            # diagnostic, takes one argument
            args=("${args[@]:2}")
            ;;
        -*)
            # unknown flag; coqchk would have rejected it, so just drop it
            args=("${args[@]:1}")
            ;;
        *)
            targets+=("${arg}")
            args=("${args[@]:1}")
            ;;
    esac
done

# Map a .vo file to a logical module name using the -R/-Q bindings, picking the
# most specific (longest matching physical directory).
vo_to_module() {
    local vo="$1" abs adir log rel best="" bestlen=-1 i n
    abs="$(readlink -f "${vo}" 2>/dev/null || printf '%s' "${vo}")"
    n="${#R_dirs[@]}"
    for ((i = 0; i < n; i++)); do
        adir="$(readlink -f "${R_dirs[$i]}" 2>/dev/null || printf '%s' "${R_dirs[$i]}")"
        log="${R_logs[$i]}"
        case "${abs}" in
            "${adir}"/*)
                if [ "${#adir}" -gt "${bestlen}" ]; then
                    bestlen="${#adir}"
                    rel="${abs#"${adir}"/}"
                    rel="${rel%.vo}"
                    rel="${rel//\//.}"
                    if [ -n "${log}" ]; then best="${log}.${rel}"; else best="${rel}"; fi
                fi
                ;;
        esac
    done
    if [ -z "${best}" ]; then
        best="$(basename "${vo%.vo}")"
    fi
    printf '%s' "${best}"
}

# ---------------------------------------------------------------------------
# Step 4 (run first, so we can pick out the precise failing module): run
# coqchk exactly as it was originally invoked, capturing its output.
# ---------------------------------------------------------------------------
out_file="$(mktemp --tmpdir=/tmp coqchk-as-coqc-out.XXXXXXXXXX)"
err_file="$(mktemp --tmpdir=/tmp coqchk-as-coqc-err.XXXXXXXXXX)"
"${coqchk_cmd[@]}" "${orig_args[@]}" >"${out_file}" 2>"${err_file}"
chk_rc=$?

# When coqchk is not run with -silent it prints "Checking library: <module>"
# for each module just before checking it, so the last such line before a fatal
# error names the offending module.  We prefer that precise module; otherwise
# we fall back to Require'ing every requested target.
failing_module="$(grep -h '^Checking library: ' "${out_file}" "${err_file}" 2>/dev/null | tail -1 | sed 's/^Checking library: //')"

modules=()
if [ -n "${failing_module}" ]; then
    modules=("${failing_module}")
else
    for t in "${targets[@]}"; do
        case "${t}" in
            *.vo) modules+=("$(vo_to_module "${t}")") ;;
            *)    modules+=("${t}") ;;
        esac
    done
fi

# Deduplicate modules, preserving order.
deduped=()
for m in "${modules[@]}"; do
    skip=no
    for d in "${deduped[@]}"; do
        if [ "${d}" == "${m}" ]; then skip=yes; break; fi
    done
    [ "${skip}" == "no" ] && deduped+=("${m}")
done
modules=("${deduped[@]}")

# If there is nothing to check (e.g. coqchk was invoked with no targets), there
# is nothing useful for the minimizer to do; just reproduce coqchk's output
# faithfully and exit.
if [ "${#modules[@]}" -eq 0 ]; then
    cat "${out_file}"
    cat "${err_file}" >&2
    rm -f "${out_file}" "${err_file}"
    exit "${chk_rc}"
fi

# ---------------------------------------------------------------------------
# Step 2: create the tmp .v file `Require <modules>.`, named as a valid module.
# ---------------------------------------------------------------------------
tmp_base="$(mktemp --tmpdir=/tmp coqchkminimizerXXXXXXXXXX)"
tmp_v="${tmp_base}.v"
mv -f "${tmp_base}" "${tmp_v}"
{
    printf 'Require'
    for m in "${modules[@]}"; do printf ' %s' "${m}"; done
    printf '.\n'
} > "${tmp_v}"
abs_tmp_v="$(readlink -f "${tmp_v}")"

# ---------------------------------------------------------------------------
# Step 3: emit MINIMIZER_DEBUG metadata, pretending coqc was invoked on the
# tmp file, and record the coqchk program + forwarded flags so that
# run-script.sh can pass --chk / --coqchk / --coqchk-args to the minimizer.
# ---------------------------------------------------------------------------
debug_prefix="$(mktemp --tmpdir=/tmp tmp-coqbot-minimizer.XXXXXXXXXX)"
printf "%s" "$0" > "${debug_prefix}"
printf "%s" "${COQPATH}" > "${debug_prefix}.coqpath"
printf "%s" "${OCAMLPATH}" > "${debug_prefix}.ocamlpath"
printf "%s" "$(pwd)" > "${debug_prefix}.pwd"

coqc_exec=("${coqc_cmd[@]}" "${coqc_extra[@]}" "${abs_tmp_v}")
printf "%q " "${coqc_exec[@]}" > "${debug_prefix}.exec"
"${coqc_cmd[@]}" --config > "${debug_prefix}.config" 2>&1 || true

# The .coqchk side file records the (unwrapped) checker program followed by the
# checker-only flags that should be forwarded to the minimizer's coqchk.
printf "%q " "${coqchk_cmd[@]}" "${chk_fwd[@]}" > "${debug_prefix}.coqchk"

build_minimizer_debug_msg() {
    printf "MINIMIZER_DEBUG_EXTRA: coqc: %s\n" "$0"
    printf "MINIMIZER_DEBUG_EXTRA: original invocation: %s\n" "$(printf "%q " "${coqchk_cmd[@]}" "${orig_args[@]}")"
    printf "MINIMIZER_DEBUG_EXTRA: new invocation: %s\n" "$(printf "%q " "${coqc_exec[@]}")"
    printf "MINIMIZER_DEBUG_EXTRA: coqpath: %s\n" "${COQPATH}"
    printf "MINIMIZER_DEBUG_EXTRA: ocamlpath: %s\n" "${OCAMLPATH}"
    printf "MINIMIZER_DEBUG_EXTRA: pwd: PWD=%s\n" "$(pwd)"
    printf "MINIMIZER_DEBUG_EXTRA: coqchk: %s\n" "$(printf "%q " "${coqchk_cmd[@]}" "${chk_fwd[@]}")"
    printf "MINIMIZER_DEBUG_EXTRA: coqlib: %s\n" "$(grep 'COQLIB\|ROCQLIB' "${debug_prefix}.config" | sed 's/COQLIB=//g; s/ROCQLIB=//g')"
    # the important lines, consumed by run-script.sh
    printf "MINIMIZER_DEBUG: info: %s\n" "${debug_prefix}"
    printf "MINIMIZER_DEBUG: files: %s\n" " ${abs_tmp_v} ${abs_tmp_v}"
    printf "MINIMIZER_DEBUG: coqchk: %s\n" "${debug_prefix}.coqchk"
}

>&2 printf '%s\n' "$(build_minimizer_debug_msg)"

# ---------------------------------------------------------------------------
# Step 4 (continued): re-emit coqchk's output, inserting a fake coqc error
# location pointing at the last line of the tmp file before every fatal error.
# ---------------------------------------------------------------------------
line_count="$(wc -l < "${tmp_v}" | tr -d ' ')"
[ -z "${line_count}" ] && line_count=1
[ "${line_count}" -lt 1 ] && line_count=1

process_output() {
    local v_file="$1" lc="$2" line
    while IFS= read -r line || [ -n "${line}" ]; do
        case "${line}" in
            "Fatal Error:"*|"Fatal error:"*)
                printf 'File "%s", line %s, characters 0-0:\n' "${v_file}" "${lc}"
                printf 'Error:\n'
                ;;
        esac
        printf '%s\n' "${line}"
    done
}

process_output "${abs_tmp_v}" "${line_count}" < "${out_file}"
process_output "${abs_tmp_v}" "${line_count}" < "${err_file}" >&2

rm -f "${out_file}" "${err_file}"
exit "${chk_rc}"
