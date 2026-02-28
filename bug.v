
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/corn" "CoRN" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Bignums" "Bignums" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/HB" "HB" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/MathClasses" "MathClasses" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi" "elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_elpi" "elpi_elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_examples" "elpi_examples" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 362 lines to 68 lines, then from 80 lines to 1074 lines, then from 1081 lines to 78 lines, then from 89 lines to 1725 lines, then from 1732 lines to 96 lines, then from 108 lines to 1195 lines, then from 1202 lines to 99 lines, then from 110 lines to 1587 lines, then from 1594 lines to 117 lines, then from 129 lines to 896 lines, then from 903 lines to 120 lines, then from 131 lines to 1147 lines, then from 1154 lines to 132 lines, then from 143 lines to 1154 lines, then from 1161 lines to 144 lines, then from 155 lines to 1086 lines, then from 1093 lines to 156 lines, then from 167 lines to 1191 lines, then from 1198 lines to 214 lines, then from 225 lines to 1320 lines, then from 1327 lines to 357 lines, then from 362 lines to 135 lines, then from 147 lines to 1975 lines, then from 1982 lines to 145 lines, then from 156 lines to 1770 lines, then from 1777 lines to 210 lines, then from 221 lines to 2049 lines, then from 2056 lines to 242 lines, then from 253 lines to 1745 lines, then from 1752 lines to 244 lines, then from 255 lines to 1816 lines, then from 1823 lines to 259 lines, then from 271 lines to 1478 lines, then from 1485 lines to 296 lines, then from 307 lines to 1721 lines, then from 1728 lines to 315 lines, then from 327 lines to 1175 lines, then from 1182 lines to 317 lines, then from 329 lines to 1252 lines, then from 1258 lines to 346 lines, then from 357 lines to 1685 lines, then from 1692 lines to 555 lines, then from 563 lines to 210 lines, then from 222 lines to 972 lines, then from 978 lines to 220 lines, then from 231 lines to 1055 lines, then from 1062 lines to 248 lines, then from 259 lines to 2033 lines, then from 2038 lines to 311 lines, then from 322 lines to 1621 lines, then from 1627 lines to 331 lines, then from 342 lines to 1683 lines, then from 1690 lines to 368 lines, then from 379 lines to 730 lines, then from 737 lines to 384 lines, then from 395 lines to 750 lines, then from 757 lines to 410 lines, then from 421 lines to 763 lines, then from 770 lines to 418 lines, then from 429 lines to 840 lines, then from 847 lines to 426 lines, then from 437 lines to 767 lines, then from 774 lines to 447 lines, then from 458 lines to 780 lines, then from 787 lines to 455 lines, then from 466 lines to 812 lines, then from 819 lines to 469 lines, then from 480 lines to 1590 lines, then from 1596 lines to 594 lines, then from 604 lines to 310 lines, then from 322 lines to 646 lines, then from 653 lines to 333 lines, then from 344 lines to 1365 lines, then from 1372 lines to 357 lines, then from 368 lines to 680 lines, then from 687 lines to 375 lines, then from 386 lines to 1323 lines, then from 1327 lines to 1009 lines, then from 1020 lines to 2472 lines, then from 2478 lines to 1095 lines, then from 1106 lines to 3016 lines, then from 3017 lines to 2780 lines, then from 2791 lines to 3122 lines, then from 3129 lines to 2998 lines, then from 3005 lines to 2805 lines, then from 2817 lines to 3217 lines, then from 3223 lines to 2906 lines, then from 2917 lines to 4126 lines, then from 4133 lines to 3112 lines, then from 3123 lines to 4291 lines, then from 4292 lines to 4398 lines, then from 4363 lines to 4061 lines, then from 4073 lines to 5710 lines, then from 5711 lines to 593 lines, then from 605 lines to 1615 lines, then from 1622 lines to 590 lines, then from 601 lines to 1380 lines, then from 1387 lines to 1096 lines, then from 1107 lines to 1980 lines, then from 1985 lines to 1777 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 1.734 sec
   Expected coqc peak memory usage on this file: 5286384.0 kb *)









Require CoRN.tactics.Step.
Require Corelib.Classes.Morphisms.
Require Corelib.Program.Wf.
Require Corelib.BinNums.IntDef.
Require Corelib.Init.Sumbool.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Program.Basics.
Require Corelib.Lists.ListDef.
Require Corelib.Classes.Equivalence.
Require Corelib.Numbers.BinNums.
Require Corelib.Init.Ltac.
Require Corelib.BinNums.NatDef.
Require Corelib.Setoids.Setoid.
Require Corelib.BinNums.PosDef.
Require Corelib.Program.Utils.
Require Corelib.Classes.RelationClasses.
Require Corelib.Program.Tactics.
Require Corelib.Init.Wf.
Require Corelib.Classes.SetoidTactics.
Require Corelib.Relations.Relation_Definitions.
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
Require Stdlib.BinNums.NatDef.
Require Stdlib.BinNums.IntDef.
Require Stdlib.BinNums.PosDef.
Require Stdlib.Classes.SetoidTactics.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.Equivalence.
Require Stdlib.Classes.RelationClasses.
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
Require CoRN.model.totalorder.QMinMax.
Require CoRN.model.structures.Qsec.
Require CoRN.algebra.CMonoids.
Axiom proof_admitted : False.
Tactic Notation "admit" := abstract case proof_admitted.

Module Export CoRN_DOT_algebra_DOT_CGroups_WRAPPED.
Module Export CGroups.
Export CoRN.algebra.CMonoids.





Definition is_CGroup (G : CMonoid) (inv : CSetoid_un_op G) :=
  forall x, is_inverse csg_op [0] x (inv x).

Record CGroup : Type :=
  {cg_crr   : CMonoid;
   cg_inv   :  CSetoid_un_op cg_crr;
   cg_proof :  is_CGroup cg_crr cg_inv}.

Module Export coercions.
  Coercion cg_crr : CGroup >-> CMonoid.
End coercions.





Arguments cg_inv {c}.
Notation "[--] x" := (cg_inv x) (at level 4, right associativity).

Definition cg_minus (G : CGroup) (x y : G) := x[+] [--]y.



