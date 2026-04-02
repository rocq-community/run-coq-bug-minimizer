
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/utils/theories" "MetaRocq.Utils" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/common/theories" "MetaRocq.Common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq/theories" "MetaRocq.Template" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Equations" "Equations" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/ExtLib" "ExtLib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq/src" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 1651 lines to 25 lines, then from 39 lines to 968 lines, then from 973 lines to 46 lines, then from 60 lines to 558 lines, then from 565 lines to 65 lines, then from 79 lines to 1315 lines, then from 1320 lines to 357 lines, then from 371 lines to 2072 lines, then from 2077 lines to 370 lines, then from 384 lines to 3502 lines, then from 3468 lines to 600 lines, then from 614 lines to 1810 lines, then from 1813 lines to 669 lines, then from 683 lines to 1534 lines, then from 1541 lines to 695 lines, then from 709 lines to 1080 lines, then from 1087 lines to 711 lines, then from 725 lines to 1259 lines, then from 1265 lines to 730 lines, then from 744 lines to 2513 lines, then from 2513 lines to 749 lines, then from 769 lines to 545 lines, then from 559 lines to 1261 lines, then from 1268 lines to 600 lines, then from 614 lines to 928 lines, then from 935 lines to 601 lines, then from 615 lines to 852 lines, then from 859 lines to 611 lines, then from 625 lines to 795 lines, then from 802 lines to 642 lines, then from 656 lines to 1827 lines, then from 1818 lines to 902 lines, then from 916 lines to 2215 lines, then from 2214 lines to 1198 lines, then from 1212 lines to 2847 lines, then from 2811 lines to 1241 lines, then from 1255 lines to 2484 lines, then from 2462 lines to 1281 lines, then from 1295 lines to 1448 lines, then from 1454 lines to 1306 lines, then from 1320 lines to 2090 lines, then from 2095 lines to 1306 lines, then from 1320 lines to 2588 lines, then from 2590 lines to 1316 lines, then from 1330 lines to 2555 lines, then from 2559 lines to 1350 lines, then from 1364 lines to 1554 lines, then from 1561 lines to 1364 lines, then from 1378 lines to 1586 lines, then from 1593 lines to 1383 lines, then from 1397 lines to 1964 lines, then from 1968 lines to 1461 lines, then from 1475 lines to 3500 lines, then from 3503 lines to 1766 lines, then from 1780 lines to 2398 lines, then from 2405 lines to 2290 lines, then from 2304 lines to 3602 lines, then from 3609 lines to 2293 lines, then from 2307 lines to 2704 lines, then from 2706 lines to 2442 lines, then from 2456 lines to 3472 lines, then from 3479 lines to 2788 lines, then from 2802 lines to 4073 lines, then from 4080 lines to 3026 lines, then from 3040 lines to 3472 lines, then from 3479 lines to 3209 lines, then from 3223 lines to 5509 lines, then from 5514 lines to 3285 lines, then from 3299 lines to 3698 lines, then from 3705 lines to 3399 lines, then from 3413 lines to 3427 lines, then from 3434 lines to 3400 lines, then from 3414 lines to 3865 lines, then from 3871 lines to 3412 lines, then from 3426 lines to 4024 lines, then from 4031 lines to 3448 lines, then from 3462 lines to 4530 lines, then from 4527 lines to 3598 lines, then from 3612 lines to 4797 lines, then from 4796 lines to 3684 lines, then from 3682 lines to 2023 lines, then from 2037 lines to 4197 lines, then from 4168 lines to 2088 lines, then from 2102 lines to 6235 lines, then from 6215 lines to 2141 lines, then from 2155 lines to 3599 lines, then from 3604 lines to 2435 lines, then from 2449 lines to 2563 lines, then from 2570 lines to 2446 lines, then from 2460 lines to 2564 lines, then from 2571 lines to 2467 lines, then from 2481 lines to 2571 lines, then from 2578 lines to 2494 lines, then from 2508 lines to 2742 lines, then from 2749 lines to 2520 lines, then from 2534 lines to 2674 lines, then from 2681 lines to 2541 lines, then from 2555 lines to 2684 lines, then from 2691 lines to 2562 lines, then from 2576 lines to 2776 lines, then from 2783 lines to 2584 lines, then from 2598 lines to 2921 lines, then from 2928 lines to 2608 lines, then from 2622 lines to 2866 lines, then from 2873 lines to 2631 lines, then from 2645 lines to 3087 lines, then from 3094 lines to 2655 lines, then from 2669 lines to 2952 lines, then from 2959 lines to 2679 lines, then from 2693 lines to 2853 lines, then from 2860 lines to 2703 lines, then from 2717 lines to 3063 lines, then from 3070 lines to 2731 lines, then from 2745 lines to 2862 lines, then from 2869 lines to 2755 lines, then from 2769 lines to 2963 lines, then from 2970 lines to 2779 lines, then from 2793 lines to 3146 lines, then from 3153 lines to 2807 lines, then from 2821 lines to 2955 lines, then from 2962 lines to 2831 lines, then from 2845 lines to 2983 lines, then from 2990 lines to 2855 lines, then from 2869 lines to 3222 lines, then from 3229 lines to 2879 lines, then from 2893 lines to 3142 lines, then from 3148 lines to 2916 lines, then from 2930 lines to 3024 lines, then from 3031 lines to 2940 lines, then from 2954 lines to 3080 lines, then from 3086 lines to 2980 lines, then from 2994 lines to 3177 lines, then from 3183 lines to 3051 lines, then from 3065 lines to 3182 lines, then from 3189 lines to 3076 lines, then from 3090 lines to 4034 lines, then from 4041 lines to 3107 lines, then from 3121 lines to 3904 lines, then from 3911 lines to 3138 lines, then from 3152 lines to 3612 lines, then from 3619 lines to 3166 lines, then from 3180 lines to 3509 lines, then from 3516 lines to 3178 lines, then from 3192 lines to 3551 lines, then from 3558 lines to 3200 lines, then from 3214 lines to 3829 lines, then from 3831 lines to 3232 lines, then from 3246 lines to 3722 lines, then from 3729 lines to 3244 lines, then from 3258 lines to 3480 lines, then from 3487 lines to 3268 lines, then from 3282 lines to 4003 lines, then from 4010 lines to 3545 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 1.101 sec
   Expected coqc peak memory usage on this file: 2017736.0 kb *)









Require Corelib.ssr.ssreflect.
Require Corelib.Classes.CRelationClasses.
Require Corelib.Lists.ListDef.
Require Corelib.Setoids.Setoid.
Require Corelib.Floats.PrimFloat.
Require Corelib.Strings.PrimString.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Init.Ltac.
Require Corelib.Classes.Morphisms.
Require Corelib.Classes.RelationClasses.
Require Corelib.BinNums.IntDef.
Require Corelib.Program.Basics.
Require Stdlib.Classes.DecidableClass.
Require Stdlib.Logic.Decidable.
Require Stdlib.Logic.HLevelsBase.
Require Stdlib.Classes.CRelationClasses.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Lists.ListDef.
Require Stdlib.Program.Basics.
Require Stdlib.Relations.Relation_Definitions.
Require Stdlib.Setoids.Setoid.
Require Stdlib.ssr.ssreflect.
Require Stdlib.Bool.Bool.
Require Stdlib.Relations.Relation_Operators.
Require Stdlib.Relations.Operators_Properties.
Require Stdlib.Relations.Relations.
Require Stdlib.Numbers.NumPrelude.
Require MetaRocq.Utils.MRProd.
Require Stdlib.Structures.Equalities.
Require Stdlib.Structures.Orders.
Require Stdlib.Structures.OrdersTac.
Require Stdlib.Structures.OrdersFacts.
Require Stdlib.Structures.GenericMinMax.
Require Stdlib.Numbers.NatInt.NZAxioms.
Require Stdlib.Numbers.NatInt.NZBase.
Require Stdlib.Numbers.NatInt.NZAdd.
Require Stdlib.Numbers.NatInt.NZMul.

Module Export AdmitTactic.
Module Import LocalFalse.
Inductive False : Prop := .
End LocalFalse.
Axiom proof_admitted : False.
Import Coq.Init.Ltac.
Tactic Notation "admit" := abstract case proof_admitted.
End AdmitTactic.

Module Export Stdlib_DOT_Numbers_DOT_NatInt_DOT_NZOrder_WRAPPED.
Module Export NZOrder.
Import Stdlib.Numbers.NatInt.NZAxioms.
Import Stdlib.Numbers.NatInt.NZBase.
Import Stdlib.Logic.Decidable.
Import Stdlib.Structures.OrdersTac.

