#!/usr/bin/env bash
# handle-web-file.sh [LINK_TEXT] URL
#
# Downloads an archive and tries to guess how to build the coq
# development from it

set -ex

descr="$1"
url="$2"

if [ -z "$url" ]; then
    url="$descr"
    descr=""
fi

if [ -z "$url" ]; then
    >&2 printf "USAGE: %s [LINK_TEXT] URL\n" "$0"
    exit 1
fi

rawfname="$(basename "$url")"
extension="${rawfname##*.}"
base="${rawfname%%.*}"
fname="downloaded-$rawfname"
qfname="$(printf "%q" "$fname")"
qextension="$(printf "%q" "$extension")"
wget "$url" -O "$fname"

success="no"

function trial_extract_raw() {
    if [ "$success" == "no" ]; then
        rm -rf bug-output
        mkdir -p bug-output
        cd bug-output
        bash -c "$1" && { success="yes"; cd ..; } || { cd ..; rm -rf bug-output; }
    fi
}

function trial_extract() {
    trial_extract_raw "$(printf "%q " "$@")"
}

function succeed() {
    success="yes"
}

function run_unique_file_pattern() {
    count="$(find . -name "$1" -executable -type f | wc -l)"
    rv=1
    if [ "$count" -eq 1 ]; then
        rv=0
        f="$(find . -name "$1" -executable -type f)"
        dirf="$(dirname "$f")"
        f="$(basename "$f")"
        pushd "$dirf"
        ./"$f" || { rv=$?; }
        popd
    fi
    return $rv
}

function run_first_unique_file_patterns() {
    success="no"
    for name in "$@"; do
        test "$success" == "yes" || { run_unique_file_pattern "$name" && succeed || true; }
    done
    test "$success" == "yes"
}

function try_autogen() {
    run_first_unique_file_patterns autogen autogen.sh
}

function try_configure() {
    run_first_unique_file_patterns configure configure.sh
}

function try_make() {
    fs="$(find . \( -name GNUmakefile -o -name makefile -o -name Makefile \) -type f)"
    count="$(find . \( -name GNUmakefile -o -name makefile -o -name Makefile \) -type f | wc -l)"
    if [ "$count" -eq 1 ]; then
        dirf="$(dirname "$fs")"
        f="$(basename "$fs")"
        pushd "$dirf"
        make || true
        popd
        return 0
    fi
    return 1
}

function try_autogen_configure_make() {
    try_make || { try_configure && try_make; } || { try_autogen && try_configure && try_make; }
}

function try_coq_makefile() {
    fs="$(find . \( -name "_CoqProject" -o -name "CoqProject" \) -type f)"
    count="$(find . \( -name "_CoqProject" -o -name "CoqProject" \) -type f | wc -l)"
    if [ "$count" -eq 1 ]; then
        dirf="$(dirname "$fs")"
        f="$(basename "$fs")"
        pushd "$dirf"
        coq_makefile -f "$f" -o Makefile
        make || true
        popd
        return 0
    fi
    return 1
}

function try_coqc() {
    fs="$(find . -name "*.v" -type f)"
    count="$(find . -name "*.v" -type f | wc -l)"
    if [ "$count" -eq 1 ]; then
        dirf="$(dirname "$fs")"
        f="$(basename "$fs")"
        pushd "$dirf"
        coqc -q "$f" || true
        popd
        return 0
    elif [ "$count" -gt 1 ]; then
        find . -name "*.v" -type f | xargs coq_makefile -o Makefile
        make || true
        return 0
    else
        return 1
    fi
}