Arguments cg_minus [G].
Infix "[-]" := cg_minus (at level 50, left associativity).




Section CGroup_axioms.
Variable G : CGroup.

Lemma cg_inverse : forall x : G, is_inverse csg_op [0] x [--] x.
Proof cg_proof G.

End CGroup_axioms.


Section CGroup_basics.
Variable G : CGroup.

Lemma cg_rht_inv_unfolded : forall x : G, x[+] [--] x [=] [0].
Proof.
 intro x; elim (cg_inverse G x); auto.
Qed.

Lemma cg_lft_inv_unfolded : forall x : G, [--] x[+]x [=] [0].
Proof.
 intro x; elim (cg_inverse G x); auto.
Qed.

Lemma cg_minus_correct : forall x : G, x [-] x [=] [0].
Proof.
 intro x.
 unfold cg_minus in |- *.
 apply cg_rht_inv_unfolded.
Qed.
Hint Resolve cg_rht_inv_unfolded cg_lft_inv_unfolded cg_minus_correct:
  algebra.

Lemma cg_inverse' : forall x : G, is_inverse csg_op [0] [--] x x.
Proof.
 intro x.
 split; algebra.
Qed.


Lemma cg_minus_unfolded : forall x y : G, x [-] y [=] x[+] [--] y.
Proof.
 algebra.
Qed.
Hint Resolve cg_minus_unfolded: algebra.