Module Type NZOrderProp
 (Import NZ : NZOrdSig')(Import NZBase : NZBaseProp NZ).




#[global]
Instance le_wd : Proper (eq==>eq==>iff) le.
Admitted.

Theorem lt_le_incl : forall n m, n < m -> n <= m.
Admitted.

Theorem le_refl : forall n, n <= n.
Admitted.

Theorem lt_succ_diag_r : forall n, n < S n.
Admitted.

Theorem le_succ_diag_r : forall n, n <= S n.
Admitted.

Theorem neq_succ_diag_l : forall n, S n ~= n.
Admitted.

Theorem neq_succ_diag_r : forall n, n ~= S n.
Admitted.

Theorem nlt_succ_diag_l : forall n, ~ S n < n.
Admitted.

Theorem nle_succ_diag_l : forall n, ~ S n <= n.
Admitted.

Theorem le_succ_l : forall n m, S n <= m <-> n < m.
Admitted.



Theorem le_gt_cases : forall n m, n <= m \/ n > m.
Admitted.

Theorem lt_trichotomy : forall n m,  n < m \/ n == m \/ m < n.
Admitted.

Notation lt_eq_gt_cases := lt_trichotomy (only parsing).



Theorem lt_asymm : forall n m, n < m -> ~ m < n.
Admitted.

Notation lt_ngt := lt_asymm (only parsing).

Theorem lt_trans : forall n m p, n < m -> m < p -> n < p.
Admitted.

Theorem le_trans : forall n m p, n <= m -> m <= p -> n <= p.
Admitted.



#[global]
Instance lt_strorder : StrictOrder lt.
Admitted.

#[global]
Instance le_preorder : PreOrder le.
Admitted.

#[global]
Instance le_partialorder : PartialOrder _ le.
Admitted.



Definition lt_compat := lt_wd.
Definition lt_total := lt_trichotomy.
Definition le_lteq := lt_eq_cases.

Module Export Private_OrderTac.
Module Export IsTotal.
 Definition eq_equiv := eq_equiv.
 Definition lt_strorder := lt_strorder.
 Definition lt_compat := lt_compat.
 Definition lt_total := lt_total.
 Definition le_lteq := le_lteq.
End IsTotal.
Module Tac := !MakeOrderTac NZ IsTotal.
End Private_OrderTac.



Theorem lt_neq : forall n m, n < m -> n ~= m.
Admitted.

Theorem le_neq : forall n m, n < m <-> n <= m /\ n ~= m.
Admitted.

Theorem eq_le_incl : forall n m, n == m -> n <= m.
Admitted.

Lemma lt_stepl : forall x y z, x < y -> x == z -> z < y.
Admitted.

Lemma lt_stepr : forall x y z, x < y -> y == z -> x < z.
Admitted.

Lemma le_stepl : forall x y z, x <= y -> x == z -> z <= y.
Admitted.

Lemma le_stepr : forall x y z, x <= y -> y == z -> x <= z.
Admitted.

Declare Left  Step lt_stepl.
Declare Right Step lt_stepr.
Declare Left  Step le_stepl.
Declare Right Step le_stepr.

Theorem le_lt_trans : forall n m p, n <= m -> m < p -> n < p.
Admitted.

Theorem lt_le_trans : forall n m p, n < m -> m <= p -> n < p.
Admitted.

Theorem le_antisymm : forall n m, n <= m -> m <= n -> n == m.
Admitted.



Theorem le_succ_r : forall n m, n <= S m <-> n <= m \/ n == S m.
Admitted.

Theorem lt_succ_l : forall n m, S n < m -> n < m.
Admitted.

Theorem le_le_succ_r : forall n m, n <= m -> n <= S m.
Admitted.

Theorem lt_lt_succ_r : forall n m, n < m -> n < S m.
Admitted.

Theorem succ_lt_mono : forall n m, n < m <-> S n < S m.
Admitted.

Theorem succ_le_mono : forall n m, n <= m <-> S n <= S m.
Admitted.

Theorem lt_0_1 : 0 < 1.
Admitted.

Theorem le_0_1 : 0 <= 1.
Admitted.

Theorem lt_1_2 : 1 < 2.
Admitted.

Theorem lt_0_2 : 0 < 2.
Admitted.

Theorem le_0_2 : 0 <= 2.
Admitted.

Theorem lt_1_l : forall n m, 0 < n -> n < m -> 1 < m.
Admitted.





Theorem lt_ge_cases : forall n m, n < m \/ n >= m.
Admitted.



Section WF.

End WF.



Section Induction.

Section Center.


Section RightInduction.

End RightInduction.

Section LeftInduction.

End LeftInduction.

End Center.

End Induction.



Section MeasureInduction.

End MeasureInduction.

End NZOrderProp.
Module Export Stdlib_DOT_Numbers_DOT_NatInt_DOT_NZOrder.
Module Export Stdlib.
Module Export Numbers.
Module Export NatInt.
Module Export NZOrder.
End NZOrder.

End NatInt.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_NatInt_DOT_NZOrder.
Import Stdlib.Numbers.NatInt.NZAxioms.
Import Stdlib.Numbers.NatInt.NZBase.
Import Stdlib.Numbers.NatInt.NZMul.

Module Type NZAddOrderProp (Import NZ : NZOrdAxiomsSig').
Include NZBaseProp NZ <+ NZMulProp NZ <+ NZOrderProp NZ.

End NZAddOrderProp.
Module Export Stdlib_DOT_Numbers_DOT_NatInt_DOT_NZAddOrder.
Module Export Stdlib.
Module Export Numbers.
Module Export NatInt.
Module Export NZAddOrder.
End NZAddOrder.

End NatInt.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_NatInt_DOT_NZAddOrder.

Import Stdlib.Numbers.NatInt.NZAxioms.
Import Stdlib.Numbers.NatInt.NZAddOrder.

Module Type NZMulOrderProp (Import NZ : NZOrdAxiomsSig').
Include NZAddOrderProp NZ.

End NZMulOrderProp.
Module Export Stdlib.
Module Export Numbers.
Module Export NatInt.
Module Export NZMulOrder.
End NZMulOrder.
Module Export NZDiv.
Import Stdlib.Numbers.NatInt.NZAxioms.

Module Type DivMod (Import A : Typ).
End DivMod.

Module Type DivModNotation (A : Typ)(Import B : DivMod A).
End DivModNotation.

Module Type DivMod' (A : Typ) := DivMod A <+ DivModNotation A.

Module Type NZDivSpec (Import A : NZOrdAxiomsSig')(Import B : DivMod' A).
End NZDivSpec.

Module Type NZDivSpec0 (Import A : Eq')(Import B : ZeroSuccPred' A)(Import C : DivMod' A).
End NZDivSpec0.

Module Type NZDiv (A : NZOrdAxiomsSig) := DivMod A <+ NZDivSpec A.
Module Type NZDiv' (A : NZOrdAxiomsSig) := NZDiv A <+ DivModNotation A.

Module Type NZDivProp
 (Import A : NZOrdAxiomsSig')
 (Import B : NZDiv' A)
 (Import C : NZMulOrderProp A).

End NZDivProp.
Module Export Stdlib.
Module Export Numbers.
Module Export NatInt.
Module Export NZDiv.
End NZDiv.
Module Export NZGcd.
Import Stdlib.Numbers.NatInt.NZAxioms.
Import Stdlib.Numbers.NatInt.NZMulOrder.

Module Type Gcd (Import A : Typ).
End Gcd.

Module Type NZGcdSpec (A : NZOrdAxiomsSig')(B : Gcd A).
End NZGcdSpec.

Module Type DivideNotation (A:NZOrdAxiomsSig')(B:Gcd A)(C:NZGcdSpec A B).
End DivideNotation.

Module Type NZGcd (A : NZOrdAxiomsSig) := Gcd A <+ NZGcdSpec A.
Module Type NZGcd' (A : NZOrdAxiomsSig) :=
 Gcd A <+ NZGcdSpec A <+ DivideNotation A.

Module NZGcdProp
 (Import A : NZOrdAxiomsSig')
 (Import B : NZGcd' A)
 (Import C : NZMulOrderProp A).

End NZGcdProp.
Module Export NZParity.
Import Stdlib.Numbers.NatInt.NZAxioms.
Import Stdlib.Numbers.NatInt.NZMulOrder.

Module Type NZParity (Import A : NZAxiomsSig').
End NZParity.

Module Type NZParityProp
 (Import A : NZOrdAxiomsSig')
 (Import B : NZParity A)
 (Import C : NZMulOrderProp A).

End NZParityProp.
Module Export NZPow.
Import Stdlib.Numbers.NatInt.NZAxioms.
Import Stdlib.Numbers.NatInt.NZMulOrder.

Module Type Pow (Import A : Typ).
End Pow.

Module Type PowNotation (A : Typ)(Import B : Pow A).
End PowNotation.

Module Type Pow' (A : Typ) := Pow A <+ PowNotation A.

Module Type NZPowSpec (Import A : NZOrdAxiomsSig')(Import B : Pow' A).
End NZPowSpec.

Module Type NZPow (A : NZOrdAxiomsSig) := Pow A <+ NZPowSpec A.
Module Type NZPow' (A : NZOrdAxiomsSig) := Pow' A <+ NZPowSpec A.

Module Type NZPowProp
 (Import A : NZOrdAxiomsSig')
 (Import B : NZPow' A)
 (Import C : NZMulOrderProp A).

End NZPowProp.
Module Export Stdlib.
Module Export Numbers.
Module Export NatInt.
Module Export NZPow.
End NZPow.
Module Export NZSqrt.
Import Stdlib.Numbers.NatInt.NZAxioms.
Import Stdlib.Numbers.NatInt.NZMulOrder.

Module Type Sqrt (Import A : Typ).
End Sqrt.

Module Type SqrtNotation (A : Typ)(Import B : Sqrt A).
End SqrtNotation.

Module Type Sqrt' (A : Typ) := Sqrt A <+ SqrtNotation A.

Module Type NZSqrtSpec (Import A : NZOrdAxiomsSig')(Import B : Sqrt' A).
End NZSqrtSpec.

Module Type NZSqrt (A : NZOrdAxiomsSig) := Sqrt A <+ NZSqrtSpec A.
Module Type NZSqrt' (A : NZOrdAxiomsSig) := Sqrt' A <+ NZSqrtSpec A.

Module Type NZSqrtProp
 (Import A : NZOrdAxiomsSig')
 (Import B : NZSqrt' A)
 (Import C : NZMulOrderProp A).

End NZSqrtProp.

Module Type NZSqrtUpProp
 (Import A : NZDecOrdAxiomsSig')
 (Import B : NZSqrt' A)
 (Import C : NZMulOrderProp A)
 (Import D : NZSqrtProp A B C).

End NZSqrtUpProp.
Module Export NZLog.
Import Stdlib.Numbers.NatInt.NZAxioms.
Import Stdlib.Numbers.NatInt.NZMulOrder.
Import Stdlib.Numbers.NatInt.NZPow.

Module Type Log2 (Import A : Typ).
End Log2.

Module Type NZLog2Spec (A : NZOrdAxiomsSig')(B : Pow' A)(C : Log2 A).
End NZLog2Spec.

Module Type NZLog2 (A : NZOrdAxiomsSig)(B : Pow A) := Log2 A <+ NZLog2Spec A B.

Module Type NZLog2Prop
 (Import A : NZOrdAxiomsSig')
 (Import B : NZPow' A)
 (Import C : NZLog2 A B)
 (Import D : NZMulOrderProp A)
 (Import E : NZPowProp A B D).

End NZLog2Prop.

Module NZLog2UpProp
 (Import A : NZDecOrdAxiomsSig')
 (Import B : NZPow' A)
 (Import C : NZLog2 A B)
 (Import D : NZMulOrderProp A)
 (Import E : NZPowProp A B D)
 (Import F : NZLog2Prop A B C D E).

End NZLog2UpProp.
Module Export NZBits.
Import Stdlib.Numbers.NatInt.NZAxioms.

Module Type Bits (Import A : Typ).
End Bits.

Module Type BitsNotation (Import A : Typ)(Import B : Bits A).
End BitsNotation.

Module Type Bits' (A:Typ) := Bits A <+ BitsNotation A.

Module Type NZBitsSpec
 (Import A : NZOrdAxiomsSig')(Import B : Bits' A).

End NZBitsSpec.

Module Type NZBits (A:NZOrdAxiomsSig) := Bits A <+ NZBitsSpec A.
Module Type NZBits' (A:NZOrdAxiomsSig) := Bits' A <+ NZBitsSpec A.
Module Export Stdlib_DOT_Numbers_DOT_NatInt_DOT_NZBits.
Module Export NZBits.
End NZBits.

End Stdlib_DOT_Numbers_DOT_NatInt_DOT_NZBits.

Export Stdlib.Numbers.NatInt.NZAxioms.
Import Stdlib.Numbers.NatInt.NZDiv.

Module Type ZAxiom (Import Z : NZAxiomsSig').
End ZAxiom.

Module Type Opp (Import T:Typ).
End Opp.

Module Type OppNotation (T:Typ)(Import O : Opp T).
End OppNotation.

Module Type Opp' (T:Typ) := Opp T <+ OppNotation T.

Module Type IsOpp (Import Z : NZAxiomsSig')(Import O : Opp' Z).
End IsOpp.

Module Type OppCstNotation (Import A : NZAxiomsSig)(Import B : Opp A).
End OppCstNotation.

Module Type ZAxiomsMiniSig := NZOrdAxiomsSig <+ ZAxiom <+ Opp <+ IsOpp.
Module Type ZAxiomsMiniSig' := NZOrdAxiomsSig' <+ ZAxiom <+ Opp' <+ IsOpp
 <+ OppCstNotation.

Module Type HasAbs(Import Z : ZAxiomsMiniSig').
End HasAbs.

Module Type HasSgn (Import Z : ZAxiomsMiniSig').
End HasSgn.

Module Type ZDivSpecific (Import A:ZAxiomsMiniSig')(Import B : DivMod' A).
End ZDivSpecific.

Module Type ZDiv (Z:ZAxiomsMiniSig) := NZDiv.NZDiv Z <+ ZDivSpecific Z.

Module Type QuotRem (Import A : Typ).
End QuotRem.

Module Type QuotRemNotation (A : Typ)(Import B : QuotRem A).
End QuotRemNotation.

Module Type QuotRem' (A : Typ) := QuotRem A <+ QuotRemNotation A.

Module Type QuotRemSpec (Import A : ZAxiomsMiniSig')(Import B : QuotRem' A).
End QuotRemSpec.

Module Type ZQuot (Z:ZAxiomsMiniSig) := QuotRem Z <+ QuotRemSpec Z.

Module Type ZAxiomsSig := ZAxiomsMiniSig <+ OrderFunctions
   <+ HasAbs <+ HasSgn <+ NZParity.NZParity
   <+ NZPow.NZPow <+ NZSqrt.NZSqrt <+ NZLog.NZLog2 <+ NZGcd.NZGcd
   <+ ZDiv <+ ZQuot <+ NZBits.NZBits <+ NZSquare.
Module Export Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZAxioms.
Module Export Stdlib.
Module Export Numbers.
Module Export Integer.
Module Export Abstract.
Module Export ZAxioms.
End ZAxioms.

End Abstract.

End Integer.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZAxioms.
Export Stdlib.Bool.Bool.
Export Stdlib.Numbers.NatInt.NZDiv.

Module Type NAxiom (Import NZ : NZDomainSig').
End NAxiom.

Module Type NAxiomsMiniSig := NZOrdAxiomsSig <+ NAxiom.
Module Type NAxiomsMiniSig' := NZOrdAxiomsSig' <+ NAxiom.

Module Type NDivSpecific (Import N : NAxiomsMiniSig')(Import DM : DivMod' N).
End NDivSpecific.

Module Type NAxiomsSig := NAxiomsMiniSig <+ OrderFunctions
  <+ NZParity.NZParity <+ NZPow.NZPow <+ NZSqrt.NZSqrt <+ NZLog.NZLog2
  <+ NZGcd.NZGcd <+ NZDiv.NZDiv <+ NZBits.NZBits <+ NZSquare.

Module Type NAxiomsSig' := NAxiomsMiniSig' <+ OrderFunctions'
  <+ NZParity.NZParity <+ NZPow.NZPow' <+ NZSqrt.NZSqrt' <+ NZLog.NZLog2
  <+ NZGcd.NZGcd' <+ NZDiv.NZDiv' <+ NZBits.NZBits' <+ NZSquare.

Module Type NAxiomsRec (Import NZ : NZDomainSig').

End NAxiomsRec.
Module Export Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NAxioms.
Module Export Stdlib.
Module Export Numbers.
Module Export Natural.
Module Export Abstract.
Module Export NAxioms.
End NAxioms.

End Abstract.

End Natural.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NAxioms.
Export Stdlib.Numbers.Integer.Abstract.ZAxioms.
Import Stdlib.Numbers.NatInt.NZMulOrder.

Module ZBaseProp (Import Z : ZAxiomsMiniSig').
Include NZMulOrderProp Z.

End ZBaseProp.
Module Export Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZBase.
Module Export Stdlib.
Module Export Numbers.
Module Export Integer.
Module Export Abstract.
Module Export ZBase.
End ZBase.

End Abstract.

End Integer.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZBase.
Export Stdlib.Numbers.Natural.Abstract.NAxioms.
Import Stdlib.Numbers.NatInt.NZMulOrder.

Module NBaseProp (Import N : NAxiomsMiniSig').

Include NZMulOrderProp N.

Section PairInduction.

End PairInduction.

Section TwoDimensionalInduction.

End TwoDimensionalInduction.

Section DoubleInduction.

End DoubleInduction.

End NBaseProp.
Module Export Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NBase.
Module Export Stdlib.
Module Export Numbers.
Module Export Natural.
Module Export Abstract.
Module Export NBase.
End NBase.

End Abstract.

End Natural.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NBase.

Export Stdlib.Numbers.Integer.Abstract.ZBase.

Module ZAddProp (Import Z : ZAxiomsMiniSig').
Include ZBaseProp Z.

End ZAddProp.
Module Export Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZAdd.
Module Export Stdlib.
Module Export Numbers.
Module Export Integer.
Module Export Abstract.
Module Export ZAdd.
End ZAdd.

End Abstract.

End Integer.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZAdd.

Export Stdlib.Numbers.Natural.Abstract.NBase.

Module NAddProp (Import N : NAxiomsMiniSig').
Include NBaseProp N.

End NAddProp.
Module Export Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NAdd.
Module Export Stdlib.
Module Export Numbers.
Module Export Natural.
Module Export Abstract.
Module Export NAdd.
End NAdd.

End Abstract.

End Natural.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NAdd.

Export Stdlib.Numbers.Integer.Abstract.ZAdd.

Module ZMulProp (Import Z : ZAxiomsMiniSig').
Include ZAddProp Z.

End ZMulProp.
Module Export Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZMul.
Module Export Stdlib.
Module Export Numbers.
Module Export Integer.
Module Export Abstract.
Module Export ZMul.
End ZMul.

End Abstract.

End Integer.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZMul.

Export Stdlib.Numbers.Natural.Abstract.NAdd.

Module NOrderProp (Import N : NAxiomsMiniSig').
Include NAddProp N.

Section RelElim.

End RelElim.

End NOrderProp.
Module Export Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NOrder.
Module Export Stdlib.
Module Export Numbers.
Module Export Natural.
Module Export Abstract.
Module Export NOrder.
End NOrder.

End Abstract.

End Natural.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NOrder.

Export Stdlib.Numbers.Integer.Abstract.ZMul.

Module ZOrderProp (Import Z : ZAxiomsMiniSig').
Include ZMulProp Z.

End ZOrderProp.
Module Export Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZLt.
Module Export Stdlib.
Module Export Numbers.
Module Export Integer.
Module Export Abstract.
Module Export ZLt.
End ZLt.

End Abstract.

End Integer.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZLt.

Export Stdlib.Numbers.Natural.Abstract.NOrder.

Module NAddOrderProp (Import N : NAxiomsMiniSig').
Include NOrderProp N.

End NAddOrderProp.
Module Export Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NAddOrder.
Module Export Stdlib.
Module Export Numbers.
Module Export Natural.
Module Export Abstract.
Module Export NAddOrder.
End NAddOrder.

End Abstract.

End Natural.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NAddOrder.

Export Stdlib.Numbers.Integer.Abstract.ZLt.

Module ZAddOrderProp (Import Z : ZAxiomsMiniSig').
Include ZOrderProp Z.

Section PosNeg.

End PosNeg.

End ZAddOrderProp.
Module Export Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZAddOrder.
Module Export Stdlib.
Module Export Numbers.
Module Export Integer.
Module Export Abstract.
Module Export ZAddOrder.
End ZAddOrder.

End Abstract.

End Integer.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZAddOrder.

Export Stdlib.Numbers.Natural.Abstract.NAddOrder.

Module NMulOrderProp (Import N : NAxiomsMiniSig').
Include NAddOrderProp N.

End NMulOrderProp.
Module Export Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NMulOrder.
Module Export Stdlib.
Module Export Numbers.
Module Export Natural.
Module Export Abstract.
Module Export NMulOrder.
End NMulOrder.

End Abstract.

End Natural.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NMulOrder.

Export Stdlib.Numbers.Integer.Abstract.ZAddOrder.

Module Type ZMulOrderProp (Import Z : ZAxiomsMiniSig').
Include ZAddOrderProp Z.

End ZMulOrderProp.
Module Export Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZMulOrder.
Module Export Stdlib.
Module Export Numbers.
Module Export Integer.
Module Export Abstract.
Module Export ZMulOrder.
End ZMulOrder.

End Abstract.

End Integer.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZMulOrder.

Export Stdlib.Numbers.Natural.Abstract.NMulOrder.

Module Type NSubProp (Import N : NAxiomsMiniSig').
Include NMulOrderProp N.

End NSubProp.
Module Export Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NSub.
Module Export Stdlib.
Module Export Numbers.
Module Export Natural.
Module Export Abstract.
Module Export NSub.
End NSub.

End Abstract.

End Natural.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NSub.
Import Stdlib.Numbers.Integer.Abstract.ZMulOrder.

Module Type ZMaxMinProp (Import Z : ZAxiomsMiniSig').
Include ZMulOrderProp Z.

End ZMaxMinProp.
Module Export Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZMaxMin.
Module Export Stdlib.
Module Export Numbers.
Module Export Integer.
Module Export Abstract.
Module Export ZMaxMin.
End ZMaxMin.

End Abstract.

End Integer.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZMaxMin.
Import Stdlib.Numbers.Natural.Abstract.NSub.

Module Type NGcdProp
 (Import A : NAxiomsSig')
 (Import B : NSubProp A).

End NGcdProp.
Module Export Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NGcd.
Module Export Stdlib.
Module Export Numbers.
Module Export Natural.
Module Export Abstract.
Module Export NGcd.
End NGcd.

End Abstract.

End Natural.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NGcd.
Import Stdlib.Numbers.Natural.Abstract.NSub.

Module Type NMaxMinProp (Import N : NAxiomsMiniSig').
Include NSubProp N.

End NMaxMinProp.
Module Export Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NMaxMin.
Module Export Stdlib.
Module Export Numbers.
Module Export Natural.
Module Export Abstract.
Module Export NMaxMin.
End NMaxMin.

End Abstract.

End Natural.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NMaxMin.
Import Stdlib.Numbers.Natural.Abstract.NSub.

Module Type NParityProp (Import N : NAxiomsSig')(Import NP : NSubProp N).

End NParityProp.
Module Export Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NParity.
Module Export Stdlib.
Module Export Numbers.
Module Export Natural.
Module Export Abstract.
Module Export NParity.
End NParity.

End Abstract.

End Natural.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NParity.
Import Stdlib.Numbers.Natural.Abstract.NSub.

Module NSqrtProp (Import A : NAxiomsSig')(Import B : NSubProp A).

End NSqrtProp.
Module Export Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NSqrt.
Module Export Stdlib.
Module Export Numbers.
Module Export Natural.
Module Export Abstract.
Module Export NSqrt.
End NSqrt.

End Abstract.

End Natural.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NSqrt.
Import Stdlib.Numbers.Natural.Abstract.NSub.
Import Stdlib.Numbers.Natural.Abstract.NParity.

Module Type NPowProp
 (Import A : NAxiomsSig')
 (Import B : NSubProp A)
 (Import C : NParityProp A B).

End NPowProp.
Module Export Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NPow.
Module Export Stdlib.
Module Export Numbers.
Module Export Natural.
Module Export Abstract.
Module Export NPow.
End NPow.

End Abstract.

End Natural.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NPow.
Import Stdlib.Numbers.Natural.Abstract.NSub.
Import Stdlib.Numbers.Natural.Abstract.NPow.
Import Stdlib.Numbers.Natural.Abstract.NParity.

Module Type NLog2Prop
 (A : NAxiomsSig)
 (B : NSubProp A)
 (C : NParityProp A B)
 (D : NPowProp A B C).
End NLog2Prop.
Module Export Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NLog.
Module Export Stdlib.
Module Export Numbers.
Module Export Natural.
Module Export Abstract.
Module Export NLog.
End NLog.

End Abstract.

End Natural.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NLog.
Export Stdlib.Numbers.Integer.Abstract.ZAxioms.
Export Stdlib.Numbers.Integer.Abstract.ZMaxMin.

Module Type ZBasicProp (Z:ZAxiomsMiniSig) := ZMaxMinProp Z.
Module Export Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZProperties.
Module Export Stdlib.
Module Export Numbers.
Module Export Integer.
Module Export Abstract.
Module Export ZProperties.
End ZProperties.

End Abstract.

End Integer.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZProperties.

Export Stdlib.Numbers.Natural.Abstract.NAxioms.
Import Stdlib.Numbers.Natural.Abstract.NMaxMin.
Import Stdlib.Numbers.Natural.Abstract.NParity.
Import Stdlib.Numbers.Natural.Abstract.NPow.
Import Stdlib.Numbers.Natural.Abstract.NSqrt.
Import Stdlib.Numbers.Natural.Abstract.NLog.
Import Stdlib.Numbers.Natural.Abstract.NGcd.

Module Type NBasicProp (N:NAxiomsMiniSig) := NMaxMinProp N.

Module Type NExtraPreProp (N:NAxiomsSig)(P:NBasicProp N) :=
 NParityProp N P <+ NPowProp N P <+ NSqrtProp N P <+ NLog2Prop N P <+ NGcdProp N P.

Module Type NExtraProp0 (N:NAxiomsSig)(P:NBasicProp N)(D0:NZDivSpec0 N N N)(E:NExtraPreProp N P).
End NExtraProp0.
Module Export Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NProperties.
Module Export Stdlib.
Module Export Numbers.
Module Export Natural.
Module Export Abstract.
Module Export NProperties.
End NProperties.

End Abstract.

End Natural.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Natural_DOT_Abstract_DOT_NProperties.
Import Stdlib.Structures.OrdersFacts.

Module Nat
  <: NAxiomsSig
  <: UsualDecidableTypeFull
  <: OrderedTypeFull
  <: TotalOrder.

Include Corelib.Init.Nat.
Definition eq_equiv : Equivalence (@eq nat).
exact (eq_equivalence).
Defined.
#[local] Obligation Tactic := simpl_relation.
#[global] Program Instance succ_wd : Proper (eq==>eq) S.
#[global] Program Instance pred_wd : Proper (eq==>eq) pred.
#[global] Program Instance add_wd : Proper (eq==>eq==>eq) plus.
#[global] Program Instance sub_wd : Proper (eq==>eq==>eq) minus.
#[global] Program Instance mul_wd : Proper (eq==>eq==>eq) mult.
#[global] Program Instance pow_wd : Proper (eq==>eq==>eq) pow.
#[global] Program Instance div_wd : Proper (eq==>eq==>eq) div.
#[global] Program Instance mod_wd : Proper (eq==>eq==>eq) modulo.
#[global] Program Instance lt_wd : Proper (eq==>eq==>iff) lt.
#[global] Program Instance testbit_wd : Proper (eq==>eq==>eq) testbit.

Theorem bi_induction :
  forall A : nat -> Prop, Proper (eq==>iff) A ->
    A 0 -> (forall n : nat, A n <-> A (S n)) -> forall n : nat, A n.
Admitted.

Definition eq := @Logic.eq nat.
Definition le := Peano.le.
Definition lt := Peano.lt.

Lemma pred_succ n : pred (S n) = n.
Admitted.

Lemma pred_0 : pred 0 = 0.
Admitted.

Lemma one_succ : 1 = S 0.
Admitted.

Lemma two_succ : 2 = S 1.
Admitted.

Lemma add_0_l n : 0 + n = n.
Admitted.

Lemma add_succ_l n m : (S n) + m = S (n + m).
Admitted.

Lemma sub_0_r n : n - 0 = n.
Admitted.

Lemma sub_succ_r n m : n - (S m) = pred (n - m).
Admitted.

Lemma mul_0_l n : 0 * n = 0.
Admitted.

Lemma mul_succ_l n m : S n * m = n * m + m.
Admitted.

Lemma lt_succ_r n m : n < S m <-> n <= m.
Admitted.

Lemma eqb_eq n m : eqb n m = true <-> n = m.
Admitted.

Lemma leb_le n m : (n <=? m) = true <-> n <= m.
Admitted.

Lemma ltb_lt n m : (n <? m) = true <-> n < m.
Admitted.

Lemma eq_dec : forall n m : nat, {n = m} + {n <> m}.
Admitted.

Lemma compare_eq_iff n m : (n ?= m) = Eq <-> n = m.
Admitted.

Lemma compare_lt_iff n m : (n ?= m) = Lt <-> n < m.
Admitted.

Lemma compare_le_iff n m : (n ?= m) <> Gt <-> n <= m.
Admitted.

Lemma compare_antisym n m : (m ?= n) = CompOpp (n ?= m).
Admitted.

Lemma max_l : forall n m, m <= n -> max n m = n.
Admitted.

Lemma max_r : forall n m, n <= m -> max n m = m.
Admitted.

Lemma min_l : forall n m, n <= m -> min n m = n.
Admitted.

Lemma min_r : forall n m, m <= n -> min n m = m.
Admitted.

Include BoolOrderFacts.

Include NBasicProp <+ UsualMinMaxLogicalProperties <+ UsualMinMaxDecProperties.

Lemma pow_neg_r a b : b<0 -> a^b = 0.
Admitted.

Lemma pow_0_r a : a^0 = 1.
Admitted.

Lemma pow_succ_r a b : 0<=b -> a^(S b) = a * a^b.
Admitted.

Lemma square_spec n : square n = n * n.
Admitted.

Definition Even n := exists m, n = 2*m.
Definition Odd n := exists m, n = 2*m+1.

Module Export Private_Parity.

End Private_Parity.

Lemma even_spec : forall n, even n = true <-> Even n.
Admitted.

Lemma odd_spec : forall n, odd n = true <-> Odd n.
Admitted.

Lemma div_mod x y : y <> 0 -> x = y*(x/y) + x mod y.
Admitted.

Lemma mod_bound_pos x y : 0<=x -> 0<y -> 0 <= x mod y < y.
Admitted.

Lemma sqrt_specif n : (sqrt n)*(sqrt n) <= n < S (sqrt n) * S (sqrt n).
Admitted.

Definition sqrt_spec a (Ha:0<=a) := sqrt_specif a.

Lemma sqrt_neg a : a<0 -> sqrt a = 0.
Admitted.

Lemma log2_spec n : 0<n ->
  2^(log2 n) <= n < 2^(S (log2 n)).
Admitted.

Lemma log2_nonpos n : n<=0 -> log2 n = 0.
Admitted.

Definition divide x y := exists z, y=z*x.
Notation "( x | y )" := (divide x y) (at level 0) : nat_scope.

Lemma gcd_divide_l : forall a b, (gcd a b | a).
Admitted.

Lemma gcd_divide_r : forall a b, (gcd a b | b).
Admitted.

Lemma gcd_greatest : forall a b c, (c|a) -> (c|b) -> (c|gcd a b).
Admitted.

Lemma gcd_nonneg a b : 0<=gcd a b.
Admitted.

Module Type PrivateBitwiseSpec.

  Parameter testbit_odd_0 : forall a : nat, testbit (add (mul 2 a) 1) 0 = true.
  Parameter testbit_even_0 : forall a : nat, testbit (mul 2 a) 0 = false.
  Parameter testbit_odd_succ : forall a n : nat, le 0 n ->
    testbit (add (mul 2 a) 1) (succ n) = testbit a n.
  Parameter testbit_even_succ : forall a n : nat, le 0 n ->
    testbit (mul 2 a) (succ n) = testbit a n.
  Parameter testbit_neg_r : forall a n : nat, lt n 0 -> testbit a n = false.
  Parameter shiftr_spec : forall a n m : nat, le 0 m ->
    testbit (shiftr a n) m = testbit a (add m n).
  Parameter shiftl_spec_high :
    forall a n m : nat, le 0 m ->
    le n m -> testbit (shiftl a n) m = testbit a (sub m n).
  Parameter shiftl_spec_low :
    forall a n m : nat, lt m n -> testbit (shiftl a n) m = false.
  Parameter land_spec :
    forall a b n : nat, testbit (land a b) n = testbit a n && testbit b n.
  Parameter lor_spec :
    forall a b n : nat, testbit (lor a b) n = testbit a n || testbit b n.
  Parameter ldiff_spec :
    forall a b n : nat,
    testbit (ldiff a b) n = testbit a n && negb (testbit b n).
  Parameter lxor_spec :
    forall a b n : nat, testbit (lxor a b) n = xorb (testbit a n) (testbit b n).
  Parameter div2_spec :
    forall a : nat, eq (div2 a) (shiftr a 1).
End PrivateBitwiseSpec.

Module PrivateImplementsBitwiseSpec : PrivateBitwiseSpec.

Lemma testbit_odd_0 a : testbit (2*a+1) 0 = true.
Admitted.

Lemma testbit_even_0 a : testbit (2*a) 0 = false.
Admitted.

Lemma testbit_odd_succ' a n : testbit (2*a+1) (S n) = testbit a n.
Admitted.

Lemma testbit_even_succ' a n : testbit (2*a) (S n) = testbit a n.
Admitted.

Lemma shiftr_specif : forall a n m,
  testbit (shiftr a n) m = testbit a (m+n).
Admitted.

Lemma shiftl_specif_high : forall a n m, n<=m ->
  testbit (shiftl a n) m = testbit a (m-n).
Admitted.

Lemma shiftl_spec_low : forall a n m, m<n ->
  testbit (shiftl a n) m = false.
Admitted.

Lemma land_spec a b n :
  testbit (land a b) n = testbit a n && testbit b n.
Admitted.

Lemma ldiff_spec a b n :
  testbit (ldiff a b) n = testbit a n && negb (testbit b n).
Admitted.

Lemma lor_spec a b n :
  testbit (lor a b) n = testbit a n || testbit b n.
Admitted.

Lemma lxor_spec a b n :
  testbit (lxor a b) n = xorb (testbit a n) (testbit b n).
Admitted.

Lemma div2_spec a : div2 a = shiftr a 1.
Admitted.

Definition testbit_odd_succ a n (_:0<=n) := testbit_odd_succ' a n.

Definition testbit_even_succ a n (_:0<=n) := testbit_even_succ' a n.

Lemma testbit_neg_r a n (H:n<0) : testbit a n = false.
Admitted.

Definition shiftl_spec_high a n m (_:0<=m) := shiftl_specif_high a n m.

Definition shiftr_spec a n m (_:0<=m) := shiftr_specif a n m.
End PrivateImplementsBitwiseSpec.
Include PrivateImplementsBitwiseSpec.

End Nat.

Section TestOrder.
End TestOrder.
Module Export Stdlib_DOT_Arith_DOT_PeanoNat.
Module Export Stdlib.
Module Export Arith.
Module Export PeanoNat.
End PeanoNat.

End Arith.

End Stdlib.

End Stdlib_DOT_Arith_DOT_PeanoNat.
Module Export List.
Export Stdlib.Lists.ListDef.

Set Implicit Arguments.

Module Export ListNotations.
Notation "[ ]" := nil (format "[ ]") : list_scope.
End ListNotations.

Section Elts.

  Variable A : Type.
Fixpoint nth_error (l:list A) (n:nat) {struct n} : option A.
Admitted.

End Elts.
Notation map := map.

  Section Bool.
    Variable A : Type.
Fixpoint find (l:list A) : option A.
Admitted.

  End Bool.

  Section One_predicate.

  End One_predicate.

Section Forall2.
End Forall2.

Section ForallPairs.
End ForallPairs.

Section Repeat.

End Repeat.
Notation length := length (only parsing).

End List.
Module Export Stdlib_DOT_Lists_DOT_List.
Module Export Stdlib.
Module Export Lists.
Module Export List.
End List.

End Lists.

End Stdlib.

End Stdlib_DOT_Lists_DOT_List.

Module Stdlib_DOT_micromega_DOT_Tauto_WRAPPED.
Module Export Tauto.

Set Implicit Arguments.

Inductive kind : Type :=
|isProp
|isBool.

Section S.
  Context {TA  : Type}.

  Context {TX  : kind -> Type}.

  Context {AA  : Type}.

  Context {AF  : Type}.

  Inductive GFormula  : kind -> Type :=
  | TT   : forall (k: kind), GFormula k
  | FF   : forall (k: kind), GFormula k
  | X    : forall (k: kind), TX k -> GFormula k
  | A    : forall (k: kind), TA -> AA -> GFormula k
  | AND  : forall (k: kind), GFormula k -> GFormula k -> GFormula k
  | OR   : forall (k: kind), GFormula k -> GFormula k -> GFormula k
  | NOT  : forall (k: kind), GFormula k -> GFormula k
  | IMPL : forall (k: kind), GFormula k -> option AF -> GFormula k -> GFormula k
  | IFF  : forall (k: kind), GFormula k -> GFormula k -> GFormula k
  | EQ   : GFormula isBool -> GFormula isBool -> GFormula isProp.
Definition rtyp (k: kind) : Type.
exact (if k then Prop else bool).
Defined.

  Variable ex : forall (k: kind), TX k -> rtyp k.

    Variable ea : forall (k: kind), TA -> rtyp k.
Definition eTT (k: kind) : rtyp k.
Admitted.
Definition eFF (k: kind) : rtyp k.
Admitted.
Definition eAND (k: kind) : rtyp k -> rtyp k -> rtyp k.
Admitted.
Definition eOR (k: kind) : rtyp k -> rtyp k -> rtyp k.
Admitted.
Definition eIMPL (k: kind) : rtyp k -> rtyp k -> rtyp k.
Admitted.
Definition eIFF (k: kind) : rtyp k -> rtyp k -> rtyp k.
Admitted.
Definition eNOT (k: kind) : rtyp k -> rtyp k.
Admitted.

    Fixpoint eval_f (k: kind) (f:GFormula k) {struct f}: rtyp k :=
      match f in GFormula k' return rtyp k' with
      | TT tk => eTT tk
      | FF tk => eFF tk
      | A k a _ =>  ea k a
      | X p => ex  p
      | @AND k e1 e2 => eAND k (eval_f  e1) (eval_f e2)
      | @OR k e1 e2  => eOR k (eval_f e1) (eval_f e2)
      | @NOT k e     => eNOT k (eval_f e)
      | @IMPL k f1 _ f2 => eIMPL k (eval_f f1)  (eval_f f2)
      | @IFF k f1 f2    => eIFF k (eval_f f1) (eval_f f2)
      | EQ f1 f2    => (eval_f f1) = (eval_f f2)
      end.

End S.

Definition eKind (k: kind) := if k then Prop else bool.

Definition BFormula (A : Type) := @GFormula A eKind unit unit.

      Definition e_rtyp (k: kind) (x : rtyp k) : rtyp k.
Admitted.

  Definition eval_bf {A : Type} (ea : forall (k: kind), A -> rtyp k) (k: kind) (f: BFormula A k) := eval_f e_rtyp ea f.

End Tauto.

End Stdlib_DOT_micromega_DOT_Tauto_WRAPPED.
Module Export Stdlib.
Module Export micromega.
Module Tauto.
Include Stdlib_DOT_micromega_DOT_Tauto_WRAPPED.Tauto.
End Tauto.
Module Export SetoidList.

Export Stdlib.Lists.List.
Set Implicit Arguments.

Section Type_with_equality.
Variable A : Type.
Variable eqA : A -> A -> Prop.

Inductive InA (x : A) : list A -> Prop :=
  | InA_cons_hd : forall y l, eqA x y -> InA x (y :: l)
  | InA_cons_tl : forall y l, InA x l -> InA x (y :: l).
End Type_with_equality.

End SetoidList.

Module Export Stdlib_DOT_MSets_DOT_MSetInterface_WRAPPED.
Module Export MSetInterface.
Export Stdlib.Bool.Bool.
Export Stdlib.Structures.OrdersFacts.

Module Type TypElt.
 Parameters t elt : Type.
End TypElt.

Module Type HasWOps (Import T:TypElt).

  Parameter is_empty : t -> bool.

End HasWOps.

Module Type WOps (E : DecidableType).
  Definition elt := E.t.
  Parameter t : Type.

  Include HasWOps.
End WOps.

Module Type WSetsOn (E : DecidableType).

End WSetsOn.

Module Type WSets.
  Declare Module E : DecidableType.
End WSets.

Module Type HasOrdOps (Import T:TypElt).

End HasOrdOps.

Module Type Ops (E : OrderedType) := WOps E <+ HasOrdOps.

Module Type SetsOn (E : OrderedType).

End SetsOn.

Module Type Sets.
  Declare Module E : OrderedType.
End Sets.

Module Type S := Sets.

Module Type WRawSets (E : DecidableType).

  Include WOps E.

  Parameter IsOk : t -> Prop.
  Class Ok (s:t) : Prop := ok : IsOk s.
Definition eq : t -> t -> Prop.
Admitted.

End WRawSets.

Module WRaw2SetsOn (E:DecidableType)(M:WRawSets E) <: WSetsOn E.

 Record t_ := Mkt {this :> M.t; is_ok : M.Ok this}.
 Definition t := t_.
 Definition is_empty (s : t) := M.is_empty s.

End WRaw2SetsOn.

Module WRaw2Sets (D:DecidableType)(M:WRawSets D) <: WSets with Module E := D.
  Module E := D.
End WRaw2Sets.

Module Type RawSets (E : OrderedType).
  Include WRawSets E <+ HasOrdOps <+ HasLt <+ IsStrOrder.

End RawSets.

Module Raw2SetsOn (O:OrderedType)(M:RawSets O) <: SetsOn O.
  Include WRaw2SetsOn O M.

End Raw2SetsOn.

Module Raw2Sets (O:OrderedType)(M:RawSets O) <: Sets with Module E := O.
  Module E := O.
  Include Raw2SetsOn O M.
End Raw2Sets.

Module Type IN (O:OrderedType).
End IN.

Module MakeSetOrdering (O:OrderedType)(Import M:IN O).

End MakeSetOrdering.

Module MakeListOrdering (O:OrderedType).

 #[local] Notation t := (list O.t).
 #[local] Notation In := (InA O.eq).

 Definition eq s s' := forall x, In x s <-> In x s'.

 Inductive lt_list : t -> t -> Prop :=
    | lt_nil : forall x s, lt_list nil (x :: s)
    | lt_cons_lt : forall x y s s',
        O.lt x y -> lt_list (x :: s) (y :: s')
    | lt_cons_eq : forall x y s s',
        O.eq x y -> lt_list s s' -> lt_list (x :: s) (y :: s').

 Definition lt := lt_list.

End MakeListOrdering.

End MSetInterface.
Module Export Stdlib.
Module Export MSets.
Module Export MSetInterface.
Include Stdlib_DOT_MSets_DOT_MSetInterface_WRAPPED.MSetInterface.
End MSetInterface.
Module Export MSetList.

Module Ops (X:OrderedType) <: WOps X.

  Definition elt := X.t.
  Definition t := list elt.

  Definition is_empty (l : t) := if l then true else false.

End Ops.

Module MakeRaw (X: OrderedType) <: RawSets X.

  Include Ops X.

  Definition inf x l :=
   match l with
   | nil => true
   | y::_ => match X.compare x y with Lt => true | _ => false end
   end.

  Fixpoint isok l :=
   match l with
   | nil => true
   | x::l => inf x l && isok l
   end.

  Notation Sort l := (isok l = true).

  Definition IsOk s := Sort s.

  Class Ok (s:t) : Prop := ok : Sort s.

  Module L := MakeListOrdering X.
  Definition eq := L.eq.
  Definition lt l1 l2 :=
    exists l1' l2', Ok l1' /\ Ok l2' /\ eq l1 l1' /\ eq l2 l2' /\ L.lt l1' l2'.

#[global]
  Instance lt_strorder : StrictOrder lt.
Admitted.

#[global]
  Instance lt_compat : Proper (eq==>eq==>iff) lt.
Admitted.

End MakeRaw.

Module Make (X: OrderedType) <: S with Module E := X.
 Module Raw := MakeRaw X.
 Include Raw2Sets X Raw.
End Make.

Module Type OrderedTypeWithLeibniz.
  Include OrderedType.
End OrderedTypeWithLeibniz.

Module Type SWithLeibniz.
  Declare Module E : OrderedTypeWithLeibniz.
End SWithLeibniz.

Module MakeWithLeibniz (X: OrderedTypeWithLeibniz) <: SWithLeibniz with Module E := X.
  Module E := X.
  Module Raw := MakeRaw X.
  Include Raw2SetsOn X Raw.

End MakeWithLeibniz.
Module Export OrderedType.

Module Type MiniOrderedType.

  Parameter Inline t : Type.

End MiniOrderedType.

Module Type OrderedType.
  Include MiniOrderedType.

End OrderedType.

Export Stdlib.Arith.PeanoNat.
Export Corelib.BinNums.PosDef.
Module Export BinPosDef.

#[local] Open Scope positive_scope.

Module Export Pos.

Include BinNums.PosDef.Pos.

Definition t := positive.

Infix "+" := add : positive_scope.

Definition pow (x:positive) := iter (mul x) 1.

Fixpoint square p :=
  match p with
    | p~1 => (square p + p)~0~1
    | p~0 => (square p)~0~0
    | 1 => 1
  end.

Fixpoint size_nat p : nat :=
  match p with
    | 1 => S O
    | p~1 => S (size_nat p)
    | p~0 => S (size_nat p)
  end.

Fixpoint size p :=
  match p with
    | 1 => 1
    | p~1 => succ (size p)
    | p~0 => succ (size p)
  end.

Infix "?=" := compare (at level 70, no associativity) : positive_scope.

Definition ltb x y :=
 match x ?= y with Lt => true | _ => false end.

Infix "=?" := eqb (at level 70, no associativity) : positive_scope.
Infix "<=?" := leb (at level 70, no associativity) : positive_scope.
Infix "<?" := ltb (at level 70, no associativity) : positive_scope.
Fixpoint gcdn (n : nat) (a b : positive) : positive.
Admitted.

Definition gcd (a b : positive) := gcdn (size_nat a + size_nat b)%nat a b.

Definition shiftl (p:positive)(n:N) :=
  match n with
    | N0 => p
    | Npos n => iter xO p n
  end.

Fixpoint testbit (p:positive)(n:N) :=
  match p, n with
    | p~0, N0 => false
    | _, N0 => true
    | 1, _ => false
    | p~0, Npos n => testbit p (pred_N n)
    | p~1, Npos n => testbit p (pred_N n)
  end.

#[local] Notation ten := 1~0~1~0.

Fixpoint of_uint_acc (d:Decimal.uint)(acc:positive) :=
  match d with
  | Decimal.Nil => acc
  | Decimal.D0 l => of_uint_acc l (mul ten acc)
  | Decimal.D1 l => of_uint_acc l (add 1 (mul ten acc))
  | Decimal.D2 l => of_uint_acc l (add 1~0 (mul ten acc))
  | Decimal.D3 l => of_uint_acc l (add 1~1 (mul ten acc))
  | Decimal.D4 l => of_uint_acc l (add 1~0~0 (mul ten acc))
  | Decimal.D5 l => of_uint_acc l (add 1~0~1 (mul ten acc))
  | Decimal.D6 l => of_uint_acc l (add 1~1~0 (mul ten acc))
  | Decimal.D7 l => of_uint_acc l (add 1~1~1 (mul ten acc))
  | Decimal.D8 l => of_uint_acc l (add 1~0~0~0 (mul ten acc))
  | Decimal.D9 l => of_uint_acc l (add 1~0~0~1 (mul ten acc))
  end.
Fixpoint of_uint (d:Decimal.uint) : N.
exact (match d with
  | Decimal.Nil => N0
  | Decimal.D0 l => of_uint l
  | Decimal.D1 l => Npos (of_uint_acc l 1)
  | Decimal.D2 l => Npos (of_uint_acc l 1~0)
  | Decimal.D3 l => Npos (of_uint_acc l 1~1)
  | Decimal.D4 l => Npos (of_uint_acc l 1~0~0)
  | Decimal.D5 l => Npos (of_uint_acc l 1~0~1)
  | Decimal.D6 l => Npos (of_uint_acc l 1~1~0)
  | Decimal.D7 l => Npos (of_uint_acc l 1~1~1)
  | Decimal.D8 l => Npos (of_uint_acc l 1~0~0~0)
  | Decimal.D9 l => Npos (of_uint_acc l 1~0~0~1)
  end).
Defined.
Fixpoint of_hex_uint (d:Hexadecimal.uint) : N.
Admitted.

Fixpoint to_little_uint p :=
  match p with
  | 1 => Decimal.D1 Decimal.Nil
  | p~1 => Decimal.Little.succ_double (to_little_uint p)
  | p~0 => Decimal.Little.double (to_little_uint p)
  end.

Definition to_uint p := Decimal.rev (to_little_uint p).

End Pos.

End BinPosDef.
Module Export BinPos.

#[local] Open Scope positive_scope.

Module Pos
 <: UsualOrderedTypeFull
 <: UsualDecidableTypeFull
 <: TotalOrder.

Include BinPosDef.Pos.

Definition eq := @Logic.eq positive.
Definition eq_equiv := @eq_equivalence positive.
Include BackportEq.

Definition lt x y := (x ?= y) = Lt.
Definition le x y := (x ?= y) <> Gt.

Infix "<=" := le : positive_scope.
Infix "<" := lt : positive_scope.

Lemma eq_dec : forall x y:positive, {x = y} + {x <> y}.
Admitted.

Theorem eqb_eq p q : (p =? q) = true <-> p=q.
Admitted.

Theorem ltb_lt p q : (p <? q) = true <-> p < q.
Admitted.

Theorem leb_le p q : (p <=? q) = true <-> p <= q.
Admitted.

Lemma compare_eq_iff p q : (p ?= q) = Eq <-> p = q.
Admitted.

Lemma compare_antisym p q : (q ?= p) = CompOpp (p ?= q).
Admitted.

Lemma compare_lt_iff p q : (p ?= q) = Lt <-> p < q.
Admitted.

Lemma compare_le_iff p q : (p ?= q) <> Gt <-> p <= q.
Admitted.

Include BoolOrderFacts.

Definition le_lteq := lt_eq_cases.

#[global]
Instance lt_strorder : StrictOrder lt.
Admitted.

#[global]
Instance lt_compat : Proper (Logic.eq==>Logic.eq==>iff) lt.
Admitted.

Lemma lt_total p q : p < q \/ p = q \/ q < p.
Admitted.

End Pos.
Infix "*" := Pos.mul : positive_scope.
Infix "^" := Pos.pow : positive_scope.

End BinPos.
Module Export BinNatDef.

#[local] Open Scope N_scope.

#[local] Notation "0" := N0.
#[local] Notation "1" := (Npos 1).
#[local] Notation "2" := (Npos 2).

Module Export N.

Include BinNums.NatDef.N.

Definition t := N.

#[global] Notation pos := Npos.

Definition zero := 0.
Definition one := 1.
Definition two := 2.

Definition succ n :=
  match n with
  | 0 => 1
  | pos p => pos (Pos.succ p)
  end.

Definition pred n :=
  match n with
  | 0 => 0
  | pos p => Pos.pred_N p
  end.

Definition add n m :=
  match n, m with
  | 0, _ => m
  | _, 0 => n
  | pos p, pos q => pos (p + q)
  end.

Infix "+" := add : N_scope.

Infix "-" := sub : N_scope.

Definition mul n m :=
  match n, m with
  | 0, _ => 0
  | _, 0 => 0
  | pos p, pos q => pos (p * q)
  end.

Infix "*" := mul : N_scope.

Infix "?=" := compare (at level 70, no associativity) : N_scope.

Definition eqb n m :=
  match n, m with
    | 0, 0 => true
    | pos p, pos q => Pos.eqb p q
    | _, _ => false
  end.

Definition ltb x y :=
 match x ?= y with Lt => true | _ => false end.
Infix "<=?" := leb (at level 70, no associativity) : N_scope.
Infix "<?" := ltb (at level 70, no associativity) : N_scope.

Definition min n n' := match n ?= n' with
 | Lt | Eq => n
 | Gt => n'
 end.

Definition max n n' := match n ?= n' with
 | Lt | Eq => n'
 | Gt => n
 end.

Definition div2 n :=
  match n with
  | 0 => 0
  | 1 => 0
  | pos (p~0) => pos p
  | pos (p~1) => pos p
  end.

Definition even n :=
  match n with
    | 0 => true
    | pos (xO _) => true
    | _ => false
  end.

Definition odd n := negb (even n).

Definition pow n p :=
  match p, n with
    | 0, _ => 1
    | _, 0 => 0
    | pos p, pos q => pos (q^p)
  end.

Infix "^" := pow : N_scope.

Definition square n :=
  match n with
    | 0 => 0
    | pos p => pos (Pos.square p)
  end.

Definition log2 n :=
 match n with
   | 0 => 0
   | 1 => 0
   | pos (p~0) => pos (Pos.size p)
   | pos (p~1) => pos (Pos.size p)
 end.
Definition div_eucl (a b:N) : N * N.
Admitted.

Definition div a b := fst (div_eucl a b).
Definition modulo a b := snd (div_eucl a b).

Infix "/" := div : N_scope.
Infix "mod" := modulo (at level 40, no associativity) : N_scope.

Definition gcd a b :=
 match a, b with
  | 0, _ => b
  | _, 0 => a
  | pos p, pos q => pos (Pos.gcd p q)
 end.

Definition sqrt n :=
 match n with
  | 0 => 0
  | pos p => pos (Pos.sqrt p)
 end.

Definition shiftl a n :=
  match a with
    | 0 => 0
    | pos a => pos (Pos.shiftl a n)
  end.

Definition shiftr a n :=
  match n with
    | 0 => a
    | pos p => Pos.iter div2 a p
  end.

Definition testbit a n :=
  match a with
    | 0 => false
    | pos p => Pos.testbit p n
  end.

Definition of_num_uint (d:Number.uint) :=
  match d with
  | Number.UIntDecimal d => of_uint d
  | Number.UIntHexadecimal d => of_hex_uint d
  end.

Definition to_uint n :=
  match n with
  | 0 => Decimal.zero
  | pos p => Pos.to_uint p
  end.

Definition to_num_uint n := Number.UIntDecimal (to_uint n).
Number Notation N of_num_uint to_num_uint : N_scope.

End N.

End BinNatDef.
Module Export BinNat.
Import Stdlib.Numbers.Natural.Abstract.NProperties.

#[local] Open Scope N_scope.

Module N
 <: NAxiomsSig
 <: UsualOrderedTypeFull
 <: UsualDecidableTypeFull
 <: TotalOrder.

Include BinNatDef.N.

Definition eq := @Logic.eq N.
Definition eq_equiv := @eq_equivalence N.

Definition lt x y := (x ?= y) = Lt.
Definition le x y := (x ?= y) <> Gt.

Infix "<=" := le : N_scope.
Infix "<" := lt : N_scope.
Notation "x <= y < z" := (x <= y /\ y < z) : N_scope.

Definition divide p q := exists r, q = r*p.
Notation "( p | q )" := (divide p q) (at level 0) : N_scope.

Definition Even n := exists m, n = 2*m.
Definition Odd n := exists m, n = 2*m+1.
Program Definition succ_wd : Proper (eq==>eq) succ.
Admitted.
Program Definition pred_wd : Proper (eq==>eq) pred.
Admitted.
Program Definition add_wd : Proper (eq==>eq==>eq) add.
Admitted.
Program Definition sub_wd : Proper (eq==>eq==>eq) sub.
Admitted.
Program Definition mul_wd : Proper (eq==>eq==>eq) mul.
Admitted.
Program Definition lt_wd : Proper (eq==>eq==>iff) lt.
Admitted.
Program Definition div_wd : Proper (eq==>eq==>eq) div.
Admitted.
Program Definition mod_wd : Proper (eq==>eq==>eq) modulo.
Admitted.
Program Definition pow_wd : Proper (eq==>eq==>eq) pow.
Admitted.
Program Definition testbit_wd : Proper (eq==>eq==>Logic.eq) testbit.
Admitted.

Definition eq_dec : forall n m : N, { n = m } + { n <> m }.
Admitted.

Theorem bi_induction :
  forall A : N -> Prop, Proper (Logic.eq==>iff) A ->
    A 0 -> (forall n, A n <-> A (succ n)) -> forall n : N, A n.
Admitted.

Lemma one_succ : 1 = succ 0.
Admitted.

Lemma two_succ : 2 = succ 1.
Admitted.

Lemma pred_0 : pred 0 = 0.
Admitted.

Theorem pred_succ n : pred (succ n) = n.
Admitted.

Theorem add_0_l n : 0 + n = n.
Admitted.

Theorem add_succ_l n m : succ n + m = succ (n + m).
Admitted.

Theorem sub_0_r n : n - 0 = n.
Admitted.

Theorem sub_succ_r n m : n - succ m = pred (n - m).
Admitted.

Theorem mul_0_l n : 0 * n = 0.
Admitted.

Theorem mul_succ_l n m : (succ n) * m = n * m + m.
Admitted.

Lemma eqb_eq n m : eqb n m = true <-> n=m.
Admitted.

Lemma ltb_lt n m : (n <? m) = true <-> n < m.
Admitted.

Lemma leb_le n m : (n <=? m) = true <-> n <= m.
Admitted.

Theorem compare_eq_iff n m : (n ?= m) = Eq <-> n = m.
Admitted.

Theorem compare_lt_iff n m : (n ?= m) = Lt <-> n < m.
Admitted.

Theorem compare_le_iff n m : (n ?= m) <> Gt <-> n <= m.
Admitted.

Theorem compare_antisym n m : (m ?= n) = CompOpp (n ?= m).
Admitted.

Include BoolOrderFacts.

Theorem min_l n m : n <= m -> min n m = n.
Admitted.

Theorem min_r n m : m <= n -> min n m = m.
Admitted.

Theorem max_l n m : m <= n -> max n m = n.
Admitted.

Theorem max_r n m : n <= m -> max n m = m.
Admitted.

Lemma lt_succ_r n m : n < succ m <-> n<=m.
Admitted.

Include NBasicProp <+ UsualMinMaxLogicalProperties <+ UsualMinMaxDecProperties.

Lemma pow_0_r n : n ^ 0 = 1.
Admitted.

Lemma pow_succ_r n p : 0<=p -> n^(succ p) = n * n^p.
Admitted.

Lemma pow_neg_r n p : p<0 -> n^p = 0.
Admitted.

Lemma square_spec n : square n = n * n.
Admitted.

Lemma log2_spec n : 0 < n ->
 2^(log2 n) <= n < 2^(succ (log2 n)).
Admitted.

Lemma log2_nonpos n : n<=0 -> log2 n = 0.
Admitted.

Lemma even_spec n : even n = true <-> Even n.
Admitted.

Lemma odd_spec n : odd n = true <-> Odd n.
Admitted.

Theorem div_mod a b : b<>0 -> a = b * (a/b) + (a mod b).
Admitted.

Theorem mod_bound_pos a b : 0<=a -> 0<b -> 0 <= a mod b < b.
Admitted.

Lemma sqrt_spec n : 0<=n ->
 let s := sqrt n in s*s <= n < (succ s)*(succ s).
Admitted.

Lemma sqrt_neg n : n<0 -> sqrt n = 0.
Admitted.

Lemma gcd_divide_l a b : (gcd a b | a).
Admitted.

Lemma gcd_divide_r a b : (gcd a b | b).
Admitted.

Lemma gcd_greatest a b c : (c|a) -> (c|b) -> (c|gcd a b).
Admitted.

Lemma gcd_nonneg a b : 0 <= gcd a b.
Admitted.

Lemma testbit_even_0 a : testbit (2*a) 0 = false.
Admitted.

Lemma testbit_odd_0 a : testbit (2*a+1) 0 = true.
Admitted.

Lemma testbit_odd_succ a n : 0<=n ->
 testbit (2*a+1) (succ n) = testbit a n.
Admitted.

Lemma testbit_even_succ a n : 0<=n ->
 testbit (2*a) (succ n) = testbit a n.
Admitted.

Lemma testbit_neg_r a n : n<0 -> testbit a n = false.
Admitted.

Lemma shiftr_spec a n m : 0<=m ->
 testbit (shiftr a n) m = testbit a (m+n).
Admitted.

Lemma shiftl_spec_high a n m : 0<=m -> n<=m ->
 testbit (shiftl a n) m = testbit a (m-n).
Admitted.

Lemma shiftl_spec_low a n m : m<n ->
 testbit (shiftl a n) m = false.
Admitted.

Lemma div2_spec a : div2 a = shiftr a 1.
Admitted.

Lemma lxor_spec a a' n :
 testbit (lxor a a') n = xorb (testbit a n) (testbit a' n).
Admitted.

Lemma lor_spec a a' n :
 testbit (lor a a') n = (testbit a n) || (testbit a' n).
Admitted.

Lemma land_spec a a' n :
 testbit (land a a') n = (testbit a n) && (testbit a' n).
Admitted.

Lemma ldiff_spec a a' n :
 testbit (ldiff a a') n = (testbit a n) && negb (testbit a' n).
Admitted.

End N.

End BinNat.
Module Export BinIntDef.

#[local] Open Scope Z_scope.

#[local] Notation "0" := Z0.
#[local] Notation "1" := (Zpos 1).
#[local] Notation "2" := (Zpos 2).

Module Export Z.

Include BinNums.IntDef.Z.

Definition t := Z.

#[global] Notation pos := Zpos.
#[global] Notation neg := Zneg.

Definition zero := 0.
Definition one := 1.
Definition two := 2.

Definition succ x := x + 1.

Definition pred x := x + neg 1.

Definition square x :=
  match x with
    | 0 => 0
    | pos p => pos (Pos.square p)
    | neg p => pos (Pos.square p)
  end.

Definition sgn z :=
  match z with
    | 0 => 0
    | pos p => 1
    | neg p => neg 1
  end.

Infix "=?" := eqb (at level 70, no associativity) : Z_scope.
Infix "<=?" := leb (at level 70, no associativity) : Z_scope.
Infix "<?" := ltb (at level 70, no associativity) : Z_scope.

Definition abs z :=
  match z with
    | 0 => 0
    | pos p => pos p
    | neg p => pos p
  end.

Definition of_uint (d:Decimal.uint) := of_N (Pos.of_uint d).

Definition of_hex_uint (d:Hexadecimal.uint) := of_N (Pos.of_hex_uint d).

Definition of_int (d:Decimal.int) :=
  match d with
  | Decimal.Pos d => of_uint d
  | Decimal.Neg d => opp (of_uint d)
  end.

Definition of_hex_int (d:Hexadecimal.int) :=
  match d with
  | Hexadecimal.Pos d => of_hex_uint d
  | Hexadecimal.Neg d => opp (of_hex_uint d)
  end.

Definition of_num_int (d:Number.int) :=
  match d with
  | Number.IntDecimal d => of_int d
  | Number.IntHexadecimal d => of_hex_int d
  end.

Definition to_int n :=
  match n with
  | 0 => Decimal.Pos Decimal.zero
  | pos p => Decimal.Pos (Pos.to_uint p)
  | neg p => Decimal.Neg (Pos.to_uint p)
  end.

Definition to_num_int n := Number.IntDecimal (to_int n).

Infix "/" := div : Z_scope.
Infix "mod" := modulo (at level 40, no associativity) : Z_scope.

Definition odd z :=
  match z with
    | 0 => false
    | pos (xO _) => false
    | neg (xO _) => false
    | _ => true
  end.

Definition log2 z :=
  match z with
    | pos (p~1) => pos (Pos.size p)
    | pos (p~0) => pos (Pos.size p)
    | _ => 0
  end.

Definition sqrt n :=
 match n with
  | pos p => pos (Pos.sqrt p)
  | _ => 0
 end.

Definition gcd a b :=
  match a,b with
    | 0, _ => abs b
    | _, 0 => abs a
    | pos a, pos b => pos (Pos.gcd a b)
    | pos a, neg b => pos (Pos.gcd a b)
    | neg a, pos b => pos (Pos.gcd a b)
    | neg a, neg b => pos (Pos.gcd a b)
  end.

Definition testbit a n :=
 match n with
   | 0 => odd a
   | pos p =>
     match a with
       | 0 => false
       | pos a => Pos.testbit a (N.pos p)
       | neg a => negb (N.testbit (Pos.pred_N a) (N.pos p))
     end
   | neg _ => false
 end.

Definition ldiff a b :=
 match a, b with
   | 0, _ => 0
   | _, 0 => a
   | pos a, pos b => of_N (Pos.ldiff a b)
   | neg a, pos b => neg (N.succ_pos (N.lor (Pos.pred_N a) (N.pos b)))
   | pos a, neg b => of_N (N.land (N.pos a) (Pos.pred_N b))
   | neg a, neg b => of_N (N.ldiff (Pos.pred_N b) (Pos.pred_N a))
 end.
Number Notation Z of_num_int to_num_int : Z_scope.

End Z.

End BinIntDef.

Module Export BinInt.
Import Stdlib.Numbers.Integer.Abstract.ZProperties.

#[local] Open Scope Z_scope.

Module Z
 <: ZAxiomsSig
 <: UsualOrderedTypeFull
 <: UsualDecidableTypeFull
 <: TotalOrder.

Include BinIntDef.Z.

Definition eq := @Logic.eq Z.
Definition eq_equiv := @eq_equivalence Z.
Notation "x <= y < z" := (x <= y /\ y < z) : Z_scope.
Notation "x < y <= z" := (x < y /\ y <= z) : Z_scope.

Definition divide x y := exists z, y = z*x.
Notation "( x | y )" := (divide x y) (at level 0).

Definition Even a := exists b, a = 2*b.
Definition Odd a := exists b, a = 2*b+1.

Definition eq_dec (x y : Z) : {x = y} + {x <> y}.
Admitted.
Program Definition succ_wd : Proper (eq==>eq) succ.
Admitted.
Program Definition pred_wd : Proper (eq==>eq) pred.
Admitted.
Program Definition opp_wd : Proper (eq==>eq) opp.
Admitted.
Program Definition add_wd : Proper (eq==>eq==>eq) add.
Admitted.
Program Definition sub_wd : Proper (eq==>eq==>eq) sub.
Admitted.
Program Definition mul_wd : Proper (eq==>eq==>eq) mul.
Admitted.
Program Definition lt_wd : Proper (eq==>eq==>iff) lt.
Admitted.
Program Definition div_wd : Proper (eq==>eq==>eq) div.
Admitted.
Program Definition mod_wd : Proper (eq==>eq==>eq) modulo.
Admitted.
Program Definition quot_wd : Proper (eq==>eq==>eq) quot.
Admitted.
Program Definition rem_wd : Proper (eq==>eq==>eq) rem.
Admitted.
Program Definition pow_wd : Proper (eq==>eq==>eq) pow.
Admitted.
Program Definition testbit_wd : Proper (eq==>eq==>Logic.eq) testbit.
Admitted.

Module Import Private_BootStrap.

End Private_BootStrap.

Lemma one_succ : 1 = succ 0.
Admitted.

Lemma two_succ : 2 = succ 1.
Admitted.

Lemma add_0_l n : 0 + n = n.
Admitted.

Lemma add_succ_l n m : succ n + m = succ (n + m).
Admitted.

Lemma opp_0 : -0 = 0.
Admitted.

Lemma opp_succ n : -(succ n) = pred (-n).
Admitted.

Lemma succ_pred n : succ (pred n) = n.
Admitted.

Lemma pred_succ n : pred (succ n) = n.
Admitted.

Lemma sub_0_r n : n - 0 = n.
Admitted.

Lemma sub_succ_r n m : n - succ m = pred (n - m).
Admitted.

Lemma mul_0_l n : 0 * n = 0.
Admitted.

Lemma mul_succ_l n m : succ n * m = n * m + m.
Admitted.

Lemma eqb_eq n m : (n =? m) = true <-> n = m.
Admitted.

Lemma ltb_lt n m : (n <? m) = true <-> n < m.
Admitted.

Lemma leb_le n m : (n <=? m) = true <-> n <= m.
Admitted.

Lemma compare_eq_iff n m : (n ?= m) = Eq <-> n = m.
Admitted.

Lemma compare_antisym n m : (m ?= n) = CompOpp (n ?= m).
Admitted.

Lemma compare_lt_iff n m : (n ?= m) = Lt <-> n < m.
Admitted.

Lemma compare_le_iff n m : (n ?= m) <> Gt <-> n <= m.
Admitted.

Include BoolOrderFacts.

Lemma lt_succ_r n m : n < succ m <-> n<=m.
Admitted.

Lemma max_l n m : m<=n -> max n m = n.
Admitted.

Lemma max_r n m :  n<=m -> max n m = m.
Admitted.

Lemma min_l n m : n<=m -> min n m = n.
Admitted.

Lemma min_r n m : m<=n -> min n m = m.
Admitted.

Lemma bi_induction (P : Z -> Prop) :
  Proper (eq ==> iff) P ->
  P 0 ->
  (forall x, P x <-> P (succ x)) ->
  forall z, P z.
Admitted.

Include ZBasicProp <+ UsualMinMaxLogicalProperties <+ UsualMinMaxDecProperties.

Lemma abs_eq n : 0 <= n -> abs n = n.
Admitted.

Lemma abs_neq n : n <= 0 -> abs n = - n.
Admitted.

Lemma sgn_null n : n = 0 -> sgn n = 0.
Admitted.

Lemma sgn_pos n : 0 < n -> sgn n = 1.
Admitted.

Lemma sgn_neg n : n < 0 -> sgn n = -1.
Admitted.

Lemma pow_0_r n : n^0 = 1.
Admitted.

Lemma pow_succ_r n m : 0<=m -> n^(succ m) = n * n^m.
Admitted.

Lemma pow_neg_r n m : m<0 -> n^m = 0.
Admitted.

Lemma square_spec n : square n = n * n.
Admitted.

Lemma sqrt_spec n : 0<=n ->
 let s := sqrt n in s*s <= n < (succ s)*(succ s).
Admitted.

Lemma sqrt_neg n : n<0 -> sqrt n = 0.
Admitted.

Lemma log2_spec n : 0 < n -> 2^(log2 n) <= n < 2^(succ (log2 n)).
Admitted.

Lemma log2_nonpos n : n<=0 -> log2 n = 0.
Admitted.

Lemma even_spec n : even n = true <-> Even n.
Admitted.

Lemma odd_spec n : odd n = true <-> Odd n.
Admitted.

Lemma div_mod a b : b<>0 -> a = b*(a/b) + (a mod b).
Admitted.

Lemma mod_pos_bound a b : 0 < b -> 0 <= a mod b < b.
Admitted.

Definition mod_bound_pos a b (_:0<=a) := mod_pos_bound a b.

Lemma mod_neg_bound a b : b < 0 -> b < a mod b <= 0.
Admitted.

Lemma quot_rem a b : b<>0 -> a = b*(a÷b) + rem a b.
Admitted.

Lemma rem_bound_pos a b : 0<=a -> 0<b -> 0 <= rem a b < b.
Admitted.

Lemma rem_opp_l a b : b<>0 -> rem (-a) b = - (rem a b).
Admitted.

Lemma rem_opp_r a b : b<>0 -> rem a (-b) = rem a b.
Admitted.

Lemma gcd_divide_l a b : (gcd a b | a).
Admitted.

Lemma gcd_divide_r a b : (gcd a b | b).
Admitted.

Lemma gcd_greatest a b c : (c|a) -> (c|b) -> (c | gcd a b).
Admitted.

Lemma gcd_nonneg a b : 0 <= gcd a b.
Admitted.

Lemma div2_spec a : div2 a = shiftr a 1.
Admitted.

Lemma testbit_neg_r a n : n<0 -> testbit a n = false.
Admitted.

Lemma testbit_odd_0 a : testbit (2*a+1) 0 = true.
Admitted.

Lemma testbit_even_0 a : testbit (2*a) 0 = false.
Admitted.

Lemma testbit_odd_succ a n : 0<=n ->
 testbit (2*a+1) (succ n) = testbit a n.
Admitted.

Lemma testbit_even_succ a n : 0<=n ->
 testbit (2*a) (succ n) = testbit a n.
Admitted.

Lemma shiftl_spec_low a n m : m<n ->
                              testbit (shiftl a n) m = false.
Admitted.

Lemma shiftl_spec_high a n m : 0<=m -> n<=m ->
                               testbit (shiftl a n) m = testbit a (m-n).
Admitted.

Lemma shiftr_spec a n m : 0<=m ->
 testbit (shiftr a n) m = testbit a (m+n).
Admitted.

Lemma lor_spec a b n :
 testbit (lor a b) n = testbit a n || testbit b n.
Admitted.

Lemma land_spec a b n :
 testbit (land a b) n = testbit a n && testbit b n.
Admitted.

Lemma ldiff_spec a b n :
 testbit (ldiff a b) n = testbit a n && negb (testbit b n).
Admitted.

Lemma lxor_spec a b n :
 testbit (lxor a b) n = xorb (testbit a n) (testbit b n).
Admitted.

End Z.

End BinInt.

Module Type Int.

  Parameter t : Set.

End Int.

Module MoreInt (Import I:Int).

End MoreInt.

Module Z_as_Int <: Int.
  Definition t := Z.
End Z_as_Int.

Section S.

  Variable D :Type.

  Definition Env := positive -> D.

End S.

#[universes(template)]
Inductive PExpr {C} : Type :=
| PEc : C -> PExpr
| PEX : positive -> PExpr
| PEadd : PExpr -> PExpr -> PExpr
| PEsub : PExpr -> PExpr -> PExpr
| PEmul : PExpr -> PExpr -> PExpr
| PEopp : PExpr -> PExpr
| PEpow : PExpr -> N -> PExpr.
Arguments PExpr : clear implicits.

#[universes(template)]
Inductive Pol {C} : Type :=
| Pc : C -> Pol
| Pinj : positive -> Pol -> Pol
| PX : Pol -> positive -> Pol -> Pol.
Arguments Pol : clear implicits.

Declare ML Module "rocq-runtime.plugins.zify".
Module Export Zify.

Ltac zify_pre_hook := idtac.

Ltac zify_post_hook := idtac.

Ltac zify_convert_to_euclidean_division_equations_flag := constr:(false).

Ltac zify_internal_to_euclidean_division_equations := idtac.

Ltac zify_to_euclidean_division_equations :=
  lazymatch zify_convert_to_euclidean_division_equations_flag with
  | true => zify_internal_to_euclidean_division_equations
  | false => idtac
  end.

Ltac zify := intros;
             zify_pre_hook ;
             zify_elim_let ;
             zify_op ;
             (zify_iter_specs) ;
             zify_saturate;
             zify_to_euclidean_division_equations ;
             zify_post_hook.

Section Micromega.

Variable R : Type.

Variable C : Type.

Definition PolC := Pol C.

Definition PolEnv := Env R.

Inductive Psatz : Type :=
| PsatzLet: Psatz -> Psatz -> Psatz
| PsatzIn : nat -> Psatz
| PsatzSquare : PolC -> Psatz
| PsatzMulC : PolC -> Psatz -> Psatz
| PsatzMulE : Psatz -> Psatz -> Psatz
| PsatzAdd  : Psatz -> Psatz -> Psatz
| PsatzC    : C -> Psatz
| PsatzZ    : Psatz.

Inductive Op2 : Set :=
| OpEq
| OpNEq
| OpLe
| OpGe
| OpLt
| OpGt.

#[universes(template)]
Record Formula (T:Type) : Type := Build_Formula{
  Flhs : PExpr T;
  Fop : Op2;
  Frhs : PExpr T
}.

End Micromega.
Module Export ZMicromega.
Import Stdlib.micromega.Tauto.
Fixpoint Zeval_expr (env : PolEnv Z) (e: PExpr Z) : Z.
Admitted.
Definition Zeval_op2 (k: Tauto.kind) :  Op2 ->  Z -> Z -> Tauto.rtyp k.
Admitted.

Definition Zeval_formula (env : PolEnv Z) (k: Tauto.kind) (f : Formula Z):=
  let (lhs, op, rhs) := f in
    (Zeval_op2 k op) (Zeval_expr env lhs) (Zeval_expr env rhs).

Definition ZWitness := Psatz Z.

Inductive ZArithProof :=
| DoneProof
| RatProof : ZWitness -> ZArithProof -> ZArithProof
| CutProof : ZWitness -> ZArithProof -> ZArithProof
| SplitProof : PolC Z -> ZArithProof -> ZArithProof -> ZArithProof
| deprecated_EnumProof : ZWitness -> ZWitness -> list ZArithProof -> ZArithProof
| ExProof   : positive -> ZArithProof -> ZArithProof

.

Definition ZTautoChecker  (f : BFormula (Formula Z) Tauto.isProp) (w: list ZArithProof): bool.
Admitted.

Lemma ZTautoChecker_sound : forall f w, ZTautoChecker f w = true -> forall env, eval_bf  (Zeval_formula env)  f.
Admitted.

End ZMicromega.
Module Export MSetGenTree.
Import Stdlib.MSets.MSetInterface.

Module Type InfoTyp.
 Parameter t : Set.
End InfoTyp.

Module Type Ops (X:OrderedType)(Info:InfoTyp).

Definition elt := X.t.

Inductive tree  : Type :=
| Leaf : tree
| Node : Info.t -> tree -> X.t -> tree -> tree.

Definition is_empty t :=
 match t with
 | Leaf => true
 | _ => false
 end.

End Ops.

Module Type Props (X:OrderedType)(Info:InfoTyp)(Import M:Ops X Info).

Inductive InT (x : elt) : tree -> Prop :=
  | IsRoot : forall c l r y, X.eq x y -> InT x (Node c l y r)
  | InLeft : forall c l r y, InT x l -> InT x (Node c l y r)
  | InRight : forall c l r y, InT x r -> InT x (Node c l y r).

Definition Equal s s' := forall a : elt, InT a s <-> InT a s'.

Definition lt_tree x s := forall y, InT y s -> X.lt y x.
Definition gt_tree x s := forall y, InT y s -> X.lt x y.

Inductive bst : tree -> Prop :=
  | BSLeaf : bst Leaf
  | BSNode : forall c x l r, bst l -> bst r ->
     lt_tree x l -> gt_tree x r -> bst (Node c l x r).

Definition IsOk := bst.

Class Ok (s:tree) : Prop := ok : bst s.

Definition eq := Equal.
Definition lt (s1 s2 : tree) : Prop.
Admitted.

#[global]
Instance lt_strorder : StrictOrder lt.
Admitted.

#[global]
Instance lt_compat : Proper (eq==>eq==>iff) lt.
Admitted.

End Props.
Module Export MSetAVL.

Module Ops (Import I:Int)(X:OrderedType) <: MSetInterface.Ops X.

Include MSetGenTree.Ops X I.

Definition t := tree.

End Ops.

Module MakeRaw (Import I:Int)(X:OrderedType) <: RawSets X.
Include Ops I X.

Include MSetGenTree.Props X I.

End MakeRaw.

Module IntMake (I:Int)(X: OrderedType) <: S with Module E := X.
 Module Raw := MakeRaw I X.
 Include Raw2Sets X Raw.
End IntMake.

Module Make (X: OrderedType) <: S with Module E := X
 :=IntMake(Z_as_Int)(X).
Declare ML Module "rocq-runtime.plugins.micromega".

Ltac zchecker :=
  let __wit := fresh "__wit" in
  let __varmap := fresh "__varmap" in
  let __ff := fresh "__ff" in
  intros __wit __varmap __ff ;
  exact (ZTautoChecker_sound __ff __wit
                                (@eq_refl bool true <: @eq bool (ZTautoChecker __ff __wit) true)
                                (@find Z Z0 __varmap)).

Ltac lia := Zify.zify; xlia zchecker.

Module Export String.
  Inductive t : Set :=
  | EmptyString
  | String (_ : Byte.byte) (_ : t).
Fixpoint compare (xs ys : t) : comparison.
Admitted.
Abbreviation string := String.t.

Module OT_byte <: OrderedType.OrderedType with Definition t := Byte.byte.
  Definition t := Byte.byte.
End OT_byte.

Module StringOT <: UsualOrderedType.
  Definition t := string.
Definition eq : t -> t -> Prop.
exact (eq).
Defined.
Definition eq_equiv : Equivalence eq.
exact (_).
Defined.

  Definition compare := String.compare.
  Definition lt x y : Prop := compare x y = Lt.

  Theorem compare_spec : forall x y, CompareSpec (x = y) (lt x y) (lt y x) (compare x y).
Admitted.
Definition eq_dec : forall x y : t, {eq x y} + {not (eq x y)}.
Admitted.

  Global Instance lt_strorder : StrictOrder lt.
Admitted.

  Definition lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.

End StringOT.

Export ListNotations.

Notation "#| l |" := (List.length l) (at level 0, l at level 99, format "#| l |").

Export MetaRocq.Utils.MRProd.
Notation "A * B" := (prod A B) : type_scope2.
Global Open Scope type_scope2.

Definition ident   := string.

Definition dirpath := list ident.

Inductive modpath :=
| MPfile  (dp : dirpath)
| MPbound (dp : dirpath) (id : ident) (i : nat)
| MPdot   (mp : modpath) (id : ident).

Definition kername := modpath × ident.

Record inductive : Set := mkInd { inductive_mind : kername ;
                                  inductive_ind : nat }.

Record projection := mkProjection
  { proj_ind : inductive;
    proj_npars : nat;
    proj_arg : nat  }.

Inductive name : Set :=
| nAnon
| nNamed (_ : ident).

Inductive relevance : Set := Relevant | Irrelevant.

Record binder_annot (A : Type) := mkBindAnn { binder_name : A; binder_relevance : relevance }.

Definition aname := binder_annot name.

Inductive cast_kind : Set :=
| VmCast
| NativeCast
| Cast.

Record case_info := mk_case_info {
  ci_ind : inductive;
  ci_npar : nat;

  ci_relevance : relevance }.

Inductive recursivity_kind :=
  | Finite
  | CoFinite
  | BiFinite .

Record def term := mkdef {
  dname : aname;
  dtype : term;
  dbody : term;
  rarg  : nat   }.

Arguments dname {term} _.
Arguments dtype {term} _.
Arguments dbody {term} _.
Arguments rarg {term} _.

Definition map_def {A B} (tyf bodyf : A -> B) (d : def A) :=
  {| dname := d.(dname); dtype := tyf d.(dtype); dbody := bodyf d.(dbody); rarg := d.(rarg) |}.

Definition mfixpoint term := list (def term).

Section Contexts.
  Context {term : Type}.

  Record context_decl := mkdecl {
    decl_name : aname ;
    decl_body : option term ;
    decl_type : term
  }.
End Contexts.

Arguments context_decl : clear implicits.

Module Export Universes.

Module Export Level.
  Inductive t_ : Set :=
  | lzero
  | level (_ : string)
  | lvar (_ : nat) .

  Definition t := t_.

  Inductive lt_ : t -> t -> Prop :=
  | ltSetLevel s : lt_ lzero (level s)
  | ltSetlvar n : lt_ lzero (lvar n)
  | ltLevelLevel s s' : StringOT.lt s s' -> lt_ (level s) (level s')
  | ltLevellvar s n : lt_ (level s) (lvar n)
  | ltlvarlvar n n' : Nat.lt n n' -> lt_ (lvar n) (lvar n').

  Definition lt := lt_.

End Level.

Module Export LevelExpr.
  Definition t := (Level.t * nat)%type.
Definition eq : t -> t -> Prop.
exact (eq).
Defined.
Definition eq_equiv : Equivalence eq.
Admitted.

  Inductive lt_ : t -> t -> Prop :=
  | ltLevelExpr1 l n n' : (n < n')%nat -> lt_ (l, n) (l, n')
  | ltLevelExpr2 l l' b b' : Level.lt l l' -> lt_ (l, b) (l', b').

  Definition lt := lt_.

  Global Instance lt_strorder : StrictOrder lt.
Admitted.

  Definition lt_compat : Proper (Logic.eq ==> Logic.eq ==> iff) lt.
Admitted.
Definition compare (x y : t) : comparison.
Admitted.

  Definition compare_spec :
    forall x y : t, CompareSpec (x = y) (lt x y) (lt y x) (compare x y).
Admitted.
Definition eq_dec : forall (l1 l2 : t), {l1 = l2} + {l1 <> l2}.
Admitted.

End LevelExpr.

Module LevelExprSet := MSetList.MakeWithLeibniz LevelExpr.

Record nonEmptyLevelExprSet
  := { t_set : LevelExprSet.t ;
       t_ne  : LevelExprSet.is_empty t_set = false }.

Module Export Universe.

  Definition t := nonEmptyLevelExprSet.
End Universe.

Module Export ConstraintType.
  Inductive t_ : Set := Le (z : Z) | Eq.

  Definition t := t_.

  Inductive lt_ : t -> t -> Prop :=
  | LeLe n m : (n < m)%Z -> lt_ (Le n) (Le m)
  | LeEq n : lt_ (Le n) Eq.
  Definition lt := lt_.
End ConstraintType.

Module Export UnivConstraint.
Definition t : Set.
exact (Level.t * ConstraintType.t * Level.t).
Defined.
Definition eq : t -> t -> Prop.
Admitted.
Definition eq_equiv : Equivalence eq.
Admitted.

  Inductive lt_ : t -> t -> Prop :=
  | lt_Level2 l1 t l2 l2' : Level.lt l2 l2' -> lt_ (l1, t, l2) (l1, t, l2')
  | lt_Cstr l1 t t' l2 l2' : ConstraintType.lt t t' -> lt_ (l1, t, l2) (l1, t', l2')
  | lt_Level1 l1 l1' t t' l2 l2' : Level.lt l1 l1' -> lt_ (l1, t, l2) (l1', t', l2').
  Definition lt := lt_.

  Lemma lt_strorder : StrictOrder lt.
Admitted.

  Lemma lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.
Definition compare : t -> t -> comparison.
Admitted.

  Lemma compare_spec x y
    : CompareSpec (eq x y) (lt x y) (lt y x) (compare x y).
Admitted.

  Lemma eq_dec x y : {eq x y} + {~ eq x y}.
Admitted.
End UnivConstraint.

Module ConstraintSet := MSetAVL.Make UnivConstraint.

Module Export Instance.
Definition t : Set.
Admitted.
End Instance.

Module Export AUContext.
  Definition t := list name × ConstraintSet.t.
End AUContext.

Module Export Variance.

  Inductive t :=
  | Irrelevant : t
  | Covariant : t
  | Invariant : t.

Inductive universes_decl : Type :=
| Monomorphic_ctx
| Polymorphic_ctx (cst : AUContext.t).

Module Export Sort.
  Inductive t_ {univ} :=
    sProp | sSProp | sType (_ : univ).
  Arguments t_ : clear implicits.

  Definition t := t_ Universe.t.
Abbreviation sort := Sort.t.

  Inductive allowed_eliminations : Set :=
  | IntoSProp
  | IntoPropSProp
  | IntoSetPropSProp
  | IntoAny.

Class UnivSubst A := subst_instance : Instance.t -> A -> A.
#[global] Instance subst_instance_level : UnivSubst Level.t.
Admitted.
#[global] Instance subst_instance_sort : UnivSubst Sort.t.
Admitted.
#[global] Instance subst_instance_instance : UnivSubst Instance.t.
Admitted.

Module Type Term.

  Parameter Inline term : Type.
  Parameter Inline subst_instance_constr : UnivSubst term.
End Term.

Module Type TermDecide (Import T : Term).
End TermDecide.

Module TermDecideReflectInstances (Import T : Term) (Import TDec : TermDecide T).
End TermDecideReflectInstances.

Module Environment (T : Term).

  Import T.
  #[global] Existing Instance subst_instance_constr.

  Abbreviation context_decl := (context_decl term).

  Definition context := list context_decl.

  Record constructor_body := {

    cstr_name : ident;

    cstr_args : context;

    cstr_indices : list term;

    cstr_type : term;

    cstr_arity : nat;
  }.

  Record projection_body := {

    proj_name : ident;

    proj_relevance : relevance;

    proj_type : term;
  }.

  Record one_inductive_body := {

    ind_name : ident;

    ind_indices : context;

    ind_sort : Sort.t;

    ind_type : term;

    ind_kelim : allowed_eliminations;

    ind_ctors : list constructor_body;

    ind_projs : list projection_body;

    ind_relevance : relevance }.

  Record mutual_inductive_body := {

    ind_finite : recursivity_kind;

    ind_npars : nat;

    ind_params : context;

    ind_bodies : list one_inductive_body ;

    ind_universes : universes_decl;

    ind_variance : option (list Universes.Variance.t) }.
Fixpoint reln (l : list term) (p : nat) (Γ0 : list context_decl) {struct Γ0} : list term.
Admitted.

  Definition to_extended_list_k Γ k := reln [] k Γ.

End Environment.

Record predicate {term} := mk_predicate {
  puinst : Instance.t;
  pparams : list term;
  pcontext : list aname;
  preturn : term;  }.

Arguments predicate : clear implicits.

Section map_predicate.
  Context {term term' : Type}.
  Context (uf : Instance.t -> Instance.t).
  Context (paramf preturnf : term -> term').

  Definition map_predicate (p : predicate term) :=
    {| pparams := map paramf p.(pparams);
        puinst := uf p.(puinst);
        pcontext := p.(pcontext);
        preturn := preturnf p.(preturn) |}.

End map_predicate.

Section Branch.
  Context {term : Type}.

  Record branch := mk_branch {
    bcontext : list aname;
    bbody : term;  }.
End Branch.
Arguments branch : clear implicits.

Section map_branch.
  Context {term term' : Type}.
  Context (bbodyf : term -> term').

    Definition map_branch (b : branch term) :=
    {| bcontext := b.(bcontext);
      bbody := bbodyf b.(bbody) |}.
End map_branch.

Abbreviation map_branches_k f k brs :=
  (List.map (fun b => map_branch (f (#|b.(bcontext)| + k)) b) brs).

Inductive term : Type :=
| tRel (n : nat)
| tVar (id : ident)
| tEvar (ev : nat) (args : list term)
| tSort (s : sort)
| tCast (t : term) (kind : cast_kind) (v : term)
| tProd (na : aname) (ty : term) (body : term)
| tLambda (na : aname) (ty : term) (body : term)
| tLetIn (na : aname) (def : term) (def_ty : term) (body : term)
| tApp (f : term) (args : list term)
| tConst (c : kername) (u : Instance.t)
| tInd (ind : inductive) (u : Instance.t)
| tConstruct (ind : inductive) (idx : nat) (u : Instance.t)
| tCase (ci : case_info) (type_info:predicate term)
        (discr:term) (branches : list (branch term))
| tProj (proj : projection) (t : term)
| tFix (mfix : mfixpoint term) (idx : nat)
| tCoFix (mfix : mfixpoint term) (idx : nat)
| tInt (i : PrimInt63.int)
| tFloat (f : PrimFloat.float)
| tString (s : PrimString.string)
| tArray (u : Level.t) (arr : list term) (default : term) (type : term).

Definition mkApps t us :=
  match us with
  | nil => t
  | _ => match t with
        | tApp f args => tApp f (args ++ us)
        | _ => tApp t us
        end
  end.

Fixpoint lift n k t : term :=
  match t with
  | tRel i => tRel (if Nat.leb k i then n + i else i)
  | tEvar ev args => tEvar ev (List.map (lift n k) args)
  | tLambda na T M => tLambda na (lift n k T) (lift n (S k) M)
  | tApp u v => tApp (lift n k u) (List.map (lift n k) v)
  | tProd na A B => tProd na (lift n k A) (lift n (S k) B)
  | tCast c kind t => tCast (lift n k c) kind (lift n k t)
  | tLetIn na b t b' => tLetIn na (lift n k b) (lift n k t) (lift n (S k) b')
  | tCase ind p c brs =>
    let k' := List.length (pcontext p) + k in
    let p' := map_predicate id (lift n k) (lift n k') p in
    let brs' := map_branches_k (lift n) k brs in
    tCase ind p' (lift n k c) brs'
  | tProj p c => tProj p (lift n k c)
  | tFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (lift n k) (lift n k')) mfix in
    tFix mfix' idx
  | tCoFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (lift n k) (lift n k')) mfix in
    tCoFix mfix' idx
  | tArray u arr def ty =>
    tArray u (List.map (lift n k) arr) (lift n k def) (lift n k ty)
  | x => x
  end.

Abbreviation lift0 n := (lift n 0).

Fixpoint subst s k u :=
  match u with
  | tRel n =>
    if Nat.leb k n then
      match nth_error s (n - k) with
      | Some b => lift0 k b
      | None => tRel (n - List.length s)
      end
    else tRel n
  | tEvar ev args => tEvar ev (List.map (subst s k) args)
  | tLambda na T M => tLambda na (subst s k T) (subst s (S k) M)
  | tApp u v => mkApps (subst s k u) (List.map (subst s k) v)
  | tProd na A B => tProd na (subst s k A) (subst s (S k) B)
  | tCast c kind ty => tCast (subst s k c) kind (subst s k ty)
  | tLetIn na b ty b' => tLetIn na (subst s k b) (subst s k ty) (subst s (S k) b')
  | tCase ind p c brs =>
    let k' := List.length (pcontext p) + k in
    let p' := map_predicate id (subst s k) (subst s k') p in
    let brs' := map_branches_k (subst s) k brs in
    tCase ind p' (subst s k c) brs'
  | tProj p c => tProj p (subst s k c)
  | tFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (subst s k) (subst s k')) mfix in
    tFix mfix' idx
  | tCoFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (subst s k) (subst s k')) mfix in
    tCoFix mfix' idx
  | tArray u arr def ty =>
    tArray u (List.map (subst s k) arr) (subst s k def) (subst s k ty)
  | x => x
  end.
#[global] Instance subst_instance_constr : UnivSubst term.
exact (fix subst_instance_constr u c {struct c} : term :=
  match c with
  | tRel _ | tVar _ => c
  | tInt _ | tFloat _ | tString _ => c
  | tArray u' arr def ty => tArray (subst_instance_level u u') (List.map (subst_instance_constr u) arr)
    (subst_instance_constr u def) (subst_instance_constr u ty)
  | tEvar ev args => tEvar ev (List.map (subst_instance_constr u) args)
  | tSort s => tSort (subst_instance_sort u s)
  | tConst c u' => tConst c (subst_instance_instance u u')
  | tInd i u' => tInd i (subst_instance_instance u u')
  | tConstruct ind k u' => tConstruct ind k (subst_instance_instance u u')
  | tLambda na T M => tLambda na (subst_instance_constr u T) (subst_instance_constr u M)
  | tApp f v => tApp (subst_instance_constr u f) (List.map (subst_instance_constr u) v)
  | tProd na A B => tProd na (subst_instance_constr u A) (subst_instance_constr u B)
  | tCast c kind ty => tCast (subst_instance_constr u c) kind (subst_instance_constr u ty)
  | tLetIn na b ty b' => tLetIn na (subst_instance_constr u b) (subst_instance_constr u ty)
                                (subst_instance_constr u b')
  | tCase ind p c brs =>
    let p' := map_predicate (subst_instance_instance u) (subst_instance_constr u) (subst_instance_constr u) p in
    let brs' := List.map (map_branch (subst_instance_constr u)) brs in
    tCase ind p' (subst_instance_constr u c) brs'
  | tProj p c => tProj p (subst_instance_constr u c)
  | tFix mfix idx =>
    let mfix' := List.map (map_def (subst_instance_constr u) (subst_instance_constr u)) mfix in
    tFix mfix' idx
  | tCoFix mfix idx =>
    let mfix' := List.map (map_def (subst_instance_constr u) (subst_instance_constr u)) mfix in
    tCoFix mfix' idx
  end).
Defined.

Module TemplateTerm <: Term.

Definition term := term.
Definition subst_instance_constr := subst_instance.

End TemplateTerm.

Module Env := Environment TemplateTerm.
Export Env.

Definition inds ind u (l : list one_inductive_body) :=
  let fix aux n :=
      match n with
      | 0 => []
      | S n => tInd (mkInd ind n) u :: aux n
      end
  in aux (List.length l).

Lemma subst_instance_mkApps u f a :
  subst_instance u (mkApps f a) =
  mkApps (subst_instance u f) (map (subst_instance u) a).
Admitted.

Lemma subst_rel_eq :
  forall (u : list term) n i t p,
    List.nth_error u i = Some t -> p = n + i ->
    subst u n (tRel p) = lift0 n t.
Admitted.

Lemma subst_mkApps u k t l :
  subst u k (mkApps t l) = mkApps (subst u k t) (map (subst u k) l).
Admitted.

 Lemma subst_cstr_concl_head ind u mdecl (arity : context) args :
 let head := tRel (#|ind_bodies mdecl| - S (inductive_ind ind) + #|ind_params mdecl| + #|arity|) in
 let s := (inds (inductive_mind ind) u (ind_bodies mdecl)) in
 inductive_ind ind < #|ind_bodies mdecl| ->
 subst s (#|arity| + #|ind_params mdecl|)
       (subst_instance u (mkApps head (to_extended_list_k (ind_params mdecl) #|arity| ++ args)))
 = mkApps (tInd ind u) (to_extended_list_k (ind_params mdecl) #|arity| ++
                       map (subst s (#|arity| + #|ind_params mdecl|)) (map (subst_instance u) args)).
Proof.
 intros.
 rewrite subst_instance_mkApps, subst_mkApps.
 f_equal.
 -
 subst head.
unfold subst_instance.
cbn[subst_instance_constr].
   rewrite (subst_rel_eq _ _ (#|ind_bodies mdecl| - S (inductive_ind ind)) (tInd ind u)); cbn; try lia; auto.
