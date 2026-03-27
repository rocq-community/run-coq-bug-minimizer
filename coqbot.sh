#!/usr/bin/env bash
cat > thebug.v <<'EOF'
 add -yn --with-version 9.2 'git+https://github.com/Tragicus/coq.git#evd-inst'
EOF
coqc -q thebug.v
