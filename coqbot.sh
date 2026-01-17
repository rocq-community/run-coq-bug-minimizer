#!/usr/bin/env bash
cat > thebug.v <<'EOF'
e https://gricad-gitlab.univ-grenoble-alpes.fr/certicompil/Chamois-CompCert.git -b chamois-merge-btlmemcpy
EOF
coqc -q thebug.v
