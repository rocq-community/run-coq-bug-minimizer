#!/usr/bin/env bash
# generate_mapping.sh
#
# Orchestrates the analysis of all 'released' packages and generates
# a Bash associative array mapping logical paths to a space-separated
# list of OPAM package names.

set -e

# Ensure helper scripts are executable
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
chmod +x "$SCRIPT_DIR/enumerate_packages.sh" "$SCRIPT_DIR/get_logical_path.sh"

# Temporary storage for the mapping
declare -A temp_map

echo "Starting package analysis. This may take a long time..."

# Get list of all packages
PACKAGES=$("$SCRIPT_DIR/enumerate_packages.sh")

# Process each package
for pkg in $PACKAGES; do
    echo "Processing: $pkg"
    # Get logical path, ignore errors and continue if the script fails
    path=$(true | "$SCRIPT_DIR/get_logical_path.sh" "$pkg" 2>/dev/null | tr '\n' ' ') || continue

    if [ -n "$path" ]; then
        for p in $path; do
            if [ -n "${temp_map[$p]}" ]; then
                # Append package to existing list
                temp_map[$p]="${temp_map[$p]} $pkg"
            else
                # Create new entry
                temp_map[$p]="$pkg"
            fi
        done
    fi
done

echo "Analysis complete. Generating mapping file..."

# Generate the final Bash dictionary file
{
    echo "#!/bin/bash"
    echo "# Auto-generated mapping of Coq logical paths to OPAM package names."
    echo "declare -A coq_path_map=("
    for path in "${!temp_map[@]}"; do
        packages="${temp_map[$path]}"
        packages="$(printf '%s\n' $packages | sed 's/rocq/coq/g' | sort -u | tr '\n' ' ' | sed 's/ *$//g')"
        echo "  [\"$path\"]=\"$packages\""
    done | sort -u
    echo ")"
} > coq_path_map.sh

echo "Mapping saved to coq_path_map.sh"