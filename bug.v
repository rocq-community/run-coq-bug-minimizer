
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/corn" "CoRN" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Bignums" "Bignums" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/HB" "HB" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/MathClasses" "MathClasses" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi" "elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_elpi" "elpi_elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_examples" "elpi_examples" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 362 lines to 68 lines, then from 80 lines to 1074 lines, then from 1081 lines to 78 lines, then from 89 lines to 1725 lines, then from 1732 lines to 96 lines, then from 108 lines to 1195 lines, then from 1202 lines to 99 lines, then from 110 lines to 1587 lines, then from 1594 lines to 117 lines, then from 129 lines to 896 lines, then from 903 lines to 120 lines, then from 131 lines to 1147 lines, then from 1154 lines to 132 lines, then from 143 lines to 1154 lines, then from 1161 lines to 144 lines, then from 155 lines to 1086 lines, then from 1093 lines to 156 lines, then from 167 lines to 1191 lines, then from 1198 lines to 214 lines, then from 225 lines to 1320 lines, then from 1327 lines to 357 lines, then from 362 lines to 135 lines, then from 147 lines to 1975 lines, then from 1982 lines to 145 lines, then from 156 lines to 1770 lines, then from 1777 lines to 210 lines, then from 221 lines to 2049 lines, then from 2056 lines to 242 lines, then from 253 lines to 1745 lines, then from 1752 lines to 244 lines, then from 255 lines to 1816 lines, then from 1823 lines to 259 lines, then from 271 lines to 1478 lines, then from 1485 lines to 296 lines, then from 307 lines to 1721 lines, then from 1728 lines to 315 lines, then from 327 lines to 1175 lines, then from 1182 lines to 317 lines, then from 329 lines to 1252 lines, then from 1258 lines to 346 lines, then from 357 lines to 1685 lines, then from 1692 lines to 555 lines, then from 563 lines to 210 lines, then from 222 lines to 972 lines, then from 978 lines to 220 lines, then from 231 lines to 1055 lines, then from 1062 lines to 248 lines, then from 259 lines to 2033 lines, then from 2038 lines to 311 lines, then from 322 lines to 1621 lines, then from 1627 lines to 331 lines, then from 342 lines to 1683 lines, then from 1690 lines to 368 lines, then from 379 lines to 730 lines, then from 737 lines to 384 lines, then from 395 lines to 750 lines, then from 757 lines to 410 lines, then from 421 lines to 763 lines, then from 770 lines to 418 lines, then from 429 lines to 840 lines, then from 847 lines to 426 lines, then from 437 lines to 767 lines, then from 774 lines to 447 lines, then from 458 lines to 780 lines, then from 787 lines to 455 lines, then from 466 lines to 812 lines, then from 819 lines to 469 lines, then from 480 lines to 1590 lines, then from 1596 lines to 594 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 0.953 sec
   Expected coqc peak memory usage on this file: 502764.0 kb *)









Require CoRN.tactics.Step.
Require Corelib.BinNums.PosDef.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Program.Wf.
Require Corelib.Program.Tactics.
Require Corelib.BinNums.NatDef.
Require Corelib.Classes.Morphisms.
Require Corelib.Init.Ltac.
Require Corelib.Lists.ListDef.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.BinNums.IntDef.
Require Corelib.Init.Sumbool.
Require Corelib.Classes.SetoidTactics.
Require Corelib.Init.Wf.
Require Corelib.Setoids.Setoid.
Require Corelib.Program.Utils.
Require Corelib.Classes.Equivalence.
Require Corelib.Program.Basics.
Require Corelib.Numbers.BinNums.
Require Corelib.Classes.RelationClasses.
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
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.SetoidTactics.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.Equivalence.
Require Stdlib.Classes.RelationClasses.
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
Require CoRN.model.totalorder.QMinMax.
Require CoRN.model.semigroups.Qsemigroup.
Require CoRN.reals.CReals.
Axiom proof_admitted : False.
Tactic Notation "admit" := abstract case proof_admitted.
Export CoRN.reals.CReals.

Section R_CReals.

End R_CReals.
Module Export CoRN_DOT_reals_DOT_Cauchy_CReals.
Module Export CoRN.
Module Export reals.
Module Export Cauchy_CReals.
End Cauchy_CReals.

End reals.

End CoRN.

End CoRN_DOT_reals_DOT_Cauchy_CReals.
Export CoRN.model.semigroups.Qsemigroup.

