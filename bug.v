
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-quiet" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/utils/theories" "MetaRocq.Utils" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/common/theories" "MetaRocq.Common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/pcuic/theories" "MetaRocq.PCUIC" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq/theories" "MetaRocq.Template" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/safechecker-plugin/theories" "MetaRocq.SafeCheckerPlugin" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-pcuic/theories" "MetaRocq.TemplatePCUIC" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/safechecker/theories" "MetaRocq.SafeChecker" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/erasure/theories" "MetaRocq.Erasure" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/erasure-plugin/theories" "MetaRocq.ErasurePlugin" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/test-suite" "MetaRocq.TestSuite" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Equations" "Equations" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/ExtLib" "ExtLib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/erasure-plugin/src" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/safechecker-plugin/src" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 126 lines to 7 lines, then from 21 lines to 439 lines, then from 446 lines to 9 lines, then from 23 lines to 734 lines, then from 738 lines to 133 lines, then from 147 lines to 666 lines, then from 671 lines to 195 lines, then from 209 lines to 850 lines, then from 856 lines to 266 lines, then from 280 lines to 740 lines, then from 746 lines to 286 lines, then from 300 lines to 1536 lines, then from 1541 lines to 605 lines, then from 619 lines to 2320 lines, then from 2325 lines to 719 lines, then from 733 lines to 3851 lines, then from 3817 lines to 1078 lines, then from 1092 lines to 2288 lines, then from 2291 lines to 1623 lines, then from 1614 lines to 828 lines, then from 842 lines to 1693 lines, then from 1700 lines to 861 lines, then from 875 lines to 1247 lines, then from 1254 lines to 868 lines, then from 882 lines to 1416 lines, then from 1422 lines to 885 lines, then from 899 lines to 1378 lines, then from 1382 lines to 905 lines, then from 919 lines to 1621 lines, then from 1628 lines to 997 lines, then from 1011 lines to 1325 lines, then from 1332 lines to 1007 lines, then from 1021 lines to 1258 lines, then from 1265 lines to 1017 lines, then from 1031 lines to 2381 lines, then from 2387 lines to 1036 lines, then from 1050 lines to 2221 lines, then from 2212 lines to 1301 lines, then from 1315 lines to 2614 lines, then from 2613 lines to 1615 lines, then from 1629 lines to 1997 lines, then from 2003 lines to 1701 lines, then from 1715 lines to 2054 lines, then from 2058 lines to 1741 lines, then from 1755 lines to 1904 lines, then from 1911 lines to 1746 lines, then from 1760 lines to 1906 lines, then from 1913 lines to 1752 lines, then from 1766 lines to 1945 lines, then from 1952 lines to 1762 lines, then from 1776 lines to 3044 lines, then from 3046 lines to 1772 lines, then from 1786 lines to 2353 lines, then from 2357 lines to 1863 lines, then from 1877 lines to 3902 lines, then from 3905 lines to 2215 lines, then from 2175 lines to 1956 lines, then from 1970 lines to 2588 lines, then from 2595 lines to 2482 lines, then from 2496 lines to 3794 lines, then from 3801 lines to 2498 lines, then from 2512 lines to 2909 lines, then from 2911 lines to 2639 lines, then from 2653 lines to 3669 lines, then from 3676 lines to 3065 lines, then from 3079 lines to 4350 lines, then from 4357 lines to 3290 lines, then from 3304 lines to 3736 lines, then from 3743 lines to 3478 lines, then from 3492 lines to 5778 lines, then from 5783 lines to 3551 lines, then from 3565 lines to 3964 lines, then from 3971 lines to 3726 lines, then from 3740 lines to 3754 lines, then from 3761 lines to 3727 lines, then from 3741 lines to 4192 lines, then from 4198 lines to 3739 lines, then from 3753 lines to 4352 lines, then from 4359 lines to 3797 lines, then from 3811 lines to 4880 lines, then from 4877 lines to 4054 lines, then from 4067 lines to 4171 lines, then from 4177 lines to 4065 lines, then from 4079 lines to 5264 lines, then from 5263 lines to 4095 lines, then from 4109 lines to 4346 lines, then from 4353 lines to 4122 lines, then from 4136 lines to 8269 lines, then from 8249 lines to 4182 lines, then from 4196 lines to 5640 lines, then from 5645 lines to 4484 lines, then from 4498 lines to 4612 lines, then from 4619 lines to 4488 lines, then from 4502 lines to 6363 lines, then from 6370 lines to 4507 lines, then from 4521 lines to 4611 lines, then from 4618 lines to 4533 lines, then from 4547 lines to 4781 lines, then from 4788 lines to 4623 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version runner-cabngxqim-project-4504-concurrent-2:/builds/coq/coq/_build/default,(HEAD detached at 1589ead4b8) (1589ead4b807c5dc8258b9923a229fcfaff81834)
   Expected coqc runtime on this file: 1.521 sec
   Expected coqc peak memory usage on this file: 1262004.0 kb *)









Require Corelib.ssr.ssreflect.
Require Corelib.Classes.CRelationClasses.
Require Corelib.extraction.Extraction.
Require Corelib.Lists.ListDef.
Require Corelib.Init.Byte.
Require Corelib.Program.Basics.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Strings.PrimStringAxioms.
Require Corelib.Classes.Morphisms.
Require Corelib.Floats.FloatOps.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Classes.RelationClasses.
Require Corelib.Init.Ltac.
Require Corelib.Setoids.Setoid.
Require ExtLib.Core.Any.
Require ExtLib.Structures.BinOps.
Require MetaRocq.TestSuite.hott_example.
Require Stdlib.Logic.Decidable.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Classes.DecidableClass.
Require Stdlib.Logic.HLevelsBase.
Require Equations.Init.
Require ExtLib.Structures.Functor.
Require ExtLib.Structures.Monoid.
Require Stdlib.Classes.CRelationClasses.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Init.Byte.
Require Stdlib.Lists.ListDef.
Require Stdlib.Program.Basics.
Require Stdlib.Relations.Relation_Definitions.
Require Stdlib.Setoids.Setoid.
Require Stdlib.extraction.Extraction.
Require Stdlib.ssr.ssreflect.
Require Equations.Prop.SigmaNotations.
Require Equations.Signature.
Require ExtLib.Structures.Applicative.
Require Stdlib.Bool.Bool.
Require Stdlib.Relations.Relation_Operators.
Require Equations.CoreTactics.
Require ExtLib.Structures.Monad.
Require Stdlib.Relations.Operators_Properties.
Require ExtLib.Structures.MonadCont.
Require ExtLib.Structures.MonadExc.
Require ExtLib.Structures.MonadFix.
Require ExtLib.Structures.MonadPlus.
Require ExtLib.Structures.MonadReader.
Require ExtLib.Structures.MonadState.
Require ExtLib.Structures.MonadTrans.
Require ExtLib.Structures.MonadZero.
Require Stdlib.Relations.Relations.
Require Equations.Prop.Logic.
Require ExtLib.Structures.MonadWriter.
Require Stdlib.Numbers.NumPrelude.
Require Equations.Prop.Classes.
Require MetaRocq.Utils.MRProd.
Require Stdlib.Structures.Equalities.
Require ExtLib.Structures.Monads.
Require Stdlib.Structures.Orders.
Require Stdlib.Structures.OrdersTac.
Require Stdlib.Structures.OrdersFacts.
Require Stdlib.Numbers.Integer.Abstract.ZMaxMin.
Require Stdlib.Numbers.Natural.Abstract.NDiv.
Require Stdlib.Numbers.Natural.Abstract.NGcd.
Require Stdlib.Numbers.Natural.Abstract.NMaxMin.
Require Stdlib.Numbers.Natural.Abstract.NParity.
Require Stdlib.Numbers.Natural.Abstract.NSqrt.
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
Import Stdlib.Numbers.Natural.Abstract.NSub.
Import Stdlib.Numbers.Natural.Abstract.NPow.
Import Stdlib.Numbers.Natural.Abstract.NDiv.
Import Stdlib.Numbers.Natural.Abstract.NParity.

