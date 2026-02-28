
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/corn" "CoRN" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Bignums" "Bignums" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/HB" "HB" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/MathClasses" "MathClasses" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi" "elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_elpi" "elpi_elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_examples" "elpi_examples" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 362 lines to 68 lines, then from 80 lines to 1074 lines, then from 1081 lines to 78 lines, then from 89 lines to 1725 lines, then from 1732 lines to 96 lines, then from 108 lines to 1195 lines, then from 1202 lines to 99 lines, then from 110 lines to 1587 lines, then from 1594 lines to 117 lines, then from 129 lines to 896 lines, then from 903 lines to 120 lines, then from 131 lines to 1147 lines, then from 1154 lines to 132 lines, then from 143 lines to 1154 lines, then from 1161 lines to 144 lines, then from 155 lines to 1086 lines, then from 1093 lines to 156 lines, then from 167 lines to 1191 lines, then from 1198 lines to 214 lines, then from 225 lines to 1320 lines, then from 1327 lines to 357 lines, then from 362 lines to 135 lines, then from 147 lines to 1975 lines, then from 1982 lines to 145 lines, then from 156 lines to 1770 lines, then from 1777 lines to 210 lines, then from 221 lines to 2049 lines, then from 2056 lines to 242 lines, then from 253 lines to 1745 lines, then from 1752 lines to 244 lines, then from 255 lines to 1816 lines, then from 1823 lines to 259 lines, then from 271 lines to 1478 lines, then from 1485 lines to 296 lines, then from 307 lines to 1721 lines, then from 1728 lines to 315 lines, then from 327 lines to 1175 lines, then from 1182 lines to 317 lines, then from 329 lines to 1252 lines, then from 1258 lines to 346 lines, then from 357 lines to 1685 lines, then from 1692 lines to 555 lines, then from 563 lines to 210 lines, then from 222 lines to 972 lines, then from 978 lines to 220 lines, then from 231 lines to 1055 lines, then from 1062 lines to 248 lines, then from 259 lines to 2033 lines, then from 2038 lines to 311 lines, then from 322 lines to 1621 lines, then from 1627 lines to 331 lines, then from 342 lines to 1683 lines, then from 1690 lines to 368 lines, then from 379 lines to 730 lines, then from 737 lines to 384 lines, then from 395 lines to 750 lines, then from 757 lines to 410 lines, then from 421 lines to 763 lines, then from 770 lines to 418 lines, then from 429 lines to 840 lines, then from 847 lines to 426 lines, then from 437 lines to 767 lines, then from 774 lines to 447 lines, then from 458 lines to 780 lines, then from 787 lines to 455 lines, then from 466 lines to 812 lines, then from 819 lines to 469 lines, then from 480 lines to 1590 lines, then from 1596 lines to 594 lines, then from 604 lines to 310 lines, then from 322 lines to 646 lines, then from 653 lines to 333 lines, then from 344 lines to 1365 lines, then from 1372 lines to 357 lines, then from 368 lines to 680 lines, then from 687 lines to 375 lines, then from 386 lines to 1323 lines, then from 1327 lines to 1009 lines, then from 1020 lines to 2472 lines, then from 2478 lines to 1095 lines, then from 1106 lines to 3016 lines, then from 3017 lines to 2780 lines, then from 2791 lines to 3122 lines, then from 3129 lines to 2998 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 3.924 sec
   Expected coqc peak memory usage on this file: 2243060.0 kb *)









Require CoRN.tactics.Step.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Lists.ListDef.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Classes.Equivalence.
Require Corelib.BinNums.PosDef.
Require Corelib.Classes.RelationClasses.
Require Corelib.Numbers.BinNums.
Require Corelib.BinNums.NatDef.
Require Corelib.Program.Basics.
Require Corelib.Init.Ltac.
Require Corelib.Classes.SetoidTactics.
Require Corelib.BinNums.IntDef.
Require Corelib.Classes.Morphisms.
Require Corelib.Program.Utils.
Require Corelib.Init.Wf.
Require Corelib.Program.Tactics.
Require Corelib.Init.Sumbool.
Require Corelib.Setoids.Setoid.
Require Corelib.Program.Wf.
Require MathClasses.theory.CoqStreams.
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
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.DecidableClass.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Classes.SetoidTactics.
Require Stdlib.Classes.Equivalence.
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
Require CoRN.model.totalorder.QMinMax.
Require CoRN.tactics.FieldReflection.
Require CoRN.model.setoids.Qsetoid.
Axiom proof_admitted : False.
Tactic Notation "admit" := abstract case proof_admitted.

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
Proof.
 elim COrdField_is_COrdField; auto.
