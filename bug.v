
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-notation-overridden" "-w" "-redundant-canonical-projection" "-w" "-notation-incompatible-prefix" "-w" "-deprecated-from-Coq" "-w" "-deprecated-dirpath-Coq" "-w" "-deprecated-native-compiler-option" "-native-compiler" "ondemand" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_build_ci/iris/iris" "iris" "-Q" "/github/workspace/builds/coq/coq-failing/_build_ci/iris/iris_heap_lang" "iris.heap_lang" "-Q" "/github/workspace/builds/coq/coq-failing/_build_ci/iris/iris_unstable" "iris.unstable" "-Q" "/github/workspace/builds/coq/coq-failing/_build_ci/iris/iris_deprecated" "iris.deprecated" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Autosubst" "Autosubst" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/stdpp" "stdpp" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 204 lines to 32 lines, then from 45 lines to 651 lines, then from 657 lines to 31 lines, then from 44 lines to 706 lines, then from 712 lines to 58 lines, then from 71 lines to 654 lines, then from 660 lines to 77 lines, then from 90 lines to 482 lines, then from 488 lines to 104 lines, then from 117 lines to 987 lines, then from 990 lines to 132 lines, then from 145 lines to 702 lines, then from 708 lines to 148 lines, then from 161 lines to 1079 lines, then from 1085 lines to 175 lines, then from 188 lines to 735 lines, then from 736 lines to 195 lines, then from 208 lines to 591 lines, then from 597 lines to 197 lines, then from 210 lines to 923 lines, then from 929 lines to 201 lines, then from 214 lines to 587 lines, then from 593 lines to 206 lines, then from 219 lines to 899 lines, then from 905 lines to 219 lines, then from 232 lines to 1231 lines, then from 1237 lines to 236 lines, then from 249 lines to 1215 lines, then from 1221 lines to 248 lines, then from 261 lines to 791 lines, then from 797 lines to 261 lines, then from 274 lines to 586 lines, then from 592 lines to 539 lines, then from 547 lines to 146 lines, then from 159 lines to 826 lines, then from 832 lines to 186 lines, then from 199 lines to 1392 lines, then from 1397 lines to 319 lines, then from 332 lines to 845 lines, then from 851 lines to 321 lines, then from 334 lines to 940 lines, then from 946 lines to 372 lines, then from 385 lines to 753 lines, then from 759 lines to 387 lines, then from 400 lines to 882 lines, then from 888 lines to 398 lines, then from 411 lines to 1223 lines, then from 1229 lines to 476 lines, then from 489 lines to 1045 lines, then from 1051 lines to 488 lines, then from 501 lines to 2017 lines, then from 2023 lines to 506 lines, then from 519 lines to 3085 lines, then from 3090 lines to 1575 lines, then from 1588 lines to 1874 lines, then from 1880 lines to 1637 lines, then from 1650 lines to 1881 lines, then from 1887 lines to 1646 lines, then from 1659 lines to 2056 lines, then from 2062 lines to 1838 lines, then from 1847 lines to 1582 lines, then from 1595 lines to 2082 lines, then from 2088 lines to 1737 lines, then from 1750 lines to 2091 lines, then from 2097 lines to 1774 lines, then from 1787 lines to 2175 lines, then from 2181 lines to 1877 lines, then from 1890 lines to 2291 lines, then from 2297 lines to 1926 lines, then from 1939 lines to 2311 lines, then from 2317 lines to 1928 lines, then from 1941 lines to 3575 lines, then from 3581 lines to 2352 lines, then from 2365 lines to 2805 lines, then from 2811 lines to 2358 lines, then from 2371 lines to 2758 lines, then from 2764 lines to 2381 lines, then from 2394 lines to 2799 lines, then from 2805 lines to 2444 lines, then from 2457 lines to 3620 lines, then from 3626 lines to 2610 lines, then from 2623 lines to 3023 lines, then from 3029 lines to 2612 lines, then from 2625 lines to 3639 lines, then from 3644 lines to 3038 lines, then from 3034 lines to 2591 lines, then from 2604 lines to 2735 lines, then from 2741 lines to 2612 lines, then from 2625 lines to 3086 lines, then from 3092 lines to 2663 lines, then from 2676 lines to 2732 lines, then from 2738 lines to 2681 lines, then from 2694 lines to 2724 lines, then from 2730 lines to 2694 lines, then from 2707 lines to 2743 lines, then from 2749 lines to 2706 lines, then from 2719 lines to 2750 lines, then from 2756 lines to 2717 lines, then from 2730 lines to 3394 lines, then from 3401 lines to 2731 lines, then from 2745 lines to 2868 lines, then from 2874 lines to 2746 lines, then from 2760 lines to 2816 lines, then from 2823 lines to 2751 lines, then from 2765 lines to 3567 lines, then from 3574 lines to 2766 lines, then from 2780 lines to 3375 lines, then from 3382 lines to 2771 lines, then from 2785 lines to 3275 lines, then from 3282 lines to 3100 lines, then from 3107 lines to 2756 lines, then from 2769 lines to 3160 lines, then from 3167 lines to 2770 lines, then from 2784 lines to 3082 lines, then from 3089 lines to 2783 lines, then from 2797 lines to 3468 lines, then from 3475 lines to 2785 lines, then from 2799 lines to 3753 lines, then from 3760 lines to 2851 lines, then from 2865 lines to 3684 lines, then from 3691 lines to 2871 lines, then from 2885 lines to 3846 lines, then from 3853 lines to 2873 lines, then from 2887 lines to 3477 lines, then from 3484 lines to 2876 lines, then from 2890 lines to 3327 lines, then from 3334 lines to 2925 lines, then from 2944 lines to 2856 lines, then from 2871 lines to 2858 lines, then from 2872 lines to 2856 lines, then from 2869 lines to 6474 lines, then from 6481 lines to 2873 lines, then from 2882 lines to 2863 lines, then from 2876 lines to 3627 lines, then from 3634 lines to 2872 lines, then from 2886 lines to 4897 lines, then from 4904 lines to 2904 lines, then from 2918 lines to 3219 lines, then from 3226 lines to 2919 lines, then from 2933 lines to 3323 lines, then from 3330 lines to 2973 lines, then from 2987 lines to 3755 lines, then from 3762 lines to 3170 lines, then from 3184 lines to 3391 lines, then from 3397 lines to 3217 lines, then from 3231 lines to 3614 lines, then from 3621 lines to 3243 lines, then from 3257 lines to 4364 lines, then from 4371 lines to 3246 lines, then from 3260 lines to 3765 lines, then from 3772 lines to 3258 lines, then from 3277 lines to 3167 lines, then from 3180 lines to 3709 lines, then from 3716 lines to 3194 lines, then from 3208 lines to 3727 lines, then from 3734 lines to 3199 lines, then from 3213 lines to 5472 lines, then from 5479 lines to 3470 lines, then from 3484 lines to 4779 lines, then from 4786 lines to 3496 lines, then from 3510 lines to 3815 lines, then from 3822 lines to 3506 lines, then from 3520 lines to 6150 lines, then from 6157 lines to 3700 lines, then from 3687 lines to 3583 lines, then from 3596 lines to 4232 lines, then from 4239 lines to 3636 lines, then from 3650 lines to 3902 lines, then from 3909 lines to 3635 lines, then from 3649 lines to 4815 lines, then from 4822 lines to 3636 lines, then from 3650 lines to 3906 lines, then from 3913 lines to 3645 lines, then from 3659 lines to 3673 lines, then from 3680 lines to 3653 lines, then from 3667 lines to 3921 lines, then from 3928 lines to 3661 lines, then from 3675 lines to 4684 lines, then from 4691 lines to 3700 lines, then from 3714 lines to 4365 lines, then from 4372 lines to 3702 lines, then from 3716 lines to 4097 lines, then from 4104 lines to 3717 lines, then from 3731 lines to 4459 lines, then from 4466 lines to 3895 lines, then from 3900 lines to 3665 lines, then from 3678 lines to 4074 lines, then from 4081 lines to 3664 lines, then from 3678 lines to 4045 lines, then from 4052 lines to 3665 lines, then from 3679 lines to 4116 lines, then from 4123 lines to 3710 lines, then from 3724 lines to 4412 lines, then from 4418 lines to 3736 lines, then from 3750 lines to 4512 lines, then from 4519 lines to 3738 lines, then from 3752 lines to 4132 lines, then from 4139 lines to 3761 lines, then from 3775 lines to 5073 lines, then from 5080 lines to 3768 lines, then from 3782 lines to 3796 lines, then from 3803 lines to 3781 lines, then from 3795 lines to 5455 lines, then from 5457 lines to 3802 lines, then from 3816 lines to 4085 lines, then from 4092 lines to 3807 lines, then from 3821 lines to 4515 lines, then from 4522 lines to 4275 lines, then from 4270 lines to 3749 lines, then from 3762 lines to 4353 lines, then from 4360 lines to 3750 lines, then from 3764 lines to 4377 lines, then from 4384 lines to 3766 lines, then from 3780 lines to 4068 lines, then from 4075 lines to 3769 lines, then from 3783 lines to 4010 lines, then from 4017 lines to 3778 lines, then from 3792 lines to 4463 lines, then from 4469 lines to 3780 lines, then from 3794 lines to 4319 lines, then from 4326 lines to 3782 lines, then from 3796 lines to 5281 lines, then from 5288 lines to 3833 lines, then from 3847 lines to 6045 lines, then from 6051 lines to 3920 lines, then from 3929 lines to 3838 lines, then from 3851 lines to 5509 lines, then from 5516 lines to 3858 lines, then from 3872 lines to 5710 lines, then from 5716 lines to 3883 lines, then from 3897 lines to 4576 lines, then from 4583 lines to 3901 lines, then from 3915 lines to 4076 lines, then from 4083 lines to 3914 lines, then from 3928 lines to 4206 lines, then from 4213 lines to 3931 lines, then from 3945 lines to 5585 lines, then from 5585 lines to 4004 lines, then from 4018 lines to 4692 lines, then from 4699 lines to 4173 lines *)
(* coqc version 9.2+alpha compiled with OCaml 4.14.2
   coqtop version 9.2+alpha
   Modules that could not be inlined: Ltac2.Pattern, Ltac2.Ltac1, Ltac2.Array, Stdlib.Vectors.Fin
   Expected coqc runtime on this file: 1.408 sec *)










Require stdpp.tactics.
Require Stdlib.micromega.Lia.
Require Stdlib.micromega.ZMicromega.
Require Stdlib.ZArith.Zdiv.
Require Stdlib.ZArith.Zcomplements.
Require Stdlib.omega.PreOmega.
Require Stdlib.micromega.Zify.
Require Stdlib.micromega.ZifyInst.
Require Stdlib.Arith.Arith.
Require Stdlib.micromega.ZCoeff.
Require Stdlib.micromega.RingMicromega.
Require Stdlib.ZArith.Zabs.
Require Stdlib.ZArith.Zbool.
Require Stdlib.setoid_ring.ZArithRing.
Require Stdlib.setoid_ring.ArithRing.
Require Stdlib.ZArith.Wf_Z.
Require Stdlib.micromega.OrderedRing.
Require Stdlib.ZArith.ZArith_dec.
Require Stdlib.setoid_ring.Ring.
Require Stdlib.setoid_ring.Ring_base.
Require Stdlib.ZArith.Zmisc.
Require Stdlib.setoid_ring.Ring_tac.
Require Stdlib.ZArith.Zorder.
Require Stdlib.ZArith.Znat.
Require Stdlib.setoid_ring.InitialRing.
Require Stdlib.setoid_ring.Ring_polynom.
Require Stdlib.micromega.EnvRing.
Require Stdlib.micromega.VarMap.
Require Stdlib.micromega.Env.
Require Stdlib.ZArith.Zpow_def.
Require Stdlib.ZArith.Zeven.
Require Stdlib.ZArith.Zcompare.
Require Stdlib.ZArith.BinInt.
Require Stdlib.micromega.DeclConstantZ.
Require stdpp.decidable.
Require stdpp.proof_irrel.
Require stdpp.base.
Require Stdlib.ZArith.BinIntDef.
Require Stdlib.NArith.Nnat.
Require Stdlib.setoid_ring.Ring_theory.
Require Stdlib.setoid_ring.BinList.
Require Stdlib.NArith.BinNat.
Require Stdlib.NArith.BinNatDef.
Require Stdlib.Vectors.Fin.
Require Stdlib.PArith.Pnat.
Require Stdlib.Arith.Arith_base.
Require Stdlib.PArith.BinPos.
Require Stdlib.Sorting.Permutation.
Require Stdlib.Lists.ListTactics.
Require Stdlib.micromega.Tauto.
Require Stdlib.Lists.Finite.
Require Stdlib.micromega.Refl.
Require Stdlib.Lists.ListDec.
Require Stdlib.Lists.List.
Require Stdlib.Arith.Peano_dec.
Require Stdlib.Arith.Wf_nat.
Require Stdlib.Arith.Factorial.
Require Stdlib.Arith.EqNat.
Require Stdlib.Arith.Compare_dec.
Require Stdlib.Arith.Between.
Require Stdlib.Arith.PeanoNat.
Require Stdlib.Numbers.Natural.Abstract.NProperties.
Require Stdlib.Numbers.Integer.Abstract.ZProperties.
Require Stdlib.Numbers.Natural.Abstract.NLcm0.
Require Stdlib.Numbers.Natural.Abstract.NBits.
Require Stdlib.Numbers.Integer.Abstract.ZLcm.
Require Stdlib.Numbers.Integer.Abstract.ZBits.
Require Stdlib.Numbers.Natural.Abstract.NLog.
Require Stdlib.Numbers.Natural.Abstract.NLcm.
Require Stdlib.Numbers.Integer.Abstract.ZPow.
Require Stdlib.Numbers.Natural.Abstract.NPow.
Require Stdlib.Numbers.Natural.Abstract.NDiv0.
Require Stdlib.Numbers.Integer.Abstract.ZGcd.
Require Stdlib.Numbers.Integer.Abstract.ZDivTrunc.
Require Stdlib.Numbers.Integer.Abstract.ZDivFloor.
Require Stdlib.Numbers.Natural.Abstract.NSqrt.
Require Stdlib.Numbers.Natural.Abstract.NParity.
Require Stdlib.Numbers.Natural.Abstract.NMaxMin.
Require Stdlib.Numbers.Natural.Abstract.NGcd.
Require Stdlib.Numbers.Natural.Abstract.NDiv.
Require Stdlib.Numbers.Integer.Abstract.ZSgnAbs.
Require Stdlib.Numbers.Integer.Abstract.ZParity.
Require Stdlib.Numbers.Integer.Abstract.ZMaxMin.
Require Stdlib.Numbers.Natural.Abstract.NSub.
Require Stdlib.Numbers.Integer.Abstract.ZMulOrder.
Require Stdlib.Numbers.Natural.Abstract.NMulOrder.
Require Stdlib.Numbers.Integer.Abstract.ZAddOrder.
Require Stdlib.Numbers.Natural.Abstract.NAddOrder.
Require Stdlib.Numbers.Integer.Abstract.ZLt.
Require Stdlib.Numbers.Natural.Abstract.NOrder.
Require Stdlib.Numbers.Integer.Abstract.ZMul.
Require Stdlib.Numbers.Natural.Abstract.NAdd.
Require Stdlib.Numbers.Integer.Abstract.ZAdd.
Require Stdlib.Numbers.Natural.Abstract.NBase.
Require Stdlib.Numbers.Integer.Abstract.ZBase.
Require Stdlib.Numbers.Natural.Abstract.NAxioms.
Require Stdlib.Numbers.Integer.Abstract.ZAxioms.
Require Stdlib.Numbers.NatInt.NZBits.
Require Stdlib.Numbers.NatInt.NZLog.
Require Stdlib.Numbers.NatInt.NZSqrt.
Require Stdlib.Numbers.NatInt.NZPow.
Require Stdlib.Numbers.NatInt.NZParity.
Require Stdlib.Numbers.NatInt.NZGcd.
Require Stdlib.Numbers.NatInt.NZDiv.
Require Stdlib.Numbers.NatInt.NZMulOrder.
Require Stdlib.Numbers.NatInt.NZAddOrder.
Require Stdlib.Numbers.NatInt.NZOrder.
Require Stdlib.Numbers.NatInt.NZMul.
Require Stdlib.Numbers.NatInt.NZAdd.
Require Stdlib.Numbers.NatInt.NZBase.
Require Stdlib.Numbers.NatInt.NZAxioms.
Require Stdlib.Structures.GenericMinMax.
Require Stdlib.Structures.OrdersFacts.
Require Stdlib.Structures.OrdersTac.
Require Stdlib.Structures.Orders.
Require Stdlib.Structures.Equalities.
Require Stdlib.Numbers.NumPrelude.
Require Ltac2.Array.
Require Ltac2.Ltac1.
Require Stdlib.Relations.Relations.
Require Stdlib.PArith.BinPosDef.
Require Ltac2.Pattern.
Require Stdlib.Relations.Operators_Properties.
Require Ltac2.Control.
Require Stdlib.Relations.Relation_Operators.
Require Stdlib.Bool.Bool.
Require Ltac2.Std.
Require Ltac2.Message.

Module Export AdmitTactic.
Module Import LocalFalse.
End LocalFalse.
End AdmitTactic.

Module Export stdpp_DOT_option_WRAPPED.
Module Export option.

Export stdpp.tactics.


Inductive option_Forall2 {A B} (R: A → B → Prop) : option A → option B → Prop :=
  | Some_Forall2 x y : R x y → option_Forall2 R (Some x) (Some y)
  | None_Forall2 : option_Forall2 R None None.

Section Forall2.
End Forall2.
Global Instance option_equiv `{Equiv A} : Equiv (option A). exact (option_Forall2 (≡)). Defined.

Section setoids.
End setoids.
Global Instance option_bind: MBind option. exact (λ A B f mx,
  match mx with Some x => f x | None => None end). Defined.
Global Instance option_fmap: FMap option. exact (@option_map). Defined.
Class Maybe2 {A1 A2 B : Type} (c : A1 → A2 → B) :=
  maybe2 : B → option (A1 * A2).
Global Arguments maybe2 {_ _ _} _ {_} !_ / : assert.

Section union_intersection_difference.
End union_intersection_difference.

End option.
Module Export stdpp.
Module Export option.
Include stdpp_DOT_option_WRAPPED.option.
End option.

Export Stdlib.ZArith.BinInt.

Record Q : Set := Qmake {Qnum : Z; Qden : positive}.
Delimit Scope Q_scope with Q.

Open Scope Q_scope.

Notation "a # b" := (Qmake a b) (at level 55, no associativity) : Q_scope.

Notation QDen p := (Zpos (Qden p)).
Definition Qlt (x y : Q) := (Qnum x * QDen y < Qnum y * QDen x)%Z.
Infix "<" := Qlt : Q_scope.

Definition Qmult (x y : Q) := (Qnum x * Qnum y) # (Qden x * Qden y).

Definition Qinv (x : Q) :=
  match Qnum x with
  | Z0 => 0#1
  | Zpos p => (QDen x)#p
  | Zneg p => (Zneg (Qden x))#p
  end.

Definition Qdiv (x y : Q) := Qmult x (Qinv y).

Inductive IZ :=
  | IZpow_pos : Z -> positive -> IZ
  | IZ0 : IZ
  | IZpos : positive -> IZ
  | IZneg : positive -> IZ.

Inductive IQ :=
  | IQmake : IZ -> positive -> IQ
  | IQmult : IQ -> IQ -> IQ
  | IQdiv : IQ -> IQ -> IQ.

Definition IZ_of_Z z :=
  match z with
  | Z0 => IZ0
  | Zpos e => IZpos e
  | Zneg e => IZneg e
  end.
Definition of_decimal (d:Decimal.decimal) : IQ.
exact (let '(i, f, e) :=
    match d with
    | Decimal.Decimal i f => (i, f, Decimal.Pos Decimal.Nil)
    | Decimal.DecimalExp i f e => (i, f, e)
    end in
  let num := Z.of_int (Decimal.app_int i f) in
  let den := Nat.iter (Decimal.nb_digits f) (Pos.mul 10) 1%positive in
  let q := IQmake (IZ_of_Z num) den in
  let e := Z.of_int e in
  match e with
  | Z0 => q
  | Zpos e => IQmult q (IQmake (IZpow_pos 10 e) 1)
  | Zneg e => IQdiv q (IQmake (IZpow_pos 10 e) 1)
  end).
Defined.
Definition of_hexadecimal (d:Hexadecimal.hexadecimal) : IQ.
Admitted.
Definition of_number (n : Number.number) : IQ.
exact (match n with
  | Number.Decimal d => of_decimal d
  | Number.Hexadecimal h => of_hexadecimal h
  end).
Defined.
Definition to_number (q:IQ) : option Number.number.
Admitted.

Number Notation Q of_number to_number (via IQ
  mapping [Qmake => IQmake, Qmult => IQmult, Qdiv => IQdiv,
           Z.pow_pos => IZpow_pos, Z0 => IZ0, Zpos => IZpos, Zneg => IZneg])
  : Q_scope.
Module Export QArith_base.
End QArith_base.

Definition Qred (q:Q) :=
  let (q1,q2) := q in
  let (r1,r2) := snd (Z.ggcd q1 (Zpos q2))
  in r1#(Z.to_pos r2).
Module Export Stdlib_DOT_QArith_DOT_Qreduction.
Module Export Stdlib.
Module Export QArith.
Module Export Qreduction.
End Qreduction.

End QArith.

End Stdlib.

End Stdlib_DOT_QArith_DOT_Qreduction.
Module Import LocalFalse.
End LocalFalse.
Export Stdlib.QArith.Qreduction.
Module Export Stdlib_DOT_QArith_DOT_QArith.
Module Export Stdlib.
Module Export QArith.
Module Export QArith.
End QArith.

End QArith.

End Stdlib.

End Stdlib_DOT_QArith_DOT_QArith.

Record Qc : Set := Qcmake { this :> Q ; canon : Qred this = this }.
Delimit Scope Qc_scope with Qc.
Definition Q2Qc (q:Q) : Qc.
Admitted.

Notation " 0 " := (Q2Qc 0) : Qc_scope.
Definition Qclt (x y : Qc) := (x < y)%Q.
Infix "<" := Qclt : Qc_scope.
Module Export Stdlib.
Module Export QArith.
Module Export Qcanon.
End Qcanon.

End QArith.

End Stdlib.
Import Stdlib.QArith.QArith.
Import Stdlib.QArith.Qcanon.
Export stdpp.option.
Global Instance eq_dec: EqDecision positive.
Admitted.
Definition Qc_of_Z (n : Z) : Qc.
Admitted.
Local Close Scope Qc_scope.

Record Qp := mk_Qp { Qp_to_Qc : Qc ; Qp_prf : (0 < Qp_to_Qc)%Qc }.
Bind Scope Qp_scope with Qp.

Program Definition pos_to_Qp (n : positive) : Qp := mk_Qp (Qc_of_Z $ Z.pos n) _.
Admit Obligations.

Module Export Qp.

  Module Import notations.

    Notation "1" := (pos_to_Qp 1) : Qp_scope.
  End notations.

Export Qp.notations.

Local Close Scope Qp_scope.

Notation "(::)" := cons (only parsing) : list_scope.
Notation "( x ::.)" := (cons x) (only parsing) : list_scope.
Global Instance maybe_cons {A} : Maybe2 (@cons A).
Admitted.
Definition reverse {A} (l : list A) : list A.
exact (rev_append l []).
Defined.

Section list_set.
  Context `{dec : EqDecision A}.
Fixpoint list_difference (l k : list A) : list A.
Admitted.
End list_set.

Section general_properties.
Context {A : Type}.
Implicit Types l k : list A.
Global Instance list_eq_nil_dec l : Decision (l = []).
Admitted.

End general_properties.
Export Stdlib.Sorting.Permutation.

Global Arguments Permutation {_} _ _ : assert.

Infix "≡ₚ" := Permutation (at level 70, no associativity) : stdpp_scope.
Notation "(≡ₚ)" := Permutation (only parsing) : stdpp_scope.

Inductive submseteq {A} : relation (list A) :=
  | submseteq_nil : submseteq [] []
  | submseteq_skip x l1 l2 : submseteq l1 l2 → submseteq (x :: l1) (x :: l2)
  | submseteq_swap x y l : submseteq (y :: x :: l) (x :: y :: l)
  | submseteq_cons x l1 l2 : submseteq l1 l2 → submseteq l1 (x :: l2)
  | submseteq_trans l1 l2 l3 : submseteq l1 l2 → submseteq l2 l3 → submseteq l1 l3.
