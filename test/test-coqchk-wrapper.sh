#!/usr/bin/env bash
# Tests for the coqchk wrapping logic in coqbot-config.sh + coqchk-as-coqc.sh.
#
# These tests stand up fake `coqc`/`coqchk` binaries, wrap them exactly the way
# the minimizer runner does (via wrap_file from coqbot-config.sh), run a checker
# invocation, and assert that:
#   * a `Require <modules>.` tmp file is created with the right module names;
#   * MINIMIZER_DEBUG metadata is emitted pointing at that tmp file;
#   * the synthetic coqc invocation and the `.coqchk` side file are recorded;
#   * coqchk "Fatal Error:" output is rewritten into coqc-style errors.
#
# The tests use stubs only, so they need nothing more than bash + coreutils.

REPO_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." >/dev/null 2>&1 && pwd )"

# Failures are accumulated in a file so that assertions made inside subshells
# still count towards the overall result.
FAILURES_FILE="$(mktemp)"

pass() { printf 'ok   [%s]: %s\n' "${testname}" "$1"; }
fail() {
    printf 'FAIL [%s]: %s\n' "${testname}" "$1" >&2
    printf 'x\n' >> "${FAILURES_FILE}"
}
assert_contains() {
    # assert_contains <haystack-file> <needle> <description>
    if [ -f "$1" ] && grep -qF -- "$2" "$1"; then
        pass "$3"
    else
        fail "$3"
        printf '  --- looked for: %s\n  --- in %s:\n' "$2" "$1" >&2
        [ -f "$1" ] && sed 's/^/  | /' "$1" >&2
    fi
}
assert_not_contains() {
    if [ -f "$1" ] && grep -qF -- "$2" "$1"; then
        fail "$3"
    else
        pass "$3"
    fi
}

# Create a sandbox bin dir with fake coqc/coqchk binaries.
#   $1 = module name (matching a target token) that coqchk should fail on
#        (empty for "fail on every target")
make_sandbox() {
    local bad_module="$1"
    local bindir
    bindir="$(mktemp -d)"

    cat > "${bindir}/coqc" <<'COQC'
#!/usr/bin/env bash
# fake coqc: understands --config and "compiles" a .v into a .vo
if [ "$1" == "--config" ]; then
    echo "COQLIB=/fake/coqlib"
    echo "COQCORELIB=/fake/coq-core"
    exit 0
fi
vfile=""
for a in "$@"; do
    case "$a" in
        *.v) vfile="$a" ;;
    esac
done
[ -n "$vfile" ] && : > "${vfile%.v}.vo"
exit 0
COQC
    chmod +x "${bindir}/coqc"

    cat > "${bindir}/coqchk" <<COQCHK
#!/usr/bin/env bash
# fake coqchk: prints "Checking library:" lines (unless -silent) and fails on a
# designated bad module (or on every target if none is designated).
bad_module="${bad_module}"
silent=no
targets=()
skipnext=0
for a in "\$@"; do
    if [ "\${skipnext}" -gt 0 ]; then skipnext=\$((skipnext - 1)); continue; fi
    case "\$a" in
        -silent) silent=yes ;;
        -R|-Q) skipnext=2 ;;
        -coqlib|-bytecode-compiler|-admit|-norec|-d|-profile) skipnext=1 ;;
        -*) ;;
        *) targets+=("\$a") ;;
    esac
done
rc=0
for t in "\${targets[@]}"; do
    [ "\${silent}" == "no" ] && echo "Checking library: \${t}"
    if [ -z "\${bad_module}" ] || [ "\${t}" == "\${bad_module}" ]; then
        echo "Fatal Error: Type error: IllFormedRecBody" >&2
        rc=1
    fi
done
exit \${rc}
COQCHK
    chmod +x "${bindir}/coqchk"

    printf '%s' "${bindir}"
}

wrap_in() {
    # wrap_in <bindir> <file>...; wraps the given binaries via wrap_file
    local bindir="$1"; shift
    (
        cd "${bindir}" || exit 1
        set +u
        # shellcheck disable=SC1091
        source "${REPO_DIR}/coqbot-config.sh" >/dev/null 2>&1
        for f in "$@"; do wrap_file "$f"; done
    )
}

# Extract the metadata debug-prefix from a captured log.
debug_prefix_from() {
    grep -o 'MINIMIZER_DEBUG: info: .*' "$1" | tail -1 | sed 's/^MINIMIZER_DEBUG: info: //'
}
# Extract the synthetic tmp .v path from a recorded .exec metadata file.
tmpv_from_exec() {
    tr ' ' '\n' < "$1" | grep '\.v$' | tail -1
}