Lemma ZEROQ_as_rht_unit3 : is_rht_unit (S:=Q_as_CSetoid) Qplus_is_bin_fun 0.
Admitted.

Lemma ZEROQ_as_lft_unit3 : is_lft_unit (S:=Q_as_CSetoid) Qplus_is_bin_fun 0.
Admitted.

Definition Q_is_CMonoid := Build_is_CMonoid
 Q_as_CSemiGroup _ ZEROQ_as_rht_unit3 ZEROQ_as_lft_unit3.

Definition Q_as_CMonoid := Build_CMonoid Q_as_CSemiGroup _ Q_is_CMonoid.
Module Export Qmonoid.
End Qmonoid.
Import CoRN.algebra.CGroups.

Lemma Q_is_CGroup : is_CGroup Q_as_CMonoid Qopp_is_fun.
Admitted.

Definition Q_as_CGroup := Build_CGroup Q_as_CMonoid Qopp_is_fun Q_is_CGroup.
Module Export Qgroup.
End Qgroup.
Import CoRN.algebra.CAbGroups.

Lemma Q_is_CAbGroup : is_CAbGroup Q_as_CGroup.
Admitted.

Definition Q_as_CAbGroup := Build_CAbGroup Q_as_CGroup Q_is_CAbGroup.
Module Export CoRN_DOT_model_DOT_abgroups_DOT_Qabgroup.
Module Export CoRN.
Module Export model.
Module Export abgroups.
Module Export Qabgroup.
End Qabgroup.

End abgroups.

End model.

End CoRN.

End CoRN_DOT_model_DOT_abgroups_DOT_Qabgroup.
Export CoRN.model.abgroups.Qabgroup.
Import CoRN.algebra.CRings.

Definition Q_is_CRing : is_CRing Q_as_CAbGroup 1 Qmult_is_bin_fun.
Admitted.

Definition Q_as_CRing := Build_CRing _ _ _ Q_is_CRing.
Module Export Qring.
End Qring.
Import CoRN.algebra.CFields.

Lemma Q_is_CField : is_CField Q_as_CRing Qinv_dep.
Admitted.

Definition Q_as_CField := Build_CField _ _ Q_is_CField Qinv_strext.
Module Export Qfield.
End Qfield.
Import CoRN.algebra.COrdFields.

Definition Qlt_is_strict_order := Build_strictorder
 Qlt_trans Qlt_is_antisymmetric_unfolded.

Definition Q_is_COrdField := Build_is_COrdField Q_as_CField
 Qlt_is_CSetoid_relation Qle (default_greater Q_as_CField Qlt_is_CSetoid_relation)
 (default_grEq Q_as_CField Qle) Qlt_is_strict_order (fun x y E z => proj2 (Qplus_lt_l x y z) E)
 Qmult_lt_0_compat Qlt_gives_apartness Qle_is_not_lt Qgt_is_lt Qge_is_not_gt.

Definition Q_as_COrdField := Build_COrdField _ _ _ _ _ Q_is_COrdField.
Module Export CoRN_DOT_model_DOT_ordfields_DOT_Qordfield.
Module Export CoRN.
Module Export model.
Module Export ordfields.
Module Export Qordfield.
End Qordfield.

End ordfields.

End model.

End CoRN.

End CoRN_DOT_model_DOT_ordfields_DOT_Qordfield.
Export CoRN.model.ordfields.Qordfield.
Export CoRN.reals.Cauchy_CReals.
Module Export CoRN_DOT_model_DOT_reals_DOT_Cauchy_IR.
Module Export CoRN.
Module Export model.
Module Export reals.
Module Export Cauchy_IR.
End Cauchy_IR.

End reals.

End model.

End CoRN.

End CoRN_DOT_model_DOT_reals_DOT_Cauchy_IR.

Definition IR : CReals.
Admitted.

Notation PartIR := (PartFunct IR).

Section CReals_axioms.

End CReals_axioms.

Section Cauchy_Defs.

End Cauchy_Defs.

Section Inequalities.

End Inequalities.

Section Equiv_Cauchy.

End Equiv_Cauchy.

Section Cauchy_props.

End Cauchy_props.
Module Export CoRN_DOT_reals_DOT_CauchySeq.
Module Export CoRN.
Module Export reals.
Module Export CauchySeq.
End CauchySeq.

End reals.

End CoRN.

End CoRN_DOT_reals_DOT_CauchySeq.
Export CoRN.model.reals.Cauchy_IR.

Section Rational_sequence_prelogue.