Infix "⊆+" := submseteq (at level 70) : stdpp_scope.

Section general_properties.
Context {A : Type}.
Implicit Types x y z : A.
Implicit Types l k : list A.

Global Instance cons_Permutation_inj_r x : Inj (≡ₚ) (≡ₚ) (x ::.).
Admitted.
Lemma submseteq_nil_l l : [] ⊆+ l.
Admitted.

Global Instance: Proper ((≡ₚ) ==> (≡ₚ) ==> iff) (@submseteq A).
Admitted.

Lemma elem_of_submseteq l k x : x ∈ l → l ⊆+ k → x ∈ k.
Admitted.
Lemma submseteq_cons_l x l k : x :: l ⊆+ k ↔ ∃ k', k ≡ₚ x :: k' ∧ l ⊆+ k'.
Admitted.
  Context `{!EqDecision A}.

  Local Program Fixpoint elem_of_or_Permutation x l :
      (x ∉ l) + { k | l ≡ₚ x :: k } :=
    match l with
    | [] => inl _
    | y :: l =>
       if decide (x = y) then inr (l ↾ _) else
       match elem_of_or_Permutation x l return _ with
       | inl _ => inl _ | inr (k ↾ _) => inr ((y :: k) ↾ _)
       end
    end.
Admit Obligations.

  Global Program Instance submseteq_dec : RelDecision (@submseteq A) :=
    fix go l1 l2 :=
    match l1 with
    | [] => left _
    | x :: l1 =>
       match elem_of_or_Permutation x l2 return _ with
       | inl _ => right _
       | inr (l2 ↾ _) => cast_if (go l1 l2)
       end
    end.
  Next Obligation.
intros _ l1 l2 _.
apply submseteq_nil_l.
Qed.
  Next Obligation.
    intros _ ? l2 x l1 <- Hx Hxl1.
eapply Hx, elem_of_submseteq, Hxl1.
by left.
  Qed.
  Next Obligation.
intros _ ?? x l1 <- _ l2 -> Hl.
by apply submseteq_skip.
Qed.
  Next Obligation.
    intros _ ?? x l1 <- _ l2 -> Hl (l2' & Hl2%(inj _) & ?)%submseteq_cons_l.
    apply Hl.
by rewrite Hl2.
  Qed.
End general_properties.
Definition mapM `{MBind M, MRet M} {A B} (f : A → M B) : list A → M (list B).
Admitted.

Notation fin := Fin.t.

Class Countable A `{EqDecision A} := {
  encode : A → positive;
  decode : positive → option A;
  decode_encode x : decode (encode x) = Some x
}.
Global Instance pos_countable : Countable positive.
Admitted.

Global Instance set_subseteq_instance `{ElemOf A C} : SubsetEq C | 20.
Admitted.
Global Instance set_disjoint_instance `{ElemOf A C} : Disjoint C | 20.
Admitted.

Section semi_set.
  Context `{SemiSet A C}.
  Implicit Types X Y : C.

  Lemma union_subseteq X Y Z : X ∪ Y ⊆ Z ↔ X ⊆ Z ∧ Y ⊆ Z.
Admitted.
End semi_set.

Definition pred_infinite {A} (P : A → Prop) := ∀ xs : list A, ∃ x, P x ∧ x ∉ xs.
Export Corelib.Init.Byte.

Module Export Ascii.

Inductive ascii : Set := Ascii (_ _ _ _ _ _ _ _ : bool).
Delimit Scope char_scope with char.
Bind Scope char_scope with ascii.
Definition eqb (a b : ascii) : bool.
Admitted.
Definition ascii_of_byte (b : byte) : ascii.
exact (let '(b0, (b1, (b2, (b3, (b4, (b5, (b6, b7))))))) := Byte.to_bits b in
     Ascii b0 b1 b2 b3 b4 b5 b6 b7).
Defined.
Definition byte_of_ascii (a : ascii) : byte.
Admitted.
  String Notation ascii ascii_of_byte byte_of_ascii : char_scope.
Module Export String.

Inductive string : Set :=
  | EmptyString : string
  | String : ascii -> string -> string.

#[local] Open Scope lazy_bool_scope.

Fixpoint eqb s1 s2 : bool :=
 match s1, s2 with
 | EmptyString, EmptyString => true
 | String c1 s1', String c2 s2' => Ascii.eqb c1 c2 &&& eqb s1' s2'
 | _,_ => false
 end.
Fixpoint string_of_list_ascii (s : list ascii) : string.
exact (match s with
     | nil => EmptyString
     | cons ch s => String ch (string_of_list_ascii s)
     end).
Defined.
Definition string_of_list_byte (s : list byte) : string.
exact (string_of_list_ascii (List.map ascii_of_byte s)).
Defined.
Definition list_byte_of_string (s : string) : list byte.
Admitted.

String Notation string
  String.string_of_list_byte String.list_byte_of_string : stdpp_scope.

Module Export Ascii.
Definition is_nat (x : ascii) : option nat.
exact (match x with
    | "0" => Some 0
    | "1" => Some 1
    | "2" => Some 2
    | "3" => Some 3
    | "4" => Some 4
    | "5" => Some 5
    | "6" => Some 6
    | "7" => Some 7
    | "8" => Some 8
    | "9" => Some 9
    | _ => None
    end%char).
Defined.
Definition is_space (x : ascii) : bool.
exact (match x with
    | "009" | "010" | "011" | "012" | "013" | " " => true | _ => false
    end%char).
Defined.

Module Export String.
Fixpoint rev_app (s1 s2 : string) : string.
exact (match s1 with
    | "" => s2
    | String a s1 => rev_app s1 (String a s2)
    end).
Defined.
Definition rev (s : string) : string.
exact (rev_app s "").
Defined.

Record mapset' (Munit : Type) : Type :=
  Mapset { mapset_car: Munit }.
Notation mapset M := (mapset' (M unit)).

Local Open Scope positive_scope.

Local Notation "P ~ 0" := (λ p, P p~0) : function_scope.
Local Notation "P ~ 1" := (λ p, P p~1) : function_scope.

Inductive gmap_dep_ne (A : Type) (P : positive → Prop) :=
  | GNode001 : gmap_dep_ne A P~1  → gmap_dep_ne A P
  | GNode010 : P 1 → A → gmap_dep_ne A P
  | GNode011 : P 1 → A → gmap_dep_ne A P~1 → gmap_dep_ne A P
  | GNode100 : gmap_dep_ne A P~0 → gmap_dep_ne A P
  | GNode101 : gmap_dep_ne A P~0 → gmap_dep_ne A P~1 → gmap_dep_ne A P
  | GNode110 : gmap_dep_ne A P~0 → P 1 → A → gmap_dep_ne A P
  | GNode111 : gmap_dep_ne A P~0 → P 1 → A → gmap_dep_ne A P~1 → gmap_dep_ne A P.

Variant gmap_dep (A : Type) (P : positive → Prop) :=
  | GEmpty : gmap_dep A P
  | GNodes : gmap_dep_ne A P → gmap_dep A P.

Record gmap_key K `{Countable K} (q : positive) :=
  GMapKey { _ : encode (A:=K) <$> decode q = Some q }.

Record gmap K `{Countable K} A := GMap { gmap_car : gmap_dep A (gmap_key K) }.

Definition gset K `{Countable K} := mapset (gmap K).

Export stdpp.base.
Export Corelib.ssr.ssreflect.

Record SIdxMixin {I} (ilt ile : relation I) (zero : I) (succ : I → I) := {
  sidx_mixin_lt_trans : Transitive ilt;
  sidx_mixin_lt_wf : well_founded ilt;
  sidx_mixin_lt_trichotomy : TrichotomyT ilt;
  sidx_mixin_le_lteq n m : ile n m ↔ ilt n m ∨ n = m;
  sidx_mixin_nlt_0_r n : ¬ ilt n zero;
  sidx_mixin_lt_succ_diag_r n : ilt n (succ n);
  sidx_mixin_le_succ_l_2 n m : ilt n m → ile (succ n) m;

  sidx_mixin_weak_case n : {m | n = succ m} + (∀ m, ilt m n → ilt (succ m) n);
}.

Structure sidx := SIdx {
  sidx_car :> Type;
  sidx_lt : relation sidx_car;
  sidx_le : relation sidx_car;
  sidx_zero : sidx_car;
  sidx_succ : sidx_car → sidx_car;
  sidx_mixin : SIdxMixin sidx_lt sidx_le sidx_zero sidx_succ;
}.

Existing Class sidx.
Global Arguments SIdx _ {_ _ _ _} _.
Global Arguments sidx_lt {_}.
Global Arguments sidx_le {_}.
Global Arguments sidx_zero {_}.
Global Arguments sidx_succ {_} _.

Declare Scope sidx_scope.

Local Open Scope sidx_scope.

Notation "0ᵢ" := sidx_zero (at level 0).
Notation "'Sᵢ'" := sidx_succ (at level 0).
Notation "n < m" := (sidx_lt n m) : sidx_scope.
Notation "n ≤ m" := (sidx_le n m) : sidx_scope.

Class SIdxFinite (SI : sidx) :=
  finite_index n : n = 0ᵢ ∨ ∃ m, n = Sᵢ m.

Module Export SIdx.
Section sidx.
  Context {SI : sidx}.

  Record limit (n : SI) := Limit {
    limit_gt_S m : m < n → Sᵢ m < n;
    limit_neq_0 : n ≠ 0ᵢ;
  }.

  Lemma limit_finite `{!SIdxFinite SI} n : ¬limit n.
Admitted.
End sidx.

Class Dist {SI : sidx} A := dist : SI → relation A.
Notation "x ≡{ n }≡ y" := (dist n x y)
  (at level 70, n at next level, format "x  ≡{ n }≡  y").
Notation NonExpansive f := (∀ n, Proper (dist n ==> dist n) f).
Notation NonExpansive2 f := (∀ n, Proper (dist n ==> dist n ==> dist n) f).

Record OfeMixin {SI : sidx} A `{Equiv A, !Dist A} := {
  mixin_equiv_dist (x y : A) : x ≡ y ↔ ∀ n, x ≡{n}≡ y;
  mixin_dist_equivalence n : Equivalence (@dist SI A _ n);
  mixin_dist_le n m (x y : A) : x ≡{n}≡ y → m ≤ n → x ≡{m}≡ y
}.

Structure ofe {SI : sidx} := Ofe {
  ofe_car :> Type;
  ofe_equiv : Equiv ofe_car;
  ofe_dist : Dist ofe_car;
  ofe_mixin : OfeMixin ofe_car
}.
Global Arguments Ofe {_} _ {_ _} _.

Global Hint Extern 0 (Equiv _) => refine (ofe_equiv _); shelve : typeclass_instances.
Global Hint Extern 0 (Dist _) => refine (ofe_dist _); shelve : typeclass_instances.
Definition ofe_mixin_of' {SI : sidx} A {Ac : ofe} (f : Ac → A) : OfeMixin Ac.
exact (ofe_mixin Ac).
Defined.
Notation ofe_mixin_of A :=
  ltac:(let H := eval hnf in (ofe_mixin_of' A id) in exact H) (only parsing).

Record chain {SI : sidx} (A : ofe) := {
  chain_car :> SI → A;
  chain_cauchy n m: n ≤ m → chain_car m ≡{n}≡ chain_car n
}.

Record bchain {SI : sidx} (A : ofe) (n : SI) := {
  bchain_car :> ∀ m, m < n → A;
  bchain_cauchy m p Hm Hp : m ≤ p → bchain_car p Hp ≡{m}≡ bchain_car m Hm
}.

Notation Compl A := (chain A%type → A).
Notation LBCompl A := (∀ n, SIdx.limit n → bchain A%type n → A).

Class Cofe {SI : sidx} (A : ofe) := {
  compl : Compl A;
  lbcompl : LBCompl A;
  conv_compl n c : compl c ≡{n}≡ c n;
  conv_lbcompl {n} Hn (c : bchain A n) {m} Hm : lbcompl n Hn c ≡{m}≡ c m Hm;

  lbcompl_ne n {Hn} (c1 c2 : bchain A n) m :
    (∀ p (Hp : p < n), c1 p Hp ≡{m}≡ c2 p Hp) →
    lbcompl n Hn c1 ≡{m}≡ lbcompl n Hn c2
}.

Record dist_later {SI : sidx} `{!Dist A} (n : SI) (x y : A) : Prop :=
  { dist_later_lt : ∀ m, m < n → x ≡{m}≡ y }.

Notation Contractive f := (∀ n, Proper (dist_later n ==> dist n) f).

Record ofe_mor {SI : sidx} (A B : ofe) : Type := OfeMor {
  ofe_mor_car :> A → B;
  ofe_mor_ne : NonExpansive ofe_mor_car
}.

Section ofe_mor.
  Context {SI : sidx} {A B : ofe}.
Local Instance ofe_mor_equiv : Equiv (ofe_mor A B).
Admitted.
Local Instance ofe_mor_dist : Dist (ofe_mor A B).
Admitted.
  Definition ofe_mor_ofe_mixin : OfeMixin (ofe_mor A B).
Admitted.
  Canonical Structure ofe_morO := Ofe (ofe_mor A B) ofe_mor_ofe_mixin.
End ofe_mor.

Global Arguments ofe_morO {_} _ _.
Notation "A -n> B" :=
  (ofe_morO A B) (at level 99, B at level 200, right associativity).
Definition cid {SI : sidx} {A: ofe} : A -n> A.
Admitted.
Definition ccompose {SI : sidx} {A B C: ofe}
  (f : B -n> C) (g : A -n> B) : A -n> C.
Admitted.
Infix "◎" := ccompose (at level 40, left associativity).

Section unit.
  Context {SI : sidx}.
Local Instance unit_dist : Dist unit.
Admitted.
  Definition unit_ofe_mixin : OfeMixin unit.
Admitted.
Canonical Structure unitO : ofe.
exact (Ofe unit unit_ofe_mixin).
Defined.
End unit.

Section product.
  Context {SI : sidx} {A B : ofe}.
Local Instance prod_dist : Dist (A * B).
Admitted.

  Definition prod_ofe_mixin : OfeMixin (A * B).
Admitted.
Canonical Structure prodO : ofe.
exact (Ofe (A * B) prod_ofe_mixin).
Defined.
End product.

Section discrete_ofe.
  Context {SI : sidx} `{Equiv A} (Heq : @Equivalence A (≡)).
Local Instance discrete_dist : Dist A.
Admitted.
  Definition discrete_ofe_mixin : OfeMixin A.
Admitted.
End discrete_ofe.

Notation leibnizO A := (Ofe A (@discrete_ofe_mixin _ _ equivL eq_equivalence)).

Notation discrete_ofe_equivalence_of A := ltac:(
  match constr:(ofe_mixin_of A) with
  | discrete_ofe_mixin ?H => exact H
  end) (only parsing).
Canonical Structure natO {SI : sidx} : ofe.
exact (leibnizO nat).
Defined.

Section option.
  Context {SI : sidx} {A : ofe}.
Local Instance option_dist : Dist (option A).
Admitted.

  Definition option_ofe_mixin : OfeMixin (option A).
Admitted.
  Canonical Structure optionO := Ofe (option A) option_ofe_mixin.
End option.

Record later (A : Type) : Type := Next { later_car : A }.

Section later.
  Context {SI : sidx} {A : ofe}.
Local Instance later_equiv : Equiv (later A).
Admitted.
Local Instance later_dist : Dist (later A).
Admitted.

  Definition later_ofe_mixin : OfeMixin (later A).
Admitted.
Canonical Structure laterO : ofe.
exact (Ofe (later A) later_ofe_mixin).
Defined.
End later.

Global Arguments laterO {_} _.

Class Monoid {SI : sidx} {M : ofe} (o : M → M → M) := {
  monoid_unit : M;
  monoid_ne : NonExpansive2 o;
  monoid_assoc : Assoc (≡) o;
  monoid_comm : Comm (≡) o;
  monoid_left_id : LeftId (≡) monoid_unit o;
}.

Fixpoint big_opL {SI : sidx} {M : ofe}
    {o : M → M → M} `{!Monoid o} {A} (f : nat → A → M) (xs : list A) : M :=
  match xs with
  | [] => monoid_unit
  | x :: xs => o (f 0 x) (big_opL (λ n, f (S n)) xs)
  end.
Global Arguments big_opL {SI} {M} o {_ A} _ !_ /.

Class PCore (A : Type) := pcore : A → option A.

Class Op (A : Type) := op : A → A → A.
Infix "⋅" := op (at level 50, left associativity) : stdpp_scope.
Notation "(⋅)" := op (only parsing) : stdpp_scope.

Definition included {A} `{!Equiv A, !Op A} (x y : A) := ∃ z, y ≡ x ⋅ z.
Infix "≼" := included (at level 70) : stdpp_scope.

Class ValidN {SI : sidx} (A : Type) := validN : SI → A → Prop.
Notation "✓{ n } x" := (validN n x)
  (at level 20, n at next level, format "✓{ n }  x").

Class Valid (A : Type) := valid : A → Prop.
Notation "✓ x" := (valid x) (at level 20) : stdpp_scope.

Definition includedN {SI : sidx} `{!Dist A, Op A} (n : SI) (x y : A) :=
  ∃ z, y ≡{n}≡ x ⋅ z.
Notation "x ≼{ n } y" := (includedN n x y)
  (at level 70, n at next level, format "x  ≼{ n }  y") : stdpp_scope.
Global Hint Extern 0 (_ ≼{_} _) => reflexivity : core.
  Record CmraMixin {SI : sidx} A
      `{!Dist A, !Equiv A, !PCore A, !Op A, !Valid A, !ValidN A} := {

    mixin_cmra_op_ne (x : A) : NonExpansive (op x);
    mixin_cmra_pcore_ne n (x y : A) cx :
      x ≡{n}≡ y → pcore x = Some cx → ∃ cy, pcore y = Some cy ∧ cx ≡{n}≡ cy;
    mixin_cmra_validN_ne n : Proper (dist (A := A) n ==> impl) (validN n);

    mixin_cmra_valid_validN (x : A) : ✓ x ↔ ∀ n, ✓{n} x;
    mixin_cmra_validN_le n n' (x : A) : ✓{n} x → n' ≤ n → ✓{n'} x;

    mixin_cmra_assoc : Assoc (≡@{A}) (⋅);
    mixin_cmra_comm : Comm (≡@{A}) (⋅);
    mixin_cmra_pcore_l (x : A) cx : pcore x = Some cx → cx ⋅ x ≡ x;
    mixin_cmra_pcore_idemp (x : A) cx : pcore x = Some cx → pcore cx ≡ Some cx;
    mixin_cmra_pcore_mono (x y : A) cx :
      x ≼ y → pcore x = Some cx → ∃ cy, pcore y = Some cy ∧ cx ≼ cy;
    mixin_cmra_validN_op_l n (x y : A) : ✓{n} (x ⋅ y) → ✓{n} x;
    mixin_cmra_extend n (x y1 y2 : A) :
      ✓{n} x → x ≡{n}≡ y1 ⋅ y2 →
      { z1 : A & { z2 | x ≡ z1 ⋅ z2 ∧ z1 ≡{n}≡ y1 ∧ z2 ≡{n}≡ y2 } }
  }.

#[projections(primitive=no)]
Structure cmra {SI : sidx} := Cmra' {
  cmra_car :> Type;
  cmra_equiv : Equiv cmra_car;
  cmra_dist : Dist cmra_car;
  cmra_pcore : PCore cmra_car;
  cmra_op : Op cmra_car;
  cmra_valid : Valid cmra_car;
  cmra_validN : ValidN cmra_car;
  cmra_ofe_mixin : OfeMixin cmra_car;
  cmra_mixin : CmraMixin cmra_car;
}.
Global Arguments Cmra' {_} _ {_ _ _ _ _ _} _ _.

Notation Cmra A m := (Cmra' A (ofe_mixin_of A%type) m) (only parsing).

Global Hint Extern 0 (PCore _) => refine (cmra_pcore _); shelve : typeclass_instances.
Global Hint Extern 0 (Op _) => refine (cmra_op _); shelve : typeclass_instances.
Global Hint Extern 0 (Valid _) => refine (cmra_valid _); shelve : typeclass_instances.
Global Hint Extern 0 (ValidN _) => refine (cmra_validN _); shelve : typeclass_instances.
Coercion cmra_ofeO {SI : sidx} (A : cmra) : ofe.
exact (Ofe A (cmra_ofe_mixin A)).
Defined.
Canonical Structure cmra_ofeO.
Definition cmra_mixin_of' {SI : sidx} A {Ac : cmra}
  (f : Ac → A) : CmraMixin Ac.
Admitted.
Notation cmra_mixin_of A :=
  ltac:(let H := eval hnf in (cmra_mixin_of' A id) in exact H) (only parsing).
Definition core {A} `{!PCore A} (x : A) : A.
Admitted.

Class Unit (A : Type) := ε : A.

Record UcmraMixin {SI : sidx} A
    `{!Dist A, !Equiv A, !PCore A, !Op A, !Valid A, !Unit A} := {
  mixin_ucmra_unit_valid : ✓ (ε : A);
  mixin_ucmra_unit_left_id : LeftId (≡@{A}) ε (⋅);
  mixin_ucmra_pcore_unit : pcore ε ≡@{option A} Some ε
}.

#[projections(primitive=no)]
Structure ucmra {SI : sidx} := Ucmra' {
  ucmra_car :> Type;
  ucmra_equiv : Equiv ucmra_car;
  ucmra_dist : Dist ucmra_car;
  ucmra_pcore : PCore ucmra_car;
  ucmra_op : Op ucmra_car;
  ucmra_valid : Valid ucmra_car;
  ucmra_validN : ValidN ucmra_car;
  ucmra_unit : Unit ucmra_car;
  ucmra_ofe_mixin : OfeMixin ucmra_car;
  ucmra_cmra_mixin : CmraMixin ucmra_car;
  ucmra_mixin : UcmraMixin ucmra_car;
}.
Global Arguments Ucmra' {_} _ {_ _ _ _ _ _ _} _ _ _.
Notation Ucmra A m :=
  (Ucmra' A (ofe_mixin_of A%type) (cmra_mixin_of A%type) m) (only parsing).

Global Hint Extern 0 (Unit _) => refine (ucmra_unit _); shelve : typeclass_instances.
Coercion ucmra_ofeO {SI : sidx} (A : ucmra) : ofe.
exact (Ofe A (ucmra_ofe_mixin A)).
Defined.
Canonical Structure ucmra_ofeO.
Coercion ucmra_cmraR {SI : sidx} (A : ucmra) : cmra.
exact (Cmra' A (ucmra_ofe_mixin A) (ucmra_cmra_mixin A)).
Defined.
Canonical Structure ucmra_cmraR.

Class CmraMorphism {SI : sidx} {A B : cmra} (f : A → B) := {
  #[global] cmra_morphism_ne :: NonExpansive f;
  cmra_morphism_validN n x : ✓{n} x → ✓{n} f x;
  cmra_morphism_pcore x : f <$> pcore x ≡ pcore (f x);
  cmra_morphism_op x y : f (x ⋅ y) ≡ f x ⋅ f y
}.

Section cmra.
Context {SI : sidx} {A : cmra}.
Implicit Types x y z : A.
  Global Instance cmra_includedN_preorder n : PreOrder (@includedN SI A _ _ n).
Admitted.
  Lemma cmra_core_monoN n x y : x ≼{n} y → core x ≼{n} core y.
Admitted.
End cmra.

Section ucmra.
  Context {SI : sidx} {A : ucmra}.

  Lemma ucmra_unit_validN n : ✓{n} (ε:A).
Admitted.
End ucmra.

  Record rFunctor {SI : sidx} := RFunctor {
  rFunctor_car : ∀ A `{!Cofe A} B `{!Cofe B}, cmra;
  rFunctor_map `{!Cofe A1, !Cofe A2, !Cofe B1, !Cofe B2} :
    ((A2 -n> A1) * (B1 -n> B2)) → rFunctor_car A1 B1 -n> rFunctor_car A2 B2;
  rFunctor_map_ne `{!Cofe A1, !Cofe A2, !Cofe B1, !Cofe B2} :
    NonExpansive (@rFunctor_map A1 _ A2 _ B1 _ B2 _);
  rFunctor_map_id `{!Cofe A, !Cofe B} (x : rFunctor_car A B) :
    rFunctor_map (cid,cid) x ≡ x;
  rFunctor_map_compose `{!Cofe A1, !Cofe A2, !Cofe A3, !Cofe B1, !Cofe B2, !Cofe B3}
      (f : A2 -n> A1) (g : A3 -n> A2) (f' : B1 -n> B2) (g' : B2 -n> B3) x :
    rFunctor_map (f◎g, g'◎f') x ≡ rFunctor_map (g,g') (rFunctor_map (f,f') x);
  rFunctor_mor `{!Cofe A1, !Cofe A2, !Cofe B1, !Cofe B2}
      (fg : (A2 -n> A1) * (B1 -n> B2)) :
    CmraMorphism (rFunctor_map fg)
}.