Module Type NBitsProp
 (Import A : NAxiomsSig')
 (Import B : NSubProp A)
 (Import C : NParityProp A B)
 (Import D : NPowProp A B C)
 (Import E : NDivProp A B)
 (Import F : NLog2Prop A B C D).

Include BoolEqualityFacts A.

End NBitsProp.
Module Export NBits.
End NBits.

Export Stdlib.Numbers.Natural.Abstract.NAxioms.
Import Stdlib.Numbers.Natural.Abstract.NMaxMin.
Import Stdlib.Numbers.Natural.Abstract.NParity.
Import Stdlib.Numbers.Natural.Abstract.NPow.
Import Stdlib.Numbers.Natural.Abstract.NSqrt.
Import Stdlib.Numbers.Natural.Abstract.NLog.
Import Stdlib.Numbers.Natural.Abstract.NDiv.
Import Stdlib.Numbers.Natural.Abstract.NGcd.

Module Type NBasicProp (N:NAxiomsMiniSig) := NMaxMinProp N.

Module Type NExtraPreProp (N:NAxiomsSig)(P:NBasicProp N) :=
 NParityProp N P <+ NPowProp N P <+ NSqrtProp N P <+ NLog2Prop N P <+ NGcdProp N P.

Module Type NExtraProp0 (N:NAxiomsSig)(P:NBasicProp N)(D0:NZDivSpec0 N N N)(E:NExtraPreProp N P).
 Module Private_NDivProp := Nop <+ NDivProp N P.
 Include NBitsProp N P E E Private_NDivProp E.
End NExtraProp0.
Module Export Stdlib.
Module Export Numbers.
Module Export Natural.
Module Export Abstract.
Module Export NProperties.
End NProperties.
Module Export PeanoNat.
Import Stdlib.Structures.OrdersFacts.

Module Nat
  <: NAxiomsSig
  <: UsualDecidableTypeFull
  <: OrderedTypeFull
  <: TotalOrder.

Include Corelib.Init.Nat.

Definition eq_equiv : Equivalence (@eq nat) := eq_equivalence.
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

Lemma div_0_r a : a / 0 = 0.
Admitted.

Lemma mod_0_r a : a mod 0 = a.
Admitted.

Include NExtraPreProp <+ NExtraProp0.

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

Section Fold_Left_Recursor.
  Variables (A : Type) (B : Type).
  Variable f : A -> B -> A.

  Fixpoint fold_left (l:list B) (a0:A) : A :=
    match l with
      | [] => a0
      | b :: l => fold_left l (f a0 b)
    end.

End Fold_Left_Recursor.

Section Fold_Right_Recursor.
  Variables (A : Type) (B : Type).
  Variable f : B -> A -> A.
  Variable a0 : A.

  Fixpoint fold_right (l:list B) : A :=
    match l with
      | [] => a0
      | b :: l => f b (fold_right l)
    end.

End Fold_Right_Recursor.

  Section One_predicate.

  End One_predicate.

Section Forall2.
End Forall2.

Section ForallPairs.
End ForallPairs.

Section Repeat.

End Repeat.

End List.
Module Export Stdlib_DOT_Lists_DOT_List.
Module Export Stdlib.
Module Export Lists.
Module Export List.
End List.

End Lists.

End Stdlib.

End Stdlib_DOT_Lists_DOT_List.
Module Export Sorted.

Set Implicit Arguments.

Section defs.

  Variable A : Type.
  Variable R : A -> A -> Prop.

  Inductive HdRel a : list A -> Prop :=
    | HdRel_nil : HdRel a []
    | HdRel_cons b l : R a b -> HdRel a (b :: l).

  Inductive Sorted : list A -> Prop :=
    | Sorted_nil : Sorted []
    | Sorted_cons a l : Sorted l -> HdRel a l -> Sorted (a :: l).

End defs.

Notation sort := Sorted (only parsing).

End Sorted.
Module Export Stdlib_DOT_Sorting_DOT_Sorted.
Module Export Sorted.
End Sorted.

End Stdlib_DOT_Sorting_DOT_Sorted.
Module Export SetoidList.

Export Stdlib.Lists.List.
Export Stdlib.Setoids.Setoid.
Export Stdlib.Program.Basics.
Set Implicit Arguments.

Section Type_with_equality.
Variable A : Type.
Variable eqA : A -> A -> Prop.

Inductive InA (x : A) : list A -> Prop :=
  | InA_cons_hd : forall y l, eqA x y -> InA x (y :: l)
  | InA_cons_tl : forall y l, InA x l -> InA x (y :: l).

Inductive NoDupA : list A -> Prop :=
  | NoDupA_nil : NoDupA nil
  | NoDupA_cons : forall x l, ~ InA x l -> NoDupA l -> NoDupA (x::l).
Definition equivlistA l l' := forall x, InA x l <-> InA x l'.

#[global] Instance equivlist_equiv : Equivalence equivlistA.
Admitted.
End Type_with_equality.

End SetoidList.
Module Export Stdlib_DOT_Sorting_DOT_SetoidList.
Module Export SetoidList.
End SetoidList.

End Stdlib_DOT_Sorting_DOT_SetoidList.
Module Export MSetInterface.
Export Stdlib.Bool.Bool.
Export Stdlib.Structures.OrdersFacts.
Set Implicit Arguments.

Module Type TypElt.
 Parameters t elt : Type.
End TypElt.

Module Type HasWOps (Import T:TypElt).

  Parameter empty : t.

  Parameter is_empty : t -> bool.

  Parameter mem : elt -> t -> bool.

  Parameter add : elt -> t -> t.

  Parameter singleton : elt -> t.

  Parameter remove : elt -> t -> t.

  Parameter union : t -> t -> t.

  Parameter inter : t -> t -> t.

  Parameter diff : t -> t -> t.

  Parameter equal : t -> t -> bool.

  Parameter subset : t -> t -> bool.

  Parameter fold : forall A : Type, (elt -> A -> A) -> t -> A -> A.

  Parameter for_all : (elt -> bool) -> t -> bool.

  Parameter exists_ : (elt -> bool) -> t -> bool.

  Parameter filter : (elt -> bool) -> t -> t.

  Parameter partition : (elt -> bool) -> t -> t * t.

  Parameter cardinal : t -> nat.

  Parameter elements : t -> list elt.

  Parameter choose : t -> option elt.

End HasWOps.

Module Type WOps (E : DecidableType).
  Definition elt := E.t.
  Parameter t : Type.

  Include HasWOps.
End WOps.

Module Type WSetsOn (E : DecidableType).

  Include WOps E.

  Parameter In : elt -> t -> Prop.

  Definition Equal s s' := forall a : elt, In a s <-> In a s'.

  Definition eq : t -> t -> Prop := Equal.

End WSetsOn.

Module Type WSets.
  Declare Module E : DecidableType.
  Include WSetsOn E.
End WSets.

Module Type HasOrdOps (Import T:TypElt).

  Parameter compare : t -> t -> comparison.

  Parameter min_elt : t -> option elt.

  Parameter max_elt : t -> option elt.

End HasOrdOps.

Module Type Ops (E : OrderedType) := WOps E <+ HasOrdOps.

Module Type SetsOn (E : OrderedType).
  Include WSetsOn E <+ HasOrdOps <+ HasLt <+ IsStrOrder.

End SetsOn.

Module Type Sets.
  Declare Module E : OrderedType.
  Include SetsOn E.
End Sets.

Module Type S := Sets.

Module Type WRawSets (E : DecidableType).

  Include WOps E.

  Parameter IsOk : t -> Prop.
  Class Ok (s:t) : Prop := ok : IsOk s.

  Parameter In : elt -> t -> Prop.

  Definition Equal s s' := forall a : elt, In a s <-> In a s'.

  Definition eq : t -> t -> Prop := Equal.

#[global]
  Declare Instance empty_ok : Ok empty.
#[global]
  Declare Instance add_ok s x `(Ok s) : Ok (add x s).
#[global]
  Declare Instance remove_ok s x `(Ok s) : Ok (remove x s).
#[global]
  Declare Instance singleton_ok x : Ok (singleton x).
#[global]
  Declare Instance union_ok s s' `(Ok s, Ok s') : Ok (union s s').
#[global]
  Declare Instance inter_ok s s' `(Ok s, Ok s') : Ok (inter s s').
#[global]
  Declare Instance diff_ok s s' `(Ok s, Ok s') : Ok (diff s s').
#[global]
  Declare Instance filter_ok s f `(Ok s) : Ok (filter f s).
#[global]
  Declare Instance partition_ok1 s f `(Ok s) : Ok (fst (partition f s)).
#[global]
  Declare Instance partition_ok2 s f `(Ok s) : Ok (snd (partition f s)).

End WRawSets.

Module WRaw2SetsOn (E:DecidableType)(M:WRawSets E) <: WSetsOn E.

 Definition elt := E.t.

 Record t_ := Mkt {this :> M.t; is_ok : M.Ok this}.
 Definition t := t_.
 Arguments Mkt this {is_ok}.
 #[global]
 Hint Resolve is_ok : typeclass_instances.

 Definition In (x : elt)(s : t) := M.In x (this s).
 Definition Equal (s s' : t) := forall a : elt, In a s <-> In a s'.

 Definition mem (x : elt)(s : t) := M.mem x s.
 Definition add (x : elt)(s : t) : t := Mkt (M.add x s).
 Definition remove (x : elt)(s : t) : t := Mkt (M.remove x s).
 Definition singleton (x : elt) : t := Mkt (M.singleton x).
 Definition union (s s' : t) : t := Mkt (M.union s s').
 Definition inter (s s' : t) : t := Mkt (M.inter s s').
 Definition diff (s s' : t) : t := Mkt (M.diff s s').
 Definition equal (s s' : t) := M.equal s s'.
 Definition subset (s s' : t) := M.subset s s'.
 Definition empty : t := Mkt M.empty.
 Definition is_empty (s : t) := M.is_empty s.
 Definition elements (s : t) : list elt := M.elements s.
 Definition choose (s : t) : option elt := M.choose s.
 Definition fold (A : Type)(f : elt -> A -> A)(s : t) : A -> A := M.fold f s.
 Definition cardinal (s : t) := M.cardinal s.
 Definition filter (f : elt -> bool)(s : t) : t := Mkt (M.filter f s).
 Definition for_all (f : elt -> bool)(s : t) := M.for_all f s.
 Definition exists_ (f : elt -> bool)(s : t) := M.exists_ f s.
 Definition partition (f : elt -> bool)(s : t) : t * t :=
   let p := M.partition f s in (Mkt (fst p), Mkt (snd p)).

 Definition eq : t -> t -> Prop := Equal.

 Section Spec.

 End Spec.

End WRaw2SetsOn.

Module WRaw2Sets (D:DecidableType)(M:WRawSets D) <: WSets with Module E := D.
  Module E := D.
  Include WRaw2SetsOn D M.
End WRaw2Sets.

Module Type RawSets (E : OrderedType).
  Include WRawSets E <+ HasOrdOps <+ HasLt <+ IsStrOrder.

End RawSets.

Module Raw2SetsOn (O:OrderedType)(M:RawSets O) <: SetsOn O.
  Include WRaw2SetsOn O M.

  Definition compare (s s':t) := M.compare s s'.
  Definition min_elt (s:t) : option elt := M.min_elt s.
  Definition max_elt (s:t) : option elt := M.max_elt s.
  Definition lt (s s':t) := M.lt s s'.

#[global]
  Instance lt_strorder : StrictOrder lt.
Admitted.

#[global]
  Instance lt_compat : Proper (eq==>eq==>iff) lt.
Admitted.

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

#[global]
 Instance eq_equiv : Equivalence eq := _.

 Inductive lt_list : t -> t -> Prop :=
    | lt_nil : forall x s, lt_list nil (x :: s)
    | lt_cons_lt : forall x y s s',
        O.lt x y -> lt_list (x :: s) (y :: s')
    | lt_cons_eq : forall x y s s',
        O.eq x y -> lt_list s s' -> lt_list (x :: s) (y :: s').

 Definition lt := lt_list.

End MakeListOrdering.

End MSetInterface.
Module Export Stdlib_DOT_MSets_DOT_MSetInterface.
Module Export Stdlib.
Module Export MSets.
Module Export MSetInterface.
End MSetInterface.

End MSets.

End Stdlib.

End Stdlib_DOT_MSets_DOT_MSetInterface.
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
Module Export MSetList.
Set Implicit Arguments.

Module Ops (X:OrderedType) <: WOps X.

  Definition elt := X.t.
  Definition t := list elt.

  Definition empty : t := nil.

  Definition is_empty (l : t) := if l then true else false.

  Fixpoint mem x s :=
    match s with
    | nil => false
    | y :: l =>
        match X.compare x y with
        | Lt => false
        | Eq => true
        | Gt => mem x l
        end
    end.

  Fixpoint add x s :=
    match s with
    | nil => x :: nil
    | y :: l =>
        match X.compare x y with
        | Lt => x :: s
        | Eq => s
        | Gt => y :: add x l
        end
    end.

  Definition singleton (x : elt) := x :: nil.

  Fixpoint remove x s : t :=
    match s with
    | nil => nil
    | y :: l =>
        match X.compare x y with
        | Lt => s
        | Eq => l
        | Gt => y :: remove x l
        end
    end.

  Fixpoint union (s : t) : t -> t :=
    match s with
    | nil => fun s' => s'
    | x :: l =>
        (fix union_aux (s' : t) : t :=
           match s' with
           | nil => s
           | x' :: l' =>
               match X.compare x x' with
               | Lt => x :: union l s'
               | Eq => x :: union l l'
               | Gt => x' :: union_aux l'
               end
           end)
    end.

  Fixpoint inter (s : t) : t -> t :=
    match s with
    | nil => fun _ => nil
    | x :: l =>
        (fix inter_aux (s' : t) : t :=
           match s' with
           | nil => nil
           | x' :: l' =>
               match X.compare x x' with
               | Lt => inter l s'
               | Eq => x :: inter l l'
               | Gt => inter_aux l'
               end
           end)
    end.

  Fixpoint diff (s : t) : t -> t :=
    match s with
    | nil => fun _ => nil
    | x :: l =>
        (fix diff_aux (s' : t) : t :=
           match s' with
           | nil => s
           | x' :: l' =>
               match X.compare x x' with
               | Lt => x :: diff l s'
               | Eq => diff l l'
               | Gt => diff_aux l'
               end
           end)
    end.

  Fixpoint equal (s : t) : t -> bool :=
    fun s' : t =>
    match s, s' with
    | nil, nil => true
    | x :: l, x' :: l' =>
        match X.compare x x' with
        | Eq => equal l l'
        | _ => false
        end
    | _, _ => false
    end.

  Fixpoint subset s s' :=
    match s, s' with
    | nil, _ => true
    | x :: l, x' :: l' =>
        match X.compare x x' with
        | Lt => false
        | Eq => subset l l'
        | Gt => subset s l'
        end
    | _, _ => false
    end.

  Definition fold (B : Type) (f : elt -> B -> B) (s : t) (i : B) : B :=
    fold_left (flip f) s i.

  Fixpoint filter (f : elt -> bool) (s : t) : t :=
    match s with
    | nil => nil
    | x :: l => if f x then x :: filter f l else filter f l
    end.

  Fixpoint for_all (f : elt -> bool) (s : t) : bool :=
    match s with
    | nil => true
    | x :: l => if f x then for_all f l else false
    end.

  Fixpoint exists_ (f : elt -> bool) (s : t) : bool :=
    match s with
    | nil => false
    | x :: l => if f x then true else exists_ f l
    end.

  Fixpoint partition (f : elt -> bool) (s : t) : t * t :=
    match s with
    | nil => (nil, nil)
    | x :: l =>
        let (s1, s2) := partition f l in
        if f x then (x :: s1, s2) else (s1, x :: s2)
    end.

  Definition cardinal (s : t) : nat := length s.

  Definition elements (x : t) : list elt := x.

  Definition min_elt (s : t) : option elt :=
    match s with
    | nil => None
    | x :: _ => Some x
    end.

  Fixpoint max_elt (s : t) : option elt :=
    match s with
    | nil => None
    | x :: nil => Some x
    | _ :: l => max_elt l
    end.

  Definition choose := min_elt.

  Fixpoint compare s s' :=
   match s, s' with
    | nil, nil => Eq
    | nil, _ => Lt
    | _, nil => Gt
    | x::s, x'::s' =>
      match X.compare x x' with
       | Eq => compare s s'
       | Lt => Lt
       | Gt => Gt
      end
   end.

End Ops.

Module MakeRaw (X: OrderedType) <: RawSets X.

  Include Ops X.

  Section ForNotations.

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
  Notation In := (InA X.eq).

  Definition IsOk s := Sort s.

  Class Ok (s:t) : Prop := ok : Sort s.

  #[global] Instance isok_Ok s `(isok s = true) : Ok s | 10.
Admitted.

  Definition Equal s s' := forall a : elt, In a s <-> In a s'.
  Definition Subset s s' := forall a : elt, In a s -> In a s'.
  Definition Empty s := forall a : elt, ~ In a s.
  Definition For_all (P : elt -> Prop) s := forall x, In x s -> P x.
  Definition Exists (P : elt -> Prop) (s : t) := exists x, In x s /\ P x.

  Lemma mem_spec :
   forall (s : t) (x : elt) (Hs : Ok s), mem x s = true <-> In x s.
Admitted.

  #[global] Instance add_ok s x : forall `(Ok s), Ok (add x s).
Admitted.

  Lemma add_spec :
   forall (s : t) (x y : elt) (Hs : Ok s),
    In y (add x s) <-> X.eq y x \/ In y s.
Admitted.

  #[global] Instance remove_ok s x : forall `(Ok s), Ok (remove x s).
Admitted.

  Lemma remove_spec :
   forall (s : t) (x y : elt) (Hs : Ok s),
    In y (remove x s) <-> In y s /\ ~X.eq y x.
Admitted.

  #[global] Instance singleton_ok x : Ok (singleton x).
Admitted.

  Lemma singleton_spec : forall x y : elt, In y (singleton x) <-> X.eq y x.
Admitted.

  #[global] Instance union_ok s s' : forall `(Ok s, Ok s'), Ok (union s s').
Admitted.

  Lemma union_spec :
   forall (s s' : t) (x : elt) (Hs : Ok s) (Hs' : Ok s'),
   In x (union s s') <-> In x s \/ In x s'.
Admitted.

  #[global] Instance inter_ok s s' : forall `(Ok s, Ok s'), Ok (inter s s').
Admitted.

  Lemma inter_spec :
   forall (s s' : t) (x : elt) (Hs : Ok s) (Hs' : Ok s'),
   In x (inter s s') <-> In x s /\ In x s'.
Admitted.

  #[global] Instance diff_ok s s' : forall `(Ok s, Ok s'), Ok (diff s s').
Admitted.

  Lemma diff_spec :
   forall (s s' : t) (x : elt) (Hs : Ok s) (Hs' : Ok s'),
   In x (diff s s') <-> In x s /\ ~In x s'.
Admitted.

  Lemma equal_spec :
   forall (s s' : t) (Hs : Ok s) (Hs' : Ok s'),
   equal s s' = true <-> Equal s s'.
Admitted.

  Lemma subset_spec :
   forall (s s' : t) (Hs : Ok s) (Hs' : Ok s'),
   subset s s' = true <-> Subset s s'.
Admitted.

  #[global] Instance empty_ok : Ok empty.
Admitted.

  Lemma empty_spec : Empty empty.
Admitted.

  Lemma is_empty_spec : forall s : t, is_empty s = true <-> Empty s.
Admitted.

  Lemma elements_spec1 : forall (s : t) (x : elt), In x (elements s) <-> In x s.
Admitted.

  Lemma elements_spec2 : forall (s : t) (Hs : Ok s), sort X.lt (elements s).
Admitted.

  Lemma elements_spec2w : forall (s : t) (Hs : Ok s), NoDupA X.eq (elements s).
Admitted.

  Lemma min_elt_spec1 : forall (s : t) (x : elt), min_elt s = Some x -> In x s.
Admitted.

  Lemma min_elt_spec2 :
   forall (s : t) (x y : elt) (Hs : Ok s),
   min_elt s = Some x -> In y s -> ~ X.lt y x.
Admitted.

  Lemma min_elt_spec3 : forall s : t, min_elt s = None -> Empty s.
Admitted.

  Lemma max_elt_spec1 : forall (s : t) (x : elt), max_elt s = Some x -> In x s.
Admitted.

  Lemma max_elt_spec2 :
   forall (s : t) (x y : elt) (Hs : Ok s),
   max_elt s = Some x -> In y s -> ~ X.lt x y.
Admitted.

  Lemma max_elt_spec3 : forall s : t, max_elt s = None -> Empty s.
Admitted.

  Definition choose_spec1 :
    forall (s : t) (x : elt), choose s = Some x -> In x s := min_elt_spec1.

  Definition choose_spec2 :
    forall s : t, choose s = None -> Empty s := min_elt_spec3.

  Lemma choose_spec3: forall s s' x x', Ok s -> Ok s' ->
   choose s = Some x -> choose s' = Some x' -> Equal s s' -> X.eq x x'.
Admitted.

  Lemma fold_spec :
   forall (s : t) (A : Type) (i : A) (f : elt -> A -> A),
   fold f s i = fold_left (flip f) (elements s) i.
Admitted.

  Lemma cardinal_spec :
   forall (s : t) (Hs : Ok s),
   cardinal s = length (elements s).
Admitted.

  #[global] Instance filter_ok s f : forall `(Ok s), Ok (filter f s).
Admitted.

  Lemma filter_spec :
   forall (s : t) (x : elt) (f : elt -> bool),
   Proper (X.eq==>eq) f ->
   (In x (filter f s) <-> In x s /\ f x = true).
Admitted.

  Lemma for_all_spec :
   forall (s : t) (f : elt -> bool),
   Proper (X.eq==>eq) f ->
   (for_all f s = true <-> For_all (fun x => f x = true) s).
Admitted.

  Lemma exists_spec :
   forall (s : t) (f : elt -> bool),
   Proper (X.eq==>eq) f ->
   (exists_ f s = true <-> Exists (fun x => f x = true) s).
Admitted.

  #[global] Instance partition_ok1 s f : forall `(Ok s), Ok (fst (partition f s)).
Admitted.

  #[global] Instance partition_ok2 s f : forall `(Ok s), Ok (snd (partition f s)).
Admitted.

  Lemma partition_spec1 :
   forall (s : t) (f : elt -> bool),
   Proper (X.eq==>eq) f -> Equal (fst (partition f s)) (filter f s).
Admitted.

  Lemma partition_spec2 :
   forall (s : t) (f : elt -> bool),
   Proper (X.eq==>eq) f ->
   Equal (snd (partition f s)) (filter (fun x => negb (f x)) s).
Admitted.

  End ForNotations.

  Definition In := InA X.eq.
#[global]
  Instance In_compat : Proper (X.eq==>eq==> iff) In.
Admitted.

  Module L := MakeListOrdering X.
  Definition eq := L.eq.
  Definition eq_equiv := L.eq_equiv.
  Definition lt l1 l2 :=
    exists l1' l2', Ok l1' /\ Ok l2' /\ eq l1 l1' /\ eq l2 l2' /\ L.lt l1' l2'.

#[global]
  Instance lt_strorder : StrictOrder lt.
Admitted.

#[global]
  Instance lt_compat : Proper (eq==>eq==>iff) lt.
Admitted.

  Lemma compare_spec : forall s s', Ok s -> Ok s' ->
   CompSpec eq lt s s' (compare s s').
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

End MSetList.
Module Export OrderedType.
Set Implicit Arguments.

Inductive Compare (X : Type) (lt eq : X -> X -> Prop) (x y : X) : Type :=
  | LT : lt x y -> Compare lt eq x y
  | EQ : eq x y -> Compare lt eq x y
  | GT : lt y x -> Compare lt eq x y.

Module Type MiniOrderedType.

  Parameter Inline t : Type.

End MiniOrderedType.

Module Type OrderedType.
  Include MiniOrderedType.

End OrderedType.

Module MOT_to_OT (Import O : MiniOrderedType) <: OrderedType.
  Include O.

End MOT_to_OT.

Module OrderedTypeFacts (Import O: OrderedType).

  Module Export TO.
  End TO.
  Module Export IsTO.
  End IsTO.

Section ForNotations.

End ForNotations.

End OrderedTypeFacts.

Module KeyOrderedType(O:OrderedType).

 Section Elt.

 End Elt.

End KeyOrderedType.

End OrderedType.
Module Export Stdlib_DOT_Structures_DOT_OrderedType.
Module Export Stdlib.
Module Export Structures.
Module Export OrderedType.
End OrderedType.

End Structures.

End Stdlib.

End Stdlib_DOT_Structures_DOT_OrderedType.

Export Stdlib.Arith.PeanoNat.
Module Export Stdlib_DOT_Arith_DOT_Arith_base.
Module Export Stdlib.
Module Export Arith.
Module Export Arith_base.
End Arith_base.

End Arith.

End Stdlib.

End Stdlib_DOT_Arith_DOT_Arith_base.
Export Corelib.BinNums.PosDef.
Module Export PosDef.
End PosDef.
Module Export BinPosDef.

#[local] Open Scope positive_scope.

Module Export Pos.

Include BinNums.PosDef.Pos.

Definition t := positive.

Infix "+" := add : positive_scope.

Infix "-" := sub : positive_scope.

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

Fixpoint gcdn (n : nat) (a b : positive) : positive :=
  match n with
    | O => 1
    | S n =>
      match a,b with
        | 1, _ => 1
        | _, 1 => 1
        | a~0, b~0 => (gcdn n a b)~0
        | _  , b~0 => gcdn n a b
        | a~0, _   => gcdn n a b
        | a'~1, b'~1 =>
          match a' ?= b' with
            | Eq => a
            | Lt => gcdn n (b'-a') a
            | Gt => gcdn n (a'-b') b
          end
      end
  end.

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

Fixpoint of_uint (d:Decimal.uint) : N :=
  match d with
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
  end.

#[local] Notation sixteen := 1~0~0~0~0.

Fixpoint of_hex_uint_acc (d:Hexadecimal.uint)(acc:positive) :=
  match d with
  | Hexadecimal.Nil => acc
  | Hexadecimal.D0 l => of_hex_uint_acc l (mul sixteen acc)
  | Hexadecimal.D1 l => of_hex_uint_acc l (add 1 (mul sixteen acc))
  | Hexadecimal.D2 l => of_hex_uint_acc l (add 1~0 (mul sixteen acc))
  | Hexadecimal.D3 l => of_hex_uint_acc l (add 1~1 (mul sixteen acc))
  | Hexadecimal.D4 l => of_hex_uint_acc l (add 1~0~0 (mul sixteen acc))
  | Hexadecimal.D5 l => of_hex_uint_acc l (add 1~0~1 (mul sixteen acc))
  | Hexadecimal.D6 l => of_hex_uint_acc l (add 1~1~0 (mul sixteen acc))
  | Hexadecimal.D7 l => of_hex_uint_acc l (add 1~1~1 (mul sixteen acc))
  | Hexadecimal.D8 l => of_hex_uint_acc l (add 1~0~0~0 (mul sixteen acc))
  | Hexadecimal.D9 l => of_hex_uint_acc l (add 1~0~0~1 (mul sixteen acc))
  | Hexadecimal.Da l => of_hex_uint_acc l (add 1~0~1~0 (mul sixteen acc))
  | Hexadecimal.Db l => of_hex_uint_acc l (add 1~0~1~1 (mul sixteen acc))
  | Hexadecimal.Dc l => of_hex_uint_acc l (add 1~1~0~0 (mul sixteen acc))
  | Hexadecimal.Dd l => of_hex_uint_acc l (add 1~1~0~1 (mul sixteen acc))
  | Hexadecimal.De l => of_hex_uint_acc l (add 1~1~1~0 (mul sixteen acc))
  | Hexadecimal.Df l => of_hex_uint_acc l (add 1~1~1~1 (mul sixteen acc))
  end.

Fixpoint of_hex_uint (d:Hexadecimal.uint) : N :=
  match d with
  | Hexadecimal.Nil => N0
  | Hexadecimal.D0 l => of_hex_uint l
  | Hexadecimal.D1 l => Npos (of_hex_uint_acc l 1)
  | Hexadecimal.D2 l => Npos (of_hex_uint_acc l 1~0)
  | Hexadecimal.D3 l => Npos (of_hex_uint_acc l 1~1)
  | Hexadecimal.D4 l => Npos (of_hex_uint_acc l 1~0~0)
  | Hexadecimal.D5 l => Npos (of_hex_uint_acc l 1~0~1)
  | Hexadecimal.D6 l => Npos (of_hex_uint_acc l 1~1~0)
  | Hexadecimal.D7 l => Npos (of_hex_uint_acc l 1~1~1)
  | Hexadecimal.D8 l => Npos (of_hex_uint_acc l 1~0~0~0)
  | Hexadecimal.D9 l => Npos (of_hex_uint_acc l 1~0~0~1)
  | Hexadecimal.Da l => Npos (of_hex_uint_acc l 1~0~1~0)
  | Hexadecimal.Db l => Npos (of_hex_uint_acc l 1~0~1~1)
  | Hexadecimal.Dc l => Npos (of_hex_uint_acc l 1~1~0~0)
  | Hexadecimal.Dd l => Npos (of_hex_uint_acc l 1~1~0~1)
  | Hexadecimal.De l => Npos (of_hex_uint_acc l 1~1~1~0)
  | Hexadecimal.Df l => Npos (of_hex_uint_acc l 1~1~1~1)
  end.

Fixpoint to_little_uint p :=
  match p with
  | 1 => Decimal.D1 Decimal.Nil
  | p~1 => Decimal.Little.succ_double (to_little_uint p)
  | p~0 => Decimal.Little.double (to_little_uint p)
  end.

Definition to_uint p := Decimal.rev (to_little_uint p).

End Pos.

End BinPosDef.
Module Export Stdlib_DOT_PArith_DOT_BinPosDef.
Module Export BinPosDef.
End BinPosDef.

End Stdlib_DOT_PArith_DOT_BinPosDef.

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
Module Export Stdlib_DOT_PArith_DOT_BinPos.
Module Export Stdlib.
Module Export PArith.
Module Export BinPos.
End BinPos.

End PArith.

End Stdlib.

End Stdlib_DOT_PArith_DOT_BinPos.
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

Definition div_eucl (a b:N) : N * N :=
  match a, b with
   | 0,  _ => (0, 0)
   | _, 0  => (0, a)
   | pos na, _ => pos_div_eucl na b
  end.

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
Module Export Stdlib_DOT_NArith_DOT_BinNatDef.
Module Export BinNatDef.
End BinNatDef.

End Stdlib_DOT_NArith_DOT_BinNatDef.
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
Program Definition succ_wd : Proper (eq==>eq) succ := _.
Program Definition pred_wd : Proper (eq==>eq) pred := _.
Program Definition add_wd : Proper (eq==>eq==>eq) add := _.
Program Definition sub_wd : Proper (eq==>eq==>eq) sub := _.
Program Definition mul_wd : Proper (eq==>eq==>eq) mul := _.
Program Definition lt_wd : Proper (eq==>eq==>iff) lt := _.
Program Definition div_wd : Proper (eq==>eq==>eq) div := _.
Program Definition mod_wd : Proper (eq==>eq==>eq) modulo := _.
Program Definition pow_wd : Proper (eq==>eq==>eq) pow := _.
Program Definition testbit_wd : Proper (eq==>eq==>Logic.eq) testbit := _.

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

Number Notation N N.of_num_uint N.to_num_uint : N_scope.
Module Export Stdlib.
Module Export NArith.
Module Export BinNat.
End BinNat.

End NArith.

End Stdlib.
Module Export BinIntDef.
Import Stdlib.PArith.BinPos.
Import Stdlib.NArith.BinNat.

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

Module Export Stdlib_DOT_Strings_DOT_Byte_WRAPPED.
Module Export Byte.
Export Stdlib.Init.Byte.

Definition eqb (a b : byte) : bool
  := let '(a0, (a1, (a2, (a3, (a4, (a5, (a6, a7))))))) := to_bits a in
     let '(b0, (b1, (b2, (b3, (b4, (b5, (b6, b7))))))) := to_bits b in
     (Bool.eqb a0 b0 && Bool.eqb a1 b1 && Bool.eqb a2 b2 && Bool.eqb a3 b3 &&
          Bool.eqb a4 b4 && Bool.eqb a5 b5 && Bool.eqb a6 b6 && Bool.eqb a7 b7)%bool.

End Byte.
Module Export Stdlib.
Module Export Strings.
Module Export Byte.
Include Stdlib_DOT_Strings_DOT_Byte_WRAPPED.Byte.
End Byte.
Module Export ByteCompare.
Import Stdlib.NArith.BinNat.

Module Export ByteN.
Definition N1 := 1%N.
Definition N2 := 2%N.
Definition N3 := 3%N.
Definition N4 := 4%N.
Definition N5 := 5%N.
Definition N6 := 6%N.
Definition N7 := 7%N.
Definition N8 := 8%N.
Definition N9 := 9%N.
Definition N10 := 10%N.
Definition N11 := 11%N.
Definition N12 := 12%N.
Definition N13 := 13%N.
Definition N14 := 14%N.
Definition N15 := 15%N.
Definition N16 := 16%N.
Definition N17 := 17%N.
Definition N18 := 18%N.
Definition N19 := 19%N.
Definition N20 := 20%N.
Definition N21 := 21%N.
Definition N22 := 22%N.
Definition N23 := 23%N.
Definition N24 := 24%N.
Definition N25 := 25%N.
Definition N26 := 26%N.
Definition N27 := 27%N.
Definition N28 := 28%N.
Definition N29 := 29%N.
Definition N30 := 30%N.
Definition N31 := 31%N.
Definition N32 := 32%N.
Definition N33 := 33%N.
Definition N34 := 34%N.
Definition N35 := 35%N.
Definition N36 := 36%N.
Definition N37 := 37%N.
Definition N38 := 38%N.
Definition N39 := 39%N.
Definition N40 := 40%N.
Definition N41 := 41%N.
Definition N42 := 42%N.
Definition N43 := 43%N.
Definition N44 := 44%N.
Definition N45 := 45%N.
Definition N46 := 46%N.
Definition N47 := 47%N.
Definition N48 := 48%N.
Definition N49 := 49%N.
Definition N50 := 50%N.
Definition N51 := 51%N.
Definition N52 := 52%N.
Definition N53 := 53%N.
Definition N54 := 54%N.
Definition N55 := 55%N.
Definition N56 := 56%N.
Definition N57 := 57%N.
Definition N58 := 58%N.
Definition N59 := 59%N.
Definition N60 := 60%N.
Definition N61 := 61%N.
Definition N62 := 62%N.
Definition N63 := 63%N.
Definition N64 := 64%N.
Definition N65 := 65%N.
Definition N66 := 66%N.
Definition N67 := 67%N.
Definition N68 := 68%N.
Definition N69 := 69%N.
Definition N70 := 70%N.
Definition N71 := 71%N.
Definition N72 := 72%N.
Definition N73 := 73%N.
Definition N74 := 74%N.
Definition N75 := 75%N.
Definition N76 := 76%N.
Definition N77 := 77%N.
Definition N78 := 78%N.
Definition N79 := 79%N.
Definition N80 := 80%N.
Definition N81 := 81%N.
Definition N82 := 82%N.
Definition N83 := 83%N.
Definition N84 := 84%N.
Definition N85 := 85%N.
Definition N86 := 86%N.
Definition N87 := 87%N.
Definition N88 := 88%N.
Definition N89 := 89%N.
Definition N90 := 90%N.
Definition N91 := 91%N.
Definition N92 := 92%N.
Definition N93 := 93%N.
Definition N94 := 94%N.
Definition N95 := 95%N.
Definition N96 := 96%N.
Definition N97 := 97%N.
Definition N98 := 98%N.
Definition N99 := 99%N.
Definition N100 := 100%N.
Definition N101 := 101%N.
Definition N102 := 102%N.
Definition N103 := 103%N.
Definition N104 := 104%N.
Definition N105 := 105%N.
Definition N106 := 106%N.
Definition N107 := 107%N.
Definition N108 := 108%N.
Definition N109 := 109%N.
Definition N110 := 110%N.
Definition N111 := 111%N.
Definition N112 := 112%N.
Definition N113 := 113%N.
Definition N114 := 114%N.
Definition N115 := 115%N.
Definition N116 := 116%N.
Definition N117 := 117%N.
Definition N118 := 118%N.
Definition N119 := 119%N.
Definition N120 := 120%N.
Definition N121 := 121%N.
Definition N122 := 122%N.
Definition N123 := 123%N.
Definition N124 := 124%N.
Definition N125 := 125%N.
Definition N126 := 126%N.
Definition N127 := 127%N.
Definition N128 := 128%N.
Definition N129 := 129%N.
Definition N130 := 130%N.
Definition N131 := 131%N.
Definition N132 := 132%N.
Definition N133 := 133%N.
Definition N134 := 134%N.
Definition N135 := 135%N.
Definition N136 := 136%N.
Definition N137 := 137%N.
Definition N138 := 138%N.
Definition N139 := 139%N.
Definition N140 := 140%N.
Definition N141 := 141%N.
Definition N142 := 142%N.
Definition N143 := 143%N.
Definition N144 := 144%N.
Definition N145 := 145%N.
Definition N146 := 146%N.
Definition N147 := 147%N.
Definition N148 := 148%N.
Definition N149 := 149%N.
Definition N150 := 150%N.
Definition N151 := 151%N.
Definition N152 := 152%N.
Definition N153 := 153%N.
Definition N154 := 154%N.
Definition N155 := 155%N.
Definition N156 := 156%N.
Definition N157 := 157%N.
Definition N158 := 158%N.
Definition N159 := 159%N.
Definition N160 := 160%N.
Definition N161 := 161%N.
Definition N162 := 162%N.
Definition N163 := 163%N.
Definition N164 := 164%N.
Definition N165 := 165%N.
Definition N166 := 166%N.
Definition N167 := 167%N.
Definition N168 := 168%N.
Definition N169 := 169%N.
Definition N170 := 170%N.
Definition N171 := 171%N.
Definition N172 := 172%N.
Definition N173 := 173%N.
Definition N174 := 174%N.
Definition N175 := 175%N.
Definition N176 := 176%N.
Definition N177 := 177%N.
Definition N178 := 178%N.
Definition N179 := 179%N.
Definition N180 := 180%N.
Definition N181 := 181%N.
Definition N182 := 182%N.
Definition N183 := 183%N.
Definition N184 := 184%N.
Definition N185 := 185%N.
Definition N186 := 186%N.
Definition N187 := 187%N.
Definition N188 := 188%N.
Definition N189 := 189%N.
Definition N190 := 190%N.
Definition N191 := 191%N.
Definition N192 := 192%N.
Definition N193 := 193%N.
Definition N194 := 194%N.
Definition N195 := 195%N.
Definition N196 := 196%N.
Definition N197 := 197%N.
Definition N198 := 198%N.
Definition N199 := 199%N.
Definition N200 := 200%N.
Definition N201 := 201%N.
Definition N202 := 202%N.
Definition N203 := 203%N.
Definition N204 := 204%N.
Definition N205 := 205%N.
Definition N206 := 206%N.
Definition N207 := 207%N.
Definition N208 := 208%N.
Definition N209 := 209%N.
Definition N210 := 210%N.
Definition N211 := 211%N.
Definition N212 := 212%N.
Definition N213 := 213%N.
Definition N214 := 214%N.
Definition N215 := 215%N.
Definition N216 := 216%N.
Definition N217 := 217%N.
Definition N218 := 218%N.
Definition N219 := 219%N.
Definition N220 := 220%N.
Definition N221 := 221%N.
Definition N222 := 222%N.
Definition N223 := 223%N.
Definition N224 := 224%N.
Definition N225 := 225%N.
Definition N226 := 226%N.
Definition N227 := 227%N.
Definition N228 := 228%N.
Definition N229 := 229%N.
Definition N230 := 230%N.
Definition N231 := 231%N.
Definition N232 := 232%N.
Definition N233 := 233%N.
Definition N234 := 234%N.
Definition N235 := 235%N.
Definition N236 := 236%N.
Definition N237 := 237%N.
Definition N238 := 238%N.
Definition N239 := 239%N.
Definition N240 := 240%N.
Definition N241 := 241%N.
Definition N242 := 242%N.
Definition N243 := 243%N.
Definition N244 := 244%N.
Definition N245 := 245%N.
Definition N246 := 246%N.
Definition N247 := 247%N.
Definition N248 := 248%N.
Definition N249 := 249%N.
Definition N250 := 250%N.
Definition N251 := 251%N.
Definition N252 := 252%N.
Definition N253 := 253%N.
Definition N254 := 254%N.
Definition N255 := 255%N.

Definition to_N (x : byte) :=
  match x with
  | "000"%byte => N0
  | "001"%byte => N1
  | "002"%byte => N2
  | "003"%byte => N3
  | "004"%byte => N4
  | "005"%byte => N5
  | "006"%byte => N6
  | "007"%byte => N7
  | "008"%byte => N8
  | "009"%byte => N9
  | "010"%byte => N10
  | "011"%byte => N11
  | "012"%byte => N12
  | "013"%byte => N13
  | "014"%byte => N14
  | "015"%byte => N15
  | "016"%byte => N16
  | "017"%byte => N17
  | "018"%byte => N18
  | "019"%byte => N19
  | "020"%byte => N20
  | "021"%byte => N21
  | "022"%byte => N22
  | "023"%byte => N23
  | "024"%byte => N24
  | "025"%byte => N25
  | "026"%byte => N26
  | "027"%byte => N27
  | "028"%byte => N28
  | "029"%byte => N29
  | "030"%byte => N30
  | "031"%byte => N31
  | "032"%byte => N32
  | "033"%byte => N33
  | "034"%byte => N34
  | "035"%byte => N35
  | "036"%byte => N36
  | "037"%byte => N37
  | "038"%byte => N38
  | "039"%byte => N39
  | "040"%byte => N40
  | "041"%byte => N41
  | "042"%byte => N42
  | "043"%byte => N43
  | "044"%byte => N44
  | "045"%byte => N45
  | "046"%byte => N46
  | "047"%byte => N47
  | "048"%byte => N48
  | "049"%byte => N49
  | "050"%byte => N50
  | "051"%byte => N51
  | "052"%byte => N52
  | "053"%byte => N53
  | "054"%byte => N54
  | "055"%byte => N55
  | "056"%byte => N56
  | "057"%byte => N57
  | "058"%byte => N58
  | "059"%byte => N59
  | "060"%byte => N60
  | "061"%byte => N61
  | "062"%byte => N62
  | "063"%byte => N63
  | "064"%byte => N64
  | "065"%byte => N65
  | "066"%byte => N66
  | "067"%byte => N67
  | "068"%byte => N68
  | "069"%byte => N69
  | "070"%byte => N70
  | "071"%byte => N71
  | "072"%byte => N72
  | "073"%byte => N73
  | "074"%byte => N74
  | "075"%byte => N75
  | "076"%byte => N76
  | "077"%byte => N77
  | "078"%byte => N78
  | "079"%byte => N79
  | "080"%byte => N80
  | "081"%byte => N81
  | "082"%byte => N82
  | "083"%byte => N83
  | "084"%byte => N84
  | "085"%byte => N85
  | "086"%byte => N86
  | "087"%byte => N87
  | "088"%byte => N88
  | "089"%byte => N89
  | "090"%byte => N90
  | "091"%byte => N91
  | "092"%byte => N92
  | "093"%byte => N93
  | "094"%byte => N94
  | "095"%byte => N95
  | "096"%byte => N96
  | "097"%byte => N97
  | "098"%byte => N98
  | "099"%byte => N99
  | "100"%byte => N100
  | "101"%byte => N101
  | "102"%byte => N102
  | "103"%byte => N103
  | "104"%byte => N104
  | "105"%byte => N105
  | "106"%byte => N106
  | "107"%byte => N107
  | "108"%byte => N108
  | "109"%byte => N109
  | "110"%byte => N110
  | "111"%byte => N111
  | "112"%byte => N112
  | "113"%byte => N113
  | "114"%byte => N114
  | "115"%byte => N115
  | "116"%byte => N116
  | "117"%byte => N117
  | "118"%byte => N118
  | "119"%byte => N119
  | "120"%byte => N120
  | "121"%byte => N121
  | "122"%byte => N122
  | "123"%byte => N123
  | "124"%byte => N124
  | "125"%byte => N125
  | "126"%byte => N126
  | "127"%byte => N127
  | "128"%byte => N128
  | "129"%byte => N129
  | "130"%byte => N130
  | "131"%byte => N131
  | "132"%byte => N132
  | "133"%byte => N133
  | "134"%byte => N134
  | "135"%byte => N135
  | "136"%byte => N136
  | "137"%byte => N137
  | "138"%byte => N138
  | "139"%byte => N139
  | "140"%byte => N140
  | "141"%byte => N141
  | "142"%byte => N142
  | "143"%byte => N143
  | "144"%byte => N144
  | "145"%byte => N145
  | "146"%byte => N146
  | "147"%byte => N147
  | "148"%byte => N148
  | "149"%byte => N149
  | "150"%byte => N150
  | "151"%byte => N151
  | "152"%byte => N152
  | "153"%byte => N153
  | "154"%byte => N154
  | "155"%byte => N155
  | "156"%byte => N156
  | "157"%byte => N157
  | "158"%byte => N158
  | "159"%byte => N159
  | "160"%byte => N160
  | "161"%byte => N161
  | "162"%byte => N162
  | "163"%byte => N163
  | "164"%byte => N164
  | "165"%byte => N165
  | "166"%byte => N166
  | "167"%byte => N167
  | "168"%byte => N168
  | "169"%byte => N169
  | "170"%byte => N170
  | "171"%byte => N171
  | "172"%byte => N172
  | "173"%byte => N173
  | "174"%byte => N174
  | "175"%byte => N175
  | "176"%byte => N176
  | "177"%byte => N177
  | "178"%byte => N178
  | "179"%byte => N179
  | "180"%byte => N180
  | "181"%byte => N181
  | "182"%byte => N182
  | "183"%byte => N183
  | "184"%byte => N184
  | "185"%byte => N185
  | "186"%byte => N186
  | "187"%byte => N187
  | "188"%byte => N188
  | "189"%byte => N189
  | "190"%byte => N190
  | "191"%byte => N191
  | "192"%byte => N192
  | "193"%byte => N193
  | "194"%byte => N194
  | "195"%byte => N195
  | "196"%byte => N196
  | "197"%byte => N197
  | "198"%byte => N198
  | "199"%byte => N199
  | "200"%byte => N200
  | "201"%byte => N201
  | "202"%byte => N202
  | "203"%byte => N203
  | "204"%byte => N204
  | "205"%byte => N205
  | "206"%byte => N206
  | "207"%byte => N207
  | "208"%byte => N208
  | "209"%byte => N209
  | "210"%byte => N210
  | "211"%byte => N211
  | "212"%byte => N212
  | "213"%byte => N213
  | "214"%byte => N214
  | "215"%byte => N215
  | "216"%byte => N216
  | "217"%byte => N217
  | "218"%byte => N218
  | "219"%byte => N219
  | "220"%byte => N220
  | "221"%byte => N221
  | "222"%byte => N222
  | "223"%byte => N223
  | "224"%byte => N224
  | "225"%byte => N225
  | "226"%byte => N226
  | "227"%byte => N227
  | "228"%byte => N228
  | "229"%byte => N229
  | "230"%byte => N230
  | "231"%byte => N231
  | "232"%byte => N232
  | "233"%byte => N233
  | "234"%byte => N234
  | "235"%byte => N235
  | "236"%byte => N236
  | "237"%byte => N237
  | "238"%byte => N238
  | "239"%byte => N239
  | "240"%byte => N240
  | "241"%byte => N241
  | "242"%byte => N242
  | "243"%byte => N243
  | "244"%byte => N244
  | "245"%byte => N245
  | "246"%byte => N246
  | "247"%byte => N247
  | "248"%byte => N248
  | "249"%byte => N249
  | "250"%byte => N250
  | "251"%byte => N251
  | "252"%byte => N252
  | "253"%byte => N253
  | "254"%byte => N254
  | "255"%byte => N255
  end.
End ByteN.

Definition eqb (x y : byte) :=
  N.eqb (ByteN.to_N x) (ByteN.to_N y).

Definition compare (x y : byte) :=
  N.compare (ByteN.to_N x) (ByteN.to_N y).
Export Stdlib.PArith.BinPos.
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
Program Definition succ_wd : Proper (eq==>eq) succ := _.
Program Definition pred_wd : Proper (eq==>eq) pred := _.
Program Definition opp_wd : Proper (eq==>eq) opp := _.
Program Definition add_wd : Proper (eq==>eq==>eq) add := _.
Program Definition sub_wd : Proper (eq==>eq==>eq) sub := _.
Program Definition mul_wd : Proper (eq==>eq==>eq) mul := _.
Program Definition lt_wd : Proper (eq==>eq==>iff) lt := _.
Program Definition div_wd : Proper (eq==>eq==>eq) div := _.
Program Definition mod_wd : Proper (eq==>eq==>eq) modulo := _.
Program Definition quot_wd : Proper (eq==>eq==>eq) quot := _.
Program Definition rem_wd : Proper (eq==>eq==>eq) rem := _.
Program Definition pow_wd : Proper (eq==>eq==>eq) pow := _.
Program Definition testbit_wd : Proper (eq==>eq==>Logic.eq) testbit := _.

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

Number Notation Z Z.of_num_int Z.to_num_int : Z_scope.
Infix "<" := Z.lt : Z_scope.

Declare Scope Int_scope.
#[local] Open Scope Int_scope.

Module Type Int.

  Parameter t : Set.

  Parameter _0 : t.
  Parameter _1 : t.
  Parameter _2 : t.
  Parameter add : t -> t -> t.
  Parameter max : t -> t -> t.

  Notation "0" := _0 : Int_scope.
  Notation "1" := _1 : Int_scope.
  Notation "2" := _2 : Int_scope.
  Infix "+" := add : Int_scope.
  Axiom ltb : t -> t -> bool.
  Axiom leb : t -> t -> bool.
  Infix "<?" := ltb.
  Infix "<=?" := leb.

End Int.

Module MoreInt (Import I:Int).

End MoreInt.

Module Z_as_Int <: Int.
  Definition t := Z.
  Definition _0 := 0.
  Definition _1 := 1.
  Definition _2 := 2.
  Definition add := Z.add.
  Definition max := Z.max.
  Definition ltb := Z.ltb.
  Definition leb := Z.leb.
End Z_as_Int.

Export Stdlib.Arith.Arith_base.
Import Equations.Prop.Classes.

#[export]
Polymorphic Instance prod_eqdec {A B} `(EqDec A) `(EqDec B) : EqDec (prod A B).
Admitted.
Module Export ReflectEq.

Inductive reflectProp (P : Prop) : bool -> Prop :=
 | reflectP : P -> reflectProp P true
 | reflectF : ~ P -> reflectProp P false.

Lemma reflect_reflectProp_2 {A B} {P : A -> B -> Prop} {b} : (forall x y, reflect (P x y) (b x y)) -> (forall x y, reflectProp (P x y) (b x y)).
Admitted.

Class ReflectEq A := {
  eqb : A -> A -> bool ;
  eqb_spec : forall x y : A, reflectProp (x = y) (eqb x y)
}.

#[global, program] Instance ReflectEq_EqDec {A} (R : ReflectEq A) : EqDec A := {
  eq_dec := fun x y =>
    match eqb x y with
    | true => left _
    | false => right _
    end }.
Admit Obligations.

#[global] Instance reflect_nat : ReflectEq nat := {
  eqb_spec := reflect_reflectProp_2 PeanoNat.Nat.eqb_spec
}.
Import Stdlib.Structures.OrderedType.

Definition compare_cont (c : comparison) (d : comparison) : comparison :=
  match c with
  | Datatypes.Lt => Datatypes.Lt
  | Datatypes.Eq => d
  | Datatypes.Gt => Datatypes.Gt
  end.

Module BoolOT <: UsualOrderedType.
  Definition t := bool.

  Definition compare (x y : bool) : comparison :=
    if x then if y then Eq else Gt else if y then Lt else Eq.

  Definition lt (x y : bool) :=
    if x then False else y = true.

  Definition compare_spec (x y : bool) : CompareSpec (x = y) (lt x y) (lt y x) (compare x y).
Admitted.

  Definition eq : t -> t -> Prop := eq.
  Definition eq_equiv : Equivalence eq := _.

  Definition eq_dec (l1 l2 : t) : {l1 = l2}+{l1 <> l2}.
Admitted.

  Definition lt_strorder : StrictOrder lt.
Admitted.

  Definition lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.

End BoolOT.

Module ListOrderedType (A : UsualOrderedType) <: UsualOrderedType.
  Definition t := list A.t.
Import ListNotations.

  Fixpoint compare (l1 l2 : t) : comparison :=
    match l1, l2 with
    | [], [] => Eq
    | hd :: tl, hd' :: tl' => compare_cont (A.compare hd hd') (compare tl tl')
    | [], _ :: _ => Lt
    | _, [] => Gt
    end.

  Definition eq : t -> t -> Prop := eq.
  Definition eq_equiv : Equivalence eq := _.

  Inductive lt_ : t -> t -> Prop :=
  | lt_nil_cons hd tl : lt_ [] (hd :: tl)
  | lt_cons_cons_hd hd tl hd' tl' : A.lt hd hd' -> lt_ (hd :: tl) (hd' :: tl')
  | lt_cons_cons_tl hd tl tl' : lt_ tl tl' -> lt_ (hd :: tl) (hd :: tl').

  Definition lt := lt_.

  Global Instance lt_strorder : StrictOrder lt.
Admitted.

  Global Instance lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.

  Definition compare_spec :
    forall x y : t, CompareSpec (x = y) (lt x y) (lt y x) (compare x y).
Admitted.

  Definition eqb (l1 l2 : t) : bool
    := match compare l1 l2 with Eq => true | _ => false end.

  Program Definition eqb_dec (x y : t) : { x = y } + { x <> y } :=
    match eqb x y with
    | true => left _
    | false => right _
    end.
Admit Obligations.

  Global Instance eq_dec : EqDec t := { eq_dec := eqb_dec }.

End ListOrderedType.
Module Export MSetGenTree.
Import Stdlib.MSets.MSetInterface.
#[local] Open Scope lazy_bool_scope.

Module Type InfoTyp.
 Parameter t : Set.
End InfoTyp.

Module Type Ops (X:OrderedType)(Info:InfoTyp).

Definition elt := X.t.

Inductive tree  : Type :=
| Leaf : tree
| Node : Info.t -> tree -> X.t -> tree -> tree.

Definition empty := Leaf.

Definition is_empty t :=
 match t with
 | Leaf => true
 | _ => false
 end.

Fixpoint mem x t :=
 match t with
 | Leaf => false
 | Node _ l k r =>
   match X.compare x k with
     | Lt => mem x l
     | Eq => true
     | Gt => mem x r
   end
 end.

Fixpoint min_elt (t : tree) : option elt :=
 match t with
 | Leaf => None
 | Node _ Leaf x r => Some x
 | Node _ l x r => min_elt l
 end.

Fixpoint max_elt (t : tree) : option elt :=
  match t with
  | Leaf => None
  | Node _ l x Leaf => Some x
  | Node _ l x r => max_elt r
  end.

Definition choose := min_elt.

Fixpoint fold {A: Type} (f: elt -> A -> A) (t: tree) (base: A) : A :=
  match t with
  | Leaf => base
  | Node _ l x r => fold f r (f x (fold f l base))
 end.

Fixpoint elements_aux acc s :=
  match s with
   | Leaf => acc
   | Node _ l x r => elements_aux (x :: elements_aux acc r) l
  end.

Definition elements := elements_aux nil.

Fixpoint cardinal (s : tree) : nat :=
  match s with
   | Leaf => 0
   | Node _ l _ r => S (cardinal l + cardinal r)
  end.

Fixpoint for_all (f:elt->bool) s := match s with
  | Leaf => true
  | Node _ l x r => f x &&& for_all f l &&& for_all f r
end.

Fixpoint exists_ (f:elt->bool) s := match s with
  | Leaf => false
  | Node _ l x r => f x ||| exists_ f l ||| exists_ f r
end.

Inductive enumeration :=
 | End : enumeration
 | More : elt -> tree -> enumeration -> enumeration.

Fixpoint cons s e : enumeration :=
 match s with
  | Leaf => e
  | Node _ l x r => cons l (More x r e)
 end.

Definition compare_more x1 (cont:enumeration->comparison) e2 :=
 match e2 with
 | End => Gt
 | More x2 r2 e2 =>
     match X.compare x1 x2 with
      | Eq => cont (cons r2 e2)
      | Lt => Lt
      | Gt => Gt
     end
 end.

Fixpoint compare_cont s1 (cont:enumeration->comparison) e2 :=
 match s1 with
  | Leaf => cont e2
  | Node _ l1 x1 r1 =>
     compare_cont l1 (compare_more x1 (compare_cont r1 cont)) e2
  end.

Definition compare_end e2 :=
 match e2 with End => Eq | _ => Lt end.

Definition compare s1 s2 := compare_cont s1 compare_end (cons s2 End).

Definition equal s1 s2 :=
 match compare s1 s2 with Eq => true | _ => false end.

Fixpoint subsetl (subset_l1 : tree -> bool) x1 s2 : bool :=
 match s2 with
  | Leaf => false
  | Node _ l2 x2 r2 =>
     match X.compare x1 x2 with
      | Eq => subset_l1 l2
      | Lt => subsetl subset_l1 x1 l2
      | Gt => mem x1 r2 &&& subset_l1 s2
     end
 end.

Fixpoint subsetr (subset_r1 : tree -> bool) x1 s2 : bool :=
 match s2 with
  | Leaf => false
  | Node _ l2 x2 r2 =>
     match X.compare x1 x2 with
      | Eq => subset_r1 r2
      | Lt => mem x1 l2 &&& subset_r1 s2
      | Gt => subsetr subset_r1 x1 r2
     end
 end.

Fixpoint subset s1 s2 : bool := match s1, s2 with
  | Leaf, _ => true
  | Node _ _ _ _, Leaf => false
  | Node _ l1 x1 r1, Node _ l2 x2 r2 =>
     match X.compare x1 x2 with
      | Eq => subset l1 l2 &&& subset r1 r2
      | Lt => subsetl (subset l1) x1 l2 &&& subset r1 s2
      | Gt => subsetr (subset r1) x1 r2 &&& subset l1 s2
     end
 end.

End Ops.

Module Type Props (X:OrderedType)(Info:InfoTyp)(Import M:Ops X Info).

Inductive InT (x : elt) : tree -> Prop :=
  | IsRoot : forall c l r y, X.eq x y -> InT x (Node c l y r)
  | InLeft : forall c l r y, InT x l -> InT x (Node c l y r)
  | InRight : forall c l r y, InT x r -> InT x (Node c l y r).

Definition In := InT.

Definition Equal s s' := forall a : elt, InT a s <-> InT a s'.
Definition Subset s s' := forall a : elt, InT a s -> InT a s'.
Definition Empty s := forall a : elt, ~ InT a s.
Definition For_all (P : elt -> Prop) s := forall x, InT x s -> P x.
Definition Exists (P : elt -> Prop) s := exists x, InT x s /\ P x.

Definition lt_tree x s := forall y, InT y s -> X.lt y x.
Definition gt_tree x s := forall y, InT y s -> X.lt x y.

Inductive bst : tree -> Prop :=
  | BSLeaf : bst Leaf
  | BSNode : forall c x l r, bst l -> bst r ->
     lt_tree x l -> gt_tree x r -> bst (Node c l x r).

Definition IsOk := bst.

Class Ok (s:tree) : Prop := ok : bst s.

Fixpoint ltb_tree x s :=
 match s with
  | Leaf => true
  | Node _ l y r =>
     match X.compare x y with
      | Gt => ltb_tree x l && ltb_tree x r
      | _ => false
     end
 end.

Fixpoint gtb_tree x s :=
 match s with
  | Leaf => true
  | Node _ l y r =>
     match X.compare x y with
      | Lt => gtb_tree x l && gtb_tree x r
      | _ => false
     end
 end.

Fixpoint isok s :=
 match s with
  | Leaf => true
  | Node _  l x r => isok l && isok r && ltb_tree x l && gtb_tree x r
 end.

#[global]
Instance isok_Ok s : isok s = true -> Ok s | 10.
Admitted.

#[global]
Instance In_compat : Proper (X.eq==>eq==>iff) InT.
Admitted.

Lemma empty_spec : Empty empty.
Admitted.

#[global]
Instance empty_ok : Ok empty.
Admitted.

Lemma is_empty_spec : forall s, is_empty s = true <-> Empty s.
Admitted.

Lemma mem_spec : forall s x `{Ok s}, mem x s = true <-> InT x s.
Admitted.

Lemma min_elt_spec1 s x : min_elt s = Some x -> InT x s.
Admitted.

Lemma min_elt_spec2 s x y `{Ok s} :
 min_elt s = Some x -> InT y s -> ~ X.lt y x.
Admitted.

Lemma min_elt_spec3 s : min_elt s = None -> Empty s.
Admitted.

Lemma max_elt_spec1 s x : max_elt s = Some x -> InT x s.
Admitted.

Lemma max_elt_spec2 s x y `{Ok s} :
 max_elt s = Some x -> InT y s -> ~ X.lt x y.
Admitted.

Lemma max_elt_spec3 s : max_elt s = None -> Empty s.
Admitted.

Lemma choose_spec1 : forall s x, choose s = Some x -> InT x s.
Admitted.

Lemma choose_spec2 : forall s, choose s = None -> Empty s.
Admitted.

Lemma choose_spec3 : forall s s' x x' `{Ok s, Ok s'},
  choose s = Some x -> choose s' = Some x' ->
  Equal s s' -> X.eq x x'.
Admitted.

Lemma elements_spec1 : forall s x, InA X.eq x (elements s) <-> InT x s.
Admitted.

Lemma elements_spec2 : forall s `(Ok s), sort X.lt (elements s).
Admitted.

Lemma elements_spec2w : forall s `(Ok s), NoDupA X.eq (elements s).
Admitted.

Lemma elements_cardinal : forall s : tree, cardinal s = length (elements s).
Admitted.

Definition cardinal_spec (s:tree)(Hs:Ok s) := elements_cardinal s.

Lemma for_all_spec s f : Proper (X.eq==>eq) f ->
 (for_all f s = true <-> For_all (fun x => f x = true) s).
Admitted.

Lemma exists_spec s f : Proper (X.eq==>eq) f ->
 (exists_ f s = true <-> Exists (fun x => f x = true) s).
Admitted.

Lemma fold_spec (s:tree) {A} (i : A) (f : elt -> A -> A) :
 fold f s i = fold_left (flip f) (elements s) i.
Admitted.

Lemma subset_spec : forall s1 s2 `{Ok s1, Ok s2},
 (subset s1 s2 = true <-> Subset s1 s2).
Admitted.

Module L := MSetInterface.MakeListOrdering X.

Definition eq := Equal.
#[global]
Instance eq_equiv : Equivalence eq.
Admitted.

Definition lt (s1 s2 : tree) : Prop :=
 exists s1' s2', Ok s1' /\ Ok s2' /\ eq s1 s1' /\ eq s2 s2'
   /\ L.lt (elements s1') (elements s2').

#[global]
Instance lt_strorder : StrictOrder lt.
Admitted.

#[global]
Instance lt_compat : Proper (eq==>eq==>iff) lt.
Admitted.

Lemma compare_spec : forall s1 s2 `{Ok s1, Ok s2},
 CompSpec eq lt s1 s2 (compare s1 s2).
Admitted.

Lemma equal_spec : forall s1 s2 `{Ok s1, Ok s2},
 equal s1 s2 = true <-> eq s1 s2.
Admitted.

End Props.
Module Export MSetProperties.

Module WPropertiesOn (Import E : DecidableType)(M : WSetsOn E).
  Import M.

  Definition of_list (l : list elt) := List.fold_right add empty l.

End WPropertiesOn.

Module WProperties (M:WSets) := WPropertiesOn M.E M.
Module Properties := WProperties.

Module OrdProperties (M:Sets).
  Module Import P := Properties M.

End OrdProperties.
Module Export MSetAVL.

Module Ops (Import I:Int)(X:OrderedType) <: MSetInterface.Ops X.
#[local] Notation int := I.t.

Include MSetGenTree.Ops X I.

Definition t := tree.

Definition height (s : t) : int :=
  match s with
  | Leaf => 0
  | Node h _ _ _ => h
  end.

Definition singleton x := Node 1 Leaf x Leaf.

Definition create l x r :=
   Node (max (height l) (height r) + 1) l x r.

Definition assert_false := create.

Definition bal l x r :=
  let hl := height l in
  let hr := height r in
  if (hr+2) <? hl then
    match l with
     | Leaf => assert_false l x r
     | Node _ ll lx lr =>
       if (height lr) <=? (height ll) then
         create ll lx (create lr x r)
       else
         match lr with
          | Leaf => assert_false l x r
          | Node _ lrl lrx lrr =>
              create (create ll lx lrl) lrx (create lrr x r)
         end
    end
  else
    if (hl+2) <? hr then
      match r with
       | Leaf => assert_false l x r
       | Node _ rl rx rr =>
         if (height rl) <=? (height rr) then
            create (create l x rl) rx rr
         else
           match rl with
            | Leaf => assert_false l x r
            | Node _ rll rlx rlr =>
                create (create l x rll) rlx (create rlr rx rr)
           end
      end
    else
      create l x r.

Fixpoint add x s := match s with
   | Leaf => Node 1 Leaf x Leaf
   | Node h l y r =>
      match X.compare x y with
         | Lt => bal (add x l) y r
         | Eq => Node h l y r
         | Gt => bal l y (add x r)
      end
  end.

Fixpoint join l : elt -> t -> t :=
  match l with
    | Leaf => add
    | Node lh ll lx lr => fun x =>
       fix join_aux (r:t) : t := match r with
          | Leaf => add x l
          | Node rh rl rx rr =>
               if (rh+2) <? lh then bal ll lx (join lr x r)
               else if (lh+2) <? rh then bal (join_aux rl) rx rr
               else create l x r
          end
  end.

Fixpoint remove_min l x r : t*elt :=
  match l with
    | Leaf => (r,x)
    | Node lh ll lx lr =>
       let (l',m) := remove_min ll lx lr in (bal l' x r, m)
  end.

Definition merge s1 s2 :=  match s1,s2 with
  | Leaf, _ => s2
  | _, Leaf => s1
  | _, Node _ l2 x2 r2 =>
        let (s2',m) := remove_min l2 x2 r2 in bal s1 m s2'
end.

Fixpoint remove x s := match s with
  | Leaf => Leaf
  | Node _ l y r =>
      match X.compare x y with
         | Lt => bal (remove x l) y r
         | Eq => merge l r
         | Gt => bal l y (remove x r)
      end
   end.

Definition concat s1 s2 :=
   match s1, s2 with
      | Leaf, _ => s2
      | _, Leaf => s1
      | _, Node _ l2 x2 r2 =>
            let (s2',m) := remove_min l2 x2 r2 in
            join s1 m s2'
   end.

Record triple := mktriple { t_left:t; t_in:bool; t_right:t }.
Notation "<< l , b , r >>" := (mktriple l b r) (at level 0).

Fixpoint split x s : triple := match s with
  | Leaf => << Leaf, false, Leaf >>
  | Node _ l y r =>
     match X.compare x y with
      | Lt => let (ll,b,rl) := split x l in << ll, b, join rl y r >>
      | Eq => << l, true, r >>
      | Gt => let (rl,b,rr) := split x r in << join l y rl, b, rr >>
     end
 end.

Fixpoint inter s1 s2 := match s1, s2 with
    | Leaf, _ => Leaf
    | _, Leaf => Leaf
    | Node _ l1 x1 r1, _ =>
            let (l2',pres,r2') := split x1 s2 in
            if pres then join (inter l1 l2') x1 (inter r1 r2')
            else concat (inter l1 l2') (inter r1 r2')
    end.

Fixpoint diff s1 s2 := match s1, s2 with
 | Leaf, _ => Leaf
 | _, Leaf => s1
 | Node _ l1 x1 r1, _ =>
    let (l2',pres,r2') := split x1 s2 in
    if pres then concat (diff l1 l2') (diff r1 r2')
    else join (diff l1 l2') x1 (diff r1 r2')
end.

Fixpoint union s1 s2 :=
 match s1, s2 with
  | Leaf, _ => s2
  | _, Leaf => s1
  | Node _ l1 x1 r1, _ =>
     let (l2',_,r2') := split x1 s2 in
     join (union l1 l2') x1 (union r1 r2')
 end.

Fixpoint filter (f:elt->bool) s := match s with
  | Leaf => Leaf
  | Node _ l x r =>
    let l' := filter f l in
    let r' := filter f r in
    if f x then join l' x r' else concat l' r'
 end.

Fixpoint partition (f:elt->bool)(s : t) : t*t :=
  match s with
   | Leaf => (Leaf, Leaf)
   | Node _ l x r =>
      let (l1,l2) := partition f l in
      let (r1,r2) := partition f r in
      if f x then (join l1 x r1, concat l2 r2)
      else (concat l1 r1, join l2 x r2)
  end.

End Ops.

Module MakeRaw (Import I:Int)(X:OrderedType) <: RawSets X.
Include Ops I X.

Include MSetGenTree.Props X I.

Notation "s #1" := (fst s) (at level 1, format "s '#1'") : pair_scope.
Notation "s #2" := (snd s) (at level 1, format "s '#2'") : pair_scope.

#[local] Open Scope pair_scope.

Lemma singleton_spec : forall x y, InT y (singleton x) <-> X.eq y x.
Admitted.

#[global]
Instance singleton_ok x : Ok (singleton x).
Admitted.

Lemma add_spec : forall s x y `{Ok s},
 InT y (add x s) <-> X.eq y x \/ InT y s.
Admitted.

#[global]
Instance add_ok s x `(Ok s) : Ok (add x s).
Admitted.

Lemma remove_spec : forall s x y `{Ok s},
 (InT y (remove x s) <-> InT y s /\ ~ X.eq y x).
Admitted.

#[global]
Instance remove_ok s x `(Ok s) : Ok (remove x s).
Admitted.

Lemma inter_spec : forall s1 s2 y `{Ok s1, Ok s2},
 (InT y (inter s1 s2) <-> InT y s1 /\ InT y s2).
Admitted.

#[global]
Instance inter_ok s1 s2 `(Ok s1, Ok s2) : Ok (inter s1 s2).
Admitted.

Lemma diff_spec : forall s1 s2 y `{Ok s1, Ok s2},
 (InT y (diff s1 s2) <-> InT y s1 /\ ~InT y s2).
Admitted.

#[global]
Instance diff_ok s1 s2 `(Ok s1, Ok s2) : Ok (diff s1 s2).
Admitted.

Lemma union_spec : forall s1 s2 y `{Ok s1, Ok s2},
 (InT y (union s1 s2) <-> InT y s1 \/ InT y s2).
Admitted.

#[global]
Instance union_ok s1 s2 : forall `(Ok s1, Ok s2), Ok (union s1 s2).
Admitted.

Lemma filter_spec : forall s x f,
 Proper (X.eq==>Logic.eq) f ->
 (InT x (filter f s) <-> InT x s /\ f x = true).
Admitted.

#[global]
Instance filter_ok s f `(H : Ok s) : Ok (filter f s).
Admitted.

Lemma partition_spec1 s f :
 Proper (X.eq==>Logic.eq) f ->
 Equal (partition f s)#1 (filter f s).
Admitted.

Lemma partition_spec2 s f :
 Proper (X.eq==>Logic.eq) f ->
 Equal (partition f s)#2 (filter (fun x => negb (f x)) s).
Admitted.

#[global]
Instance partition_ok1 s f `(Ok s) : Ok (partition f s)#1.
Admitted.

#[global]
Instance partition_ok2 s f `(Ok s) : Ok (partition f s)#2.
Admitted.

End MakeRaw.

Module IntMake (I:Int)(X: OrderedType) <: S with Module E := X.
 Module Raw := MakeRaw I X.
 Include Raw2Sets X Raw.
End IntMake.

Module Make (X: OrderedType) <: S with Module E := X
 :=IntMake(Z_as_Int)(X).
Import Stdlib.Strings.Byte.

Global Program Instance byte_reflect_eq : ReflectEq byte :=
  {| ReflectEq.eqb := eqb |}.
Admit Obligations.
Module Export bytestring.

Module Export String.
  Inductive t : Set :=
  | EmptyString
  | String (_ : Byte.byte) (_ : t).

  Fixpoint eqb (a b : t) : bool :=
    match a , b with
    | EmptyString , EmptyString => true
    | String x xs , String y ys =>
      if ByteCompare.eqb x y then eqb xs ys else false
    | _ , _ => false
    end.

  Fixpoint compare (xs ys : t) : comparison :=
    match xs , ys with
    | EmptyString , EmptyString => Eq
    | EmptyString , _ => Lt
    | _ , EmptyString => Gt
    | String x xs , String y ys =>
      match ByteCompare.compare x y with
      | Eq => compare xs ys
      | x => x
      end
    end.
Abbreviation string := String.t.

Module OT_byte <: OrderedType.OrderedType with Definition t := Byte.byte.
  Definition t := Byte.byte.
  Definition eq := @Logic.eq t.
  Definition lt := fun l r => ByteCompare.compare l r = Lt.
  Theorem eq_refl : forall x : t, eq x x.
Admitted.
  Theorem eq_sym : forall x y : t, eq x y -> eq y x.
Admitted.
  Theorem eq_trans : forall x y z : t, eq x y -> eq y z -> eq x z.
Admitted.
  Theorem lt_trans : forall x y z : t, lt x y -> lt y z -> lt x z.
Admitted.
  Theorem lt_not_eq : forall x y : t, lt x y -> not (eq x y).
Admitted.
  Definition compare (x y : t) : OrderedType.Compare lt eq x y.
Admitted.

  Definition eq_dec : forall x y : t, {eq x y} + {not (eq x y)} := Classes.eq_dec.
End OT_byte.

Module StringOT <: UsualOrderedType.
  Definition t := string.

  Definition eq : t -> t -> Prop := eq.
  Definition eq_equiv : Equivalence eq := _.

  Definition compare := String.compare.
  Definition lt x y : Prop := compare x y = Lt.

  Theorem compare_spec : forall x y, CompareSpec (x = y) (lt x y) (lt y x) (compare x y).
Admitted.

  #[global] Program Instance reflect_eq_string : ReflectEq t := {
    eqb := eqb
  }.
Admit Obligations.

  Definition eq_dec : forall x y : t, {eq x y} + {not (eq x y)} := Classes.eq_dec.

  Global Instance lt_strorder : StrictOrder lt.
Admitted.

  Definition lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.

End StringOT.

Abbreviation string_compare := StringOT.compare.
Export ExtLib.Structures.Monads.

Import MonadNotation.

Open Scope monad.
Export MetaRocq.Utils.MRProd.

Module Export MetaRocq_DOT_Common_DOT_Kernames_WRAPPED.
Module Export Kernames.

Definition ident   := string.

Definition qualid  := string.

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

Inductive global_reference :=
| VarRef : ident -> global_reference
| ConstRef : kername -> global_reference
| IndRef : inductive -> global_reference
| ConstructRef : inductive -> nat -> global_reference.

End Kernames.
Module Export MetaRocq.
Module Export Common.
Module Export Kernames.
Include MetaRocq_DOT_Common_DOT_Kernames_WRAPPED.Kernames.
Module Export MetaRocq_DOT_Common_DOT_BasicAst_WRAPPED.
Module Export BasicAst.

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

End BasicAst.
Module Export MetaRocq.
Module Export Common.
Module Export BasicAst.
Include MetaRocq_DOT_Common_DOT_BasicAst_WRAPPED.BasicAst.

Module Export MetaRocq_DOT_Common_DOT_Universes_WRAPPED.
Module Export Universes.

Module Level.
  Inductive t_ : Set :=
  | lzero
  | level (_ : string)
  | lvar (_ : nat) .

  Definition t := t_.

  Definition compare (l1 l2 : t) : comparison :=
    match l1, l2 with
    | lzero, lzero => Eq
    | lzero, _ => Lt
    | _, lzero => Gt
    | level s1, level s2 => string_compare s1 s2
    | level _, _ => Lt
    | _, level _ => Gt
    | lvar n, lvar m => Nat.compare n m
    end.

  Definition eq : t -> t -> Prop := eq.
  Definition eq_equiv : Equivalence eq := _.

  Inductive lt_ : t -> t -> Prop :=
  | ltSetLevel s : lt_ lzero (level s)
  | ltSetlvar n : lt_ lzero (lvar n)
  | ltLevelLevel s s' : StringOT.lt s s' -> lt_ (level s) (level s')
  | ltLevellvar s n : lt_ (level s) (lvar n)
  | ltlvarlvar n n' : Nat.lt n n' -> lt_ (lvar n) (lvar n').

  Definition lt := lt_.

  Definition lt_strorder : StrictOrder lt.
Admitted.

  Definition lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.

  Definition compare_spec :
    forall x y : t, CompareSpec (x = y) (lt x y) (lt y x) (compare x y).
Admitted.

  Definition eq_level l1 l2 :=
    match l1, l2 with
    | Level.lzero, Level.lzero => true
    | Level.level     s1, Level.level     s2 => ReflectEq.eqb s1 s2
    | Level.lvar n1, Level.lvar n2 => ReflectEq.eqb n1 n2
    | _, _ => false
    end.

  #[global, program] Instance reflect_level : ReflectEq Level.t := {
    eqb := eq_level
  }.
Admit Obligations.

  Definition eq_dec : forall (l1 l2 : t), {l1 = l2}+{l1 <> l2} := Classes.eq_dec.

End Level.

Module LevelSet := MSetAVL.Make Level.
Module LevelSetOrdProp := MSetProperties.OrdProperties LevelSet.
Module LevelSetProp := LevelSetOrdProp.P.

Module LevelExpr.
  Definition t := (Level.t * nat)%type.

  Definition make (l : Level.t) : t := (l, 0%nat).

  Definition eq : t -> t -> Prop := eq.

  Definition eq_equiv : Equivalence eq := _.

  Inductive lt_ : t -> t -> Prop :=
  | ltLevelExpr1 l n n' : (n < n')%nat -> lt_ (l, n) (l, n')
  | ltLevelExpr2 l l' b b' : Level.lt l l' -> lt_ (l, b) (l', b').

  Definition lt := lt_.

  Global Instance lt_strorder : StrictOrder lt.
Admitted.

  Definition lt_compat : Proper (Logic.eq ==> Logic.eq ==> iff) lt.
Admitted.

  Definition compare (x y : t) : comparison :=
    match x, y with
    | (l1, b1), (l2, b2) =>
      match Level.compare l1 l2 with
      | Eq => Nat.compare b1 b2
      | x => x
      end
    end.

  Definition compare_spec :
    forall x y : t, CompareSpec (x = y) (lt x y) (lt y x) (compare x y).
Admitted.

  Definition eq_dec : forall (l1 l2 : t), {l1 = l2} + {l1 <> l2} := Classes.eq_dec.

  Definition eq_leibniz (x y : t) : eq x y -> x = y := id.

End LevelExpr.

Module LevelExprSet := MSetList.MakeWithLeibniz LevelExpr.

Record nonEmptyLevelExprSet
  := { t_set : LevelExprSet.t ;
       t_ne  : LevelExprSet.is_empty t_set = false }.

Coercion t_set : nonEmptyLevelExprSet >-> LevelExprSet.t.
  Definition singleton (e : LevelExpr.t) : nonEmptyLevelExprSet
    := {| t_set := LevelExprSet.singleton e;
          t_ne := eq_refl |}.

  Program Definition add (e : LevelExpr.t) (u : nonEmptyLevelExprSet) : nonEmptyLevelExprSet
    := {| t_set := LevelExprSet.add e u |}.
Admit Obligations.

  Definition add_list : list LevelExpr.t -> nonEmptyLevelExprSet -> nonEmptyLevelExprSet
    := List.fold_left (fun u e => add e u).

Module Export Universe.

  Definition t := nonEmptyLevelExprSet.

  Definition make (e: LevelExpr.t) : t := singleton e.
  Definition make' (l: Level.t) : t := singleton (LevelExpr.make l).

  Definition from_kernel_repr (e : Level.t * nat) (es : list (Level.t * nat)) : t
    := add_list es (Universe.make e).

  Definition lt : t -> t -> Prop := LevelExprSet.lt.
End Universe.

Module ConstraintType.
  Inductive t_ : Set := Le (z : Z) | Eq.

  Definition t := t_.

  Inductive lt_ : t -> t -> Prop :=
  | LeLe n m : (n < m)%Z -> lt_ (Le n) (Le m)
  | LeEq n : lt_ (Le n) Eq.
  Definition lt := lt_.

  Definition compare (x y : t) : comparison :=
    match x, y with
    | Le n, Le m => Z.compare n m
    | Le _, Eq => Datatypes.Lt
    | Eq, Eq => Datatypes.Eq
    | Eq, _  => Datatypes.Gt
    end.
End ConstraintType.

Module UnivConstraint.
  Definition t : Set := Level.t * ConstraintType.t * Level.t.

  Definition eq : t -> t -> Prop := eq.
  Definition eq_equiv : Equivalence eq := _.

  Inductive lt_ : t -> t -> Prop :=
  | lt_Level2 l1 t l2 l2' : Level.lt l2 l2' -> lt_ (l1, t, l2) (l1, t, l2')
  | lt_Cstr l1 t t' l2 l2' : ConstraintType.lt t t' -> lt_ (l1, t, l2) (l1, t', l2')
  | lt_Level1 l1 l1' t t' l2 l2' : Level.lt l1 l1' -> lt_ (l1, t, l2) (l1', t', l2').
  Definition lt := lt_.

  Lemma lt_strorder : StrictOrder lt.
Admitted.

  Lemma lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.

  Definition compare : t -> t -> comparison :=
    fun '(l1, t, l2) '(l1', t', l2') =>
      compare_cont (Level.compare l1 l1')
        (compare_cont (ConstraintType.compare t t')
                    (Level.compare l2 l2')).

  Lemma compare_spec x y
    : CompareSpec (eq x y) (lt x y) (lt y x) (compare x y).
Admitted.

  Lemma eq_dec x y : {eq x y} + {~ eq x y}.
Admitted.
End UnivConstraint.

Module ConstraintSet := MSetAVL.Make UnivConstraint.

Module Export Instance.

  Definition t : Set := list Level.t.
End Instance.

Module Export UContext.
  Definition t := list name × (Instance.t × ConstraintSet.t).
End UContext.

Module Export AUContext.
  Definition t := list name × ConstraintSet.t.

  Definition make (ids : list name) (ctrs : ConstraintSet.t) : t := (ids, ctrs).
End AUContext.

Module Export ContextSet.
  Definition t := LevelSet.t × ConstraintSet.t.
End ContextSet.

Module Export Variance.

  Inductive t :=
  | Irrelevant : t
  | Covariant : t
  | Invariant : t.

End Variance.

Inductive universes_decl : Type :=
| Monomorphic_ctx
| Polymorphic_ctx (cst : AUContext.t).

Module Export Sort.
  Inductive t_ {univ} :=
    sProp | sSProp | sType (_ : univ).
  Arguments t_ : clear implicits.

  Definition t := t_ Universe.t.

  Inductive lt_ {univ univ_lt} : t_ univ -> t_ univ -> Prop :=
  | ltPropSProp : lt_ sProp sSProp
  | ltPropType s : lt_ sProp (sType s)
  | ltSPropType s : lt_ sSProp (sType s)
  | ltTypeType s1 s2 : univ_lt s1 s2 -> lt_ (sType s1) (sType s2).
  Arguments lt_ {univ} univ_lt.

  Definition lt := lt_ Universe.lt.

  Module OT <: OrderedType.
    Definition t := t.
    #[local] Definition eq : t -> t -> Prop := eq.
    #[local] Definition eq_equiv : Equivalence eq := _.
    Definition lt := lt.
    #[local] Instance lt_strorder : StrictOrder lt.
Admitted.

    Definition lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.
    Definition compare (x y : t) : comparison
      := match x, y with
          | sProp, sProp => Eq
          | sProp, _ => Lt
          | _, sProp => Gt
          | sSProp, sSProp => Eq
          | sSProp, _ => Lt
          | _, sSProp => Gt
          | sType x, sType y => LevelExprSet.compare x y
          end.
    Lemma compare_spec x y : CompareSpec (eq x y) (lt x y) (lt y x) (compare x y).
Admitted.
    Definition eq_dec (x y : t) : {x = y} + {x <> y}.
Admitted.
  End OT.
End Sort.
Abbreviation sort := Sort.t.

  Inductive allowed_eliminations : Set :=
  | IntoSProp
  | IntoPropSProp
  | IntoSetPropSProp
  | IntoAny.

Inductive universes_entry :=
| Monomorphic_entry
| Polymorphic_entry (ctx : UContext.t).

End Universes.
Module Export MetaRocq.
Module Export Common.
Module Export Universes.
Include MetaRocq_DOT_Common_DOT_Universes_WRAPPED.Universes.

Module Export MetaRocq_DOT_Common_DOT_Environment_WRAPPED.
Module Export Environment.

Module Type Term.

  Parameter Inline term : Type.
End Term.

Module Type TermDecide (Import T : Term).
End TermDecide.

Module TermDecideReflectInstances (Import T : Term) (Import TDec : TermDecide T).
End TermDecideReflectInstances.

Module Export Retroknowledge.

  Record t := mk_retroknowledge {
    retro_int63 : option kername;
    retro_float64 : option kername;
    retro_string : option kername;
    retro_array : option kername;
  }.

End Retroknowledge.

Module Environment (T : Term).

  Import T.

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

  Record constant_body := {

    cst_type : term;

    cst_body : option term;

    cst_universes : universes_decl;

    cst_relevance : relevance }.

  Inductive global_decl :=
  | ConstantDecl : constant_body -> global_decl
  | InductiveDecl : mutual_inductive_body -> global_decl.

  Definition global_declarations := list (kername * global_decl).

  Record global_env := mk_global_env
    { universes : ContextSet.t;
      declarations : global_declarations;
      retroknowledge : Retroknowledge.t }.

  Definition program : Type := global_env * term.

End Environment.

Module Type EnvironmentSig (T : Term).
End EnvironmentSig.

Module Type EnvironmentDecide (T : Term) (Import E : EnvironmentSig T).
End EnvironmentDecide.

Module EnvironmentDecideReflectInstances (T : Term) (Import E : EnvironmentSig T) (Import EDec : EnvironmentDecide T E).
End EnvironmentDecideReflectInstances.

Module Type TermUtils (T: Term) (E: EnvironmentSig T).

End TermUtils.

End Environment.
Module Export MetaRocq.
Module Export Common.
Module Export Environment.
Include MetaRocq_DOT_Common_DOT_Environment_WRAPPED.Environment.

Module Export MetaRocq_DOT_Template_DOT_Ast_WRAPPED.
Module Export Ast.

Record predicate {term} := mk_predicate {
  puinst : Instance.t;
  pparams : list term;
  pcontext : list aname;
  preturn : term;  }.

Arguments predicate : clear implicits.

Section Branch.
  Context {term : Type}.

  Record branch := mk_branch {
    bcontext : list aname;
    bbody : term;  }.
End Branch.
Arguments branch : clear implicits.

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

Module TemplateTerm <: Term.

Definition term := term.

End TemplateTerm.

Module Env := Environment TemplateTerm.
Export Env.

Module TemplateTermUtils <: TermUtils TemplateTerm Env.

End TemplateTermUtils.

Record one_inductive_entry := {
  mind_entry_typename : ident;
  mind_entry_arity : term;
  mind_entry_consnames : list ident;
  mind_entry_lc : list term  }.

Record mutual_inductive_entry := {
  mind_entry_record    : option (option ident);

  mind_entry_finite    : recursivity_kind;
  mind_entry_params    : context;
  mind_entry_inds      : list one_inductive_entry;
  mind_entry_universes : universes_entry;
  mind_entry_template : bool;
  mind_entry_variance  : option (list (option Universes.Variance.t));
  mind_entry_private   : option bool
   }.

End Ast.
Module Export MetaRocq.
Module Export Template.
Module Export Ast.
Include MetaRocq_DOT_Template_DOT_Ast_WRAPPED.Ast.

Local Set Universe Polymorphism.

Monomorphic Variant reductionStrategy : Set :=
  cbv | cbn | hnf | all | lazy | unfold (i : kername).

Monomorphic Variant hint_locality : Set :=
  local | export | global.

Record typed_term : Type := existT_typed_term
{ my_projT1 : Type
; my_projT2 : my_projT1
}.

Inductive option_instance (A : Type) : Type := my_Some : A -> option_instance A | my_None : option_instance A.

Module Export MetaRocq_DOT_Template_DOT_TemplateMonad_DOT_Core_WRAPPED.
Module Export Core.

Cumulative Inductive TemplateMonad@{t u} : Type@{t} -> Prop :=

| tmReturn : forall {A:Type@{t}}, A -> TemplateMonad A
| tmBind : forall {A B : Type@{t}}, TemplateMonad A -> (A -> TemplateMonad B)
                               -> TemplateMonad B

| tmPrint : forall {A:Type@{t}}, A -> TemplateMonad unit
| tmMsg   : string -> TemplateMonad unit
| tmFail : forall {A:Type@{t}}, string -> TemplateMonad A
| tmEval : reductionStrategy -> forall {A:Type@{t}}, A -> TemplateMonad A

| tmLemma : ident -> forall A : Type@{t}, TemplateMonad A
| tmDefinitionRed_ : forall (opaque : bool), ident -> option reductionStrategy -> forall {A:Type@{t}}, A -> TemplateMonad A
| tmAxiomRed : ident -> option reductionStrategy -> forall A : Type@{t}, TemplateMonad A
| tmVariable : ident -> Type@{t} -> TemplateMonad unit

| tmFreshName : ident -> TemplateMonad ident

| tmLocate : qualid -> TemplateMonad (list global_reference)
| tmLocateModule : qualid -> TemplateMonad (list modpath)
| tmLocateModType : qualid -> TemplateMonad (list modpath)
| tmCurrentModPath : unit -> TemplateMonad modpath

| tmQuote : forall {A:Type@{t}}, A  -> TemplateMonad Ast.term

| tmQuoteRecTransp : forall {A:Type@{t}}, A -> bool -> TemplateMonad program

| tmQuoteInductive : kername -> TemplateMonad mutual_inductive_body
| tmQuoteUniverses : TemplateMonad ConstraintSet.t
| tmQuoteConstant : kername -> bool  -> TemplateMonad constant_body
| tmQuoteModule : qualid -> TemplateMonad (list global_reference)
| tmQuoteModFunctor : qualid -> TemplateMonad (list global_reference)
| tmQuoteModType : qualid -> TemplateMonad (list global_reference)

| tmMkInductive : bool -> mutual_inductive_entry -> TemplateMonad unit
| tmUnquote : Ast.term  -> TemplateMonad typed_term@{u}
| tmUnquoteTyped : forall A : Type@{t}, Ast.term -> TemplateMonad A

| tmExistingInstance : hint_locality -> global_reference -> TemplateMonad unit
| tmInferInstance : option reductionStrategy -> forall A : Type@{t}, TemplateMonad (option_instance A)
.

Definition TemplateMonad_UnoptimizedMonad@{t u} : Monad@{t u} TemplateMonad@{t u} :=
  {| ret := @tmReturn ; bind := @tmBind |}.

Definition TemplateMonad_Monad@{t u} : Monad@{t u} TemplateMonad@{t u} :=
  Eval hnf in TemplateMonad_UnoptimizedMonad.
Global Existing Instance TemplateMonad_Monad.
Definition tmDefinition id {A} t := @tmDefinitionRed_ false id None A t.

Definition tmQuoteRec {A} (a : A) := tmQuoteRecTransp a true.
Definition tmQuoteRecDefinition id {A} (t : A)
  := tmQuoteRec t >>= tmDefinition id.

End Core.
Module Export MetaRocq.
Module Export Template.
Module Export TemplateMonad.
Module Export Core.
Include MetaRocq_DOT_Template_DOT_TemplateMonad_DOT_Core_WRAPPED.Core.

Module Export MetaRocq_DOT_Template_DOT_TemplateMonad_DOT_Extractable_WRAPPED.
Module Export Extractable.

Cumulative Inductive TM@{t} : Type@{t} -> Type :=

| tmReturn {A:Type@{t}}
  : A -> TM A
| tmBind {A B : Type@{t}}
  : TM A -> (A -> TM B) -> TM B

| tmPrint : Ast.term -> TM unit
| tmMsg  : string -> TM unit
| tmFail : forall {A:Type@{t}}, string -> TM A
| tmEval (red : reductionStrategy) (tm : Ast.term)
  : TM Ast.term

| tmDefinition_ (opaque : bool)
               (nm : ident)
               (type : option Ast.term) (term : Ast.term)
  : TM kername
| tmAxiom (nm : ident)
          (type : Ast.term)
  : TM kername
| tmLemma (nm : ident)
          (type : Ast.term)
  : TM kername

| tmFreshName : ident -> TM ident

| tmLocate : qualid -> TM (list global_reference)
| tmLocateModule : qualid -> TM (list modpath)
| tmLocateModType : qualid -> TM (list modpath)
| tmCurrentModPath : TM modpath

| tmQuoteInductive (nm : kername)
  : TM mutual_inductive_body
| tmQuoteConstant (nm : kername) (bypass_opacity : bool)
  : TM constant_body
| tmQuoteUniverses : TM ConstraintSet.t
| tmQuoteModule : qualid -> TM (list global_reference)
| tmQuoteModFunctor : qualid -> TM (list global_reference)
| tmQuoteModType : qualid -> TM (list global_reference)

| tmInductive : bool -> mutual_inductive_entry -> TM unit

| tmExistingInstance : hint_locality -> global_reference -> TM unit
| tmInferInstance (type : Ast.term)
  : TM (option Ast.term)
.

End Extractable.
Module Export MetaRocq.
Module Export Template.
Module Export TemplateMonad.
Module Export Extractable.
Include MetaRocq_DOT_Template_DOT_TemplateMonad_DOT_Extractable_WRAPPED.Extractable.
Register bytestring.String.EmptyString as metarocq.string.nil.
Register bytestring.String.String as metarocq.string.cons.

Register Corelib.Init.Byte.byte as metarocq.byte.type.

Register Corelib.Init.Datatypes.nat as metarocq.nat.type.
Register Corelib.Init.Datatypes.O as metarocq.nat.zero.
Register Corelib.Init.Datatypes.S as metarocq.nat.succ.
Register Corelib.Init.Datatypes.true as metarocq.bool.true.
Register Corelib.Init.Datatypes.false as metarocq.bool.false.
Register Corelib.Init.Datatypes.None as metarocq.option.none.
Register Corelib.Init.Datatypes.Some as metarocq.option.some.

Register Corelib.Init.Datatypes.list as metarocq.list.type.
Register Corelib.Init.Datatypes.nil as metarocq.list.nil.
Register Corelib.Init.Datatypes.cons as metarocq.list.cons.

Register Corelib.Init.Datatypes.prod as metarocq.prod.type.
Register Corelib.Init.Datatypes.pair as metarocq.prod.intro.
Register MetaRocq.Common.BasicAst.Relevant as metarocq.ast.Relevant.
Register MetaRocq.Common.BasicAst.mkBindAnn as metarocq.ast.mkBindAnn.
Register MetaRocq.Common.BasicAst.aname as metarocq.ast.aname.

Register MetaRocq.Common.BasicAst.nAnon as metarocq.ast.nAnon.
Register MetaRocq.Common.BasicAst.nNamed as metarocq.ast.nNamed.
Register MetaRocq.Common.Kernames.ident as metarocq.ast.ident.
Register MetaRocq.Common.Kernames.kername as metarocq.ast.kername.
Register MetaRocq.Common.Kernames.modpath as metarocq.ast.modpath.
Register MetaRocq.Common.Kernames.MPfile as metarocq.ast.MPfile.
Register MetaRocq.Common.Kernames.mkInd as metarocq.ast.mkInd.

Register MetaRocq.Common.BasicAst.name as metarocq.ast.name.
Register MetaRocq.Common.BasicAst.mk_case_info as metarocq.ast.mk_case_info.
Register MetaRocq.Common.BasicAst.Cast as metarocq.ast.Cast.
Register MetaRocq.Common.BasicAst.Finite as metarocq.ast.Finite.
Register MetaRocq.Common.BasicAst.BiFinite as metarocq.ast.BiFinite.
Register MetaRocq.Common.Universes.IntoAny as metarocq.ast.IntoAny.
Register MetaRocq.Common.Universes.Universe.t as metarocq.ast.universe.t.
Register MetaRocq.Common.Universes.Universe.make' as metarocq.ast.universe.make_of_level.
Register MetaRocq.Common.Universes.Universe.from_kernel_repr as metarocq.ast.universe.from_kernel_repr.
Register MetaRocq.Common.Universes.LevelSetProp.of_list as metarocq.ast.universe.of_list.
Register MetaRocq.Common.Universes.Level.t as metarocq.ast.level.t.
Register MetaRocq.Common.Universes.Level.level as metarocq.ast.level.Level.
Register MetaRocq.Common.Universes.Level.lzero as metarocq.ast.level.lzero.
Register MetaRocq.Common.Universes.Level.lvar as metarocq.ast.level.Var.
Register MetaRocq.Common.Universes.Sort.sType as metarocq.ast.sort.type.

Register MetaRocq.Common.Universes.Variance.t as metarocq.ast.variance.t.
Register MetaRocq.Common.Universes.Polymorphic_ctx as metarocq.ast.Polymorphic_ctx.

Register MetaRocq.Common.Universes.ConstraintSet.t_ as metarocq.ast.ConstraintSet.t_.
Register MetaRocq.Common.Universes.ConstraintSet.empty as metarocq.ast.ConstraintSet.empty.
Register MetaRocq.Common.Universes.AUContext.make as metarocq.ast.AUContext.make.

Register MetaRocq.Common.Universes.LevelSet.t_ as metarocq.ast.LevelSet.t.
Register MetaRocq.Template.Ast.mk_predicate as metarocq.ast.mk_predicate.
Register MetaRocq.Template.Ast.branch as metarocq.ast.branch.
Register MetaRocq.Template.Ast.mk_branch as metarocq.ast.mk_branch.

Register MetaRocq.Template.Ast.term as metarocq.ast.term.
Register MetaRocq.Template.Ast.tRel as metarocq.ast.tRel.
Register MetaRocq.Template.Ast.tSort as metarocq.ast.tSort.
Register MetaRocq.Template.Ast.tCast as metarocq.ast.tCast.
Register MetaRocq.Template.Ast.tProd as metarocq.ast.tProd.
Register MetaRocq.Template.Ast.tLambda as metarocq.ast.tLambda.
Register MetaRocq.Template.Ast.tLetIn as metarocq.ast.tLetIn.
Register MetaRocq.Template.Ast.tApp as metarocq.ast.tApp.
Register MetaRocq.Template.Ast.tConst as metarocq.ast.tConst.
Register MetaRocq.Template.Ast.tInd as metarocq.ast.tInd.
Register MetaRocq.Template.Ast.tConstruct as metarocq.ast.tConstruct.
Register MetaRocq.Template.Ast.tCase as metarocq.ast.tCase.

Register MetaRocq.Common.BasicAst.context_decl as metarocq.ast.context_decl.
Register MetaRocq.Common.BasicAst.mkdecl as metarocq.ast.mkdecl.

Register MetaRocq.Template.Ast.Env.constructor_body as metarocq.ast.constructor_body.
Register MetaRocq.Template.Ast.Env.Build_constructor_body as metarocq.ast.Build_constructor_body.
Register MetaRocq.Template.Ast.Env.projection_body as metarocq.ast.projection_body.
Register MetaRocq.Template.Ast.Env.one_inductive_body as metarocq.ast.one_inductive_body.
Register MetaRocq.Template.Ast.Env.Build_one_inductive_body as metarocq.ast.Build_one_inductive_body.
Register MetaRocq.Template.Ast.Env.Build_mutual_inductive_body as metarocq.ast.Build_mutual_inductive_body.
Register MetaRocq.Template.Ast.Env.Build_constant_body as metarocq.ast.Build_constant_body.

Register MetaRocq.Template.Ast.Env.global_decl as metarocq.ast.global_decl.
Register MetaRocq.Template.Ast.Env.ConstantDecl as metarocq.ast.ConstantDecl.
Register MetaRocq.Template.Ast.Env.InductiveDecl as metarocq.ast.InductiveDecl.
Register MetaRocq.Common.Environment.Retroknowledge.mk_retroknowledge as metarocq.ast.mk_retroknowledge.
Register MetaRocq.Template.Ast.Env.mk_global_env as metarocq.ast.Build_global_env.
Register MetaRocq.Template.Ast.Env.global_env as metarocq.ast.global_env.

Register MetaRocq.Template.TemplateMonad.Core.tmReturn as metarocq.templatemonad.prop.tmReturn.
Register MetaRocq.Template.TemplateMonad.Core.tmBind as metarocq.templatemonad.prop.tmBind.
Register MetaRocq.Template.TemplateMonad.Core.tmPrint as metarocq.templatemonad.prop.tmPrint.
Register MetaRocq.Template.TemplateMonad.Core.tmMsg as metarocq.templatemonad.prop.tmMsg.
Register MetaRocq.Template.TemplateMonad.Core.tmFail as metarocq.templatemonad.prop.tmFail.
Register MetaRocq.Template.TemplateMonad.Core.tmEval as metarocq.templatemonad.prop.tmEval.
Register MetaRocq.Template.TemplateMonad.Core.tmLemma as metarocq.templatemonad.prop.tmLemma.
Register MetaRocq.Template.TemplateMonad.Core.tmDefinitionRed_ as metarocq.templatemonad.prop.tmDefinitionRed_.
Register MetaRocq.Template.TemplateMonad.Core.tmAxiomRed as metarocq.templatemonad.prop.tmAxiomRed.
Register MetaRocq.Template.TemplateMonad.Core.tmFreshName as metarocq.templatemonad.prop.tmFreshName.
Register MetaRocq.Template.TemplateMonad.Core.tmLocate as metarocq.templatemonad.prop.tmLocate.
Register MetaRocq.Template.TemplateMonad.Core.tmLocateModule as metarocq.templatemonad.prop.tmLocateModule.
Register MetaRocq.Template.TemplateMonad.Core.tmLocateModType as metarocq.templatemonad.prop.tmLocateModType.
Register MetaRocq.Template.TemplateMonad.Core.tmCurrentModPath as metarocq.templatemonad.prop.tmCurrentModPath.

Register MetaRocq.Template.TemplateMonad.Core.tmQuote as metarocq.templatemonad.prop.tmQuote.
Register MetaRocq.Template.TemplateMonad.Core.tmQuoteRecTransp as metarocq.templatemonad.prop.tmQuoteRecTransp.
Register MetaRocq.Template.TemplateMonad.Core.tmQuoteRecDefinition as metarocq.templatemonad.prop.tmQuoteRecDefinition.

Register MetaRocq.Template.TemplateMonad.Extractable.tmReturn as metarocq.templatemonad.type.tmReturn.
Register MetaRocq.Template.TemplateMonad.Extractable.tmBind as metarocq.templatemonad.type.tmBind.
Register MetaRocq.Template.TemplateMonad.Extractable.tmPrint as metarocq.templatemonad.type.tmPrint.
Register MetaRocq.Template.TemplateMonad.Extractable.tmMsg as metarocq.templatemonad.type.tmMsg.
Register MetaRocq.Template.TemplateMonad.Extractable.tmFail as metarocq.templatemonad.type.tmFail.
Register MetaRocq.Template.TemplateMonad.Extractable.tmEval as metarocq.templatemonad.type.tmEval.
Register MetaRocq.Template.TemplateMonad.Extractable.tmDefinition_ as metarocq.templatemonad.type.tmDefinition_.
Register MetaRocq.Template.TemplateMonad.Extractable.tmAxiom as metarocq.templatemonad.type.tmAxiom.
Register MetaRocq.Template.TemplateMonad.Extractable.tmLemma as metarocq.templatemonad.type.tmLemma.
Register MetaRocq.Template.TemplateMonad.Extractable.tmFreshName as metarocq.templatemonad.type.tmFreshName.
Register MetaRocq.Template.TemplateMonad.Extractable.tmLocate as metarocq.templatemonad.type.tmLocate.
Register MetaRocq.Template.TemplateMonad.Extractable.tmLocateModule as metarocq.templatemonad.type.tmLocateModule.
Register MetaRocq.Template.TemplateMonad.Extractable.tmLocateModType as metarocq.templatemonad.type.tmLocateModType.
Register MetaRocq.Template.TemplateMonad.Extractable.tmCurrentModPath as metarocq.templatemonad.type.tmCurrentModPath.

Declare ML Module "rocq-metarocq-template-rocq.plugin".

MetaRocq Quote Recursively Definition foo :=
  @hott_example.isequiv_adjointify.
