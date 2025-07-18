#!/bin/bash
# get_logical_path.sh
#
# Takes a package name as an argument and determines its Coq logical path
# using a hybrid strategy:
# 1. Check for a 'logpath:' tag in the opam file.
# 2. If not found, download the source and parse the _CoqProject file.

set -e

PKG_NAME=$1
REPO_DIR="opam-coq-archive"

if [ -z "$PKG_NAME" ]; then
    echo "Usage: $0 <package-name>" >&2
    exit 1
fi

# Method 1: Check for 'logpath' tag in opam file
LOGPATH=$(grep -h 'logpath:' "$REPO_DIR/released/packages/$PKG_NAME/"*"/opam" 2>/dev/null | \
          sed -n 's/.*"logpath:\([^"]*\)".*/\1/p' | head -n 1)

if [ -n "$LOGPATH" ]; then
    echo "$LOGPATH"
    exit 0
fi

# Method 2: Fallback to _CoqProject analysis
# Get source URL from opam
SOURCE_URL=$(cat "$REPO_DIR/released/packages/$PKG_NAME/"*"/opam" | grep -A 10 '^url' | grep -o 'src:.*' | sed 's/^src: //' | tr -d '"' | head -n 1)

if [ -z "$SOURCE_URL" ]; then
    SOURCE_URL=$(cat "$REPO_DIR/released/packages/$PKG_NAME/"*"/opam" | grep '^dev-repo:' | grep -o 'git+[^"]*' | sed 's/git+//' | head -n 1)
fi

if [ -z "$SOURCE_URL" ]; then
    SOURCE_URL=$(opam show --field=url "$PKG_NAME" 2>/dev/null | tr -d '"')
fi

if [ -z "$SOURCE_URL" ]; then
    # Silently exit if no URL, as this is expected for some packages.
    >&2 echo "No source URL found for $PKG_NAME"
    { cat "$REPO_DIR/released/packages/$PKG_NAME/"*"/opam"; } >&2
    # read
    exit 1
fi

# Create sources directory and package-specific subdirectory
SOURCES_DIR="sources"
PKG_SOURCE_DIR="$SOURCES_DIR/$PKG_NAME"

mkdir -p "$PKG_SOURCE_DIR"