Class rFunctorContractive {SI : sidx} (F : rFunctor) :=
  #[global] rFunctor_map_contractive `{!Cofe A1, !Cofe A2, !Cofe B1, !Cofe B2} ::
    Contractive (@rFunctor_map SI F A1 _ A2 _ B1 _ B2 _).
Definition rFunctor_apply {SI : sidx} (F: rFunctor) (A: ofe) `{!Cofe A} : cmra.
Admitted.

Record RAMixin A `{Equiv A, PCore A, Op A, Valid A} := {

  ra_op_proper (x : A) : Proper ((≡) ==> (≡)) (op x);
  ra_core_proper (x y : A) cx :
    x ≡ y → pcore x = Some cx → ∃ cy, pcore y = Some cy ∧ cx ≡ cy;
  ra_validN_proper : Proper ((≡@{A}) ==> impl) valid;

  ra_assoc : Assoc (≡@{A}) (⋅);
  ra_comm : Comm (≡@{A}) (⋅);
  ra_pcore_l (x : A) cx : pcore x = Some cx → cx ⋅ x ≡ x;
  ra_pcore_idemp (x : A) cx : pcore x = Some cx → pcore cx ≡ Some cx;
  ra_pcore_mono (x y : A) cx :
    x ≼ y → pcore x = Some cx → ∃ cy, pcore y = Some cy ∧ cx ≼ cy;
  ra_valid_op_l (x y : A) : ✓ (x ⋅ y) → ✓ x
}.

Section discrete.
  Context {SI : sidx} `{!Equiv A, !PCore A, !Op A, !Valid A}.
  Context (Heq : @Equivalence A (≡)).
  Context (ra_mix : RAMixin A).
  Existing Instances discrete_dist.
Local Instance discrete_validN_instance : ValidN A.
Admitted.
  Definition discrete_cmra_mixin : CmraMixin A.
Admitted.
End discrete.

Notation discreteR A ra_mix :=
  (Cmra A (discrete_cmra_mixin (discrete_ofe_equivalence_of A%type) ra_mix))
  (only parsing).

Section prod.
  Context {SI : sidx} {A B : cmra}.
Local Instance prod_op_instance : Op (A * B).
Admitted.
Local Instance prod_pcore_instance : PCore (A * B).
Admitted.
Local Instance prod_valid_instance : Valid (A * B).
Admitted.
Local Instance prod_validN_instance : ValidN (A * B).
Admitted.

  Definition prod_cmra_mixin : CmraMixin (A * B).
Admitted.
  Canonical Structure prodR := Cmra (prod A B) prod_cmra_mixin.
End prod.

Global Arguments prodR {_} _ _.

Section option.
  Context {SI : sidx} {A : cmra}.
Local Instance option_valid_instance : Valid (option A).
Admitted.
Local Instance option_validN_instance : ValidN (option A).
Admitted.
Local Instance option_pcore_instance : PCore (option A).
Admitted.
Local Instance option_op_instance : Op (option A).
Admitted.

  Lemma option_cmra_mixin : CmraMixin (option A).
Admitted.
  Canonical Structure optionR := Cmra (option A) option_cmra_mixin.
End option.

Global Arguments optionR {_} _.

Inductive gset_disj K `{Countable K} :=
  | GSet : gset K → gset_disj K
  | GSetInvalid : gset_disj K.

Section gset_disj.
  Context {SI : sidx} `{Countable K}.

  Canonical Structure gset_disjO := leibnizO (gset_disj K).
Local Instance gset_disj_valid_instance : Valid (gset_disj K).
Admitted.
Local Instance gset_disj_op_instance : Op (gset_disj K).
Admitted.
Local Instance gset_disj_pcore_instance : PCore (gset_disj K).
Admitted.

  Lemma gset_disj_ra_mixin : RAMixin (gset_disj K).
Admitted.
  Canonical Structure gset_disjR := discreteR (gset_disj K) gset_disj_ra_mixin.

  End gset_disj.
Global Arguments gset_disjR {_} _ {_ _}.

Lemma nat_sidx_mixin : SIdxMixin lt le 0 S.
Admitted.
Canonical Structure natSI : sidx.
exact (SIdx nat nat_sidx_mixin).
Defined.
Global Existing Instance natSI | 0.

Global Instance nat_sidx_finite : SIdxFinite natSI.
Admitted.

  Program Definition cofe_finite {A} (compl : Compl A)
      (conv_compl: ∀ n c, compl c ≡{n}≡ c n) : Cofe A :=
    {| compl := compl; lbcompl n Hn := False_rect _ (SIdx.limit_finite _ Hn) |}.
Admit Obligations.

Reserved Notation "P ⊢ Q" (at level 99, Q at level 200, right associativity).

Reserved Notation "P ⊣⊢ Q" (at level 95, no associativity).

Reserved Notation "⊢ Q" (at level 20, Q at level 200).
Reserved Notation "'⊢@{' PROP } Q" (at level 20, Q at level 200).
Reserved Notation "'⌜' φ '⌝'" (at level 0, φ at level 200, format "⌜ φ ⌝").
Reserved Notation "P ∗ Q" (at level 80, right associativity, format "P  ∗  '/' Q").
Reserved Notation "P -∗ Q"
  (at level 99, Q at level 200, right associativity,
   format "'[' P  -∗  '/' '[' Q ']' ']'").

Reserved Notation "'<pers>' P" (at level 20, right associativity).
Reserved Notation "'<pers>?' p P" (at level 20, p at level 9, P at level 20,
   right associativity, format "'<pers>?' p  P").

Reserved Notation "▷ P" (at level 20, right associativity).
Reserved Notation "▷^ n P" (at level 20, n at level 9, P at level 20,
   format "▷^ n  P").

Reserved Notation "'<affine>' P" (at level 20, right associativity).
Reserved Notation "'<affine>?' p P" (at level 20, p at level 9, P at level 20,
   right associativity, format "'<affine>?' p  P").

Reserved Notation "'<absorb>' P" (at level 20, right associativity).

Reserved Notation "□ P" (at level 20, right associativity).
Reserved Notation "'□?' p P" (at level 20, p at level 9, P at level 20,
   right associativity, format "'□?' p  P").

Reserved Notation "◇ P" (at level 20, right associativity).

Reserved Notation "|==> Q" (at level 99, Q at level 200, format "'[  ' |==>  '/' Q ']'").

Reserved Notation "|={ E1 , E2 }=> Q"
  (at level 99, E1, E2 at level 50, Q at level 200,
   format "'[  ' |={ E1 , E2 }=>  '/' Q ']'").
Reserved Notation "P ={ E1 , E2 }=∗ Q"
  (at level 99, E1,E2 at level 50, Q at level 200,
   format "'[' P  ={ E1 , E2 }=∗  '/' '[' Q ']' ']'").

Reserved Notation "'[∗]' Ps" (at level 20).
Reserved Notation "'[∧' 'list]' x ∈ l , P"
  (at level 200, l at level 10, x binder, right associativity,
   format "[∧  list]  x  ∈  l ,  P").
Delimit Scope bi_scope with I.

Section bi_mixin.
  Context {PROP : Type} `{!Dist PROP, !Equiv PROP}.
  Context (bi_entails : PROP → PROP → Prop).
  Context (bi_emp : PROP).
  Context (bi_pure : Prop → PROP).
  Context (bi_and : PROP → PROP → PROP).
  Context (bi_or : PROP → PROP → PROP).
  Context (bi_impl : PROP → PROP → PROP).
  Context (bi_forall : ∀ A, (A → PROP) → PROP).
  Context (bi_exist : ∀ A, (A → PROP) → PROP).
  Context (bi_sep : PROP → PROP → PROP).
  Context (bi_wand : PROP → PROP → PROP).

  Bind Scope bi_scope with PROP.
  Local Infix "⊢" := bi_entails.
  Local Notation "'emp'" := bi_emp : bi_scope.
  Local Notation "'True'" := (bi_pure True) : bi_scope.
  Local Notation "'False'" := (bi_pure False) : bi_scope.
  Local Notation "'⌜' φ '⌝'" := (bi_pure φ%type%stdpp) : bi_scope.
  Local Infix "∧" := bi_and : bi_scope.
  Local Infix "∨" := bi_or : bi_scope.
  Local Infix "→" := bi_impl : bi_scope.
  Local Notation "∀ x .. y , P" :=
    (bi_forall _ (λ x, .. (bi_forall _ (λ y, P%I)) ..)) : bi_scope.
  Local Notation "∃ x .. y , P" :=
    (bi_exist _ (λ x, .. (bi_exist _ (λ y, P%I)) ..)) : bi_scope.
  Local Infix "∗" := bi_sep : bi_scope.
  Local Infix "-∗" := bi_wand : bi_scope.

  Record BiMixin := {
    bi_mixin_entails_po : PreOrder bi_entails;
    bi_mixin_equiv_entails P Q : (P ≡ Q) ↔ (P ⊢ Q) ∧ (Q ⊢ P);

    bi_mixin_pure_ne n : Proper (iff ==> dist n) bi_pure;
    bi_mixin_and_ne : NonExpansive2 bi_and;
    bi_mixin_or_ne : NonExpansive2 bi_or;
    bi_mixin_impl_ne : NonExpansive2 bi_impl;
    bi_mixin_forall_ne A n :
      Proper (pointwise_relation _ (dist n) ==> dist n) (bi_forall A);
    bi_mixin_exist_ne A n :
      Proper (pointwise_relation _ (dist n) ==> dist n) (bi_exist A);
    bi_mixin_sep_ne : NonExpansive2 bi_sep;
    bi_mixin_wand_ne : NonExpansive2 bi_wand;

    bi_mixin_pure_intro (φ : Prop) P : φ → P ⊢ ⌜ φ ⌝;
    bi_mixin_pure_elim' (φ : Prop) P : (φ → True ⊢ P) → ⌜ φ ⌝ ⊢ P;

    bi_mixin_and_elim_l P Q : P ∧ Q ⊢ P;
    bi_mixin_and_elim_r P Q : P ∧ Q ⊢ Q;
    bi_mixin_and_intro P Q R : (P ⊢ Q) → (P ⊢ R) → P ⊢ Q ∧ R;

    bi_mixin_or_intro_l P Q : P ⊢ P ∨ Q;
    bi_mixin_or_intro_r P Q : Q ⊢ P ∨ Q;
    bi_mixin_or_elim P Q R : (P ⊢ R) → (Q ⊢ R) → P ∨ Q ⊢ R;

    bi_mixin_impl_intro_r P Q R : (P ∧ Q ⊢ R) → P ⊢ Q → R;
    bi_mixin_impl_elim_l' P Q R : (P ⊢ Q → R) → P ∧ Q ⊢ R;

    bi_mixin_forall_intro {A} P (Ψ : A → PROP) : (∀ a, P ⊢ Ψ a) → P ⊢ ∀ a, Ψ a;
    bi_mixin_forall_elim {A} {Ψ : A → PROP} a : (∀ a, Ψ a) ⊢ Ψ a;

    bi_mixin_exist_intro {A} {Ψ : A → PROP} a : Ψ a ⊢ ∃ a, Ψ a;
    bi_mixin_exist_elim {A} (Φ : A → PROP) Q : (∀ a, Φ a ⊢ Q) → (∃ a, Φ a) ⊢ Q;

    bi_mixin_sep_mono P P' Q Q' : (P ⊢ Q) → (P' ⊢ Q') → P ∗ P' ⊢ Q ∗ Q';
    bi_mixin_emp_sep_1 P : P ⊢ emp ∗ P;
    bi_mixin_emp_sep_2 P : emp ∗ P ⊢ P;
    bi_mixin_sep_comm' P Q : P ∗ Q ⊢ Q ∗ P;
    bi_mixin_sep_assoc' P Q R : (P ∗ Q) ∗ R ⊢ P ∗ (Q ∗ R);
    bi_mixin_wand_intro_r P Q R : (P ∗ Q ⊢ R) → P ⊢ Q -∗ R;
    bi_mixin_wand_elim_l' P Q R : (P ⊢ Q -∗ R) → P ∗ Q ⊢ R;
  }.

  Context (bi_persistently : PROP → PROP).
  Local Notation "'<pers>' P" := (bi_persistently P) : bi_scope.

  Record BiPersistentlyMixin := {
    bi_mixin_persistently_ne : NonExpansive bi_persistently;

    bi_mixin_persistently_mono P Q : (P ⊢ Q) → <pers> P ⊢ <pers> Q;

    bi_mixin_persistently_idemp_2 P : <pers> P ⊢ <pers> <pers> P;

    bi_mixin_persistently_emp_2 : emp ⊢ <pers> emp;

    bi_mixin_persistently_and_2 (P Q : PROP) :
      (<pers> P) ∧ (<pers> Q) ⊢ <pers> (P ∧ Q);
    bi_mixin_persistently_exist_1 {A} (Ψ : A → PROP) :
      <pers> (∃ a, Ψ a) ⊢ ∃ a, <pers> (Ψ a);

    bi_mixin_persistently_absorbing P Q : <pers> P ∗ Q ⊢ <pers> P;

    bi_mixin_persistently_and_sep_elim P Q : <pers> P ∧ Q ⊢ P ∗ Q;
  }.

  Context (bi_later : PROP → PROP).
  Local Notation "▷ P" := (bi_later P) : bi_scope.

  Record BiLaterMixin := {
    bi_mixin_later_ne : NonExpansive bi_later;

    bi_mixin_later_mono P Q : (P ⊢ Q) → ▷ P ⊢ ▷ Q;
    bi_mixin_later_intro P : P ⊢ ▷ P;

    bi_mixin_later_forall_2 {A} (Φ : A → PROP) : (∀ a, ▷ Φ a) ⊢ ▷ ∀ a, Φ a;
    bi_mixin_later_exist_false {A} (Φ : A → PROP) :
      (▷ ∃ a, Φ a) ⊢ ▷ False ∨ (∃ a, ▷ Φ a);
    bi_mixin_later_sep_1 P Q : ▷ (P ∗ Q) ⊢ ▷ P ∗ ▷ Q;
    bi_mixin_later_sep_2 P Q : ▷ P ∗ ▷ Q ⊢ ▷ (P ∗ Q);
    bi_mixin_later_persistently_1 P : ▷ <pers> P ⊢ <pers> ▷ P;
    bi_mixin_later_persistently_2 P : <pers> ▷ P ⊢ ▷ <pers> P;

    bi_mixin_later_false_em P : ▷ P ⊢ ▷ False ∨ (▷ False → P);
  }.
End bi_mixin.

  Universe Logic.

  Universe Quant.

Structure bi := Bi {
  bi_car :> Type@{Logic};
  bi_dist : Dist bi_car;
  bi_equiv : Equiv bi_car;
  bi_entails : bi_car → bi_car → Prop;
  bi_emp : bi_car;
  bi_pure : Prop → bi_car;
  bi_and : bi_car → bi_car → bi_car;
  bi_or : bi_car → bi_car → bi_car;
  bi_impl : bi_car → bi_car → bi_car;
  bi_forall : ∀ A : Type@{Quant}, (A → bi_car) → bi_car;
  bi_exist : ∀ A : Type@{Quant}, (A → bi_car) → bi_car;
  bi_sep : bi_car → bi_car → bi_car;
  bi_wand : bi_car → bi_car → bi_car;
  bi_persistently : bi_car → bi_car;
  bi_later : bi_car → bi_car;
  bi_ofe_mixin : OfeMixin bi_car;
  bi_cofe_aux : Cofe (Ofe bi_car bi_ofe_mixin);
  bi_bi_mixin : BiMixin bi_entails bi_emp bi_pure bi_and bi_or bi_impl bi_forall
                        bi_exist bi_sep bi_wand;
  bi_bi_persistently_mixin :
    BiPersistentlyMixin bi_entails bi_emp bi_and bi_exist bi_sep bi_persistently;
  bi_bi_later_mixin : BiLaterMixin bi_entails bi_pure bi_or bi_impl
                                   bi_forall bi_exist bi_sep bi_persistently bi_later;
}.
Bind Scope bi_scope with bi_car.
Coercion bi_ofeO (PROP : bi) : ofe.
exact (Ofe PROP (bi_ofe_mixin PROP)).
Defined.
Canonical Structure bi_ofeO.
Global Arguments bi_entails {PROP} _ _ : simpl never, rename.
Global Arguments bi_emp {PROP} : simpl never, rename.
Global Arguments bi_pure {PROP} _%_stdpp : simpl never, rename.
Global Arguments bi_and {PROP} _ _ : simpl never, rename.
Global Arguments bi_or {PROP} _ _ : simpl never, rename.
Global Arguments bi_impl {PROP} _ _ : simpl never, rename.
Global Arguments bi_forall {PROP _} _%_I : simpl never, rename.
Global Arguments bi_exist {PROP _} _%_I : simpl never, rename.
Global Arguments bi_sep {PROP} _ _ : simpl never, rename.
Global Arguments bi_wand {PROP} _ _ : simpl never, rename.
Global Arguments bi_persistently {PROP} _ : simpl never, rename.
Global Arguments bi_later {PROP} _ : simpl never, rename.

Notation "'emp'" := (bi_emp) : bi_scope.
Notation "'⌜' φ '⌝'" := (bi_pure φ%type%stdpp) : bi_scope.
Notation "'True'" := (bi_pure True) : bi_scope.
Notation "'False'" := (bi_pure False) : bi_scope.
Infix "∧" := bi_and : bi_scope.
Infix "∨" := bi_or : bi_scope.
Infix "→" := bi_impl : bi_scope.
Infix "∗" := bi_sep : bi_scope.
Notation "P -∗ Q" := (bi_wand P Q) : bi_scope.
Notation "∀ x .. y , P" :=
  (bi_forall (λ x, .. (bi_forall (λ y, P%I)) ..)) : bi_scope.
Notation "∃ x .. y , P" :=
  (bi_exist (λ x, .. (bi_exist (λ y, P%I)) ..)) : bi_scope.
Notation "'<pers>' P" := (bi_persistently P) : bi_scope.

Notation "▷ P" := (bi_later P) : bi_scope.

Notation "P ⊢ Q" := (bi_entails P%I Q%I) : stdpp_scope.

Notation "P ⊣⊢ Q" := (equiv (A:=bi_car _) P%I Q%I) : stdpp_scope.
Definition bi_emp_valid {PROP : bi} (P : PROP) : Prop.
Admitted.

Notation "⊢ Q" := (bi_emp_valid Q%I) : stdpp_scope.
Notation "'⊢@{' PROP } Q" := (bi_emp_valid (PROP:=PROP) Q%I) (only parsing) : stdpp_scope.

Class Persistent {PROP : bi} (P : PROP) := persistent : P ⊢ <pers> P.

Definition bi_affinely {PROP : bi} (P : PROP) : PROP := emp ∧ P.
Notation "'<affine>' P" := (bi_affinely P) : bi_scope.

Class Affine {PROP : bi} (Q : PROP) := affine : Q ⊢ emp.

Definition bi_absorbingly {PROP : bi} (P : PROP) : PROP := True ∗ P.
Notation "'<absorb>' P" := (bi_absorbingly P) : bi_scope.

Class Absorbing {PROP : bi} (P : PROP) := absorbing : <absorb> P ⊢ P.
Definition bi_persistently_if {PROP : bi} (p : bool) (P : PROP) : PROP.
Admitted.
Notation "'<pers>?' p P" := (bi_persistently_if p P) : bi_scope.
Definition bi_affinely_if {PROP : bi} (p : bool) (P : PROP) : PROP.
Admitted.
Notation "'<affine>?' p P" := (bi_affinely_if p P) : bi_scope.
Definition bi_absorbingly_if {PROP : bi} (p : bool) (P : PROP) : PROP.
Admitted.
Definition bi_intuitionistically {PROP : bi} (P : PROP) : PROP.
Admitted.
Notation "□ P" := (bi_intuitionistically P) : bi_scope.
Definition bi_intuitionistically_if {PROP : bi} (p : bool) (P : PROP) : PROP.
Admitted.
Notation "'□?' p P" := (bi_intuitionistically_if p P) : bi_scope.

Fixpoint bi_laterN {PROP : bi} (n : nat) (P : PROP) : PROP :=
  match n with
  | O => P
  | S n' => ▷ ▷^n' P
  end
where "▷^ n P" := (bi_laterN n P) : bi_scope.

Definition bi_except_0 {PROP : bi} (P : PROP) : PROP := ▷ False ∨ P.
Notation "◇ P" := (bi_except_0 P) : bi_scope.

Definition bi_wandM {PROP : bi} (mP : option PROP) (Q : PROP) : PROP :=
  match mP with
  | None => Q
  | Some P => P -∗ Q
  end.

Class BiAffine (PROP : bi) := absorbing_bi (Q : PROP) : Affine Q.
Section derived.
Context {PROP : bi}.

Global Instance bi_and_monoid : Monoid (@bi_and PROP).
Admitted.
Global Instance bi_sep_monoid : Monoid (@bi_sep PROP).
Admitted.
End derived.

Notation big_sepL := (big_opL bi_sep) (only parsing).
Notation "'[∗]' Ps" := (big_sepL (λ _ x, x) Ps%I) : bi_scope.

Notation big_andL := (big_opL bi_and) (only parsing).
Notation "'[∧' 'list]' x ∈ l , P" := (big_andL (λ _ x, P%I) l) : bi_scope.

Inductive excl (A : Type) :=
  | Excl : A → excl A
  | ExclInvalid : excl A.
Global Arguments Excl {_} _.
Global Arguments ExclInvalid {_}.

Section excl.
Context {SI : sidx} {A : ofe}.

Inductive excl_equiv : Equiv (excl A) :=
  | Excl_equiv a b : a ≡ b → Excl a ≡ Excl b
  | ExclInvalid_equiv : ExclInvalid ≡ ExclInvalid.
Local Existing Instance excl_equiv.
Inductive excl_dist : Dist (excl A) :=
  | Excl_dist a b n : a ≡{n}≡ b → Excl a ≡{n}≡ Excl b
  | ExclInvalid_dist n : ExclInvalid ≡{n}≡ ExclInvalid.
Local Existing Instance excl_dist.

Definition excl_ofe_mixin : OfeMixin (excl A).
Admitted.
Canonical Structure exclO : ofe.
exact (Ofe (excl A) excl_ofe_mixin).
Defined.
Local Instance excl_valid_instance : Valid (excl A).
Admitted.
Local Instance excl_validN_instance : ValidN (excl A).
Admitted.
Local Instance excl_pcore_instance : PCore (excl A).
Admitted.
Local Instance excl_op_instance : Op (excl A).
Admitted.

Lemma excl_cmra_mixin : CmraMixin (excl A).
Admitted.
Canonical Structure exclR := Cmra (excl A) excl_cmra_mixin.
End excl.
Global Arguments exclR {_} _.

Inductive coPset_raw :=
  | coPLeaf : bool → coPset_raw
  | coPNode : bool → coPset_raw → coPset_raw → coPset_raw.
Local Fixpoint coPset_wf (t : coPset_raw) : bool.
Admitted.

Definition coPset := { t | coPset_wf t }.
Global Instance coPset_elem_of : ElemOf positive coPset.
Admitted.
Global Instance coPset_union : Union coPset.
Admitted.

Class BUpd (PROP : Type) : Type := bupd : PROP → PROP.

Notation "|==> Q" := (bupd Q) : bi_scope.

Class FUpd (PROP : Type) : Type := fupd : coPset → coPset → PROP → PROP.

Notation "|={ E1 , E2 }=> Q" := (fupd E1 E2 Q) : bi_scope.

Notation "|={ E }=> Q" := (fupd E E Q) : bi_scope.
Notation "P ={ E }=∗ Q" := (P -∗ |={E}=> Q)%I : bi_scope.

