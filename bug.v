
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "+implicit-core-hint-db,+implicits-in-term,+non-reversible-notation,+deprecated-intros-until-0,+deprecated-focus,+unused-intro-pattern,+variable-collision,+unexpected-implicit-declaration,+omega-is-deprecated,+deprecated-instantiate-syntax,+non-recursive,+undeclared-scope,+deprecated-hint-rewrite-without-locality,+deprecated-hint-without-locality,+deprecated-instance-without-locality,+deprecated-typeclasses-transparency-without-locality,+fragile-hint-constr,-deprecated-since-9.0,-deprecated-since-8.20,-deprecated-from-Coq" "-w" "-notation-overridden,-native-compiler-disabled,-ambiguous-paths,-masking-absolute-name" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/fiat_crypto/src" "Crypto" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Coqprime" "Coqprime" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Kami" "Kami" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Rewriter" "Rewriter" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Rupicola" "Rupicola" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/bedrock2" "bedrock2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/bedrock2Examples" "bedrock2Examples" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/compiler" "compiler" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/coqutil" "coqutil" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/riscv" "riscv" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 122 lines to 45 lines, then from 65 lines to 45 lines, then from 65 lines to 45 lines, then from 65 lines to 45 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 1.765 sec
   Expected coqc peak memory usage on this file: 890168.0 kb *)
Require Crypto.Assembly.WithBedrock.Semantics.
Require Crypto.Assembly.EquivalenceProofs.
Import Stdlib.micromega.Lia.
Import Stdlib.ZArith.ZArith.
Import Crypto.Assembly.Syntax.
Import Crypto.Util.Option.
Import Crypto.Util.Bool.Reflect.
Import Crypto.Util.ListUtil.
Import Crypto.Util.Tactics.SpecializeBy.
Import Crypto.Assembly.EquivalenceProofs.

Definition R_regs_preserved_v rn (m : Semantics.reg_state)
  := Z.land (Tuple.nth_default 0%Z rn m) (Z.ones 64).

Definition R_regs_preserved G d G' d' (m : Semantics.reg_state) rs rs'
  := forall rn idx, Symbolic.get_reg rs' rn = Some idx -> exists idx', Symbolic.get_reg rs rn = Some idx' /\ let v := R_regs_preserved_v (N.to_nat rn) m in eval_idx_Z G d idx' v -> eval_idx_Z G' d' idx v.

Lemma R_regs_preserved_set_reg G d G' d' rs rs' ri rm v
      (H : R_regs_preserved G d G' d' rm rs rs')
      (H_same : (ri < N.of_nat (List.length widest_registers))%N -> exists idx, Symbolic.get_reg rs ri = Some idx /\ let v' := R_regs_preserved_v (N.to_nat ri) rm in eval_idx_Z G d idx v' -> eval_idx_Z G' d' v v')
  : R_regs_preserved G d G' d' rm rs (Symbolic.set_reg rs' ri v).
Proof.
  cbv [R_regs_preserved] in *.
  intros rn idx; specialize (H rn).
  rewrite get_reg_set_reg_full; intro.
  vm_compute (length widest_registers) in *.
  repeat first [ progress break_innermost_match_hyps
               | progress inversion_option
               | progress subst
               | progress destruct_head'_and
               | progress destruct_head'_or
               | progress destruct_head'_ex
               | progress specialize_by_assumption
               | progress specialize_by lia
               | rewrite @Bool.andb_true_iff in *
               | rewrite @Bool.andb_false_iff in *
               | solve [ eauto ]
               | progress reflect_hyps
               | match goal with
                 | [ H : forall v, ?k = Some v -> _, H' : ?k = Some _ |- _ ]
                   => specialize (H _ H')
                 end ].
Timeout 5 Qed.
