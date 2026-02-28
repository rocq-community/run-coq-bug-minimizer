
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/corn" "CoRN" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Bignums" "Bignums" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/HB" "HB" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/MathClasses" "MathClasses" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi" "elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_elpi" "elpi_elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_examples" "elpi_examples" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 362 lines to 68 lines, then from 80 lines to 1074 lines, then from 1081 lines to 78 lines, then from 89 lines to 1725 lines, then from 1732 lines to 96 lines, then from 108 lines to 1195 lines, then from 1202 lines to 99 lines, then from 110 lines to 1587 lines, then from 1594 lines to 117 lines, then from 129 lines to 896 lines, then from 903 lines to 120 lines, then from 131 lines to 1147 lines, then from 1154 lines to 132 lines, then from 143 lines to 1154 lines, then from 1161 lines to 144 lines, then from 155 lines to 1086 lines, then from 1093 lines to 156 lines, then from 167 lines to 1191 lines, then from 1198 lines to 214 lines, then from 225 lines to 1320 lines, then from 1327 lines to 357 lines, then from 362 lines to 135 lines, then from 147 lines to 1975 lines, then from 1982 lines to 145 lines, then from 156 lines to 1770 lines, then from 1777 lines to 210 lines, then from 221 lines to 2049 lines, then from 2056 lines to 242 lines, then from 253 lines to 1745 lines, then from 1752 lines to 244 lines, then from 255 lines to 1816 lines, then from 1823 lines to 259 lines, then from 271 lines to 1478 lines, then from 1485 lines to 296 lines, then from 307 lines to 1721 lines, then from 1728 lines to 315 lines, then from 327 lines to 1175 lines, then from 1182 lines to 317 lines, then from 329 lines to 1252 lines, then from 1258 lines to 346 lines, then from 357 lines to 1685 lines, then from 1692 lines to 555 lines, then from 563 lines to 210 lines, then from 222 lines to 972 lines, then from 978 lines to 220 lines, then from 231 lines to 1055 lines, then from 1062 lines to 248 lines, then from 259 lines to 2033 lines, then from 2038 lines to 311 lines, then from 322 lines to 1621 lines, then from 1627 lines to 331 lines, then from 342 lines to 1683 lines, then from 1690 lines to 368 lines, then from 379 lines to 730 lines, then from 737 lines to 384 lines, then from 395 lines to 750 lines, then from 757 lines to 410 lines, then from 421 lines to 763 lines, then from 770 lines to 418 lines, then from 429 lines to 840 lines, then from 847 lines to 426 lines, then from 437 lines to 767 lines, then from 774 lines to 447 lines, then from 458 lines to 780 lines, then from 787 lines to 455 lines, then from 466 lines to 812 lines, then from 819 lines to 469 lines, then from 480 lines to 1590 lines, then from 1596 lines to 594 lines, then from 604 lines to 310 lines, then from 322 lines to 646 lines, then from 653 lines to 333 lines, then from 344 lines to 1365 lines, then from 1372 lines to 357 lines, then from 368 lines to 680 lines, then from 687 lines to 375 lines, then from 386 lines to 1323 lines, then from 1327 lines to 1009 lines, then from 1020 lines to 2472 lines, then from 2478 lines to 1095 lines, then from 1106 lines to 3016 lines, then from 3017 lines to 2780 lines, then from 2791 lines to 3122 lines, then from 3129 lines to 2998 lines, then from 3005 lines to 2805 lines, then from 2817 lines to 3217 lines, then from 3223 lines to 2906 lines, then from 2917 lines to 4126 lines, then from 4133 lines to 3112 lines, then from 3123 lines to 4291 lines, then from 4292 lines to 4398 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 4.365 sec
   Expected coqc peak memory usage on this file: 6191548.0 kb *)









Require CoRN.tactics.Step.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Classes.Morphisms.
Require Corelib.BinNums.NatDef.
Require Corelib.Init.Ltac.
Require Corelib.Program.Utils.
Require Corelib.Classes.Equivalence.
Require Corelib.BinNums.IntDef.
Require Corelib.BinNums.PosDef.
Require Corelib.Init.Sumbool.
Require Corelib.Numbers.BinNums.
Require Corelib.Lists.ListDef.
Require Corelib.Program.Wf.
Require Corelib.Classes.RelationClasses.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Program.Basics.
Require Corelib.Classes.SetoidTactics.
Require Corelib.Setoids.Setoid.
Require Corelib.Init.Wf.
Require Corelib.Program.Tactics.
Require MathClasses.theory.CoqStreams.
Require Stdlib.Classes.DecidableClass.
Require Stdlib.Logic.Decidable.
Require Stdlib.Logic.EqdepFacts.
Require Stdlib.Logic.FunctionalExtensionality.
Require Stdlib.Logic.HLevelsBase.
Require Stdlib.Program.Syntax.
Require Stdlib.Unicode.Utf8_core.
Require Stdlib.micromega.ZifyClasses.
Require Stdlib.setoid_ring.Algebra_syntax.
Require Stdlib.BinNums.IntDef.
Require Stdlib.BinNums.PosDef.
Require Stdlib.BinNums.NatDef.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Classes.Equivalence.
Require Stdlib.Classes.SetoidTactics.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Init.Wf.
Require Stdlib.Init.Sumbool.
Require Stdlib.Lists.ListDef.
Require Stdlib.Logic.Eqdep.
Require Stdlib.Logic.Eqdep_dec.
Require Stdlib.Logic.ProofIrrelevanceFacts.
Require Stdlib.Numbers.BinNums.
Require Stdlib.Program.Basics.
Require Stdlib.Program.Tactics.
Require Stdlib.Program.Utils.
Require Stdlib.Program.Wf.
Require Stdlib.Relations.Relation_Definitions.
Require Stdlib.Setoids.Setoid.
Require Stdlib.Unicode.Utf8.
Require CoRN.tactics.CornTac.
Require Stdlib.Bool.Bool.
Require Stdlib.Logic.JMeq.
Require Stdlib.Logic.ProofIrrelevance.
Require Stdlib.Relations.Relation_Operators.
Require Stdlib.Program.Combinators.
Require Stdlib.Relations.Operators_Properties.
Require Stdlib.PArith.BinPosDef.
Require Stdlib.Relations.Relations.
Require Stdlib.Program.Equality.
Require Stdlib.Numbers.NumPrelude.
Require Stdlib.Program.WfExtensionality.
Require MathClasses.misc.stdlib_hints.
Require Stdlib.Structures.Equalities.
Require Stdlib.Program.Subset.
Require Stdlib.Structures.Orders.
Require Stdlib.Structures.OrdersTac.
Require Stdlib.Structures.OrdersFacts.
Require Stdlib.Structures.GenericMinMax.
Require Stdlib.Program.Program.
Require Stdlib.Numbers.NatInt.NZAxioms.
Require Stdlib.Numbers.NatInt.NZBase.
Require Stdlib.Numbers.NatInt.NZAdd.
Require Stdlib.Numbers.NatInt.NZMul.
Require Stdlib.Numbers.NatInt.NZOrder.
Require Stdlib.Numbers.NatInt.NZAddOrder.
Require Stdlib.Numbers.NatInt.NZMulOrder.
Require MathClasses.interfaces.canonical_names.
Require Stdlib.Numbers.NatInt.NZDiv.
Require Stdlib.Numbers.NatInt.NZGcd.
Require Stdlib.Numbers.NatInt.NZParity.
Require Stdlib.Numbers.NatInt.NZPow.
Require Stdlib.Numbers.NatInt.NZSqrt.
Require MathClasses.misc.propholds.
Require MathClasses.misc.setoid_tactics.
Require MathClasses.misc.util.
Require Stdlib.Numbers.NatInt.NZLog.
Require MathClasses.misc.workarounds.
Require Stdlib.Numbers.NatInt.NZBits.
Require MathClasses.misc.decision.
Require Stdlib.Numbers.Integer.Abstract.ZAxioms.
Require Stdlib.Numbers.Natural.Abstract.NAxioms.
Require Stdlib.Numbers.Integer.Abstract.ZBase.
Require Stdlib.Numbers.Natural.Abstract.NBase.
Require Stdlib.Numbers.Integer.Abstract.ZAdd.
Require Stdlib.Numbers.Natural.Abstract.NAdd.
Require Stdlib.Numbers.Integer.Abstract.ZMul.
Require Stdlib.Numbers.Natural.Abstract.NOrder.
Require MathClasses.interfaces.abstract_algebra.
Require Stdlib.Numbers.Integer.Abstract.ZLt.
Require Stdlib.Numbers.Natural.Abstract.NAddOrder.
Require MathClasses.interfaces.orders.
Require Stdlib.Numbers.Integer.Abstract.ZAddOrder.
Require Stdlib.Numbers.Natural.Abstract.NMulOrder.
Require CoRN.algebra.RSetoid.
Require Stdlib.Numbers.Integer.Abstract.ZMulOrder.
Require Stdlib.Numbers.Natural.Abstract.NSub.
Require CoRN.order.PartialOrder.
Require Stdlib.Numbers.Integer.Abstract.ZMaxMin.
Require Stdlib.Numbers.Integer.Abstract.ZParity.
Require Stdlib.Numbers.Integer.Abstract.ZSgnAbs.
Require Stdlib.Numbers.Natural.Abstract.NDiv.
Require Stdlib.Numbers.Natural.Abstract.NGcd.
Require Stdlib.Numbers.Natural.Abstract.NMaxMin.
Require Stdlib.Numbers.Natural.Abstract.NParity.
Require Stdlib.Numbers.Natural.Abstract.NSqrt.
Require CoRN.order.SemiLattice.
Require Stdlib.Numbers.Integer.Abstract.ZDivFloor.
Require Stdlib.Numbers.Integer.Abstract.ZDivTrunc.
Require Stdlib.Numbers.Integer.Abstract.ZGcd.
Require Stdlib.Numbers.Natural.Abstract.NDiv0.
Require Stdlib.Numbers.Natural.Abstract.NPow.
Require CoRN.order.Lattice.
Require Stdlib.Numbers.Integer.Abstract.ZPow.
Require Stdlib.Numbers.Natural.Abstract.NLcm.
Require Stdlib.Numbers.Natural.Abstract.NLog.
Require CoRN.order.TotalOrder.
Require Stdlib.Numbers.Integer.Abstract.ZBits.
Require Stdlib.Numbers.Integer.Abstract.ZLcm.
Require Stdlib.Numbers.Natural.Abstract.NBits.
Require Stdlib.Numbers.Natural.Abstract.NLcm0.
Require Stdlib.Numbers.Integer.Abstract.ZProperties.
Require Stdlib.Numbers.Natural.Abstract.NProperties.
Require Stdlib.Arith.PeanoNat.
Require Stdlib.Arith.Between.
Require Stdlib.Arith.Compare_dec.
Require Stdlib.Arith.EqNat.
Require Stdlib.Arith.Factorial.
Require Stdlib.Arith.Wf_nat.
Require Stdlib.Arith.Euclid.
Require Stdlib.Arith.Peano_dec.
Require Stdlib.Lists.List.
Require Stdlib.Lists.ListDec.
Require Stdlib.micromega.Refl.
Require Stdlib.Lists.Finite.
Require Stdlib.micromega.Tauto.
Require CoRN.stdlib_omissions.Pair.
Require Stdlib.Lists.ListTactics.
Require Stdlib.Sorting.Permutation.
Require Stdlib.PArith.BinPos.
Require Stdlib.Arith.Arith_base.
Require Stdlib.PArith.POrderedType.
Require Stdlib.PArith.Pnat.
Require Stdlib.NArith.BinNatDef.
Require Stdlib.PArith.PArith.
Require Stdlib.NArith.BinNat.
Require Stdlib.setoid_ring.BinList.
Require Stdlib.NArith.Ndiv_def.
Require Stdlib.NArith.Ngcd_def.
Require Stdlib.NArith.Nsqrt_def.
Require Stdlib.setoid_ring.Ring_theory.
Require Stdlib.NArith.Nnat.
Require Stdlib.ZArith.BinIntDef.
Require Stdlib.NArith.NArith_base.
Require Stdlib.ZArith.BinInt.
Require Stdlib.ZArith.Zcompare.
Require Stdlib.ZArith.Zeven.
Require Stdlib.ZArith.auxiliary.
Require Stdlib.ZArith.Zpow_def.
Require Stdlib.setoid_ring.Ncring.
Require Stdlib.micromega.Env.
Require Stdlib.micromega.VarMap.
Require Stdlib.micromega.EnvRing.
Require Stdlib.setoid_ring.Ring_polynom.
Require Stdlib.setoid_ring.InitialRing.
Require Stdlib.ZArith.Znat.
Require Stdlib.ZArith.Zorder.
Require Stdlib.setoid_ring.Ncring_polynom.
Require Stdlib.setoid_ring.Ring_tac.
Require Stdlib.ZArith.Zmax.
Require Stdlib.ZArith.Zmin.
Require Stdlib.ZArith.Zminmax.
Require Stdlib.ZArith.Zmisc.
Require Stdlib.omega.OmegaLemmas.
Require Stdlib.setoid_ring.Ncring_initial.
Require Stdlib.setoid_ring.Ring_base.
Require Stdlib.micromega.ZifyInst.
Require Stdlib.setoid_ring.Field_theory.
Require Stdlib.setoid_ring.Ncring_tac.
Require Stdlib.setoid_ring.Ring.
Require Stdlib.ZArith.ZArith_dec.
Require Stdlib.micromega.OrderedRing.
Require Stdlib.micromega.Zify.
Require Stdlib.setoid_ring.Field_tac.
Require Stdlib.setoid_ring.NArithRing.
Require Stdlib.setoid_ring.ZArithRing.
Require Stdlib.ZArith.Wf_Z.
Require Stdlib.omega.PreOmega.
Require Stdlib.setoid_ring.ArithRing.
Require Stdlib.setoid_ring.Cring.
Require Stdlib.setoid_ring.Field.
Require Stdlib.ZArith.Zbool.
Require Stdlib.setoid_ring.Integral_domain.
Require Stdlib.ZArith.Zabs.
Require Stdlib.nsatz.NsatzTactic.
Require Stdlib.NArith.NArith.
Require Stdlib.micromega.RingMicromega.
Require Stdlib.ZArith.Zhints.
Require Stdlib.Arith.Arith.
Require Stdlib.micromega.ZMicromega.
Require Stdlib.QArith.QArith_base.
Require Stdlib.ZArith.ZArith_base.
Require CoRN.stdlib_omissions.P.
Require Stdlib.QArith.Qreduction.
Require CoRN.stdlib_omissions.List.
Require CoRN.util.SetoidPermutation.
Require Stdlib.QArith.Qfield.
Require Stdlib.QArith.Qring.
Require Stdlib.ZArith.Zcomplements.
Require Stdlib.QArith.Qpower.
Require Stdlib.ZArith.Zdiv.
Require Stdlib.ZArith.Zpower.
Require Stdlib.micromega.Lia.
Require Stdlib.QArith.QNsatz.
Require Stdlib.QArith.Qround.
Require Stdlib.btauto.Algebra.
Require Stdlib.btauto.Reflect.
Require Stdlib.btauto.Btauto.
Require Stdlib.QArith.QArith.
Require Stdlib.ZArith.ZNsatz.
Require Stdlib.QArith.Qabs.
Require Stdlib.ZArith.Zbitwise.
Require Stdlib.micromega.ZArith_hints.
Require Stdlib.ZArith.Zdivisibility.
Require Stdlib.ZArith.Zcong.
Require Stdlib.ZArith.Zdiv_facts.
Require Stdlib.ZArith.ZModOffset.
Require Stdlib.ZArith.Znumtheory.
Require CoRN.model.totalorder.QMinMax.
Require Stdlib.ZArith.ZArith.
Require CoRN.stdlib_omissions.Z.
Require CoRN.logic.CornBasics.
Require CoRN.logic.CLogic.
Require CoRN.model.Zmod.ZBasics.
Require CoRN.model.structures.Nsec.
Require CoRN.model.structures.Zsec.
Require CoRN.tactics.AlgReflection.
Require CoRN.model.Zmod.ZDivides.
Require CoRN.model.Zmod.ZGcd.
Require CoRN.model.Zmod.ZMod.
Require CoRN.model.Zmod.Cmod.
Require CoRN.stdlib_omissions.Q.
Require CoRN.model.structures.Qsec.
Require CoRN.algebra.CSetoids.
Require CoRN.algebra.CSetoidFun.
Require CoRN.algebra.CSetoidInc.
Require CoRN.tactics.csetoid_rewrite.
Require CoRN.algebra.CSemiGroups.
Require CoRN.algebra.CMonoids.
Require CoRN.algebra.CAbMonoids.
Require CoRN.algebra.CGroups.
Require CoRN.algebra.CAbGroups.
Require CoRN.algebra.CSums.
Require CoRN.algebra.CRings.

Module Export AdmitTactic.
Module Import LocalFalse.
Inductive False : Prop := .
End LocalFalse.
Axiom proof_admitted : False.
Import Coq.Init.Ltac.
Tactic Notation "admit" := abstract case proof_admitted.
End AdmitTactic.

Module Export CoRN_DOT_algebra_DOT_CFields_WRAPPED.
Module Export CFields.







Export CoRN.algebra.CRings.

Transparent sym_eq.
Transparent f_equal.

Transparent cs_crr.
Transparent csg_crr.
Transparent cm_crr.
Transparent cg_crr.
Transparent cr_crr.

Transparent csf_fun.
Transparent csbf_fun.
Transparent csr_rel.