Qed.

Lemma mult_resp_pos : forall x y : F, [0] [<] x -> [0] [<] y -> [0] [<] x[*]y.
Proof.
 elim COrdField_is_COrdField; auto.
Qed.

Lemma less_conf_ap : forall x y : F, Iff (x [#] y) (x [<] y or y [<] x).
Proof.
 elim COrdField_is_COrdField; auto.
Qed.

Lemma leEq_def : forall x y : F, (x [<=] y) <-> (Not (y [<] x)).
Proof.
 elim COrdField_is_COrdField; auto.
Qed.

Lemma greater_def : forall x y : F, Iff (x [>] y) (y [<] x).
Proof.
 elim COrdField_is_COrdField; auto.
Qed.

Lemma grEq_def : forall x y : F, (x [>=] y) <-> (y [<=] x).
Proof.
 elim COrdField_is_COrdField; auto.
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
Proof.
 intros x y H.
 elim (less_conf_ap _ x y); intros.
 apply b.
left.
auto.
Qed.

Lemma Greater_imp_ap : forall x y : R, y [<] x -> x [#] y.
Proof.
 intros x y H.
 elim (less_conf_ap _ x y); intros.
 apply b.
right.
auto.
Qed.

Lemma ap_imp_less : forall x y : R, x [#] y -> x [<] y or y [<] x.
Proof.
 intros x y.
 elim (less_conf_ap _ x y); auto.
Qed.

Lemma less_cotransitive : cotransitive (cof_less (c:=R)).
Proof.
 red in |- *.
 intros x y H z.
 generalize (less_imp_ap _ _ H); intro H0.
 elim (ap_cotransitive_unfolded _ _ _ H0 z); intro H1.
  elim (ap_imp_less _ _ H1).
   auto.
  intro H2.
  right.
  apply (less_transitive_unfolded _ _ _ _ H2 H).
 elim (ap_imp_less _ _ H1).
  auto.
 intro H2.
 left.
 apply (less_transitive_unfolded _ _ _ _ H H2).
Qed.

Lemma less_cotransitive_unfolded : forall x y : R, x [<] y -> forall z, x [<] z or z [<] y.
Proof less_cotransitive.

Lemma pos_ap_zero : forall x : R, [0] [<] x -> x [#] [0].
Proof.
 intros x H.
 apply Greater_imp_ap.
 assumption.
Defined.

Lemma leEq_not_eq : forall x y : R, x [<=] y -> x [#] y -> x [<] y.
Proof.
 intros x y H H0.
 elim (ap_imp_less _ _ H0); intro H1; auto.
 rewrite -> leEq_def in H.
 elim (H H1).
Qed.

End OrdField_basics.

Section Basic_Properties_of_leEq.

Variable R : COrdField.

Lemma leEq_wdr : forall x y z : R, x [<=] y -> y [=] z -> x [<=] z.
Proof.
 intros x y z H H0.
 rewrite -> leEq_def in *.
 intro H1.
 apply H.
 astepl z; assumption.
Qed.

Lemma leEq_wdl : forall x y z : R, x [<=] y -> x [=] z -> z [<=] y.
Proof.
 intros x y z H H0.
 rewrite -> leEq_def in *.
 intro H1.
 apply H.
 astepr z;auto.
Qed.

Lemma leEq_reflexive : forall x : R, x [<=] x.
Proof.
 intro x.
 rewrite -> leEq_def.
 apply less_irreflexive_unfolded.
Qed.

Declare Left Step leEq_wdl.
Declare Right Step leEq_wdr.

Lemma eq_imp_leEq : forall x y : R, x [=] y -> x [<=] y.
Proof.
 intros x y H.
 astepr x.
 exact (leEq_reflexive _).
Qed.

Lemma leEq_imp_eq : forall x y : R, x [<=] y -> y [<=] x -> x [=] y.
Proof.
 intros x y H H0.
rewrite -> leEq_def in *|-.
 apply not_ap_imp_eq.
intro H1.
apply H0.
 elim (ap_imp_less _ _ _ H1); intro H2.
auto.
  elim (H H2).
Qed.

Lemma lt_equiv_imp_eq : forall x x' : R,
 (forall y, x [<] y -> x' [<] y) -> (forall y, x' [<] y -> x [<] y) -> x [=] x'.
Proof.
 intros x x' H H0.
 apply leEq_imp_eq; rewrite -> leEq_def in |- *; intro H1.
  apply (less_irreflexive_unfolded _ x); auto.
 apply (less_irreflexive_unfolded _ x'); auto.
Qed.

Lemma less_leEq_trans : forall x y z : R, x [<] y -> y [<=] z -> x [<] z.
Proof.
 intros x y z.
 intros H H0.
 elim (less_cotransitive_unfolded _ _ _ H z); intro H1.
  assumption.
 destruct (leEq_def _ y z).
 elim ((H2 H0) H1).
Qed.

Lemma leEq_less_trans : forall x y z : R, x [<=] y -> y [<] z -> x [<] z.
Proof.
 intros x y z.
 intros H H0.
 elim (less_cotransitive_unfolded _ _ _ H0 x); intro H1; try assumption.
 destruct (leEq_def _ x y) as [H2 H3].
 elim ((H2 H) H1).
Qed.

Lemma leEq_transitive : forall x y z : R, x [<=] y -> y [<=] z -> x [<=] z.
Proof.
 intros x y z.
 repeat rewrite -> leEq_def.
 intros H H0 H1.
 apply H.
 apply leEq_less_trans with (y := z); firstorder using leEq_def.
Qed.

Lemma less_leEq : forall x y : R, x [<] y -> x [<=] y.
Proof.
 intros.
 rewrite -> leEq_def.
 apply less_antisymmetric_unfolded.
 assumption.
Qed.

Lemma leEq_or_leEq : forall x y:R, Not (Not (x[<=]y or y[<=]x)).
Proof.
 intros x y H.
 apply H.
 right.
 rewrite -> leEq_def.
 intros H0.
 apply H.
 left.
 apply less_leEq.
 assumption.
Qed.

Lemma leEq_less_or_equal : forall x y:R, x[<=]y -> Not (Not (x[<]y or x[=]y)).
Proof.
 intros x y Hxy H.
revert Hxy.
 rewrite -> leEq_def.
intro Hxy.
apply H.
 right.
 apply (not_ap_imp_eq).
 intros H0.
 destruct (ap_imp_less _ _ _ H0).
  apply H.
  left.
  assumption.
 apply Hxy.
 assumption.
Qed.

End Basic_Properties_of_leEq.

#[global]
Hint Resolve less_leEq : algebra.

Declare Left Step leEq_wdl.
Declare Right Step leEq_wdr.

Section infinity_of_cordfields.

Variable R : COrdField.

Lemma pos_one : ([0]:R) [<] [1].
Proof.

 elim (ap_imp_less _ _ _ (ring_non_triv R)).
  2: auto.
 intro H.
 exfalso.
 apply (less_irreflexive_unfolded R [1]).
 apply less_transitive_unfolded with ([0]:R).
  auto.

 cut (([0]:R) [<] [--][1]).
  2: astepl (([1]:R)[+][--][1]).
  2: astepr (([0]:R)[+][--][1]).
  2: apply plus_resp_less_rht; auto.
 intro H0.

 rstepr ([--]([1]:R)[*][--][1]).
 apply (mult_resp_pos _ _ _ H0 H0).
Qed.

Lemma nring_less_succ : forall m : nat, (nring m:R) [<] nring (S m).
Proof.
 intro m.
 simpl in |- *.
 astepr ([1][+]nring (R:=R) m).
 astepl ([0][+]nring (R:=R) m).
 apply plus_resp_less_rht.
 apply pos_one.
Qed.

Lemma nring_less : forall m n : nat, m < n -> (nring m:R) [<] nring n.
Proof.
 intros m n H.
 generalize (toCProp_lt _ _ H); intro H0.
 elim H0.
  apply nring_less_succ.
 clear H0 H n; intros n H H0.
 apply less_transitive_unfolded with (nring (R:=R) n).
  assumption.
 apply nring_less_succ.
Qed.

Lemma nring_leEq : forall m n : nat, m <= n -> (nring m:R) [<=] nring n.
Proof.
 intros m n H.
 elim (le_lt_eq_dec _ _ H); intro H1.
  rewrite -> leEq_def in |- *.
apply less_antisymmetric_unfolded.
  apply nring_less.
auto.
  rewrite H1.
 rewrite -> leEq_def in |- *.
apply less_irreflexive_unfolded.
Qed.

Lemma nring_apart : forall m n : nat, m <> n -> (nring m:R) [#] nring n.
Proof.
 intros m n H.
 elim (lt_eq_lt_dec m n); intro H0.
  elim H0; intro H1.
   apply less_imp_ap.
   apply nring_less.
   assumption.
  elim (H H1).
 apply Greater_imp_ap.
 apply nring_less.
 assumption.
Qed.

Lemma nring_ap_zero : forall n : nat, n <> 0 -> nring (R:=R) n [#] [0].
Proof.
 intros n H.
 exact (nring_apart _ _ H).
Qed.

Lemma nring_ap_zero' : forall n : nat, 0 <> n -> nring (R:=R) n [#] [0].
Proof.
 intros.
 apply nring_ap_zero; auto.
Qed.

Lemma nring_ap_zero_imp : forall n : nat, nring (R:=R) n [#] [0] -> 0 <> n.
Proof.
 intros n H.
 induction  n as [| n Hrecn].
  simpl in H.
  elim (ap_irreflexive_unfolded _ _ H).
 apply O_S.
Qed.

Definition Snring (n : nat) := nring (R:=R) (S n).

Load "Transparent_algebra".

Lemma pos_Snring : forall n : nat, ([0]:R) [<] Snring n.
Proof.
 intro n.
 apply less_leEq_trans with ([1]:R).
  apply pos_one.
 stepl (nring (R:=R) 1).
2: simpl in |- *; algebra.
  unfold Snring in |- *.
 apply nring_leEq.
 auto with arith.
Qed.

Lemma nringS_ap_zero : forall m : nat, nring (R:=R) (S m) [#] [0].
Proof.
 intros.
 apply pos_ap_zero.
 exact (pos_Snring m).
Qed.

Lemma nring_fac_ap_zero : forall n : nat, nring (R:=R) (fact n) [#] [0].
Proof.
 intro n; apply nring_ap_zero.
cut (0 < fact n).
 lia.
 apply lt_O_fact.
Qed.

Load "Opaque_algebra".

Section up_to_four.

Lemma less_plusOne : forall x : R, x [<] x[+][1].
Proof.

 intros x.
 astepl ([0][+]x); astepr ([1][+]x).
 apply plus_resp_less_rht.
 exact pos_one.
Qed.

Lemma zero_lt_posplus1 : forall x : R, [0] [<=] x -> [0] [<] x[+][1].
Proof.
 intros x zltx.
 apply leEq_less_trans with x.
  assumption.
 exact (less_plusOne x).
Qed.

Lemma plus_one_ext_less : forall x y : R, x [<] y -> x [<] y[+][1].
Proof.

 intros x y H.
 apply less_leEq_trans with y.
  assumption.
 apply less_leEq; apply less_plusOne.
Qed.

Lemma one_less_two : ([1]:R) [<] Two.
Proof.
 simpl in |- *.
 astepr (([1]:R)[+][1]).
 apply less_plusOne.
Qed.

Lemma two_less_three : (Two:R) [<] Three.
Proof.
 simpl in |- *.
 apply less_plusOne.
Qed.

Lemma three_less_four : (Three:R) [<] Four.
Proof.
 simpl in |- *.
 apply less_plusOne.
Qed.

Lemma pos_two : ([0]:R) [<] Two.
Proof.
 apply less_leEq_trans with ([1]:R).
  exact pos_one.
 apply less_leEq; exact one_less_two.
Qed.

Lemma one_less_three : ([1]:R) [<] Three.
Proof.
 apply less_leEq_trans with (Two:R).
  exact one_less_two.
 apply less_leEq; exact two_less_three.
Qed.

Lemma two_less_four : (Two:R) [<] Four.
Proof.
 apply less_leEq_trans with (Three:R).
  exact two_less_three.
 apply less_leEq; exact three_less_four.
Qed.

Lemma pos_three : ([0]:R) [<] Three.
Proof.
 apply less_leEq_trans with ([1]:R).
  exact pos_one.
 apply less_leEq; exact one_less_three.
Qed.

Lemma one_less_four : ([1]:R) [<] Four.
Proof.
 apply less_leEq_trans with (Three:R).
  exact one_less_three.
 apply less_leEq; exact three_less_four.
Qed.

Lemma pos_four : ([0]:R) [<] Four.
Proof.
 apply less_leEq_trans with ([1]:R).
  exact pos_one.
 apply less_leEq; exact one_less_four.
Qed.

Lemma two_ap_zero : Two [#] ([0]:R).
Proof.
 apply pos_ap_zero.
 apply pos_two.
Qed.

Lemma three_ap_zero : Three [#] ([0]:R).
Proof.
 apply pos_ap_zero.
 apply pos_three.
Qed.

Lemma four_ap_zero : Four [#] ([0]:R).
Proof.
 apply pos_ap_zero.
 apply pos_four.
Qed.

End up_to_four.

Section More_than_four.

Lemma pos_six : ([0]:R) [<] Six.
Proof.
 exact (pos_Snring 5).
Qed.

Lemma pos_eight : ([0]:R) [<] Eight.
Proof.
 exact (pos_Snring 7).
Qed.

Lemma pos_nine : ([0]:R) [<] Nine.
Proof.
 exact (pos_Snring 8).
Qed.

Lemma pos_twelve : ([0]:R) [<] Twelve.
Proof.
 exact (pos_Snring 11).
Qed.

Lemma pos_sixteen : ([0]:R) [<] Sixteen.
Proof.
 exact (pos_Snring 15).
Qed.

Lemma pos_eighteen : ([0]:R) [<] Eighteen.
Proof.
 exact (pos_Snring 17).
Qed.

Lemma pos_twentyfour : ([0]:R) [<] TwentyFour.
Proof.
 exact (pos_Snring 23).
Qed.

Lemma pos_fortyeight : ([0]:R) [<] FortyEight.
Proof.
 exact (pos_Snring 47).
Qed.

Lemma six_ap_zero : Six [#] ([0]:R).
Proof.
 apply pos_ap_zero; apply pos_six.
Qed.

Lemma eight_ap_zero : Eight [#] ([0]:R).
Proof.
 apply pos_ap_zero; apply pos_eight.
Qed.

Lemma nine_ap_zero : Nine [#] ([0]:R).
Proof.
 apply pos_ap_zero; apply pos_nine.
Qed.

Lemma twelve_ap_zero : Twelve [#] ([0]:R).
Proof.
 apply pos_ap_zero; apply pos_twelve.
Qed.

Lemma sixteen_ap_zero : Sixteen [#] ([0]:R).
Proof.
 apply pos_ap_zero; apply pos_sixteen.
Qed.

Lemma eighteen_ap_zero : Eighteen [#] ([0]:R).
Proof.
 apply pos_ap_zero; apply pos_eighteen.
Qed.

Lemma twentyfour_ap_zero : TwentyFour [#] ([0]:R).
Proof.
 apply pos_ap_zero; apply pos_twentyfour.
Qed.

Lemma fortyeight_ap_zero : FortyEight [#] ([0]:R).
Proof.
 apply pos_ap_zero; apply pos_fortyeight.
Qed.

End More_than_four.

End infinity_of_cordfields.

#[global]
Hint Resolve pos_one : algebra.

Declare Left Step leEq_wdl.
Declare Right Step leEq_wdr.

Notation " x [/]OneNZ" := (x[/] [1][//]ring_non_triv _) (at level 20).
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

Module Export CoRN_DOT_algebra_DOT_COrdAbs_WRAPPED.
Module Export COrdAbs.
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
Proof.
 intros.
 astepl ([0][+]x[*]y).
apply shift_plus_leEq.
 apply leEq_transitive with ((C[+]x)[*](C[-]y)).
  apply mult_resp_nonneg.
   apply shift_leEq_plus.
astepl ([--]x).
astepr ([--][--]C).
   apply inv_resp_leEq.
auto.
   apply shift_leEq_minus.
astepl y.
auto.
  rstepl (C[^]2[-]x[*]y[+]C[*](x[-]y)).
 rstepr (C[^]2[-]x[*]y[+]C[*](C[-][--]C)).
 apply plus_resp_leEq_lft.
 apply mult_resp_leEq_lft.
  apply minus_resp_leEq_both.
   auto.
auto.
auto.
Qed.

Lemma mult_AbsSmall_rht : forall x y X Y : R, [0] [<=] X ->
 [0] [<=] Y -> [--]X [<=] x -> x [<=] X -> [--]Y [<=] y -> y [<=] Y -> x[*]y [<=] X[*]Y.
Proof.
 intros.
 rewrite -> leEq_def.
 intro.
 cut ([0] [<] x[*]y); intros.
  2: apply leEq_less_trans with (X[*]Y); auto.
 rewrite -> leEq_def in *.
 cut (x[*]y [#] [0]); intros.
  2: apply pos_ap_zero; auto.
 cut (x [#] [0]); intros.
  2: apply mult_cancel_ap_zero_lft with y; auto.
 elim (ap_imp_less _ _ _ X3); intro.
  cut (y [<] [0]); intros.
   2: astepl ([--][--]y); astepr ([--]([0]:R)); apply inv_resp_less.
   2: apply mult_cancel_pos_rht with ([--]x).
    2: astepr (x[*]y); auto.
   2: astepl ([--]([0]:R)); apply less_leEq; apply inv_resp_less; auto.
  apply (less_irreflexive_unfolded R [1]).
  apply leEq_less_trans with (X[*]Y[/] _[//]X2).
   rstepr ((X[/] [--]x[//]inv_resp_ap_zero _ _ X3)[*]
     (Y[/] [--]y[//]inv_resp_ap_zero _ _ (less_imp_ap _ _ _ X4))).
   astepl ([1][*]([1]:R)).
   apply mult_resp_leEq_both.
      apply less_leEq; apply pos_one.
     apply less_leEq; apply pos_one.
    apply shift_leEq_div.
     astepl ([--]([0]:R)); apply inv_resp_less; auto.
    astepl ([--]x); astepr ([--][--]X); apply inv_resp_leEq; firstorder using leEq_def.
   apply shift_leEq_div.
    astepl ([--]([0]:R)); apply inv_resp_less; auto.
   astepl ([--]y); astepr ([--][--]Y); apply inv_resp_leEq; firstorder using leEq_def.
  apply shift_div_less; auto.
  astepr (x[*]y); auto.
 cut ([0] [<] y); intros.
  2: apply mult_cancel_pos_rht with x; try apply less_leEq; auto.
 apply (less_irreflexive_unfolded R [1]).
 apply leEq_less_trans with (X[*]Y[/] _[//]X2).
  rstepr ((X[/] x[//]X3)[*](Y[/] y[//]pos_ap_zero _ _ X4)).
  astepl ([1][*]([1]:R)).
  apply mult_resp_leEq_both.
     apply less_leEq; apply pos_one.
    apply less_leEq; apply pos_one.
   apply shift_leEq_div; auto.
   astepl x; firstorder using leEq_def.
  apply shift_leEq_div; auto.
  astepl y; firstorder using leEq_def.
 apply shift_div_less; auto.
 astepr (x[*]y); firstorder using leEq_def.
Qed.

Lemma mult_AbsSmall_lft : forall x y X Y : R, [0] [<=] X -> [0] [<=] Y ->
 [--]X [<=] x -> x [<=] X -> [--]Y [<=] y -> y [<=] Y -> [--](X[*]Y) [<=] x[*]y.
Proof.
 intros.
 rstepr ([--]([--]x[*]y)).
 apply inv_resp_leEq.
 apply mult_AbsSmall_rht; auto.
  apply inv_resp_leEq.
auto.
  rstepr ([--][--]X).
 apply inv_resp_leEq.
auto.
Qed.

Lemma mult_AbsSmall : forall x y X Y : R,
 AbsSmall X x -> AbsSmall Y y -> AbsSmall (X[*]Y) (x[*]y).
Proof.
 unfold AbsSmall in |- *.
 intros.
 elim H.
intros.
elim H0.
intros.
 cut ([0] [<=] X).
intro.
cut ([0] [<=] Y).
intro.
  split.
    apply mult_AbsSmall_lft; auto.
   apply mult_AbsSmall_rht; auto.
  apply AbsSmall_nonneg with y; auto.
 apply AbsSmall_nonneg with x; auto.
Qed.

End AbsSmall_properties.

Declare Left Step AbsSmall_wdl_unfolded.
Declare Right Step AbsSmall_wdr_unfolded.

Definition absBig (R : COrdField) (e x : R) : CProp :=
 [0] [<] e and (e [<=] x or x [<=] [--]e).

Notation AbsBig := (absBig _).

Lemma AbsBigSmall_minus : forall (R : COrdField) (e1 e2 x1 x2 : R),
 e2 [<] e1 -> AbsBig e1 x1 -> AbsSmall e2 x2 -> AbsBig (e1[-]e2) (x1[-]x2).
Proof.
 intros.
 unfold absBig in |- *.
 split.
  apply plus_cancel_less with (z := e2).
  rstepl e2.
  rstepr e1.
  assumption.
 unfold absBig in X0.
 elim X0.
 intros H2 H3.
 case H3.
  intro H4.
  left.
  unfold AbsSmall in H.
  elim H.
  intros.
  rstepl (e1[+][--]e2).
  rstepr (x1[+][--]x2).
  apply plus_resp_leEq_both.
   assumption.
  apply inv_cancel_leEq.
  rstepl x2.
  rstepr e2.
  assumption.
 intro H4.
 right.
 unfold AbsSmall in H.
 elim H.
 intros H5 H6.
 rstepr ([--]e1[+]e2).
 rstepl (x1[+][--]x2).
 apply plus_resp_leEq_both.
  assumption.
 apply inv_cancel_leEq.
 rstepr x2.
 rstepl ([--]e2).
 assumption.
Qed.

Section absBig_wd_properties.

Variable R : COrdField.

Lemma AbsBig_wdr : Crel_wdr R AbsBig.
Proof.
 red in |- *.
 intros.
 unfold absBig in |- *.
 unfold absBig in H.
 elim X.
 intros H1 H2.
 split.
  assumption.
 case H2.
  intro H3.
  left.
  apply leEq_wdr with y.
   assumption.
  assumption.
 intro H3.
 right.
 apply leEq_wdl with y.
  assumption.
 assumption.
Qed.

Lemma AbsBig_wdl : Crel_wdl R AbsBig.
Proof.
 red in |- *.
 unfold absBig in |- *.
 intros.
 elim X.
 intros H1 H2.
 split.
  astepr x.
  assumption.
 case H2.
  intro H3.
  left.
  astepl x.
  assumption.
 intro H3.
 right.
 astepr ([--]x).
 assumption.
Qed.

Lemma AbsBig_wdr_unfolded : forall x y z : R, AbsBig x y -> y [=] z -> AbsBig x z.
Proof AbsBig_wdr.

Lemma AbsBig_wdl_unfolded : forall x y z : R, AbsBig x y -> x [=] z -> AbsBig z y.
Proof AbsBig_wdl.

End absBig_wd_properties.

Declare Left Step AbsBig_wdl_unfolded.
Declare Right Step AbsBig_wdr_unfolded.

Add Parametric Morphism c : (@AbsSmall c) with signature (@cs_eq (cof_crr c)) ==> (@cs_eq c) ==> iff as AbsSmall_morph_wd.
Proof with try assumption.
 intros x1 x2 xeq y1 y2 yeq.
 split; intro H.
  stepr y1...
  stepl x1...
 symmetry in xeq, yeq.
 stepr y2...
 stepl x2...
Qed.

End COrdAbs.

End CoRN_DOT_algebra_DOT_COrdAbs_WRAPPED.
Module Export CoRN_DOT_algebra_DOT_COrdAbs.
Module Export CoRN.
Module Export algebra.
Module COrdAbs.
Include CoRN_DOT_algebra_DOT_COrdAbs_WRAPPED.COrdAbs.
End COrdAbs.

End algebra.

End CoRN.

End CoRN_DOT_algebra_DOT_COrdAbs.
Export CoRN.model.setoids.Qsetoid.
Import CoRN.algebra.CSemiGroups.

Definition Q_as_CSemiGroup := Build_CSemiGroup _ Qplus_is_bin_fun Qplus_is_assoc.
Export CoRN.algebra.COrdAbs.

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