Lemma cg_minus_wd : forall x x' y y' : G, x [=] x' -> y [=] y' -> x [-] y [=] x' [-] y'.
Proof.
 intros x x' y y' H H0.
 unfold cg_minus in |- *.
 Step_final (x[+] [--] y').
Qed.
Hint Resolve cg_minus_wd: algebra_c.

Lemma cg_minus_strext : forall x x' y y' : G, x [-] y [#] x' [-] y' -> x [#] x' or y [#] y'.
Proof.
 intros x x' y y' H.
cut (x [#] x' or [--] y [#] [--] y').
 intro H0.
elim H0.
  left; trivial.
  intro H1.
  right; exact (cs_un_op_strext G cg_inv y y' H1).
 apply bin_op_strext_unfolded with (csg_op (c:=G)).
trivial.
Qed.

Definition cg_minus_is_csetoid_bin_op : CSetoid_bin_op G :=
  Build_CSetoid_bin_op G (cg_minus (G:=G)) cg_minus_strext.

Lemma grp_inv_assoc : forall x y : G, x[+]y [-] y [=] x.
Proof.
 intros x y; unfold cg_minus in |- *.
 astepl (x[+](y[+] [--] y)).
 Step_final (x[+][0]).
Qed.
Hint Resolve grp_inv_assoc: algebra.

Lemma cg_inv_unique : forall x y : G, x[+]y [=] [0] -> y [=] [--] x.
Proof.
 intros x y H.
 astepl ([0][+]y).
 astepl ([--] x[+]x[+]y).
 astepl ([--] x[+](x[+]y)).
 Step_final ([--] x[+][0]).
Qed.

Lemma cg_inv_inv : forall x : G, [--] [--] x [=] x.
Proof.
 intro x.
 astepl ([0][+] [--] [--] x).
 astepl (x[+] [--] x[+] [--] [--] x).
 astepl (x[+]([--] x[+] [--] [--] x)).
 Step_final (x[+][0]).
Qed.
Hint Resolve cg_inv_inv: algebra.

Lemma cg_cancel_lft : forall x y z : G, x[+]y [=] x[+]z -> y [=] z.
Proof.
 intros x y z H.
 astepl ([0][+]y).
 astepl ([--] x[+]x[+]y).
 astepl ([--] x[+](x[+]y)).
 astepl ([--] x[+](x[+]z)).
 astepl ([--] x[+]x[+]z).
 Step_final ([0][+]z).
Qed.

Lemma cg_cancel_rht : forall x y z : G, y[+]x [=] z[+]x -> y [=] z.
Proof.
 intros x y z H.
 astepl (y[+][0]).
 astepl (y[+](x[+] [--] x)).
 astepl (y[+]x[+] [--] x).
 astepl (z[+]x[+] [--] x).
 astepl (z[+](x[+] [--] x)).
 Step_final (z[+][0]).
Qed.

Lemma cg_inv_unique' : forall x y : G, x[+]y [=] [0] -> x [=] [--] y.
Proof.
 intros x y H.
 astepl (x[+][0]).
 astepl (x[+](y[+] [--] y)).
 astepl (x[+]y[+] [--] y).
 Step_final ([0][+] [--] y).
Qed.

Lemma cg_inv_unique_2 : forall x y : G, x [-] y [=] [0] -> x [=] y.
Proof.
 intros x y H.
 generalize (cg_inv_unique _ _ H); intro H0.
 astepl ([--] [--] x).
 Step_final ([--] [--] y).
Qed.

Lemma cg_zero_inv : [--] ([0]:G) [=] [0].
Proof.
 apply eq_symmetric_unfolded; apply cg_inv_unique; algebra.
Qed.

Hint Resolve cg_zero_inv: algebra.

Lemma cg_inv_zero : forall x : G, x [-] [0] [=] x.
Proof.
 intro x.
 unfold cg_minus in |- *.
 Step_final (x[+][0]).
Qed.

Lemma cg_inv_op : forall x y : G, [--] (x[+]y) [=] [--] y[+] [--] x.
Proof.
 intros x y.
 apply (eq_symmetric G).
 apply cg_inv_unique.
 astepl (x[+]y[+] [--] y[+] [--] x).
 astepl (x[+](y[+] [--] y)[+] [--] x).
 astepl (x[+][0][+] [--] x).
 Step_final (x[+] [--] x).
Qed.



Lemma x_minus_x : forall x y : G, x [=] y -> x [-] y [=] [0].
Proof.
 intros x y H; Step_final (x [-] x).
Qed.


Section SubCGroups.
Variable P : G -> CProp.
Variable Punit : P [0].
Variable op_pres_P : bin_op_pres_pred _ P csg_op.
Variable inv_pres_P : un_op_pres_pred _ P cg_inv.

Let subcrr : CMonoid := Build_SubCMonoid _ _ Punit op_pres_P.
Let subinv : CSetoid_un_op subcrr := Build_SubCSetoid_un_op _ _ _ inv_pres_P.

Lemma isgrp_scrr : is_CGroup subcrr subinv.
Proof.
 red in |- *.
intro x.
case x.
intros.
split; simpl in |- *; algebra.
Qed.

Definition Build_SubCGroup : CGroup := Build_CGroup subcrr _ isgrp_scrr.

End SubCGroups.

End CGroup_basics.

Add Parametric Morphism c : (@cg_minus c) with signature (@cs_eq (cg_crr c)) ==> (@cs_eq c) ==> (@cs_eq c) as cg_minus_wd_morph.
Proof.
 intros.
 apply cg_minus_wd; assumption.
Qed.

#[global]
Hint Resolve cg_rht_inv_unfolded cg_lft_inv_unfolded: algebra.
#[global]
Hint Resolve cg_inv_inv cg_minus_correct cg_zero_inv cg_inv_zero: algebra.
#[global]
Hint Resolve cg_minus_unfolded grp_inv_assoc cg_inv_op: algebra.
#[global]
Hint Resolve cg_minus_wd: algebra_c.


Section Assoc_properties.
Variable G : CGroup.

Lemma assoc_2 : forall x y z : G, x[+] (y [-] z) [=] x[+]y [-] z.
Proof.
 intros x y z; unfold cg_minus in |- *; algebra.
Qed.

Lemma zero_minus : forall x : G, [0] [-] x [=] [--] x.
Proof.
 intro x.
 unfold cg_minus in |- *.
 algebra.
Qed.

Lemma cg_cancel_mixed : forall x y : G, x [=] x [-] y[+]y.
Proof.
 intros x y.
 unfold cg_minus in |- *.
 astepr (x[+]([--] y[+]y)).
 Step_final (x[+][0]).
Qed.

Lemma plus_resp_eq : forall x y z : G, y [=] z -> x[+]y [=] x[+]z.
Proof.
 algebra.
Qed.

End Assoc_properties.

#[global]
Hint Resolve assoc_2 Nat.add_sub zero_minus cg_cancel_mixed plus_resp_eq:
  algebra.


Section cgroups_apartness.
Variable G : CGroup.

Lemma cg_add_ap_zero : forall x y : G, x[+]y [#] [0] -> x [#] [0] or y [#] [0].
Proof.
 intros x y H.
 apply (cs_bin_op_strext _ csg_op x [0] y [0]).
 astepr ([0]:G).
 auto.
Qed.

Lemma op_rht_resp_ap : forall x y z : G, x [#] y -> x[+]z [#] y[+]z.
Proof.
 intros x y z H.
 cut (x[+]z [-] z [#] y[+]z [-] z).
  intros h.
  case (cs_bin_op_strext _ _ _ _ _ _ h).
   auto.
  intro contra; elim (ap_irreflexive _ _ contra).
 astepl x; astepr y.
auto.
Qed.

Lemma cg_ap_cancel_rht : forall x y z : G, x[+]z [#] y[+]z -> x [#] y.
Proof.
 intros x y z H.
 apply ap_wdr_unfolded with (y[+]z [-] z).
  apply ap_wdl_unfolded with (x[+]z [-] z).
   apply (op_rht_resp_ap _ _ [--] z H).
  astepr (x[+][0]).
  Step_final (x[+](z [-] z)).
 astepr (y[+][0]).
 Step_final (y[+](z [-] z)).
Qed.

Lemma plus_cancel_ap_rht : forall x y z : G, x[+]z [#] y[+]z -> x [#] y.
Proof cg_ap_cancel_rht.

Lemma minus_ap_zero : forall x y : G, x [#] y -> x [-] y [#] [0].
Proof.
 intros x y H.
 astepr (y [-] y).
 unfold cg_minus in |- *.
 apply op_rht_resp_ap; assumption.
Qed.

Lemma zero_minus_apart : forall x y : G, x [-] y [#] [0] -> x [#] y.
Proof.
 unfold cg_minus in |- *.
intros x y H.
 cut (x[+] [--] y [#] y[+] [--] y).
intros h.
  apply (cg_ap_cancel_rht _ _ _ h).
 astepr ([0]:G).
auto.
Qed.

Lemma inv_resp_ap_zero : forall x : G, x [#] [0] -> [--] x [#] [0].
Proof.
 intros x H.
 astepl ([0][+] [--] x).
 astepl ([0] [-] x).
 apply minus_ap_zero.
 apply (ap_symmetric G).
 auto.
Qed.

Lemma inv_resp_ap : forall x y : G, x [#] y -> [--] x [#] [--] y.
Proof.
 intros x y H.
 apply (csf_strext _ _ (cg_inv (c:=G))).
 astepl x.
 astepr y.
 auto.
Qed.

Lemma minus_resp_ap_rht : forall x y z : G, x [#] y -> x [-] z [#] y [-] z.
Proof.
 intros x y z H.
 unfold cg_minus in |- *.
 apply op_rht_resp_ap.
 assumption.
Qed.

Lemma minus_resp_ap_lft : forall x y z : G, x [#] y -> z [-] x [#] z [-] y.
Proof.
 intros x y z H.
 astepl ([--] (x [-] z)).
  2: unfold cg_minus in |- *; Step_final ([--] [--] z[+] [--] x).
 astepr ([--] (y [-] z)).
  2: unfold cg_minus in |- *; Step_final ([--] [--] z[+] [--] y).
 apply inv_resp_ap.
 apply minus_resp_ap_rht.
 auto.
Qed.

Lemma minus_cancel_ap_rht : forall x y z : G, x [-] z [#] y [-] z -> x [#] y.
Proof.
 unfold cg_minus in |- *.
 intros x y z H.
 exact (plus_cancel_ap_rht _ _ _ H).
Qed.

End cgroups_apartness.
#[global]
Hint Resolve op_rht_resp_ap: algebra.
#[global]
Hint Resolve minus_ap_zero zero_minus_apart inv_resp_ap_zero: algebra.

Section CGroup_Ops.



Definition PS_Inv (A : CSetoid) : PS_as_CMonoid A -> PS_as_CMonoid A.
Proof.
 simpl in |- *.
 intros f.
 elim f.
 intros fo prfo.
 set (H0 := Inv fo prfo) in *.
 apply Build_subcsetoid_crr with H0.
 unfold H0 in |- *.
 apply Inv_bij.
Defined.

Definition Inv_as_un_op (A : CSetoid) : CSetoid_un_op (PS_as_CMonoid A).
Proof.
 unfold CSetoid_un_op in |- *.
 apply Build_CSetoid_fun with (PS_Inv A).
 unfold fun_strext in |- *.
 intros x y.
 case x.
 case y.
 simpl in |- *.
 intros f H g H0.
 unfold ap_fun in |- *.
 intro H1.
 elim H1.
 clear H1.
 intros a H1.
 exists (Inv g H0 a).
 astepl a.
  2: simpl in |- *.
  2: apply eq_symmetric_unfolded.
  2: apply inv1.
 unfold bijective in H.
 elim H.
 unfold injective in |- *.
 intros H2 H3.
 astepl (f (Inv f H a)).
  apply H2.
  apply ap_symmetric_unfolded.
  exact H1.
 simpl in |- *.
 apply inv1.
Defined.

Lemma PS_is_CGroup :
 forall A : CSetoid, is_CGroup (PS_as_CMonoid A) (Inv_as_un_op A).
Proof.
 intro A.
 unfold is_CGroup in |- *.
 intro x.
 unfold is_inverse in |- *.
 simpl in |- *.
 split.
  case x.
  simpl in |- *.
  intros f H.
  unfold eq_fun in |- *.
  intro a.
  unfold comp in |- *.
  simpl in |- *.
  apply inv2.
 case x.
 simpl in |- *.
 intros f H.
 unfold eq_fun in |- *.
 intro a.
 unfold comp in |- *.
 simpl in |- *.
 apply inv1.
Qed.

Definition PS_as_CGroup (A : CSetoid) :=
  Build_CGroup (PS_as_CMonoid A) (Inv_as_un_op A) (PS_is_CGroup A).



Variable G : CGroup.

Variables F F' : PartFunct G.


Let P := Dom F.
Let Q := Dom F'.


Section Part_Function_Inv.

Lemma part_function_inv_strext : forall x y (Hx : P x) (Hy : P y),
 [--] (F x Hx) [#] [--] (F y Hy) -> x [#] y.
Proof.
 intros x y Hx Hy H.
 apply pfstrx with F Hx Hy.
 apply un_op_strext_unfolded with (cg_inv (c:=G)); assumption.
Qed.

Definition Finv := Build_PartFunct _ _
 (dom_wd _ F) (fun x Hx => [--] (F x Hx)) part_function_inv_strext.

End Part_Function_Inv.

Section Part_Function_Minus.

Lemma part_function_minus_strext : forall x y (Hx : Conj P Q x) (Hy : Conj P Q y),
 F x (Prj1 Hx) [-] F' x (Prj2 Hx) [#] F y (Prj1 Hy) [-] F' y (Prj2 Hy) -> x [#] y.
Proof.
 intros x y Hx Hy H.
 cut (F x (Prj1 Hx) [#] F y (Prj1 Hy) or F' x (Prj2 Hx) [#] F' y (Prj2 Hy)).
  intro H0.
  elim H0; intro H1; exact (pfstrx _ _ _ _ _ _ H1).
 apply cg_minus_strext; auto.
Qed.

Definition Fminus := Build_PartFunct G _ (conj_wd (dom_wd _ F) (dom_wd _ F'))
 (fun x Hx => F x (Prj1 Hx) [-] F' x (Prj2 Hx)) part_function_minus_strext.

End Part_Function_Minus.



Variable R:G -> CProp.

Lemma included_FInv : included R P -> included R (Dom Finv).
Proof.
 intro; simpl in |- *; assumption.
Qed.

Lemma included_FInv' : included R (Dom Finv) -> included R P.
Proof.
 intro; simpl in |- *; assumption.
Qed.

Lemma included_FMinus : included R P -> included R Q -> included R (Dom Fminus).
Proof.
 intros; simpl in |- *; apply included_conj; assumption.
Qed.

Lemma included_FMinus' : included R (Dom Fminus) -> included R P.
Proof.
 intro H; simpl in H; eapply included_conj_lft; apply H.
Qed.

Lemma included_FMinus'' : included R (Dom Fminus) -> included R Q.
Proof.
 intro H; simpl in H; eapply included_conj_rht; apply H.
Qed.

End CGroup_Ops.

Arguments Finv [G].
Notation "{--} x" := (Finv x) (at level 4, right associativity).

Arguments Fminus [G].
Infix "{-}" := Fminus (at level 50, left associativity).

#[global]
Hint Resolve included_FInv included_FMinus : included.

#[global]
Hint Immediate included_FInv' included_FMinus' included_FMinus'' : included.

End CGroups.

End CoRN_DOT_algebra_DOT_CGroups_WRAPPED.
Module Export CoRN_DOT_algebra_DOT_CGroups.
Module Export CoRN.
Module Export algebra.
Module CGroups.
Include CoRN_DOT_algebra_DOT_CGroups_WRAPPED.CGroups.
End CGroups.

End algebra.

End CoRN.

End CoRN_DOT_algebra_DOT_CGroups.
Module Export CoRN_DOT_algebra_DOT_CAbGroups_WRAPPED.
Module Export CAbGroups.

Export CoRN.algebra.CGroups.

Section Abelian_Groups.

Definition is_CAbGroup (G : CGroup) := commutes (csg_op (c:=G)).

Record CAbGroup : Type :=
 {cag_crr   : CGroup;
  cag_proof :  is_CAbGroup cag_crr}.

Local Coercion cag_crr : CAbGroup >-> CGroup.

Section AbGroup_Axioms.

Variable G : CAbGroup.

Lemma cag_commutes : commutes (csg_op (c:=G)).
Admitted.

Lemma cag_commutes_unfolded : forall x y : G, x[+]y [=] y[+]x.
Proof cag_commutes.

End AbGroup_Axioms.

Section SubCAbGroups.

Variable G : CAbGroup.
Variable P : G -> CProp.
Variable Punit : P [0].
Variable op_pres_P : bin_op_pres_pred _ P csg_op.
Variable inv_pres_P : un_op_pres_pred _ P cg_inv.

Let subcrr : CGroup := Build_SubCGroup _ _ Punit op_pres_P inv_pres_P.

Lemma isabgrp_scrr : is_CAbGroup subcrr.
Proof.
 red in |- *.
intros x y.
case x.
case y.
intros.
simpl in |- *.
apply cag_commutes_unfolded.
Qed.

Definition Build_SubCAbGroup : CAbGroup := Build_CAbGroup subcrr isabgrp_scrr.

End SubCAbGroups.

Section Various.

Hint Resolve cag_commutes_unfolded: algebra.

Variable G : CAbGroup.

Lemma cag_op_inv : forall x y : G, [--] (x[+]y) [=] [--]x[+] [--]y.
Proof.
 intros x y.
 astepr ([--]y[+] [--]x).
 apply cg_inv_op.
Qed.

Hint Resolve cag_op_inv: algebra.

Lemma assoc_1 : forall x y z : G, x[-] (y[-]z) [=] x[-]y[+]z.
Proof.
 intros x y z; unfold cg_minus in |- *.
 astepr (x[+]([--]y[+]z)).
 Step_final (x[+]([--]y[+] [--][--]z)).
Qed.

Lemma minus_plus : forall x y z : G, x[-] (y[+]z) [=] x[-]y[-]z.
Proof.
 intros x y z.
 unfold cg_minus in |- *.
 Step_final (x[+]([--]y[+] [--]z)).
Qed.

Lemma op_lft_resp_ap : forall x y z : G, y [#] z -> x[+]y [#] x[+]z.
Proof.
 intros x y z H.
 astepl (y[+]x).
 astepr (z[+]x).
 apply op_rht_resp_ap; assumption.
Qed.

Lemma cag_ap_cancel_lft : forall x y z : G, x[+]y [#] x[+]z -> y [#] z.
Proof.
 intros x y z H.
 apply ap_symmetric_unfolded.
 apply cg_ap_cancel_rht with x.
 apply ap_symmetric_unfolded.
 astepl (x[+]y).
 astepr (x[+]z).
 auto.
Qed.

Lemma plus_cancel_ap_lft : forall x y z : G, z[+]x [#] z[+]y -> x [#] y.
Proof.
 intros x y z H.
 apply cag_ap_cancel_lft with z.
 assumption.
Qed.

End Various.

End Abelian_Groups.

#[global]
Hint Resolve cag_commutes_unfolded: algebra.
#[global]
Hint Resolve cag_op_inv assoc_1 zero_minus minus_plus op_lft_resp_ap: algebra.

Module Export coercions.
  Export CGroups.coercions.
  Coercion cag_crr : CAbGroup >-> CGroup.
End coercions.

Section Nice_Char.

Variable S : CSetoid.
Variable unit : S.
Variable plus : S -> S -> S.

Hypothesis plus_lext : forall x y z : S, plus x z [#] plus y z -> x [#] y.
Hypothesis plus_lunit : forall x : S, plus unit x [=] x.
Hypothesis plus_comm : forall x y : S, plus x y [=] plus y x.
Hypothesis plus_assoc : associative plus.

Variable inv : CSetoid_un_op S.

Hypothesis inv_inv : forall x : S, plus x (inv x) [=] unit.

Lemma plus_rext : forall x y z : S, plus x y [#] plus x z -> y [#] z.
Proof.
 intros x y z H.
 apply plus_lext with x.
 astepl (plus x y).
 astepr (plus x z).
 auto.
Qed.

Lemma plus_runit : forall x : S, plus x unit [=] x.
Proof.
 intro x.
 Step_final (plus unit x).
Qed.

Lemma plus_is_fun : bin_fun_strext _ _ _ plus.
Proof.
 intros x x' y y' H.
 elim (ap_cotransitive_unfolded _ _ _ H (plus x y')); intro H'.
  right; apply plus_lext with x.
  astepl (plus x y); astepr (plus x y'); auto.
 left; eauto.
Qed.

Lemma inv_inv' : forall x : S, plus (inv x) x [=] unit.
Proof.
 intro.
 Step_final (plus x (inv x)).
Qed.

Definition plus_fun : CSetoid_bin_op S := Build_CSetoid_bin_fun _ _ _ plus plus_is_fun.

Definition Build_CSemiGroup' : CSemiGroup.
Proof.
 apply Build_CSemiGroup with S plus_fun.
 exact plus_assoc.
Defined.

Definition Build_CMonoid' : CMonoid.
Proof.
 apply Build_CMonoid with Build_CSemiGroup' unit.
 apply Build_is_CMonoid.
  exact plus_runit.
 exact plus_lunit.
Defined.

Definition Build_CGroup' : CGroup.
Proof.
 apply Build_CGroup with Build_CMonoid' inv.
 split.
  auto.
 apply inv_inv'.
Defined.

Definition Build_CAbGroup' : CAbGroup.
Proof.
 apply Build_CAbGroup with Build_CGroup'.
 exact plus_comm.
Defined.

End Nice_Char.

Section Group_Extras.

Variable G : CAbGroup.

Fixpoint nmult (a:G) (n:nat) {struct n} : G :=
  match n with
  | O => [0]
  | S p => a[+]nmult a p
  end.

Lemma nmult_wd : forall (x y:G) (n m:nat), (x [=] y) -> n = m -> nmult x n [=] nmult y m.
Proof.
 simple induction n; intros.
  rewrite <- H0; algebra.
 rewrite <- H1; simpl in |- *; algebra.
Qed.

Lemma nmult_one : forall x:G, nmult x 1 [=] x.
Proof.
 simpl in |- *; algebra.
Qed.

Lemma nmult_Zero : forall n:nat, nmult [0] n [=] [0].
Proof.
 intro n.
 induction n.
  algebra.
 simpl in |- *; Step_final (([0]:G)[+][0]).
Qed.

Lemma nmult_plus : forall m n x, nmult x m[+]nmult x n [=] nmult x (m + n).
Proof.
 simple induction m.
  simpl in |- *; algebra.
 clear m; intro m.
 intros.
 simpl in |- *.
Step_final (x[+](nmult x m[+]nmult x n)).
Qed.

Lemma nmult_mult : forall n m x, nmult (nmult x m) n [=] nmult x (m * n).
Proof.
 simple induction n.
  intro.
rewrite Nat.mul_0_r.
algebra.
  clear n; intros.
 simpl in |- *.
 rewrite Nat.mul_comm.
simpl in |- *.
 eapply eq_transitive_unfolded.
  2: apply nmult_plus.
 rewrite Nat.mul_comm.
algebra.
Qed.

Lemma nmult_inv : forall n x, nmult [--]x n [=] [--] (nmult x n).
Proof.
 intro; induction n; simpl in |- *.
  algebra.
 intros.
 Step_final ([--]x[+] [--](nmult x n)).
Qed.

Lemma nmult_plus' : forall n x y, nmult x n[+]nmult y n [=] nmult (x[+]y) n.
Proof.
 intro; induction n; simpl in |- *; intros.
  algebra.
 astepr (x[+]y[+](nmult x n[+]nmult y n)).
 astepr (x[+](y[+](nmult x n[+]nmult y n))).
 astepr (x[+](y[+]nmult x n[+]nmult y n)).
 astepr (x[+](nmult x n[+]y[+]nmult y n)).
 Step_final (x[+](nmult x n[+](y[+]nmult y n))).
Qed.

Hint Resolve nmult_wd nmult_Zero nmult_inv nmult_plus nmult_plus': algebra.

Definition zmult a z := caseZ_diff z (fun n m => nmult a n[-]nmult a m).

Lemma zmult_char : forall (m n:nat) z, z = (m - n)%Z ->
 forall x, zmult x z [=] nmult x m[-]nmult x n.
Proof.
 simple induction z; intros.
   simpl in |- *.
   replace m with n.
Step_final ([0]:G).
auto with zarith.
    simpl in |- *.
  astepl (nmult x (nat_of_P p)).
  apply cg_cancel_rht with (nmult x n).
  astepr (nmult x m).
  astepl (nmult x (nat_of_P p + n)).
  apply nmult_wd; algebra.
  rewrite <- convert_is_POS in H.
  auto with zarith.
 simpl in |- *.
 astepl [--](nmult x (nat_of_P p)).
 unfold cg_minus in |- *.
 astepr ([--][--](nmult x m)[+] [--](nmult x n)).
 astepr [--]([--](nmult x m)[+]nmult x n).
 apply un_op_wd_unfolded.
 apply cg_cancel_lft with (nmult x m).
 astepr (nmult x m[+] [--](nmult x m)[+]nmult x n).
 astepr ([0][+]nmult x n).
 astepr (nmult x n).
 astepl (nmult x (m + nat_of_P p)).
 apply nmult_wd; algebra.
 rewrite <- min_convert_is_NEG in H.
 auto with zarith.
Qed.

Lemma zmult_wd : forall (x y:G) (n m:Z), (x [=] y) -> n = m -> zmult x n [=] zmult y m.
Proof.
 do 3 intro.
 case n; intros; inversion H0.
   algebra.
  unfold zmult in |- *.
  simpl in |- *.
  astepl (nmult x (nat_of_P p)); Step_final (nmult y (nat_of_P p)).
 simpl in |- *.
 astepl [--](nmult x (nat_of_P p)).
 Step_final [--](nmult y (nat_of_P p)).
Qed.

Lemma zmult_one : forall x:G, zmult x 1 [=] x.
Proof.
 simpl in |- *; algebra.
Qed.

Lemma zmult_min_one : forall x:G, zmult x (-1) [=] [--]x.
Proof.
 intros; simpl in |- *; Step_final ([0][-]x).
Qed.

Lemma zmult_zero : forall x:G, zmult x 0 [=] [0].
Proof.
 simpl in |- *; algebra.
Qed.

Lemma zmult_Zero : forall k:Z, zmult [0] k [=] [0].
Proof.
 intro; induction k; simpl in |- *.
   algebra.
  Step_final (([0]:G)[-][0]).
 Step_final (([0]:G)[-][0]).
Qed.

Hint Resolve zmult_zero: algebra.

Lemma zmult_plus : forall m n x, zmult x m[+]zmult x n [=] zmult x (m + n).
Proof.
 intros; case m; case n; intros.
         simpl in |- *; Step_final ([0][+]([0][-][0]):G).
        simpl in |- *; Step_final ([0][+](nmult x (nat_of_P p)[-][0])).
       simpl in |- *; Step_final ([0][+]([0][-]nmult x (nat_of_P p))).
      simpl in |- *; Step_final (nmult x (nat_of_P p)[-][0][+][0]).
     simpl in |- *.
     astepl (nmult x (nat_of_P p0)[+]nmult x (nat_of_P p)).
     astepr (nmult x (nat_of_P (p0 + p))).
     rewrite nat_of_P_plus_morphism.
apply nmult_plus.
     simpl (zmult x (Zpos p0)[+]zmult x (Zneg p)) in |- *.
    astepl (nmult x (nat_of_P p0)[+] [--](nmult x (nat_of_P p))).
    astepl (nmult x (nat_of_P p0)[-]nmult x (nat_of_P p)).
    apply eq_symmetric_unfolded; apply zmult_char with (z := (Zpos p0 + Zneg p)%Z).
    rewrite convert_is_POS.
unfold Zminus in |- *.
rewrite min_convert_is_NEG; auto.
    rewrite <- Zplus_0_r_reverse.
Step_final (zmult x (Zneg p)[+][0]).
   simpl (zmult x (Zneg p0)[+]zmult x (Zpos p)) in |- *.
  astepl ([--](nmult x (nat_of_P p0))[+]nmult x (nat_of_P p)).
  astepl (nmult x (nat_of_P p)[+] [--](nmult x (nat_of_P p0))).
  astepl (nmult x (nat_of_P p)[-]nmult x (nat_of_P p0)).
  rewrite Zplus_comm.
  apply eq_symmetric_unfolded; apply zmult_char with (z := (Zpos p + Zneg p0)%Z).
  rewrite convert_is_POS.
unfold Zminus in |- *.
rewrite min_convert_is_NEG; auto.
  simpl in |- *.
 astepl ([--](nmult x (nat_of_P p0))[+] [--](nmult x (nat_of_P p))).
 astepl [--](nmult x (nat_of_P p0)[+]nmult x (nat_of_P p)).
 astepr [--](nmult x (nat_of_P (p0 + p))).
 apply un_op_wd_unfolded.
 rewrite nat_of_P_plus_morphism.
apply nmult_plus.
Qed.

Lemma zmult_mult : forall m n x, zmult (zmult x m) n [=] zmult x (m * n).
Proof.
 simple induction m; simple induction n; simpl in |- *; intros.
         Step_final ([0][-][0][+]([0]:G)).
        astepr ([0]:G).
astepl (nmult ([0][-][0]) (nat_of_P p)).
        Step_final (nmult [0] (nat_of_P p)).
       astepr [--]([0]:G).
astepl [--](nmult ([0][-][0]) (nat_of_P p)).
       Step_final [--](nmult [0] (nat_of_P p)).
      algebra.
     astepr (nmult x (nat_of_P (p * p0))).
     astepl (nmult (nmult x (nat_of_P p)) (nat_of_P p0)[-][0]).
     astepl (nmult (nmult x (nat_of_P p)) (nat_of_P p0)).
     rewrite nat_of_P_mult_morphism.
apply nmult_mult.
     astepr [--](nmult x (nat_of_P (p * p0))).
    astepl ([0][-]nmult (nmult x (nat_of_P p)) (nat_of_P p0)).
    astepl [--](nmult (nmult x (nat_of_P p)) (nat_of_P p0)).
    rewrite nat_of_P_mult_morphism.
apply un_op_wd_unfolded.
apply nmult_mult.
    algebra.
  astepr [--](nmult x (nat_of_P (p * p0))).
  astepl (nmult [--](nmult x (nat_of_P p)) (nat_of_P p0)[-][0]).
  astepl (nmult [--](nmult x (nat_of_P p)) (nat_of_P p0)).
  rewrite nat_of_P_mult_morphism.
eapply eq_transitive_unfolded.
  apply nmult_inv.
apply un_op_wd_unfolded.
apply nmult_mult.
  astepr (nmult x (nat_of_P (p * p0))).
 astepr [--][--](nmult x (nat_of_P (p * p0))).
 astepl ([0][-]nmult [--](nmult x (nat_of_P p)) (nat_of_P p0)).
 astepl [--](nmult [--](nmult x (nat_of_P p)) (nat_of_P p0)).
 rewrite nat_of_P_mult_morphism.
apply un_op_wd_unfolded.
eapply eq_transitive_unfolded.
 apply nmult_inv.
apply un_op_wd_unfolded.
apply nmult_mult.
Qed.

Lemma zmult_plus' : forall z x y, zmult x z[+]zmult y z [=] zmult (x[+]y) z.
Proof.
 intro z; pattern z in |- *.
 apply nats_Z_ind.
  intro n; case n.
   intros; simpl in |- *.
Step_final (([0]:G)[+]([0][-][0])).
   clear n; intros.
  rewrite POS_anti_convert; simpl in |- *.
set (p := nat_of_P (P_of_succ_nat n)) in *.
  astepl (nmult x p[+]nmult y p).
Step_final (nmult (x[+]y) p).
  intro n; case n.
  intros; simpl in |- *.
Step_final (([0]:G)[+]([0][-][0])).
  clear n; intros.
 rewrite NEG_anti_convert; simpl in |- *.
set (p := nat_of_P (P_of_succ_nat n)) in *.
 astepl ([--](nmult x p)[+] [--](nmult y p)).
astepr [--](nmult (x[+]y) p).
 Step_final [--](nmult x p[+]nmult y p).
Qed.

End Group_Extras.

#[global]
Hint Resolve nmult_wd nmult_one nmult_Zero nmult_plus nmult_inv nmult_mult
  nmult_plus' zmult_wd zmult_one zmult_min_one zmult_zero zmult_Zero
  zmult_plus zmult_mult zmult_plus': algebra.

Arguments nmult [G].
Arguments zmult [G].

End CAbGroups.

End CoRN_DOT_algebra_DOT_CAbGroups_WRAPPED.
Module Export CoRN_DOT_algebra_DOT_CAbGroups.
Module Export CoRN.
Module Export algebra.
Module CAbGroups.
Include CoRN_DOT_algebra_DOT_CAbGroups_WRAPPED.CAbGroups.
End CAbGroups.

End algebra.

End CoRN.

End CoRN_DOT_algebra_DOT_CAbGroups.
Export CoRN.algebra.CAbGroups.

Definition distributive S (mult plus : CSetoid_bin_op S) :=
  forall x y z, mult x (plus y z) [=] plus (mult x y) (mult x z).

Arguments distributive [S].

Record is_CRing (G : CAbGroup) (One : G) (mult : CSetoid_bin_op G) : CProp :=
  {ax_mult_assoc : associative mult;
   ax_mult_mon   : is_CMonoid (Build_CSemiGroup G mult ax_mult_assoc) One;
   ax_mult_com   : commutes mult;
   ax_dist       : distributive mult csg_op;
   ax_non_triv   : One [#] [0]}.

Record CRing : Type :=
  {cr_crr   : CAbGroup;
   cr_one   :  cr_crr;
   cr_mult  :  CSetoid_bin_op cr_crr;
   cr_proof :  is_CRing cr_crr cr_one cr_mult}.

Notation "[1]" := (cr_one _).
  Coercion cr_crr : CRing >-> CAbGroup.

Arguments cr_mult {c}.
Infix "[*]" := cr_mult (at level 40, left associativity).

Section exponentiation.

Variable R : CRing.
Fixpoint nexp (m : nat) : R -> R.
Admitted.

Lemma nexp_strong_ext : forall n, fun_strext (nexp n).
Admitted.

Definition nexp_op n := Build_CSetoid_un_op R (nexp n) (nexp_strong_ext n).

End exponentiation.

Notation "x [^] n" := (nexp_op _ n x) (at level 20).

Section nat_injection.

Variable R : CRing.
Fixpoint nring (m : nat) : R.
Admitted.

End nat_injection.

Arguments nring [R].

Notation Two := (nring 2).
Notation Four := (nring 4).

Section int_injection.

Variable R : CRing.
Definition zring (z : Z) : R.
Admitted.

End int_injection.

Arguments zring [R].

Section CRing_Ops.

Variable R : CRing.

Variables F G : PartFunct R.

Variable n : nat.

Lemma part_function_nth_strext : forall x y Hx Hy, F x Hx[^]n [#] F y Hy[^]n -> x [#] y.
Print Options.
admit.
Print Options.
Defined.

Definition Fnth := Build_PartFunct R _ (dom_wd R F)
 (fun x Hx => F x Hx[^]n) part_function_nth_strext.
Print Options.

End CRing_Ops.

Arguments Fnth [R].
Infix "{^}" := Fnth (at level 30, right associativity).
Definition is_CField (R : CRing) (cf_rcpcl : forall x : R, x [#] [0] -> R) : Prop.
Admitted.

Record CField : Type :=
  {cf_crr   :> CRing;
   cf_rcpcl :  forall x : cf_crr, x [#] [0] -> cf_crr;
   cf_proof :  is_CField cf_crr cf_rcpcl;
   cf_rcpsx :  forall x y x_ y_, cf_rcpcl x x_ [#] cf_rcpcl y y_ -> x [#] y}.

Definition f_rcpcl' (F : CField) : PartFunct F.
 apply Build_PartFunct with (fun x : F => x [#] [0]) (cf_rcpcl F).
Print Options.
  red in |- *; intros; astepl x.
Print Options.
auto.
Print Options.
  exact (cf_rcpsx F).
Print Options.
Defined.

Definition f_rcpcl F x x_ := f_rcpcl' F x x_.

Arguments f_rcpcl [F].

Definition cf_div (F : CField) (x y : F) y_ : F := x[*]f_rcpcl y y_.

Arguments cf_div [F].
Notation "x [/] y [//] Hy" := (cf_div x y Hy) (at level 80).

Section CField_Ops.

Variable X : CField.

Variables F G : PartFunct X.
Let Q := Dom G.

Let R := extend Q (fun x Hx => G x Hx [#] [0]).

Let Ext2R := ext2 (S:=X) (P:=Q) (R:=fun x Hx => G x Hx [#] [0]).

Lemma part_function_recip_strext : forall x y Hx Hy,
 ([1][/] _[//]Ext2R x Hx) [#] ([1][/] _[//]Ext2R y Hy) -> x [#] y.
Print Options.
admit.
Print Options.
Defined.

Lemma part_function_recip_pred_wd : pred_wd X R.
admit.
Print Options.
Defined.

Definition Frecip := Build_PartFunct X _ part_function_recip_pred_wd
 (fun x Hx => [1][/] _[//]Ext2R x Hx) part_function_recip_strext.
Print Options.

End CField_Ops.

Arguments Frecip [X].
Notation "{1/} x" := (Frecip x) (at level 4, right associativity).

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

Lemma Qopp_strext : fun_strext (S1:=Q_as_CSetoid) (S2:=Q_as_CSetoid) Qopp.
Admitted.

Definition Qopp_is_fun := Build_CSetoid_fun _ _ _ Qopp_strext.

Lemma Qmult_strext1 : bin_fun_strext Q_as_CSetoid Q_as_CSetoid Q_as_CSetoid Qmult.
Admitted.

Definition Qmult_is_bin_fun := Build_CSetoid_bin_fun _ _ _ _ Qmult_strext1.

Lemma Qlt_strext : Crel_strext Q_as_CSetoid Qlt.
Admitted.

Definition Qlt_is_CSetoid_relation := Build_CCSetoid_relation _ _ Qlt_strext.
Export CoRN.algebra.CSetoids.

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

Arguments cof_leEq {c}.
Infix "[<=]" := cof_leEq (at level 70, no associativity).

Definition default_greater (X:CField) (lt:CCSetoid_relation X) : CCSetoid_relation X.
 exists (fun x y => lt y x).
Print Options.
 destruct lt.
Print Options.
 unfold Crel_strext in *.
Print Options.
 intros.
Print Options.
 pose (Ccsr_strext _ y2 _ x2 X0).
Print Options.
 tauto.
Print Options.
Defined.
Definition default_grEq (X:CField) (le:Relation X) : Relation X.
exact ((fun x y => (le y x))).
Print Options.
Defined.

Section infinity_of_cordfields.

Variable R : COrdField.

Lemma four_ap_zero : Four [#] ([0]:R).
Admitted.

End infinity_of_cordfields.
Notation " x [/]FourNZ" := (x[/] Four[//]four_ap_zero _) (at level 20).
Print Options.

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
Print Options.

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
Print Options.
Admitted.

Lemma Min_leEq_rht : forall x y : IR, Min x y [<=] y.
Print Options.
Admitted.

Variables a b : IR.

Lemma Min_leEq_Max : Min a b [<=] Max a b.
Print Options.
Admitted.

End Minimum.
Definition AbsIR : CSetoid_un_op IR.
Admitted.

Definition compact (a b : IR) (Hab : a [<=] b) (x : IR) := a [<=] x and x [<=] b.
Print Options.

Notation Compact := (compact _ _).

Section Definitions_and_Basic_Results.

Variables a b : IR.
Hypothesis Hab : a [<=] b.
Print Options.

Let I := Compact Hab.

Variable F : PartIR.

Let P := Dom F.

Definition Continuous_I := included I P and (forall e, [0] [<] e -> {d : IR | [0] [<] d |
 forall x y, I x -> I y -> forall Hx Hy, AbsIR (x[-]y) [<=] d -> AbsIR (F x Hx[-]F y Hy) [<=] e}).
Print Options.

End Definitions_and_Basic_Results.

Arguments Continuous_I [a b].

Section Integral.

Variables a b : IR.
Hypothesis Hab : a [<=] b.
Print Options.

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
Print Options.

End Functions.

Section Definitions.

Variables a b : IR.
Hypothesis Hab : Min a b [<=] Max a b.
Print Options.
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
Print Options.
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