# ---------------------------------------------------------------------------
testname="vo-target with -silent (CoqMakefile-style validate)"
# ---------------------------------------------------------------------------
{
    bindir="$(make_sandbox "")"  # no Checking-library trace because -silent
    libdir="$(mktemp -d)"
    mkdir -p "${libdir}/PrimalityTest"
    : > "${libdir}/PrimalityTest/Root.vo"
    wrap_in "${bindir}" coqc coqchk

    log="$(mktemp)"
    ( cd "${libdir}" && "${bindir}/coqchk" -silent -o -R "${libdir}" Coqprime "${libdir}/PrimalityTest/Root.vo" ) >"${log}" 2>&1
    rc=$?

    assert_contains "${log}" 'MINIMIZER_DEBUG: files:' "emits files metadata line"
    assert_contains "${log}" 'MINIMIZER_DEBUG: coqchk:' "emits coqchk metadata line"
    assert_contains "${log}" 'File "' "rewrites error into coqc File location"
    assert_contains "${log}" 'Error:' "emits a coqc-style Error: line"
    assert_contains "${log}" 'Fatal Error: Type error: IllFormedRecBody' "preserves the fatal error text"

    dp="$(debug_prefix_from "${log}")"
    tmpv="$(tmpv_from_exec "${dp}.exec")"
    assert_contains "${tmpv}" 'Require Coqprime.PrimalityTest.Root.' "tmp file requires the .vo-derived module"
    assert_contains "${dp}.coqchk" '-silent' "forwards -silent to the minimizer coqchk"
    assert_contains "${dp}.exec" "${bindir}/coqc" "synthetic invocation uses coqc"
    assert_contains "${dp}.config" 'COQLIB=' "records coqc --config output"

    if [ "${rc}" -ne 0 ]; then pass "propagates non-zero exit"; else fail "checker invocation should propagate non-zero exit"; fi
}

# ---------------------------------------------------------------------------
testname="module-name target without -silent (precise failing module)"
# ---------------------------------------------------------------------------
{
    bad="Coqprime.PrimalityTest.Root"
    bindir="$(make_sandbox "${bad}")"
    libdir="$(mktemp -d)"
    wrap_in "${bindir}" coqc coqchk

    log="$(mktemp)"
    ( cd "${libdir}" && "${bindir}/coqchk" -R "${libdir}" Coqprime Coqprime.List.ListAux Coqprime.PrimalityTest.Root ) >"${log}" 2>&1

    dp="$(debug_prefix_from "${log}")"
    tmpv="$(tmpv_from_exec "${dp}.exec")"
    assert_contains "${tmpv}" 'Require Coqprime.PrimalityTest.Root.' "tmp file requires only the failing module"
    assert_not_contains "${tmpv}" 'ListAux' "drops non-failing modules"
}

# ---------------------------------------------------------------------------
testname="coqc invocation is left untouched (regression)"
# ---------------------------------------------------------------------------
{
    bindir="$(make_sandbox "")"
    libdir="$(mktemp -d)"
    printf 'Definition x := 0.\n' > "${libdir}/A.v"
    wrap_in "${bindir}" coqc coqchk

    log="$(mktemp)"
    ( cd "${libdir}" && "${bindir}/coqc" -R "${libdir}" Top "${libdir}/A.v" ) >"${log}" 2>&1
    rc=$?

    # coqc wrapping must still emit its own debug info and must NOT emit coqchk
    # metadata or invoke the checker helper.
    assert_contains "${log}" 'MINIMIZER_DEBUG: files:' "coqc still emits files metadata"
    assert_not_contains "${log}" 'MINIMIZER_DEBUG: coqchk:' "coqc does not emit coqchk metadata"
    if [ "${rc}" -eq 0 ] && [ -f "${libdir}/A.vo" ]; then pass "coqc compiles normally"; else fail "coqc should compile normally"; fi
}

# ---------------------------------------------------------------------------
testname="rocq check (subcommand dispatch)"
# ---------------------------------------------------------------------------
{
    bindir="$(make_sandbox "")"
    # a `rocq` dispatcher: `rocq c` compiles, `rocq check` checks
    cat > "${bindir}/rocq" <<ROCQ
#!/usr/bin/env bash
sub="\$1"; shift
case "\${sub}" in
    c|compile) exec "${bindir}/coqc" "\$@" ;;
    check)     exec "${bindir}/coqchk" "\$@" ;;
    *)         exit 0 ;;
esac
ROCQ
    chmod +x "${bindir}/rocq"
    # provide a standalone checker binary for the metadata to reference
    cp "${bindir}/coqchk" "${bindir}/rocqchk"
    libdir="$(mktemp -d)"
    mkdir -p "${libdir}/PrimalityTest"
    : > "${libdir}/PrimalityTest/Root.vo"
    wrap_in "${bindir}" coqc rocq rocqchk

    log="$(mktemp)"
    ( cd "${libdir}" && "${bindir}/rocq" check -silent -R "${libdir}" Coqprime "${libdir}/PrimalityTest/Root.vo" ) >"${log}" 2>&1

    assert_contains "${log}" 'MINIMIZER_DEBUG: coqchk:' "rocq check emits coqchk metadata"
    assert_contains "${log}" 'File "' "rocq check rewrites error into coqc File location"
    dp="$(debug_prefix_from "${log}")"
    if [ -n "${dp}" ]; then
        tmpv="$(tmpv_from_exec "${dp}.exec")"
        assert_contains "${tmpv}" 'Require Coqprime.PrimalityTest.Root.' "rocq check derives the module from the .vo"
    else
        fail "rocq check should emit a debug prefix"
    fi
}

# ---------------------------------------------------------------------------
nfail="$(wc -l < "${FAILURES_FILE}" | tr -d ' ')"
rm -f "${FAILURES_FILE}"
if [ "${nfail}" -eq 0 ]; then
    printf '\nAll coqchk wrapper tests passed.\n'
    exit 0
else
    printf '\n%s coqchk wrapper test(s) failed.\n' "${nfail}"
    exit 1
fi