# Only download if the source directory is empty or doesn't contain expected files
if [ ! -f "$PKG_SOURCE_DIR/.downloaded" ]; then
    cd "$PKG_SOURCE_DIR"

    # Download and extract the source archive
    # echo "Fetching source for $PKG_NAME..." >&2
    if [[ "$SOURCE_URL" == git+* ]]; then
        # Handle git URLs
        GIT_URL=${SOURCE_URL#git+}
        git clone --depth 1 "$GIT_URL" . >/dev/null 2>&1
    else
        # Handle tarball URLs
        wget -qO source.tar.gz "$SOURCE_URL"
        # The tar command can fail if the archive is empty or malformed
        tar -xzf source.tar.gz --strip-components=1 >/dev/null 2>&1 || true
        rm -f source.tar.gz
    fi

    # Mark as downloaded
    touch .downloaded

    cd - >/dev/null
fi

# Find and parse _CoqProject file
PROJECT_FILE=$(find "$PKG_SOURCE_DIR" -name "_CoqProject" -o -name "_RocqProject" | head -n 1)

function get_lognames() {
    tr '\n' ' ' | grep -o -- '-[QR]\s\+[^ ]\+\s\+[^ ]\+' | awk '{print $3}' | sort -u
}

function min_lognames() {
    all_lognames=("$@")
    if [ ${#all_lognames[@]} -le 1 ]; then
        printf '%s\n' ${all_lognames[0]}
    else
        # Remove items that are prefixes of other items
        for logname in "${all_lognames[@]}"; do
            filtered_lognames=()
            for other_logname in "${all_lognames[@]}"; do
                if [[ "$other_logname" != "$logname."* ]]; then
                    filtered_lognames+=("$other_logname")
                fi
            done
            all_lognames=("${filtered_lognames[@]}")
        done
        if [ ${#all_lognames[@]} -eq 1 ]; then
            printf '%s\n' ${all_lognames[0]}
        else
            >&2 printf '%s\n' "${all_lognames[@]}"
            read
            printf '%s\n' "${all_lognames[@]}"
        fi
    fi
}

if [ -f "$PROJECT_FILE" ]; then
    LOGPATH_FROM_PROJ="$(min_lognames $(cat "$PROJECT_FILE" | get_lognames))"
    if [ -n "$LOGPATH_FROM_PROJ" ]; then
        echo "$LOGPATH_FROM_PROJ"
        exit 0
    fi
fi

make_subdir="$(cat "$REPO_DIR/released/packages/$PKG_NAME/"*"/opam" | grep -A 10 '^build:' | grep -o 'make.*' | grep -o '"-C"\s\+"[^"]*"' | sed 's/"-C"//g' | tr -d '"' | sed 's/^ *//g; s/ *$//g' | sort -u | head -n 1)"
coq_makefile_invocation="$(cat "$REPO_DIR/released/packages/$PKG_NAME/"*"/opam" | grep -A 10 '^build:' | grep -o 'coq_makefile.*' | sed 's/]$//g' | tr -d '"')"
opam_sh_calls="$(cat "$REPO_DIR/released/packages/$PKG_NAME/"*"/opam" | grep -A 10 '^build:' | grep -o '"[^"]*\.sh"' | tr -d '"')"

if [ -z "$make_subdir" ]; then
    make_subdir="."
fi
if [ -z "$coq_makefile_invocation" ]; then
    for f in GNUmakefile makefile Makefile ${opam_sh_calls}; do
        if [ -f "$PKG_SOURCE_DIR/$make_subdir/$f" ]; then
            coq_makefile_invocation="$(grep -o 'coq_makefile.*' "$PKG_SOURCE_DIR/$make_subdir/$f")"
            # Handle cp commands that might copy project files
            cp_commands="$(grep -o 'cp.*' "$PKG_SOURCE_DIR/$make_subdir/$f" | tac | sed 's/cp\s\+-f/cp/g')"
            if [ -n "$cp_commands" ]; then
                while read -r cp_line; do
                    # Split cp command into arguments
                    cp_args=($cp_line)
                    if [ ${#cp_args[@]} -eq 3 ]; then
                        # If cp has 3 arguments (cp source dest), replace third with second in coq_makefile_invocation
                        source_file="${cp_args[1]}"
                        dest_file="${cp_args[2]}"
                        coq_makefile_invocation="$(printf '%s' "$coq_makefile_invocation" | sed "s|$dest_file|$source_file|g")"
                    fi
                done <<< "$cp_commands"
            fi
            break
        fi
    done
fi
if [ -n "$coq_makefile_invocation" ]; then
    file_args="$(printf '%s' "$coq_makefile_invocation" | tr '\s' ' ' | tr -s ' ' | grep -o -- '-f [^ ]\+' | sed 's/-f//')"
    if [ -n "$file_args" ]; then
        for f in $file_args; do
            if [ ! -f "$PKG_SOURCE_DIR/$make_subdir/$f" ]; then
                (cd "$PKG_SOURCE_DIR/$make_subdir" && make "$f" || true)
            fi
            if [ -f "$PKG_SOURCE_DIR/$make_subdir/$f" ]; then
                f_contents="$(cat "$PKG_SOURCE_DIR/$make_subdir/$f" | tr '\n' ' ' | tr -s ' ')"
                coq_makefile_invocation="$(printf '%s' "$coq_makefile_invocation" | awk -v f="-f $f" -v contents="$f_contents" '{gsub(f, contents); print}')"
                # >&2 echo "coq_makefile_invocation after substitution of $f: $coq_makefile_invocation"
                # file_args="$(printf '%s' "$coq_makefile_invocation" | tr '\s' ' ' | tr -s ' ' | grep -o -- '-f [^ ]\+' | sed 's/-f//')"
            else
                >&2 echo "File $f not found"
            fi
        done
    fi
    LOGPATH_FROM_PROJ="$(min_lognames $(printf '%s' "$coq_makefile_invocation" | get_lognames))"
fi

if [ -n "$LOGPATH_FROM_PROJ" ]; then
    echo "$LOGPATH_FROM_PROJ"
    exit 0
fi

# Look for dune files with (coq.theory (name ...))
find "$PKG_SOURCE_DIR" -name "dune" -type f | while read -r dune_file; do
    if grep -q "(coq.theory" "$dune_file"; then
        LOGPATH_FROM_DUNE="$(cat "$dune_file" | tr '\n' ' ' | tr -s ' ' | grep -o "(coq.theory (name [^)]*" | sed 's/(coq.theory (name //' | tr -d ' ')"
        if [ -n "$LOGPATH_FROM_DUNE" ]; then
            echo "$LOGPATH_FROM_DUNE"
            exit 0
        fi
    fi
done

>&2 echo "No _CoqProject file found for $PKG_NAME"
>&2 ls "$PKG_SOURCE_DIR"
>&2 cat "$REPO_DIR/released/packages/$PKG_NAME/"*"/opam"
# read

# If no path is found, exit silently. The calling script will handle it.
exit 1