Record BiBUpdMixin (PROP : bi) `(BUpd PROP) := {
  bi_bupd_mixin_bupd_ne : NonExpansive (bupd (PROP:=PROP));
  bi_bupd_mixin_bupd_intro (P : PROP) : P ⊢ |==> P;
  bi_bupd_mixin_bupd_mono (P Q : PROP) : (P ⊢ Q) → (|==> P) ⊢ |==> Q;
  bi_bupd_mixin_bupd_trans (P : PROP) : (|==> |==> P) ⊢ |==> P;
  bi_bupd_mixin_bupd_frame_r (P R : PROP) : (|==> P) ∗ R ⊢ |==> P ∗ R;
}.

Record BiFUpdMixin (PROP : bi) `(FUpd PROP) := {
  bi_fupd_mixin_fupd_ne E1 E2 :
    NonExpansive (fupd (PROP:=PROP) E1 E2);
  bi_fupd_mixin_fupd_mask_subseteq E1 E2 :
    E2 ⊆ E1 → ⊢@{PROP} |={E1,E2}=> |={E2,E1}=> emp;
  bi_fupd_mixin_except_0_fupd E1 E2 (P : PROP) :
    ◇ (|={E1,E2}=> P) ⊢ |={E1,E2}=> P;
  bi_fupd_mixin_fupd_mono E1 E2 (P Q : PROP) :
    (P ⊢ Q) → (|={E1,E2}=> P) ⊢ |={E1,E2}=> Q;
  bi_fupd_mixin_fupd_trans E1 E2 E3 (P : PROP) :
    (|={E1,E2}=> |={E2,E3}=> P) ⊢ |={E1,E3}=> P;
  bi_fupd_mixin_fupd_mask_frame_r' E1 E2 Ef (P : PROP) :
    E1 ## Ef → (|={E1,E2}=> ⌜E2 ## Ef⌝ → P) ⊢ |={E1 ∪ Ef,E2 ∪ Ef}=> P;
  bi_fupd_mixin_fupd_frame_r E1 E2 (P R : PROP) :
    (|={E1,E2}=> P) ∗ R ⊢ |={E1,E2}=> P ∗ R;
}.

Class BiBUpd (PROP : bi) := {
  #[global] bi_bupd_bupd :: BUpd PROP;
  bi_bupd_mixin : BiBUpdMixin PROP bi_bupd_bupd;
}.

Class BiFUpd (PROP : bi) := {
  #[global] bi_fupd_fupd :: FUpd PROP;
  bi_fupd_mixin : BiFUpdMixin PROP bi_fupd_fupd;
}.

Class BiBUpdFUpd (PROP : bi) `{BiBUpd PROP, BiFUpd PROP} :=
  bupd_fupd E (P : PROP) : (|==> P) ⊢ |={E}=> P.

Definition namespace := list positive.

Ltac solve_ndisj :=
  repeat match goal with
  | H : _ ∪ _ ⊆ _ |- _ => apply union_subseteq in H as [??]
  end;
  solve [eauto 12 with ndisj].

Inductive modality_action (PROP1 : bi) : bi → Type :=
  | MIEnvIsEmpty {PROP2 : bi} : modality_action PROP1 PROP2
  | MIEnvForall (C : PROP1 → Prop) : modality_action PROP1 PROP1
  | MIEnvTransform {PROP2 : bi} (C : PROP2 → PROP1 → Prop) : modality_action PROP1 PROP2
  | MIEnvClear {PROP2} : modality_action PROP1 PROP2
  | MIEnvId : modality_action PROP1 PROP1.
Global Arguments MIEnvIsEmpty {_ _}.
Global Arguments MIEnvForall {_} _.
Global Arguments MIEnvTransform {_ _} _.
Global Arguments MIEnvClear {_ _}.
Global Arguments MIEnvId {_}.
Definition modality_intuitionistic_action_spec {PROP1 PROP2}
    (s : modality_action PROP1 PROP2) : (PROP1 → PROP2) → Prop.
Admitted.
Definition modality_spatial_action_spec {PROP1 PROP2}
    (s : modality_action PROP1 PROP2) : (PROP1 → PROP2) → Prop.
Admitted.

Record modality_mixin {PROP1 PROP2 : bi} (M : PROP1 → PROP2)
    (iaction saction : modality_action PROP1 PROP2) := {
  modality_mixin_intuitionistic : modality_intuitionistic_action_spec iaction M;
  modality_mixin_spatial : modality_spatial_action_spec saction M;
  modality_mixin_emp : emp ⊢ M emp;
  modality_mixin_mono P Q : (P ⊢ Q) → M P ⊢ M Q;
  modality_mixin_sep P Q : M P ∗ M Q ⊢ M (P ∗ Q)
}.

Record modality (PROP1 PROP2 : bi) := Modality {
  modality_car :> PROP1 → PROP2;
  modality_intuitionistic_action : modality_action PROP1 PROP2;
  modality_spatial_action : modality_action PROP1 PROP2;
  modality_mixin_of :
    modality_mixin modality_car modality_intuitionistic_action modality_spatial_action
}.
Global Arguments modality_intuitionistic_action {_ _} _.
Global Arguments modality_spatial_action {_ _} _.
Module Export List.

Import Ltac2.Init.

Ltac2 rec iter (f : 'a -> unit) (ls : 'a list) : unit :=
  match ls with
  | [] => ()
  | l :: ls => f l; iter f ls
  end.

End List.
Module Export Option.

Import Ltac2.Init.

Ltac2 get (ov : 'a option) :=
  match ov with
  | Some v => v
  | None => Control.throw No_value
  end.

End Option.

Ltac2 Notation "match!" t(tactic(6)) "with" m(constr_matching) "end" : 0 :=
  Pattern.one_match0 t m.
Module Export Char.

Import Ltac2.Init.

Ltac2 @external of_int : int -> char := "rocq-runtime.plugins.ltac2" "char_of_int".

End Char.
Module Export String.

Import Ltac2.Init.

Ltac2 @external make : int -> char -> string := "rocq-runtime.plugins.ltac2" "string_make".
Ltac2 @external set : string -> int -> char -> unit := "rocq-runtime.plugins.ltac2" "string_set".

End String.
Module Export Ident.

Import Ltac2.Init.

Ltac2 Type t := ident.

Ltac2 @ external of_string : string -> t option := "rocq-runtime.plugins.ltac2" "ident_of_string".

End Ident.

Module Ltac2_DOT_Ltac2_WRAPPED.
Module Export Ltac2.

Export Ltac2.Init.

End Ltac2.

End Ltac2_DOT_Ltac2_WRAPPED.
Module Export Ltac2.
Module Ltac2.
Include Ltac2_DOT_Ltac2_WRAPPED.Ltac2.
End Ltac2.
Module Export base.

Ltac2 of_ltac1_list l := Option.get (Ltac1.to_list l).

Ltac ltac1_list_iter tac l :=
  let go := ltac2:(tac l |- List.iter (ltac1:(tac x |- tac x) tac)
                                      (of_ltac1_list l)) in
  go tac l.

Inductive direction := Left | Right.
Definition negb (b : bool) : bool.
Admitted.
Fixpoint Pos_succ (x : positive) : positive.
Admitted.
Definition beq (b1 b2 : bool) : bool.
exact (match b1, b2 with
  | false, false | true, true => true
  | _, _ => false
  end).
Defined.
Definition ascii_beq (x y : ascii) : bool.
Admitted.
Fixpoint string_beq (s1 s2 : string) : bool.
Admitted.
Inductive ident :=
  | IAnon : positive → ident
  | INamed :> string → ident.

Definition positive_beq := Eval compute in Pos.eqb.
Definition ident_beq (i1 i2 : ident) : bool.
exact (match i1, i2 with
  | IAnon n1, IAnon n2 => positive_beq n1 n2
  | INamed s1, INamed s2 => string_beq s1 s2
  | _, _ => false
  end).
Defined.

Fixpoint pm_app {A} (l1 l2 : list A) : list A :=
  match l1 with [] => l2 | x :: l1 => x :: pm_app l1 l2 end.
Definition pm_option_bind {A B} (f : A → option B) (mx : option A) : option B.
exact (match mx with Some x => f x | None => None end).
Defined.
Definition pm_from_option {A B} (f : A → B) (y : B) (mx : option A) : B.
Admitted.
Definition pm_option_fun {A B} (f : option (A → B)) (x : A) : option B.
Admitted.

Definition ident_name := unit → unit.

Ltac to_ident_name id :=
  eval cbv in (ltac:(clear; intros id; assumption) : unit → unit).

Class AsIdentName {A B} (f : A → B) (name : ident_name) := as_ident_name {}.
Global Arguments as_ident_name {A B f} name : assert.

Ltac solve_as_ident_name :=
  lazymatch goal with

  | |- AsIdentName (λ H, _) _ =>
    let name := to_ident_name H in
    notypeclasses refine (as_ident_name name)
  | |- AsIdentName _ _ =>
     let name := to_ident_name ident:(__unknown) in
     notypeclasses refine (as_ident_name name)
  | |- _ => fail "solve_as_ident_name: goal should be `AsIdentName`"
  end.

Global Hint Extern 1 (AsIdentName _ _) => solve_as_ident_name : typeclass_instances.

Inductive pm_error (s : string) := .

Class FromAssumption {PROP : bi} (p : bool) (P Q : PROP) :=
  from_assumption : □?p P ⊢ Q.

Class IntoPure {PROP : bi} (P : PROP) (φ : Prop) :=
  into_pure : P ⊢ ⌜φ⌝.

Class FromPure {PROP : bi} (a : bool) (P : PROP) (φ : Prop) :=
  from_pure : <affine>?a ⌜φ⌝ ⊢ P.

Class IntoPersistent {PROP : bi} (p : bool) (P Q : PROP) :=
  into_persistent : <pers>?p P ⊢ <pers> Q.

Class FromModal {PROP1 PROP2 : bi} {A}
    (φ : Prop) (M : modality PROP1 PROP2) (sel : A) (P : PROP2) (Q : PROP1) :=
  from_modal : φ → M Q ⊢ P.

Class FromAffinely {PROP : bi} (P Q : PROP) :=
  from_affinely : <affine> Q ⊢ P.

Class IntoAbsorbingly {PROP : bi} (P Q : PROP) :=
  into_absorbingly : P ⊢ <absorb> Q.

Class IntoWand {PROP : bi} (p q : bool) (R P Q : PROP) :=
  into_wand : □?p R ⊢ □?q P -∗ Q.

Class FromWand {PROP : bi} (P Q1 Q2 : PROP) := from_wand : (Q1 -∗ Q2) ⊢ P.

Class FromImpl {PROP : bi} (P Q1 Q2 : PROP) := from_impl : (Q1 → Q2) ⊢ P.

Class IntoAnd {PROP : bi} (p : bool) (P Q1 Q2 : PROP) :=
  into_and : □?p P ⊢ □?p (Q1 ∧ Q2).

Class IntoSep {PROP : bi} (P Q1 Q2 : PROP) :=
  into_sep : P ⊢ Q1 ∗ Q2.

Class IntoOr {PROP : bi} (P Q1 Q2 : PROP) := into_or : P ⊢ Q1 ∨ Q2.

Class IntoExist {PROP : bi} {A} (P : PROP) (Φ : A → PROP) (name: ident_name) :=
  into_exist : P ⊢ ∃ x, Φ x.

Class IntoForall {PROP : bi} {A} (P : PROP) (Φ : A → PROP) :=
  into_forall : P ⊢ ∀ x, Φ x.

Class FromForall {PROP : bi} {A} (P : PROP) (Φ : A → PROP) (name : ident_name) :=
  from_forall : (∀ x, Φ x) ⊢ P.

Class ElimModal {PROP : bi} (φ : Prop) (p p' : bool) (P P' : PROP) (Q Q' : PROP) :=
  elim_modal : φ → □?p P ∗ (□?p' P' -∗ Q') ⊢ Q.

Class AddModal {PROP : bi} (P P' : PROP) (Q : PROP) :=
  add_modal : P ∗ (P' -∗ Q) ⊢ Q.

Class Frame {PROP : bi} (p : bool) (R P Q : PROP) := frame : □?p R ∗ Q ⊢ P.

Class FrameInstantiateExistDisabled : Prop := frame_instantiate_exist_disabled {}.

Notation FrameInstantiateExistEnabled := (TCUnless FrameInstantiateExistDisabled).

Inductive as_emp_valid_direction :=
  | DirectionIntoEmpValid
  | DirectionFromEmpValid.

Class AsEmpValid {PROP : bi} (d : as_emp_valid_direction) (φ : Prop) (P : PROP) :=
  as_emp_valid : (d = DirectionIntoEmpValid → φ → ⊢ P) ∧
                 (d = DirectionFromEmpValid → (⊢ P) → φ).
Class AsEmpValid0 {PROP : bi} (d : as_emp_valid_direction) (φ : Prop) (P : PROP) :=
  as_emp_valid_0 : AsEmpValid d φ P.
Global Existing Instance as_emp_valid_0 | 0.
Lemma as_emp_valid_2 (φ : Prop) {PROP : bi} (P : PROP)
    `{!AsEmpValid DirectionFromEmpValid φ P} :
  (⊢ P) → φ.
Admitted.

Inductive env (A : Type) : Type :=
  | Enil : env A
  | Esnoc : env A → ident → A → env A.
Global Arguments Enil {_}.
Global Arguments Esnoc {_} _ _ _.

Fixpoint env_lookup {A} (i : ident) (Γ : env A) : option A :=
  match Γ with
  | Enil => None
  | Esnoc Γ j x => if ident_beq i j then Some x else env_lookup i Γ
  end.
  Notation "y ≫= f" := (pm_option_bind f y).
  Notation "x ← y ; z" := (y ≫= λ x, z).
  Notation "Γ !! j" := (env_lookup j Γ).

Inductive env_wf {A} : env A → Prop :=
  | Enil_wf : env_wf Enil
  | Esnoc_wf Γ i x : Γ !! i = None → env_wf Γ → env_wf (Esnoc Γ i x).

Fixpoint env_to_list {A} (E : env A) : list A :=
  match E with Enil => [] | Esnoc Γ _ x => x :: env_to_list Γ end.
Coercion env_to_list : env >-> list.

Fixpoint env_dom {A} (Γ : env A) : list ident :=
  match Γ with Enil => [] | Esnoc Γ i _ => i :: env_dom Γ end.

Fixpoint env_app {A} (Γapp : env A) (Γ : env A) : option (env A) :=
  match Γapp with
  | Enil => Some Γ
  | Esnoc Γapp i x =>
     Γ' ← env_app Γapp Γ;
     match Γ' !! i with None => Some (Esnoc Γ' i x) | Some _ => None end
  end.

Fixpoint env_replace {A} (i: ident) (Γi: env A) (Γ: env A) : option (env A) :=
  match Γ with
  | Enil => None
  | Esnoc Γ j x =>
     if ident_beq i j then env_app Γi Γ else
     match Γi !! j with
     | None => Γ' ← env_replace i Γi Γ; Some (Esnoc Γ' j x)
     | Some _ => None
     end
  end.

Fixpoint env_delete {A} (i : ident) (Γ : env A) : env A :=
  match Γ with
  | Enil => Enil
  | Esnoc Γ j x => if ident_beq i j then Γ else Esnoc (env_delete i Γ) j x
  end.

Fixpoint env_lookup_delete {A} (i : ident) (Γ : env A) : option (A * env A) :=
  match Γ with
  | Enil => None
  | Esnoc Γ j x =>
     if ident_beq i j then Some (x,Γ)
     else '(y,Γ') ← env_lookup_delete i Γ; Some (y, Esnoc Γ' j x)
  end.

Record envs (PROP : bi) := Envs {
  env_intuitionistic : env PROP;
  env_spatial : env PROP;
  env_counter : positive
}.
Global Arguments Envs {_} _ _ _.
Global Arguments env_spatial {_} _.

Notation env_and_persistently Γ := ([∧ list] P ∈ env_to_list Γ, <pers> P)%I.
Definition envs_entails {PROP : bi} (Δ : envs PROP) (Q : PROP) : Prop.
Admitted.
Definition envs_dom {PROP} (Δ : envs PROP) : list ident.
Admitted.
Definition envs_lookup {PROP} (i : ident) (Δ : envs PROP) : option (bool * PROP).
exact (let (Γp,Γs,n) := Δ in
  match env_lookup i Γp with
  | Some P => Some (true, P)
  | None => P ← env_lookup i Γs; Some (false, P)
  end).
Defined.
Definition envs_delete {PROP} (remove_intuitionistic : bool)
    (i : ident) (p : bool) (Δ : envs PROP) : envs PROP.
exact (let (Γp,Γs,n) := Δ in
  match p with
  | true => Envs (if remove_intuitionistic then env_delete i Γp else Γp) Γs n
  | false => Envs Γp (env_delete i Γs) n
  end).
Defined.
Definition envs_lookup_delete {PROP} (remove_intuitionistic : bool)
    (i : ident) (Δ : envs PROP) : option (bool * PROP * envs PROP).
Admitted.
Definition envs_snoc {PROP} (Δ : envs PROP)
    (p : bool) (j : ident) (P : PROP) : envs PROP.
Admitted.
Definition envs_app {PROP : bi} (p : bool)
    (Γ : env PROP) (Δ : envs PROP) : option (envs PROP).
exact (let (Γp,Γs,n) := Δ in
  match p with
  | true => _ ← env_app Γ Γs; Γp' ← env_app Γ Γp; Some (Envs Γp' Γs n)
  | false => _ ← env_app Γ Γp; Γs' ← env_app Γ Γs; Some (Envs Γp Γs' n)
  end).
Defined.
Definition envs_simple_replace {PROP : bi} (i : ident) (p : bool)
    (Γ : env PROP) (Δ : envs PROP) : option (envs PROP).
exact (let (Γp,Γs,n) := Δ in
  match p with
  | true => _ ← env_app Γ Γs; Γp' ← env_replace i Γ Γp; Some (Envs Γp' Γs n)
  | false => _ ← env_app Γ Γp; Γs' ← env_replace i Γ Γs; Some (Envs Γp Γs' n)
  end).
Defined.
Definition envs_replace {PROP : bi} (i : ident) (p q : bool)
    (Γ : env PROP) (Δ : envs PROP) : option (envs PROP).
exact (if beq p q then envs_simple_replace i p Γ Δ
  else envs_app q Γ (envs_delete true i p Δ)).
Defined.
Definition env_spatial_is_nil {PROP} (Δ : envs PROP) : bool.
Admitted.
Definition envs_clear_spatial {PROP} (Δ : envs PROP) : envs PROP.
Admitted.
Definition envs_clear_intuitionistic {PROP} (Δ : envs PROP) : envs PROP.
Admitted.
Definition envs_incr_counter {PROP} (Δ : envs PROP) : envs PROP.
Admitted.

Fixpoint envs_split_go {PROP}
    (js : list ident) (Δ1 Δ2 : envs PROP) : option (envs PROP * envs PROP) :=
  match js with
  | [] => Some (Δ1, Δ2)
  | j :: js =>
     '(p,P,Δ1') ← envs_lookup_delete true j Δ1;
     if p : bool then envs_split_go js Δ1 Δ2 else
     envs_split_go js Δ1' (envs_snoc Δ2 false j P)
  end.
Definition envs_split {PROP} (d : direction)
    (js : list ident) (Δ : envs PROP) : option (envs PROP * envs PROP).
Admitted.

Fixpoint env_to_prop_go {PROP : bi} (acc : PROP) (Γ : env PROP) : PROP :=
  match Γ with Enil => acc | Esnoc Γ _ P => env_to_prop_go (P ∗ acc)%I Γ end.
Definition env_to_prop {PROP : bi} (Γ : env PROP) : PROP.
Admitted.

Fixpoint env_to_prop_and_go {PROP : bi} (acc : PROP) (Γ : env PROP) : PROP :=
  match Γ with Enil => acc | Esnoc Γ _ P => env_to_prop_and_go (P ∧ acc)%I Γ end.
Definition env_to_prop_and {PROP : bi} (Γ : env PROP) : PROP.
Admitted.

Local Set Universe Polymorphism.

Inductive tele : Type :=
  | TeleO : tele
  | TeleS {X} (binder : X → tele) : tele.
Fixpoint tele_fun (TT : tele) (T : Type) : Type.
exact (match TT with
  | TeleO => T
  | TeleS b => ∀ x, tele_fun (b x) T
  end).
Defined.

Notation "TT -t> A" :=
  (tele_fun TT A) (at level 99, A at level 200, right associativity).

Definition tele_fold {X Y} {TT : tele} (step : ∀ {A : Type}, (A → Y) → Y) (base : X → Y)
  : (TT -t> X) → Y :=
  (fix rec {TT} : (TT -t> X) → Y :=
     match TT as TT return (TT -t> X) → Y with
     | TeleO => λ x : X, base x
     | TeleS b => λ f, step (λ x, rec (f x))
     end) TT.

Record tele_arg_cons {X : Type} (f : X → Type) : Type := TeleArgCons
  { tele_arg_head : X;
    tele_arg_tail : f tele_arg_head }.
Global Arguments TeleArgCons {_ _} _ _.
Fixpoint tele_arg@{u} (t : tele@{u}) : Type@{u}.
exact (match t with
  | TeleO => unit
  | TeleS f => tele_arg_cons (λ x, tele_arg (f x))
  end).
Defined.

Notation TargS a b :=
  ((@TeleArgCons _ (λ x, tele_arg (_ x)) a b) : (tele_arg (TeleS _))) (only parsing).
Coercion tele_arg : tele >-> Sortclass.

Fixpoint tele_app {TT : tele} {U} : (TT -t> U) -> TT → U :=
  match TT as TT return (TT -t> U) -> TT → U with
  | TeleO => λ F _, F
  | TeleS r => λ (F : TeleS r -t> U) '(TeleArgCons x b),
      tele_app (F x) b
  end.

Fixpoint tele_bind {U} {TT : tele} : (TT → U) → TT -t> U :=
  match TT as TT return (TT → U) → TT -t> U with
  | TeleO => λ F, F tt
  | @TeleS X b => λ (F : TeleS b → U) (x : X),
      tele_bind (λ a, F (TargS x a))
  end.
Definition tforall {TT : tele} (Ψ : TT → Prop) : Prop.
Admitted.

Notation "'∀..' x .. y , P" := (tforall (λ x, .. (tforall (λ y, P)) .. ))
  (at level 200, x binder, y binder, right associativity,
  format "∀..  x  ..  y ,  P") : stdpp_scope.
Definition bi_texist {PROP : bi} {TT : tele@{Quant}} (Ψ : TT → PROP) : PROP.
exact (tele_fold (@bi_exist PROP) (λ x, x) (tele_bind Ψ)).
Defined.
Definition bi_tforall {PROP : bi} {TT : tele@{Quant}} (Ψ : TT → PROP) : PROP.
Admitted.

Notation "'∃..' x .. y , P" := (bi_texist (λ x, .. (bi_texist (λ y, P)) .. )%I)
  (at level 200, x binder, y binder, right associativity,
  format "∃..  x  ..  y ,  P") : bi_scope.

Class MakeSep {PROP : bi} (P Q PQ : PROP) := make_sep : P ∗ Q ⊣⊢ PQ .
Class KnownLMakeSep {PROP : bi} (P Q PQ : PROP) :=
  #[global] knownl_make_sep :: MakeSep P Q PQ.

Section tactics.
Context {PROP : bi}.
Implicit Types P Q : PROP.

Lemma tac_start P : envs_entails (Envs Enil Enil 1) P → ⊢ P.
Admitted.

Class AffineEnv (Γ : env PROP) := affine_env : Forall Affine Γ.

Lemma tac_emp_intro Δ : AffineEnv (env_spatial Δ) → envs_entails Δ emp.
Admitted.