Transparent cs_eq.
Transparent cs_neq.
Transparent cs_ap.
Transparent cm_unit.
Definition is_CField (R : CRing) (cf_rcpcl : forall x : R, x [#] [0] -> R) : Prop. exact (forall x Hx, is_inverse cr_mult [1] x (cf_rcpcl x Hx)). Defined.

Record CField : Type :=
  {cf_crr   :> CRing;
   cf_rcpcl :  forall x : cf_crr, x [#] [0] -> cf_crr;
   cf_proof :  is_CField cf_crr cf_rcpcl;
   cf_rcpsx :  forall x y x_ y_, cf_rcpcl x x_ [#] cf_rcpcl y y_ -> x [#] y}.


Definition f_rcpcl' (F : CField) : PartFunct F.
Proof.
 apply Build_PartFunct with (fun x : F => x [#] [0]) (cf_rcpcl F).
  red in |- *; intros; astepl x.
auto.
  exact (cf_rcpsx F).
Defined.

Definition f_rcpcl F x x_ := f_rcpcl' F x x_.

Arguments f_rcpcl [F].



Definition cf_div (F : CField) (x y : F) y_ : F := x[*]f_rcpcl y y_.

Arguments cf_div [F].
Notation "x [/] y [//] Hy" := (cf_div x y Hy) (at level 80).


Section Field_axioms.
Variable F : CField.

Lemma rcpcl_is_inverse : forall x x_, is_inverse cr_mult [1] x (cf_rcpcl F x x_).
Admitted.

End Field_axioms.

Section Field_basics.


Variable F : CField.

Lemma rcpcl_is_inverse_unfolded : forall x x_, x[*]cf_rcpcl F x x_ [=] [1].
Admitted.

Lemma field_mult_inv : forall (x : F) x_, x[*]f_rcpcl x x_ [=] [1].
Proof rcpcl_is_inverse_unfolded.
Hint Resolve field_mult_inv: algebra.

Lemma field_mult_inv_op : forall (x : F) x_, f_rcpcl x x_[*]x [=] [1].
Proof.
 intros x x_.
 elim (rcpcl_is_inverse F x x_); auto.
Qed.

End Field_basics.

#[global]
Hint Resolve field_mult_inv field_mult_inv_op: algebra.

Section Field_multiplication.


Variable F : CField.

Lemma mult_resp_ap_zero : forall x y : F, x [#] [0] -> y [#] [0] -> x[*]y [#] [0].
Proof.
 intros x y Hx Hy.
 apply cring_mult_ap_zero with (f_rcpcl y Hy).
 astepl x.
  auto.
 astepl (x[*][1]).
 eapply eq_transitive_unfolded.
  2: apply CRings.mult_assoc.
 algebra.
Qed.

Lemma mult_lft_resp_ap : forall x y z : F, x [#] y -> z [#] [0] -> z[*]x [#] z[*]y.
Proof.
 intros x y z H Hz.
 apply zero_minus_apart.
 unfold cg_minus in |- *.
 astepl (z[*]x[+]z[*][--]y).
 astepl (z[*] (x[+][--]y)).
 astepl (z[*] (x[-]y)).
 apply mult_resp_ap_zero; algebra.
Qed.

Lemma mult_rht_resp_ap : forall x y z : F, x [#] y -> z [#] [0] -> x[*]z [#] y[*]z.
Proof.
 intros x y z H Hz.
 astepl (z[*]x).
 astepr (z[*]y).
 apply mult_lft_resp_ap; assumption.
Qed.

Lemma mult_resp_neq_zero : forall x y : F, x[~=][0] -> y[~=][0] -> x[*]y[~=][0].
Proof.
 intros x y Hx Hy.
 cut (~ Not (x [#] [0])).
  intro H.
  cut (~ Not (y [#] [0])).
   intro H0.
   apply notnot_ap_imp_neq.
   cut (x [#] [0] -> y [#] [0] -> x[*]y [#] [0]).
    intro H1.
    intro.
    apply H0; intro H3.
    apply H; intro H4.
    apply H2; auto.
   intros; apply mult_resp_ap_zero; auto.
  apply neq_imp_notnot_ap; auto.
 apply neq_imp_notnot_ap; auto.
Qed.

Lemma mult_resp_neq : forall x y z : F, x[~=]y -> z[~=][0] -> x[*]z[~=]y[*]z.
Proof.
 intros x y z H Hz.
 generalize (neq_imp_notnot_ap _ _ _ H).
 generalize (neq_imp_notnot_ap _ _ _ Hz).
 generalize (mult_rht_resp_ap x y z).
 intros H1 H2 H3.
 apply notnot_ap_imp_neq.
 intro H4.
 apply H2; intro.
 apply H3; intro.
 apply H4.
 auto.
Qed.

Lemma mult_eq_zero : forall x y : F, x[~=][0] -> x[*]y [=] [0] -> y [=] [0].
Proof.
 intros x y Hx Hxy.
 apply not_ap_imp_eq.
 intro H.
 elim (eq_imp_not_neq _ _ _ Hxy).
 apply mult_resp_neq_zero.
  assumption.
 apply ap_imp_neq.
 assumption.
Qed.

Lemma mult_cancel_lft : forall x y z : F, z [#] [0] -> z[*]x [=] z[*]y -> x [=] y.
Proof.
 intros x y z Hz H.
 apply not_ap_imp_eq.
 intro H2.
 elim (eq_imp_not_ap _ _ _ H).
 apply mult_lft_resp_ap; assumption.
Qed.

Lemma mult_cancel_rht : forall x y z : F, z [#] [0] -> x[*]z [=] y[*]z -> x [=] y.
Proof.
 intros x y z Hz H.
 apply (mult_cancel_lft x y z).
  assumption.
 astepr (y[*]z).
 Step_final (x[*]z).
Qed.

Lemma square_eq_aux : forall x a : F, x[^]2 [=] a[^]2 -> (x[+]a) [*] (x[-]a) [=] [0].
Proof.
 intros x a H.
 astepl (x[^]2[-]a[^]2).
 Step_final (a[^]2[-]a[^]2).
Qed.

Lemma square_eq_weak : forall x a : F, x[^]2 [=] a[^]2 -> Not (x [#] a and x [#] [--]a).
Proof.
 intros x a H.
 intro H0.
 elim H0; intros H1 H2.
 generalize (square_eq_aux _ _ H); intro H3.
 generalize (eq_imp_not_ap _ _ _ H3); intro H4.
 apply H4.
 apply mult_resp_ap_zero.
  astepr ([--]a[+]a).
apply op_rht_resp_ap.
auto.
  astepr (a[-]a).
 apply minus_resp_ap_rht.
 assumption.
Qed.

Lemma cond_square_eq : forall x a : F,
 (Two:F) [#] [0] -> a [#] [0] -> x[^]2 [=] a[^]2 -> x [=] a or x [=] [--]a.
Proof.
 intros x a H Ha H0.
 cut (a [#] [--]a).
  intro H1.
  elim (ap_cotransitive_unfolded _ _ _ H1 x); intro H2.
   right.
   apply not_ap_imp_eq.
   intro H3.
   elim (square_eq_weak _ _ H0).
   split; auto.
   apply ap_symmetric_unfolded; auto.
  left.
  apply not_ap_imp_eq.
  intro H3.
  elim (square_eq_weak _ _ H0); auto.
 apply plus_cancel_ap_lft with a.
 astepr ([0]:F).
 astepl (Two[*]a).
 apply mult_resp_ap_zero; auto.
Qed.
End Field_multiplication.

Section x_square.
Lemma x_xminone : forall (F : CField) (x : F), x[^]2 [=] x -> x[*] (x[-][1]) [=] [0].
Proof.
 intros H x h.
 astepl (x[*]x[-]x[*][1]).
 astepl (x[*]x[-]x).
 apply cg_cancel_rht with x.
 astepl (x[*]x[+][--]x[+]x).
 astepl (x[*]x[+]([--]x[+]x)).
 astepl (x[*]x[+][0]).
 astepl (x[*]x).
 astepr x.
 astepl (x[^]2).
 exact h.
Qed.

Lemma square_id : forall (F : CField) (x : F), x[^]2 [=] x -> {x [=] [0]} + {x [=] [1]}.
Proof.
 intros F x H.
 cut (([0]:F) [#] ([1]:F)).
  intro H0.
  elim (ap_cotransitive_unfolded _ _ _ H0 x).
   intro H1.
   right.
   apply not_ap_imp_eq.
   red in |- *.
   intro H2.
   set (H3 := minus_resp_ap_rht F x [1] [1] H2) in *.
   set (H4 := ap_wdr_unfolded F (x[-][1]) ([1][-][1]) [0] H3 (cg_minus_correct F [1])) in *.
   set (H5 := ap_symmetric_unfolded F [0] x H1) in *.
   set (H6 := mult_resp_ap_zero F x (x[-][1]) H5 H4) in *.
   simpl in |- *.
   set (H7 := x_xminone F x H) in *.
   set (H8 := eq_imp_not_ap F (x[*] (x[-][1])) [0] H7) in *.
   intuition.
  left.
  apply not_ap_imp_eq.
  red in |- *.
  intro H2.
  set (H3 := minus_resp_ap_rht F x [1] [1] b) in *.
  set (H4 := ap_wdr_unfolded F (x[-][1]) ([1][-][1]) [0] H3 (cg_minus_correct F [1])) in *.
  set (H6 := mult_resp_ap_zero F x (x[-][1]) H2 H4) in *.
  set (H7 := x_xminone F x H) in *.
  set (H8 := eq_imp_not_ap F (x[*] (x[-][1])) [0] H7) in *.
  intuition.
 apply ap_symmetric_unfolded.
 apply ring_non_triv.
Qed.
End x_square.

#[global]
Hint Resolve mult_resp_ap_zero: algebra.

Section Rcpcl_properties.


Variable F : CField.

Lemma inv_one : f_rcpcl [1] (ring_non_triv F) [=] [1].
Proof.
 astepl ([1][*]f_rcpcl [1] (ring_non_triv F)).
 apply field_mult_inv.
Qed.

Lemma f_rcpcl_wd : forall (x y : F) x_ y_, x [=] y -> f_rcpcl x x_ [=] f_rcpcl y y_.
Proof.
 intros x y H.
 unfold f_rcpcl in |- *; algebra.
Qed.

Lemma f_rcpcl_mult : forall (y z : F) y_ z_ yz_,
 f_rcpcl (y[*]z) yz_ [=] f_rcpcl y y_[*]f_rcpcl z z_.
Proof.
 intros y z nzy nzz nzyz.
 apply mult_cancel_lft with (y[*]z).
  assumption.
 astepl ([1]:F).
 astepr (y[*]z[*] (f_rcpcl z nzz[*]f_rcpcl y nzy)).
 astepr (y[*] (z[*] (f_rcpcl z nzz[*]f_rcpcl y nzy))).
 astepr (y[*] (z[*]f_rcpcl z nzz[*]f_rcpcl y nzy)).
 astepr (y[*] ([1][*]f_rcpcl y nzy)).
 astepr (y[*]f_rcpcl y nzy).
 Step_final ([1]:F).
Qed.

Lemma f_rcpcl_resp_ap_zero : forall (y : F) y_, f_rcpcl y y_ [#] [0].
Proof.
 intros y nzy.
 apply cring_mult_ap_zero_op with y.
 astepl ([1]:F).
apply one_ap_zero.
Qed.

Lemma f_rcpcl_f_rcpcl : forall (x : F) x_ r_, f_rcpcl (f_rcpcl x x_) r_ [=] x.
Proof.
 intros x nzx nzr.
 apply mult_cancel_rht with (f_rcpcl x nzx).
  assumption.
 astepr ([1]:F).
 Step_final (f_rcpcl x nzx[*]f_rcpcl (f_rcpcl x nzx) nzr).
Qed.

End Rcpcl_properties.

Section MultipGroup.


Variable F : CField.



Definition NonZeroMonoid : CMonoid := Build_SubCMonoid
 (Build_multCMonoid F) (nonZeroP (M:=F)) (one_ap_zero F) (mult_resp_ap_zero F).

Definition fmg_cs_inv : CSetoid_un_op NonZeroMonoid.
Proof.
 red in |- *.
 cut (forall x : NonZeroMonoid, nonZeroP (cf_rcpcl F (scs_elem _ _ x) (scs_prf _ _ x))).
  intro H.
  apply Build_CSetoid_fun with (fun x : NonZeroMonoid =>
    Build_subcsetoid_crr _ _ (cf_rcpcl F (scs_elem _ _ x) (scs_prf _ _ x)) (H x)).
  red in |- *.
  simpl in |- *.
  simple destruct x; simple destruct y.
intros scs_elem0 scs_prf0 H0.
  apply (cf_rcpsx _ _ _ _ _ H0).
 intro; simpl in |- *.
 red in |- *.
 astepl (f_rcpcl (scs_elem _ _ x) (scs_prf _ _ x)).
 apply f_rcpcl_resp_ap_zero.
Defined.

Lemma plus_nonzeros_eq_mult_dom : forall x y : NonZeroMonoid,
 scs_elem _ _ (x[+]y) [=] scs_elem _ _ x[*]scs_elem _ _ y.
Proof.
 simple destruct x; simple destruct y; algebra.
Qed.

Lemma cfield_to_mult_cgroup : CGroup.
Proof.
 apply (Build_CGroup NonZeroMonoid fmg_cs_inv).
 intro x.
 red in |- *.
 elim x; intros x_ Hx.
 simpl in |- *; apply cf_proof.
Qed.

End MultipGroup.

Section Div_properties.


Variable F : CField.

Lemma div_prop : forall (x : F) x_, ([0][/] x[//]x_) [=] [0].
Proof.
 unfold cf_div in |- *; algebra.
Qed.

Lemma div_1 : forall (x y : F) y_, (x[/] y[//]y_) [*]y [=] x.
Proof.
 intros x y y_.
 astepl (x[*]f_rcpcl y y_[*]y).
 astepl (x[*] (f_rcpcl y y_[*]y)).
 Step_final (x[*][1]).
Qed.

Lemma div_1' : forall (x y : F) y_, y[*] (x[/] y[//]y_) [=] x.
Proof.
 intros x y y_.
 astepl ((x[/] y[//]y_) [*]y).
 apply div_1.
Qed.

Lemma div_1'' : forall (x y : F) y_, (x[*]y[/] y[//]y_) [=] x.
Proof.
 intros x y y_.
 unfold cf_div in |- *.
 astepl (y[*]x[*]f_rcpcl y y_).
 astepl (y[*] (x[*]f_rcpcl y y_)).
 change (y[*] (x[/] y[//]y_) [=] x) in |- *.
 apply div_1'.
Qed.

Hint Resolve div_1: algebra.

Lemma x_div_x : forall (x : F) x_, (x[/] x[//]x_) [=] [1].
Proof.
 intros x x_.
 unfold cf_div in |- *.
 apply field_mult_inv.
Qed.

Hint Resolve x_div_x: algebra.

Lemma x_div_one : forall x : F, (x[/] [1][//]ring_non_triv F) [=] x.
Proof.
 intro x.
 unfold cf_div in |- *.
 generalize inv_one; intro H.
 astepl (x[*][1]).
 apply mult_one.
Qed.



Lemma x_mult_y_div_z : forall (x y z : F) z_, x[*] (y[/] z[//]z_) [=] (x[*]y[/] z[//]z_).
Proof.
 unfold cf_div in |- *; algebra.
Qed.

Hint Resolve x_mult_y_div_z: algebra.

Lemma div_wd : forall (x x' y y' : F) y_ y'_, x [=] x' -> y [=] y' -> (x[/] y[//]y_) [=] (x'[/] y'[//]y'_).
Proof.
 intros x x' y y' nzy nzy' H H0.
 unfold cf_div in |- *.
 cut (f_rcpcl y nzy [=] f_rcpcl y' nzy').
  intro H1.
  algebra.
 apply f_rcpcl_wd.
 assumption.
Qed.

Hint Resolve div_wd: algebra_c.



Lemma div_div : forall (x y z : F) y_ z_ yz_, ((x[/] y[//]y_) [/] z[//]z_) [=] (x[/] y[*]z[//]yz_).
Proof.
 intros x y z nzy nzz nzyz.
 unfold cf_div in |- *.
 astepl (x[*] (f_rcpcl y nzy[*]f_rcpcl z nzz)).
 apply mult_wdr.
 apply eq_symmetric_unfolded.
 apply f_rcpcl_mult.
Qed.

Lemma div_resp_ap_zero_rev : forall (x y : F) y_, x [#] [0] -> (x[/] y[//]y_) [#] [0].
Proof.
 intros x y nzy Hx.
 unfold cf_div in |- *.
 apply mult_resp_ap_zero.
  assumption.
 apply f_rcpcl_resp_ap_zero.
Qed.

Lemma div_resp_ap_zero : forall (x y : F) y_, (x[/] y[//]y_) [#] [0] -> x [#] [0].
Proof.
 intros x y nzy Hxy.
 astepl ((x[/] y[//]nzy) [*]y).
algebra.
Qed.



Lemma div_div2 : forall (x y z : F) y_ z_ yz_, (x[/] y[/] z[//]z_[//]yz_) [=] (x[*]z[/] y[//]y_).
Proof.
 intros x y z nzy nzz nzyz.
 unfold cf_div in |- *.
 astepr (x[*] (z[*]f_rcpcl y nzy)).
 apply mult_wdr.
 cut (f_rcpcl z nzz [#] [0]).
  intro nzrz.
  apply eq_transitive_unfolded with (f_rcpcl y nzy[*]f_rcpcl (f_rcpcl z nzz) nzrz).
   apply f_rcpcl_mult.
  astepr (f_rcpcl y nzy[*]z).
  apply mult_wdr.
  apply f_rcpcl_f_rcpcl.
 apply f_rcpcl_resp_ap_zero.
Qed.



Lemma mult_of_divs : forall (x y p q : F) y_ q_ yq_,
 (x[*]p[/] y[*]q[//]yq_) [=] (x[/] y[//]y_) [*] (p[/] q[//]q_).
Proof.
 intros x y p q nzy nzq nzyq.
 unfold cf_div in |- *.
 astepl (x[*] (p[*]f_rcpcl (y[*]q) nzyq)).
 astepr (x[*] (f_rcpcl y nzy[*] (p[*]f_rcpcl q nzq))).
 apply mult_wdr.
 astepr (f_rcpcl y nzy[*]p[*]f_rcpcl q nzq).
 astepr (p[*]f_rcpcl y nzy[*]f_rcpcl q nzq).
 astepr (p[*] (f_rcpcl y nzy[*]f_rcpcl q nzq)).
 apply mult_wdr.
 apply f_rcpcl_mult.
Qed.

Lemma div_dist : forall (x y z : F) z_, (x[+]y[/] z[//]z_) [=] (x[/] z[//]z_) [+] (y[/] z[//]z_).
Proof.
 unfold cf_div in |- *; algebra.
Qed.

Lemma div_dist' : forall (x y z : F) z_, (x[-]y[/] z[//]z_) [=] (x[/] z[//]z_) [-] (y[/] z[//]z_).
Proof.
 unfold cf_div in |- *; algebra.
Qed.

Lemma div_semi_sym : forall (x y z : F) y_ z_, ((x[/] y[//]y_) [/] z[//]z_) [=] ((x[/] z[//]z_) [/] y[//]y_).
Proof.
 intros.
 unfold cf_div in |- *.
 astepl (x[*] ((f_rcpcl y y_) [*] (f_rcpcl z z_))).
 Step_final (x[*] ((f_rcpcl z z_) [*] (f_rcpcl y y_))).
Qed.

Hint Resolve div_semi_sym: algebra.

Lemma eq_div : forall (x y u v : F) y_ v_, x[*]v [=] u[*]y -> (x[/] y[//]y_) [=] (u[/] v[//]v_).
Proof.
 intros x y u v Hy Hv H.
 astepl (x[*][1][/] y[//]Hy).
 astepl (x[*] (v[/] v[//]Hv) [/] y[//]Hy).
 astepl ((x[*]v[/] v[//]Hv) [/] y[//]Hy).
 astepl ((u[*]y[/] v[//]Hv) [/] y[//]Hy).
 astepl ((u[*]y[/] y[//]Hy) [/] v[//]Hv).
 astepl (u[*] (y[/] y[//]Hy) [/] v[//]Hv).
 Step_final (u[*][1][/] v[//]Hv).
Qed.

Lemma div_strext : forall (x x' y y' : F) y_ y'_, (x[/] y[//]y_) [#] (x'[/] y'[//]y'_) -> x [#] x' or y [#] y'.
Proof.
 intros x x' y y' Hy Hy' H.
 unfold cf_div in H.
 elim (cs_bin_op_strext F cr_mult _ _ _ _ H).
  auto.
 intro H1.
 right.
 unfold f_rcpcl in H1.
 exact (pfstrx _ _ _ _ _ _ H1).
Qed.

End Div_properties.

#[global]
Hint Resolve div_1 div_1' div_1'' div_wd x_div_x x_div_one div_div div_div2
  mult_of_divs x_mult_y_div_z mult_of_divs div_dist div_dist' div_semi_sym
  div_prop: algebra.



Section Mult_Cancel_Ap_Zero.

Variable F : CField.

Lemma mult_cancel_ap_zero_lft : forall x y : F, x[*]y [#] [0] -> x [#] [0].
Proof.
 intros x y H.
 cut (x[*]y [#] [0][*][0]).
  intro H0.
  elim (bin_op_strext_unfolded _ _ _ _ _ _ H0); intro H1.
   3: astepr ([0]:F); auto.
  assumption.
 astepl (x[*]y[/] y[//]H1).
 apply div_resp_ap_zero_rev.
 assumption.
Qed.

Lemma mult_cancel_ap_zero_rht : forall x y : F, x[*]y [#] [0] -> y [#] [0].
Proof.
 intros x y H.
 apply mult_cancel_ap_zero_lft with x.
 astepl (x[*]y).
auto.
Qed.

Lemma recip_ap_zero : forall (x : F) x_, ([1][/] x[//]x_) [#] [0].
Proof.
 intros; apply cring_mult_ap_zero with x.
 astepl ([1]:F).
algebra.
Qed.

Lemma recip_resp_ap : forall (x y : F) x_ y_, x [#] y -> ([1][/] x[//]x_) [#] ([1][/] y[//]y_).
Proof.
 intros x y x_ y_ H.
 apply zero_minus_apart.
 apply mult_cancel_ap_zero_lft with (x[*]y).
 apply ap_wdl with (y[-]x).
  apply minus_ap_zero.
  apply ap_symmetric_unfolded; assumption.
 eapply eq_transitive_unfolded.
  2: apply eq_symmetric_unfolded; apply dist_2b.
 apply cg_minus_wd.
  astepr (x[*]y[*] ([1][/] x[//]x_)).
  astepr (x[*]y[*][1][/] x[//]x_).
  astepr (x[*]y[/] x[//]x_).
  astepr (y[*]x[/] x[//]x_).
  astepr (y[*] (x[/] x[//]x_)).
  Step_final (y[*][1]).
 astepr (x[*]y[*] ([1][/] y[//]y_)).
 astepr (x[*]y[*][1][/] y[//]y_).
 astepr (x[*]y[/] y[//]y_).
 astepr (x[*] (y[/] y[//]y_)).
 Step_final (x[*][1]).
Qed.

End Mult_Cancel_Ap_Zero.

Section CField_Ops.



Variable X : CField.

Variables F G : PartFunct X.


Let P := Dom F.
Let Q := Dom G.


Section Part_Function_Recip.



Let R := extend Q (fun x Hx => G x Hx [#] [0]).

Let Ext2R := ext2 (S:=X) (P:=Q) (R:=fun x Hx => G x Hx [#] [0]).

Lemma part_function_recip_strext : forall x y Hx Hy,
 ([1][/] _[//]Ext2R x Hx) [#] ([1][/] _[//]Ext2R y Hy) -> x [#] y.
Proof.
 intros x y Hx Hy H.
 elim (div_strext _ _ _ _ _ _ _ H); intro H1.
  exfalso; apply ap_irreflexive_unfolded with (x := [1]:X); auto.
 exact (pfstrx _ _ _ _ _ _ H1).
Qed.

Lemma part_function_recip_pred_wd : pred_wd X R.
Proof.
 red in |- *; intros x y H H0.
 elim H; intros H1 H2; split.
  apply (dom_wd X G x y H1 H0).
 intro H3; astepl (G x H1).
auto.
Qed.

Definition Frecip := Build_PartFunct X _ part_function_recip_pred_wd
 (fun x Hx => [1][/] _[//]Ext2R x Hx) part_function_recip_strext.

End Part_Function_Recip.

Section Part_Function_Div.



Let R := Conj P (extend Q (fun x Hx => G x Hx [#] [0])).

Let Ext2R := ext2 (S:=X) (P:=Q) (R:=fun x Hx => G x Hx [#] [0]).

Lemma part_function_div_strext : forall x y Hx Hy,
 (F x (prj1 X _ _ _ Hx) [/] _[//]Ext2R x (prj2 X _ _ _ Hx)) [#]
  (F y (prj1 X _ _ _ Hy) [/] _[//]Ext2R y (prj2 X _ _ _ Hy)) ->
 x [#] y.
Proof.
 intros x y Hx Hy H.
 elim (div_strext _ _ _ _ _ _ _ H); intro H1; exact (pfstrx _ _ _ _ _ _ H1).
Qed.

Lemma part_function_div_pred_wd : pred_wd X R.
Proof.
 red in |- *; intros x y H H0.
 elim H; intros H1 H2; split.
  apply (dom_wd X F x y H1 H0).
 clear H1.
 elim H2; intros H1 H3; split.
  apply (dom_wd X G x y H1 H0).
 intro H4; astepl (G x H1).
auto.
Qed.

Definition Fdiv := Build_PartFunct X _ part_function_div_pred_wd
 (fun x Hx => F x (Prj1 Hx) [/] _[//]Ext2R x (Prj2 Hx)) part_function_div_strext.

End Part_Function_Div.



Variable R:X -> CProp.

Lemma included_FRecip : included R Q ->
 (forall x, R x -> forall Hx, G x Hx [#] [0]) -> included R (Dom Frecip).
Proof.
 intros H H0.
 simpl in |- *.
 unfold extend in |- *.
 split.
  apply H; assumption.
 intros; apply H0; assumption.
Qed.

Lemma included_FRecip' : included R (Dom Frecip) -> included R Q.
Proof.
 intro H; simpl in H; eapply included_extend; apply H.
Qed.

Lemma included_FDiv : included R P -> included R Q ->
 (forall x, R x -> forall Hx, G x Hx [#] [0]) -> included R (Dom Fdiv).
Proof.
 intros HP HQ Hx.
 simpl in |- *.
 apply included_conj.
  assumption.
 unfold extend in |- *.
 split.
  apply HQ; assumption.
 intros; apply Hx; assumption.
Qed.

Lemma included_FDiv' : included R (Dom Fdiv) -> included R P.
Proof.
 intro H; simpl in H; eapply included_conj_lft; apply H.
Qed.

Lemma included_FDiv'' : included R (Dom Fdiv) -> included R Q.
 intro H; simpl in H; eapply included_extend; eapply included_conj_rht; apply H.
Qed.

End CField_Ops.

Arguments Frecip [X].
Notation "{1/} x" := (Frecip x) (at level 4, right associativity).

Arguments Fdiv [X].
Infix "{/}" := Fdiv (at level 41, no associativity).

#[global]
Hint Resolve included_FRecip included_FDiv : included.

#[global]
Hint Immediate included_FRecip' included_FDiv' included_FDiv'' : included.

End CFields.

End CoRN_DOT_algebra_DOT_CFields_WRAPPED.
Module Export CoRN_DOT_algebra_DOT_CFields.
Module Export CoRN.
Module Export algebra.
Module CFields.
Include CoRN_DOT_algebra_DOT_CFields_WRAPPED.CFields.
End CFields.

End algebra.

End CoRN.

End CoRN_DOT_algebra_DOT_CFields.
Export CoRN.algebra.CFields.
Export CoRN.tactics.AlgReflection.

Section Field_Interpretation_Function.

Variable F : CField.
Variable val : varindex -> F.
Variable unop : unopindex -> CSetoid_un_op F.
Variable binop : binopindex -> CSetoid_bin_op F.
Variable pfun : pfunindex -> PartFunct F.

Inductive xexprF : F -> Type :=
  | xexprF_var : forall i:varindex, xexprF (val i)
  | xexprF_int : forall k:Z, xexprF (zring k)
  | xexprF_plus : forall (x y:F) (e:xexprF x) (f:xexprF y), xexprF (x[+]y)
  | xexprF_mult : forall (x y:F) (e:xexprF x) (f:xexprF y), xexprF (x[*]y)
  | xexprF_unop : forall (x:F) (f:unopindex) (e:xexprF x), xexprF (unop f x)
  | xexprF_binop :
      forall (x y:F) (f:binopindex) (e:xexprF x) (e':xexprF y),
        xexprF (binop f x y)
  | xexprF_part :
      forall (x:F) (f:pfunindex) (e:xexprF x) (Hx:Dom (pfun f) x),
        xexprF (pfun f x Hx)
  | xexprF_div :
      forall (x y

              :F) (e:xexprF x) (f:xexprF y) (nzy:y[#][0]),
        xexprF (x[/]y[//]nzy)
  | xexprF_zero : xexprF [0]
  | xexprF_one : xexprF [1]
  | xexprF_nat : forall n:nat, xexprF (nring n)
  | xexprF_inv : forall (x:F) (e:xexprF x), xexprF [--]x
  | xexprF_minus : forall (x y:F) (e:xexprF x) (f:xexprF y), xexprF (x[-]y)
  | xexprF_power : forall (x:F) (e:xexprF x) (n:nat), xexprF (x[^]n).
Fixpoint xforgetF (x:F) (e:xexprF x) {struct e} : expr.
exact (match e with
  | xexprF_var i => expr_var i
  | xexprF_int k => expr_int k
  | xexprF_plus _ _ e f => expr_plus (xforgetF _ e) (xforgetF _ f)
  | xexprF_mult _ _ e f => expr_mult (xforgetF _ e) (xforgetF _ f)
  | xexprF_unop _ f e => expr_unop f (xforgetF _ e)
  | xexprF_binop _ _ f e e' => expr_binop f (xforgetF _ e) (xforgetF _ e')
  | xexprF_part _ f e _ => expr_part f (xforgetF _ e)
  | xexprF_div _ _ e f _ => expr_div (xforgetF _ e) (xforgetF _ f)
  | xexprF_zero => expr_zero
  | xexprF_one => expr_one
  | xexprF_nat n => expr_nat n
  | xexprF_inv _ e => expr_inv (xforgetF _ e)
  | xexprF_minus _ _ e f => expr_minus (xforgetF _ e) (xforgetF _ f)
  | xexprF_power _ e n => expr_power n (xforgetF _ e)
  end).
Defined.

End Field_Interpretation_Function.

Section Field_NormCorrect.

Variable F : CField.
Variable val : varindex -> F.
Variable unop : unopindex -> CSetoid_un_op F.
Variable binop : binopindex -> CSetoid_bin_op F.
Variable pfun : pfunindex -> PartFunct F.

Lemma Tactic_lemmaF :
 forall (x y:F) (e:xexprF F val unop binop pfun x)
   (f:xexprF F val unop binop pfun y),
   expr_is_zero
     (NormF (xforgetF _ _ _ _ _ _ (xexprF_minus _ _ _ _ _ _ _ e f))) = true ->
   x[=]y.
Admitted.

End Field_NormCorrect.

Ltac QuoteF R l t :=
match l with
 (Quad ?vl ?ul ?bl ?pl) =>
(let a := constr:(fun n:varindex => (Mnth n vl (cm_unit R))) in
 let b := constr:(fun n:unopindex => (Mnth n ul (@cg_inv R))) in
 let c := constr:(fun n:binopindex => (Mnth n bl (@csg_op R))) in
 let d := constr:(fun n:pfunindex => (Mnth n pl (total_eq_part _ (@cg_inv R)))) in
 match t with
 | (zring ?k) =>
    match (ClosedZ k) with
    | true => constr:(xexprF_int R a b c d k)
    end
 | (csbf_fun _ _ _ csg_op ?x ?y) =>
    let x' := QuoteF R l x in
    let y' := QuoteF R l y in
    constr:(xexprF_plus R a b c d _ _ x' y')
 | (csbf_fun _ _ _ cr_mult ?x ?y) =>
    let x' := QuoteF R l x in
    let y' := QuoteF R l y in
    constr:(xexprF_mult R a b c d _ _ x' y')
 | (cf_div ?x ?y ?H) =>
    let x' := QuoteF R l x in
    let y' := QuoteF R l y in
    constr:(xexprF_div R a b c d _ _ x' y' H)
 | ([0]) => constr:(xexprF_zero R a b c d)
 | ([1]) => constr:(xexprF_one R a b c d)
 | (nring ?n) =>
    match (ClosedNat n) with
    | true => constr:(xexprF_nat R a b c d n)
    end
 | (csf_fun _ _ cg_inv ?x) =>
    let x' := QuoteF R l x in
    constr:(xexprF_inv R a b c d _ x')
 | (cg_minus ?x ?y) =>
    let x' := QuoteF R l x in
    let y' := QuoteF R l y in
    constr:(xexprF_minus R a b c d _ _ x' y')
 | (csf_fun _ _ (@nexp_op _ ?n) ?x) =>
    match (ClosedNat n) with
    | true => let x' := QuoteF R l x in
              constr:(xexprF_power R a b c d _ x' n)
    end
 | (pfpfun ?f ?x ?h) =>
    let x' := QuoteF R l x in
    let i := FindIndex f pl in
    constr:(xexprF_part R a b c d _ i x' h)
 | (csf_fun _ _ ?f ?x) =>
    let x' := QuoteF R l x in
    let i := FindIndex f ul in
    constr:(xexprF_unop R a b c d _ i x')
 | (csbf_fun _ _ _ ?f ?x ?y) =>
    let x' := QuoteF R l x in
    let y' := QuoteF R l y in
    let i := FindIndex f bl in
    constr:(xexprF_binop R a b c d _ _ i x' y')
 | ?t =>
    let i := FindIndex t vl in
    constr:(xexprF_var R a b c d i)
end)
end.

Ltac FindTermVariablesF t l :=
match t with
| (zring ?k) =>
    match (ClosedZ k) with
    | true => constr:(l)
    end
| (csbf_fun _ _ _ csg_op ?x ?y) =>
    let l1 := FindTermVariablesF x l in
    let l2 := FindTermVariablesF y l1 in
    constr:(l2)
| (csbf_fun _ _ _ cr_mult ?x ?y) =>
    let l1 := FindTermVariablesF x l in
    let l2 := FindTermVariablesF y l1 in
    constr:(l2)
| (cf_div ?x ?y ?H) =>
    let l1 := FindTermVariablesF x l in
    let l2 := FindTermVariablesF y l1 in
    constr:(l2)
| ([0]) => constr:(l)
| ([1]) => constr:(l)
| (nring ?n) =>
    match (ClosedNat n) with
    | true => constr:(l)
    end
| (csf_fun _ _ cg_inv ?x) =>
    let l1 := FindTermVariablesF x l in
    constr:(l1)
| (cg_minus ?x ?y) =>
    let l1 := FindTermVariablesF x l in
    let l2 := FindTermVariablesF y l1 in
    constr:(l2)
| (csf_fun _ _ (@nexp_op _ ?n) ?x) =>
    match (ClosedNat n) with
    | true => let l1 := FindTermVariablesF x l in
              constr:(l1)
    end
| (pfpfun ?f ?x ?h) =>
    let l1 := FindTermVariablesF x l in
    match l1 with
     (Quad ?vl ?ul ?bl ?pl) => constr:(Quad vl ul bl (Mcons f pl))
    end
| (csf_fun _ _ ?f ?x) =>
    let l1 := FindTermVariablesF x l in
    match l1 with
     (Quad ?vl ?ul ?bl ?pl) => constr:(Quad vl (Mcons f ul) bl pl)
    end
| (csbf_fun _ _ _ ?f ?x ?y) =>
    let l1 := FindTermVariablesF x l in
    let l2 := FindTermVariablesF y l1 in
    match l2 with
     (Quad ?vl ?ul ?bl ?pl) => constr:(Quad vl ul (Mcons f bl) pl)
    end
| ?t => match l with
         (Quad ?vl ?ul ?bl ?pl) => constr:(Quad (Mcons t vl) ul bl pl)
        end
end.

Ltac FindTermsVariablesF fn t1 t2 :=
    let l1 := FindTermVariablesF t1 (Quad (Mnil fn) (Mnil (CSetoid_un_op fn)) (Mnil (CSetoid_bin_op fn)) (Mnil (PartFunct fn))) in
    let l2 := FindTermVariablesF t2 l1 in
    constr:(l2).

Ltac rationalF F x y :=
                 let l:=FindTermsVariablesF F x y in
                 let t1:=(QuoteF F l x) in
                 let t2:=(QuoteF F l y) in
                 eapply Tactic_lemmaF with (e:=t1) (f:=t2)
                 ; reflexivity.
Module Export CoRN.
Module Export tactics.
Module Export FieldReflection.
End FieldReflection.
Module Export CoRN_DOT_model_DOT_setoids_DOT_Qsetoid_WRAPPED.
Module Export Qsetoid.

Export CoRN.model.structures.Qsec.

Lemma ap_Q_irreflexive1 : irreflexive (A:=Q) Qap.
Admitted.

Lemma ap_Q_symmetric1 : Csymmetric Qap.
Admitted.

Lemma ap_Q_cotransitive1 : cotransitive (A:=Q) Qap.
Admitted.

Lemma ap_Q_tight1 : tight_apart (A:=Q) Qeq Qap.
Admitted.

Definition ap_Q_is_apartness := Build_is_CSetoid Q Qeq Qap
 ap_Q_irreflexive1 ap_Q_symmetric1 ap_Q_cotransitive1 ap_Q_tight1.

Definition Q_as_CSetoid := Build_CSetoid _ _ _ ap_Q_is_apartness.

Lemma Qplus_strext1 : bin_fun_strext Q_as_CSetoid Q_as_CSetoid Q_as_CSetoid Qplus.
Admitted.

Definition Qplus_is_bin_fun := Build_CSetoid_bin_fun _ _ _ _ Qplus_strext1.

Lemma Qplus_is_assoc : associative Qplus_is_bin_fun.
Proof Qplus_assoc.

Lemma Qplus_is_commut1 : commutes Qplus_is_bin_fun.
Proof Qplus_comm.

Lemma Qopp_wd : fun_wd (S1:=Q_as_CSetoid) (S2:=Q_as_CSetoid) Qopp.
Proof.
repeat intro.
apply Qopp_comp; trivial.
Qed.

Lemma Qopp_strext : fun_strext (S1:=Q_as_CSetoid) (S2:=Q_as_CSetoid) Qopp.
Proof.
firstorder using Qopp_comp.
Qed.

Definition Qopp_is_fun := Build_CSetoid_fun _ _ _ Qopp_strext.

Lemma Qmult_wd : bin_fun_wd Q_as_CSetoid Q_as_CSetoid Q_as_CSetoid Qmult.
Proof.
repeat intro.
apply Qmult_comp; trivial.
Qed.

Lemma Qmult_strext1 : bin_fun_strext Q_as_CSetoid Q_as_CSetoid Q_as_CSetoid Qmult.
Proof.
repeat intro.
apply Qmult_strext0; trivial.
Qed.

Definition Qmult_is_bin_fun := Build_CSetoid_bin_fun _ _ _ _ Qmult_strext1.

Lemma Qmult_is_assoc : associative Qmult_is_bin_fun.
Proof.
repeat intro.
apply Qmult_assoc.
Qed.

Lemma Qmult_is_commut : commutes Qmult_is_bin_fun.
Proof.
repeat intro.
apply Qmult_comm.
Qed.

Lemma Qlt_strext : Crel_strext Q_as_CSetoid Qlt.
Proof.
 red in |- *.
 apply Qlt_strext_unfolded.
Qed.

Definition Qlt_is_CSetoid_relation := Build_CCSetoid_relation _ _ Qlt_strext.
Canonical Structure Qlt_is_CSetoid_relation.

End Qsetoid.

End CoRN_DOT_model_DOT_setoids_DOT_Qsetoid_WRAPPED.
Module Export CoRN_DOT_model_DOT_setoids_DOT_Qsetoid.
Module Export CoRN.
Module Export model.
Module Export setoids.
Module Qsetoid.
Include CoRN_DOT_model_DOT_setoids_DOT_Qsetoid_WRAPPED.Qsetoid.
End Qsetoid.

End setoids.

End model.

End CoRN.

End CoRN_DOT_model_DOT_setoids_DOT_Qsetoid.
Export CoRN.tactics.FieldReflection.

Inductive AlgebraName : Type :=
|cfield : CField -> AlgebraName
|cring : CRing -> AlgebraName.

Ltac GetStructureName t :=
match t with
| (csg_crr (cm_crr (cg_crr (cag_crr (cr_crr ?r))))) =>
  match r with
  | (cf_crr ?q) => constr:(cfield q)
  | _ => constr:(cring r)
 end
end.

Ltac rational :=
match goal with
[|-@cs_eq (cs_crr ?T) ?x ?y] =>
 match GetStructureName T with
 |(cfield ?F) => rationalF F x y
 |(cring ?R) => (repeat (try apply csf_fun_wd);simpl;ring)

 end
end.

Tactic Notation "rstepl" constr(c) :=  stepl c;[idtac|rational].
Tactic Notation "rstepr" constr(c) :=  stepr c;[idtac|rational].
Module Export CoRN_DOT_algebra_DOT_COrdFields_WRAPPED.
Module Export COrdFields.
Export CoRN.algebra.CSetoids.
Import Stdlib.micromega.Lia.

Record strictorder (A : Type)(R : A -> A -> CProp) : CProp :=
 {so_trans : Ctransitive R;
  so_asym  : antisymmetric R}.

Arguments strictorder [A].
Arguments Build_strictorder [A R].

Record is_COrdField (F : CField)
  (less : CCSetoid_relation F) (leEq : Relation F)
  (greater : CCSetoid_relation F) (grEq : Relation F) : CProp :=
  {ax_less_strorder  : strictorder less;
   ax_plus_resp_less : forall x y, less x y -> forall z, less (x[+]z) (y[+]z);
   ax_mult_resp_pos  : forall x y, less [0] x -> less [0] y -> less [0] (x[*]y);
   ax_less_conf_ap   : forall x y, Iff (x [#] y) (less x y or less y x);
   def_leEq : forall x y, (leEq x y) <-> (Not (less y x));
   def_greater : forall x y, Iff (greater x y) (less y x);
   def_grEq : forall x y, (grEq x y) <-> (leEq y x)}.

Record COrdField : Type :=
  {cof_crr   :> CField;
   cof_less  :  CCSetoid_relation cof_crr;
   cof_leEq :  cof_crr -> cof_crr -> Prop;
   cof_greater :  CCSetoid_relation cof_crr;
   cof_grEq : cof_crr -> cof_crr -> Prop;
   cof_proof :  is_COrdField cof_crr cof_less cof_leEq cof_greater cof_grEq}.

Arguments cof_less {c}.
Infix "[<]" := cof_less (at level 70, no associativity).

Arguments cof_greater {c}.
Infix "[>]" := cof_greater (at level 70, no associativity).

Arguments cof_leEq {c}.
Infix "[<=]" := cof_leEq (at level 70, no associativity).

Arguments cof_grEq {c}.
Infix "[>=]" := cof_grEq (at level 70, no associativity).

Definition default_greater (X:CField) (lt:CCSetoid_relation X) : CCSetoid_relation X.
Proof.
 intros.
 exists (fun x y => lt y x).
 destruct lt.
 unfold Crel_strext in *.
 simpl.
 intros.
 pose (Ccsr_strext _ y2 _ x2 X0).
 tauto.
Defined.
Definition default_grEq (X:CField) (le:Relation X) : Relation X.
exact ((fun x y => (le y x))).
Defined.

Section COrdField_axioms.

Variable F : COrdField.

Lemma COrdField_is_COrdField : is_COrdField F cof_less (@cof_leEq F) cof_greater (@cof_grEq F).
Admitted.

Lemma less_transitive_unfolded : forall x y z : F, x [<] y -> y [<] z -> x [<] z.
Admitted.

Lemma less_antisymmetric_unfolded : forall x y : F, x [<] y -> Not (y [<] x).
Admitted.

Lemma less_irreflexive : irreflexive (cof_less (c:=F)).
Admitted.

Lemma less_irreflexive_unfolded : forall x : F, Not (x [<] x).
Proof less_irreflexive.

Lemma plus_resp_less_rht : forall x y z : F, x [<] y -> x[+]z [<] y[+]z.
 elim COrdField_is_COrdField; auto.
Print Options.
Qed.

Lemma mult_resp_pos : forall x y : F, [0] [<] x -> [0] [<] y -> [0] [<] x[*]y.
 elim COrdField_is_COrdField; auto.
Print Options.
Qed.

Lemma less_conf_ap : forall x y : F, Iff (x [#] y) (x [<] y or y [<] x).
 elim COrdField_is_COrdField; auto.
Print Options.
Qed.

Lemma leEq_def : forall x y : F, (x [<=] y) <-> (Not (y [<] x)).
 elim COrdField_is_COrdField; auto.
Print Options.
Qed.

Lemma greater_def : forall x y : F, Iff (x [>] y) (y [<] x).
 elim COrdField_is_COrdField; auto.
Print Options.
Qed.

Lemma grEq_def : forall x y : F, (x [>=] y) <-> (y [<=] x).
 elim COrdField_is_COrdField; auto.
Print Options.
Qed.

Lemma less_wdr : forall x y z : F, x [<] y -> y [=] z -> x [<] z.
Proof Ccsr_wdr F cof_less.

Lemma less_wdl : forall x y z : F, x [<] y -> x [=] z -> z [<] y.
Proof Ccsr_wdl F cof_less.

End COrdField_axioms.

Declare Left Step less_wdl.
Declare Right Step less_wdr.

Section OrdField_basics.

Variable R : COrdField.

Lemma less_imp_ap : forall x y : R, x [<] y -> x [#] y.
 intros x y H.
Print Options.
 elim (less_conf_ap _ x y); intros.
Print Options.
auto.
Print Options.
Qed.

Lemma Greater_imp_ap : forall x y : R, y [<] x -> x [#] y.
 intros x y H.
Print Options.
 elim (less_conf_ap _ x y); intros.
Print Options.
auto.
Print Options.
Qed.

Lemma ap_imp_less : forall x y : R, x [#] y -> x [<] y or y [<] x.
 intros x y.
Print Options.
 elim (less_conf_ap _ x y); auto.
Print Options.
Qed.

Lemma less_cotransitive : cotransitive (cof_less (c:=R)).
 intros x y H z.
Print Options.
 generalize (less_imp_ap _ _ H); intro H0.
Print Options.
 elim (ap_cotransitive_unfolded _ _ _ H0 z); intro H1.
Print Options.
  elim (ap_imp_less _ _ H1).
Print Options.
   auto.
Print Options.
  intro H2.
Print Options.
  right.
Print Options.
  apply (less_transitive_unfolded _ _ _ _ H2 H).
Print Options.
 elim (ap_imp_less _ _ H1).
Print Options.
  auto.
Print Options.
 intro H2.
Print Options.
 left.
Print Options.
 apply (less_transitive_unfolded _ _ _ _ H H2).
Print Options.
Qed.

Lemma less_cotransitive_unfolded : forall x y : R, x [<] y -> forall z, x [<] z or z [<] y.
Proof less_cotransitive.

Lemma pos_ap_zero : forall x : R, [0] [<] x -> x [#] [0].
 intros x H.
Print Options.
 apply Greater_imp_ap.
Print Options.
 assumption.
Print Options.
Defined.

Lemma leEq_not_eq : forall x y : R, x [<=] y -> x [#] y -> x [<] y.
 intros x y H H0.
Print Options.
 elim (ap_imp_less _ _ H0); intro H1; auto.
Print Options.
 rewrite -> leEq_def in H.
Print Options.
 elim (H H1).
Print Options.
Qed.

End OrdField_basics.

Section Basic_Properties_of_leEq.

Variable R : COrdField.

Lemma leEq_wdr : forall x y z : R, x [<=] y -> y [=] z -> x [<=] z.
 intros x y z H H0.
Print Options.
 rewrite -> leEq_def in *.
Print Options.
 intro H1.
Print Options.
 apply H.
Print Options.
 astepl z; assumption.
Print Options.
Qed.

Lemma leEq_wdl : forall x y z : R, x [<=] y -> x [=] z -> z [<=] y.
 intros x y z H H0.
Print Options.
 rewrite -> leEq_def in *.
Print Options.
 intro H1.
Print Options.
 apply H.
Print Options.
 astepr z;auto.
Print Options.
Qed.

Lemma leEq_reflexive : forall x : R, x [<=] x.
 intro x.
Print Options.
 rewrite -> leEq_def.
Print Options.
 apply less_irreflexive_unfolded.
Print Options.
Qed.
Declare Right Step leEq_wdr.

Lemma eq_imp_leEq : forall x y : R, x [=] y -> x [<=] y.
 intros x y H.
Print Options.
 astepr x.
Print Options.
 exact (leEq_reflexive _).
Print Options.
Qed.

Lemma leEq_imp_eq : forall x y : R, x [<=] y -> y [<=] x -> x [=] y.
 intros x y H H0.
Print Options.
rewrite -> leEq_def in *|-.
Print Options.
 apply not_ap_imp_eq.
Print Options.
intro H1.
Print Options.
 elim (ap_imp_less _ _ _ H1); intro H2.
Print Options.
auto.
Print Options.
  elim (H H2).
Print Options.
Qed.

Lemma lt_equiv_imp_eq : forall x x' : R,
 (forall y, x [<] y -> x' [<] y) -> (forall y, x' [<] y -> x [<] y) -> x [=] x'.
 intros x x' H H0.
Print Options.
 apply leEq_imp_eq; rewrite -> leEq_def in |- *; intro H1.
Print Options.
  apply (less_irreflexive_unfolded _ x); auto.
Print Options.
 apply (less_irreflexive_unfolded _ x'); auto.
Print Options.
Qed.

Lemma less_leEq_trans : forall x y z : R, x [<] y -> y [<=] z -> x [<] z.
 intros x y z.
Print Options.
 intros H H0.
Print Options.
 elim (less_cotransitive_unfolded _ _ _ H z); intro H1.
Print Options.
  assumption.
Print Options.
 destruct (leEq_def _ y z).
Print Options.
 elim ((H2 H0) H1).
Print Options.
Qed.

Lemma leEq_less_trans : forall x y z : R, x [<=] y -> y [<] z -> x [<] z.
 intros x y z.
Print Options.
 intros H H0.
Print Options.
 elim (less_cotransitive_unfolded _ _ _ H0 x); intro H1; try assumption.
Print Options.
 destruct (leEq_def _ x y) as [H2 H3].
Print Options.
 elim ((H2 H) H1).
Print Options.
Qed.

Lemma leEq_transitive : forall x y z : R, x [<=] y -> y [<=] z -> x [<=] z.
 intros x y z.
Print Options.
 repeat rewrite -> leEq_def.
Print Options.
 intros H H0 H1.
Print Options.
 apply H.
Print Options.
 apply leEq_less_trans with (y := z); firstorder using leEq_def.
Print Options.
Qed.

Lemma less_leEq : forall x y : R, x [<] y -> x [<=] y.
 intros.
Print Options.
 rewrite -> leEq_def.
Print Options.
 apply less_antisymmetric_unfolded.
Print Options.
 assumption.
Print Options.
Qed.

Lemma leEq_or_leEq : forall x y:R, Not (Not (x[<=]y or y[<=]x)).
 intros x y H.
Print Options.
 apply H.
Print Options.
 right.
Print Options.
 rewrite -> leEq_def.
Print Options.
 intros H0.
Print Options.
 apply H.
Print Options.
 left.
Print Options.
 apply less_leEq.
Print Options.
 assumption.
Print Options.
Qed.

Lemma leEq_less_or_equal : forall x y:R, x[<=]y -> Not (Not (x[<]y or x[=]y)).
 intros x y Hxy H.
Print Options.
revert Hxy.
Print Options.
 rewrite -> leEq_def.
Print Options.
intro Hxy.
Print Options.
apply H.
Print Options.
 right.
Print Options.
 apply (not_ap_imp_eq).
Print Options.
 intros H0.
Print Options.
 destruct (ap_imp_less _ _ _ H0).
Print Options.
  apply H.
Print Options.
  left.
Print Options.
  assumption.
Print Options.
 apply Hxy.
Print Options.
 assumption.
Print Options.
Qed.

End Basic_Properties_of_leEq.

Declare Left Step leEq_wdl.
Declare Right Step leEq_wdr.

Section infinity_of_cordfields.

Variable R : COrdField.

Lemma pos_one : ([0]:R) [<] [1].

 elim (ap_imp_less _ _ _ (ring_non_triv R)).
Print Options.
  2: auto.
Print Options.
 intro H.
Print Options.
 exfalso.
Print Options.
 apply (less_irreflexive_unfolded R [1]).
Print Options.
 apply less_transitive_unfolded with ([0]:R).
Print Options.
  auto.
Print Options.

 cut (([0]:R) [<] [--][1]).
Print Options.
  2: astepl (([1]:R)[+][--][1]).
Print Options.
  2: astepr (([0]:R)[+][--][1]).
Print Options.
  2: apply plus_resp_less_rht; auto.
Print Options.
 intro H0.
Print Options.

 rstepr ([--]([1]:R)[*][--][1]).
Print Options.
 apply (mult_resp_pos _ _ _ H0 H0).
Print Options.
Qed.

Lemma nring_less_succ : forall m : nat, (nring m:R) [<] nring (S m).
 intro m.
Print Options.
 astepr ([1][+]nring (R:=R) m).
Print Options.
 astepl ([0][+]nring (R:=R) m).
Print Options.
 apply plus_resp_less_rht.
Print Options.
 apply pos_one.
Print Options.
Qed.

Lemma nring_less : forall m n : nat, m < n -> (nring m:R) [<] nring n.
 intros m n H.
Print Options.
 generalize (toCProp_lt _ _ H); intro H0.
Print Options.
 elim H0.
Print Options.
  apply nring_less_succ.
Print Options.
 clear H0 H n; intros n H H0.
Print Options.
 apply less_transitive_unfolded with (nring (R:=R) n).
Print Options.
  assumption.
Print Options.
 apply nring_less_succ.
Print Options.
Qed.

Lemma nring_leEq : forall m n : nat, m <= n -> (nring m:R) [<=] nring n.
 intros m n H.
Print Options.
 elim (le_lt_eq_dec _ _ H); intro H1.
Print Options.
  rewrite -> leEq_def in |- *.
Print Options.
apply less_antisymmetric_unfolded.
Print Options.
  apply nring_less.
Print Options.
auto.
Print Options.
  rewrite H1.
Print Options.
 rewrite -> leEq_def in |- *.
Print Options.
apply less_irreflexive_unfolded.
Print Options.
Qed.

Lemma nring_apart : forall m n : nat, m <> n -> (nring m:R) [#] nring n.
 intros m n H.
Print Options.
 elim (lt_eq_lt_dec m n); intro H0.
Print Options.
  elim H0; intro H1.
Print Options.
   apply less_imp_ap.
Print Options.
   apply nring_less.
Print Options.
   assumption.
Print Options.
  elim (H H1).
Print Options.
 apply Greater_imp_ap.
Print Options.
 apply nring_less.
Print Options.
 assumption.
Print Options.
Qed.

Lemma nring_ap_zero : forall n : nat, n <> 0 -> nring (R:=R) n [#] [0].
 intros n H.
Print Options.
 exact (nring_apart _ _ H).
Print Options.
Qed.

Lemma nring_ap_zero' : forall n : nat, 0 <> n -> nring (R:=R) n [#] [0].
 intros.
Print Options.
 apply nring_ap_zero; auto.
Print Options.
Qed.

Lemma nring_ap_zero_imp : forall n : nat, nring (R:=R) n [#] [0] -> 0 <> n.
 intros n H.
Print Options.
 induction  n as [| n Hrecn].
Print Options.
  elim (ap_irreflexive_unfolded _ _ H).
Print Options.
 apply O_S.
Print Options.
Qed.

Definition Snring (n : nat) := nring (R:=R) (S n).

Lemma pos_Snring : forall n : nat, ([0]:R) [<] Snring n.
 intro n.
Print Options.
 apply less_leEq_trans with ([1]:R).
Print Options.
  apply pos_one.
Print Options.
 stepl (nring (R:=R) 1).
Print Options.
2: simpl in |- *; algebra.
Print Options.
 apply nring_leEq.
Print Options.
 auto with arith.
Print Options.
Qed.

Lemma nringS_ap_zero : forall m : nat, nring (R:=R) (S m) [#] [0].
 intros.
Print Options.
 apply pos_ap_zero.
Print Options.
 exact (pos_Snring m).
Print Options.
Qed.

Lemma nring_fac_ap_zero : forall n : nat, nring (R:=R) (fact n) [#] [0].
 intro n; apply nring_ap_zero.
Print Options.
cut (0 < fact n).
Print Options.
 lia.
Print Options.
 apply lt_O_fact.
Print Options.
Qed.

Section up_to_four.

Lemma less_plusOne : forall x : R, x [<] x[+][1].

 intros x.
Print Options.
 astepl ([0][+]x); astepr ([1][+]x).
Print Options.
 apply plus_resp_less_rht.
Print Options.
 exact pos_one.
Print Options.
Qed.

Lemma zero_lt_posplus1 : forall x : R, [0] [<=] x -> [0] [<] x[+][1].
 intros x zltx.
Print Options.
 apply leEq_less_trans with x.
Print Options.
  assumption.
Print Options.
 exact (less_plusOne x).
Print Options.
Qed.

Lemma plus_one_ext_less : forall x y : R, x [<] y -> x [<] y[+][1].

 intros x y H.
Print Options.
 apply less_leEq_trans with y.
Print Options.
  assumption.
Print Options.
 apply less_leEq; apply less_plusOne.
Print Options.
Qed.

Lemma one_less_two : ([1]:R) [<] Two.
 astepr (([1]:R)[+][1]).
Print Options.
 apply less_plusOne.
Print Options.
Qed.

Lemma two_less_three : (Two:R) [<] Three.
 apply less_plusOne.
Print Options.
Qed.

Lemma three_less_four : (Three:R) [<] Four.
 apply less_plusOne.
Print Options.
Qed.

Lemma pos_two : ([0]:R) [<] Two.
 apply less_leEq_trans with ([1]:R).
Print Options.
  exact pos_one.
Print Options.
 apply less_leEq; exact one_less_two.
Print Options.
Qed.

Lemma one_less_three : ([1]:R) [<] Three.
 apply less_leEq_trans with (Two:R).
Print Options.
  exact one_less_two.
Print Options.
 apply less_leEq; exact two_less_three.
Print Options.
Qed.

Lemma two_less_four : (Two:R) [<] Four.
 apply less_leEq_trans with (Three:R).
Print Options.
  exact two_less_three.
Print Options.
 apply less_leEq; exact three_less_four.
Print Options.
Qed.

Lemma pos_three : ([0]:R) [<] Three.
 apply less_leEq_trans with ([1]:R).
Print Options.
  exact pos_one.
Print Options.
 apply less_leEq; exact one_less_three.
Print Options.
Qed.

Lemma one_less_four : ([1]:R) [<] Four.
 apply less_leEq_trans with (Three:R).
Print Options.
  exact one_less_three.
Print Options.
 apply less_leEq; exact three_less_four.
Print Options.
Qed.

Lemma pos_four : ([0]:R) [<] Four.
 apply less_leEq_trans with ([1]:R).
Print Options.
  exact pos_one.
Print Options.
 apply less_leEq; exact one_less_four.
Print Options.
Qed.

Lemma two_ap_zero : Two [#] ([0]:R).
 apply pos_ap_zero.
Print Options.
 apply pos_two.
Print Options.
Qed.

Lemma three_ap_zero : Three [#] ([0]:R).
 apply pos_ap_zero.
Print Options.
 apply pos_three.
Print Options.
Qed.

Lemma four_ap_zero : Four [#] ([0]:R).
 apply pos_ap_zero.
Print Options.
 apply pos_four.
Print Options.
Qed.

End up_to_four.

Section More_than_four.

Lemma pos_six : ([0]:R) [<] Six.
 exact (pos_Snring 5).
Print Options.
Qed.

Lemma pos_eight : ([0]:R) [<] Eight.
 exact (pos_Snring 7).
Print Options.
Qed.

Lemma pos_nine : ([0]:R) [<] Nine.
 exact (pos_Snring 8).
Print Options.
Qed.

Lemma pos_twelve : ([0]:R) [<] Twelve.
 exact (pos_Snring 11).
Print Options.
Qed.

Lemma pos_sixteen : ([0]:R) [<] Sixteen.
 exact (pos_Snring 15).
Print Options.
Qed.

Lemma pos_eighteen : ([0]:R) [<] Eighteen.
 exact (pos_Snring 17).
Print Options.
Qed.

Lemma pos_twentyfour : ([0]:R) [<] TwentyFour.
 exact (pos_Snring 23).
Print Options.
Qed.

Lemma pos_fortyeight : ([0]:R) [<] FortyEight.
 exact (pos_Snring 47).
Print Options.
Qed.

Lemma six_ap_zero : Six [#] ([0]:R).
 apply pos_ap_zero; apply pos_six.
Print Options.
Qed.

Lemma eight_ap_zero : Eight [#] ([0]:R).
 apply pos_ap_zero; apply pos_eight.
Print Options.
Qed.

Lemma nine_ap_zero : Nine [#] ([0]:R).
 apply pos_ap_zero; apply pos_nine.
Print Options.
Qed.

Lemma twelve_ap_zero : Twelve [#] ([0]:R).
 apply pos_ap_zero; apply pos_twelve.
Print Options.
Qed.

Lemma sixteen_ap_zero : Sixteen [#] ([0]:R).
 apply pos_ap_zero; apply pos_sixteen.
Print Options.
Qed.

Lemma eighteen_ap_zero : Eighteen [#] ([0]:R).
 apply pos_ap_zero; apply pos_eighteen.
Print Options.
Qed.

Lemma twentyfour_ap_zero : TwentyFour [#] ([0]:R).
 apply pos_ap_zero; apply pos_twentyfour.
Print Options.
Qed.

Lemma fortyeight_ap_zero : FortyEight [#] ([0]:R).
 apply pos_ap_zero; apply pos_fortyeight.
Print Options.
Qed.

End More_than_four.

End infinity_of_cordfields.
Notation " x [/]TwoNZ" := (x[/] Two[//]two_ap_zero _) (at level 20).
Notation " x [/]ThreeNZ" := (x[/] Three[//]three_ap_zero _) (at level 20).
Notation " x [/]FourNZ" := (x[/] Four[//]four_ap_zero _) (at level 20).
Notation " x [/]SixNZ" := (x[/] Six[//]six_ap_zero _) (at level 20).
Notation " x [/]EightNZ" := (x[/] Eight[//]eight_ap_zero _) (at level 20).
Notation " x [/]NineNZ" := (x[/] Nine[//]nine_ap_zero _) (at level 20).
Notation " x [/]TwelveNZ" := (x[/] Twelve[//]twelve_ap_zero _) (at level 20).
Notation " x [/]SixteenNZ" := (x[/] Sixteen[//]sixteen_ap_zero _) (at level 20).
Notation " x [/]EighteenNZ" := (x[/] Eighteen[//]eighteen_ap_zero _) (at level 20).
Notation " x [/]TwentyFourNZ" := (x[/] TwentyFour[//]twentyfour_ap_zero _) (at level 20).
Notation " x [/]FortyEightNZ" := (x[/] FortyEight[//]fortyeight_ap_zero _) (at level 20).

Section consequences_of_infinity.

Variable F : COrdField.

Lemma square_eq : forall x a : F, a [#] [0] -> x[^]2 [=] a[^]2 -> {x [=] a} + {x [=] [--]a}.
Proof.
 intros x a a_ H.
 elim (cond_square_eq F x a); auto.
 apply two_ap_zero.
Qed.

Lemma char0_OrdField : Char0 F.
Proof.
 unfold Char0 in |- *.
 intros.
 apply nring_ap_zero.
 lia.
Qed.

End consequences_of_infinity.

Section Properties_of_Ordering.

Variable R : COrdField.

Section addition.

Lemma plus_resp_less_lft : forall x y z : R, x [<] y -> z[+]x [<] z[+]y.
Proof.
 intros x y z H.
 astepl (x[+]z).
 astepr (y[+]z).
 apply plus_resp_less_rht.
 assumption.
Qed.

Lemma inv_resp_less : forall x y : R, x [<] y -> [--]y [<] [--]x.
Proof.
 intros x y H.
 rstepl (x[+]([--]x[+][--]y)).
 rstepr (y[+]([--]x[+][--]y)).
 apply plus_resp_less_rht.
 assumption.
Qed.

Lemma minus_resp_less : forall x y z : R, x [<] y -> x[-]z [<] y[-]z.
Proof.
 Transparent cg_minus.
 unfold cg_minus in |- *.
 intros x y z H.
 apply plus_resp_less_rht.
 assumption.
Qed.

Lemma minus_resp_less_rht : forall x y z : R, y [<] x -> z[-]x [<] z[-]y.
Proof.
 intros.
 Transparent cg_minus.
 unfold cg_minus in |- *.
 apply plus_resp_less_lft.
 apply inv_resp_less.
 assumption.
Qed.

Lemma plus_resp_less_both : forall a b c d : R, a [<] b -> c [<] d -> a[+]c [<] b[+]d.
Proof.
 intros.
 apply less_leEq_trans with (a[+]d).
  apply plus_resp_less_lft.
  assumption.
 apply less_leEq.
 apply plus_resp_less_rht.
 assumption.
Qed.

Lemma plus_cancel_less : forall x y z : R, x[+]z [<] y[+]z -> x [<] y.
Proof.
 intros.

 rstepl (x[+]z[+][--]z).

 rstepr (y[+]z[+][--]z).
 apply plus_resp_less_rht.
 assumption.
Qed.

Lemma inv_cancel_less : forall x y : R, [--]x [<] [--]y -> y [<] x.
Proof.
 intros.
 apply plus_cancel_less with ([--]x[-]y).
 rstepl ([--]x).
 rstepr ([--]y).
 assumption.
Qed.

Lemma shift_less_plus : forall x y z : R, x[-]z [<] y -> x [<] y[+]z.
Proof.
 intros.
 rstepl (x[-]z[+]z).
 apply plus_resp_less_rht.
 assumption.
Qed.

Lemma shift_less_plus' : forall x y z : R, x[-]y [<] z -> x [<] y[+]z.
Proof.
 intros.
 astepr (z[+]y).
 apply shift_less_plus.
 assumption.
Qed.

Lemma shift_less_minus : forall x y z : R, x[+]z [<] y -> x [<] y[-]z.
Proof.
 intros.
 rstepl (x[+]z[-]z).
 apply minus_resp_less.
 assumption.
Qed.

Lemma shift_less_minus' : forall x y z : R, z[+]x [<] y -> x [<] y[-]z.
Proof.
 intros.
 apply shift_less_minus.
 astepl (z[+]x).
 assumption.
Qed.

Lemma shift_plus_less : forall x y z : R, x [<] z[-]y -> x[+]y [<] z.
Proof.
 intros.
 rstepr (z[-]y[+]y).
 apply plus_resp_less_rht.
 assumption.
Qed.

Lemma shift_plus_less' : forall x y z : R, y [<] z[-]x -> x[+]y [<] z.
Proof.
 intros.
 astepl (y[+]x).
 apply shift_plus_less.
 assumption.
Qed.

Lemma shift_minus_less : forall x y z : R, x [<] z[+]y -> x[-]y [<] z.
Proof.
 intros.
 astepr (z[+]y[-]y).
 apply minus_resp_less.
 assumption.
Qed.

Lemma shift_minus_less' : forall x y z : R, x [<] y[+]z -> x[-]y [<] z.
Proof.
 intros.
 apply shift_minus_less.
 astepr (y[+]z).
 assumption.
Qed.

Lemma shift_zero_less_minus : forall x y : R, x [<] y -> [0] [<] y[-]x.
Proof.
 intros.
 rstepl (x[-]x).
 apply minus_resp_less.
 assumption.
Qed.

Lemma shift_zero_less_minus' : forall x y : R, [0] [<] y[-]x -> x [<] y.
Proof.
 intros.
 apply plus_cancel_less with ([--]x).
 rstepl ([0]:R).
 assumption.
Qed.

Lemma qltone : forall q : R, q [<] [1] -> q[-][1] [#] [0].
Proof.
 intros.
 apply less_imp_ap.
 apply shift_minus_less.
 astepr ([1]:R).
 auto.
Qed.

End addition.

Section multiplication.

Lemma mult_resp_less : forall x y z : R, x [<] y -> [0] [<] z -> x[*]z [<] y[*]z.
Proof.
 intros.
 apply plus_cancel_less with ([--](x[*]z)).
 astepl ([0]:R).

 rstepr ((y[-]x)[*]z).
 apply mult_resp_pos.
  astepl (x[-]x).
  apply minus_resp_less.
  assumption.
 assumption.
Qed.

Lemma recip_resp_pos : forall (y : R) y_, [0] [<] y -> [0] [<] ([1][/] y[//]y_).
Proof.
 intros.
 cut ([0] [<] ([1][/] y[//]y_) or ([1][/] y[//]y_) [<] [0]).
  intros H0.
elim H0; clear H0; intros H0.
  auto.
  exfalso.
  apply (less_irreflexive_unfolded R [0]).
  eapply less_transitive_unfolded.
   2: apply H0.
  cut ([1] [<] ([0]:R)).
intro H1.
   elim (less_antisymmetric_unfolded _ _ _ (pos_one _) H1).
  astepl ([--]([--][1]:R)).
astepr ([--]([0]:R)).
  apply inv_resp_less.
  rstepr (y[*][--]([1][/] y[//]y_)).
  apply mult_resp_pos.
auto.
   astepl ([--]([0]:R)).
  apply inv_resp_less.
auto.
  apply ap_imp_less.
 apply ap_symmetric_unfolded.
apply div_resp_ap_zero_rev.
 apply ring_non_triv.
Qed.

Lemma div_resp_less_rht : forall (x y z : R) z_, x [<] y -> [0] [<] z -> (x[/] z[//]z_) [<] (y[/] z[//]z_).
Proof.
 intros.
 rstepl (x[*]([1][/] z[//]z_)).
 rstepr (y[*]([1][/] z[//]z_)).
 apply mult_resp_less.
auto.
  apply recip_resp_pos.
 auto.
Qed.

Lemma div_resp_pos : forall (x y : R) x_, [0] [<] x -> [0] [<] y -> [0] [<] (y[/] x[//]x_).
Proof.
 intros.
 astepl ([0][/] x[//]x_).
 apply div_resp_less_rht; auto.
Qed.

Lemma mult_resp_less_lft : forall x y z : R, x [<] y -> [0] [<] z -> z[*]x [<] z[*]y.
Proof.
 intros.
 astepl (x[*]z).
 astepr (y[*]z).
 apply mult_resp_less.
  assumption.
 assumption.
Qed.

Lemma mult_resp_less_both : forall x y u v : R,
 [0] [<=] x -> x [<] y -> [0] [<=] u -> u [<] v -> x[*]u [<] y[*]v.
Proof.
 cut (forall x y z : R, x [<=] y -> [0] [<=] z -> x[*]z [<=] y[*]z).
  intro resp_leEq.
  intros.
  apply leEq_less_trans with (y[*]u).
   apply resp_leEq; auto.
   apply less_leEq; auto.
  apply mult_resp_less_lft; auto.
  apply leEq_less_trans with x; auto.

 intros x y z.
 repeat rewrite -> leEq_def in |- *.
 intros H H0 H1.
 generalize (shift_zero_less_minus _ _ H1); intro H2.
 cut ([0] [<] (x[-]y)[*]z).
  intro H3.
  2: rstepr (x[*]z[-]y[*]z); auto.
 cut (forall a b : R, [0] [<] a[*]b -> [0] [<] a and [0] [<] b or a [<] [0] and b [<] [0]).
  intro H4.
  generalize (H4 _ _ H3); intro H5.
  elim H5; intro H6; elim H6; intros H7 H8.
   apply H.
   astepl ([0][+]y).
   apply shift_plus_less.
   assumption.
  apply H0.
  assumption.
 intros a b H4.
 generalize (Greater_imp_ap _ _ _ H4); intro H5.
 generalize (mult_cancel_ap_zero_lft _ _ _ H5); intro H6.
 generalize (mult_cancel_ap_zero_rht _ _ _ H5); intro H7.
 elim (ap_imp_less _ _ _ H6); intro H8.
  right.
  split; auto.
  elim (ap_imp_less _ _ _ H7); auto.
  intro H9.
  exfalso.
  apply (less_irreflexive_unfolded R [0]).
  apply less_leEq_trans with (a[*]b); auto.
  apply less_leEq.
  apply inv_cancel_less.
  astepl ([0]:R).
  astepr ([--]a[*]b).
  apply mult_resp_pos; auto.
  astepl ([--]([0]:R)).
  apply inv_resp_less; auto.
 left.
 split; auto.
 elim (ap_imp_less _ _ _ H7); auto.
 intro H9.
 exfalso.
 apply (less_irreflexive_unfolded R [0]).
 apply less_leEq_trans with (a[*]b); auto.
 apply less_leEq.
 apply inv_cancel_less.
 astepl ([0]:R).
 astepr (a[*][--]b).
 apply mult_resp_pos; auto.
 astepl ([--]([0]:R)).
 apply inv_resp_less; auto.
Qed.

Lemma recip_resp_less : forall (x y : R) x_ y_, [0] [<] x -> x [<] y -> ([1][/] y[//]y_) [<] ([1][/] x[//]x_).
Proof.
 intros.
 cut ([0] [<] x[*]y).
intro.
  cut (x[*]y [#] [0]).
intro H2.
   rstepl (x[*]([1][/] x[*]y[//]H2)).
   rstepr (y[*]([1][/] x[*]y[//]H2)).
   apply mult_resp_less.
auto.
    apply recip_resp_pos.
auto.
   apply Greater_imp_ap.
auto.
  apply mult_resp_pos.
auto.
  apply less_leEq_trans with x; try apply less_leEq; auto.
Qed.

Lemma div_resp_less : forall (x y z : R) z_, [0] [<] z -> x [<] y -> (x[/] z[//]z_) [<] (y[/] z[//]z_).
Proof.
 intros.
 rstepl (x[*]([1][/] z[//]z_)).
 rstepr (y[*]([1][/] z[//]z_)).
 apply mult_resp_less.
  assumption.
 apply recip_resp_pos.
 auto.
Qed.

Lemma mult_cancel_less : forall x y z : R, [0] [<] z -> x[*]z [<] y[*]z -> x [<] y.
Proof.
 intros x y z H H0.
 generalize (Greater_imp_ap _ _ _ H); intro H1.
 rstepl (x[*]z[*]([1][/] z[//]H1)).
 rstepr (y[*]z[*]([1][/] z[//]H1)).
 apply mult_resp_less.
  assumption.
 rstepl ([0][/] z[//]H1).
 apply div_resp_less_rht.
  apply pos_one.
 assumption.
Qed.

Lemma shift_div_less : forall (x y z : R) y_, [0] [<] y -> x [<] z[*]y -> (x[/] y[//]y_) [<] z.
Proof.
 intros.
 apply mult_cancel_less with y.
auto.
  astepl x.
auto.
Qed.

Lemma shift_div_less' : forall (x y z : R) y_, [0] [<] y -> x [<] y[*]z -> (x[/] y[//]y_) [<] z.
Proof.
 intros.
 apply shift_div_less; auto.
 astepr (y[*]z).
auto.
Qed.

Lemma shift_less_div : forall (x y z : R) y_, [0] [<] y -> x[*]y [<] z -> x [<] (z[/] y[//]y_).
Proof.
 intros.
 apply mult_cancel_less with y.
auto.
  astepr z.
auto.
Qed.

Lemma shift_less_mult : forall (x y z : R) z_, [0] [<] z -> (x[/] z[//]z_) [<] y -> x [<] y[*]z.
Proof.
 intros.
 astepl ((x[/] z[//]z_)[*]z).
 apply mult_resp_less; auto.
Qed.

Lemma shift_less_mult' : forall (x y z : R) y_, [0] [<] y -> (x[/] y[//]y_) [<] z -> x [<] y[*]z.
Proof.
 intros.
 astepl (y[*](x[/] y[//]y_)).
 apply mult_resp_less_lft; auto.
Qed.

Lemma shift_mult_less : forall (x y z : R) y_, [0] [<] y -> x [<] (z[/] y[//]y_) -> x[*]y [<] z.
Proof.
 intros.
 astepr ((z[/] y[//]y_)[*]y).
 apply mult_resp_less; auto.
Qed.

Lemma minusOne_less : forall x : R, x[-][1] [<] x.
Proof.
 intros; apply shift_minus_less; apply less_plusOne.
Qed.

Lemma swap_div : forall (x y z : R) y_ z_, [0] [<] y -> [0] [<] z -> (x[/] z[//]z_) [<] y -> (x[/] y[//]y_) [<] z.
Proof.
 intros.
 rstepl ((x[/] z[//]z_)[*](z[/] y[//]y_)).
 astepr (y[*](z[/] y[//]y_)).
 apply mult_resp_less.
auto.
  apply div_resp_pos; auto.
Qed.

Lemma eps_div_less_eps : forall (eps d : R) d_, [0] [<] eps -> [1] [<] d -> (eps[/] d[//]d_) [<] eps.
Proof.
 intros.
 apply shift_div_less'.
  apply leEq_less_trans with ([1]:R).
   apply less_leEq; apply pos_one.
  assumption.
 astepl ([1][*]eps).
 apply mult_resp_less.
  assumption.
 assumption.
Qed.

Lemma pos_div_two : forall eps : R, [0] [<] eps -> [0] [<] eps [/]TwoNZ.
Print Options.
Proof.
 intros.
 apply shift_less_div.
  apply pos_two.
 astepl ([0]:R).
 assumption.
Qed.

Lemma pos_div_two' : forall eps : R, [0] [<] eps -> eps [/]TwoNZ [<] eps.
Print Options.
Proof.
 intros.
 apply plus_cancel_less with ([--](eps [/]TwoNZ)).
Print Options.
 astepl ([0]:R).
 rstepr (eps [/]TwoNZ).
Print Options.
 apply pos_div_two; assumption.
Qed.

Lemma pos_div_three : forall eps : R, [0] [<] eps -> [0] [<] eps [/]ThreeNZ.
Print Options.
Proof.
 intros.
 apply mult_cancel_less with (Three:R).
  apply pos_three.
 astepl ([0]:R); rstepr eps.
 assumption.
Qed.

Lemma pos_div_three' : forall eps : R, [0] [<] eps -> eps [/]ThreeNZ [<] eps.
Print Options.
Proof.
 intros.
 apply mult_cancel_less with (Three:R).
  apply pos_three.
 rstepl (eps[+][0]); rstepr (eps[+]Two[*]eps).
 apply plus_resp_less_lft.
 apply mult_resp_pos; auto.
 apply pos_two.
Qed.

Lemma pos_div_four : forall eps : R, [0] [<] eps -> [0] [<] eps [/]FourNZ.
Print Options.
Proof.
 intros.
 rstepr ((eps [/]TwoNZ) [/]TwoNZ).
Print Options.
 apply pos_div_two; apply pos_div_two; assumption.
Qed.

Lemma pos_div_four' : forall eps : R, [0] [<] eps -> eps [/]FourNZ [<] eps.
Print Options.
Proof.
 intros.
 rstepl ((eps [/]TwoNZ) [/]TwoNZ).
Print Options.
 apply leEq_less_trans with (eps [/]TwoNZ).
Print Options.
  2: apply pos_div_two'; assumption.
 apply less_leEq.
 apply pos_div_two'.
 apply pos_div_two.
 assumption.
Qed.

Lemma pos_div_six : forall eps : R, [0] [<] eps -> [0] [<] eps [/]SixNZ.
Print Options.
Proof.
 intros.
 apply shift_less_div.
  apply pos_six.
 astepl ([0]:R).
 assumption.
Qed.

Lemma pos_div_eight : forall eps : R, [0] [<] eps -> [0] [<] eps [/]EightNZ.
Print Options.
Proof.
 intros.
 apply shift_less_div.
  apply pos_eight.
 astepl ([0]:R).
 assumption.
Qed.

Lemma pos_div_nine : forall eps : R, [0] [<] eps -> [0] [<] eps [/]NineNZ.
Print Options.
Proof.
 intros.
 apply shift_less_div.
  apply pos_nine.
 astepl ([0]:R).
 assumption.
Qed.

Lemma pos_div_twelve : forall eps : R, [0] [<] eps -> [0] [<] eps [/]TwelveNZ.
Print Options.
Proof.
 intros.
 apply shift_less_div.
  apply pos_twelve.
 astepl ([0]:R).
 assumption.
Qed.

Lemma pos_div_sixteen : forall eps : R, [0] [<] eps -> [0] [<] eps [/]SixteenNZ.
Print Options.
Proof.
 intros.
 apply shift_less_div.
  apply pos_sixteen.
 astepl ([0]:R).
 assumption.
Qed.

Lemma pos_div_eighteen : forall eps : R, [0] [<] eps -> [0] [<] eps [/]EighteenNZ.
Print Options.
Proof.
 intros.
 apply shift_less_div.
  apply pos_eighteen.
 astepl ([0]:R).
 assumption.
Qed.

Lemma pos_div_twentyfour : forall eps : R, [0] [<] eps -> [0] [<] eps [/]TwentyFourNZ.
Print Options.
Proof.
 intros.
 apply shift_less_div.
  apply pos_twentyfour.
 astepl ([0]:R).
 assumption.
Qed.

Lemma pos_div_fortyeight : forall eps : R, [0] [<] eps -> [0] [<] eps [/]FortyEightNZ.
Print Options.
Proof.
 intros.
 apply shift_less_div.
  apply pos_fortyeight.
 astepl ([0]:R).
 assumption.
Qed.

End multiplication.

Section misc.

Lemma nring_pos : forall m : nat, 0 < m -> [0] [<] nring (R:=R) m.
Proof.
 intro m.
elim m.
 intro; elim (Nat.lt_irrefl 0 H).
 clear m; intros.
 apply leEq_less_trans with (nring (R:=R) n).
  astepl (nring (R:=R) 0).
  apply nring_leEq; auto with arith.
 simpl in |- *; apply less_plusOne.
Qed.

Lemma less_nring : forall n m : nat, nring (R:=R) n [<] nring m -> n < m.
Proof.
 intro n; induction  n as [| n Hrecn].
  intros m H.
  induction  m as [| m Hrecm].
   exfalso; generalize H; apply less_irreflexive_unfolded.
  auto with arith.
 intros m H.
 induction  m as [| m Hrecm].
  exfalso.
  cut (nring (R:=R) 0 [<] nring (S n)).
   apply less_antisymmetric_unfolded; assumption.
  apply nring_less; auto with arith.
 cut (n < m).
  auto with arith.
 apply Hrecn.
 rstepr (nring (R:=R) m[+][1][-][1]).
 apply shift_less_minus.
 apply H.
Qed.

Lemma pos_nring_fac : forall n : nat, [0] [<] nring (R:=R) (fact n).
Proof.
 intro.
 astepl (nring (R:=R) 0).
 apply nring_less.
 apply lt_O_fact.
Qed.

Lemma Smallest_less_Average : forall a b : R, a [<] b -> a [<] (a[+]b) [/]TwoNZ.
Print Options.
Proof.
 intros.
 apply shift_less_div.
  apply pos_two.
 rstepl (a[+]a).
 apply plus_resp_less_lft.
 assumption.
Qed.

Lemma Average_less_Greatest : forall a b : R, a [<] b -> (a[+]b) [/]TwoNZ [<] b.
Print Options.
Proof.
 intros.
 apply shift_div_less'.
  apply pos_two.
 rstepr (b[+]b).
 apply plus_resp_less_rht.
 assumption.
Qed.

Lemma Sum_resp_less : forall (f g : nat -> R) a b, a <= b ->
 (forall i, a <= i -> i <= b -> f i [<] g i) -> Sum a b f [<] Sum a b g.
Proof.
 intros.
 induction  b as [| b Hrecb]; intros.
  replace a with 0.
   astepl (f 0).
astepr (g 0).
   auto.
  inversion H.
auto.
  elim (le_lt_eq_dec _ _ H); intro H1.
  apply less_wdl with (Sum a b f[+]f (S b)).
   apply less_wdr with (Sum a b g[+]g (S b)).
    apply plus_resp_less_both.
     apply Hrecb.
auto with arith.
auto.
      apply X; auto.
   apply eq_symmetric_unfolded.
apply Sum_last.
   apply eq_symmetric_unfolded.
apply Sum_last.
  rewrite H1.
 astepl (f (S b)).
 astepr (g (S b)).
 apply X; auto.
Qed.

Lemma Sumx_resp_less : forall n, 0 < n -> forall f g : forall i, i < n -> R,
 (forall i H, f i H [<] g i H) -> Sumx f [<] Sumx g.
Proof.
 simple induction n.
  intros; simpl in |- *; exfalso; inversion H.
 simple induction n0.
  intros.
  clear H.
  simpl in |- *; apply plus_resp_less_lft.
  apply X0.
 intros.
 simpl in |- *.
 apply plus_resp_less_both.
  astepl (Sumx (fun (i : nat) (l : i < S n1) => f i (Nat.lt_lt_succ_r _ _ l))).
  astepr (Sumx (fun (i : nat) (l : i < S n1) => g i (Nat.lt_lt_succ_r _ _ l))).
  apply X0.
   auto with arith.
  intros.
apply X1.
  apply X1.
Qed.

Lemma positive_Sum_two : forall x y : R, [0] [<] x[+]y -> [0] [<] x or [0] [<] y.
Proof.
 intros.
 cut ([--]x [<] [0] or [0] [<] y).
  intro; inversion_clear X0.
   left; astepl ([--]([0]:R)); astepr ([--][--]x); apply inv_resp_less; assumption.
  right; assumption.
 apply less_cotransitive_unfolded.
 astepl ([0][-]x); apply shift_minus_less'; assumption.
Qed.

Lemma positive_Sumx : forall n (f : forall i, i < n -> R),
 nat_less_n_fun f -> [0] [<] Sumx f -> {i : nat | {H : i < n | [0] [<] f i H}}.
Proof.
 simple induction n.
  simpl in |- *.
  intros; exfalso; generalize X; apply less_irreflexive_unfolded.
 simple induction n0.
  simpl in |- *.
  intros.
  exists 0.
  exists (Nat.lt_succ_diag_r 0).
  eapply less_wdr.
   apply X0.
  astepl (f _ (Nat.lt_succ_diag_r 0)).
  apply H; auto.
 simpl in |- *; intros.
 clear X.
 cut ([0] [<] f _ (Nat.lt_succ_diag_r (S n1)) or [0] [<]
   Sumx (fun (i : nat) (l : i < n1) => f i (Nat.lt_lt_succ_r i (S n1) (Nat.lt_lt_succ_r i n1 l)))[+]
     f n1 (Nat.lt_lt_succ_r n1 (S n1) (Nat.lt_succ_diag_r n1))).
  intro X.
 inversion_clear X.
  exists (S n1).
   exists (Nat.lt_succ_diag_r (S n1)).
   eapply less_wdr.
    apply X2.
   apply H; auto.
  set (f' := fun (i : nat) (H : i < S n1) => f i (Nat.lt_lt_succ_r _ _ H)) in *.
  cut {i : nat | {H : i < S n1 | [0] [<] f' i H}}; intros.
   elim X; intros i Hi; elim Hi; clear X2 Hi; intros Hi Hi'.
   exists i.
   exists (Nat.lt_lt_succ_r _ _ Hi).
   eapply less_wdr.
    apply Hi'.
   unfold f' in |- *; simpl in |- *.
   apply H; auto.
  apply X0.
   red in |- *.
intros i j Hij.
rewrite Hij.
unfold f' in |- *.
   intros H0 H'.
   apply H; auto.
  apply X2; assumption.
 apply positive_Sum_two.
 eapply less_wdr.
  2: apply cag_commutes_unfolded.
 assumption.
Qed.

Lemma negative_Sumx : forall n (f : forall i, i < n -> R),
 nat_less_n_fun f -> Sumx f [<] [0] -> {i : nat | {H : i < n | f i H [<] [0]}}.
Proof.
 intros.
 cut {i : nat | {H : i < n | [0] [<] [--](f i H)}}.
  intro H1.
  elim H1; intros i Hi; elim Hi; clear X Hi; intros Hi Hi'.
  exists i; exists Hi.
  astepl ([--][--](f i Hi)); astepr ([--]([0]:R)); apply inv_resp_less; assumption.
 apply positive_Sumx with (f := fun (i : nat) (H : i < n) => [--](f i H)).
  red in |- *; intros.
  apply un_op_wd_unfolded; apply H; assumption.
 astepl ([--]([0]:R)); apply less_wdr with ([--](Sumx f)).
  apply inv_resp_less; assumption.
 generalize f H; clear X H f.
 induction  n as [| n Hrecn].
  simpl in |- *.
  intros; algebra.
 intros.
 simpl in |- *.
 rstepl ([--](Sumx (fun (i : nat) (l : i < n) => f i (Nat.lt_lt_succ_r i n l)))[+] [--](f n (Nat.lt_succ_diag_r n))).
 apply bin_op_wd_unfolded.
  2: algebra.
 apply Hrecn with (f := fun (i : nat) (l : i < n) => f i (Nat.lt_lt_succ_r i n l)).
 red in |- *; intros; apply H; auto.
Qed.

End misc.

End Properties_of_Ordering.

Add Parametric Morphism c : (@cof_leEq c) with signature (@cs_eq (cof_crr c)) ==> (@cs_eq c) ==> iff as cof_leEq_wd.
Proof with try assumption.
 intros x1 x2 Hx y1 y2 Hy.
 split; intros.
  stepl x1...
  stepr y1...
 symmetry in Hx, Hy.
 stepl x2...
 stepr y2...
Qed.

End COrdFields.

End CoRN_DOT_algebra_DOT_COrdFields_WRAPPED.
Module Export CoRN_DOT_algebra_DOT_COrdFields.
Module Export CoRN.
Module Export algebra.
Module COrdFields.
Include CoRN_DOT_algebra_DOT_COrdFields_WRAPPED.COrdFields.
End COrdFields.

End algebra.

End CoRN.

End CoRN_DOT_algebra_DOT_COrdFields.
Export CoRN.algebra.COrdFields.

Section Properties_of_leEq.

Variable R : COrdField.

Lemma plus_resp_leEq_lft : forall x y z : R, x [<=] y -> z[+]x [<=] z[+]y.
Admitted.

Lemma inv_resp_leEq : forall x y : R, x [<=] y -> [--]y [<=] [--]x.
Admitted.

Lemma minus_resp_leEq_rht : forall x y z : R, y [<=] x -> z[-]x [<=] z[-]y.
Admitted.

Lemma plus_resp_leEq_both : forall x y a b : R, x [<=] y -> a [<=] b -> x[+]a [<=] y[+]b.
Admitted.

Lemma minus_resp_leEq_both : forall x y x' y' : R, x [<=] y -> y' [<=] x' -> x[-]x' [<=] y[-]y'.
Admitted.

Lemma plus_cancel_leEq_rht : forall x y z : R, x[+]z [<=] y[+]z -> x [<=] y.
Admitted.

Lemma inv_cancel_leEq : forall x y : R, [--]y [<=] [--]x -> x [<=] y.
Admitted.

Lemma shift_plus_leEq : forall a b c : R, a [<=] c[-]b -> a[+]b [<=] c.
Admitted.

Lemma shift_leEq_plus : forall a b c : R, a[-]b [<=] c -> a [<=] c[+]b.
Admitted.

Lemma shift_leEq_minus : forall a b c : R, a[+]c [<=] b -> a [<=] b[-]c.
Admitted.

Lemma mult_resp_leEq_rht : forall x y z : R, x [<=] y -> [0] [<=] z -> x[*]z [<=] y[*]z.
Admitted.

Lemma mult_resp_leEq_lft : forall x y z : R, x [<=] y -> [0] [<=] z -> z[*]x [<=] z[*]y.
Admitted.

Lemma mult_resp_leEq_both : forall x x' y y' : R,
 [0] [<=] x -> [0] [<=] y -> x [<=] x' -> y [<=] y' -> x[*]y [<=] x'[*]y'.
Admitted.

Lemma div_resp_leEq : forall (x y z : R) z_, [0] [<] z -> x [<=] y -> (x[/] z[//]z_) [<=] (y[/] z[//]z_).
Admitted.

Lemma mult_cancel_leEq : forall x y z : R, [0] [<] z -> x[*]z [<=] y[*]z -> x [<=] y.
Admitted.

Lemma shift_leEq_div : forall (x y z : R) y_, [0] [<] y -> x[*]y [<=] z -> x [<=] (z[/] y[//]y_).
Admitted.

Lemma eps_div_leEq_eps : forall (eps d : R) d_, [0] [<=] eps -> [1] [<=] d -> (eps[/] d[//]d_) [<=] eps.
Admitted.

Lemma nonneg_div_two : forall eps : R, [0] [<=] eps -> [0] [<=] eps [/]TwoNZ.
Print Options.
Admitted.

Lemma nonneg_div_two' : forall eps : R, [0] [<=] eps -> eps [/]TwoNZ [<=] eps.
Print Options.
Admitted.

Lemma mult_resp_nonneg : forall x y : R, [0] [<=] x -> [0] [<=] y -> [0] [<=] x[*]y.
Admitted.

Lemma Sum_resp_leEq : forall (f g : nat -> R) a b, a <= S b ->
 (forall i, a <= i -> i <= b -> f i [<=] g i) -> Sum a b f [<=] Sum a b g.
Admitted.

Lemma approach_zero_weak : forall x : R, (forall e, [0] [<] e -> x [<=] e) -> x [<=] [0].
Admitted.

End Properties_of_leEq.

Section PosP_properties.

Variable R : COrdField.

Lemma mult_cancel_pos_rht : forall x y : R, [0] [<] x[*]y -> [0] [<=] x -> [0] [<] y.
Admitted.

End PosP_properties.

#[global]
Hint Resolve mult_resp_nonneg.
Definition AbsSmall (R : COrdField) (e x : R) : Prop.
exact ([--]e [<=] x /\ x [<=] e).
Print Options.
Defined.

Arguments AbsSmall [R].

Section AbsSmall_properties.

Variable R : COrdField.

Lemma AbsSmall_wdr : rel_wdr R (AbsSmall (R:=R)).
Admitted.

Lemma AbsSmall_wdr_unfolded : forall x y z : R,
 AbsSmall x y -> y [=] z -> AbsSmall x z.
Proof AbsSmall_wdr.

Lemma AbsSmall_wdl : rel_wdl R (AbsSmall (R:=R)).
 unfold rel_wdl in |- *.
Print Options.
 intros.
Print Options.
 elim H; intros.
Print Options.
 split.
Print Options.
  astepl ([--]x).
Print Options.
  assumption.
Print Options.
 astepr x.
Print Options.
 assumption.
Print Options.
Qed.

Lemma AbsSmall_wdl_unfolded : forall x y z : R,
 AbsSmall x y -> x [=] z -> AbsSmall z y.
Proof AbsSmall_wdl.

Declare Left Step AbsSmall_wdl_unfolded.
Declare Right Step AbsSmall_wdr_unfolded.

Notation ZeroR := ([0]:R).

Lemma AbsSmall_leEq_trans : forall e1 e2 d : R,
 e1 [<=] e2 -> AbsSmall e1 d -> AbsSmall e2 d.
 intros.
Print Options.
 elim H0; intros.
Print Options.
 split.
Print Options.
  apply leEq_transitive with ([--]e1).
Print Options.
   apply inv_resp_leEq.
Print Options.
   assumption.
Print Options.
  assumption.
Print Options.
 apply leEq_transitive with e1.
Print Options.
  assumption.
Print Options.
 assumption.
Print Options.
Qed.

Lemma zero_AbsSmall : forall e : R, [0] [<=] e -> AbsSmall e [0].
 split.
Print Options.
  astepr ([--]ZeroR).
Print Options.
  apply inv_resp_leEq.
Print Options.
  assumption.
Print Options.
 assumption.
Print Options.
Qed.

Lemma AbsSmall_reflexive : forall (e : R), [0] [<=] e -> AbsSmall e e.
 split.
Print Options.
  apply leEq_transitive with ([0]:R); auto.
Print Options.
  astepr ([--][0]:R).
Print Options.
  apply inv_resp_leEq.
Print Options.
  auto.
Print Options.
 apply leEq_reflexive.
Print Options.
Qed.

Lemma AbsSmall_trans : forall e1 e2 d : R,
 e1 [<] e2 -> AbsSmall e1 d -> AbsSmall e2 d.
 intros.
Print Options.
 apply AbsSmall_leEq_trans with e1.
Print Options.
  apply less_leEq.
Print Options.
  assumption.
Print Options.
 assumption.
Print Options.
Qed.

Lemma leEq_imp_AbsSmall : forall e d : R, [0] [<=] e -> e [<=] d -> AbsSmall d e.
 split; try assumption.
Print Options.
 apply leEq_transitive with ZeroR; try assumption.
Print Options.
 astepr ([--]ZeroR).
Print Options.
 apply inv_resp_leEq.
Print Options.
 apply leEq_transitive with e; assumption.
Print Options.
Qed.

Lemma inv_resp_AbsSmall : forall x y : R, AbsSmall x y -> AbsSmall x [--]y.
 intros.
Print Options.
 elim H; intros.
Print Options.
 split.
Print Options.
  apply inv_resp_leEq.
Print Options.
  assumption.
Print Options.
 astepr ([--][--]x).
Print Options.
 apply inv_resp_leEq.
Print Options.
 assumption.
Print Options.
Qed.

Lemma mult_resp_AbsSmall: forall (R: COrdField) (x y e : R) (H: [0][<=]y),
AbsSmall e x -> AbsSmall (y[*]e) (y[*]x).
 intros.
Print Options.
 destruct H0.
Print Options.
 split.
Print Options.
  rstepl (y[*]([--]e)).
Print Options.
  apply mult_resp_leEq_lft; auto.
Print Options.
 apply mult_resp_leEq_lft; auto.
Print Options.
Qed.

Lemma div_resp_AbsSmall: forall (R: COrdField) (x y e : R) (H: [0][<]y),
AbsSmall e x -> AbsSmall (e[/]y[//]pos_ap_zero _ _ H) (x[/]y[//]pos_ap_zero _ _ H).
 intros.
Print Options.
 destruct H0.
Print Options.
 split.
Print Options.
  rstepl (([--]e)[/]y[//]pos_ap_zero _ _ H).
Print Options.
  apply div_resp_leEq; auto.
Print Options.
 apply div_resp_leEq; auto.
Print Options.
Qed.

Lemma sum_resp_AbsSmall : forall
(x y : nat -> R) (n m: nat)
(H1 : m <= n) (H2 : forall i : nat, m <= i -> i <= n ->  AbsSmall (y i) (x i)),
AbsSmall (Sum m n y) (Sum m n x).
 intros.
Print Options.
 assert (H3 : forall i : nat, m <= i -> i <= n ->  [--](y i)[<=]x i).
Print Options.
  intros.
Print Options.
  elim (H2 i H H0).
Print Options.
auto.
Print Options.
  assert (H4 : forall i : nat, m <= i -> i <= n ->  x i[<=]y i).
Print Options.
  intros.
Print Options.
  elim (H2 i H H0).
Print Options.
auto.
Print Options.
  split.
Print Options.
  astepl (Sum m n (fun k: nat => [--](y k))).
Print Options.
  apply Sum_resp_leEq .
Print Options.
   auto with arith.
Print Options.
auto.
Print Options.
  apply Sum_resp_leEq .
Print Options.
  auto with arith.
Print Options.
auto.
Print Options.
Qed.

Lemma AbsSmall_minus : forall e x1 x2 : R, AbsSmall e (x1[-]x2) -> AbsSmall e (x2[-]x1).
 intros.
Print Options.
 rstepr ([--](x1[-]x2)).
Print Options.
 apply inv_resp_AbsSmall.
Print Options.
 assumption.
Print Options.
Qed.

Lemma AbsSmall_plus : forall e1 e2 x1 x2 : R,
 AbsSmall e1 x1 -> AbsSmall e2 x2 -> AbsSmall (e1[+]e2) (x1[+]x2).
 intros.
Print Options.
 elim H; intros.
Print Options.
 elim H0; intros.
Print Options.
 split.
Print Options.
  rstepl ([--]e1[+][--]e2).
Print Options.
  apply plus_resp_leEq_both; assumption.
Print Options.
 apply plus_resp_leEq_both; assumption.
Print Options.
Qed.

Lemma AbsSmall_eps_div_two : forall e x1 x2 : R,
 AbsSmall (e [/]TwoNZ) x1 -> AbsSmall (e [/]TwoNZ) x2 -> AbsSmall e (x1[+]x2).
Print Options.
 intros.
Print Options.
 rstepl (e [/]TwoNZ[+]e [/]TwoNZ).
Print Options.
 apply AbsSmall_plus.
Print Options.
  assumption.
Print Options.
 assumption.
Print Options.
Qed.

Lemma AbsSmall_x_plus_delta : forall x eps delta : R,
 [0] [<=] eps -> [0] [<=] delta -> delta [<=] eps -> AbsSmall eps (x[-] (x[+]delta)).
 intros.
Print Options.

 rstepr ([--]delta).
Print Options.
 apply inv_resp_AbsSmall.
Print Options.
 apply leEq_imp_AbsSmall.
Print Options.
  assumption.
Print Options.
 assumption.
Print Options.
Qed.

Lemma AbsSmall_x_minus_delta : forall x eps delta : R,
 [0] [<=] eps -> [0] [<=] delta -> delta [<=] eps -> AbsSmall eps (x[-] (x[-]delta)).
 intros.
Print Options.

 rstepr delta.
Print Options.
 apply leEq_imp_AbsSmall.
Print Options.
  assumption.
Print Options.
 assumption.
Print Options.
Qed.

Lemma AbsSmall_x_plus_eps_div2 : forall x eps : R, [0] [<=] eps -> AbsSmall eps (x[-] (x[+]eps [/]TwoNZ)).
Print Options.
 intros.
Print Options.
 apply AbsSmall_x_plus_delta.
Print Options.
   assumption.
Print Options.
  apply nonneg_div_two.
Print Options.
  assumption.
Print Options.
 apply nonneg_div_two'.
Print Options.
 assumption.
Print Options.
Qed.

Lemma AbsSmall_x_minus_eps_div2 : forall x eps : R, [0] [<=] eps -> AbsSmall eps (x[-] (x[-]eps [/]TwoNZ)).
Print Options.
 intros.
Print Options.
 apply AbsSmall_x_minus_delta.
Print Options.
   assumption.
Print Options.
  apply nonneg_div_two.
Print Options.
  assumption.
Print Options.
 apply eps_div_leEq_eps.
Print Options.
  assumption.
Print Options.
 apply less_leEq.
Print Options.
 apply one_less_two.
Print Options.
Qed.

Lemma AbsSmall_intermediate : forall x y z eps : R,
 x [<=] y -> y [<=] z -> AbsSmall eps (z[-]x) -> AbsSmall eps (z[-]y).
 intros.
Print Options.
 apply leEq_imp_AbsSmall.
Print Options.
  apply shift_leEq_minus; astepl y.
Print Options.
  assumption.
Print Options.
 elim H1; intros.
Print Options.
 apply leEq_transitive with (z[-]x); try assumption.
Print Options.
 apply minus_resp_leEq_rht.
Print Options.
 assumption.
Print Options.
Qed.

Lemma AbsSmall_eps_div2 : forall eps : R, [0] [<=] eps -> AbsSmall eps (eps [/]TwoNZ).
Print Options.
 intros.
Print Options.
 apply leEq_imp_AbsSmall.
Print Options.
  apply nonneg_div_two.
Print Options.
  assumption.
Print Options.
 apply eps_div_leEq_eps.
Print Options.
  assumption.
Print Options.
 apply less_leEq.
Print Options.
 apply one_less_two.
Print Options.
Qed.

Lemma AbsSmall_nonneg : forall e x : R, AbsSmall e x -> [0] [<=] e.
 intros.
Print Options.
 elim H.
Print Options.
 intros.
Print Options.
 cut ([--]e [<=] e).
Print Options.
  intros.
Print Options.
  apply mult_cancel_leEq with (z := Two:R).
Print Options.
   apply pos_two.
Print Options.
  apply plus_cancel_leEq_rht with (z := [--]e).
Print Options.
  rstepl ([--]e).
Print Options.
  rstepr e.
Print Options.
  assumption.
Print Options.
 apply leEq_transitive with (y := x).
Print Options.
  assumption.
Print Options.
 assumption.
Print Options.
Qed.

Lemma AbsSmall_mult : forall e1 e2 x1 x2 : R,
 AbsSmall e1 x1 -> AbsSmall e2 x2 -> AbsSmall (Three[*] (e1[*]e2)) (x1[*]x2).
 intros.
Print Options.
 elim H.
Print Options.
 elim H0.
Print Options.
 cut ([0] [<=] e1).
Print Options.
  cut ([0] [<=] e2).
Print Options.
   split.
Print Options.
    apply plus_cancel_leEq_rht with (z := Three[*] (e1[*]e2)).
Print Options.
    rstepl ZeroR.
Print Options.
    apply leEq_transitive with (y := x1[*]x2[+]e1[*]e2[+]x1[*]e2[+]e1[*]x2).
Print Options.
     rstepr ((e1[+]x1)[*](e2[+]x2)).
Print Options.
     apply mult_resp_nonneg.
Print Options.
      apply plus_cancel_leEq_rht with (z := [--]x1).
Print Options.
      rstepl ([--]x1).
Print Options.
      rstepr ([--][--]e1).
Print Options.
      apply inv_resp_leEq.
Print Options.
      assumption.
Print Options.
     apply plus_cancel_leEq_rht with (z := [--]x2).
Print Options.
     rstepl ([--]x2).
Print Options.
     rstepr ([--][--]e2).
Print Options.
     apply inv_resp_leEq.
Print Options.
     assumption.
Print Options.
    rstepl (x1[*]x2[+]e1[*]e2[+](x1[*]e2[+]e1[*]x2)).
Print Options.
    rstepr (x1[*]x2[+]e1[*]e2[+](e1[*]e2[+]e1[*]e2)).
Print Options.
    apply plus_resp_leEq_lft.
Print Options.
    apply plus_resp_leEq_both.
Print Options.
     apply mult_resp_leEq_rht.
Print Options.
      assumption.
Print Options.
     assumption.
Print Options.
    apply mult_resp_leEq_lft.
Print Options.
     assumption.
Print Options.
    assumption.
Print Options.
   apply plus_cancel_leEq_rht with (z := [--](x1[*]x2)).
Print Options.
   rstepl ZeroR.
Print Options.
   rstepr ([--](x1[*]x2)[+]e1[*]e2[+](e1[*]e2[+]e1[*]e2)).
Print Options.
   apply leEq_transitive with (y := [--](x1[*]x2)[+]e1[*]e2[+](x1[*]e2[-]e1[*]x2)).
Print Options.
    rstepr ((e1[+]x1)[*](e2[-]x2)).
Print Options.
    apply mult_resp_nonneg.
Print Options.
     apply plus_cancel_leEq_rht with (z := [--]x1).
Print Options.
     rstepl ([--]x1).
Print Options.
     rstepr ([--][--]e1).
Print Options.
     apply inv_resp_leEq.
Print Options.
     assumption.
Print Options.
    apply plus_cancel_leEq_rht with (z := x2).
Print Options.
    rstepl x2.
Print Options.
    rstepr e2.
Print Options.
    assumption.
Print Options.
   apply plus_resp_leEq_lft.
Print Options.
   apply plus_resp_leEq_both.
Print Options.
    apply mult_resp_leEq_rht.
Print Options.
     assumption.
Print Options.
    assumption.
Print Options.
   rstepl (e1[*][--]x2).
Print Options.
   apply mult_resp_leEq_lft.
Print Options.
    rstepr ([--][--]e2).
Print Options.
    apply inv_resp_leEq.
Print Options.
    assumption.
Print Options.
   assumption.
Print Options.
  apply AbsSmall_nonneg with (e := e2) (x := x2).
Print Options.
  assumption.
Print Options.
 apply AbsSmall_nonneg with (e := e1) (x := x1).
Print Options.
 assumption.
Print Options.
Qed.

Lemma AbsSmall_cancel_mult : forall e x z : R,
 [0] [<] z -> AbsSmall (e[*]z) (x[*]z) -> AbsSmall e x.
 intros.
Print Options.
 elim H.
Print Options.
 split.
Print Options.
  apply mult_cancel_leEq with (z := z).
Print Options.
   assumption.
Print Options.
  rstepl ([--](e[*]z)).
Print Options.
  assumption.
Print Options.
 apply mult_cancel_leEq with (z := z).
Print Options.
  assumption.
Print Options.
 assumption.
Print Options.
Qed.

Lemma AbsSmall_approach_zero : forall x : R, (forall e, [0] [<] e -> AbsSmall e x) -> x [=] [0].
 intros.
Print Options.
 apply not_ap_imp_eq.
Print Options.
 intro H0.
Print Options.
 elim (ap_imp_less _ _ _ H0).
Print Options.
  change (Not (x [<] [0])).
Print Options.
  rewrite <- leEq_def.
Print Options.
  apply inv_cancel_leEq.
Print Options.
  astepr ZeroR.
Print Options.
  apply approach_zero_weak.
Print Options.
  intros.
Print Options.
  apply inv_cancel_leEq; astepr x.
Print Options.
  elim (H e); auto.
Print Options.
 change (Not ([0] [<] x)).
Print Options.
 rewrite <- leEq_def.
Print Options.
 apply approach_zero_weak.
Print Options.
 intros.
Print Options.
 elim (H e); auto.
Print Options.
Qed.

Lemma mult_AbsSmall'_rht : forall x y C : R, [0] [<=] C ->
 [--]C [<=] x -> x [<=] C -> [--]C [<=] y -> y [<=] C -> x[*]y [<=] Three[*]C[^]2.
 intros.
Print Options.
 astepl ([0][+]x[*]y).
Print Options.
apply shift_plus_leEq.
Print Options.
 apply leEq_transitive with ((C[+]x)[*](C[-]y)).
Print Options.
  apply mult_resp_nonneg.
Print Options.
   apply shift_leEq_plus.
Print Options.
astepl ([--]x).
Print Options.
astepr ([--][--]C).
Print Options.
   apply inv_resp_leEq.
Print Options.
auto.
Print Options.
   apply shift_leEq_minus.
Print Options.
astepl y.
Print Options.
auto.
Print Options.
  rstepl (C[^]2[-]x[*]y[+]C[*](x[-]y)).
Print Options.
 rstepr (C[^]2[-]x[*]y[+]C[*](C[-][--]C)).
Print Options.
 apply plus_resp_leEq_lft.
Print Options.
 apply mult_resp_leEq_lft.
Print Options.
  apply minus_resp_leEq_both.
Print Options.
   auto.
Print Options.
auto.
Print Options.
auto.
Print Options.
Qed.

Lemma mult_AbsSmall_rht : forall x y X Y : R, [0] [<=] X ->
 [0] [<=] Y -> [--]X [<=] x -> x [<=] X -> [--]Y [<=] y -> y [<=] Y -> x[*]y [<=] X[*]Y.
 intros.
Print Options.
 rewrite -> leEq_def.
Print Options.
 intro.
Print Options.
 cut ([0] [<] x[*]y); intros.
Print Options.
  2: apply leEq_less_trans with (X[*]Y); auto.
Print Options.
 cut (x[*]y [#] [0]); intros.
Print Options.
  2: apply pos_ap_zero; auto.
Print Options.
 cut (x [#] [0]); intros.
Print Options.
  2: apply mult_cancel_ap_zero_lft with y; auto.
Print Options.
 elim (ap_imp_less _ _ _ X3); intro.
Print Options.
  cut (y [<] [0]); intros.
Print Options.
   2: astepl ([--][--]y); astepr ([--]([0]:R)); apply inv_resp_less.
Print Options.
   2: apply mult_cancel_pos_rht with ([--]x).
Print Options.
    2: astepr (x[*]y); auto.
Print Options.
   2: astepl ([--]([0]:R)); apply less_leEq; apply inv_resp_less; auto.
Print Options.
  apply (less_irreflexive_unfolded R [1]).
Print Options.
  apply leEq_less_trans with (X[*]Y[/] _[//]X2).
Print Options.
   rstepr ((X[/] [--]x[//]inv_resp_ap_zero _ _ X3)[*]
     (Y[/] [--]y[//]inv_resp_ap_zero _ _ (less_imp_ap _ _ _ X4))).
Print Options.
   astepl ([1][*]([1]:R)).
Print Options.
   apply mult_resp_leEq_both.
Print Options.
      apply less_leEq; apply pos_one.
Print Options.
     apply less_leEq; apply pos_one.
Print Options.
    apply shift_leEq_div.
Print Options.
     astepl ([--]([0]:R)); apply inv_resp_less; auto.
Print Options.
    astepl ([--]x); astepr ([--][--]X); apply inv_resp_leEq; firstorder using leEq_def.
Print Options.
   apply shift_leEq_div.
Print Options.
    astepl ([--]([0]:R)); apply inv_resp_less; auto.
Print Options.
   astepl ([--]y); astepr ([--][--]Y); apply inv_resp_leEq; firstorder using leEq_def.
Print Options.
  apply shift_div_less; auto.
Print Options.
  astepr (x[*]y); auto.
Print Options.
 cut ([0] [<] y); intros.
Print Options.
  2: apply mult_cancel_pos_rht with x; try apply less_leEq; auto.
Print Options.
 apply (less_irreflexive_unfolded R [1]).
Print Options.
 apply leEq_less_trans with (X[*]Y[/] _[//]X2).
Print Options.
  rstepr ((X[/] x[//]X3)[*](Y[/] y[//]pos_ap_zero _ _ X4)).
Print Options.
  astepl ([1][*]([1]:R)).
Print Options.
  apply mult_resp_leEq_both.
Print Options.
     apply less_leEq; apply pos_one.
Print Options.
    apply less_leEq; apply pos_one.
Print Options.
   apply shift_leEq_div; auto.
Print Options.
   astepl x; firstorder using leEq_def.
Print Options.
  apply shift_leEq_div; auto.
Print Options.
  astepl y; firstorder using leEq_def.
Print Options.
 apply shift_div_less; auto.
Print Options.
 astepr (x[*]y); firstorder using leEq_def.
Print Options.
Qed.

Lemma mult_AbsSmall_lft : forall x y X Y : R, [0] [<=] X -> [0] [<=] Y ->
 [--]X [<=] x -> x [<=] X -> [--]Y [<=] y -> y [<=] Y -> [--](X[*]Y) [<=] x[*]y.
 intros.
Print Options.
 rstepr ([--]([--]x[*]y)).
Print Options.
 apply inv_resp_leEq.
Print Options.
 apply mult_AbsSmall_rht; auto.
Print Options.
  apply inv_resp_leEq.
Print Options.
auto.
Print Options.
  rstepr ([--][--]X).
Print Options.
 apply inv_resp_leEq.
Print Options.
auto.
Print Options.
Qed.

Lemma mult_AbsSmall : forall x y X Y : R,
 AbsSmall X x -> AbsSmall Y y -> AbsSmall (X[*]Y) (x[*]y).
 intros.
Print Options.
 elim H.
Print Options.
elim H0.
Print Options.
 cut ([0] [<=] X).
Print Options.
cut ([0] [<=] Y).
Print Options.
  split.
Print Options.
    apply mult_AbsSmall_lft; auto.
Print Options.
   apply mult_AbsSmall_rht; auto.
Print Options.
  apply AbsSmall_nonneg with y; auto.
Print Options.
 apply AbsSmall_nonneg with x; auto.
Print Options.
Qed.

End AbsSmall_properties.

Declare Left Step AbsSmall_wdl_unfolded.
Declare Right Step AbsSmall_wdr_unfolded.
Definition absBig (R : COrdField) (e x : R) : CProp. exact ([0] [<] e and (e [<=] x or x [<=] [--]e)). Defined.

Notation AbsBig := (absBig _).

Lemma AbsBigSmall_minus : forall (R : COrdField) (e1 e2 x1 x2 : R),
 e2 [<] e1 -> AbsBig e1 x1 -> AbsSmall e2 x2 -> AbsBig (e1[-]e2) (x1[-]x2).
 split.
Print Options.
  apply plus_cancel_less with (z := e2).
Print Options.
  rstepl e2.
Print Options.
  rstepr e1.
Print Options.
  assumption.
Print Options.
 elim X0.
Print Options.
 intros H2 H3.
Print Options.
 case H3.
Print Options.
  left.
Print Options.
  elim H.
Print Options.
  intros.
Print Options.
  apply plus_resp_leEq_both.
Print Options.
   assumption.
Print Options.
  apply inv_cancel_leEq.
Print Options.
  rstepl x2.
Print Options.
  rstepr e2.
Print Options.
  assumption.
Print Options.
 right.
Print Options.
 elim H.
Print Options.
 intros H5 H6.
Print Options.
 rstepr ([--]e1[+]e2).
Print Options.
 apply plus_resp_leEq_both.
Print Options.
  assumption.
Print Options.
 apply inv_cancel_leEq.
Print Options.
 rstepr x2.
Print Options.
 assumption.
Print Options.
Qed.

Section absBig_wd_properties.

Variable R : COrdField.

Lemma AbsBig_wdr : Crel_wdr R AbsBig.
 red in |- *.
Print Options.
 intros.
Print Options.
 elim X.
Print Options.
 intros H1 H2.
Print Options.
 split.
Print Options.
  assumption.
Print Options.
 case H2.
Print Options.
  left.
Print Options.
  apply leEq_wdr with y.
Print Options.
   assumption.
Print Options.
  assumption.
Print Options.
 right.
Print Options.
 apply leEq_wdl with y.
Print Options.
  assumption.
Print Options.
 assumption.
Print Options.
Qed.

Lemma AbsBig_wdl : Crel_wdl R AbsBig.
 red in |- *.
Print Options.
 intros.
Print Options.
 elim X.
Print Options.
 intros H1 H2.
Print Options.
 split.
Print Options.
  astepr x.
Print Options.
  assumption.
Print Options.
 case H2.
Print Options.
  left.
Print Options.
  astepl x.
Print Options.
  assumption.
Print Options.
 right.
Print Options.
 astepr ([--]x).
Print Options.
 assumption.
Print Options.
Qed.

Lemma AbsBig_wdr_unfolded : forall x y z : R, AbsBig x y -> y [=] z -> AbsBig x z.
Proof AbsBig_wdr.

Lemma AbsBig_wdl_unfolded : forall x y z : R, AbsBig x y -> x [=] z -> AbsBig z y.
Proof AbsBig_wdl.

End absBig_wd_properties.

Add Parametric Morphism c : (@AbsSmall c) with signature (@cs_eq (cof_crr c)) ==> (@cs_eq c) ==> iff as AbsSmall_morph_wd.
Proof with try assumption.
 intros x1 x2 xeq y1 y2 yeq.
Print Options.
 split; intro H.
Print Options.
  stepr y1...
Print Options.
  stepl x1...
Print Options.
 symmetry in xeq, yeq.
Print Options.
 stepr y2...
Print Options.
 stepl x2...
Print Options.
Qed.

Definition Q_as_CSemiGroup := Build_CSemiGroup _ Qplus_is_bin_fun Qplus_is_assoc.

Section OrdField_Cauchy.

Variable R : COrdField.

Set Implicit Arguments.
Unset Strict Implicit.
Definition Cauchy_prop (g : nat -> R) : CProp.
Admitted.

Set Strict Implicit.
Unset Implicit Arguments.

Record CauchySeq : Type :=
 {CS_seq   :> nat -> R;
  CS_proof :  Cauchy_prop CS_seq}.
Definition SeqLimit (seq : nat -> R) (lim : R) : CProp.
Admitted.

End OrdField_Cauchy.

Arguments SeqLimit [R].

Record is_CReals (R : COrdField) (lim : CauchySeq R -> R) : CProp :=
  {ax_Lim  : forall s : CauchySeq R, SeqLimit s (lim s);
   ax_Arch : forall x : R, {n : nat | x [<=] nring n}}.

Record CReals : Type :=
  {crl_crr   :> COrdField;
   crl_lim   :  CauchySeq crl_crr -> crl_crr;
   crl_proof :  is_CReals crl_crr crl_lim}.
Definition Lim : forall IR : CReals, CauchySeq IR -> IR.
Admitted.

Arguments Lim [IR].

Lemma ZEROQ_as_rht_unit3 : is_rht_unit (S:=Q_as_CSetoid) Qplus_is_bin_fun 0.
Admitted.

Lemma ZEROQ_as_lft_unit3 : is_lft_unit (S:=Q_as_CSetoid) Qplus_is_bin_fun 0.
Admitted.

Definition Q_is_CMonoid := Build_is_CMonoid
 Q_as_CSemiGroup _ ZEROQ_as_rht_unit3 ZEROQ_as_lft_unit3.

Definition Q_as_CMonoid := Build_CMonoid Q_as_CSemiGroup _ Q_is_CMonoid.

Lemma Q_is_CGroup : is_CGroup Q_as_CMonoid Qopp_is_fun.
Admitted.

Definition Q_as_CGroup := Build_CGroup Q_as_CMonoid Qopp_is_fun Q_is_CGroup.

Lemma Q_is_CAbGroup : is_CAbGroup Q_as_CGroup.
Admitted.

Definition Q_as_CAbGroup := Build_CAbGroup Q_as_CGroup Q_is_CAbGroup.

Definition Q_is_CRing : is_CRing Q_as_CAbGroup 1 Qmult_is_bin_fun.
Admitted.

Definition Q_as_CRing := Build_CRing _ _ _ Q_is_CRing.

Lemma Q_is_CField : is_CField Q_as_CRing Qinv_dep.
Admitted.

Definition Q_as_CField := Build_CField _ _ Q_is_CField Qinv_strext.

Definition Qlt_is_strict_order := Build_strictorder
 Qlt_trans Qlt_is_antisymmetric_unfolded.

Definition Q_is_COrdField := Build_is_COrdField Q_as_CField
 Qlt_is_CSetoid_relation Qle (default_greater Q_as_CField Qlt_is_CSetoid_relation)
 (default_grEq Q_as_CField Qle) Qlt_is_strict_order (fun x y E z => proj2 (Qplus_lt_l x y z) E)
 Qmult_lt_0_compat Qlt_gives_apartness Qle_is_not_lt Qgt_is_lt Qge_is_not_gt.

Definition Q_as_COrdField := Build_COrdField _ _ _ _ _ Q_is_COrdField.

Definition IR : CReals.
Admitted.

Notation PartIR := (PartFunct IR).

Section Rational_sequence_prelogue.

Variable R1 : CReals.

Local Coercion nat_of_P : positive >-> nat.

Lemma den_is_nonzero : forall x : Q_as_COrdField, nring (R:=R1) (Qden x) [#] [0].
Admitted.

Definition inj_Q : Q_as_COrdField -> R1.
 intro x.
Print Options.
 case x.
Print Options.
 intros num0 den0.
Print Options.
 exact (zring num0[/]nring (R:=R1) den0[//]den_is_nonzero (Qmake num0 den0)).
Print Options.
Defined.

End Rational_sequence_prelogue.

Section Max_function.

Variables x y : IR.

Definition MAX : IR.
Admitted.

End Max_function.

Lemma MAX_strext : bin_op_strext _ MAX.
Admitted.

Definition Max := Build_CSetoid_bin_op _ MAX MAX_strext.

Section Minimum.
Definition Min : CSetoid_bin_op IR.
Admitted.

Lemma Min_leEq_lft : forall x y : IR, Min x y [<=] x.
Admitted.

Lemma Min_leEq_rht : forall x y : IR, Min x y [<=] y.
Admitted.

Variables a b : IR.

Lemma Min_leEq_Max : Min a b [<=] Max a b.
Admitted.

End Minimum.
Definition AbsIR : CSetoid_un_op IR.
Admitted.

Definition compact (a b : IR) (Hab : a [<=] b) (x : IR) := a [<=] x and x [<=] b.

Notation Compact := (compact _ _).

Section Definitions_and_Basic_Results.

Variables a b : IR.
Hypothesis Hab : a [<=] b.

Let I := Compact Hab.

Variable F : PartIR.

Let P := Dom F.

Definition Continuous_I := included I P and (forall e, [0] [<] e -> {d : IR | [0] [<] d |
 forall x y, I x -> I y -> forall Hx Hy, AbsIR (x[-]y) [<=] d -> AbsIR (F x Hx[-]F y Hy) [<=] e}).

End Definitions_and_Basic_Results.

Arguments Continuous_I [a b].

Section Integral.

Variables a b : IR.
Hypothesis Hab : a [<=] b.

Variable F : PartIR.
Hypothesis contF : Continuous_I Hab F.

Definition integral_seq : nat -> IR.
Admitted.

Lemma Cauchy_Darboux_Seq : Cauchy_prop integral_seq.
Admitted.

Definition integral := Lim (Build_CauchySeq _ _ Cauchy_Darboux_Seq).

End Integral.

Inductive interval : Type :=
  | realline         : interval
  | openl      : IR -> interval
  | openr      : IR -> interval
  | closel     : IR -> interval
  | closer     : IR -> interval
  | olor : IR -> IR -> interval
  | olcr : IR -> IR -> interval
  | clor : IR -> IR -> interval
  | clcr : IR -> IR -> interval.
Definition iprop (I : interval) (x : IR) : CProp.
exact (match I with
  | realline => True
  | openr b  => x [<] b
  | openl a  => a [<] x
  | closer b => x [<=] b
  | closel a => a [<=] x
  | olor a b => a [<] x and x [<] b
  | olcr a b => a [<] x and x [<=] b
  | clor a b => a [<=] x and x [<] b
  | clcr a b => a [<=] x and x [<=] b
  end).
Print Options.
Defined.

Coercion iprop : interval >-> Funclass.

Lemma iprop_wd : forall I : interval, pred_wd _ I.
Admitted.

Section Functions.
Variable I : interval.

Definition Continuous F := included I (Dom F) and (forall a b (Hab : a [<=] b),
 included (Compact Hab) I -> Continuous_I Hab F).

End Functions.

Section Definitions.

Variables a b : IR.
Hypothesis Hab : Min a b [<=] Max a b.
Variable F : PartIR.

Hypothesis HF : Continuous_I Hab F.

Lemma Integral_inc1 : Continuous_I (Min_leEq_lft a b) F.
Admitted.

Lemma Integral_inc2 : Continuous_I (Min_leEq_rht a b) F.
Admitted.

Definition Integral :=
  integral _ _ (Min_leEq_rht a b) F Integral_inc2[-]integral _ _ (Min_leEq_lft a b) _ Integral_inc1.

End Definitions.

Arguments Integral [a b Hab F].

Section Indefinite_Integral.

Variable I : interval.
Variable F : PartIR.

Hypothesis contF : Continuous I F.

Variable a : IR.
Hypothesis Ha : I a.

Lemma prim_lemma : forall x : IR, I x -> Continuous_I (Min_leEq_Max a x) F.
Admitted.

Lemma Fprim_strext : forall x y Hx Hy,
 Integral (prim_lemma x Hx) [#] Integral (prim_lemma y Hy) -> x [#] y.
Admitted.

Definition Fprim : PartIR.
 apply Build_PartFunct with (pfpfun := fun (x : IR) (Hx : I x) => Integral (prim_lemma x Hx)).
Print Options.
  apply iprop_wd.
Print Options.
 exact Fprim_strext.
Print Options.
Defined.

End Indefinite_Integral.

Arguments Fprim [I F].

Notation "[-S-] F" := (Fprim F) (at level 20).
Fixpoint pi_seq (n : nat) : IR.
Admitted.

Lemma pi_seq_Cauchy : Cauchy_prop pi_seq.
Admitted.

Definition Pi := Two[*]Lim (Build_CauchySeq _ _ pi_seq_Cauchy).

Lemma ArcTan_def_lemma : Continuous realline {1/} ( [-C-][1]{+}FId{^}2).
Print Options.
Admitted.

Definition ArcTang := ( [-S-]ArcTan_def_lemma) [0] I.
Print Options.

Definition ArcTan (x : IR) := ArcTang x I.
Import CoRN.model.totalorder.QMinMax.
Import CoRN.stdlib_omissions.Q.

Set Implicit Arguments.

Section Pi.
Let f (a b:Q) : Q.
exact (let (x,y) := a in
 let (z,w) := b in
 Qred ((x*w + y*z)%Z/(y*w-x*z)%Z)).
Defined.

Definition ArcTan_multiple : forall x, -(1) <= x <= 1 -> forall n,
  sumbool True ((nring n)[*]ArcTan (inj_Q _ x)[=]ArcTan (inj_Q _ (iter_nat n _ (f x) 0))).
 intros x Hx.
Print Options.
 induction n.
Print Options.
  right.
Print Options.
 admit.
Print Options.
 destruct (IHn) as [H|H].
Print Options.
  left; constructor.
Print Options.
 set (y:=(iter_nat n Q (f x) 0)) in *.
Print Options.
 destruct (Qlt_le_dec_fast 1 y) as [_|Y0].
Print Options.
  left; constructor.
Print Options.
 destruct (Qlt_le_dec_fast y (-(1))) as [_|Y1].
Print Options.
  left; constructor.
Print Options.
 destruct (Qeq_dec (1-x*y) 0) as [_|Y2].
Print Options.
  left; constructor.
Print Options.
 right.
Print Options.
 admit.
Print Options.
Defined.

Lemma reflect_right : forall A B (x:{A}+{B}), (match x with left _ => False | right _ => True end) -> B.
Admitted.

Lemma Pi_Formula :
(((nring 44)[*]ArcTan (inj_Q IR (1 /  57%Z))[-]
  (nring 12)[*]ArcTan (inj_Q IR (1 / 682%Z))[+]
  (nring  7)[*]ArcTan (inj_Q IR (1 / 239%Z))[+]
  (nring 24)[*]ArcTan (inj_Q IR (1 / 12943%Z)))[=]
 Pi[/]FourNZ).
Print Options.
 assert (H0:-(1) <= (1/(57%Z)) <= 1).
Print Options.
  split; discriminate.
Print Options.
 set (y0:=(iter_nat 44 _ (f (1/57%Z)) 0)).
Print Options.
 csetoid_replace ((nring 44)[*]ArcTan (inj_Q IR (1 / 57%Z)))
   (ArcTan (inj_Q IR y0)); [|apply: (reflect_right (ArcTan_multiple H0 44)); now vm_compute].
Print Options.
