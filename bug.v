
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_build_ci/bedrock2-PARENT-rupicola-PARENT-fiat_crypto/rupicola/bedrock2/bedrock2/src/bedrock2" "bedrock2" "-Q" "/github/workspace/builds/coq/coq-failing/_build_ci/bedrock2-PARENT-rupicola-PARENT-fiat_crypto/rupicola/bedrock2/bedrock2/src/bedrock2Examples" "bedrock2Examples" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/coqutil" "coqutil" "-top" "bedrock2.MetricWeakestPreconditionProperties" "-async-proofs-tac-j" "1") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 423 lines to 45 lines, then from 59 lines to 671 lines, then from 678 lines to 122 lines, then from 136 lines to 786 lines, then from 793 lines to 185 lines, then from 199 lines to 568 lines, then from 575 lines to 209 lines, then from 223 lines to 649 lines, then from 656 lines to 232 lines, then from 246 lines to 691 lines, then from 698 lines to 261 lines, then from 275 lines to 662 lines, then from 669 lines to 296 lines, then from 310 lines to 684 lines, then from 691 lines to 366 lines, then from 380 lines to 795 lines, then from 802 lines to 375 lines, then from 389 lines to 2941 lines, then from 2947 lines to 394 lines, then from 408 lines to 765 lines, then from 772 lines to 473 lines, then from 487 lines to 806 lines, then from 813 lines to 481 lines, then from 495 lines to 685 lines, then from 692 lines to 490 lines, then from 504 lines to 863 lines, then from 870 lines to 517 lines, then from 531 lines to 768 lines, then from 775 lines to 520 lines, then from 534 lines to 735 lines, then from 742 lines to 623 lines, then from 637 lines to 2662 lines, then from 2665 lines to 915 lines, then from 929 lines to 1094 lines, then from 1101 lines to 955 lines, then from 969 lines to 1620 lines, then from 1627 lines to 967 lines, then from 981 lines to 1361 lines, then from 1368 lines to 970 lines, then from 984 lines to 1381 lines, then from 1383 lines to 1116 lines, then from 1130 lines to 2401 lines, then from 2408 lines to 1343 lines, then from 1357 lines to 1789 lines, then from 1796 lines to 1527 lines, then from 1541 lines to 3827 lines, then from 3832 lines to 1594 lines, then from 1608 lines to 5741 lines, then from 5721 lines to 1643 lines, then from 1657 lines to 1771 lines, then from 1778 lines to 1679 lines, then from 1693 lines to 1797 lines, then from 1804 lines to 1719 lines, then from 1733 lines to 2288 lines, then from 2295 lines to 1736 lines, then from 1750 lines to 3841 lines, then from 3848 lines to 1773 lines, then from 1787 lines to 1877 lines, then from 1884 lines to 1800 lines, then from 1814 lines to 2020 lines, then from 2027 lines to 1831 lines, then from 1845 lines to 2079 lines, then from 2086 lines to 1857 lines, then from 1871 lines to 2222 lines, then from 2229 lines to 1882 lines, then from 1896 lines to 2628 lines, then from 2635 lines to 1916 lines, then from 1930 lines to 2680 lines, then from 2686 lines to 1942 lines, then from 1956 lines to 2096 lines, then from 2103 lines to 1963 lines, then from 1977 lines to 2106 lines, then from 2113 lines to 1984 lines, then from 1998 lines to 2198 lines, then from 2205 lines to 2006 lines, then from 2020 lines to 2343 lines, then from 2350 lines to 2030 lines, then from 2044 lines to 2487 lines, then from 2493 lines to 2075 lines, then from 2089 lines to 2207 lines, then from 2214 lines to 2097 lines, then from 2111 lines to 2355 lines, then from 2362 lines to 2120 lines, then from 2134 lines to 2576 lines, then from 2583 lines to 2144 lines, then from 2158 lines to 2441 lines, then from 2448 lines to 2168 lines, then from 2182 lines to 2342 lines, then from 2349 lines to 2192 lines, then from 2206 lines to 2552 lines, then from 2559 lines to 2291 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 0.943 sec
   Expected coqc peak memory usage on this file: 1486712.0 kb *)