function get_opam_deps() {
    # Exit if no .v files are found
    if [ -z "$(find . -name '*.v' -print -quit)" ]; then
        >&2 echo "No .v files found, skipping opam dependency installation."
        return 0
    fi

    local require_lines
    require_lines=$(find . -name '*.v' -type f -exec sh -c 'for file; do cat "$file"; printf " "; done' sh {} + 2>/dev/null | tr '\r\n\t)' ' ' | tr -s ' ' |
      sed 's/\. /.~/g' | tr '~' '\n' | grep 'Require ')

    if [ -z "$require_lines" ]; then
        >&2 echo "No 'Require' statements found, skipping opam dependency installation."
        return 0
    fi

    local paths=()
    while IFS= read -r line; do
        line=$(echo "$line" | sed 's/^[ \t]*//;s/[ \t]*$//')
        if echo "$line" | grep -q '^From .* Require '; then
            local path=$(echo "$line" | sed 's/^From \(.*\) Require .*/\1/')
            paths+=("$path")
        elif echo "$line" | grep -q '^Require '; then
            local path=$(echo "$line" | sed 's/^Require //')
            paths+=("$path")
        fi
    done <<< "$require_lines"

    local all_words=""
    for path in "${paths[@]}"; do
        local cleaned=$(printf '%s\n' "$path" | tr -d '~!@#$%^&*()[]{}<>|:;,?`/+=')
        all_words="$all_words $cleaned"
    done

    declare -A prefixes
    for word in $all_words; do
        local parts=(${word//./ })
        local prefix="${parts[0]}"
        if [[ "$prefix" =~ ^[_a-zA-Z] ]]; then
            prefixes["$prefix"]=1
        fi
        # Handle mathcomp submodules - if we see mathcomp.foo.bar, also include mathcomp.foo
        if [[ "$prefix" == "mathcomp" ]] && [ ${#parts[@]} -ge 2 ]; then
            local mathcomp_prefix="mathcomp.${parts[1]}"
            prefixes["$mathcomp_prefix"]=1
        fi
    done

    local all_prefixes=("${!prefixes[@]}")

    printf '%s\n' "${all_prefixes[@]}" | sort
}

function try_install_opam_deps() {
    # A map of Coq path prefixes to the opam packages that provide them.
    # TODO: integrate more packages as per https://g.co/gemini/share/b905fa403f88
    # Auto-generated mapping of Coq logical paths to OPAM package names.
    # Generated on: Thursday, July 17, 2025
    declare -A OPAM_PACKAGE_MAP=(
    ["MetaCoq"]="coq-metacoq"
    ["Crypto"]="coq-fiat-crypto"
    ["Bedrock"]="coq-bedrock2"
    # MathComp packages often have a dotted logical path
    ["mathcomp.abel"]="coq-mathcomp-abel"
    ["mathcomp.algebra"]="coq-mathcomp-algebra"
    ["mathcomp.algebra.all"]="coq-mathcomp-algebra"
    ["mathcomp.analysis"]="coq-mathcomp-analysis"
    ["mathcomp.apery"]="coq-mathcomp-apery"
    ["mathcomp.bigenough"]="coq-mathcomp-bigenough"
    ["mathcomp.character"]="coq-mathcomp-character"
    ["mathcomp.classical"]="coq-mathcomp-classical"
    ["mathcomp.field"]="coq-mathcomp-field"
    ["mathcomp.fingroup"]="coq-mathcomp-fingroup"
    ["mathcomp.finmap"]="coq-mathcomp-finmap"
    ["mathcomp.multinomials"]="coq-mathcomp-multinomials"
    ["mathcomp.real_closed"]="coq-mathcomp-real-closed"
    ["mathcomp.solvable"]="coq-mathcomp-solvable"
    ["mathcomp.ssreflect"]="coq-mathcomp-ssreflect"
    )

    local all_prefixes=($(get_opam_deps))

    if [ ${#all_prefixes[@]} -eq 0 ]; then
        >&2 echo "No opam dependencies found, skipping opam dependency installation."
        return 0
    fi

    # Map prefixes to packages and build a deduplicated list.
    declare -A pkg_sources
    local no_pkg_prefixes=()
    local package_candidates=""
    for prefix in "${prefixes[@]}"; do
        local pkgs="${OPAM_PACKAGE_MAP[$prefix]:-""}"
        if [ -z "$pkgs" ]; then
            no_pkg_prefixes+=("$prefix")
        else
            package_candidates="$package_candidates $pkgs"
            for pkg in $pkgs; do
                if [ -z "${pkg_sources[$pkg]:-}" ]; then
                    pkg_sources[$pkg]="$prefix"
                else
                    pkg_sources[$pkg]="${pkg_sources[$pkg]} $prefix"
                fi
            done
        fi
    done

    local final_package_list
    final_package_list=$(echo "$package_candidates" | tr ' ' '\n' | sort -u | tr '\n' ' ')

    if [ -z "$final_package_list" ]; then
        >&2 echo "Found prefixes, but none mapped to known opam packages."
        return 0
    fi

    local succeeded=()
    local failed=()
    for pkg in "${!pkg_sources[@]}"; do
        echo "::group::Installing $pkg"
        if opam install -y "$pkg"; then
            succeeded+=("$pkg")
        elif [[ "$pkg" == coq-* ]] && opam install -y "rocq-${pkg#coq-}"; then
            succeeded+=("rocq-${pkg#coq-}")
        elif [[ "$pkg" == coq-*coq* ]] && opam install -y "${pkg//coq/rocq}"; then
            succeeded+=("${pkg//coq/rocq}")
        else
            failed+=("$pkg")
        fi
        echo "::endgroup::"
    done

    # Write a summary to the GitHub Actions summary file, if available.
    if [ -n "${GITHUB_STEP_SUMMARY:-}" ] && [ -w "$GITHUB_STEP_SUMMARY" ]; then
        {
            echo "### 📦 Opam Dependency Installation Summary"
            echo
            if [ ${#succeeded[@]} -eq 0 ] && [ ${#failed[@]} -eq 0 ]; then
                echo "No opam packages were identified for installation."
            else
                echo "**Prefixes found:** \`$(printf '%s ' "${prefixes[@]}" | tr ' ' '\n' | sort | tr '\n' ' ' | sed 's/ /, /g')\`"
                echo
                echo "**Attempted Package Installations:**"
                echo "| Package | Status | Triggered By Prefixes |"
                echo "|---------|--------|-----------------------|"
                for pkg in $(printf '%s\n' "${succeeded[@]}" | sort); do
                    echo "| \`$pkg\` | ✅ Success | \`$(echo "${pkg_sources[$pkg]}" | tr ' ' '\n' | sort | tr '\n' ' ' | sed 's/ /, /g')\` |"
                done
                for pkg in $(printf '%s\n' "${failed[@]}" | sort); do
                    echo "| \`$pkg\` | ❌ Failure | \`$(echo "${pkg_sources[$pkg]}" | tr ' ' '\n' | sort | tr '\n' ' ' | sed 's/ /, /g')\` |"
                done
                echo
            fi
            if [ ${#no_pkg_prefixes[@]} -gt 0 ]; then
                echo "**Unrecognized Prefixes:**"
                echo "> The following prefixes were found but did not map to any known opam package: \`$(printf '%s ' "${no_pkg_prefixes[@]}" | tr ' ' '\n' | sort | tr '\n' ' ' | sed 's/ /, /g')\`"
                echo
            fi
        } >> "$GITHUB_STEP_SUMMARY"
    fi
}

trial_extract tar -xvf "../$fname"
trial_extract unzip "../$fname"
trial_extract_raw "file ../$qfname | grep -q text && cp ../$qfname downloaded_bug.v"
trial_extract_raw "test x$qextension == xtxt && cp ../$qfname downloaded_bug.v"
for kind in --bzip2 --xz --lzip --lzma --lzop --gunzip --uncompress --zstd; do
    trial_extract tar $kind -xvf "../$fname"
done

if [ "$success" == "no" ]; then
    >&2 printf "ERROR: Could not recognize %s as archive or .v file\n" "$fname"
    >&2 file "$fname"
    exit 1
fi

cd bug-output
try_install_opam_deps || true
try_autogen_configure_make || try_coq_makefile || try_coqc