Variable R1 : CReals.

Local Coercion nat_of_P : positive >-> nat.

Lemma den_is_nonzero : forall x : Q_as_COrdField, nring (R:=R1) (Qden x) [#] [0].
Admitted.

Definition inj_Q : Q_as_COrdField -> R1.
Proof.
 intro x.
 case x.
 intros num0 den0.
 exact (zring num0[/]nring (R:=R1) den0[//]den_is_nonzero (Qmake num0 den0)).
Defined.

End Rational_sequence_prelogue.
Module Export Q_in_CReals.
End Q_in_CReals.
Export CoRN.reals.CauchySeq.

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

Section SeqMax.

End SeqMax.

Section Part_Function_Max.

End Part_Function_Max.

Section Part_Function_Abs.

End Part_Function_Abs.

Section Inclusion.

End Inclusion.
Module Export CoRN_DOT_reals_DOT_Max_AbsIR.
Module Export CoRN.
Module Export reals.
Module Export Max_AbsIR.
End Max_AbsIR.

End reals.

End CoRN.

End CoRN_DOT_reals_DOT_Max_AbsIR.
Export CoRN.reals.Max_AbsIR.

Section More_Cauchy_Props.

End More_Cauchy_Props.

Section Subsequences.

End Subsequences.

Section Cauchy_Subsequences.

End Cauchy_Subsequences.

Section Properties_of_Exponentiation.

End Properties_of_Exponentiation.
Module Export CoRN_DOT_reals_DOT_CReals1.
Module Export CoRN.
Module Export reals.
Module Export CReals1.
End CReals1.

End reals.

End CoRN.

End CoRN_DOT_reals_DOT_CReals1.
Export CoRN.reals.CReals1.
Module Export CoRN.
Module Export reals.
Module Export RealLists.
End RealLists.

End reals.

End CoRN.
Export CoRN.reals.RealLists.

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
Proof.
  apply iprop_wd.
 exact Fprim_strext.
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
Proof.
 intros x Hx.
 induction n.
  right.
 admit.
 simpl.
 destruct (IHn) as [H|H].
  left; constructor.
 set (y:=(iter_nat n Q (f x) 0)) in *.
 destruct (Qlt_le_dec_fast 1 y) as [_|Y0].
  left; constructor.
 destruct (Qlt_le_dec_fast y (-(1))) as [_|Y1].
  left; constructor.
 destruct (Qeq_dec (1-x*y) 0) as [_|Y2].
  left; constructor.
 right.
 admit.
Defined.

Lemma reflect_right : forall A B (x:{A}+{B}), (match x with left _ => False | right _ => True end) -> B.
Admitted.

Lemma Pi_Formula :
(((nring 44)[*]ArcTan (inj_Q IR (1 /  57%Z))[-]
  (nring 12)[*]ArcTan (inj_Q IR (1 / 682%Z))[+]
  (nring  7)[*]ArcTan (inj_Q IR (1 / 239%Z))[+]
  (nring 24)[*]ArcTan (inj_Q IR (1 / 12943%Z)))[=]
 Pi[/]FourNZ).
Proof.
 assert (H0:-(1) <= (1/(57%Z)) <= 1).
  split; discriminate.
 assert (H1:-(1) <= (1/(239%Z)) <= 1).
  split; discriminate.
 assert (H2:-(1) <= (1/(682%Z)) <= 1).
  split; discriminate.
 assert (H3:-(1) <= (1/(12943%Z)) <= 1).
  split; discriminate.
 set (y0:=(iter_nat 44 _ (f (1/57%Z)) 0)).
 set (y1:=(iter_nat 7 _ (f (1/239%Z)) 0)).
 set (y2:=(iter_nat 12 _ (f (1/682%Z)) 0)).
 set (y3:=(iter_nat 24 _ (f (1/12943%Z)) 0)).
 rstepl (nring 44[*]ArcTan (inj_Q IR (1 / 57%Z))[+]
   [--](nring 12[*]ArcTan (inj_Q IR (1 / 682%Z)))[+]
     (nring 7[*]ArcTan (inj_Q IR (1 / 239%Z))[+]
       nring 24[*]ArcTan (inj_Q IR (1 / 12943%Z)))).
 csetoid_replace ((nring 44)[*]ArcTan (inj_Q IR (1 / 57%Z)))
   (ArcTan (inj_Q IR y0)); [|apply: (reflect_right (ArcTan_multiple H0 44)); now vm_compute].