Require Corelib.Numbers.BinNums.
Require Corelib.BinNums.PosDef.
Require Corelib.Lists.ListDef.
Require Corelib.BinNums.IntDef.
Require Corelib.Init.Ltac.
Require Corelib.Setoids.Setoid.
Require Corelib.Classes.RelationClasses.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Classes.Morphisms.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Program.Basics.
Require Stdlib.Classes.DecidableClass.
Require Stdlib.Logic.HLevelsBase.
Require Stdlib.Logic.Decidable.
Require coqutil.dlet.
Require coqutil.Datatypes.Prod.
Require Stdlib.BinNums.PosDef.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Lists.ListDef.
Require Stdlib.Numbers.BinNums.
Require Stdlib.Program.Basics.
Require Stdlib.Relations.Relation_Definitions.
Require Stdlib.Setoids.Setoid.
Require Stdlib.Bool.Bool.
Require Stdlib.Relations.Relation_Operators.
Require Stdlib.Relations.Operators_Properties.
Require Stdlib.PArith.BinPosDef.
Require Stdlib.Relations.Relations.
Require Stdlib.Numbers.NumPrelude.
Require Stdlib.Structures.Equalities.
Require Stdlib.Structures.Orders.
Require Stdlib.Structures.OrdersTac.
Require Stdlib.Structures.OrdersFacts.
Require Stdlib.Structures.GenericMinMax.
Require Stdlib.Numbers.NatInt.NZAxioms.
Require Stdlib.Numbers.NatInt.NZBase.
Require Stdlib.Numbers.NatInt.NZAdd.
Require Stdlib.Numbers.NatInt.NZMul.
Require Stdlib.Numbers.NatInt.NZOrder.
Require Stdlib.Numbers.NatInt.NZAddOrder.
Require Stdlib.Numbers.NatInt.NZMulOrder.
Require Stdlib.Numbers.NatInt.NZDiv.
Require Stdlib.Numbers.NatInt.NZGcd.
Require Stdlib.Numbers.NatInt.NZParity.
Require Stdlib.Numbers.NatInt.NZPow.
Require Stdlib.Numbers.NatInt.NZSqrt.
Require Stdlib.Numbers.NatInt.NZLog.
Require Stdlib.Numbers.NatInt.NZBits.
Require Stdlib.Numbers.Integer.Abstract.ZAxioms.
Require Stdlib.Numbers.Natural.Abstract.NAxioms.
Require Stdlib.Numbers.Integer.Abstract.ZBase.
Require Stdlib.Numbers.Natural.Abstract.NBase.
Require Stdlib.Numbers.Integer.Abstract.ZAdd.
Require Stdlib.Numbers.Natural.Abstract.NAdd.
Require Stdlib.Numbers.Integer.Abstract.ZMul.
Require Stdlib.Numbers.Integer.Abstract.ZLt.
Require Stdlib.Numbers.Natural.Abstract.NAddOrder.











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
Import Stdlib.Numbers.Integer.Abstract.ZMulOrder.

