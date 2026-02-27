
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/corn" "CoRN" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Bignums" "Bignums" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/HB" "HB" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/MathClasses" "MathClasses" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi" "elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_elpi" "elpi_elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_examples" "elpi_examples" "-top" "CoRN.reals.fast.CRpi_fast") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 362 lines to 68 lines, then from 80 lines to 1074 lines, then from 1081 lines to 78 lines, then from 89 lines to 1725 lines, then from 1732 lines to 96 lines, then from 108 lines to 1195 lines, then from 1202 lines to 99 lines, then from 110 lines to 1587 lines, then from 1594 lines to 117 lines, then from 129 lines to 896 lines, then from 903 lines to 120 lines, then from 131 lines to 1147 lines, then from 1154 lines to 132 lines, then from 143 lines to 1154 lines, then from 1161 lines to 144 lines, then from 155 lines to 1086 lines, then from 1093 lines to 156 lines, then from 167 lines to 1191 lines, then from 1198 lines to 214 lines, then from 225 lines to 1320 lines, then from 1327 lines to 357 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 0.888 sec
   Expected coqc peak memory usage on this file: 514620.0 kb *)









Require CoRN.tactics.DiffTactics1.
Require CoRN.tactics.Step.
Require Corelib.BinNums.IntDef.
Require Corelib.Program.Tactics.
Require Corelib.Classes.Equivalence.
Require Corelib.Classes.Morphisms.
Require Corelib.Classes.RelationClasses.
Require Corelib.BinNums.PosDef.
Require Corelib.Classes.SetoidTactics.
Require Corelib.Setoids.Setoid.
Require Corelib.Lists.ListDef.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Numbers.BinNums.
Require Corelib.Init.Sumbool.
Require Corelib.Init.Wf.
Require Corelib.Program.Utils.
Require Corelib.Init.Ltac.
Require Corelib.BinNums.NatDef.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Program.Basics.
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
Require Stdlib.BinNums.PosDef.
Require Stdlib.BinNums.NatDef.
Require Stdlib.BinNums.IntDef.
Require Stdlib.Classes.SetoidTactics.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Classes.Equivalence.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.DecidableClass.
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
Require CoRN.model.totalorder.QMinMax.
Require CoRN.ftc.Integral.
Require CoRN.ftc.MoreFunctions.
Axiom proof_admitted : False.
Tactic Notation "admit" := abstract case proof_admitted.

Export CoRN.ftc.Integral.
Export CoRN.ftc.MoreFunctions.

Section Lemmas.

End Lemmas.

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

Section Properties_of_Integral.

End Properties_of_Integral.

Section More_Properties.



End More_Properties.

Section Corollaries.

End Corollaries.
Module Export CoRN_DOT_ftc_DOT_MoreIntegrals.
Module Export CoRN.
Module Export ftc.
Module Export MoreIntegrals.
End MoreIntegrals.

End ftc.

End CoRN.

End CoRN_DOT_ftc_DOT_MoreIntegrals.

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

Section Compact.

End Compact.

Section General.

End General.

Section Limit_of_Derivative_Seq.

End Limit_of_Derivative_Seq.

Section Derivative_Series.

End Derivative_Series.
Module Export CoRN_DOT_ftc_DOT_FTC.
Module Export CoRN.
Module Export ftc.
Module Export FTC.
End FTC.

End ftc.

End CoRN.

End CoRN_DOT_ftc_DOT_FTC.
Export CoRN.ftc.FTC.
Module Export CoRN_DOT_transc_DOT_PowerSeries.
Module Export CoRN.
Module Export transc.
Module Export PowerSeries.
End PowerSeries.

End transc.

End CoRN.

End CoRN_DOT_transc_DOT_PowerSeries.
Export CoRN.transc.PowerSeries.
Module Export CoRN_DOT_transc_DOT_TaylorSeries.
Module Export CoRN.
Module Export transc.
Module Export TaylorSeries.
End TaylorSeries.

End transc.

End CoRN.

End CoRN_DOT_transc_DOT_TaylorSeries.
Export CoRN.transc.TaylorSeries.
Module Export CoRN_DOT_transc_DOT_Trigonometric.
Module Export CoRN.
Module Export transc.
Module Export Trigonometric.
End Trigonometric.

End transc.

End CoRN.

End CoRN_DOT_transc_DOT_Trigonometric.
Export CoRN.transc.Trigonometric.
Module Export SinCos.
End SinCos.
Fixpoint pi_seq (n : nat) : IR.
Admitted.

Lemma pi_seq_Cauchy : Cauchy_prop pi_seq.
Admitted.

Definition Pi := Two[*]Lim (Build_CauchySeq _ _ pi_seq_Cauchy).
Module Export CoRN_DOT_transc_DOT_Pi.
Module Export CoRN.
Module Export transc.
Module Export Pi.
End Pi.

End transc.

End CoRN.

End CoRN_DOT_transc_DOT_Pi.
Export CoRN.transc.Pi.
Module Export TrigMon.
End TrigMon.

Lemma ArcTan_def_lemma : Continuous realline {1/} ( [-C-][1]{+}FId{^}2).
Admitted.

Definition ArcTang := ( [-S-]ArcTan_def_lemma) [0] I.

Definition ArcTan (x : IR) := ArcTang x I.
Module Export CoRN_DOT_transc_DOT_InvTrigonom.
Module Export CoRN.
Module Export transc.
Module Export InvTrigonom.
End InvTrigonom.

End transc.

End CoRN.

End CoRN_DOT_transc_DOT_InvTrigonom.
Export CoRN.transc.InvTrigonom.
Module Export CoRN.
Module Export transc.
Module Export MoreArcTan.
End MoreArcTan.

End transc.

End CoRN.
Import CoRN.model.totalorder.QMinMax.
Import CoRN.transc.MoreArcTan.
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
