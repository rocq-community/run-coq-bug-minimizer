#!/usr/bin/env bash
opam install -y coq-coqprime
echo 'Require Import Coqprime.PrimalityTest.Root.' > foo.v
eval $(opam env)
rocq c foo.v
rocq check foo