Module Type ZParityProp (Import Z : ZAxiomsSig')
                        (Import ZP : ZMulOrderProp Z).

End ZParityProp.
Module Export Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZParity.
Module Export Stdlib.
Module Export Numbers.
Module Export Integer.
Module Export Abstract.
Module Export ZParity.
End ZParity.

End Abstract.

End Integer.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZParity.

Import Stdlib.Numbers.Integer.Abstract.ZMulOrder.

Module GenericAbs (Import Z : ZAxiomsMiniSig')
                  (Import ZP : ZMulOrderProp Z) <: HasAbs Z.
 Definition abs n := max n (-n).
 Lemma abs_eq : forall n, 0<=n -> abs n == n.
Admitted.
 Lemma abs_neq : forall n, n<=0 -> abs n == -n.
Admitted.
End GenericAbs.
Module Type ZDecAxiomsSig' := ZAxiomsMiniSig' <+ HasCompare.

Module Type GenericSgn (Import Z : ZDecAxiomsSig')
                       (Import ZP : ZMulOrderProp Z) <: HasSgn Z.
 Definition sgn n :=
  match compare 0 n with Eq => 0 | Lt => 1 | Gt => -1 end.
 Lemma sgn_null n : n==0 -> sgn n == 0.
Admitted.
 Lemma sgn_pos n : 0<n -> sgn n == 1.
Admitted.
 Lemma sgn_neg n : n<0 -> sgn n == -1.
Admitted.
End GenericSgn.

Module Type ZSgnAbsProp (Import Z : ZAxiomsSig')
                        (Import ZP : ZMulOrderProp Z).

End ZSgnAbsProp.
Module Export Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZSgnAbs.
Module Export Stdlib.
Module Export Numbers.
Module Export Integer.
Module Export Abstract.
Module Export ZSgnAbs.
End ZSgnAbs.

End Abstract.

End Integer.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZSgnAbs.
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
Import Stdlib.Numbers.Integer.Abstract.ZMulOrder.
Import Stdlib.Numbers.Integer.Abstract.ZSgnAbs.

Module Type ZDivProp
 (Import A : ZAxiomsSig')
 (Import B : ZMulOrderProp A)
 (Import C : ZSgnAbsProp A B).

End ZDivProp.
Module Export Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZDivFloor.
Module Export Stdlib.
Module Export Numbers.
Module Export Integer.
Module Export Abstract.
Module Export ZDivFloor.
End ZDivFloor.

End Abstract.

End Integer.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZDivFloor.
Import Stdlib.Numbers.Integer.Abstract.ZMulOrder.
Import Stdlib.Numbers.Integer.Abstract.ZSgnAbs.
Import Stdlib.Numbers.NatInt.NZDiv.

Module Type ZQuotProp
 (Import A : ZAxiomsSig')
 (Import B : ZMulOrderProp A)
 (Import C : ZSgnAbsProp A B).
 Module Quot2Div <: NZDiv A.
  Definition div := quot.
  Definition modulo := A.rem.
  Definition div_wd := quot_wd.
  Definition mod_wd := rem_wd.
  Definition div_mod := quot_rem.
  Definition mod_bound_pos := rem_bound_pos.
 End Quot2Div.

End ZQuotProp.
Module Export Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZDivTrunc.
Module Export Stdlib.
Module Export Numbers.
Module Export Integer.
Module Export Abstract.
Module Export ZDivTrunc.
End ZDivTrunc.

End Abstract.

End Integer.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZDivTrunc.
Import Stdlib.Numbers.Integer.Abstract.ZMulOrder.
Import Stdlib.Numbers.Integer.Abstract.ZSgnAbs.

Module Type ZGcdProp
 (Import A : ZAxiomsSig')
 (Import B : ZMulOrderProp A)
 (Import C : ZSgnAbsProp A B).

End ZGcdProp.
Module Export Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZGcd.
Module Export Stdlib.
Module Export Numbers.
Module Export Integer.
Module Export Abstract.
Module Export ZGcd.
End ZGcd.

End Abstract.

End Integer.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZGcd.
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
Import Stdlib.Numbers.Integer.Abstract.ZMulOrder.
Import Stdlib.Numbers.Integer.Abstract.ZParity.
Import Stdlib.Numbers.Integer.Abstract.ZSgnAbs.
Import Stdlib.Numbers.NatInt.NZPow.

Module Type ZPowProp
 (Import A : ZAxiomsSig')
 (Import B : ZMulOrderProp A)
 (Import C : ZParityProp A B)
 (Import D : ZSgnAbsProp A B).

 Include NZPowProp A A B.

End ZPowProp.
Module Export Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZPow.
Module Export Stdlib.
Module Export Numbers.
Module Export Integer.
Module Export Abstract.
Module Export ZPow.
End ZPow.

End Abstract.

End Integer.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZPow.
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
Import Stdlib.Numbers.Integer.Abstract.ZMulOrder.
Import Stdlib.Numbers.Integer.Abstract.ZPow.
Import Stdlib.Numbers.Integer.Abstract.ZDivFloor.
Import Stdlib.Numbers.Integer.Abstract.ZSgnAbs.
Import Stdlib.Numbers.Integer.Abstract.ZParity.
Import Stdlib.Numbers.NatInt.NZLog.

Module Type ZBitsProp
 (Import A : ZAxiomsSig')
 (Import B : ZMulOrderProp A)
 (Import C : ZParityProp A B)
 (Import D : ZSgnAbsProp A B)
 (Import E : ZPowProp A B C D)
 (Import F : ZDivProp A B D)
 (Import G : NZLog2Prop A A A B E).

Definition lnot a := P (-a).

End ZBitsProp.
Module Export Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZBits.
Module Export Stdlib.
Module Export Numbers.
Module Export Integer.
Module Export Abstract.
Module Export ZBits.
End ZBits.

End Abstract.

End Integer.

End Numbers.

End Stdlib.

End Stdlib_DOT_Numbers_DOT_Integer_DOT_Abstract_DOT_ZBits.
Import Stdlib.Numbers.Integer.Abstract.ZMulOrder.
Import Stdlib.Numbers.Integer.Abstract.ZSgnAbs.
Import Stdlib.Numbers.Integer.Abstract.ZGcd.
Import Stdlib.Numbers.Integer.Abstract.ZDivTrunc.
Import Stdlib.Numbers.Integer.Abstract.ZDivFloor.

Module Type ZLcmProp
 (Import A : ZAxiomsSig')
 (Import B : ZMulOrderProp A)
 (Import C : ZSgnAbsProp A B)
 (Import D : ZDivProp A B C)
 (Import E : ZQuotProp A B C)
 (Import F : ZGcdProp A B C).

End ZLcmProp.
Module Export ZLcm.
End ZLcm.
Export Stdlib.Numbers.Integer.Abstract.ZAxioms.
Export Stdlib.Numbers.Integer.Abstract.ZMaxMin.
Export Stdlib.Numbers.Integer.Abstract.ZSgnAbs.
Export Stdlib.Numbers.Integer.Abstract.ZParity.
Export Stdlib.Numbers.Integer.Abstract.ZPow.
Export Stdlib.Numbers.Integer.Abstract.ZDivTrunc.
Export Stdlib.Numbers.Integer.Abstract.ZDivFloor.
Export Stdlib.Numbers.Integer.Abstract.ZGcd.
Export Stdlib.Numbers.NatInt.NZLog.
Export Stdlib.Numbers.NatInt.NZSqrt.
Export Stdlib.Numbers.Integer.Abstract.ZBits.

Module Type ZBasicProp (Z:ZAxiomsMiniSig) := ZMaxMinProp Z.

Module Type ZExtraProp (Z:ZAxiomsSig)(P:ZBasicProp Z) :=
 ZSgnAbsProp Z P <+ ZParityProp Z P <+ ZPowProp Z P
 <+ NZSqrtProp Z Z P <+ NZSqrtUpProp Z Z P
 <+ NZLog2Prop Z Z Z P <+ NZLog2UpProp Z Z Z P
 <+ ZDivProp Z P <+ ZQuotProp Z P <+ ZGcdProp Z P <+ ZLcmProp Z P
 <+ ZBitsProp Z P.
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

Module Stdlib_DOT_Lists_DOT_List_WRAPPED.
Module Export List.
Export Stdlib.Lists.ListDef.

Set Implicit Arguments.

Module Export ListNotations.
End ListNotations.

Section Elts.

  Variable A : Type.
Fixpoint nth_error (l:list A) (n:nat) {struct n} : option A.
Admitted.

End Elts.
Notation map := map.

  Section One_predicate.

  End One_predicate.

Section Forall2.
End Forall2.

Section ForallPairs.
End ForallPairs.

Section Repeat.

End Repeat.

End List.

End Stdlib_DOT_Lists_DOT_List_WRAPPED.
Module Export Stdlib_DOT_Lists_DOT_List.
Module Export Stdlib.
Module Export Lists.
Module List.
Include Stdlib_DOT_Lists_DOT_List_WRAPPED.List.
End List.

End Lists.

End Stdlib.

End Stdlib_DOT_Lists_DOT_List.
Import Stdlib.Structures.OrdersFacts.
Export Stdlib.PArith.BinPosDef.

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

Infix "+" := Pos.add : positive_scope.
Infix "*" := Pos.mul : positive_scope.
Infix "^" := Pos.pow : positive_scope.
Module Export Stdlib.
Module Export PArith.
Module Export BinPos.
End BinPos.

Module Export Stdlib_DOT_NArith_DOT_BinNatDef_WRAPPED.
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

Definition of_uint (d:Decimal.uint) := Pos.of_uint d.

Definition of_hex_uint (d:Hexadecimal.uint) := Pos.of_hex_uint d.

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

End Stdlib_DOT_NArith_DOT_BinNatDef_WRAPPED.
Module Export BinNatDef.
End BinNatDef.
Import Stdlib.Structures.OrdersFacts.
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
Module Export BinIntDef.
Import Stdlib.PArith.BinPos.

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
Module Export Stdlib.
Module Export ZArith.
Module Export BinIntDef.
End BinIntDef.

Inductive ascii : Set := Ascii (_ _ _ _ _ _ _ _ : bool).

Module Export AsciiSyntax.
End AsciiSyntax.

Module Export Stdlib_DOT_Strings_DOT_String_WRAPPED.
Module Export String.

Inductive string : Set :=
  | EmptyString : string
  | String : ascii -> string -> string.

End String.
Include Stdlib_DOT_Strings_DOT_String_WRAPPED.String.
Module Export Syntax.
Import Coq.Numbers.BinNums.

Module Import op1.
  Inductive op1 : Set := not | opp.
End op1.
Notation op1:= op1.op1.

Module Import bopname.
  Inductive bopname: Set := add | sub | mul | mulhuu | divu | remu | and | or | xor | sru | slu | srs | lts | ltu | eq.
End bopname.
Notation bopname := bopname.bopname.

Module Export access_size.
  Variant access_size: Set := one | two | four | word.
End access_size.

Module expr.
  Inductive expr: Set :=
  | literal (v: Z)
  | var (x: String.string)
  | load (_ : access_size) (addr:expr)
  | inlinetable (_ : access_size) (table: list Byte.byte) (index: expr)
  | op1 (op: op1) (e : expr)
  | op (op: bopname) (e1 e2: expr)
  | ite (c e1 e2: expr).

End expr.
Notation expr := expr.expr.

Module Export cmd.
End cmd.

Module Export Coercions.
End Coercions.

End Syntax.
Module Export bedrock2.
Module Export Syntax.
End Syntax.
Export Stdlib.Numbers.BinNums.
Import Stdlib.Bool.Bool.
Import Stdlib.Structures.OrdersFacts.
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

Include ZExtraProp.

End Z.

Number Notation Z Z.of_num_int Z.to_num_int : Z_scope.

Infix "+" := Z.add : Z_scope.
Notation "- x" := (Z.opp x) : Z_scope.
Infix "-" := Z.sub : Z_scope.
Infix "^" := Z.pow : Z_scope.
Infix "/" := Z.div : Z_scope.
Infix "mod" := Z.modulo (at level 40, no associativity) : Z_scope.
Infix "<" := Z.lt : Z_scope.

Section LocalNotations.

End LocalNotations.
Module Export Stdlib.
Module Export ZArith.
Module Export BinInt.
End BinInt.

Module Export coqutil_DOT_Word_DOT_Interface_WRAPPED.
Module Export Interface.
Local Open Scope Z_scope.

Module word.
  Class word {width : Z} := {
    rep : Type;

    unsigned : rep -> Z;
    signed : rep -> Z;
    of_Z : Z -> rep;

    add : rep -> rep -> rep;
    sub : rep -> rep -> rep;
    opp : rep -> rep;

    or : rep -> rep -> rep;
    and : rep -> rep -> rep;
    xor : rep -> rep -> rep;
    not : rep -> rep;
    ndn : rep -> rep -> rep;

    mul : rep -> rep -> rep;
    mulhss : rep -> rep -> rep;
    mulhsu : rep -> rep -> rep;
    mulhuu : rep -> rep -> rep;

    divu : rep -> rep -> rep;
    divs : rep -> rep -> rep;
    modu : rep -> rep -> rep;
    mods : rep -> rep -> rep;

    slu : rep -> rep -> rep;
    sru : rep -> rep -> rep;
    srs : rep -> rep -> rep;

    eqb : rep -> rep -> bool;
    ltu : rep -> rep -> bool;
    lts : rep -> rep -> bool;

    gtu x y := ltu y x;
    gts x y := lts y x;

    swrap z := (z + 2^(width-1)) mod 2^width - 2^(width-1);

    sextend: Z -> rep -> rep;
  }.
  Arguments word : clear implicits.

  Class ok {width} {word : word width}: Prop := {
    wrap z := z mod 2^width;

    width_pos: 0 < width;

    unsigned_of_Z : forall z, unsigned (of_Z z) = wrap z;
    signed_of_Z : forall z, signed (of_Z z) = swrap z;
    of_Z_unsigned : forall x, of_Z (unsigned x) = x;

    unsigned_add : forall x y, unsigned (add x y) = wrap (Z.add (unsigned x) (unsigned y));
    unsigned_sub : forall x y, unsigned (sub x y) = wrap (Z.sub (unsigned x) (unsigned y));
    unsigned_opp : forall x, unsigned (opp x) = wrap (Z.opp (unsigned x));

    unsigned_or : forall x y, unsigned (or x y) = wrap (Z.lor (unsigned x) (unsigned y));
    unsigned_and : forall x y, unsigned (and x y) = wrap (Z.land (unsigned x) (unsigned y));
    unsigned_xor : forall x y, unsigned (xor x y) = wrap (Z.lxor (unsigned x) (unsigned y));
    unsigned_not : forall x, unsigned (not x) = wrap (Z.lnot (unsigned x));
    unsigned_ndn : forall x y, unsigned (ndn x y) = wrap (Z.ldiff (unsigned x) (unsigned y));

    unsigned_mul : forall x y, unsigned (mul x y) = wrap (Z.mul (unsigned x) (unsigned y));
    signed_mulhss : forall x y, signed (mulhss x y) = swrap (Z.mul (signed x) (signed y) / 2^width);
    signed_mulhsu : forall x y, signed (mulhsu x y) = swrap (Z.mul (signed x) (unsigned y) / 2^width);
    unsigned_mulhuu : forall x y, unsigned (mulhuu x y) = wrap (Z.mul (unsigned x) (unsigned y) / 2^width);

    unsigned_divu : forall x y, unsigned y <> 0 -> unsigned (divu x y) = wrap (Z.div (unsigned x) (unsigned y));
    signed_divs : forall x y, signed y <> 0 -> signed x <> -2^(width-1) \/ signed y <> -1 -> signed (divs x y) = swrap (Z.quot (signed x) (signed y));
    unsigned_modu : forall x y, unsigned y <> 0 -> unsigned (modu x y) = wrap (Z.modulo (unsigned x) (unsigned y));
    signed_mods : forall x y, signed y <> 0 -> signed (mods x y) = swrap (Z.rem (signed x) (signed y));

    unsigned_slu : forall x y, Z.lt (unsigned y) width -> unsigned (slu x y) = wrap (Z.shiftl (unsigned x) (unsigned y));
    unsigned_sru : forall x y, Z.lt (unsigned y) width -> unsigned (sru x y) = wrap (Z.shiftr (unsigned x) (unsigned y));
    signed_srs : forall x y, Z.lt (unsigned y) width -> signed (srs x y) = swrap (Z.shiftr (signed x) (unsigned y));

    unsigned_eqb : forall x y, eqb x y = Z.eqb (unsigned x) (unsigned y);
    unsigned_ltu : forall x y, ltu x y = Z.ltb (unsigned x) (unsigned y);
    signed_lts : forall x y, lts x y = Z.ltb (signed x) (signed y);
  }.
  Arguments ok {_} _.
End word.
Notation word := word.word.
Global Coercion word.rep : word >-> Sortclass.

End Interface.
Module Export coqutil.
Module Export Word.
Module Export Interface.
Include coqutil_DOT_Word_DOT_Interface_WRAPPED.Interface.
End Interface.

End Word.

End coqutil.
Export Stdlib.ZArith.BinInt.
Module Export Stdlib.
Module Export ZArith.
Module Export ZArith.
End ZArith.

  Record MetricLog := mkMetricLog {
    instructions: Z;
    stores: Z;
    loads: Z;
    jumps: Z;
  }.

  Definition metricAdd(metric: MetricLog -> Z) m1 m2 : Z :=
    Z.add (metric m1) (metric m2).

  Definition metricsOp op : MetricLog -> MetricLog -> MetricLog :=
    fun m1 m2 =>
      mkMetricLog
        (op instructions m1 m2)
        (op stores m1 m2)
        (op loads m1 m2)
        (op jumps m1 m2).

  Definition metricsAdd := metricsOp metricAdd.
Infix "+" := metricsAdd : MetricH_scope.
Module Export bedrock2.
Module Export MetricLogging.
End MetricLogging.

End bedrock2.
Import Coq.ZArith.ZArith.

Class Bitwidth(width: Z): Prop := {
  width_cases: width = 32%Z \/ width = 64%Z
}.
Module Export coqutil.
Module Export Word.
Module Export Bitwidth.
End Bitwidth.
Module Export Byte.

Notation byte := (Coq.Init.Byte.byte: Type).

Module Export byte.
End byte.
Module Export coqutil.
Module Export Byte.
End Byte.

Module Export bedrock2_DOT_MetricCosts_WRAPPED.
Module Export MetricCosts.
Import Stdlib.ZArith.BinIntDef.
Import bedrock2.MetricLogging.

Local Open Scope MetricH_scope.

Section FlatImpExec.

  Context {varname: Type}.
  Variable (isReg: varname -> bool).

  Definition cost_load x a mc :=
    match (isReg x, isReg a) with
    | (false, false) => mkMetricLog 3 1 5 0
    | (false,  true) => mkMetricLog 2 1 3 0
    | ( true, false) => mkMetricLog 2 0 4 0
    | ( true,  true) => mkMetricLog 1 0 2 0
    end + mc.

  Definition cost_inlinetable x i mc :=
    match (isReg x, isReg i) with
    | (false, false) => mkMetricLog 5 1 7 1
    | (false,  true) => mkMetricLog 4 1 5 1
    | ( true, false) => mkMetricLog 4 0 6 1
    | ( true,  true) => mkMetricLog 3 0 4 1
    end + mc.

  Definition cost_lit x mc :=
    match isReg x with
    | false => mkMetricLog 9 1 9 0
    |  true => mkMetricLog 8 0 8 0
    end + mc.

  Definition cost_op1 x z mc :=
    match (isReg x, isReg z) with
    | (false, false) => mkMetricLog 5 1 7 0
    | (false,  true) => mkMetricLog 3 1 3 0
    | ( true, false) => mkMetricLog 4 0 6 0
    | ( true,  true) => mkMetricLog 2 0 2 0
    end + mc.

  Definition cost_op x y z mc :=
    match (isReg x, isReg y, isReg z) with
    | (false, false, false)                         => mkMetricLog 5 1 7 0
    | (false, false,  true) | (false,  true, false) => mkMetricLog 4 1 5 0
    | (false,  true,  true)                         => mkMetricLog 3 1 3 0
    | ( true, false, false)                         => mkMetricLog 4 0 6 0
    | ( true, false,  true) | ( true,  true, false) => mkMetricLog 3 0 4 0
    | ( true,  true,  true)                         => mkMetricLog 2 0 2 0
    end + mc.

  Definition cost_set x y mc :=
    match (isReg x, isReg y) with
    | (false, false) => mkMetricLog 3 1 4 0
    | (false,  true) => mkMetricLog 2 1 2 0
    | ( true, false) => mkMetricLog 2 0 3 0
    | ( true,  true) => mkMetricLog 1 0 1 0
    end + mc.

    Definition cost_if x y mc :=
      match (isReg x, match y with | Some y' => isReg y' | None => true end) with
      | (false, false)                  => mkMetricLog 4 0 6 1
      | (false,  true) | ( true, false) => mkMetricLog 3 0 4 1
      | ( true,  true)                  => mkMetricLog 2 0 2 1
      end + mc.

End FlatImpExec.
Definition isRegStr (var : String.string) : bool.
Admitted.

End MetricCosts.
Module Export bedrock2.
Module MetricCosts.
Include bedrock2_DOT_MetricCosts_WRAPPED.MetricCosts.
End MetricCosts.

End bedrock2.

Module Export coqutil_DOT_Datatypes_DOT_List_WRAPPED.
Module Export List.

Section WithAAndEqDecider.
  Context {A : Type}.
Fixpoint option_all (xs : list (option A)) {struct xs} : option (list A).
exact (match xs with
    | nil => Some nil
    | cons ox xs =>
      match ox, option_all xs with
      | Some x, Some ys => Some (cons x ys)
      | _ , _ => None
      end
    end).
Defined.
End WithAAndEqDecider.

End List.
Include coqutil_DOT_Datatypes_DOT_List_WRAPPED.List.
Module Export LittleEndianList.
Import Coq.ZArith.ZArith.
Import coqutil.Byte.
Fixpoint le_combine(l: list byte): Z.
Admitted.
Fixpoint le_split (n : nat) (w : Z) : list byte.
Admitted.
End LittleEndianList.
Module Export Interface.

Module map.
  Class map {key value} := mk {
    rep : Type;

    get: rep -> key -> option value;

    empty : rep;
    put : rep -> key -> value -> rep;
    remove : rep -> key -> rep;
    fold{R: Type}: (R -> key -> value -> R) -> R -> rep -> R;
  }.
  Arguments map : clear implicits.
  Global Coercion rep : map >-> Sortclass.

  Class ok {key value : Type} {map : map key value}: Prop := {
    map_ext : forall m1 m2, (forall k, get m1 k = get m2 k) -> m1 = m2;
    get_empty : forall k, get empty k = None;
    get_put_same : forall m k v, get (put m k v) k = Some v;
    get_put_diff : forall m k v k', k <> k' -> get (put m k' v) k = get m k;
    get_remove_same : forall m k, get (remove m k) k = None;
    get_remove_diff : forall m k k', k <> k' -> get (remove m k') k = get m k;
    fold_spec{R: Type} : forall (P: rep -> R -> Prop) (f: R -> key -> value -> R) r0,
        P empty r0 ->
        (forall k v m r, get m k = None -> P m r -> P (put m k v) (f r k v)) ->
        forall m, P m (fold f r0 m);

    fold_parametricity: forall {A B : Type} (R : A -> B -> Prop)
                               (fa: A -> key -> value -> A) (fb: B -> key -> value -> B),
        (forall a b k v, R a b -> R (fa a k v) (fb b k v)) ->
        forall a0 b0, R a0 b0 -> forall m, R (fold fa a0 m) (fold fb b0 m);

  }.
  Arguments ok {_ _} _.

  Section WithMap.
    Context {key value : Type} {map : map key value} {map_ok : ok map}.

    Definition update (m : map) (k : key) (ov : option value) :=
      match ov with
      | None => remove m k
      | Some v => put m k v
      end.
Definition putmany: map -> map -> map.
exact (fold put).
Defined.
    Definition disjoint (a b : map) :=
      forall k v1 v2, get a k = Some v1 -> get b k = Some v2 -> False.

    Definition split m m1 m2 := m = (putmany m1 m2) /\ disjoint m1 m2.
Definition getmany_of_list (m : map) (keys : list key) : option (list value).
exact (List.option_all (List.map (get m) keys)).
Defined.
  End WithMap.
End map.
Local Notation map := map.map.
Global Coercion map.rep : map >-> Sortclass.

End Interface.
Module Export coqutil_DOT_Map_DOT_Interface.
Module Export coqutil.
Module Export Map.
Module Export Interface.
End Interface.

End Map.

End coqutil.

End coqutil_DOT_Map_DOT_Interface.
Module Export OfFunc.
Import coqutil.Map.Interface.
Import Interface.map.

Module Export map.
  Section OfFunc.
    Context {key value} {map : map key value} {ok : map.ok map}.

    Context (f : key -> option value).
Fixpoint of_func (support : list key) : map.
exact (match support with
      | nil => empty
      | cons k support => update (of_func support) k (f k)
      end).
Defined.
  End OfFunc.
  Section OfListNatAt.
  End OfListNatAt.

  Section OfListZAt.
  End OfListZAt.
End map.

End OfFunc.
Module Export coqutil_DOT_Map_DOT_OfFunc.
Module Export coqutil.
Module Export Map.
Module Export OfFunc.
End OfFunc.

End Map.

End coqutil.

End coqutil_DOT_Map_DOT_OfFunc.
Module Export OfListWord.
Import Stdlib.ZArith.ZArith.
Import Coq.Lists.List.
Import coqutil.Map.Interface.
Import coqutil.Map.OfFunc.
Import Interface.map.
Import coqutil.Word.Interface.

Module Export map.
  Section __.
    Context {width} {word : word width} {word_ok : word.ok word}.
    Context {value : Type} {map : map word value} {ok : map.ok map}.
Definition of_list_word (xs : list value) : map.
exact (map.of_func
      (fun w => nth_error xs (Z.to_nat (word.unsigned w)))
      (List.map (fun n => word.of_Z (Z.of_nat n)) (seq 0 (length xs)))).
Defined.
  End __.
End map.

End OfListWord.
Module Export coqutil.
Module Export Map.
Module Export OfListWord.
End OfListWord.

End Map.

End coqutil.
Import Stdlib.ZArith.ZArith.
Import coqutil.Map.Interface.
Import coqutil.Word.Interface.
Import coqutil.Byte.
Definition bytes_per_word(width: Z): Z.
Admitted.

Section Memory.
  Context {width: Z} {word: word width} {mem: map.map word byte}.
Definition load_bytes (m : mem) (a : word) (n : nat) : option (list byte).
Admitted.
Definition store_bytes (m : mem) (a : word) (bs : list byte) : option mem.
Admitted.

  Definition load_Z (m : mem) (a : word) n: option Z :=
    match load_bytes m a n with
    | Some bs => Some (LittleEndianList.le_combine bs)
    | None => None
    end.

  Definition store_Z (m : mem) (a : word) n (v : Z) : option mem :=
    store_bytes m a (LittleEndianList.le_split n v).
End Memory.
Export coqutil.Map.OfListWord.
Import Stdlib.ZArith.ZArith.
Import coqutil.Map.Interface.
Import coqutil.Word.Interface.
Import bedrock2.Syntax.
Import coqutil.Byte.

Definition bytes_per {width} sz :=
  match sz with
    | access_size.one => 1 | access_size.two => 2 | access_size.four => 4
    | access_size.word => Z.to_nat (bytes_per_word width)
  end%nat.

Definition load {width} {word : word width} {mem : map.map word byte}
  sz (m : mem) (a: word): option word :=
  match load_Z m a (bytes_per (width:=width) sz) with
  | Some z => Some (word.of_Z z)
  | None => None
  end.

Definition store {width} {word : word width} {mem : map.map word byte}
  sz (m : mem) (a v : word) : option mem :=
  store_Z m a (bytes_per (width:=width) sz) (word.unsigned v).

Module Export bedrock2_DOT_Semantics_WRAPPED.
Module Export Semantics.
Import coqutil.Byte.
Import bedrock2.Syntax.
Import coqutil.Map.Interface.
Import Stdlib.ZArith.BinIntDef.
Import coqutil.Word.Bitwidth.

Definition LogItem{width: Z}{BW: Bitwidth width}{word: word.word width}{mem: map.map word byte} :=
  ((mem * String.string * list word) * (mem * list word))%type.

Definition trace{width: Z}{BW: Bitwidth width}{word: word.word width}{mem: map.map word byte} :=
  list LogItem.

Definition ExtSpec{width: Z}{BW: Bitwidth width}{word: word.word width}{mem: map.map word byte} :=

  trace -> mem -> String.string -> list word ->

  (mem -> list word -> Prop) ->

  Prop.

Module Export ext_spec.
  Class ok{width: Z}{BW: Bitwidth width}{word: word.word width}{mem: map.map word byte}
          {ext_spec: ExtSpec}: Prop :=
  {

    mGive_unique: forall t m mGive1 mKeep1 mGive2 mKeep2 a args post1 post2,
      map.split m mKeep1 mGive1 ->
      map.split m mKeep2 mGive2 ->
      ext_spec t mGive1 a args post1 ->
      ext_spec t mGive2 a args post2 ->
      mGive1 = mGive2;

    #[global] weaken :: forall t mGive act args,
        Morphisms.Proper
          (Morphisms.respectful
             (Morphisms.pointwise_relation Interface.map.rep
               (Morphisms.pointwise_relation (list word) Basics.impl)) Basics.impl)
          (ext_spec t mGive act args);

    intersect: forall t mGive a args
                      (post1 post2: mem -> list word -> Prop),
        ext_spec t mGive a args post1 ->
        ext_spec t mGive a args post2 ->
        ext_spec t mGive a args (fun mReceive resvals =>
                                   post1 mReceive resvals /\ post2 mReceive resvals);
  }.
End ext_spec.
Arguments ext_spec.ok {_ _ _ _} _.

Section operators.
  Context {width : Z} {word : Word.Interface.word width}.
Definition interp_op1 (op : op1) : word -> word.
Admitted.
Definition interp_binop (bop : bopname) : word -> word -> word.
Admitted.
End operators.

End Semantics.
Include bedrock2_DOT_Semantics_WRAPPED.Semantics.

Module Export bedrock2_DOT_MetricWeakestPrecondition_WRAPPED.
Module Export MetricWeakestPrecondition.
Import coqutil.Map.Interface.
Import Coq.ZArith.BinIntDef.
Import coqutil.Word.Bitwidth.
Import coqutil.dlet.
Import bedrock2.Syntax.
Import bedrock2.MetricLogging.
Import bedrock2.MetricCosts.

Section WeakestPrecondition.
  Context {width: Z} {BW: Bitwidth width} {word: word.word width} {mem: map.map word Byte.byte}.
  Context {locals: map.map String.string word}.
  Implicit Types (t : trace) (m : mem) (l : locals).

  Local Notation metrics := MetricLog.
  Local Notation UNK := String.EmptyString.

  Definition literal v mc (post : (word * metrics) -> Prop) : Prop :=
    dlet! v := word.of_Z v in post (v, cost_lit isRegStr UNK mc).
  Definition get (l : locals) (x : String.string) mc (post : (word * metrics) -> Prop) : Prop :=
    exists v, map.get l x = Some v /\ post (v, cost_set isRegStr UNK x mc).
  Definition load s m a mc (post: (word * metrics) -> Prop) : Prop :=
    exists v, load s m a = Some v /\ post (v, mc).
  Definition store sz m a v post :=
    exists m', store sz m a v = Some m' /\ post m'.

  Section WithMemAndLocals.
    Context (m : mem) (l : locals).
    Definition expr_body (rec : _->_->(word*metrics->Prop)->Prop) (e : Syntax.expr) (mc : metrics) (post : word * metrics -> Prop) : Prop :=
      match e with
      | expr.literal v =>
        literal v mc post
      | expr.var x =>
        get l x mc post
      | expr.op1 op e =>
        rec e mc (fun '(v1, mc') =>
        post (interp_op1 op v1, cost_op1 isRegStr UNK UNK mc'))
      | expr.op op e1 e2 =>
        rec e1 mc (fun '(v1, mc') =>
        rec e2 mc' (fun '(v2, mc'') =>
        post (interp_binop op v1 v2, cost_op isRegStr UNK UNK UNK mc'')))
      | expr.load s e =>
       rec e mc (fun '(a, mc') =>
        load s m a (cost_load isRegStr UNK UNK mc') post)
      | expr.inlinetable s t e =>
         rec e mc (fun '(a, mc') =>
        load s (map.of_list_word t) a (cost_inlinetable isRegStr UNK UNK mc') post)
      | expr.ite c e1 e2 =>
        rec c mc (fun '(b, mc') => rec (if word.eqb b (word.of_Z 0) then e2 else e1) (cost_if isRegStr UNK (Some UNK) mc') post)
    end.
    Fixpoint expr e := expr_body expr e.
  End WithMemAndLocals.

  Section WithF.
    Context {A B} (f: A -> metrics -> (B * metrics -> Prop) -> Prop).
    Definition list_map_body rec (xs : list A) (mc : metrics) (post : list B * metrics -> Prop) : Prop :=
      match xs with
      | nil => post (nil, mc)
      | cons x xs' =>
        f x mc (fun '(y, mc') =>
        rec xs' mc' (fun '(ys', mc'') =>
        post (cons y ys', mc'')))
      end.
    Fixpoint list_map xs := list_map_body list_map xs.
  End WithF.
    Definition dexpr m l e mc v := expr m l e mc (eq v).
    Definition dexprs m l es mc vs := list_map (expr m l) es mc (eq vs).

End WeakestPrecondition.

End MetricWeakestPrecondition.
Include bedrock2_DOT_MetricWeakestPrecondition_WRAPPED.MetricWeakestPrecondition.
Import coqutil.Map.Interface.
Import coqutil.Word.Bitwidth.
Import bedrock2.MetricLogging.

Section MetricWeakestPrecondition.
  Context {width} {BW: Bitwidth width} {word: word.word width} {mem: map.map word Byte.byte}.
  Context {locals: map.map String.string word}.
  Context {ext_spec: Semantics.ExtSpec}.

  Local Hint Mode word.word - : typeclass_instances.

  Context {word_ok : word.ok word} {mem_ok : map.ok mem}.
  Context {locals_ok : map.ok locals}.
  Context {ext_spec_ok : Semantics.ext_spec.ok ext_spec}.
Import coqutil.Datatypes.Prod.
  Ltac t :=
      repeat match goal with
             | _ => progress inversion_prod
             | |- forall _, _ => progress intros
             | H: exists _, _ |- _ => destruct H
             | H: and _ _ |- _ => destruct H
             | H: eq _ ?y |- _ => subst y
             | H: False |- _ => destruct H
             | _ => progress cbn in *
             | _ => progress cbv [dlet.dlet MetricWeakestPrecondition.dexpr MetricWeakestPrecondition.dexprs MetricWeakestPrecondition.store] in *
        end; eauto.
Import Stdlib.ZArith.ZArith.

  Lemma sound_getmany l a mc P :
    MetricWeakestPrecondition.list_map (MetricWeakestPrecondition.get l) a mc P
    -> exists vs mc', map.getmany_of_list l a = Some vs /\ P (vs, mc').
  Proof.
    cbv [map.getmany_of_list] in *.
    revert P l mc; induction a; cbn; repeat (subst; t).
    cbv [MetricWeakestPrecondition.get] in H; t.
    epose proof (IHa _ l _ _); clear IHa; t.
    rewrite H.
erewrite H1.
eexists; eexists; split; eauto.
    Unshelve.
    3: exact H0.