Lemma tac_assumption Δ i p P Q :
  envs_lookup i Δ = Some (p,P) →
  FromAssumption p P Q →
  (let Δ' := envs_delete true i p Δ in
   if env_spatial_is_nil Δ' then TCTrue
   else TCOr (Absorbing Q) (AffineEnv (env_spatial Δ'))) →
  envs_entails Δ Q.
Admitted.

Lemma tac_rename Δ i j p P Q :
  envs_lookup i Δ = Some (p,P) →
  match envs_simple_replace i p (Esnoc Enil j P) Δ with
  | None => False
  | Some Δ' => envs_entails Δ' Q
  end →
  envs_entails Δ Q.
Admitted.

Lemma tac_clear Δ i p P Q :
  envs_lookup i Δ = Some (p,P) →
  (if p then TCTrue else TCOr (Affine P) (Absorbing Q)) →
  envs_entails (envs_delete true i p Δ) Q →
  envs_entails Δ Q.
Admitted.

Lemma tac_ex_falso Δ Q : envs_entails Δ False → envs_entails Δ Q.
Admitted.

Lemma tac_pure_intro Δ Q φ a :
  FromPure a Q φ →
  (if a then AffineEnv (env_spatial Δ) else TCTrue) →
  φ →
  envs_entails Δ Q.
Admitted.

Lemma tac_pure Δ i p P φ Q :
  envs_lookup i Δ = Some (p, P) →
  IntoPure P φ →
  (if p then TCTrue else TCOr (Affine P) (Absorbing Q)) →
  (φ → envs_entails (envs_delete true i p Δ) Q) → envs_entails Δ Q.
Admitted.

Lemma tac_intuitionistic Δ i j p P P' Q :
  envs_lookup i Δ = Some (p, P) →
  IntoPersistent p P P' →
  (if p then TCTrue else TCOr (Affine P) (Absorbing Q)) →
  match envs_replace i p true (Esnoc Enil j P') Δ with
  | None => False
  | Some Δ' => envs_entails Δ' Q
  end →
  envs_entails Δ Q.
Admitted.

Lemma tac_spatial Δ i j p P P' Q :
  envs_lookup i Δ = Some (p, P) →
  (if p then FromAffinely P' P else TCEq P' P) →
  match envs_replace i p false (Esnoc Enil j P') Δ with
  | None => False
  | Some Δ' => envs_entails Δ' Q
  end →
  envs_entails Δ Q.
Admitted.

Lemma tac_impl_intro Δ i P P' Q R :
  FromImpl R P Q →
  (if env_spatial_is_nil Δ then TCTrue else Persistent P) →
  FromAffinely P' P →
  match envs_app false (Esnoc Enil i P') Δ with
  | None => False
  | Some Δ' => envs_entails Δ' Q
  end →
  envs_entails Δ R.
Admitted.
Lemma tac_impl_intro_intuitionistic Δ i P P' Q R :
  FromImpl R P Q →
  IntoPersistent false P P' →
  match envs_app true (Esnoc Enil i P') Δ with
  | None => False
  | Some Δ' => envs_entails Δ' Q
  end →
  envs_entails Δ R.
Admitted.
Lemma tac_impl_intro_drop Δ P Q R :
  FromImpl R P Q → envs_entails Δ Q → envs_entails Δ R.
Admitted.

Lemma tac_wand_intro Δ i P Q R :
  FromWand R P Q →
  match envs_app false (Esnoc Enil i P) Δ with
  | None => False
  | Some Δ' => envs_entails Δ' Q
  end →
  envs_entails Δ R.
Admitted.

Lemma tac_wand_intro_intuitionistic Δ i P P' Q R :
  FromWand R P Q →
  IntoPersistent false P P' →
  TCOr (Affine P) (Absorbing Q) →
  match envs_app true (Esnoc Enil i P') Δ with
  | None => False
  | Some Δ' => envs_entails Δ' Q
  end →
  envs_entails Δ R.
Admitted.
Lemma tac_wand_intro_drop Δ P Q R :
  FromWand R P Q →
  TCOr (Affine P) (Absorbing Q) →
  envs_entails Δ Q →
  envs_entails Δ R.
Admitted.

Lemma tac_specialize remove_intuitionistic Δ i p j q P1 P2 R Q :
  envs_lookup i Δ = Some (p, P1) →
  let Δ' := envs_delete remove_intuitionistic i p Δ in
  envs_lookup j Δ' = Some (q, R) →
  IntoWand q p R P1 P2 →
  match envs_replace j q (p &&& q) (Esnoc Enil j P2) Δ' with
  | Some Δ'' => envs_entails Δ'' Q
  | None => False
  end → envs_entails Δ Q.
Admitted.

Lemma tac_specialize_assert Δ j (q am neg : bool) js R P1 P2 P1' Q :
  envs_lookup j Δ = Some (q, R) →
  IntoWand q false R P1 P2 →
  (if am then AddModal P1' P1 Q else TCEq P1' P1) →
  match
    '(Δ1,Δ2) ← envs_split (if neg is true then Right else Left)
                          js (envs_delete true j q Δ);
    Δ2' ← envs_app (negb am &&& q &&& env_spatial_is_nil Δ1) (Esnoc Enil j P2) Δ2;
    Some (Δ1,Δ2')
  with
  | Some (Δ1,Δ2') =>

     envs_entails Δ1 P1' ∧ envs_entails Δ2' Q
  | None => False
  end → envs_entails Δ Q.
Admitted.

Lemma tac_unlock_emp Δ Q : envs_entails Δ Q → envs_entails Δ (emp ∗ locked Q).
Admitted.
Lemma tac_unlock_True Δ Q : envs_entails Δ Q → envs_entails Δ (True ∗ locked Q).
Admitted.
Lemma tac_unlock Δ Q : envs_entails Δ Q → envs_entails Δ (locked Q).
Admitted.

Lemma tac_specialize_frame Δ j (q am : bool) R P1 P2 P1' Q Q' :
  envs_lookup j Δ = Some (q, R) →
  IntoWand q false R P1 P2 →
  (if am then AddModal P1' P1 Q else TCEq P1' P1) →
  envs_entails (envs_delete true j q Δ) (P1' ∗ locked Q') →
  Q' = (P2 -∗ Q)%I →
  envs_entails Δ Q.
Admitted.

Lemma tac_specialize_assert_pure Δ j q a R P1 P2 φ Q :
  envs_lookup j Δ = Some (q, R) →
  IntoWand q false R P1 P2 →
  FromPure a P1 φ →
  φ →
  match envs_simple_replace j q (Esnoc Enil j P2) Δ with
  | None => False
  | Some Δ' => envs_entails Δ' Q
  end →
  envs_entails Δ Q.
Admitted.

Lemma tac_specialize_assert_intuitionistic Δ j q P1 P1' P2 R Q :
  envs_lookup j Δ = Some (q, R) →
  IntoWand q true R P1 P2 →
  Persistent P1 →
  IntoAbsorbingly P1' P1 →
  envs_entails (envs_delete true j q Δ) P1' →
  match envs_simple_replace j q (Esnoc Enil j P2) Δ with
  | Some Δ'' => envs_entails Δ'' Q
  | None => False
  end → envs_entails Δ Q.
Admitted.

Lemma tac_specialize_intuitionistic_helper Δ j q P R R' Q :
  envs_lookup j Δ = Some (q,P) →
  (if q then TCTrue else BiAffine PROP) →
  envs_entails Δ (<absorb> R) →
  IntoPersistent false R R' →
  match envs_replace j q true (Esnoc Enil j R') Δ with
  | Some Δ'' => envs_entails Δ'' Q
  | None => False
  end → envs_entails Δ Q.
Admitted.

Lemma tac_specialize_intuitionistic_helper_done Δ i q P :
  envs_lookup i Δ = Some (q,P) →
  envs_entails Δ (<absorb> P).
Admitted.

Lemma tac_revert Δ i Q :
  match envs_lookup_delete true i Δ with
  | Some (p,P,Δ') => envs_entails Δ' ((if p then □ P else P)%I -∗ Q)
  | None => False
  end →
  envs_entails Δ Q.
Admitted.

Definition IntoEmpValid (φ : Type) (P : PROP) := φ → ⊢ P.

Lemma into_emp_valid_here φ P : AsEmpValid DirectionIntoEmpValid φ P → IntoEmpValid φ P.
Admitted.
Lemma into_emp_valid_impl (φ ψ : Type) P :
  φ → IntoEmpValid ψ P → IntoEmpValid (φ → ψ) P.
Admitted.
Lemma into_emp_valid_forall {A} (φ : A → Type) P x :
  IntoEmpValid (φ x) P → IntoEmpValid (∀ x : A, φ x) P.
Admitted.
Lemma into_emp_valid_tforall {TT : tele} (φ : TT → Prop) P x :
  IntoEmpValid (φ x) P → IntoEmpValid (∀.. x : TT, φ x) P.
Admitted.
Lemma into_emp_valid_proj φ P : IntoEmpValid φ P → φ → ⊢ P.
Admitted.

Lemma tac_pose_proof Δ j P Q :
  (⊢ P) →
  match envs_app true (Esnoc Enil j P) Δ with
  | None => False
  | Some Δ' => envs_entails Δ' Q
  end →
  envs_entails Δ Q.
Admitted.

Lemma tac_pose_proof_hyp Δ i j Q :
  match envs_lookup_delete false i Δ with
  | None => False
  | Some (p, P, Δ') =>
    match envs_app p (Esnoc Enil j P) Δ' with
    | None => False
    | Some Δ'' => envs_entails Δ'' Q
    end
  end →
  envs_entails Δ Q.
Admitted.

Lemma tac_and_destruct Δ i p j1 j2 P P1 P2 Q :
  envs_lookup i Δ = Some (p, P) →
  (if p then IntoAnd true P P1 P2 else IntoSep P P1 P2) →
  match envs_simple_replace i p (Esnoc (Esnoc Enil j1 P1) j2 P2) Δ with
  | None => False
  | Some Δ' => envs_entails Δ' Q
  end →
  envs_entails Δ Q.
Admitted.

Lemma tac_and_destruct_choice Δ i p d j P P1 P2 Q :
  envs_lookup i Δ = Some (p, P) →
  (if p then IntoAnd p P P1 P2 : Type else
    TCOr (IntoAnd p P P1 P2) (TCAnd (IntoSep P P1 P2)
      (if d is Left then TCOr (Affine P2) (Absorbing Q)
       else TCOr (Affine P1) (Absorbing Q)))) →
  match envs_simple_replace i p (Esnoc Enil j (if d is Left then P1 else P2)) Δ with
  | None => False
  | Some Δ' => envs_entails Δ' Q
  end → envs_entails Δ Q.
Admitted.

Lemma tac_frame_pure Δ (φ : Prop) P Q :
  φ → Frame true ⌜φ⌝ P Q → envs_entails Δ Q → envs_entails Δ P.
Admitted.

Lemma tac_frame Δ i p R P Q :
  envs_lookup i Δ = Some (p, R) →
  Frame p R P Q →
  envs_entails (envs_delete false i p Δ) Q → envs_entails Δ P.
Admitted.

Lemma tac_or_destruct Δ i p j1 j2 P P1 P2 Q :
  envs_lookup i Δ = Some (p, P) → IntoOr P P1 P2 →
  match envs_simple_replace i p (Esnoc Enil j1 P1) Δ,
        envs_simple_replace i p (Esnoc Enil j2 P2) Δ with
  | Some Δ1, Some Δ2 => envs_entails Δ1 Q ∧ envs_entails Δ2 Q
  | _, _ => False
  end →
  envs_entails Δ Q.
Admitted.

Lemma tac_forall_intro {A} Δ (Φ : A → PROP) Q name :
  FromForall Q Φ name →
  (
   let _ := name in
   ∀ a, envs_entails Δ (Φ a)) →
  envs_entails Δ Q.
Admitted.

Lemma tac_forall_specialize {A} Δ i p P (Φ : A → PROP) Q :
  envs_lookup i Δ = Some (p, P) → IntoForall P Φ →
  (∃ x : A,
      match envs_simple_replace i p (Esnoc Enil i (Φ x)) Δ with
      | None => False
      | Some Δ' => envs_entails Δ' Q
      end) →
  envs_entails Δ Q.
Admitted.

Lemma tac_exist_destruct {A} Δ i p j P (Φ : A → PROP) (name: ident_name) Q :
  envs_lookup i Δ = Some (p, P) → IntoExist P Φ name →
  (
    let _ := name in
    ∀ a,
     match envs_simple_replace i p (Esnoc Enil j (Φ a)) Δ with
     | Some Δ' => envs_entails Δ' Q
     | None => False
     end) →
  envs_entails Δ Q.
Admitted.

Lemma tac_modal_elim Δ i j p p' φ P' P Q Q' :
  envs_lookup i Δ = Some (p, P) →
  ElimModal φ p p' P P' Q Q' →
  φ →
  match envs_replace i p p' (Esnoc Enil j P') Δ with
  | None => False
  | Some Δ' => envs_entails Δ' Q'
  end →
  envs_entails Δ Q.
Admitted.
End tactics.

Class TransformIntuitionisticEnv {PROP1 PROP2} (M : modality PROP1 PROP2)
    (C : PROP2 → PROP1 → Prop) (Γin : env PROP2) (Γout : env PROP1) := {
  transform_intuitionistic_env :
    (∀ P Q, C P Q → □ P ⊢ M (□ Q)) →
    (∀ P Q, M P ∧ M Q ⊢ M (P ∧ Q)) →
    <affine> env_and_persistently Γin ⊢ M (<affine> env_and_persistently Γout);
  transform_intuitionistic_env_wf : env_wf Γin → env_wf Γout;
  transform_intuitionistic_env_dom i : Γin !! i = None → Γout !! i = None;
}.

Class TransformSpatialEnv {PROP1 PROP2} (M : modality PROP1 PROP2)
    (C : PROP2 → PROP1 → Prop) (Γin : env PROP2) (Γout : env PROP1)
    (filtered : bool) := {
  transform_spatial_env :
    (∀ P Q, C P Q → P ⊢ M Q) →
    ([∗] Γin) ⊢ M ([∗] Γout) ∗ if filtered then True else emp;
  transform_spatial_env_wf : env_wf Γin → env_wf Γout;
  transform_spatial_env_dom i : Γin !! i = None → Γout !! i = None;
}.

Inductive IntoModalIntuitionisticEnv {PROP2} : ∀ {PROP1} (M : modality PROP1 PROP2)
    (Γin : env PROP2) (Γout : env PROP1), modality_action PROP1 PROP2 → Prop :=
  | MIEnvIsEmpty_intuitionistic {PROP1} (M : modality PROP1 PROP2) :
     IntoModalIntuitionisticEnv M Enil Enil MIEnvIsEmpty
  | MIEnvForall_intuitionistic (M : modality PROP2 PROP2) (C : PROP2 → Prop) Γ :
     TCForall C (env_to_list Γ) →
     IntoModalIntuitionisticEnv M Γ Γ (MIEnvForall C)
  | MIEnvTransform_intuitionistic {PROP1}
       (M : modality PROP1 PROP2) (C : PROP2 → PROP1 → Prop) Γin Γout :
     TransformIntuitionisticEnv M C Γin Γout →
     IntoModalIntuitionisticEnv M Γin Γout (MIEnvTransform C)
  | MIEnvClear_intuitionistic {PROP1 : bi} (M : modality PROP1 PROP2) Γ :
     IntoModalIntuitionisticEnv M Γ Enil MIEnvClear
  | MIEnvId_intuitionistic (M : modality PROP2 PROP2) Γ :
     IntoModalIntuitionisticEnv M Γ Γ MIEnvId.

Inductive IntoModalSpatialEnv {PROP2} : ∀ {PROP1} (M : modality PROP1 PROP2)
    (Γin : env PROP2) (Γout : env PROP1), modality_action PROP1 PROP2 → bool → Prop :=
  | MIEnvIsEmpty_spatial {PROP1} (M : modality PROP1 PROP2) :
     IntoModalSpatialEnv M Enil Enil MIEnvIsEmpty false
  | MIEnvForall_spatial (M : modality PROP2 PROP2) (C : PROP2 → Prop) Γ :
     TCForall C (env_to_list Γ) →
     IntoModalSpatialEnv M Γ Γ (MIEnvForall C) false
  | MIEnvTransform_spatial {PROP1}
       (M : modality PROP1 PROP2) (C : PROP2 → PROP1 → Prop) Γin Γout fi :
     TransformSpatialEnv M C Γin Γout fi →
     IntoModalSpatialEnv M Γin Γout (MIEnvTransform C) fi
  | MIEnvClear_spatial {PROP1 : bi} (M : modality PROP1 PROP2) Γ :
     IntoModalSpatialEnv M Γ Enil MIEnvClear false
  | MIEnvId_spatial (M : modality PROP2 PROP2) Γ :
     IntoModalSpatialEnv M Γ Γ MIEnvId false.

Section tac_modal_intro.
  Context {PROP1 PROP2 : bi} (M : modality PROP1 PROP2).

  Lemma tac_modal_intro {A} φ (sel : A) Γp Γs n Γp' Γs' Q Q' fi :
    FromModal φ M sel Q' Q →
    IntoModalIntuitionisticEnv M Γp Γp' (modality_intuitionistic_action M) →
    IntoModalSpatialEnv M Γs Γs' (modality_spatial_action M) fi →
    (if fi then Absorbing Q' else TCTrue) →
    φ →
    envs_entails (Envs Γp' Γs' n) Q → envs_entails (Envs Γp Γs n) Q'.
Admitted.
End tac_modal_intro.

Declare Reduction pm_eval := cbv [

  base.negb base.beq
  base.Pos_succ base.ascii_beq base.string_beq base.positive_beq base.ident_beq

  env_lookup env_lookup_delete env_delete env_app env_replace
  env_dom env_intuitionistic env_spatial env_counter env_spatial_is_nil envs_dom
  envs_lookup envs_lookup_delete envs_delete envs_snoc envs_app
  envs_simple_replace envs_replace envs_split
  envs_clear_spatial envs_clear_intuitionistic envs_incr_counter
  envs_split_go envs_split
  env_to_prop_go env_to_prop env_to_prop_and_go env_to_prop_and

  pm_app pm_option_bind pm_from_option pm_option_fun
].
Ltac pm_eval t :=
  eval pm_eval in t.
Ltac pm_reduce :=

  match goal with |- ?u => let v := pm_eval u in change_no_check v end.
Ltac pm_reflexivity := pm_reduce; exact eq_refl.

Declare Reduction pm_prettify := cbn [

  tele_fold tele_bind tele_app

  bi_persistently_if bi_affinely_if bi_absorbingly_if bi_intuitionistically_if
  bi_wandM bi_laterN
  bi_tforall bi_texist
].
Ltac pm_prettify :=

  match goal with |- ?u => let v := eval pm_prettify in u in change_no_check v end.

Inductive token :=
  | TName : string → token
  | TNat : nat → token
  | TAnon : token
  | TFrame : token
  | TBar : token
  | TBracketL : token
  | TBracketR : token
  | TAmp : token
  | TParenL : token
  | TParenR : token
  | TBraceL : token
  | TBraceR : token
  | TPure : option string → token
  | TIntuitionistic : token
  | TModal : token
  | TPureIntro : token
  | TIntuitionisticIntro : token
  | TModalIntro : token
  | TSimpl : token
  | TDone : token
  | TForall : token
  | TAll : token
  | TMinus : token
  | TSep : token
  | TArrow : direction → token.

Inductive state :=
  | SName : string → state
  | SNat : nat → state
  | SPure : string -> state
  | SNone : state.
Definition cons_state (kn : state) (k : list token) : list token.
exact (match kn with
  | SNone => k
  | SName s => TName (String.rev s) :: k
  | SPure s => TPure (if String.eqb s "" then None else Some (String.rev s)) :: k
  | SNat n => TNat n :: k
  end).
Defined.
Fixpoint tokenize_go (s : string) (k : list token) (kn : state) : list token.
exact (match s with
  | "" => reverse (cons_state kn k)
  | String "?" s => tokenize_go s (TAnon :: cons_state kn k) SNone
  | String "$" s => tokenize_go s (TFrame :: cons_state kn k) SNone
  | String "[" s => tokenize_go s (TBracketL :: cons_state kn k) SNone
  | String "]" s => tokenize_go s (TBracketR :: cons_state kn k) SNone
  | String "|" s => tokenize_go s (TBar :: cons_state kn k) SNone
  | String "(" s => tokenize_go s (TParenL :: cons_state kn k) SNone
  | String ")" s => tokenize_go s (TParenR :: cons_state kn k) SNone
  | String "&" s => tokenize_go s (TAmp :: cons_state kn k) SNone
  | String "{" s => tokenize_go s (TBraceL :: cons_state kn k) SNone
  | String "}" s => tokenize_go s (TBraceR :: cons_state kn k) SNone
  | String "%" s => tokenize_go s (cons_state kn k) (SPure "")
  | String "#" s => tokenize_go s (TIntuitionistic :: cons_state kn k) SNone
  | String ">" s => tokenize_go s (TModal :: cons_state kn k) SNone
  | String "!" (String "%" s) => tokenize_go s (TPureIntro :: cons_state kn k) SNone
  | String "!" (String "#" s) => tokenize_go s (TIntuitionisticIntro :: cons_state kn k) SNone
  | String "!" (String ">" s) => tokenize_go s (TModalIntro :: cons_state kn k) SNone
  | String "/" (String "/" (String "=" s)) =>
     tokenize_go s (TSimpl :: TDone :: cons_state kn k) SNone
  | String "/" (String "/" s) => tokenize_go s (TDone :: cons_state kn k) SNone
  | String "/" (String "=" s) => tokenize_go s (TSimpl :: cons_state kn k) SNone
  | String "*" (String "*" s) => tokenize_go s (TAll :: cons_state kn k) SNone
  | String "*" s => tokenize_go s (TForall :: cons_state kn k) SNone
  | String "-" (String ">" s) => tokenize_go s (TArrow Right :: cons_state kn k) SNone
  | String "<" (String "-" s) => tokenize_go s (TArrow Left :: cons_state kn k) SNone
  | String "-" s => tokenize_go s (TMinus :: cons_state kn k) SNone
  | String (Ascii.Ascii false true false false false true true true)
      (String (Ascii.Ascii false false false true false false false true)
      (String (Ascii.Ascii true true true false true false false true) s)) =>
     tokenize_go s (TSep :: cons_state kn k) SNone
  | String a s =>

     if Ascii.is_space a then tokenize_go s (cons_state kn k) SNone else
     match kn with
     | SNone =>
        match Ascii.is_nat a with
        | Some n => tokenize_go s k (SNat n)
        | None => tokenize_go s k (SName (String a ""))
        end
     | SName s' => tokenize_go s k (SName (String a s'))
     | SPure s' => tokenize_go s k (SPure (String a s'))
     | SNat n =>
        match Ascii.is_nat a with
        | Some n' => tokenize_go s k (SNat (n' + 10 * n))
        | None => tokenize_go s (TNat n :: k) (SName (String a ""))
        end
     end
  end).
Defined.
Definition tokenize (s : string) : list token.
exact (tokenize_go s [] SNone).
Defined.

Inductive sel_pat :=
  | SelPure
  | SelIntuitionistic
  | SelSpatial
  | SelIdent : ident → sel_pat.

Module Export sel_pat.
Definition parse (s : string) : option (list sel_pat).
Admitted.

Ltac parse s :=
  lazymatch type of s with
  | sel_pat => constr:([s])
  | list sel_pat => s
  | ident => constr:([SelIdent s])
  | list ident => eval vm_compute in (SelIdent <$> s)
  | list string => eval vm_compute in (SelIdent ∘ INamed <$> s)
  | string =>
     lazymatch eval vm_compute in (parse s) with
     | Some ?pats => pats
     | _ => fail "sel_pat.parse: cannot parse" s "as a selection pattern"
     end
  | ?X => fail "sel_pat.parse: the term" s
     "is expected to be a selection pattern"
     "(usually a string),"
     "but has unexpected type" X
  end.

Inductive gallina_ident :=
  | IGallinaNamed : string → gallina_ident
  | IGallinaAnon : gallina_ident.

Inductive intro_pat :=
  | IIdent : ident → intro_pat
  | IFresh : intro_pat
  | IDrop : intro_pat
  | IFrame : intro_pat
  | IList : list (list intro_pat) → intro_pat
  | IPure : gallina_ident → intro_pat
  | IIntuitionistic : intro_pat → intro_pat
  | ISpatial : intro_pat → intro_pat
  | IModalElim : intro_pat → intro_pat
  | IRewrite : direction → intro_pat
  | IPureIntro : intro_pat
  | IModalIntro : intro_pat
  | ISimpl : intro_pat
  | IDone : intro_pat
  | IForall : intro_pat
  | IAll : intro_pat
  | IClear : sel_pat → intro_pat
  | IClearFrame : sel_pat → intro_pat.

Module Export intro_pat.
Inductive stack_item :=
  | StPat : intro_pat → stack_item
  | StList : stack_item
  | StConjList : stack_item
  | StBar : stack_item
  | StAmp : stack_item
  | StIntuitionistic : stack_item
  | StSpatial : stack_item
  | StModalElim : stack_item.
Notation stack := (list stack_item).
Fixpoint close_list (k : stack)
    (ps : list intro_pat) (pss : list (list intro_pat)) : option stack.
exact (match k with
  | StList :: k => Some (StPat (IList (ps :: pss)) :: k)
  | StPat pat :: k => close_list k (pat :: ps) pss
  | StIntuitionistic :: k =>
     '(p,ps) ← maybe2 (::) ps; close_list k (IIntuitionistic p :: ps) pss
  | StModalElim :: k =>
     '(p,ps) ← maybe2 (::) ps; close_list k (IModalElim p :: ps) pss
  | StBar :: k => close_list k [] (ps :: pss)
  | _ => None
  end).
Defined.
Fixpoint close_conj_list (k : stack)
    (cur : option intro_pat) (ps : list intro_pat) : option stack.
Admitted.

Fixpoint parse_go (ts : list token) (k : stack) : option stack :=
  match ts with
  | [] => Some k
  | TName "_" :: ts => parse_go ts (StPat IDrop :: k)
  | TName s :: ts => parse_go ts (StPat (IIdent s) :: k)
  | TAnon :: ts => parse_go ts (StPat IFresh :: k)
  | TFrame :: ts => parse_go ts (StPat IFrame :: k)
  | TBracketL :: ts => parse_go ts (StList :: k)
  | TBar :: ts => parse_go ts (StBar :: k)
  | TBracketR :: ts => close_list k [] [] ≫= parse_go ts
  | TParenL :: ts => parse_go ts (StConjList :: k)
  | TAmp :: ts => parse_go ts (StAmp :: k)
  | TParenR :: ts => close_conj_list k None [] ≫= parse_go ts
  | TPure (Some s) :: ts => parse_go ts (StPat (IPure (IGallinaNamed s)) :: k)
  | TPure None :: ts => parse_go ts (StPat (IPure IGallinaAnon) :: k)
  | TIntuitionistic :: ts => parse_go ts (StIntuitionistic :: k)
  | TMinus :: TIntuitionistic :: ts => parse_go ts (StSpatial :: k)
  | TModal :: ts => parse_go ts (StModalElim :: k)
  | TArrow d :: ts => parse_go ts (StPat (IRewrite d) :: k)
  | TPureIntro :: ts => parse_go ts (StPat IPureIntro :: k)
  | (TModalIntro | TIntuitionisticIntro) :: ts => parse_go ts (StPat IModalIntro :: k)
  | TSimpl :: ts => parse_go ts (StPat ISimpl :: k)
  | TDone :: ts => parse_go ts (StPat IDone :: k)
  | TAll :: ts => parse_go ts (StPat IAll :: k)
  | TForall :: ts => parse_go ts (StPat IForall :: k)
  | TBraceL :: ts => parse_clear ts k
  | _ => None
  end
with parse_clear (ts : list token) (k : stack) : option stack :=
  match ts with
  | TFrame :: TName s :: ts => parse_clear ts (StPat (IClearFrame (SelIdent s)) :: k)
  | TFrame :: TPure None :: ts => parse_clear ts (StPat (IClearFrame SelPure) :: k)
  | TFrame :: TIntuitionistic :: ts => parse_clear ts (StPat (IClearFrame SelIntuitionistic) :: k)
  | TFrame :: TSep :: ts => parse_clear ts (StPat (IClearFrame SelSpatial) :: k)
  | TName s :: ts => parse_clear ts (StPat (IClear (SelIdent s)) :: k)
  | TPure None :: ts => parse_clear ts (StPat (IClear SelPure) :: k)
  | TIntuitionistic :: ts => parse_clear ts (StPat (IClear SelIntuitionistic) :: k)
  | TSep :: ts => parse_clear ts (StPat (IClear SelSpatial) :: k)
  | TBraceR :: ts => parse_go ts k
  | _ => None
  end.
Fixpoint close (k : stack) (ps : list intro_pat) : option (list intro_pat).
exact (match k with
  | [] => Some ps
  | StPat pat :: k => close k (pat :: ps)
  | StIntuitionistic :: k => '(p,ps) ← maybe2 (::) ps; close k (IIntuitionistic p :: ps)
  | StSpatial :: k => '(p,ps) ← maybe2 (::) ps; close k (ISpatial p :: ps)
  | StModalElim :: k => '(p,ps) ← maybe2 (::) ps; close k (IModalElim p :: ps)
  | _ => None
  end).
Defined.
Definition parse (s : string) : option (list intro_pat).
exact (k ← parse_go (tokenize s) []; close k []).
Defined.

Ltac parse s :=
  lazymatch type of s with
  | list intro_pat => s
  | intro_pat => constr:([s])
  | list string =>
     lazymatch eval vm_compute in (mjoin <$> mapM parse s) with
     | Some ?pats => pats
     | _ => fail "intro_pat.parse: cannot parse" s "as an introduction pattern"
     end
  | string =>
     lazymatch eval vm_compute in (parse s) with
     | Some ?pats => pats
     | _ => fail "intro_pat.parse: cannot parse" s "as an introduction pattern"
     end
  | ident => constr:([IIdent s])
  | ?X => fail "intro_pat.parse: the term" s
     "is expected to be an introduction pattern"
     "(usually a string),"
     "but has unexpected type" X
  end.

Fixpoint intro_pat_intuitionistic (p : intro_pat) :=
  match p with
  | IPure _ => true
  | IRewrite _ => true
  | IIntuitionistic _ => true
  | IList pps => forallb (forallb intro_pat_intuitionistic) pps
  | ISimpl => true
  | IClear _ => true
  | IClearFrame _ => true
  | _ => false
  end.

Ltac intro_pat_intuitionistic p :=
  lazymatch type of p with
  | intro_pat => eval cbv in (intro_pat_intuitionistic p)
  | list intro_pat => eval cbv in (forallb intro_pat_intuitionistic p)
  | string =>
     let pat := intro_pat.parse p in
     eval cbv in (forallb intro_pat_intuitionistic pat)
  | ident => false
  | bool => p
  | ?X => fail "intro_pat_intuitionistic: the term" p
     "is expected to be an introduction pattern"
     "(usually a string),"
     "but has unexpected type" X
  end.

Inductive goal_kind := GSpatial | GModal | GIntuitionistic.

Record spec_goal := SpecGoal {
  spec_goal_kind : goal_kind;
  spec_goal_negate : bool;
  spec_goal_frame : list ident;
  spec_goal_hyps : list ident;
  spec_goal_done : bool
}.

Inductive spec_pat :=
  | SIdent : ident → list spec_pat → spec_pat
  | SPureGoal (perform_done : bool) : spec_pat
  | SGoal : spec_goal → spec_pat
  | SAutoFrame : goal_kind → spec_pat.

Module Export spec_pat.

Ltac parse s :=
  lazymatch type of s with
  | list spec_pat => s
  | spec_pat => constr:([s])
  | string =>
     lazymatch eval vm_compute in (parse s) with
     | Some ?pats => pats
     | _ => fail "spec_pat.parse: cannot parse" s "as a specialization pattern"
     end
  | ident => constr:([SIdent s []])
  | ?X => fail "spec_pat.parse: the term" s
     "is expected to be a specialization pattern"
     "(usually a string),"
     "but has unexpected type" X
  end.

Inductive tlist := tnil : tlist | tcons : Type → tlist → tlist.

Inductive hlist : tlist → Type :=
  | hnil : hlist tnil
  | hcons {A As} : A → hlist As → hlist (tcons A As).

Module Export StringToIdent.
  Import Ltac2.Ltac2.

  Ltac2 Type exn ::= [ NotStringLiteral(constr) | InvalidIdent(string) ].

  Ltac2 coq_byte_to_int (b : constr) : int :=
    match! b with

    | x00 => 0 | x01 => 1 | x02 => 2 | x03 => 3 | x04 => 4 | x05 => 5 | x06 => 6 | x07 => 7 | x08 => 8 | x09 => 9 | x0a => 10 | x0b => 11 | x0c => 12 | x0d => 13 | x0e => 14 | x0f => 15 | x10 => 16 | x11 => 17 | x12 => 18 | x13 => 19 | x14 => 20 | x15 => 21 | x16 => 22 | x17 => 23 | x18 => 24 | x19 => 25 | x1a => 26 | x1b => 27 | x1c => 28 | x1d => 29 | x1e => 30 | x1f => 31 | x20 => 32 | x21 => 33 | x22 => 34 | x23 => 35 | x24 => 36 | x25 => 37 | x26 => 38 | x27 => 39 | x28 => 40 | x29 => 41 | x2a => 42 | x2b => 43 | x2c => 44 | x2d => 45 | x2e => 46 | x2f => 47 | x30 => 48 | x31 => 49 | x32 => 50 | x33 => 51 | x34 => 52 | x35 => 53 | x36 => 54 | x37 => 55 | x38 => 56 | x39 => 57 | x3a => 58 | x3b => 59 | x3c => 60 | x3d => 61 | x3e => 62 | x3f => 63 | x40 => 64 | x41 => 65 | x42 => 66 | x43 => 67 | x44 => 68 | x45 => 69 | x46 => 70 | x47 => 71 | x48 => 72 | x49 => 73 | x4a => 74 | x4b => 75 | x4c => 76 | x4d => 77 | x4e => 78 | x4f => 79 | x50 => 80 | x51 => 81 | x52 => 82 | x53 => 83 | x54 => 84 | x55 => 85 | x56 => 86 | x57 => 87 | x58 => 88 | x59 => 89 | x5a => 90 | x5b => 91 | x5c => 92 | x5d => 93 | x5e => 94 | x5f => 95 | x60 => 96 | x61 => 97 | x62 => 98 | x63 => 99 | x64 => 100 | x65 => 101 | x66 => 102 | x67 => 103 | x68 => 104 | x69 => 105 | x6a => 106 | x6b => 107 | x6c => 108 | x6d => 109 | x6e => 110 | x6f => 111 | x70 => 112 | x71 => 113 | x72 => 114 | x73 => 115 | x74 => 116 | x75 => 117 | x76 => 118 | x77 => 119 | x78 => 120 | x79 => 121 | x7a => 122 | x7b => 123 | x7c => 124 | x7d => 125 | x7e => 126 | x7f => 127 | x80 => 128 | x81 => 129 | x82 => 130 | x83 => 131 | x84 => 132 | x85 => 133 | x86 => 134 | x87 => 135 | x88 => 136 | x89 => 137 | x8a => 138 | x8b => 139 | x8c => 140 | x8d => 141 | x8e => 142 | x8f => 143 | x90 => 144 | x91 => 145 | x92 => 146 | x93 => 147 | x94 => 148 | x95 => 149 | x96 => 150 | x97 => 151 | x98 => 152 | x99 => 153 | x9a => 154 | x9b => 155 | x9c => 156 | x9d => 157 | x9e => 158 | x9f => 159 | xa0 => 160 | xa1 => 161 | xa2 => 162 | xa3 => 163 | xa4 => 164 | xa5 => 165 | xa6 => 166 | xa7 => 167 | xa8 => 168 | xa9 => 169 | xaa => 170 | xab => 171 | xac => 172 | xad => 173 | xae => 174 | xaf => 175 | xb0 => 176 | xb1 => 177 | xb2 => 178 | xb3 => 179 | xb4 => 180 | xb5 => 181 | xb6 => 182 | xb7 => 183 | xb8 => 184 | xb9 => 185 | xba => 186 | xbb => 187 | xbc => 188 | xbd => 189 | xbe => 190 | xbf => 191 | xc0 => 192 | xc1 => 193 | xc2 => 194 | xc3 => 195 | xc4 => 196 | xc5 => 197 | xc6 => 198 | xc7 => 199 | xc8 => 200 | xc9 => 201 | xca => 202 | xcb => 203 | xcc => 204 | xcd => 205 | xce => 206 | xcf => 207 | xd0 => 208 | xd1 => 209 | xd2 => 210 | xd3 => 211 | xd4 => 212 | xd5 => 213 | xd6 => 214 | xd7 => 215 | xd8 => 216 | xd9 => 217 | xda => 218 | xdb => 219 | xdc => 220 | xdd => 221 | xde => 222 | xdf => 223 | xe0 => 224 | xe1 => 225 | xe2 => 226 | xe3 => 227 | xe4 => 228 | xe5 => 229 | xe6 => 230 | xe7 => 231 | xe8 => 232 | xe9 => 233 | xea => 234 | xeb => 235 | xec => 236 | xed => 237 | xee => 238 | xef => 239 | xf0 => 240 | xf1 => 241 | xf2 => 242 | xf3 => 243 | xf4 => 244 | xf5 => 245 | xf6 => 246 | xf7 => 247 | xf8 => 248 | xf9 => 249 | xfa => 250 | xfb => 251 | xfc => 252 | xfd => 253 | xfe => 254 | xff => 255
    end.

  Ltac2 coq_byte_to_char (b : constr) : char :=
    Char.of_int (coq_byte_to_int b).
Fixpoint coq_string_to_list_byte (s : string) : list byte.
Admitted.

  Ltac2 rec coq_byte_list_blit_list (pos : int) (ls : constr) (str : string) : unit :=
    match! ls with
    | nil => ()
    | ?c :: ?ls =>
      let b := coq_byte_to_char c in
      String.set str pos b; coq_byte_list_blit_list (Int.add pos 1) ls str
    end.

  Ltac2 rec coq_string_length (s : constr) : int :=
    match! s with
    | EmptyString => 0
    | String _ ?s' => Int.add 1 (coq_string_length s')
    | _ => Control.throw (NotStringLiteral s)
    end.

  Ltac2 compute (c : constr) : constr :=
    Std.eval_vm None c.

  Ltac2 coq_string_to_string (s : constr) : string :=
    let l := coq_string_length s in
    let str := String.make l (Char.of_int 0) in
    let bytes := compute constr:(coq_string_to_list_byte $s) in
    let _ := coq_byte_list_blit_list 0 bytes str in
    str.

  Ltac2 string_to_ident (s : string) : ident :=
    match Ident.of_string s with
    | Some id => id
    | None => Control.throw (InvalidIdent s)
    end.

  Ltac2 coq_string_to_ident (s : constr) : ident :=
    string_to_ident (coq_string_to_string s).

  Ltac string_to_ident_cps :=
    ltac2:(s1 r |- let s := Option.get (Ltac1.to_constr s1) in
                   let ident := coq_string_to_ident s in
                   Ltac1.apply r [Ltac1.of_ident ident] Ltac1.run).
End StringToIdent.

Ltac rename_by_string id s :=
  StringToIdent.string_to_ident_cps s ltac:(fun x => rename id into x).

Ltac iSolveSideCondition :=
  lazymatch goal with
  | |- pm_error ?err => fail "" err
  | _ => split_and?; try solve [ fast_done | solve_ndisj | tc_solve ]
  end.

Ltac pretty_ident H :=
  lazymatch H with
  | INamed ?H => H
  | ?H => H
  end.

Ltac iGetCtx :=
  lazymatch goal with
  | |- envs_entails ?Δ _ => Δ
  | |- context[ envs_split _ _ ?Δ ] => Δ
  end.

Ltac iMissingHypsCore Δ Hs :=
  let Hhyps := pm_eval (envs_dom Δ) in
  eval vm_compute in (list_difference Hs Hhyps).

Ltac iTypeOf H :=
  let Δ := match goal with |- envs_entails ?Δ _ => Δ end in
  pm_eval (envs_lookup H Δ).

Ltac iBiOfGoal :=
  match goal with |- @envs_entails ?PROP _ _ => PROP end.

Tactic Notation "iStartProof" :=
  lazymatch goal with
  | |- (let _ := _ in _) => fail "iStartProof: goal is a `let`, use `simpl`,"
                                 "`intros x`, `iIntros (x)`, or `iIntros ""%x"""
  | |- envs_entails _ _ => idtac
  | |- ?φ => notypeclasses refine (as_emp_valid_2 φ _ _);
               [tc_solve || fail "iStartProof: not a BI assertion:" φ
               |notypeclasses refine (tac_start _ _)]
  end.

Ltac iFresh :=

  let start :=
    lazymatch goal with
    | _ => iStartProof
    end in
  let c :=
    lazymatch goal with
    | |- envs_entails (Envs _ _ ?c) _ => c
    end in
  let inc :=
    lazymatch goal with
    | |- envs_entails (Envs ?Δp ?Δs _) ?Q =>
      let c' := eval vm_compute in (Pos.succ c) in
      change_no_check (envs_entails (Envs Δp Δs c') Q)
    end in
  constr:(IAnon c).

Tactic Notation "iRename" constr(H1) "into" constr(H2) :=
  eapply tac_rename with H1 H2 _ _;
    [pm_reflexivity ||
     let H1 := pretty_ident H1 in
     fail "iRename:" H1 "not found"
    |pm_reduce;
     lazymatch goal with
       | |- False =>
         let H2 := pretty_ident H2 in
         fail "iRename:" H2 "not fresh"
       | _ => idtac
     end].

Inductive esel_pat :=
  | ESelPure
  | ESelIdent :  bool → ident → esel_pat.

Local Ltac iElaborateSelPat_go pat Δ Hs :=
  lazymatch pat with
  | [] => eval cbv in Hs
  | SelPure :: ?pat =>  iElaborateSelPat_go pat Δ (ESelPure :: Hs)
  | SelIntuitionistic :: ?pat =>
    let Hs' := pm_eval (env_dom (env_intuitionistic Δ)) in
    let Δ' := pm_eval (envs_clear_intuitionistic Δ) in
    iElaborateSelPat_go pat Δ' ((ESelIdent true <$> Hs') ++ Hs)
  | SelSpatial :: ?pat =>
    let Hs' := pm_eval (env_dom (env_spatial Δ)) in
    let Δ' := pm_eval (envs_clear_spatial Δ) in
    iElaborateSelPat_go pat Δ' ((ESelIdent false <$> Hs') ++ Hs)
  | SelIdent ?H :: ?pat =>
    lazymatch pm_eval (envs_lookup_delete false H Δ) with
    | Some (?p,_,?Δ') =>  iElaborateSelPat_go pat Δ' (ESelIdent p H :: Hs)
    | None =>
      let H := pretty_ident H in
      fail "iElaborateSelPat:" H "not found"
    end
  end.

Ltac iElaborateSelPat pat :=
  lazymatch goal with
  | |- envs_entails ?Δ _ =>
    let pat := sel_pat.parse pat in iElaborateSelPat_go pat Δ (@nil esel_pat)
  end.

Ltac _iClearHyp H :=
  eapply tac_clear with H _ _;
    [pm_reflexivity ||
     let H := pretty_ident H in
     fail "iClear:" H "not found"
    |pm_reduce; tc_solve ||
     let H := pretty_ident H in
     let P := match goal with |- TCOr (Affine ?P) _ => P end in
     fail "iClear:" H ":" P "not affine and the goal not absorbing"
    |pm_reduce].

Local Ltac iClear_go Hs :=
  lazymatch Hs with
  | [] => idtac
  | ESelPure :: ?Hs => clear; iClear_go Hs
  | ESelIdent _ ?H :: ?Hs => _iClearHyp H; iClear_go Hs
  end.
Tactic Notation "iClear" constr(Hs) :=
  iStartProof; let Hs := iElaborateSelPat Hs in iClear_go Hs.

Tactic Notation "iExact" constr(H) :=
  eapply tac_assumption with H _ _;
    [pm_reflexivity ||
     let H := pretty_ident H in
     fail "iExact:" H "not found"
    |tc_solve ||
     let H := pretty_ident H in
     let P := match goal with |- FromAssumption _ ?P _ => P end in
     fail "iExact:" H ":" P "does not match goal"
    |pm_reduce; tc_solve ||
     let H := pretty_ident H in
     fail "iExact: remaining hypotheses not affine and the goal not absorbing"].

Tactic Notation "iExFalso" :=
  iStartProof;
  apply tac_ex_falso.

Ltac _iIntuitionistic H H' :=
  eapply tac_intuitionistic with H H' _ _ _;
    [pm_reflexivity ||
     let H := pretty_ident H in
     fail "iIntuitionistic:" H "not found"
    |tc_solve ||
     let P := match goal with |- IntoPersistent _ ?P _ => P end in
     fail "iIntuitionistic:" P "not persistent"
    |pm_reduce; tc_solve ||
     let P := match goal with |- TCOr (Affine ?P) _ => P end in
     fail "iIntuitionistic:" P "not affine and the goal not absorbing"
    |pm_reduce;
     lazymatch goal with
     | |- False =>
       let H' := pretty_ident H' in
       fail "iIntuitionistic:" H' "not fresh"
     | _ => idtac
     end].

Ltac _iSpatial H H' :=
  eapply tac_spatial with H H' _ _ _;
    [pm_reflexivity ||
     let H := pretty_ident H in
     fail "iSpatial:" H "not found"
    |pm_reduce; tc_solve
    |pm_reduce;
     lazymatch goal with
     | |- False =>
       let H' := pretty_ident H' in
       fail "iSpatial:" H' "not fresh"
     | _ => idtac
     end].

Tactic Notation "iPure" constr(H) "as" simple_intropattern(pat) :=
  eapply tac_pure with H _ _ _;
    [pm_reflexivity ||
     let H := pretty_ident H in
     fail "iPure:" H "not found"
    |tc_solve ||
     let P := match goal with |- IntoPure ?P _ => P end in
     fail "iPure:" P "not pure"
    |pm_reduce; tc_solve ||
     let P := match goal with |- TCOr (Affine ?P) _ => P end in
     fail "iPure:" P "not affine and the goal not absorbing"
    |pm_reduce; intros pat].

Tactic Notation "iEmpIntro" :=
  iStartProof;
  eapply tac_emp_intro;
    [pm_reduce; tc_solve ||
     fail "iEmpIntro: spatial context contains non-affine hypotheses"].

Tactic Notation "iPureIntro" :=
  iStartProof;
  eapply tac_pure_intro;
    [tc_solve ||
     let P := match goal with |- FromPure _ ?P _ => P end in
     fail "iPureIntro:" P "not pure"
    |pm_reduce; tc_solve ||
     fail "iPureIntro: spatial context contains non-affine hypotheses"
    |].

Ltac _iFrameFinish :=
  pm_prettify;
  try match goal with
  | |- envs_entails _ True => by iPureIntro
  | |- envs_entails _ emp => iEmpIntro
  end.

Ltac _iFramePure t :=
  iStartProof;
  let φ := type of t in
  eapply (tac_frame_pure _ _ _ _ t);
    [tc_solve || fail "iFrame: cannot frame" φ
    |].

Ltac _iFrameHyp H :=
  iStartProof;
  eapply tac_frame with H _ _ _;
    [pm_reflexivity ||
     let H := pretty_ident H in
     fail "iFrame:" H "not found"
    |tc_solve ||
     let R := match goal with |- Frame _ ?R _ _ => R end in
     fail "iFrame: cannot frame" R
    |pm_reduce].

Ltac _iFrameAnyPure :=
  repeat match goal with H : _ |- _ => _iFramePure H end.

Ltac _iFrameAnyIntuitionistic :=
  iStartProof;
  let rec go Hs :=
    match Hs with [] => idtac | ?H :: ?Hs => repeat _iFrameHyp H; go Hs end in
  match goal with
  | |- envs_entails ?Δ _ =>

     let Hs := eval lazy in (env_dom (env_intuitionistic Δ)) in go Hs
  end.

Ltac _iFrameAnySpatial :=
  iStartProof;
  let rec go Hs :=
    match Hs with [] => idtac | ?H :: ?Hs => try _iFrameHyp H; go Hs end in
  match goal with
  | |- envs_entails ?Δ _ =>

     let Hs := eval lazy in (env_dom (env_spatial Δ)) in go Hs
  end.

Ltac _iFrame_go Hs :=
  lazymatch Hs with
  | [] => idtac
  | SelPure :: ?Hs => _iFrameAnyPure; _iFrame_go Hs
  | SelIntuitionistic :: ?Hs => _iFrameAnyIntuitionistic; _iFrame_go Hs
  | SelSpatial :: ?Hs => _iFrameAnySpatial; _iFrame_go Hs
  | SelIdent ?H :: ?Hs => _iFrameHyp H; _iFrame_go Hs
  end.

Ltac _iFrame0 Hs :=
  let Hs := sel_pat.parse Hs in

  lazymatch Hs with
  | [] => idtac
  | _ => _iFrame_go Hs; _iFrameFinish
  end.
Tactic Notation "iFrame" constr(Hs) := _iFrame0 Hs.

Tactic Notation "_iIntro" "(" simple_intropattern(x) ")" :=

  (

    intros x
  ) || (

    iStartProof;
    lazymatch goal with
    | |- envs_entails _ _ =>
      eapply tac_forall_intro;
        [tc_solve ||
         let P := match goal with |- FromForall ?P _ _ => P end in
         fail "iIntro: cannot turn" P "into a universal quantifier"
        |let name := lazymatch goal with
                     | |- let _ := (λ name, _) in _ => name
                     end in
         pm_prettify;
         let y := fresh name in
         intros y; revert y; intros x
         ]
    end).

Ltac _iIntroSpatial H :=
  iStartProof;
  first
  [
    eapply tac_impl_intro with H _ _ _;
      [tc_solve
      |pm_reduce; tc_solve ||
       let P := lazymatch goal with |- Persistent ?P => P end in
       let H := pretty_ident H in
       fail 1 "iIntro: introducing non-persistent" H ":" P
              "into non-empty spatial context"
      |tc_solve
      |pm_reduce;
       let H := pretty_ident H in
        lazymatch goal with
        | |- False =>
          let H := pretty_ident H in
          fail 1 "iIntro:" H "not fresh"
        | _ => idtac
        end]
  |
    eapply tac_wand_intro with H _ _;
      [tc_solve
      | pm_reduce;
        lazymatch goal with
        | |- False =>
          let H := pretty_ident H in
          fail 1 "iIntro:" H "not fresh"
        | _ => idtac
        end]
  | let H := pretty_ident H in
    fail 1 "iIntro: could not introduce" H ", goal is not a wand or implication" ].

Ltac _iIntroPersistent H :=
  iStartProof;
  first
  [
   eapply tac_impl_intro_intuitionistic with H _ _ _;
     [tc_solve
     |tc_solve ||
      let P := match goal with |- IntoPersistent _ ?P _ => P end in
      fail 1 "iIntro:" P "not persistent"
     |pm_reduce;
      lazymatch goal with
      | |- False =>
        let H := pretty_ident H in
        fail 1 "iIntro:" H "not fresh"
      | _ => idtac
      end]
  |
   eapply tac_wand_intro_intuitionistic with H _ _ _;
     [tc_solve
     |tc_solve ||
      let P := match goal with |- IntoPersistent _ ?P _ => P end in
      fail 1 "iIntro:" P "not intuitionistic"
     |tc_solve ||
      let P := match goal with |- TCOr (Affine ?P) _ => P end in
      fail 1 "iIntro:" P "not affine and the goal not absorbing"
     |pm_reduce;
      lazymatch goal with
      | |- False =>
        let H := pretty_ident H in
        fail 1 "iIntro:" H "not fresh"
      | _ => idtac
      end]
  |fail 1 "iIntro: nothing to introduce"].

Ltac _iIntroMaybePersistent H p :=
  lazymatch p with
  | true => _iIntroPersistent H
  | _ =>  _iIntroSpatial H
  end.

Ltac _iIntroDrop :=
  iStartProof;
  first
  [
   eapply tac_impl_intro_drop;
     [tc_solve
     |]
  |
   eapply tac_wand_intro_drop;
     [tc_solve
     |tc_solve ||
      let P := match goal with |- TCOr (Affine ?P) _ => P end in
      fail 1 "iIntro:" P "not affine and the goal not absorbing"
     |]
  |
   _iIntro (_)

  |fail 1 "iIntro: nothing to introduce"].

Ltac _iIntroForall :=
  lazymatch goal with
  | |- ∀ _, ?P => fail
  | |- ∀ _, _ => intro
  | |- let _ := _ in _ => intro
  | |- _ =>
    iStartProof;
    lazymatch goal with
    | |- envs_entails _ (∀ x : _, _) => let x' := fresh x in _iIntro (x')
    end
  end.
Ltac _iIntro :=
  lazymatch goal with
  | |- _ → ?P => intro
  | |- _ =>
    iStartProof;
    lazymatch goal with
    | |- envs_entails _ (_ -∗ _) => _iIntro (?) ||
        let H := iFresh in
        _iIntroPersistent H ||
        _iIntroSpatial H
    | |- envs_entails _ (_ → _) => _iIntro (?) ||
         let H := iFresh in
         _iIntroSpatial H ||
         _iIntroSpatial H
    end
  end.

Tactic Notation "iRevertHyp" constr(H) "with" tactic1(tac) :=
  eapply tac_revert with H;
    [lazymatch goal with
     | |- match envs_lookup_delete true ?i ?Δ with _ => _ end =>
        lazymatch eval pm_eval in (envs_lookup_delete true i Δ) with
        | Some (?p,_,_) => pm_reduce; tac p
        | None =>
           let H := pretty_ident H in
           fail "iRevert:" H "not found"
        end
     end].

Record iTrm {X As S} :=
  ITrm { itrm : X ; itrm_vars : hlist As ; itrm_hyps : S }.

Tactic Notation "iPoseProofCoreHyp" constr(H) "as" constr(Hnew) :=
  let Δ := iGetCtx in
  notypeclasses refine (tac_pose_proof_hyp _ H Hnew _ _);
    pm_reduce;
    lazymatch goal with
    | |- False =>
      let lookup := pm_eval (envs_lookup_delete false H Δ) in
      lazymatch lookup with
      | None =>
        let H := pretty_ident H in
        fail "iPoseProof:" H "not found"
      | _ =>
        let Hnew := pretty_ident Hnew in
        fail "iPoseProof:" Hnew "not fresh"
      end
    | _ => idtac
    end.

Ltac iIntoEmpValid_go :=
  lazymatch goal with
  | |- IntoEmpValid (let _ := _ in _) _ =>

    lazy zeta; iIntoEmpValid_go
  | |- IntoEmpValid (?φ → ?ψ) _ =>

    notypeclasses refine (into_emp_valid_impl _ _ _ _ _);
      [|iIntoEmpValid_go]
  | |- IntoEmpValid (∀ _, _) _ =>

    notypeclasses refine (into_emp_valid_forall _ _ _ _); iIntoEmpValid_go
  | |- IntoEmpValid (∀.. _, _) _ =>

    notypeclasses refine (into_emp_valid_tforall _ _ _ _); iIntoEmpValid_go
  | |- _ =>
    first
      [
       notypeclasses refine (into_emp_valid_impl _ _ _ _ _);
         [|iIntoEmpValid_go]
      |
       notypeclasses refine (into_emp_valid_forall _ _ _ _); iIntoEmpValid_go
      |
       notypeclasses refine (into_emp_valid_tforall _ _ _ _); iIntoEmpValid_go
      |
       notypeclasses refine (into_emp_valid_here _ _ _) ]
  end.

Ltac iIntoEmpValid :=

  iIntoEmpValid_go;
    [..
    |tc_solve ||
     let φ := lazymatch goal with |- AsEmpValid _ ?φ _ => φ end in
     fail "iPoseProof:" φ "not a BI assertion"].

Tactic Notation "iPoseProofCoreLem" open_constr(lem) "as" tactic3(tac) :=
  let Hnew := iFresh in
  notypeclasses refine (tac_pose_proof _ Hnew _ _ (into_emp_valid_proj _ _ _ lem) _);
    [iIntoEmpValid
    |pm_reduce;
     lazymatch goal with
     | |- False =>
       let Hnew := pretty_ident Hnew in
       fail "iPoseProof:" Hnew "not fresh"
     | _ => tac Hnew
     end];

  try tc_solve.

Local Ltac iSpecializeArgs_go H xs :=
  lazymatch xs with
  | hnil => idtac
  | hcons ?x ?xs =>
     notypeclasses refine (tac_forall_specialize _ H _ _ _ _ _ _ _);
       [pm_reflexivity ||
        let H := pretty_ident H in
        fail "iSpecialize:" H "not found"
       |tc_solve ||
        let P := match goal with |- IntoForall ?P _ => P end in
        fail "iSpecialize: cannot instantiate" P "with" x
       |lazymatch goal with
        | |- ∃ _ : ?A, _ =>
          notypeclasses refine (@ex_intro A _ x _)
        end; [shelve..|pm_reduce; iSpecializeArgs_go H xs]]
  end.
Local Tactic Notation "iSpecializeArgs" constr(H) open_constr(xs) :=
  iSpecializeArgs_go H xs.

Ltac iSpecializePat_go H1 pats :=
  let solve_to_wand H1 :=
    tc_solve ||
    let P := match goal with |- IntoWand _ _ ?P _ _ => P end in
    fail "iSpecialize:" P "not an implication/wand" in
  let solve_done d :=
    lazymatch d with
    | true =>
       first [ done
             | let Q := match goal with |- envs_entails _ ?Q => Q end in
               fail 1 "iSpecialize: cannot solve" Q "using done"
             | let Q := match goal with |- ?Q => Q end in
               fail 1 "iSpecialize: cannot solve" Q "using done" ]
    | false => idtac
    end in
  let Δ := iGetCtx in
  lazymatch pats with
    | [] => idtac
    | SIdent ?H2 [] :: ?pats =>

       notypeclasses refine (tac_specialize false _ H2 _ H1 _ _ _ _ _ _ _ _ _);
         [pm_reflexivity ||
          let H2 := pretty_ident H2 in
          fail "iSpecialize:" H2 "not found"
         |pm_reflexivity ||
          let H1 := pretty_ident H1 in
          fail "iSpecialize:" H1 "not found"
         |tc_solve ||
          let P := match goal with |- IntoWand _ _ ?P ?Q _ => P end in
          let Q := match goal with |- IntoWand _ _ ?P ?Q _ => Q end in
          fail "iSpecialize: cannot instantiate" P "with" Q
         |pm_reduce; iSpecializePat_go H1 pats]
    | SIdent ?H2 ?pats1 :: ?pats =>

       let H2tmp := iFresh in
       iPoseProofCoreHyp H2 as H2tmp;

       iRevertHyp H1 with (fun p =>
         iSpecializePat_go H2tmp pats1;
           [..
           |_iIntroMaybePersistent H1 p]);

         [..
         |
          notypeclasses refine (tac_specialize true _ H2tmp _ H1 _ _ _ _ _ _ _ _ _);
            [pm_reflexivity ||
             let H2tmp := pretty_ident H2tmp in
             fail "iSpecialize:" H2tmp "not found"
            |pm_reflexivity ||
             let H1 := pretty_ident H1 in
             fail "iSpecialize:" H1 "not found"
            |tc_solve ||
             let P := match goal with |- IntoWand _ _ ?P ?Q _ => P end in
             let Q := match goal with |- IntoWand _ _ ?P ?Q _ => Q end in
             fail "iSpecialize: cannot instantiate" P "with" Q
            |pm_reduce; iSpecializePat_go H1 pats]]
    | SPureGoal ?d :: ?pats =>
       notypeclasses refine (tac_specialize_assert_pure _ H1 _ _ _ _ _ _ _ _ _ _ _ _);
         [pm_reflexivity ||
          let H1 := pretty_ident H1 in
          fail "iSpecialize:" H1 "not found"
         |solve_to_wand H1
         |tc_solve ||
          let Q := match goal with |- FromPure _ ?Q _ => Q end in
          fail "iSpecialize:" Q "not pure"
         |solve_done d
         |pm_reduce;
          iSpecializePat_go H1 pats]
    | SGoal (SpecGoal GIntuitionistic false ?Hs_frame [] ?d) :: ?pats =>
       notypeclasses refine (tac_specialize_assert_intuitionistic _ H1 _ _ _ _ _ _ _ _ _ _ _ _);
         [pm_reflexivity ||
          let H1 := pretty_ident H1 in
          fail "iSpecialize:" H1 "not found"
         |solve_to_wand H1
         |tc_solve ||
          let Q := match goal with |- Persistent ?Q => Q end in
          fail "iSpecialize:" Q "not persistent"
         |tc_solve
         |pm_reduce; iFrame Hs_frame; solve_done d
         |pm_reduce; iSpecializePat_go H1 pats]
    | SGoal (SpecGoal GIntuitionistic _ _ _ _) :: ?pats =>
       fail "iSpecialize: cannot select hypotheses for intuitionistic premise"
    | SGoal (SpecGoal ?m ?lr ?Hs_frame ?Hs ?d) :: ?pats =>
       let Hs' := eval cbv in (if lr then Hs else Hs_frame ++ Hs) in
       notypeclasses refine (tac_specialize_assert _ H1 _
           (if m is GModal then true else false) lr Hs' _ _ _ _ _ _ _ _ _);
         [pm_reflexivity ||
          let H1 := pretty_ident H1 in
          fail "iSpecialize:" H1 "not found"
         |solve_to_wand H1
         |tc_solve || fail "iSpecialize: goal not a modality"
         |pm_reduce;
          lazymatch goal with
          | |- False =>
            let Hs' := iMissingHypsCore Δ Hs' in
            fail "iSpecialize: hypotheses" Hs' "not found"
          | _ =>
            notypeclasses refine (conj _ _);
              [iFrame Hs_frame; solve_done d
              |iSpecializePat_go H1 pats]
          end]
    | SAutoFrame GIntuitionistic :: ?pats =>
       notypeclasses refine (tac_specialize_assert_intuitionistic _ H1 _ _ _ _ _ _ _ _ _ _ _ _);
         [pm_reflexivity ||
          let H1 := pretty_ident H1 in
          fail "iSpecialize:" H1 "not found"
         |solve_to_wand H1
         |tc_solve ||
          let Q := match goal with |- Persistent ?Q => Q end in
          fail "iSpecialize:" Q "not persistent"
         |tc_solve ||
          fail "iSpecialize: Cannot find IntoAbsorbingly;"
               "this should not happen, please report a bug"
         |pm_reduce; solve [iFrame "∗ #"]
         |pm_reduce; iSpecializePat_go H1 pats]
    | SAutoFrame ?m :: ?pats =>
       notypeclasses refine (tac_specialize_frame _ H1 _
           (if m is GModal then true else false) _ _ _ _ _ _ _ _ _ _ _);
         [pm_reflexivity ||
          let H1 := pretty_ident H1 in
          fail "iSpecialize:" H1 "not found"
         |solve_to_wand H1
         |tc_solve || fail "iSpecialize: goal not a modality"
         |pm_reduce;
          first
            [notypeclasses refine (tac_unlock_emp _ _ _)
            |notypeclasses refine (tac_unlock_True _ _ _)
            |iFrame "∗ #"; notypeclasses refine (tac_unlock _ _ _)
            |let P :=
               match goal with |- envs_entails _ (?P ∗ locked _)%I => P end in
             fail 1 "iSpecialize: premise" P "cannot be solved by framing"]
         |exact eq_refl]; _iIntroSpatial H1; iSpecializePat_go H1 pats
    end.

Local Tactic Notation "iSpecializePat" open_constr(H) constr(pat) :=
  let pats := spec_pat.parse pat in iSpecializePat_go H pats.

Fixpoint use_tac_specialize_intuitionistic_helper {M}
    (Δ : envs M) (pats : list spec_pat) : bool :=
  match pats with
  | [] => false
  | SPureGoal _ :: pats =>
     use_tac_specialize_intuitionistic_helper Δ pats
  | SAutoFrame _ :: _ => true
  | SIdent H _ :: pats =>
     match envs_lookup_delete false H Δ with
     | Some (false, _, Δ) => true
     | Some (true, _, Δ) => use_tac_specialize_intuitionistic_helper Δ pats
     | None => false
     end
  | SGoal (SpecGoal GModal _ _ _ _) :: _ => false
  | SGoal (SpecGoal GIntuitionistic _ _ _ _) :: pats =>
     use_tac_specialize_intuitionistic_helper Δ pats
  | SGoal (SpecGoal GSpatial neg Hs_frame Hs _) :: pats =>
     match envs_split (if neg is true then Right else Left)
                      (if neg then Hs else pm_app Hs_frame Hs) Δ with
     | Some (Δ1,Δ2) => if env_spatial_is_nil Δ1
                       then use_tac_specialize_intuitionistic_helper Δ2 pats
                       else true
     | None => false
     end
  end.

Tactic Notation "iSpecializeCore" open_constr(H)
    "with" open_constr(xs) open_constr(pat) "as" constr(p) :=
  let p := intro_pat_intuitionistic p in
  let pat := spec_pat.parse pat in
  let H :=
    lazymatch type of H with
    | string => constr:(INamed H)
    | _ => H
    end in
  iSpecializeArgs H xs; [..|
    lazymatch type of H with
    | ident =>
       let pat := spec_pat.parse pat in
       let Δ := iGetCtx in

       let b := eval lazy [use_tac_specialize_intuitionistic_helper] in
         (if p then use_tac_specialize_intuitionistic_helper Δ pat else false) in
       lazymatch eval pm_eval in b with
       | true =>

          lazymatch iTypeOf H with
          | Some (?q, _) =>
             let PROP := iBiOfGoal in

             lazymatch eval lazy in (q || tc_to_bool (BiAffine PROP)) with
             | true =>
                notypeclasses refine (tac_specialize_intuitionistic_helper _ H _ _ _ _ _ _ _ _ _ _);
                  [pm_reflexivity

                  |pm_reduce; tc_solve

                  |iSpecializePat H pat;
                    [..
                    |notypeclasses refine (tac_specialize_intuitionistic_helper_done _ H _ _ _);
                     pm_reflexivity]
                  |tc_solve ||
                   let Q := match goal with |- IntoPersistent _ ?Q _ => Q end in
                   fail "iSpecialize:" Q "not persistent"
                  |pm_reduce ]
             | false => iSpecializePat H pat
             end
          | None =>
             let H := pretty_ident H in
             fail "iSpecialize:" H "not found"
          end
       | false => iSpecializePat H pat
       end
    | _ => fail "iSpecialize:" H "should be a hypothesis, use iPoseProof instead"
    end].

Tactic Notation "iSpecializeCore" open_constr(t) "as" constr(p) :=
  lazymatch type of t with
  | string => iSpecializeCore t with hnil "" as p
  | ident => iSpecializeCore t with hnil "" as p
  | _ =>
    lazymatch t with
    | ITrm ?H ?xs ?pat => iSpecializeCore H with xs pat as p
    | _ => fail "iSpecialize:" t "should be a proof mode term"
    end
  end.

Tactic Notation "iPoseProofCore" open_constr(lem)
    "as" constr(p) tactic3(tac) :=
  iStartProof;
  let t := lazymatch lem with ITrm ?t ?xs ?pat => t | _ => lem end in
  let t := lazymatch type of t with string => constr:(INamed t) | _ => t end in
  let spec_tac Htmp :=
    lazymatch lem with
    | ITrm _ ?xs ?pat => iSpecializeCore (ITrm Htmp xs pat) as p
    | _ => idtac
    end in
  lazymatch type of t with
  | ident =>
     let Htmp := iFresh in
     iPoseProofCoreHyp t as Htmp; spec_tac Htmp; [..|tac Htmp]
  | _ => iPoseProofCoreLem t as (fun Htmp => spec_tac Htmp; [..|tac Htmp])
  end.

Tactic Notation "iOrDestruct" constr(H) "as" constr(H1) constr(H2) :=
  eapply tac_or_destruct with H _ H1 H2 _ _ _;
    [pm_reflexivity ||
     let H := pretty_ident H in
     fail "iOrDestruct:" H "not found"
    |tc_solve ||
     let P := match goal with |- IntoOr ?P _ _ => P end in
     fail "iOrDestruct: cannot destruct" P
    | pm_reduce;
      lazymatch goal with
      | |- False =>
        let H1 := pretty_ident H1 in
        let H2 := pretty_ident H2 in
        fail "iOrDestruct:" H1 "or" H2 "not fresh"
      |  _ => split
      end].

Ltac _iAndDestruct H H1 H2 :=
  eapply tac_and_destruct with H _ H1 H2 _ _ _;
    [pm_reflexivity ||
     let H := pretty_ident H in
     fail "iAndDestruct:" H "not found"
    |pm_reduce; tc_solve ||
     let P :=
       lazymatch goal with
       | |- IntoSep ?P _ _ => P
       | |- IntoAnd _ ?P _ _ => P
       end in
     fail "iAndDestruct: cannot destruct" P
    |pm_reduce;
     lazymatch goal with
       | |- False =>
         let H1 := pretty_ident H1 in
         let H2 := pretty_ident H2 in
         fail "iAndDestruct:" H1 "or" H2 "not fresh"
       | _ => idtac
     end].

Ltac _iAndDestructChoice H d H' :=
  eapply tac_and_destruct_choice with H _ d H' _ _ _;
    [pm_reflexivity || fail "iAndDestructChoice:" H "not found"
    |pm_reduce; tc_solve ||
     let P := match goal with |- TCOr (IntoAnd _ ?P _ _) _ => P end in
     fail "iAndDestructChoice: cannot destruct" P
    |pm_reduce;
     lazymatch goal with
     | |- False =>
       let H' := pretty_ident H' in
       fail "iAndDestructChoice:" H' "not fresh"
     | _ => idtac
     end].

Tactic Notation "_iExistDestruct" constr(H)
    "as" simple_intropattern(x) constr(Hx) :=
  eapply tac_exist_destruct with H _ Hx _ _ _;
    [pm_reflexivity ||
     let H := pretty_ident H in
     fail "iExistDestruct:" H "not found"
    |tc_solve ||
     let P := match goal with |- IntoExist ?P _ _ => P end in
     fail "iExistDestruct: cannot destruct" P|];
    let name := lazymatch goal with
                | |- let _ := (λ name, _) in _ => name
                end in
    intros _;
    let y := fresh name in
    intros y; pm_reduce;
    lazymatch goal with
    | |- False =>
      let Hx := pretty_ident Hx in
      fail "iExistDestruct:" Hx "not fresh"
    | _ => revert y; intros x
    end.

Tactic Notation "iModIntro" uconstr(sel) :=
  iStartProof;
  notypeclasses refine (tac_modal_intro _ _ sel _ _ _ _ _ _ _ _ _ _ _ _ _ _);
    [tc_solve ||
     fail "iModIntro: the goal is not a modality"
    |tc_solve ||
     let s := lazymatch goal with |- IntoModalIntuitionisticEnv _ _ _ ?s => s end in
     lazymatch eval hnf in s with
     | MIEnvForall ?C => fail "iModIntro: intuitionistic context does not satisfy" C
     | MIEnvIsEmpty => fail "iModIntro: intuitionistic context is non-empty"
     end
    |tc_solve ||
     let s := lazymatch goal with |- IntoModalSpatialEnv _ _ _ ?s _ => s end in
     lazymatch eval hnf in s with
     | MIEnvForall ?C => fail "iModIntro: spatial context does not satisfy" C
     | MIEnvIsEmpty => fail "iModIntro: spatial context is non-empty"
     end
    |pm_reduce; tc_solve ||
     fail "iModIntro: cannot filter spatial context when goal is not absorbing"
    |iSolveSideCondition
    |pm_prettify
      ].
Tactic Notation "iModIntro" := iModIntro _.

Tactic Notation "iModCore" constr(H) "as" constr(H') :=
  eapply tac_modal_elim with H H' _ _ _ _ _ _;
    [pm_reflexivity || fail "iMod:" H "not found"
    |tc_solve ||
     let P := match goal with |- ElimModal _ _ _ ?P _ _ _ => P end in
     let Q := match goal with |- ElimModal _ _ _ _ _ ?Q _ => Q end in
     fail "iMod: cannot eliminate modality" P "in" Q
    |iSolveSideCondition
    |pm_reduce;
     lazymatch goal with
     | |- False =>
       let H' := pretty_ident H' in
       fail "iMod:" H' "not fresh"
     | _ => pm_prettify
     end].

Ltac _ident_for_pat pat :=
  lazymatch pat with
  | IIdent ?x => x
  | _ => let x := iFresh in x
  end.

Ltac _ident_for_pat_default pat default :=
  lazymatch pat with
  | IIdent ?x => x
  | _ =>
    lazymatch default with
    | IAnon _ => default
    | _ => let x := iFresh in x
    end
  end.

Ltac _iDestructHypGo Hz pat0 pat :=
  lazymatch pat with
  | IFresh =>
     lazymatch Hz with
     | IAnon _ => idtac
     | INamed ?Hz => let Hz' := iFresh in iRename Hz into Hz'
     end
  | IDrop => _iClearHyp Hz
  | IFrame => iFrame Hz
  | IIdent Hz => idtac
  | IIdent ?y => iRename Hz into y
  | IList [[]] => iExFalso; iExact Hz

  | IList [[?pat1; IDrop]] =>
     let x := _ident_for_pat_default pat1 Hz in
     _iAndDestructChoice Hz Left x;
     _iDestructHypGo x pat0 pat1
  | IList [[IDrop; ?pat2]] =>
     let x := _ident_for_pat_default pat2 Hz in
     _iAndDestructChoice Hz Right x;
     _iDestructHypGo x pat0 pat2

  | IList [[IPure IGallinaAnon; ?pat2]] =>
     let x := _ident_for_pat_default pat2 Hz in
     _iExistDestruct Hz as ? x; _iDestructHypGo x pat0 pat2
  | IList [[IPure (IGallinaNamed ?s); ?pat2]] =>
     let x := fresh in
     let y := _ident_for_pat_default pat2 Hz in
     _iExistDestruct Hz as x y;
     rename_by_string x s;
     _iDestructHypGo y pat0 pat2
  | IList [[?pat1; ?pat2]] =>

     let x1 := _ident_for_pat_default pat1 Hz in
     let x2 := _ident_for_pat pat2 in
     _iAndDestruct Hz x1 x2;
     _iDestructHypGo x1 pat0 pat1; _iDestructHypGo x2 pat0 pat2
  | IList [_ :: _ :: _] => fail "iDestruct:" pat0 "has too many conjuncts"
  | IList [[_]] => fail "iDestruct:" pat0 "has just a single conjunct"

  | IList [[?pat1];[?pat2]] =>
     let x1 := _ident_for_pat_default pat1 Hz in
     let x2 := _ident_for_pat_default pat2 Hz in
     iOrDestruct Hz as x1 x2;
     [_iDestructHypGo x1 pat0 pat1|_iDestructHypGo x2 pat0 pat2]

  | IList (_ :: _ :: _ :: _) => fail "iDestruct:" pat0 "has too many disjuncts"

  | IList [_;_] => fail "iDestruct: in" pat0 "a disjunct has multiple patterns"

  | IPure IGallinaAnon => iPure Hz as ?
  | IPure (IGallinaNamed ?s) =>
     let x := fresh in
     iPure Hz as x;
     rename_by_string x s
  | IRewrite Right => iPure Hz as ->
  | IRewrite Left => iPure Hz as <-
  | IIntuitionistic ?pat =>
    let x := _ident_for_pat_default pat Hz in
    _iIntuitionistic Hz x; _iDestructHypGo x pat0 pat
  | ISpatial ?pat =>
    let x := _ident_for_pat_default pat Hz in
    _iSpatial Hz x; _iDestructHypGo x pat0 pat
  | IModalElim ?pat =>
    let x := _ident_for_pat_default pat Hz in
    iModCore Hz as x; _iDestructHypGo x pat0 pat
  | _ => fail "iDestruct:" pat0 "is not supported due to" pat
  end.
Ltac _iDestructHypFindPat Hgo pat found pats :=
  lazymatch pats with
  | [] =>
    lazymatch found with
    | true => pm_prettify
    | false => fail "iDestruct:" pat "should contain exactly one proper introduction pattern"
    end
  | ISimpl :: ?pats => simpl; _iDestructHypFindPat Hgo pat found pats
  | IClear ?H :: ?pats => iClear H; _iDestructHypFindPat Hgo pat found pats
  | IClearFrame ?H :: ?pats => iFrame H; _iDestructHypFindPat Hgo pat found pats
  | ?pat1 :: ?pats =>
     lazymatch found with
     | false => _iDestructHypGo Hgo pat pat1; _iDestructHypFindPat Hgo pat true pats
     | true => fail "iDestruct:" pat "should contain exactly one proper introduction pattern"
     end
  end.

Ltac _iDestructHyp0 H pat :=
  let pats := intro_pat.parse pat in
  _iDestructHypFindPat H pat false pats.
Ltac _iDestructHyp H xs pat :=
  ltac1_list_iter ltac:(fun x => _iExistDestruct H as x H) xs;
  _iDestructHyp0 H pat.

Tactic Notation "iDestructHyp" constr(H) "as" constr(pat) :=
  _iDestructHyp0 H pat.

Ltac _iIntros_go pats startproof :=
  lazymatch pats with
  | [] =>
    lazymatch startproof with
    | true => iStartProof
    | false => idtac
    end

  | IPure (IGallinaNamed ?s) :: ?pats =>
     let i := fresh in
     _iIntro (i);
     rename_by_string i s;
     _iIntros_go pats startproof
  | IPure IGallinaAnon :: ?pats => _iIntro (?); _iIntros_go pats startproof
  | IIntuitionistic (IIdent ?H) :: ?pats => _iIntroPersistent H; _iIntros_go pats false
  | IDrop :: ?pats => _iIntroDrop; _iIntros_go pats startproof
  | IIdent ?H :: ?pats => _iIntroSpatial H; _iIntros_go pats startproof

  | IPureIntro :: ?pats => iPureIntro; _iIntros_go pats false
  | IModalIntro :: ?pats => iModIntro; _iIntros_go pats false
  | IForall :: ?pats => repeat _iIntroForall; _iIntros_go pats startproof
  | IAll :: ?pats => repeat (_iIntroForall || _iIntro); _iIntros_go pats startproof

  | ISimpl :: ?pats => simpl; _iIntros_go pats startproof
  | IClear ?H :: ?pats => iClear H; _iIntros_go pats false
  | IClearFrame ?H :: ?pats => iFrame H; _iIntros_go pats false
  | IDone :: ?pats => try done; _iIntros_go pats startproof

  | IIntuitionistic ?pat :: ?pats =>
     let H := iFresh in _iIntroPersistent H; iDestructHyp H as pat; _iIntros_go pats false
  | ?pat :: ?pats =>
     let H := iFresh in _iIntroSpatial H; iDestructHyp H as pat; _iIntros_go pats false
  end.

Ltac _iIntros0 pat :=
  let pats := intro_pat.parse pat in

  lazymatch pats with
  | [] => idtac
  | _ => _iIntros_go pats true
  end.
Ltac _iIntros xs pat :=
  ltac1_list_iter ltac:(fun x => _iIntro (x)) xs;
  _iIntros0 pat.
Tactic Notation "iIntros" "(" ne_simple_intropattern_list(xs) ")" :=
  _iIntros xs "".

Tactic Notation "iDestructCore" open_constr(lem) "as" constr(p) tactic3(tac) :=
  let intro_destruct n :=
    let rec go n' :=
      lazymatch n' with
      | 0 => fail "iDestruct: cannot introduce" n "hypotheses"
      | 1 => repeat _iIntroForall; let H := iFresh in _iIntroSpatial H; tac H
      | S ?n' => repeat _iIntroForall; let H := iFresh in _iIntroSpatial H; go n'
      end in
    intros; go n in
  lazymatch type of lem with
  | nat => intro_destruct lem
  | Z =>

     let n := eval cbv in (Z.to_nat lem) in intro_destruct n
  | ident => tac lem
  | string => tac constr:(INamed lem)
  | _ => iPoseProofCore lem as p tac
  end.
Tactic Notation "iMod" open_constr(lem) "as" "(" ne_simple_intropattern_list(xs) ")"
    constr(pat) :=
  iDestructCore lem as false (fun H => iModCore H as H; last _iDestructHyp H xs pat).

Section class_instances.
Context {PROP : bi}.
Implicit Types P Q R : PROP.

Global Instance as_emp_valid_emp_valid d P : AsEmpValid0 d (⊢ P) P | 0.
Admitted.

Global Instance into_sep_sep P Q : IntoSep (P ∗ Q) P Q.
Admitted.

Global Instance into_exist_exist {A} (Φ : A → PROP) name :
  AsIdentName Φ name → IntoExist (bi_exist Φ) Φ name.
Admitted.
End class_instances.
Global Instance elim_modal_bupd_fupd
    `{!BiBUpd PROP, !BiFUpd PROP, !BiBUpdFUpd PROP} p E1 E2 P Q :
  ElimModal True p false (|==> P) P (|={E1,E2}=> Q) (|={E1,E2}=> Q) | 10.
Admitted.

Section class_instances_frame.
Context {PROP : bi}.
Implicit Types P Q R : PROP.
Global Instance frame_here p R : Frame p R R emp | 1.
Admitted.
Global Instance frame_sep_l R P1 P2 Q Q' :
  Frame false R P1 Q → MakeSep Q P2 Q' → Frame false R (P1 ∗ P2) Q' | 9.
Admitted.

Inductive GatherEvarsEq {A} (x : A) : A → Prop :=
  GatherEvarsEq_refl : GatherEvarsEq x x.

#[projections(primitive)] Class FrameExistRequirements
    (p : bool) (R : PROP) {A} (Φ : A → PROP) (a' : A) (G' : PROP) := {
  frame_exist_witness : A;
  frame_exist_resource : PROP;
  frame_exist_proof : Frame p R (Φ frame_exist_witness) frame_exist_resource;
  frame_exist_witness_eq : GatherEvarsEq frame_exist_witness a';
  frame_exist_resource_eq : TCEq frame_exist_resource G'
}.
Global Existing Instance Build_FrameExistRequirements.

Inductive TCCbnTele {A} (x : A) : A → Prop :=
  TCCbnTele_refl : TCCbnTele x x.

Global Instance frame_exist {A} p R (Φ : A → PROP)
    (TT : tele) (g : TT → A) (Ψ : TT → PROP) Q :
  FrameInstantiateExistEnabled →
  (∀ c, FrameExistRequirements p R Φ (g c) (Ψ c)) →
  TCCbnTele (∃.. c, Ψ c)%I Q →
  Frame p R (∃ a, Φ a) Q.
Admitted.
Global Instance frame_fupd `{!BiFUpd PROP} p E1 E2 R P Q :
  Frame p R P Q → Frame p R (|={E1,E2}=> P) (|={E1,E2}=> Q) | 2.
Admitted.
End class_instances_frame.

Ltac solve_gather_evars_eq :=
  lazymatch goal with
  | |- GatherEvarsEq ?a (?g ?c) =>
    let rec retcon_tele T arg :=

      match a with
      | context [?term] =>
        is_evar term;
        let X := type of term in
        lazymatch X with
        | tele => fail
        | _ => idtac
        end;
        let T' := open_constr:(_) in
        unify T (TeleS (λ _ : X, T'));

        unify term (tele_arg_head (λ _ : X, T') arg);

        retcon_tele T' (tele_arg_tail (λ _ : X, T') arg)

      | _ =>

        unify T TeleO
      end
    in
    let T' := lazymatch (type of c) with tele_arg ?T => T end in
    retcon_tele T' c;
    exact (GatherEvarsEq_refl _)
  end.

Global Hint Extern 0 (GatherEvarsEq _ _) =>
  solve_gather_evars_eq : typeclass_instances.

Global Hint Extern 0 (TCCbnTele _ _) =>
  cbn [bi_texist tele_fold tele_bind tele_arg_head tele_arg_tail];
  exact (TCCbnTele_refl _) : typeclass_instances.

Section class_instances_make.
Context {PROP : bi}.
Implicit Types P Q R : PROP.

Global Instance make_sep_emp_l P : KnownLMakeSep emp P P.
Admitted.
End class_instances_make.

Record agree (A : Type) : Type := {
  agree_car : list A;
  agree_not_nil : bool_decide (agree_car = []) = false
}.
Global Arguments agree_car {_} _.

Section agree.
Context {SI : sidx} {A : ofe}.
Local Instance agree_dist : Dist (agree A).
Admitted.
Local Instance agree_equiv : Equiv (agree A).
Admitted.

Definition agree_ofe_mixin : OfeMixin (agree A).
Admitted.
Canonical Structure agreeO := Ofe (agree A) agree_ofe_mixin.
Local Instance agree_validN_instance : ValidN (agree A).
Admitted.
Local Instance agree_valid_instance : Valid (agree A).
Admitted.

Local Program Instance agree_op_instance : Op (agree A) := λ x y,
  {| agree_car := agree_car x ++ agree_car y |}.
Admit Obligations.
Local Instance agree_pcore_instance : PCore (agree A).
Admitted.

Definition agree_cmra_mixin : CmraMixin (agree A).
Admitted.
Canonical Structure agreeR : cmra.
exact (Cmra (agree A) agree_cmra_mixin).
Defined.

End agree.
Global Arguments agreeR {_} _.

Record uPred (M : ucmra) : Type := UPred {
  uPred_holds : nat → M → Prop;

  uPred_mono n1 n2 x1 x2 :
    uPred_holds n1 x1 → x1 ≼{n2} x2 → n2 ≤ n1 → uPred_holds n2 x2
}.

Local Coercion uPred_holds : uPred >-> Funclass.

Section cofe.
  Context {M : ucmra}.
Local Instance uPred_equiv : Equiv (uPred M).
Admitted.
Local Instance uPred_dist : Dist (uPred M).
Admitted.
  Definition uPred_ofe_mixin : OfeMixin (uPred M).
Admitted.
Canonical Structure uPredO : ofe.
exact (Ofe (uPred M) uPred_ofe_mixin).
Defined.

  Program Definition uPred_compl : Compl uPredO := λ c,
    {| uPred_holds n x := ∀ n', n' ≤ n → ✓{n'} x → c n' n' x |}.
Admit Obligations.
  Global Program Instance uPred_cofe : Cofe uPredO := cofe_finite uPred_compl _.
Admit Obligations.
End cofe.
Global Arguments uPredO : clear implicits.

Inductive uPred_entails {M} (P Q : uPred M) : Prop :=
  { uPred_in_entails : ∀ n x, ✓{n} x → P n x → Q n x }.
Global Hint Resolve uPred_mono : uPred_def.

Local Program Definition uPred_pure_def {M} (φ : Prop) : uPred M :=
  {| uPred_holds n x := φ |}.
Solve Obligations with done.
Local Definition uPred_pure_aux : seal (@uPred_pure_def).
Admitted.
Definition uPred_pure := uPred_pure_aux.(unseal).
Global Arguments uPred_pure {M}.

Local Program Definition uPred_and_def {M} (P Q : uPred M) : uPred M :=
  {| uPred_holds n x := P n x ∧ Q n x |}.
Solve Obligations with naive_solver eauto 2 with uPred_def.
Local Definition uPred_and_aux : seal (@uPred_and_def).
Admitted.
Definition uPred_and := uPred_and_aux.(unseal).
Global Arguments uPred_and {M}.

Local Program Definition uPred_or_def {M} (P Q : uPred M) : uPred M :=
  {| uPred_holds n x := P n x ∨ Q n x |}.
Solve Obligations with naive_solver eauto 2 with uPred_def.
Local Definition uPred_or_aux : seal (@uPred_or_def).
Admitted.
Definition uPred_or := uPred_or_aux.(unseal).
Global Arguments uPred_or {M}.

Local Program Definition uPred_impl_def {M} (P Q : uPred M) : uPred M :=
  {| uPred_holds n x := ∀ n' x',
       x ≼ x' → n' ≤ n → ✓{n'} x' → P n' x' → Q n' x' |}.
Admit Obligations.
Local Definition uPred_impl_aux : seal (@uPred_impl_def).
Admitted.
Definition uPred_impl := uPred_impl_aux.(unseal).
Global Arguments uPred_impl {M}.

Local Program Definition uPred_forall_def {M A} (Ψ : A → uPred M) : uPred M :=
  {| uPred_holds n x := ∀ a, Ψ a n x |}.
Solve Obligations with naive_solver eauto 2 with uPred_def.
Local Definition uPred_forall_aux : seal (@uPred_forall_def).
Admitted.
Definition uPred_forall := uPred_forall_aux.(unseal).

Local Program Definition uPred_exist_def {M A} (Ψ : A → uPred M) : uPred M :=
  {| uPred_holds n x := ∃ a, Ψ a n x |}.
Solve Obligations with naive_solver eauto 2 with uPred_def.
Local Definition uPred_exist_aux : seal (@uPred_exist_def).
Admitted.
Definition uPred_exist := uPred_exist_aux.(unseal).

Local Program Definition uPred_sep_def {M} (P Q : uPred M) : uPred M :=
  {| uPred_holds n x := ∃ x1 x2, x ≡{n}≡ x1 ⋅ x2 ∧ P n x1 ∧ Q n x2 |}.
Admit Obligations.
Local Definition uPred_sep_aux : seal (@uPred_sep_def).
Admitted.
Definition uPred_sep := uPred_sep_aux.(unseal).
Global Arguments uPred_sep {M}.

Local Program Definition uPred_wand_def {M} (P Q : uPred M) : uPred M :=
  {| uPred_holds n x := ∀ n' x',
       n' ≤ n → ✓{n'} (x ⋅ x') → P n' x' → Q n' (x ⋅ x') |}.
Admit Obligations.
Local Definition uPred_wand_aux : seal (@uPred_wand_def).
Admitted.
Definition uPred_wand := uPred_wand_aux.(unseal).
Global Arguments uPred_wand {M}.

Local Program Definition uPred_plainly_def {M} (P : uPred M) : uPred M :=
  {| uPred_holds n x := P n ε |}.
Solve Obligations with naive_solver eauto using uPred_mono, ucmra_unit_validN.

Local Program Definition uPred_persistently_def {M} (P : uPred M) : uPred M :=
  {| uPred_holds n x := P n (core x) |}.
Solve Obligations with naive_solver eauto using uPred_mono, cmra_core_monoN.
Local Definition uPred_persistently_aux : seal (@uPred_persistently_def).
Admitted.
Definition uPred_persistently := uPred_persistently_aux.(unseal).
Global Arguments uPred_persistently {M}.

Local Program Definition uPred_later_def {M} (P : uPred M) : uPred M :=
  {| uPred_holds n x := match n return _ with 0 => True | S n' => P n' x end |}.
Admit Obligations.
Local Definition uPred_later_aux : seal (@uPred_later_def).
Admitted.
Definition uPred_later := uPred_later_aux.(unseal).
Global Arguments uPred_later {M}.
Definition uPred_emp {M} : uPred M.
Admitted.

Lemma uPred_bi_mixin (M : ucmra) :
  BiMixin
    uPred_entails uPred_emp uPred_pure uPred_and uPred_or uPred_impl
    (@uPred_forall M) (@uPred_exist M) uPred_sep uPred_wand.
Admitted.

Lemma uPred_bi_persistently_mixin (M : ucmra) :
  BiPersistentlyMixin
    uPred_entails uPred_emp uPred_and
    (@uPred_exist M) uPred_sep uPred_persistently.
Admitted.

Lemma uPred_bi_later_mixin (M : ucmra) :
  BiLaterMixin
    uPred_entails uPred_pure uPred_or uPred_impl
    (@uPred_forall M) (@uPred_exist M) uPred_sep uPred_persistently uPred_later.
Admitted.
Canonical Structure uPredI (M : ucmra) : bi.
exact ({| bi_ofe_mixin := ofe_mixin_of (uPred M);
     bi_bi_mixin := uPred_bi_mixin M;
     bi_bi_later_mixin := uPred_bi_later_mixin M;
     bi_bi_persistently_mixin := uPred_bi_persistently_mixin M |}).
Defined.
Global Instance uPred_bi_bupd M : BiBUpd (uPredI M).
Admitted.

Notation frac := Qp (only parsing).
  Canonical Structure fracO := leibnizO frac.
Local Instance frac_valid_instance : Valid frac.
Admitted.
Local Instance frac_pcore_instance : PCore frac.
Admitted.
Local Instance frac_op_instance : Op frac.
Admitted.

  Definition frac_ra_mixin : RAMixin frac.
Admitted.
  Canonical Structure fracR := discreteR frac frac_ra_mixin.
Definition gmap_viewR {SI : sidx} (K : Type) `{Countable K} (V : cmra) : cmra.
Admitted.
Definition authR {SI : sidx} (A : ucmra) : cmra.
Admitted.

Structure gFunctor := GFunctor {
  gFunctor_F :> rFunctor;
  gFunctor_map_contractive : rFunctorContractive gFunctor_F;
}.

Record gFunctors := GFunctors {
  gFunctors_len : nat;
  gFunctors_lookup : fin gFunctors_len → gFunctor
}.

Definition gid (Σ : gFunctors) := fin (gFunctors_len Σ).

Definition gname := positive.
Definition iResUR (Σ : gFunctors) : ucmra.
Admitted.
  Notation iProp Σ := (uPred (iResUR Σ)).
  Notation iPropO Σ := (uPredO (iResUR Σ)).

Class inG (Σ : gFunctors) (A : cmra) := InG {
  inG_id : gid Σ;
  inG_apply := rFunctor_apply (gFunctors_lookup Σ inG_id);
  inG_prf : A = inG_apply (iPropO Σ) _;
}.
Local Definition own_def `{!inG Σ A} (γ : gname) (a : A) : iProp Σ.
Admitted.
Local Definition own_aux : seal (@own_def).
Admitted.
Definition own := own_aux.(unseal).
Global Arguments own {Σ A _} γ a.
Local Instance nat_valid_instance : Valid nat.
Admitted.
Local Instance nat_pcore_instance : PCore nat.
Admitted.
Local Instance nat_op_instance : Op nat.
Admitted.
  Lemma nat_ra_mixin : RAMixin nat.
Admitted.
Canonical Structure natR : cmra.
exact (discreteR nat nat_ra_mixin).
Defined.
Local Instance nat_unit_instance : Unit nat.
Admitted.
  Lemma nat_ucmra_mixin : UcmraMixin nat.
Admitted.
Canonical Structure natUR : ucmra.
exact (Ucmra nat nat_ucmra_mixin).
Defined.

Class lcGS (Σ : gFunctors) := LcGS {
  #[local] lcGS_inG :: inG Σ (authR natUR);
  lcGS_name : gname;
}.

Inductive coPset_disj :=
  | CoPset : coPset → coPset_disj
  | CoPsetInvalid : coPset_disj.
  Canonical Structure coPset_disjO := leibnizO coPset_disj.
Local Instance coPset_disj_valid_instance : Valid coPset_disj.
Admitted.
Local Instance coPset_disj_op_instance : Op coPset_disj.
Admitted.
Local Instance coPset_disj_pcore_instance : PCore coPset_disj.
Admitted.

  Lemma coPset_disj_ra_mixin : RAMixin coPset_disj.
Admitted.
  Canonical Structure coPset_disjR := discreteR coPset_disj coPset_disj_ra_mixin.
  Class wsatGpreS (Σ : gFunctors) : Set := WsatGpreS {
    wsatGpreS_inv : inG Σ (gmap_viewR positive (agreeR $ laterO (iPropO Σ)));
    wsatGpreS_enabled : inG Σ coPset_disjR;
    wsatGpreS_disabled : inG Σ (gset_disjR positive);
  }.

  Class wsatGS (Σ : gFunctors) : Set := WsatG {
    wsat_inG : wsatGpreS Σ;
    invariant_name : gname;
    enabled_name : gname;
    disabled_name : gname;
  }.

Inductive has_lc := HasLc | HasNoLc.

Class invGS_gen (hlc : has_lc) (Σ : gFunctors) : Set := InvG {
  #[global] invGS_wsat :: wsatGS Σ;
  #[global] invGS_lc :: lcGS Σ;
}.
Global Instance uPred_bi_fupd `{!invGS_gen hlc Σ} : BiFUpd (uPredI (iResUR Σ)).
Admitted.

Global Instance uPred_bi_bupd_fupd `{!invGS_gen hlc Σ} : BiBUpdFUpd (uPredI (iResUR Σ)).
Admitted.

Class cinvG Σ := {
  #[local] cinv_inG :: inG Σ (prodR (optionR (exclR unitO)) (optionR fracR)) ;
}.

Section defs.
  Context `{!invGS_gen hlc Σ, !cinvG Σ}.
Definition cinv_own (γ : gname) (p : frac) : iProp Σ.
Admitted.
  Definition cinv_excl γ : iProp Σ := own γ (Some (Excl ()), None).
Definition cinv (N : namespace) (γ : gname) (P : iProp Σ) : iProp Σ.
Admitted.

  Lemma cinv_own_excl_alloc P :
    pred_infinite P → ⊢ |==> ∃ γ, ⌜P γ⌝ ∗ cinv_excl γ ∗ cinv_own γ 1.
Admitted.

  Lemma cinv_alloc_strong (I : gname → Prop) E N :
    pred_infinite I →
    ⊢ |={E}=> ∃ γ, ⌜ I γ ⌝ ∗ cinv_own γ 1 ∗ ∀ P, ▷ P ={E}=∗ cinv N γ P.
  Proof.
    iIntros (?).
iMod cinv_own_excl_alloc as (γ) "[$ [Hexcl $]]"; first done.
