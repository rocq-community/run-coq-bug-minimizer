opam pin add -yn 'git+https://github.com/DeepSpec/sf.git'
opam install -y coq-slf
cat > bug.v <<EOF
From SLF Require Import LibContainer.
Scheme SLF_LibContainer_BagDisjoint_caset := Elimination for SLF.LibContainer.BagDisjoint Sort Type.
EOF
rocq c -q bug.v
