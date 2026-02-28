
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/corn" "CoRN" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Bignums" "Bignums" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/HB" "HB" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/MathClasses" "MathClasses" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi" "elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_elpi" "elpi_elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_examples" "elpi_examples" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 362 lines to 68 lines, then from 80 lines to 1074 lines, then from 1081 lines to 78 lines, then from 89 lines to 1725 lines, then from 1732 lines to 96 lines, then from 108 lines to 1195 lines, then from 1202 lines to 99 lines, then from 110 lines to 1587 lines, then from 1594 lines to 117 lines, then from 129 lines to 896 lines, then from 903 lines to 120 lines, then from 131 lines to 1147 lines, then from 1154 lines to 132 lines, then from 143 lines to 1154 lines, then from 1161 lines to 144 lines, then from 155 lines to 1086 lines, then from 1093 lines to 156 lines, then from 167 lines to 1191 lines, then from 1198 lines to 214 lines, then from 225 lines to 1320 lines, then from 1327 lines to 357 lines, then from 362 lines to 135 lines, then from 147 lines to 1975 lines, then from 1982 lines to 145 lines, then from 156 lines to 1770 lines, then from 1777 lines to 210 lines, then from 221 lines to 2049 lines, then from 2056 lines to 242 lines, then from 253 lines to 1745 lines, then from 1752 lines to 244 lines, then from 255 lines to 1816 lines, then from 1823 lines to 259 lines, then from 271 lines to 1478 lines, then from 1485 lines to 296 lines, then from 307 lines to 1721 lines, then from 1728 lines to 315 lines, then from 327 lines to 1175 lines, then from 1182 lines to 317 lines, then from 329 lines to 1252 lines, then from 1258 lines to 346 lines, then from 357 lines to 1685 lines, then from 1692 lines to 555 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 0.890 sec
   Expected coqc peak memory usage on this file: 508664.0 kb *)









Require CoRN.tactics.Step.
Require Corelib.Init.Wf.
Require Corelib.Init.Sumbool.
Require Corelib.BinNums.PosDef.
Require Corelib.Numbers.BinNums.
Require Corelib.Init.Ltac.
Require Corelib.Classes.SetoidTactics.
Require Corelib.Program.Utils.
Require Corelib.BinNums.NatDef.
Require Corelib.Lists.ListDef.
Require Corelib.Program.Tactics.
Require Corelib.Program.Basics.
Require Corelib.Setoids.Setoid.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Classes.Equivalence.
Require Corelib.BinNums.IntDef.
Require Corelib.Classes.RelationClasses.
Require Corelib.Program.Wf.
Require Corelib.Classes.Morphisms.
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
Require Stdlib.BinNums.PosDef.
Require Stdlib.BinNums.IntDef.
Require Stdlib.BinNums.NatDef.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.SetoidTactics.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Classes.Morphisms.
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
Require MathClasses.implementations.ne_list.
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
Require CoRN.model.totalorder.QMinMax.
Require CoRN.reals.RealLists.
Axiom proof_admitted : False.
Tactic Notation "admit" := abstract case proof_admitted.
Module Export Intervals.
Export CoRN.reals.RealLists.



Definition compact (a b : IR) (Hab : a [<=] b) (x : IR) := a [<=] x and x [<=] b.

End Intervals.

Notation Compact := (compact _ _).

Section More_Intervals.

End More_Intervals.

Section Totally_Bounded.

End Totally_Bounded.

Section Compact.

End Compact.
Module Export CoRN_DOT_reals_DOT_Intervals.
Module Export CoRN.
Module Export reals.
Module Export Intervals.
End Intervals.

End reals.

End CoRN.

End CoRN_DOT_reals_DOT_Intervals.
Export CoRN.reals.Intervals.

Section Feq_Equivalence.

End Feq_Equivalence.

Section Operations.

End Operations.

Section Nth_Power.

End Nth_Power.

Section Strong_Nth_Power.

End Strong_Nth_Power.
Module Export CoRN_DOT_ftc_DOT_PartFunEquality.
Module Export CoRN.
Module Export ftc.
Module Export PartFunEquality.
End PartFunEquality.

End ftc.

End CoRN.

End CoRN_DOT_ftc_DOT_PartFunEquality.
Export CoRN.ftc.PartFunEquality.
Module Export FunctSums.
End FunctSums.

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
Module Export Continuity.
End Continuity.

Section Refinements.

End Refinements.

Section Getting_Points.

End Getting_Points.

Section Lemmas.

End Lemmas.

Section Even_Partitions.

End Even_Partitions.

Section More_Definitions.

End More_Definitions.

Section Sep_Partitions.

End Sep_Partitions.
Module Export CoRN_DOT_ftc_DOT_Partitions.
Module Export CoRN.
Module Export ftc.
Module Export Partitions.
End Partitions.

End ftc.

End CoRN.

End CoRN_DOT_ftc_DOT_Partitions.
Export CoRN.ftc.Partitions.

Section Separating_Partition.

End Separating_Partition.
Module Export CoRN_DOT_ftc_DOT_RefSeparating.
Module Export CoRN.
Module Export ftc.
Module Export RefSeparating.
End RefSeparating.

End ftc.

End CoRN.

End CoRN_DOT_ftc_DOT_RefSeparating.
Export CoRN.ftc.RefSeparating.
Module Export RefLemma.
End RefLemma.

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

Section Partition_Join.

End Partition_Join.
Module Export CoRN_DOT_ftc_DOT_Integral.
Module Export CoRN.
Module Export ftc.
Module Export Integral.
End Integral.

End ftc.

End CoRN.

End CoRN_DOT_ftc_DOT_Integral.

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

Section Single_Compact_Interval.

End Single_Compact_Interval.

Section Proper_Compact_with_One_or_Two_Points.

End Proper_Compact_with_One_or_Two_Points.

Section Functions.
Variable I : interval.

Definition Continuous F := included I (Dom F) and (forall a b (Hab : a [<=] b),
 included (Compact Hab) I -> Continuous_I Hab F).

End Functions.

Section Reflexivity_Properties.

End Reflexivity_Properties.

Section Lemmas.

End Lemmas.
Module Export CoRN_DOT_ftc_DOT_MoreIntervals.
Module Export CoRN.
Module Export ftc.
Module Export MoreIntervals.
End MoreIntervals.

End ftc.

End CoRN.

End CoRN_DOT_ftc_DOT_MoreIntervals.
Export CoRN.ftc.MoreIntervals.
Module Export CoRN.
Module Export ftc.
Module Export MoreFunctions.
End MoreFunctions.

End ftc.

End CoRN.
Export CoRN.ftc.Integral.
Export CoRN.ftc.MoreFunctions.

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
