
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-cannot-define-projection,-implicit-core-hint-db,-notation-overridden" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/kami-PARENT-bedrock2-PARENT-rupicola-PARENT-fiat_crypto/rupicola/bedrock2/deps/kami/Kami" "Kami" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 715 lines to 68 lines, then from 82 lines to 339 lines, then from 346 lines to 79 lines, then from 93 lines to 463 lines, then from 469 lines to 163 lines, then from 177 lines to 1417 lines, then from 1423 lines to 259 lines, then from 273 lines to 1395 lines, then from 1401 lines to 288 lines, then from 302 lines to 1848 lines, then from 1854 lines to 332 lines, then from 346 lines to 2539 lines, then from 2544 lines to 359 lines, then from 373 lines to 2172 lines, then from 2178 lines to 435 lines, then from 449 lines to 2689 lines, then from 2695 lines to 445 lines, then from 459 lines to 1294 lines, then from 1300 lines to 536 lines, then from 550 lines to 1869 lines, then from 1874 lines to 828 lines, then from 842 lines to 1343 lines, then from 1349 lines to 965 lines, then from 979 lines to 1319 lines, then from 1325 lines to 1066 lines, then from 1080 lines to 2623 lines, then from 2630 lines to 1416 lines, then from 1430 lines to 4533 lines, then from 4538 lines to 1481 lines, then from 1495 lines to 1858 lines, then from 1864 lines to 1509 lines, then from 1523 lines to 9047 lines, then from 9040 lines to 1528 lines, then from 1542 lines to 1969 lines, then from 1975 lines to 1561 lines, then from 1575 lines to 1793 lines, then from 1799 lines to 1580 lines, then from 1594 lines to 2031 lines, then from 2037 lines to 1665 lines, then from 1679 lines to 2368 lines, then from 2371 lines to 1896 lines, then from 1910 lines to 2404 lines, then from 2407 lines to 1940 lines, then from 1954 lines to 2089 lines, then from 2096 lines to 1954 lines, then from 1968 lines to 3993 lines, then from 3996 lines to 3113 lines, then from 2985 lines to 1919 lines, then from 1933 lines to 2137 lines, then from 2143 lines to 1941 lines, then from 1955 lines to 2606 lines, then from 2613 lines to 1991 lines, then from 2005 lines to 2385 lines, then from 2392 lines to 2026 lines, then from 2040 lines to 3338 lines, then from 3345 lines to 2033 lines, then from 2047 lines to 2444 lines, then from 2447 lines to 2176 lines, then from 2191 lines to 3461 lines, then from 3469 lines to 2415 lines, then from 2430 lines to 2861 lines, then from 2869 lines to 2598 lines, then from 2613 lines to 3990 lines, then from 3997 lines to 2909 lines, then from 2922 lines to 3323 lines, then from 3323 lines to 2968 lines, then from 2980 lines to 5265 lines, then from 5271 lines to 3040 lines, then from 3053 lines to 3650 lines, then from 3658 lines to 3129 lines, then from 3141 lines to 3379 lines, then from 3387 lines to 3149 lines, then from 3161 lines to 4345 lines, then from 4345 lines to 3186 lines, then from 3199 lines to 3435 lines, then from 3443 lines to 3207 lines, then from 3220 lines to 3323 lines, then from 3331 lines to 3217 lines, then from 3230 lines to 3473 lines, then from 3481 lines to 3224 lines, then from 3237 lines to 3519 lines, then from 3527 lines to 3232 lines, then from 3244 lines to 3589 lines, then from 3597 lines to 3259 lines, then from 3271 lines to 3464 lines, then from 3472 lines to 3282 lines, then from 3294 lines to 3427 lines, then from 3435 lines to 3305 lines, then from 3317 lines to 3669 lines, then from 3677 lines to 3328 lines, then from 3340 lines to 3433 lines, then from 3441 lines to 3335 lines, then from 3348 lines to 3530 lines, then from 3537 lines to 3404 lines, then from 3416 lines to 3814 lines, then from 3822 lines to 3523 lines, then from 3536 lines to 3549 lines, then from 3557 lines to 3635 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Modules that could not be inlined: Stdlib.Vectors.Vector
   Expected coqc runtime on this file: 1.329 sec
   Expected coqc peak memory usage on this file: 2131252.0 kb *)









Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Classes.RelationClasses.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Setoids.Setoid.
Require Corelib.Program.Basics.
Require Corelib.Lists.ListDef.
Require Corelib.Classes.Morphisms.
Require Corelib.BinNums.PosDef.
Require Corelib.Init.Byte.
Require Corelib.BinNums.IntDef.
Require Corelib.Numbers.BinNums.
Require Corelib.Init.Ltac.
Require Stdlib.Classes.DecidableClass.
Require Stdlib.Logic.Decidable.
Require Stdlib.Logic.EqdepFacts.
Require Stdlib.Logic.HLevelsBase.
Require Stdlib.BinNums.PosDef.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Init.Byte.
Require Stdlib.Lists.ListDef.
Require Stdlib.Logic.Eqdep_dec.
Require Stdlib.Program.Basics.
Require Stdlib.Relations.Relation_Definitions.
Require Stdlib.Setoids.Setoid.
Require Stdlib.Bool.Bool.
Require Stdlib.Relations.Relation_Operators.
Require Stdlib.Relations.Operators_Properties.
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
Require Stdlib.Numbers.Natural.Abstract.NAxioms.
Require Stdlib.Numbers.Natural.Abstract.NBase.
Require Stdlib.Numbers.Natural.Abstract.NAdd.
Require Stdlib.Numbers.Natural.Abstract.NOrder.
Require Stdlib.Numbers.Natural.Abstract.NAddOrder.
Require Stdlib.Numbers.Natural.Abstract.NMulOrder.
Require Stdlib.Numbers.Natural.Abstract.NSub.
Require Stdlib.Numbers.Natural.Abstract.NDiv.
Require Stdlib.Numbers.Natural.Abstract.NGcd.
Require Stdlib.Numbers.Natural.Abstract.NMaxMin.
Require Stdlib.Numbers.Natural.Abstract.NParity.
Require Stdlib.Numbers.Natural.Abstract.NSqrt.
Require Stdlib.Numbers.Natural.Abstract.NDiv0.
Require Stdlib.Numbers.Natural.Abstract.NPow.
Require Stdlib.Numbers.Natural.Abstract.NLcm.
Require Stdlib.Numbers.Natural.Abstract.NLog.
Require Stdlib.Numbers.Natural.Abstract.NBits.
Require Stdlib.Numbers.Natural.Abstract.NLcm0.
Require Stdlib.Numbers.Natural.Abstract.NProperties.
Require Stdlib.Arith.PeanoNat.
Require Stdlib.Arith.Between.
Require Stdlib.Arith.Compare_dec.
Require Stdlib.Arith.EqNat.
Require Stdlib.Arith.Factorial.
Require Stdlib.Arith.Wf_nat.
Require Stdlib.Arith.Peano_dec.
Require Stdlib.Lists.List.
Require Stdlib.Arith.Arith_base.
Require Stdlib.Vectors.Fin.
Require Stdlib.Vectors.VectorDef.
Require Stdlib.Vectors.VectorSpec.
Require Stdlib.Vectors.VectorEq.
Require Stdlib.Vectors.Vector.

Module Export AdmitTactic.
Module Import LocalFalse.
Inductive False : Prop := .
End LocalFalse.
Axiom proof_admitted : False.
Import Coq.Init.Ltac.
Tactic Notation "admit" := abstract case proof_admitted.
End AdmitTactic.

Module Export Stdlib_DOT_Numbers_DOT_BinNums_WRAPPED.
Module Export BinNums.
Export Corelib.Numbers.BinNums.

End BinNums.

End Stdlib_DOT_Numbers_DOT_BinNums_WRAPPED.
Module Export Stdlib_DOT_Numbers_DOT_BinNums.
Module Export Stdlib.
Module Export Numbers.
Module Export BinNums.
Include Stdlib_DOT_Numbers_DOT_BinNums_WRAPPED.BinNums.
End BinNums.

End Numbers.

End Stdlib.
Module Export BinPosDef.
Export Stdlib.BinNums.PosDef.

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
Module Export Stdlib_DOT_PArith_DOT_BinPosDef.
Module Export Stdlib.
Module Export PArith.
Module Export BinPosDef.
End BinPosDef.

End PArith.

End Stdlib.

End Stdlib_DOT_PArith_DOT_BinPosDef.
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
Export Stdlib.Numbers.Integer.Abstract.ZAxioms.
Import Stdlib.Numbers.NatInt.NZMulOrder.

Module ZBaseProp (Import Z : ZAxiomsMiniSig').
Include NZMulOrderProp Z.

End ZBaseProp.
Module Export ZBase.
End ZBase.

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
Export Stdlib.Numbers.Integer.Abstract.ZAddOrder.

Module Type ZMulOrderProp (Import Z : ZAxiomsMiniSig').
Include ZAddOrderProp Z.

End ZMulOrderProp.
Module Export ZMulOrder.
End ZMulOrder.

Module Type ZMaxMinProp (Import Z : ZAxiomsMiniSig').
Include ZMulOrderProp Z.

End ZMaxMinProp.
Module Export ZMaxMin.
End ZMaxMin.
Export Stdlib.Numbers.Integer.Abstract.ZAxioms.

Module Type ZBasicProp (Z:ZAxiomsMiniSig) := ZMaxMinProp Z.
Module Export Stdlib.
Module Export Numbers.
Module Export Integer.
Module Export Abstract.
Module Export ZProperties.
End ZProperties.
Module Export Sorted.

Set Implicit Arguments.
#[local] Notation "[ ]" := nil (at level 0).

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
Module Export SetoidList.

Export Stdlib.Lists.List.
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

Section Fold2_With_Restriction.

End Fold2_With_Restriction.

Section Remove.

End Remove.

Section EqlistA.

End EqlistA.

Section Filter.

End Filter.
End Type_with_equality.

Section Find.

End Find.

End SetoidList.
Module Export Stdlib_DOT_Structures_DOT_DecidableType_WRAPPED.
Module Export DecidableType.

Module Type DecidableType := Equalities.DecidableTypeOrig.

Module KeyDecidableType(D:DecidableType).

 Section Elt.

 End Elt.

End KeyDecidableType.

End DecidableType.
Module Export Stdlib.
Module Export Structures.
Module Export DecidableType.
Include Stdlib_DOT_Structures_DOT_DecidableType_WRAPPED.DecidableType.
End DecidableType.
Module Export Stdlib_DOT_Structures_DOT_OrderedType_WRAPPED.
Module Export OrderedType.
Set Implicit Arguments.

Inductive Compare (X : Type) (lt eq : X -> X -> Prop) (x y : X) : Type :=
  | LT : lt x y -> Compare lt eq x y
  | EQ : eq x y -> Compare lt eq x y
  | GT : lt y x -> Compare lt eq x y.
Arguments EQ [X lt eq x y] _.

Module Type MiniOrderedType.

  Parameter Inline t : Type.

  Parameter Inline eq : t -> t -> Prop.
  Parameter Inline lt : t -> t -> Prop.

  Axiom eq_refl : forall x : t, eq x x.
  Axiom eq_sym : forall x y : t, eq x y -> eq y x.
  Axiom eq_trans : forall x y z : t, eq x y -> eq y z -> eq x z.

  Axiom lt_trans : forall x y z : t, lt x y -> lt y z -> lt x z.
  Axiom lt_not_eq : forall x y : t, lt x y -> ~ eq x y.

  Parameter compare : forall x y : t, Compare lt eq x y.

End MiniOrderedType.

Module Type OrderedType.
  Include MiniOrderedType.

  Parameter eq_dec : forall x y, { eq x y } + { ~ eq x y }.

End OrderedType.

Module MOT_to_OT (Import O : MiniOrderedType) <: OrderedType.
  Include O.

  Definition eq_dec : forall x y : t, {eq x y} + {~ eq x y}.
Admitted.

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
 Import O.

 Section Elt.
 Variable elt : Type.
 Notation key:=t.

  Definition eqk (p p':key*elt) := eq (fst p) (fst p').
  Definition eqke (p p':key*elt) :=
          eq (fst p) (fst p') /\ (snd p) = (snd p').
  Definition ltk (p p':key*elt) := lt (fst p) (fst p').

  Definition MapsTo (k:key)(e:elt):= InA eqke (k,e).
  Definition In k m := exists e:elt, MapsTo k e m.

 End Elt.

End KeyOrderedType.

End OrderedType.
Module Export Stdlib_DOT_Structures_DOT_OrderedType.
Module Export Stdlib.
Module Export Structures.
Module Export OrderedType.
Include Stdlib_DOT_Structures_DOT_OrderedType_WRAPPED.OrderedType.
End OrderedType.

End Structures.

End Stdlib.

End Stdlib_DOT_Structures_DOT_OrderedType.
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

Lemma lt_trans n m p : n < m -> m < p -> n < p.
Admitted.

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
Module Export Stdlib_DOT_FSets_DOT_FMapInterface_WRAPPED.
Module Export FMapInterface.
Export Stdlib.Structures.DecidableType.
Export Stdlib.Structures.OrderedType.
Set Implicit Arguments.

Module Type WSfun (E : DecidableType).

  Definition key := E.t.

  Parameter t : Type -> Type.

  Section Types.

    Variable elt:Type.

    Parameter add : key -> elt -> t elt -> t elt.

    Parameter fold : forall A: Type, (key -> elt -> A -> A) -> t elt -> A -> A.
Definition In (k:key)(m: t elt) : Prop.
Admitted.
   End Types.

End WSfun.

Module Type WS.
End WS.

Module Type Sfun (E : OrderedType).
  Include WSfun E.
  Section elt.

  End elt.
End Sfun.

Module Type S.
  Declare Module E : OrderedType.
End S.

Module Type Sord.

  Declare Module Data : OrderedType.
  Declare Module MapS : S.

End Sord.

End FMapInterface.
Module Export Stdlib_DOT_FSets_DOT_FMapInterface.
Module Export Stdlib.
Module Export FSets.
Module Export FMapInterface.
Include Stdlib_DOT_FSets_DOT_FMapInterface_WRAPPED.FMapInterface.
End FMapInterface.

End FSets.

End Stdlib.

End Stdlib_DOT_FSets_DOT_FMapInterface.
Module Export FMapList.

Set Implicit Arguments.

Module Raw (X:OrderedType).
Module Import PX := KeyOrderedType X.

Definition key := X.t.
Definition t (elt:Type) := list (X.t * elt).

Section Elt.
Variable elt : Type.
Notation MapsTo := (MapsTo (elt:=elt)).

Definition Empty m := forall (a : key)(e:elt) , ~ MapsTo a e m.
Fixpoint equal (cmp:elt->elt->bool)(m m' : t elt) {struct m} : bool.
Admitted.

Definition Equivb cmp m m' :=
  (forall k, In k m <-> In k m') /\
  (forall k e e', MapsTo k e m -> MapsTo k e' m' -> cmp e e' = true).

Variable elt':Type.
Fixpoint map (f:elt -> elt') (m:t elt) : t elt'.
Admitted.

End Elt.
Section Elt2.

Variable elt elt' : Type.

Lemma map_sorted : forall (m: t elt)(Hm : sort (@ltk elt) m)(f:elt -> elt'),
  sort (@ltk elt') (map f m).
Admitted.

End Elt2.
Section Elt3.

Variable elt elt' elt'' : Type.
Variable f : option elt -> option elt' -> option elt''.
Fixpoint map2 (m : t elt) : t elt' -> t elt''.
Admitted.

Lemma map2_sorted :
  forall m (Hm : sort (@ltk elt) m) m' (Hm' : sort (@ltk elt') m'),
  sort (@ltk elt'') (map2 m m').
Admitted.

End Elt3.
End Raw.

Module Make (X: OrderedType) <: S with Module E := X.
Module Raw := Raw X.
Module E := X.

Definition key := E.t.

Record slist (elt:Type) :=
  {this :> Raw.t elt; sorted : sort (@Raw.PX.ltk elt) this}.
Definition t (elt:Type) : Type.
exact (slist elt).
Defined.

Section Elt.
 Variable elt elt' elt'':Type.

 Implicit Types m : t elt.
 Implicit Types x y : key.
 Implicit Types e : elt.
Definition empty : t elt.
admit.
Defined.
Definition is_empty m : bool.
admit.
Defined.
Definition add x e m : t elt.
admit.
Defined.
Definition find x m : option elt.
admit.
Defined.
Definition remove x m : t elt.
admit.
Defined.
Definition mem x m : bool.
admit.
Defined.
 Definition map f m : t elt' := Build_slist (Raw.map_sorted (sorted m) f).
Definition mapi (f:key->elt->elt') m : t elt'.
admit.
Defined.
 Definition map2 f m (m':t elt') : t elt'' :=
   Build_slist (Raw.map2_sorted f (sorted m) (sorted m')).
Definition elements m : list (key*elt).
admit.
Defined.
 Definition cardinal m := length (this m).
Definition fold (A:Type)(f:key->elt->A->A) m (i:A) : A.
admit.
Defined.
 Definition equal cmp m m' : bool := @Raw.equal elt cmp (this m) (this m').
Definition MapsTo x e m : Prop.
exact (Raw.PX.MapsTo x e (this m)).
Defined.
Definition In x m : Prop.
exact (Raw.PX.In x (this m)).
Defined.
Definition Empty m : Prop.
exact (Raw.Empty (this m)).
Defined.

 Definition Equal m m' := forall y, find y m = find y m'.
 Definition Equiv (eq_elt:elt->elt->Prop) m m' :=
         (forall k, In k m <-> In k m') /\
         (forall k e e', MapsTo k e m -> MapsTo k e' m' -> eq_elt e e').
 Definition Equivb cmp m m' : Prop := @Raw.Equivb elt cmp (this m) (this m').
Definition eq_key : (key*elt) -> (key*elt) -> Prop.
exact (@Raw.PX.eqk elt).
Defined.
Definition eq_key_elt : (key*elt) -> (key*elt) -> Prop.
exact (@Raw.PX.eqke elt).
Defined.
Definition lt_key : (key*elt) -> (key*elt) -> Prop.
exact (@Raw.PX.ltk elt).
Defined.

 Lemma MapsTo_1 : forall m x y e, E.eq x y -> MapsTo x e m -> MapsTo y e m.
Proof using .
admit.
Defined.

 Lemma mem_1 : forall m x, In x m -> mem x m = true.
Proof using .
admit.
Defined.
 Lemma mem_2 : forall m x, mem x m = true -> In x m.
Proof using .
admit.
Defined.

 Lemma empty_1 : Empty empty.
Proof using .
admit.
Defined.

 Lemma is_empty_1 : forall m, Empty m -> is_empty m = true.
Proof using .
admit.
Defined.
 Lemma is_empty_2 :  forall m, is_empty m = true -> Empty m.
Proof using .
admit.
Defined.

 Lemma add_1 : forall m x y e, E.eq x y -> MapsTo y e (add x e m).
Proof using .
admit.
Defined.
 Lemma add_2 : forall m x y e e', ~ E.eq x y -> MapsTo y e m -> MapsTo y e (add x e' m).
Proof using .
admit.
Defined.
 Lemma add_3 : forall m x y e e', ~ E.eq x y -> MapsTo y e (add x e' m) -> MapsTo y e m.
Proof using .
admit.
Defined.

 Lemma remove_1 : forall m x y, E.eq x y -> ~ In y (remove x m).
Proof using .
admit.
Defined.
 Lemma remove_2 : forall m x y e, ~ E.eq x y -> MapsTo y e m -> MapsTo y e (remove x m).
Proof using .
admit.
Defined.
 Lemma remove_3 : forall m x y e, MapsTo y e (remove x m) -> MapsTo y e m.
Proof using .
admit.
Defined.

 Lemma find_1 : forall m x e, MapsTo x e m -> find x m = Some e.
Proof using .
admit.
Defined.
 Lemma find_2 : forall m x e, find x m = Some e -> MapsTo x e m.
Proof using .
admit.
Defined.

 Lemma elements_1 : forall m x e, MapsTo x e m -> InA eq_key_elt (x,e) (elements m).
Proof using .
admit.
Defined.
 Lemma elements_2 : forall m x e, InA eq_key_elt (x,e) (elements m) -> MapsTo x e m.
Proof using .
admit.
Defined.
 Lemma elements_3 : forall m, sort lt_key (elements m).
Proof using .
admit.
Defined.
 Lemma elements_3w : forall m, NoDupA eq_key (elements m).
Proof using .
admit.
Defined.

 Lemma cardinal_1 : forall m, cardinal m = length (elements m).
Proof using .
admit.
Defined.

 Lemma fold_1 : forall m (A : Type) (i : A) (f : key -> elt -> A -> A),
        fold f m i = fold_left (fun a p => f (fst p) (snd p) a) (elements m) i.
Proof using .
admit.
Defined.

 Lemma equal_1 : forall m m' cmp, Equivb cmp m m' -> equal cmp m m' = true.
Proof using .
admit.
Defined.
 Lemma equal_2 : forall m m' cmp, equal cmp m m' = true -> Equivb cmp m m'.
Proof using .
admit.
Defined.

 End Elt.

 Lemma map_1 : forall (elt elt':Type)(m: t elt)(x:key)(e:elt)(f:elt->elt'),
        MapsTo x e m -> MapsTo x (f e) (map f m).
Admitted.
 Lemma map_2 : forall (elt elt':Type)(m: t elt)(x:key)(f:elt->elt'),
        In x (map f m) -> In x m.
Admitted.

 Lemma mapi_1 : forall (elt elt':Type)(m: t elt)(x:key)(e:elt)
        (f:key->elt->elt'), MapsTo x e m ->
        exists y, E.eq y x /\ MapsTo x (f y e) (mapi f m).
Admitted.
 Lemma mapi_2 : forall (elt elt':Type)(m: t elt)(x:key)
        (f:key->elt->elt'), In x (mapi f m) -> In x m.
Admitted.

 Lemma map2_1 : forall (elt elt' elt'':Type)(m: t elt)(m': t elt')
        (x:key)(f:option elt->option elt'->option elt''),
        In x m \/ In x m' ->
        find x (map2 f m m') = f (find x m) (find x m').
Admitted.
 Lemma map2_2 : forall (elt elt' elt'':Type)(m: t elt)(m': t elt')
        (x:key)(f:option elt->option elt'->option elt''),
        In x (map2 f m m') -> In x m \/ In x m'.
Admitted.

End Make.

Module Make_ord (X: OrderedType)(D : OrderedType) <:
Sord with Module Data := D
        with Module MapS.E := X.

Module Data := D.
Module MapS := Make(X).
Import MapS.

Definition t := MapS.t D.t.

Definition cmp e e' := match D.compare e e' with EQ _ => true | _ => false end.
Fixpoint eq_list (m m' : list (X.t * D.t)) : Prop.
Admitted.

Definition eq m m' := eq_list (this m) (this m').
Fixpoint lt_list (m m' : list (X.t * D.t)) : Prop.
Admitted.

Definition lt m m' := lt_list (this m) (this m').

Lemma eq_1 : forall m m', Equivb cmp m m' -> eq m m'.
Admitted.

Lemma eq_2 : forall m m', eq m m' -> Equivb cmp m m'.
Admitted.

Lemma eq_refl : forall m : t, eq m m.
Admitted.

Lemma eq_sym : forall m1 m2 : t, eq m1 m2 -> eq m2 m1.
Admitted.

Lemma eq_trans : forall m1 m2 m3 : t, eq m1 m2 -> eq m2 m3 -> eq m1 m3.
Admitted.

Lemma lt_trans : forall m1 m2 m3 : t, lt m1 m2 -> lt m2 m3 -> lt m1 m3.
Admitted.

Lemma lt_not_eq : forall m1 m2 : t, lt m1 m2 -> ~ eq m1 m2.
Admitted.

Definition compare : forall m1 m2, Compare lt eq m1 m2.
Admitted.

End Make_ord.

End FMapList.
Module Export Stdlib_DOT_FSets_DOT_FMapList.
Module Export FMapList.
End FMapList.

End Stdlib_DOT_FSets_DOT_FMapList.
Module Export BinNatDef.

Export Stdlib.Numbers.BinNums.
Import Stdlib.PArith.BinPos.

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
Module Export Stdlib_DOT_NArith_DOT_BinNatDef.
Module Export BinNatDef.
End BinNatDef.

End Stdlib_DOT_NArith_DOT_BinNatDef.
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
Infix "<" := N.lt : N_scope.
Module Export Stdlib_DOT_NArith_DOT_BinNat.
Module Export Stdlib.
Module Export NArith.
Module Export BinNat.
End BinNat.

End NArith.

End Stdlib.

End Stdlib_DOT_NArith_DOT_BinNat.
Module Export BinIntDef.
Import Stdlib.PArith.BinPos.

#[local] Open Scope Z_scope.

#[local] Notation "0" := Z0.
#[local] Notation "1" := (Zpos 1).
#[local] Notation "2" := (Zpos 2).

Module Z.

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
Export Stdlib.Init.Byte.

Section N.
End N.
Module Export Stdlib.
Module Export Strings.
Module Export Byte.
End Byte.

Module Export Stdlib_DOT_Strings_DOT_Ascii_WRAPPED.
Module Export Ascii.
Import Stdlib.Bool.Bool.
Import Stdlib.NArith.BinNat.

Inductive ascii : Set := Ascii (_ _ _ _ _ _ _ _ : bool).

Definition ascii_dec : forall a b : ascii, {a = b} + {a <> b}.
Proof.
  decide equality; apply bool_dec.
Defined.
Definition N_of_ascii (a : ascii) : N.
Admitted.
Definition nat_of_ascii (a : ascii) : nat.
Admitted.
Definition ascii_of_byte (b : byte) : ascii.
exact (let '(b0, (b1, (b2, (b3, (b4, (b5, (b6, b7))))))) := Byte.to_bits b in
     Ascii b0 b1 b2 b3 b4 b5 b6 b7).
Defined.
Definition byte_of_ascii (a : ascii) : byte.
exact (let (b0, b1, b2, b3, b4, b5, b6, b7) := a in
     Byte.of_bits (b0, (b1, (b2, (b3, (b4, (b5, (b6, b7)))))))).
Defined.

End Ascii.
Module Export Stdlib_DOT_Strings_DOT_Ascii.
Module Export Stdlib.
Module Export Strings.
Module Ascii.
Include Stdlib_DOT_Strings_DOT_Ascii_WRAPPED.Ascii.
End Ascii.

End Strings.

End Stdlib.

End Stdlib_DOT_Strings_DOT_Ascii.
Import Stdlib.Strings.Byte.

Inductive string : Set :=
  | EmptyString : string
  | String : ascii -> string -> string.
Delimit Scope string_scope with string.
Bind Scope string_scope with string.

Definition string_dec : forall s1 s2 : string, {s1 = s2} + {s1 <> s2}.
Proof.
 decide equality; apply ascii_dec.
Defined.

Fixpoint append (s1 s2 : string) : string :=
  match s1 with
  | EmptyString => s2
  | String c s1' => String c (s1' ++ s2)
  end
where "s1 ++ s2" := (append s1 s2) : string_scope.
Fixpoint string_of_list_ascii (s : list ascii) : string.
exact (match s with
     | nil => EmptyString
     | cons ch s => String ch (string_of_list_ascii s)
     end).
Defined.
Fixpoint list_ascii_of_string (s : string) : list ascii.
exact (match s with
     | EmptyString => nil
     | String ch s => cons ch (list_ascii_of_string s)
     end).
Defined.
Definition string_of_list_byte (s : list byte) : string.
exact (string_of_list_ascii (List.map ascii_of_byte s)).
Defined.
Definition list_byte_of_string (s : string) : list byte.
exact (List.map byte_of_ascii (list_ascii_of_string s)).
Defined.
  String Notation string string_of_list_byte list_byte_of_string : string_scope.
Module Export Stdlib.
Module Export Strings.
Module Export String.
End String.

End Strings.

End Stdlib.
Import Stdlib.Bool.Bool.
Import Stdlib.Strings.String.
Import Stdlib.Lists.List.
Definition ascii_eq (a1 a2: Ascii.ascii): bool.
exact (match a1, a2 with
  | Ascii.Ascii b1 b2 b3 b4 b5 b6 b7 b8,
    Ascii.Ascii c1 c2 c3 c4 c5 c6 c7 c8 =>
    (Bool.eqb b1 c1)
      && (Bool.eqb b2 c2) && (Bool.eqb b3 c3) && (Bool.eqb b4 c4)
      && (Bool.eqb b5 c5) && (Bool.eqb b6 c6) && (Bool.eqb b7 c7) && (Bool.eqb b8 c8)
  end).
Defined.
Fixpoint string_eq (s1 s2: string): bool.
exact (match s1, s2 with
  | EmptyString, EmptyString => true
  | String a1 s1', String a2 s2' =>
    (ascii_eq a1 a2) && (string_eq s1' s2')
  | _, _ => false
  end).
Defined.

Definition string_in (a: string) (l: list string) :=
  existsb (fun e => string_eq e a) l.
Export Stdlib.PArith.BinPos.
Import Stdlib.NArith.BinNat.
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

End Z.
Infix "<" := Z.lt : Z_scope.

Set Implicit Arguments.
Section ilist.

  Import Vector.VectorNotations.

  Variable A : Type.

  Variable B : A -> Type.

  Inductive ilist: forall n, Vector.t A n -> Type :=
  | inil: ilist (Vector.nil A)
  | icons t n (vs: Vector.t A n) (v: B t) (ils: ilist vs): ilist (t :: vs).

End ilist.

Module Export OrderedTypeEx.

Import Stdlib.Structures.OrderedType.
Import Stdlib.Arith.Peano_dec.
Import Stdlib.Strings.Ascii.
Import Stdlib.Strings.String.

Module Type UsualOrderedType.
 Parameter Inline t : Type.
 Definition eq := @eq t.
 Parameter Inline lt : t -> t -> Prop.
 Definition eq_refl := @eq_refl t.
 Definition eq_sym := @eq_sym t.
 Definition eq_trans := @eq_trans t.
 Axiom lt_trans : forall x y z : t, lt x y -> lt y z -> lt x z.
 Axiom lt_not_eq : forall x y : t, lt x y -> ~ eq x y.
 Parameter compare : forall x y : t, Compare lt eq x y.
 Parameter eq_dec : forall x y : t, { eq x y } + { ~ eq x y }.
End UsualOrderedType.

Module UOT_to_OT (U:UsualOrderedType) <: OrderedType := U.

Module Nat_as_OT <: UsualOrderedType.

  Definition t := nat.

  Definition eq := @eq nat.
  Definition eq_refl := @eq_refl t.
  Definition eq_sym := @eq_sym t.
  Definition eq_trans := @eq_trans t.

  Definition lt := lt.

  Lemma lt_trans : forall x y z : t, lt x y -> lt y z -> lt x z.
Admitted.

  Lemma lt_not_eq : forall x y : t, lt x y -> ~ eq x y.
Admitted.

  Definition compare x y : Compare lt eq x y.
Admitted.

  Definition eq_dec := eq_nat_dec.

End Nat_as_OT.

Module Z_as_OT <: UsualOrderedType.

  Definition t := Z.
  Definition eq := @eq Z.
  Definition eq_refl := @eq_refl t.
  Definition eq_sym := @eq_sym t.
  Definition eq_trans := @eq_trans t.

  Definition lt (x y:Z) := (x<y).

  Lemma lt_trans : forall x y z, x<y -> y<z -> x<z.
Admitted.

  Lemma lt_not_eq : forall x y, x<y -> ~ x=y.
Admitted.

  Definition compare x y : Compare lt eq x y.
Admitted.

  Definition eq_dec := Z.eq_dec.

End Z_as_OT.

Module Positive_as_OT <: UsualOrderedType.
  Definition t:=positive.
  Definition eq:=@eq positive.
  Definition eq_refl := @eq_refl t.
  Definition eq_sym := @eq_sym t.
  Definition eq_trans := @eq_trans t.

  Definition lt := Pos.lt.

  Definition lt_trans := Pos.lt_trans.

  Lemma lt_not_eq : forall x y : t, lt x y -> ~ eq x y.
Admitted.

  Definition compare x y : Compare lt eq x y.
Admitted.

  Definition eq_dec := Pos.eq_dec.

End Positive_as_OT.

Module N_as_OT <: UsualOrderedType.
  Definition t:=N.
  Definition eq:=@eq N.
  Definition eq_refl := @eq_refl t.
  Definition eq_sym := @eq_sym t.
  Definition eq_trans := @eq_trans t.

  Definition lt := N.lt.
  Definition lt_trans := N.lt_trans.
  Definition lt_not_eq := N.lt_neq.

  Definition compare x y : Compare lt eq x y.
Admitted.

  Definition eq_dec := N.eq_dec.

End N_as_OT.

Module PairOrderedType(O1 O2:OrderedType) <: OrderedType.

 Definition t := prod O1.t O2.t.

 Definition eq x y := O1.eq (fst x) (fst y) /\ O2.eq (snd x) (snd y).

 Definition lt x y :=
    O1.lt (fst x) (fst y) \/
    (O1.eq (fst x) (fst y) /\ O2.lt (snd x) (snd y)).

 Lemma eq_refl : forall x : t, eq x x.
Admitted.

 Lemma eq_sym : forall x y : t, eq x y -> eq y x.
Admitted.

 Lemma eq_trans : forall x y z : t, eq x y -> eq y z -> eq x z.
Admitted.

 Lemma lt_trans : forall x y z : t, lt x y -> lt y z -> lt x z.
Admitted.

 Lemma lt_not_eq : forall x y : t, lt x y -> ~ eq x y.
Admitted.

 Definition compare : forall x y : t, Compare lt eq x y.
Admitted.

 Definition eq_dec : forall x y : t, {eq x y} + {~ eq x y}.
Admitted.

End PairOrderedType.

Module PositiveOrderedTypeBits <: UsualOrderedType.
  Definition t:=positive.
  Definition eq:=@eq positive.
  Definition eq_refl := @eq_refl t.
  Definition eq_sym := @eq_sym t.
  Definition eq_trans := @eq_trans t.
Fixpoint bits_lt (p q:positive) : Prop.
Admitted.

  Definition lt:=bits_lt.

  Lemma lt_trans : forall x y z : t, lt x y -> lt y z -> lt x z.
Admitted.

  Lemma lt_not_eq : forall x y : t, lt x y -> ~ eq x y.
Admitted.

  Definition compare : forall x y : t, Compare lt eq x y.
Admitted.

  Lemma eq_dec (x y: positive): {x = y} + {x <> y}.
Admitted.

End PositiveOrderedTypeBits.

Module Ascii_as_OT <: UsualOrderedType.
  Definition t := ascii.

  Definition eq := @eq ascii.
  Definition eq_refl := @eq_refl t.
  Definition eq_sym := @eq_sym t.
  Definition eq_trans := @eq_trans t.

  Definition lt (x y : ascii) := (N_of_ascii x < N_of_ascii y)%N.

  Lemma lt_trans (x y z : ascii):
    lt x y -> lt y z -> lt x z.
Admitted.

  Lemma lt_not_eq (x y : ascii):
     lt x y -> x <> y.
Admitted.
Definition compare (a b : ascii) : Compare lt eq a b.
Admitted.
Definition eq_dec (x y : ascii): {x = y} + { ~ (x = y)}.
Admitted.
End Ascii_as_OT.

Module String_as_OT <: UsualOrderedType.

  Definition t := string.

  Definition eq := @eq string.
  Definition eq_refl := @eq_refl t.
  Definition eq_sym := @eq_sym t.
  Definition eq_trans := @eq_trans t.

  Inductive lts : string -> string -> Prop :=
    | lts_empty : forall a s, lts EmptyString (String a s)
    | lts_tail : forall a s1 s2, lts s1 s2 -> lts (String a s1) (String a s2)
    | lts_head : forall (a b : ascii) s1 s2,
        lt (nat_of_ascii a) (nat_of_ascii b) ->
        lts (String a s1) (String b s2).

  Definition lt := lts.

  Lemma lt_trans : forall x y z : t, lt x y -> lt y z -> lt x z.
Admitted.

  Lemma lt_not_eq : forall x y : t, lt x y -> ~ eq x y.
Admitted.
Definition compare (a b : string) : Compare lt eq a b.
Admitted.
Definition eq_dec (x y : string): {x = y} + { ~ (x = y)}.
Admitted.
End String_as_OT.

End OrderedTypeEx.

Ltac unfold_head m :=
  match m with
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ =>
    unfold hdef
  | ?hdef _ _ =>
    unfold hdef
  | ?hdef _ =>
    unfold hdef
  | ?hdef =>
    unfold hdef
  end.

Module Export Kami_DOT_Lib_DOT_Reflection_WRAPPED.
Module Export Reflection.
Import Stdlib.Strings.String.
Import Stdlib.Lists.List.

Fixpoint noDupStr (l: list string) :=
  match l with
  | nil => true
  | h :: t =>
    if in_dec string_dec h t then false else noDupStr t
  end.

Lemma noDupStr_NoDup:
  forall l, noDupStr l = true -> NoDup l.
Admitted.

End Reflection.
Include Kami_DOT_Lib_DOT_Reflection_WRAPPED.Reflection.
Import Stdlib.Strings.String.

Fixpoint string_of_nat (n: nat) :=
  match n with
    | O => "a"%string
    | S n' => append "a"%string (string_of_nat n')
  end.
Definition indexSymbol: string.
Admitted.
Definition prefixSymbol: string.
exact ("."%string).
Defined.

Definition addIndexToStr {A} strA (i: A) s := append s (append indexSymbol (strA i)).

Definition withIndex str idx :=
  addIndexToStr string_of_nat idx str.
Definition withPrefix pre str :=
  append str (append prefixSymbol pre).

Notation "str '__' idx" := (withIndex str idx) (at level 0).
Notation "pre '--' str" := (withPrefix pre str) (at level 0).

Inductive word : nat -> Set :=
| WO : word O
| WS : bool -> forall n, word n -> word (S n).
Fixpoint natToWord (sz n : nat) : word sz.
Admitted.

Import Stdlib.Lists.List.

Record Attribute (A : Type) := { attrName: string; attrType: A }.

Section Attribute.
  Variable A: Type.

  Fixpoint getAttribute (n: string) (attrs: list (Attribute A)) :=
    match attrs with
      | nil => None
      | attr :: attrs' =>
        if string_eq n (attrName attr) then Some attr
        else getAttribute n attrs'
    end.

  Definition namesOf (attrs: list (Attribute A)) := map (@attrName _) attrs.
End Attribute.

Import Stdlib.FSets.FMapInterface.

Module FMapListEq (UOT : UsualOrderedType) <: FMapInterface.S with Module E := UOT.

  Module OT := UOT_to_OT UOT.
  Module M := FMapList.Make(OT).
  Include M.

End FMapListEq.

Module Type LT_IRREL (Import T : OrderedType).
End LT_IRREL.

Module Type UsualOrderedTypeLTI := UsualOrderedType <+ LT_IRREL.

Module Type MapLeibniz.
  Declare Module E : UsualOrderedType.
  Include Sfun E.
End MapLeibniz.

Module LeibnizFacts (M : MapLeibniz).
  Import M.

  Definition unionL {A} (m m' : t A) := fold (@add A) m m'.
  Definition union {A} := @unionL A.
Definition subtractKV {A}
             (deceqA : forall x y : A, sumbool (x = y) (x <> y))
             (m1 m2 : t A) : t A.
Admitted.

  Definition Disj {A} (m m' : t A) := forall k, ~ In k m \/ ~ In k m'.
  Definition KeysDisj {A} (m: t A) (d: list E.t) := forall k, List.In k d -> ~ In k m.

End LeibnizFacts.

Module FMapListLeib (UOT : UsualOrderedTypeLTI) <: MapLeibniz.
  Include (FMapListEq UOT).
End FMapListLeib.

Module String_as_OT' <: UsualOrderedTypeLTI.
  Include String_as_OT.
End String_as_OT'.

Module Export M.
  Module Map := FMapListLeib String_as_OT'.
  Include Map.
  Include (LeibnizFacts Map).

Module Export Kami_DOT_Syntax_WRAPPED.
Module Export Syntax.
Set Asymmetric Patterns.

Inductive Vec (A: Type): nat -> Type :=
| Vec0: A -> Vec A 0
| VecNext n: Vec A n -> Vec A n -> Vec A (S n).

Inductive Kind :=
| Bool    : Kind
| Bit     : nat -> Kind
| Vector  : Kind -> nat -> Kind
| Struct  : forall n, Vector.t (Attribute Kind) n -> Kind
| Array   : Kind -> nat -> Kind.
Fixpoint type (t: Kind): Type.
exact (match t with
  | Bool => bool
  | Bit n => word n
  | Vector nt n => word n -> type nt
  | Struct n ks =>
    forall i: Fin.t n,
      Vector.nth (Vector.map (fun p => type (attrType p)) ks) i
  | Array nt n => Fin.t n -> type nt
  end).
Defined.

Inductive FullKind: Type :=
| SyntaxKind: Kind -> FullKind
| NativeKind (t: Type) (c: t) : FullKind.

Inductive ConstT: Kind -> Type :=
| ConstBool: bool -> ConstT Bool
| ConstBit n: word n -> ConstT (Bit n)
| ConstVector k n: Vec (ConstT k) n -> ConstT (Vector k n)
| ConstStruct n (ls: Vector.t _ n): ilist (fun a => ConstT (attrType a)) ls -> ConstT (Struct ls)
| ConstArray k n: Vector.t (ConstT k) n -> ConstT (Array k n).

Inductive ConstFullT: FullKind -> Type :=
| SyntaxConst k: ConstT k -> ConstFullT (SyntaxKind k)
| NativeConst t (c c': t): ConstFullT (NativeKind c).
Coercion ConstBit : word >-> ConstT.
Fixpoint getDefaultConst (k: Kind): ConstT k.
Admitted.

Record SignatureT :=
  { arg: Kind;
    ret: Kind
  }.

Definition SignatureT_dec: forall (s1 s2: SignatureT), {s1 = s2} + {s1 <> s2}.
Admitted.

Lemma signature_eq: forall sig, SignatureT_dec sig sig = left eq_refl.
Admitted.

Inductive UniBoolOp: Set :=
| NegB: UniBoolOp.

Inductive BinBoolOp: Set :=
| AndB: BinBoolOp
| OrB: BinBoolOp.

Inductive UniBitOp: nat -> nat -> Set :=
| Inv n: UniBitOp n n
| Neg n: UniBitOp n n
| ConstExtract n1 n2 n3: UniBitOp (n1 + n2 + n3) n2
| Trunc n1 n2: UniBitOp (n1 + n2) n1
| ZeroExtendTrunc n1 n2: UniBitOp n1 n2
| SignExtendTrunc n1 n2: UniBitOp n1 n2
| TruncLsb n1 n2 : UniBitOp (n1 + n2) n2.

Inductive BinSign := SignSS | SignSU | SignUU.

Inductive BinBitOp: nat -> nat -> nat -> Set :=
| Add n: BinBitOp n n n
| Sub n: BinBitOp n n n
| Mul n: BinSign -> BinBitOp n n n
| Div n: bool -> BinBitOp n n n
| Rem n: bool -> BinBitOp n n n
| Band n: BinBitOp n n n
| Bor n: BinBitOp n n n
| Bxor n: BinBitOp n n n
| Sll n m: BinBitOp n m n
| Srl n m: BinBitOp n m n
| Sra n m: BinBitOp n m n
| Concat n1 n2: BinBitOp n1 n2 (n2 + n1).

Inductive BinBitBoolOp: nat -> nat -> Set :=
| Lt n: BinBitBoolOp n n
| Slt n: BinBitBoolOp n n.

Section Phoas.
  Variable ty: Kind -> Type.
  Definition fullType k := match k with
                           | SyntaxKind k' => ty k'
                           | NativeKind k' _ => k'
                           end.

  Definition FieldKind {n} (ls: Vector.t (Attribute Kind) n)
             (i: Fin.t n) :=
    Vector.nth (Vector.map (@attrType _) ls) i.

  Inductive Expr: FullKind -> Type :=
  | Var k: fullType k -> Expr k
  | Const k: ConstT k -> Expr (SyntaxKind k)
  | UniBool: UniBoolOp -> Expr (SyntaxKind Bool) -> Expr (SyntaxKind Bool)
  | BinBool: BinBoolOp -> Expr (SyntaxKind Bool) -> Expr (SyntaxKind Bool) -> Expr (SyntaxKind Bool)
  | UniBit n1 n2: UniBitOp n1 n2 -> Expr (SyntaxKind (Bit n1)) -> Expr (SyntaxKind (Bit n2))
  | BinBit n1 n2 n3: BinBitOp n1 n2 n3 ->
                     Expr (SyntaxKind (Bit n1)) -> Expr (SyntaxKind (Bit n2)) ->
                     Expr (SyntaxKind (Bit n3))
  | BinBitBool n1 n2: BinBitBoolOp n1 n2 ->
                      Expr (SyntaxKind (Bit n1)) -> Expr (SyntaxKind (Bit n2)) ->
                      Expr (SyntaxKind Bool)
  | ITE k: Expr (SyntaxKind Bool) -> Expr k -> Expr k -> Expr k
  | Eq k: Expr (SyntaxKind k) -> Expr (SyntaxKind k) -> Expr (SyntaxKind Bool)
  | ReadIndex i k: Expr (SyntaxKind (Bit i)) ->
                   Expr (SyntaxKind (Vector k i)) -> Expr (SyntaxKind k)
  | ReadField n (ls: Vector.t _ n) (i: Fin.t n):
      Expr (SyntaxKind (Struct ls)) -> Expr (SyntaxKind (FieldKind ls i))
  | BuildVector n k: Vec (Expr (SyntaxKind n)) k -> Expr (SyntaxKind (Vector n k))
  | BuildStruct n (attrs: Vector.t _ n):
      ilist (fun a => Expr (SyntaxKind (attrType a))) attrs -> Expr (SyntaxKind (Struct attrs))
  | UpdateVector i k: Expr (SyntaxKind (Vector k i)) ->
                      Expr (SyntaxKind (Bit i)) -> Expr (SyntaxKind k) ->
                      Expr (SyntaxKind (Vector k i))
  | ReadArrayIndex i k sz: Expr (SyntaxKind (Bit i)) ->
                           Expr (SyntaxKind (Array k (S sz))) ->
                           Expr (SyntaxKind k)
  | BuildArray n k:
      Vector.t (Expr (SyntaxKind n)) k -> Expr (SyntaxKind (Array n k))
  | UpdateArray k sz i: Expr (SyntaxKind (Array k (S sz))) ->
                        Expr (SyntaxKind (Bit i)) ->
                        Expr (SyntaxKind k) ->
                        Expr (SyntaxKind (Array k (S sz))).

  Inductive BitFormat :=
  | Binary
  | Decimal
  | Hex.

  Definition FullBitFormat := (nat * BitFormat)%type.

  Inductive Disp: Type :=
  | DispBool: FullBitFormat -> Expr (SyntaxKind Bool) -> Disp
  | DispBit: FullBitFormat -> forall n, Expr (SyntaxKind (Bit n)) -> Disp
  | DispStruct n: (Vector.t FullBitFormat n) ->
                  forall ls, Expr (SyntaxKind (@Struct n ls)) -> Disp
  | DispArray: FullBitFormat -> forall n k, Expr (SyntaxKind (Array n k)) -> Disp.

  Inductive ActionT (lretT: Kind) : Type :=
  | MCall (meth: string) s:
      Expr (SyntaxKind (arg s)) ->
      (ty (ret s) -> ActionT lretT) ->
      ActionT lretT
  | Let_ lretT': Expr lretT' -> (fullType lretT' -> ActionT lretT) -> ActionT lretT
  | ReadNondet:
      forall k, (fullType k -> ActionT lretT) -> ActionT lretT
  | ReadReg (r: string):
      forall k, (fullType k -> ActionT lretT) -> ActionT lretT
  | WriteReg (r: string) k:
      Expr k -> ActionT lretT -> ActionT lretT
  | IfElse: Expr (SyntaxKind Bool) -> forall k,
                                        ActionT k ->
                                        ActionT k ->
                                        (ty k -> ActionT lretT) ->
                                        ActionT lretT
  | Assert_: Expr (SyntaxKind Bool) -> ActionT lretT -> ActionT lretT
  | Displ: list Disp -> ActionT lretT -> ActionT lretT
  | Return: Expr (SyntaxKind lretT) -> ActionT lretT.

End Phoas.

Definition Action (retTy : Kind) := forall ty, ActionT ty retTy.
Definition MethodT (sig : SignatureT) := forall ty, ty (arg sig) -> ActionT ty (ret sig).

Inductive RegInitValue :=
| RegInitCustom: sigT ConstFullT -> RegInitValue
| RegInitDefault: FullKind -> RegInitValue.

Definition RegInitT := Attribute RegInitValue.
Definition DefMethT := Attribute (sigT MethodT).

Definition filterDms (dms: list DefMethT) (filt: list string) :=
  filter (fun dm => if string_in (attrName dm) filt then false else true) dms.

Definition Void := Bit 0.

Record PrimitiveModule :=
  { pm_name: string;
    pm_regInits: list RegInitT;
    pm_rules: list (Attribute (Action Void));
    pm_methods: list DefMethT }.

Inductive Modules: Type :=
| PrimMod (prim: PrimitiveModule): Modules
| Mod (regs: list RegInitT)
      (rules: list (Attribute (Action Void)))
      (dms: list DefMethT): Modules
| ConcatMod (m1 m2: Modules): Modules.

Fixpoint getRules m :=
  match m with
  | PrimMod prim => prim.(pm_rules)
  | Mod _ rules _ => rules
  | ConcatMod m1 m2 => getRules m1 ++ getRules m2
  end.

Fixpoint getRegInits m :=
  match m with
  | PrimMod prim => prim.(pm_regInits)
  | Mod regs _ _ => regs
  | ConcatMod m1 m2 => getRegInits m1 ++ getRegInits m2
  end.
Fixpoint getDefsBodies (m: Modules): list DefMethT.
exact (match m with
  | PrimMod prim => prim.(pm_methods)
  | Mod _ _ meths => meths
  | ConcatMod m1 m2 => (getDefsBodies m1) ++ (getDefsBodies m2)
  end).
Defined.

Definition getDefs m: list string := namesOf (getDefsBodies m).

Section AppendAction.
  Variable ty: Kind -> Type.

  Fixpoint appendAction {retT1 retT2} (a1: ActionT ty retT1)
           (a2: ty retT1 -> ActionT ty retT2): ActionT ty retT2 :=
    match a1 with
      | MCall name sig ar cont => MCall name sig ar (fun a => appendAction (cont a) a2)
      | Let_ _ ar cont => Let_ ar (fun a => appendAction (cont a) a2)
      | ReadNondet k cont => ReadNondet k (fun a => appendAction (cont a) a2)
      | ReadReg reg k cont => ReadReg reg k (fun a => appendAction (cont a) a2)
      | WriteReg reg _ e cont => WriteReg reg e (appendAction cont a2)
      | IfElse ce _ ta fa cont => IfElse ce ta fa (fun a => appendAction (cont a) a2)
      | Assert_ ae cont => Assert_ ae (appendAction cont a2)
      | Displ ls cont => Displ ls (appendAction cont a2)
      | Return e => Let_ e a2
    end.

End AppendAction.
Definition typeUT (k: Kind): Type.
exact (unit).
Defined.
  Definition fullTypeUT := fullType typeUT.
Definition getUT (k: FullKind): fullTypeUT k.
Admitted.

  Fixpoint getCallsA {k} (a: ActionT typeUT k): list string :=
    match a with
      | MCall m _ _ c => m :: (getCallsA (c tt))
      | Let_ fk e c => getCallsA
                         (c match fk as fk' return fullType typeUT fk' with
                              | SyntaxKind _ => tt
                              | NativeKind _ c' => c'
                            end)
      | ReadNondet fk c => getCallsA
                            (c match fk as fk' return fullType typeUT fk' with
                                 | SyntaxKind _ => tt
                                 | NativeKind _ c' => c'
                               end)
      | ReadReg _ fk c => getCallsA
                            (c match fk as fk' return fullType typeUT fk' with
                                 | SyntaxKind _ => tt
                                 | NativeKind _ c' => c'
                               end)
      | WriteReg _ _ _ c => getCallsA c
      | IfElse _ _ aT aF c =>
        (getCallsA aT) ++ (getCallsA aF)
                       ++ (getCallsA (c tt))
      | Assert_ _ c => getCallsA c
      | Displ ls c => getCallsA c
      | Return _ => nil
    end.
Fixpoint getCallsR (rl: list (Attribute (Action (Bit 0))))
  : list string.
Admitted.
Fixpoint getCallsM (ms: list DefMethT): list string.
Admitted.

  Definition getCalls m := getCallsR (getRules m) ++ getCallsM (getDefsBodies m).
  Fixpoint isLeaf {retT} (a: ActionT typeUT retT) (cs: list string) :=
    match a with
    | MCall name _ _ cont => (negb (string_in name cs)) && (isLeaf (cont tt) cs)
    | Let_ _ ar cont => isLeaf (cont (getUT _)) cs
    | ReadNondet k cont => isLeaf (cont (getUT _)) cs
    | ReadReg reg k cont => isLeaf (cont (getUT _)) cs
    | WriteReg reg _ e cont => isLeaf cont cs
    | IfElse ce _ ta fa cont => (isLeaf ta cs) && (isLeaf fa cs) && (isLeaf (cont tt) cs)
    | Assert_ ae cont => isLeaf cont cs
    | Displ ls cont => isLeaf cont cs
    | Return e => true
    end.

  Definition noCallDm (dm: DefMethT) (tgt: DefMethT) :=
    isLeaf (projT2 (attrType dm) typeUT tt) (attrName tgt :: nil).

  Fixpoint noCallsDms (dms: list DefMethT) (calls: list string) :=
    match dms with
    | nil => true
    | dm :: dms' =>
      if isLeaf (projT2 (attrType dm) typeUT tt) calls
      then noCallsDms dms' calls
      else false
    end.

  Fixpoint noCallsRules (rules: list (Attribute (Action Void)))
           (calls: list string) :=
    match rules with
    | nil => true
    | r :: rules' =>
      if isLeaf (attrType r typeUT) calls
      then noCallsRules rules' calls
      else false
    end.

  Definition noCalls (m: Modules) (calls: list string) :=
    (noCallsRules (getRules m) calls)
      && (noCallsDms (getDefsBodies m) calls).

  Definition noInternalCalls (m: Modules) :=
    noCalls m (getDefs m).
Notation "name :: ty" := {| attrName := name; attrType := ty |} : kami_struct_scope.
Delimit Scope kami_struct_scope with struct.
Notation "m1 ++ m2" := (ConcatMod m1 m2) : kami_scope.
Delimit Scope kami_scope with kami.

End Syntax.
Module Export Kami.
Module Export Syntax.
Include Kami_DOT_Syntax_WRAPPED.Syntax.
End Syntax.
Import Stdlib.Lists.List.
Set Asymmetric Patterns.

Section Base.
  Variable type: Kind -> Type.
Definition inlineArg {argT retT} (a: Expr type (SyntaxKind argT))
             (m: type argT -> ActionT type retT): ActionT type retT.
exact (Let_ a m).
Defined.
Definition getBody (n: string) (dm: DefMethT) (sig: SignatureT):
    option (sigT (fun x: DefMethT => projT1 (attrType x) = sig)).
exact (if string_eq n (attrName dm) then
      match SignatureT_dec (projT1 (attrType dm)) sig with
        | left e => Some (existT _ dm e)
        | right _ => None
      end
    else None).
Defined.

  Fixpoint inlineDm {retT} (a: ActionT type retT) (dm: DefMethT): ActionT type retT :=
    match a with
      | MCall name sig ar cont =>
        match getBody name dm sig with
          | Some (existT dm e) =>
            appendAction (inlineArg ar ((eq_rect _ _ (projT2 (attrType dm)) _ e)
                                          type))
                         (fun ak => inlineDm (cont ak) dm)
          | None => MCall name sig ar (fun ak => inlineDm (cont ak) dm)
        end
      | Let_ _ ar cont => Let_ ar (fun a => inlineDm (cont a) dm)
      | ReadNondet k cont => ReadNondet k (fun a => inlineDm (cont a) dm)
      | ReadReg reg k cont => ReadReg reg k (fun a => inlineDm (cont a) dm)
      | WriteReg reg _ e cont => WriteReg reg e (inlineDm cont dm)
      | IfElse ce _ ta fa cont => IfElse ce (inlineDm ta dm) (inlineDm fa dm)
                                         (fun a => inlineDm (cont a) dm)
      | Assert_ ae cont => Assert_ ae (inlineDm cont dm)
      | Displ ls cont => Displ ls (inlineDm cont dm)
      | Return e => Return e
    end.

End Base.
Definition inlineDmToRule (r: Attribute (Action Void)) (leaf: DefMethT)
  : Attribute (Action Void).
exact ({| attrName := attrName r;
       attrType := fun type => inlineDm (attrType r type) leaf |}).
Defined.

  Definition inlineDmToRules (rules: list (Attribute (Action Void))) (leaf: DefMethT) :=
    map (fun r => inlineDmToRule r leaf) rules.

  Definition inlineDmToDm (dm leaf: DefMethT): DefMethT.
    refine {| attrName := attrName dm;
              attrType := existT _ (projT1 (attrType dm))
                                 _ |}.
    unfold MethodT; intros.
    exact (inlineDm (projT2 (attrType dm) ty X) leaf).
  Defined.

  Definition inlineDmToDms (dms: list DefMethT) (leaf: DefMethT) :=
    map (fun d => inlineDmToDm d leaf) dms.

  Definition inlineDmToMod (m: Modules) (leaf: string) :=
    match getAttribute leaf (getDefsBodies m) with
      | Some dm =>
        (Mod (getRegInits m) (inlineDmToRules (getRules m) dm)
             (inlineDmToDms (getDefsBodies m) dm), noCallDm dm dm)
      | None => (m, false)
    end.

  Fixpoint inlineDms' (m: Modules) (dms: list string) :=
    match dms with
      | nil => (Mod (getRegInits m) (getRules m) (getDefsBodies m), true)
      | dm :: dms' =>
        let (im, ib) := inlineDmToMod m dm in
        let (im', ib') := inlineDms' im dms' in
        (im', ib && ib')
    end.

  Definition inlineDms (m: Modules) := inlineDms' m (namesOf (getDefsBodies m)).

  Definition inline (m: Modules) := inlineDms m.

  Definition inlineF (m: Modules) :=
    let (im, ib) := inline m in
    (Mod (getRegInits im) (getRules im)
         (filterDms (getDefsBodies im) (getCalls m)), noInternalCalls im && ib).
Import Kami.Syntax.

Notation Default := (getDefaultConst _).

Notation "'MethodSig' name () : retT" :=
  (Build_Attribute name {| arg := Void; ret := retT |})
  (at level 0, name at level 0, retT at level 200).
Notation "'MethodSig' name ( argT ) : retT" :=
  (Build_Attribute name {| arg := argT; ret := retT |})
  (at level 0, name at level 0, argT at level 200, retT at level 200).

Notation "# v" := (Var _ (SyntaxKind _) v) (at level 5, format "# v") : kami_expr_scope.
Notation "!" := (UniBool NegB) (at level 15) : kami_expr_scope.

Infix "+" := (BinBit (Add _)) : kami_expr_scope.
Infix "*" := (BinBit (Mul _ SignUU)) : kami_expr_scope.

Delimit Scope kami_expr_scope with kami_expr.
Notation "$ n" := (Const _ (natToWord _ n)) (at level 1) : kami_expr_scope.
Notation "$$ e" := (Const _ e) (at level 5) : kami_expr_scope.

Notation "k @ var" := (Expr var (SyntaxKind k)) (at level 0).

Notation "'Call' meth ( arg ) ; cont " :=
  (MCall (attrName meth) (attrType meth) arg%kami_expr (fun _ => cont))
    (at level 12, right associativity, meth at level 0) : kami_action_scope.
Notation "'Call' name <- meth () ; cont " :=
  (MCall (attrName meth) (attrType meth) (Const _ Default) (fun name => cont))
    (at level 12, right associativity, name at level 0, meth at level 0) : kami_action_scope.

Notation "'CallM' meth ( a : argT ) ; cont " :=
  (MCall meth%string {| arg := argT; ret := Void |} a%kami_expr (fun _ => cont))
    (at level 12, right associativity, meth at level 0, a at level 99) : kami_action_scope.
Notation "'CallM' name : retT <- meth () ; cont " :=
  (MCall meth%string {| arg := Void; ret := retT |} (Const _ Default) (fun name => cont))
    (at level 12, right associativity, name at level 0, meth at level 0) : kami_action_scope.
Notation "'LET' name <- expr ; cont " :=
  (Let_ expr%kami_expr (fun name => cont))
    (at level 12, right associativity, name at level 0) : kami_action_scope.
Notation "'LET' name : t <- expr ; cont " :=
  (Let_ (lretT' := SyntaxKind t) expr%kami_expr (fun name => cont))
    (at level 12, right associativity, name at level 0) : kami_action_scope.
Notation "'Nondet' name : kind ; cont" :=
  (ReadNondet kind (fun name => cont))
    (at level 12, right associativity, name at level 0) : kami_action_scope.
Notation "'ReadN' name : kind <- reg ; cont " :=
  (ReadReg reg kind (fun name => cont))
    (at level 12, right associativity, name at level 0) : kami_action_scope.
Notation "'Read' name <- reg ; cont" :=
  (ReadReg reg _ (fun name => cont))
    (at level 12, right associativity, name at level 0) : kami_action_scope.
Notation "'WriteN' reg : kind <- expr ; cont " :=
  (@WriteReg _ _ reg kind expr%kami_expr cont)
    (at level 12, right associativity, reg at level 0) : kami_action_scope.
Notation "'Write' reg <- expr ; cont " :=
  (WriteReg reg expr%kami_expr cont)
    (at level 12, right associativity, reg at level 0) : kami_action_scope.
Notation "'Write' reg : kind <- expr ; cont " :=
  (@WriteReg _ _ reg (SyntaxKind kind) expr%kami_expr cont)
    (at level 12, right associativity, reg at level 0) : kami_action_scope.
Notation "'If' cexpr 'then' tact 'else' fact 'as' name ; cont " :=
  (IfElse cexpr%kami_expr tact fact (fun name => cont))
    (at level 13, right associativity, name at level 0, cexpr at level 0, tact at next level, fact at next level) : kami_action_scope.
Notation "'Assert' expr ; cont " :=
  (Assert_ expr%kami_expr cont)
    (at level 12, right associativity) : kami_action_scope.
Notation "'Ret' expr" :=
  (Return expr%kami_expr) (at level 12) : kami_action_scope.
Notation "'Retv'" := (Return (Const _ (k := Void) Default)) : kami_action_scope.

Delimit Scope kami_action_scope with kami_action.

Inductive ModuleElt :=
| MERegister (_ : RegInitT)
| MERule (_ : Attribute (Action Void))
| MEMeth (_ : DefMethT).

Inductive InModule :=
| NilInModule
| ConsInModule (_ : ModuleElt) (_ : InModule).

Fixpoint makeModule' (im : InModule) :=
  match im with
  | NilInModule => (nil, nil, nil)
  | ConsInModule e i =>
    let '(iregs, irules, imeths) := makeModule' i in
    match e with
    | MERegister mreg => (mreg :: iregs, irules, imeths)
    | MERule mrule => (iregs, mrule :: irules, imeths)
    | MEMeth mmeth => (iregs, irules, mmeth :: imeths)
    end
  end.

Definition makeModule (im : InModule) :=
  let '(regs, rules, meths) := makeModule' im in
  Mod regs rules meths.

Notation "'RegisterN' name : type <- init" :=
  (MERegister (Build_Attribute name (RegInitCustom (existT ConstFullT type init))))
    (at level 0, name at level 0, type at level 0, init at level 0) : kami_scope.

Notation "'Register' name : type <- 'Default'" :=
  (MERegister (Build_Attribute name (RegInitDefault (SyntaxKind type))))
    (at level 0, name at level 0, type at level 0) : kami_scope.

Notation "'Method' name () : retT := c" :=
  (MEMeth (Build_Attribute name
                           (existT MethodT {| arg := Void; ret := retT |}
                                   (fun ty => fun _ : ty Void =>
                                                (c)%kami_action : ActionT ty retT))))
    (at level 0, name at level 0) : kami_scope.

Notation "'Method' name ( param : dom ) : retT := c" :=
  (MEMeth (Build_Attribute name
                           (existT MethodT {| arg := dom; ret := retT |}
                                   (fun ty => fun param : ty dom =>
                                                (c)%kami_action : ActionT ty retT))))
    (at level 0, name at level 0, param at level 0, dom at level 0) : kami_scope.

Notation "'Rule' name := c" :=
  (MERule (Build_Attribute name (fun ty => c%kami_action : ActionT ty Void)))
    (at level 0, name at level 0) : kami_scope.

Notation "'MODULE' { m1 'with' .. 'with' mN }" :=
  (makeModule (ConsInModule m1%kami .. (ConsInModule mN%kami NilInModule) ..))
    (at level 0, only parsing).

Definition RegsT := M.t (sigT (fullType type)).

Definition SignT k := (type (arg k) * type (ret k))%type.

Definition MethsT := M.t (sigT SignT).

Section Semantics.
Fixpoint evalExpr exprT (e: Expr type exprT): fullType type exprT.
Admitted.

  Variable oldRegs: RegsT.
  Definition UpdatesT := RegsT.

  Inductive SemAction:
    forall k, ActionT type k -> UpdatesT -> MethsT -> type k -> Prop :=
  | SemMCall
      meth s (marg: Expr type (SyntaxKind (arg s)))
      (mret: type (ret s))
      retK (fret: type retK)
      (cont: type (ret s) -> ActionT type retK)
      newRegs (calls: MethsT) acalls
      (HDisjCalls: M.find meth calls = None)
      (HAcalls: acalls = M.add meth (existT _ _ (evalExpr marg, mret)) calls)
      (HSemAction: SemAction (cont mret) newRegs calls fret):
      SemAction (MCall meth s marg cont) newRegs acalls fret
  | SemLet
      k (e: Expr type k) retK (fret: type retK)
      (cont: fullType type k -> ActionT type retK) newRegs calls
      (HSemAction: SemAction (cont (evalExpr e)) newRegs calls fret):
      SemAction (Let_ e cont) newRegs calls fret
  | SemReadNondet
      valueT (valueV: fullType type valueT)
      retK (fret: type retK) (cont: fullType type valueT -> ActionT type retK)
      newRegs calls
      (HSemAction: SemAction (cont valueV) newRegs calls fret):
      SemAction (ReadNondet _ cont) newRegs calls fret
  | SemReadReg
      (r: string) regT (regV: fullType type regT)
      retK (fret: type retK) (cont: fullType type regT -> ActionT type retK)
      newRegs calls
      (HRegVal: M.find r oldRegs = Some (existT _ regT regV))
      (HSemAction: SemAction (cont regV) newRegs calls fret):
      SemAction (ReadReg r _ cont) newRegs calls fret
  | SemWriteReg
      (r: string) k
      (e: Expr type k)
      retK (fret: type retK)
      (cont: ActionT type retK) newRegs calls anewRegs
      (HDisjRegs: M.find r newRegs = None)
      (HANewRegs: anewRegs = M.add r (existT _ _ (evalExpr e)) newRegs)
      (HSemAction: SemAction cont newRegs calls fret):
      SemAction (WriteReg r e cont) anewRegs calls fret
  | SemIfElseTrue
      (p: Expr type (SyntaxKind Bool)) k1
      (a: ActionT type k1)
      (a': ActionT type k1)
      (r1: type k1)
      k2 (cont: type k1 -> ActionT type k2)
      newRegs1 newRegs2 calls1 calls2 (r2: type k2)
      (HDisjRegs: M.Disj newRegs1 newRegs2)
      (HDisjCalls: M.Disj calls1 calls2)
      (HTrue: evalExpr p = true)
      (HAction: SemAction a newRegs1 calls1 r1)
      (HSemAction: SemAction (cont r1) newRegs2 calls2 r2)
      unewRegs ucalls
      (HUNewRegs: unewRegs = M.union newRegs1 newRegs2)
      (HUCalls: ucalls = M.union calls1 calls2):
      SemAction (IfElse p a a' cont) unewRegs ucalls r2
  | SemIfElseFalse
      (p: Expr type (SyntaxKind Bool)) k1
      (a: ActionT type k1)
      (a': ActionT type k1)
      (r1: type k1)
      k2 (cont: type k1 -> ActionT type k2)
      newRegs1 newRegs2 calls1 calls2 (r2: type k2)
      (HDisjRegs: M.Disj newRegs1 newRegs2)
      (HDisjCalls: M.Disj calls1 calls2)
      (HFalse: evalExpr p = false)
      (HAction: SemAction a' newRegs1 calls1 r1)
      (HSemAction: SemAction (cont r1) newRegs2 calls2 r2)
      unewRegs ucalls
      (HUNewRegs: unewRegs = M.union newRegs1 newRegs2)
      (HUCalls: ucalls = M.union calls1 calls2):
      SemAction (IfElse p a a' cont) unewRegs ucalls r2
  | SemAssertTrue
      (p: Expr type (SyntaxKind Bool)) k2
      (cont: ActionT type k2) newRegs2 calls2 (r2: type k2)
      (HTrue: evalExpr p = true)
      (HSemAction: SemAction cont newRegs2 calls2 r2):
      SemAction (Assert_ p cont) newRegs2 calls2 r2
  | SemDispl ls k2 cont newRegs2 calls2 (r2: type k2)
             (HSemAction: SemAction cont newRegs2 calls2 r2):
      SemAction (Displ ls cont) newRegs2 calls2 r2
  | SemReturn
      k (e: Expr type (SyntaxKind k)) evale
      (HEvalE: evale = evalExpr e):
      SemAction (Return e) (M.empty _) (M.empty _) evale.
End Semantics.

Inductive UnitLabel :=
| Rle: option string -> UnitLabel
| Meth: option (Attribute (sigT SignT)) -> UnitLabel.

Record LabelT := { annot: option (option string);
                   defs: MethsT;
                   calls: MethsT }.

Section GivenModule.
  Variable m: Modules.

  Section GivenOldregs.
    Variable o: RegsT.

    Inductive Substep: UpdatesT -> UnitLabel -> MethsT -> Prop :=
    | EmptyRule:
        Substep (M.empty _) (Rle None) (M.empty _)
    | EmptyMeth:
        Substep (M.empty _) (Meth None) (M.empty _)
    | SingleRule k (a: Action Void)
                 (HInRules: List.In {| attrName := k; attrType := a |} (getRules m))
                 u cs (HAction: SemAction o (a type) u cs WO):
        Substep u (Rle (Some k)) cs
    | SingleMeth (f: DefMethT)
                 (HIn: In f (getDefsBodies m))
                 u cs argV retV
                 (HAction: SemAction o ((projT2 (attrType f)) type argV) u cs retV)
                 sig (Hsig: sig = {| attrName := attrName f;
                                     attrType := (existT _ _ (argV, retV)) |}):
        Substep u (Meth (Some sig)) cs.

    Record SubstepRec :=
      { upd: UpdatesT;
        unitAnnot: UnitLabel;
        cms: MethsT;
        substep: Substep upd unitAnnot cms }.

    Definition Substeps := list SubstepRec.

    Definition canCombine (s1 s2: SubstepRec) :=
      M.Disj (upd s1) (upd s2) /\
      (forall x y, unitAnnot s1 = Meth (Some x) ->
                   unitAnnot s2 = Meth (Some y) -> attrName x <> attrName y) /\
      (exists x, unitAnnot s1 = Meth x \/ unitAnnot s2 = Meth x) /\
      M.Disj (cms s1) (cms s2).

    Inductive substepsComb: Substeps -> Prop :=
    | NilSubsteps: substepsComb nil
    | AddSubstep (s: SubstepRec) (ss: Substeps):
        substepsComb ss -> (forall s', In s' ss -> canCombine s s') ->
        substepsComb (s :: ss).

    Fixpoint foldSSUpds (ss: Substeps) :=
      match ss with
        | x :: xs => M.union (foldSSUpds xs) (upd x)
        | nil => M.empty _
      end.

    Definition getLabel (a: UnitLabel) (cs: MethsT) :=
      {| annot :=
           match a with
             | Rle x => Some x
             | Meth _ => None
           end;
         defs :=
           match a with
             | Meth (Some {| attrName := n; attrType := t |}) =>
               M.add n t (M.empty _)
             | _ => M.empty _
           end;
         calls := cs |}.

    Definition getSLabel (s: SubstepRec) := getLabel (unitAnnot s) (cms s).

    Definition mergeLabel lnew lold :=
      match lnew, lold with
        | {| annot := a'; defs := d'; calls := c' |},
          {| annot := a; defs := d; calls := c |} =>
          {| annot := match a', a with
                        | None, x => x
                        | x, None => x
                        | x, y => x
                      end; defs := M.union d' d; calls := M.union c' c |}
      end.

    Definition addLabelLeft lold s := mergeLabel (getSLabel s) lold.

    Fixpoint foldSSLabel (ss: Substeps) :=
      match ss with
        | x :: xs => addLabelLeft (foldSSLabel xs) x
        | nil => {| annot := None; defs := M.empty _; calls := M.empty _ |}
      end.

    Theorem signIsEq :
      forall (l1 l2 : sigT SignT), {l1 = l2} + {l1 <> l2}.
Admitted.

    Definition hide (l: LabelT) :=
      Build_LabelT (annot l) (M.subtractKV signIsEq (defs l) (calls l))
                   (M.subtractKV signIsEq (calls l) (defs l)).

    Definition wellHidden (l: LabelT) := M.KeysDisj (defs l) (getCalls m) /\
                                         M.KeysDisj (calls l) (getDefs m).

    Inductive Step: UpdatesT -> LabelT -> Prop :=
      StepIntro ss (HSubsteps: substepsComb ss)
                (HWellHidden: wellHidden (hide (foldSSLabel ss))) :
        Step (foldSSUpds ss) (hide (foldSSLabel ss)).

  End GivenOldregs.

  Inductive Multistep: RegsT -> RegsT -> list LabelT -> Prop :=
  | NilMultistep o1 o2: o1 = o2 -> Multistep o1 o2 nil
  | Multi o a n (HMultistep: Multistep o n a)
          u l (HStep: Step n u l):
      Multistep o (M.union u n) (l :: a).
Definition initRegs (init: list RegInitT): RegsT.
Admitted.

  Definition LabelSeqT := list LabelT.

  Inductive Behavior: RegsT -> LabelSeqT -> Prop :=
  | BehaviorIntro a n (HMultistepBeh: Multistep (initRegs (getRegInits m)) n a):
      Behavior n a.
End GivenModule.

Definition equivalentLabel p l1 l2 :=
  p (defs l1) = defs l2 /\
  p (calls l1) = calls l2 /\
  match annot l1, annot l2 with
    | Some _, Some _ => True
    | None, None => True
    | _, _ => False
  end.

Inductive equivalentLabelSeq p: LabelSeqT -> LabelSeqT -> Prop :=
| NilEquivalentSeq: equivalentLabelSeq p nil nil
| EquivalentSeq x xs y ys: equivalentLabel p x y -> equivalentLabelSeq p xs ys ->
                           equivalentLabelSeq p (x :: xs) (y :: ys).

Definition traceRefines p m1 m2 :=
  forall s1 sig1, Behavior m1 s1 sig1 ->
                  exists s2 sig2, Behavior m2 s2 sig2 /\
                             equivalentLabelSeq p sig1 sig2.

Section MapSet.
  Variable A: Type.
  Variable p: M.key -> A -> option A.

  Definition rmModify k v m := match p k v with
                                 | None => m
                                 | Some v' => M.add k v' m
                               end.
  Definition liftToMap1 s :=
    M.fold rmModify s (M.empty _).

End MapSet.

Definition idElementwise A (k: M.key) (v: A) := Some v.

Notation "ma '<<=[' p ']' mb" :=
  (traceRefines (liftToMap1 p) ma mb) (at level 100, format "ma  <<=[  p  ]  mb").
Notation "ma '<<==' mb" :=
  (ma <<=[@idElementwise _] mb) (at level 100, format "ma  <<==  mb").

Section Equiv.
  Variable t1 t2: Kind -> Type.

  Definition ft1 := fullType t1.
  Definition ft2 := fullType t2.

  Inductive ActionEquiv: forall {k}, ActionT t1 k -> ActionT t2 k -> Prop :=
  | AEMCall: forall {k} n s (e1: Expr t1 (SyntaxKind (arg s)))
                    (e2: Expr t2 (SyntaxKind (arg s)))
                    (cont1: t1 (ret s) -> ActionT t1 k)
                    (cont2: t2 (ret s) -> ActionT t2 k),
      (forall (v1: ft1 (SyntaxKind (ret s)))
              (v2: ft2 (SyntaxKind (ret s))),
          ActionEquiv (cont1 v1) (cont2 v2)) ->
      ActionEquiv (MCall n s e1 cont1) (MCall n s e2 cont2)
  | AELet: forall {k k1' k2'} (e1: Expr t1 k1') (e2: Expr t2 k2')
                  (cont1: fullType t1 k1' -> ActionT t1 k)
                  (cont2: fullType t2 k2' -> ActionT t2 k),
      (forall (v1: ft1 k1') (v2: ft2 k2'),
          ActionEquiv (cont1 v1) (cont2 v2)) ->
      ActionEquiv (Let_ e1 cont1) (Let_ e2 cont2)
  | AEReadNondet: forall {k k1' k2'}
                         (cont1: fullType t1 k1' -> ActionT t1 k)
                         (cont2: fullType t2 k2' -> ActionT t2 k),
      (forall (v1: ft1 k1') (v2: ft2 k2'),
          ActionEquiv (cont1 v1) (cont2 v2)) ->
      ActionEquiv (ReadNondet _ cont1) (ReadNondet _ cont2)
  | AEReadReg: forall {k k1' k2'} rn
                      (cont1: fullType t1 k1' -> ActionT t1 k)
                      (cont2: fullType t2 k2' -> ActionT t2 k),
      (forall (v1: ft1 k1') (v2: ft2 k2'),
          ActionEquiv (cont1 v1) (cont2 v2)) ->
      ActionEquiv (ReadReg rn _ cont1) (ReadReg rn _ cont2)
  | AEWriteReg: forall {k k1' k2'} rn (e1: Expr t1 k1') (e2: Expr t2 k2')
                       (cont1: ActionT t1 k) (cont2: ActionT t2 k),
      ActionEquiv cont1 cont2 ->
      ActionEquiv (WriteReg rn e1 cont1) (WriteReg rn e2 cont2)
  | AEIfElse: forall {k k'} (e1: Expr t1 (SyntaxKind Bool)) (e2: Expr t2 (SyntaxKind Bool))
                     (ta1 fa1: ActionT t1 k') (ta2 fa2: ActionT t2 k')
                     (cont1: t1 k' -> ActionT t1 k) (cont2: t2 k' -> ActionT t2 k),
      ActionEquiv ta1 ta2 -> ActionEquiv fa1 fa2 ->
      (forall (v1: ft1 (SyntaxKind k')) (v2: ft2 (SyntaxKind k')),
          ActionEquiv (cont1 v1) (cont2 v2)) ->
      ActionEquiv (IfElse e1 ta1 fa1 cont1) (IfElse e2 ta2 fa2 cont2)
  | AEAssert: forall {k} (e1: Expr t1 (SyntaxKind Bool)) (e2: Expr t2 (SyntaxKind Bool))
                     (cont1: ActionT t1 k) (cont2: ActionT t2 k),
      ActionEquiv cont1 cont2 ->
      ActionEquiv (Assert_ e1 cont1) (Assert_ e2 cont2)
  | AERet: forall {k} (e1: Expr t1 (SyntaxKind k))
                  (e2: Expr t2 (SyntaxKind k)),
      ActionEquiv (Return e1) (Return e2).
Definition RuleEquiv (r: Attribute (Action Void)) : Prop.
Admitted.

  Inductive RulesEquiv: list (Attribute (Action Void)) -> Prop :=
  | RulesEquivNil: RulesEquiv nil
  | RulesEquivCons:
      forall r,
        RuleEquiv r ->
        forall rules,
          RulesEquiv rules -> RulesEquiv (r :: rules).
Definition MethEquiv (dm: DefMethT) : Prop.
Admitted.

  Inductive MethsEquiv: list DefMethT -> Prop :=
  | MethsEquivNil: MethsEquiv nil
  | MethsEquivCons:
      forall dm, MethEquiv dm ->
                 forall meths,
                   MethsEquiv meths -> MethsEquiv (dm :: meths).
Definition ModEquiv (m: Modules): Prop.
Admitted.

End Equiv.

Notation "'ModPhoasWf' m" := (forall ty1 ty2, ModEquiv ty1 ty2 m) (at level 0).

  Lemma ModEquiv_modular:
    forall t1 t2 m1 m2,
      ModEquiv t1 t2 m1 ->
      ModEquiv t1 t2 m2 ->
      ModEquiv t1 t2 (ConcatMod m1 m2).
Admitted.

Module Export Kami_DOT_SemFacts_WRAPPED.
Module Export SemFacts.

Lemma idElementwiseId A: liftToMap1 (@idElementwise A) = id.
Admitted.

End SemFacts.
Include Kami_DOT_SemFacts_WRAPPED.SemFacts.

Section Rename.
  Variable rename: string -> string.

  Definition renameAttr A a := {| attrName := rename (@attrName A a); attrType := attrType a |}.

  Definition renameListAttr A (ls: list (Attribute A)) :=
    map (@renameAttr _) ls.

  Fixpoint renameAction k t (a: ActionT t k) :=
    match a with
    | MCall meth s e cont => MCall (rename meth) s e (fun v => renameAction (cont v))
    | Let_ lret' e cont => Let_ e (fun v => renameAction (cont v))
    | ReadNondet k cont => ReadNondet k (fun v => renameAction (cont v))
    | ReadReg r k cont => ReadReg (rename r) k (fun v => renameAction (cont v))
    | WriteReg r k e cont => WriteReg (rename r) e (renameAction cont)
    | IfElse e k t f cont => IfElse e (renameAction t) (renameAction f)
                                   (fun v => renameAction (cont v))
    | Assert_ e cont => Assert_ e (renameAction cont)
    | Displ ls cont => Displ ls (renameAction cont)
    | Return e => Return e
    end.

  Definition renameRules (rules: list (Attribute (Action Void))) :=
                              map (fun x => match x with
                                         | {| attrName := r;
                                              attrType := a |} =>
                                           {| attrName := rename r;
                                              attrType := fun ty => renameAction (a ty) |}
                                            end) rules.
Definition renameMeths (meths: list DefMethT): list DefMethT.
Admitted.

  Fixpoint renameModules (m: Modules) :=
    match m with
    | PrimMod prim =>
      PrimMod {| pm_name := prim.(pm_name);
                 pm_regInits := renameListAttr prim.(pm_regInits);
                 pm_rules := renameRules prim.(pm_rules);
                 pm_methods := renameMeths prim.(pm_methods)
              |}
    | Mod regs rules dms => Mod (renameListAttr regs) (renameRules rules) (renameMeths dms)
    | ConcatMod m1 m2 => ConcatMod (renameModules m1) (renameModules m2)
    end.
End Rename.

Fixpoint bijective dom img s :=
  match dom, img with
  | d :: dt, i :: it =>
    if string_dec s d then i
    else if string_dec s i then d
         else bijective dt it s
  | _, _ => s
  end.

Theorem inlineF_refines:
  forall m (Hequiv: ModEquiv type typeUT m)
         (Hdms: NoDup (namesOf (getDefsBodies m))),
    let im := inlineF m in
    snd im = true -> traceRefines id m (fst im).
Admitted.

Section SpecializeModule.
  Variable m: Modules.
  Variable i: nat.

  Fixpoint makeNoDup (l: list string) :=
    match l with
    | nil => nil
    | h :: t => let nt := makeNoDup t in
                if string_in h nt then nt else h :: nt
    end.

  Definition spDom := makeNoDup ((namesOf (getRegInits m))
                                   ++ (namesOf (getRules m))
                                   ++ (namesOf (getDefsBodies m))
                                   ++ (getCalls m)).

  Definition spf := fun e => e __ i.

  Definition spImg := map spf spDom.

  Definition specializer := bijective spDom spImg.
  Definition specializeMod := renameModules specializer m.

End SpecializeModule.

Section Duplicate.
  Variable m: nat -> Modules.

  Fixpoint duplicate n :=
    match n with
    | O => specializeMod (m O) O
    | S n' => ConcatMod (specializeMod (m n) n) (duplicate n')
    end.

End Duplicate.

Section DuplicateFacts.
  Variable m: nat -> Modules.

  Lemma duplicate_ModEquiv:
    forall ty1 ty2 n,
      (forall iv, ModEquiv ty1 ty2 (m iv)) ->
      ModEquiv ty1 ty2 (duplicate m n).
Admitted.

End DuplicateFacts.

Ltac kequiv_red :=
  eauto;
  match goal with
  | [ |- ModEquiv _ _ _ ] => apply duplicate_ModEquiv; intros
  | [ |- ModEquiv _ _ _ ] => apply ModEquiv_modular
  | [ |- ModEquiv _ _ ?m ] => unfold_head m
  end.

Ltac kequiv_unit :=
  match goal with
  | [ |- ModEquiv _ _ _ ] => constructor; intros
  | [ |- RuleEquiv _ _ _ ] => unfold RuleEquiv; intros
  | [ |- MethEquiv _ _ _ ] => unfold MethEquiv; intros
  | [ |- RulesEquiv _ _ _ ] => constructor; intros
  | [ |- MethsEquiv _ _ _ ] => constructor; intros
  | [ |- ActionEquiv _ _ ] => constructor; intros
  | [ |- In _ _] => simpl; tauto
  end.

Ltac kequiv :=
  intros;
  repeat kequiv_red;
  repeat kequiv_unit.

Ltac kstring_simpl :=
  repeat autounfold with NameDefs in *;
  cbv [withPrefix prefixSymbol append] in *.

Ltac kinline_compute_in H :=
  repeat autounfold with ModuleDefs in H;
  repeat autounfold with MethDefs in H;
  cbv [inlineF inline inlineDms inlineDms'
               inlineDmToMod inlineDmToRules inlineDmToRule
               inlineDmToDms inlineDmToDm inlineDm
               filterDms filter
               noInternalCalls noCalls
               noCallsRules noCallsDms noCallDm isLeaf
               getBody inlineArg
               appendAction getAttribute
               makeModule makeModule' max plus
               pm_name pm_regInits pm_rules pm_methods
               getRegInits getDefs getDefsBodies getRules namesOf
               map app attrName attrType
               getCalls getCallsR getCallsM getCallsA
               ret arg fst snd projT1 projT2
               string_in string_eq ascii_eq
               Bool.eqb existsb andb orb negb] in H;
  kstring_simpl;
  repeat
    match type of H with
    | context[SignatureT_dec ?s ?s] =>
      rewrite (signature_eq s) in H; unfold eq_rect in H
    end.

Ltac kinline_refine m :=

  let Hequiv := fresh "Hequiv" in
  assert (ModEquiv type typeUT m) as Hequiv by kequiv;

  let Hin := fresh "Hin" in
  pose proof (inlineF_refines
                Hequiv (Reflection.noDupStr_NoDup (namesOf (getDefsBodies m)) eq_refl))
    as Hin;
  unfold MethsT in Hin; rewrite <-SemFacts.idElementwiseId in Hin;

  let origm := fresh "origm" in
  set m as origm in Hin at 2;
  kinline_compute_in Hin;
  subst origm;
  specialize (Hin eq_refl);
  exact (existT _ _ Hin).

Import ListNotations.

Section NativeFifo.
  Variable fifoName: string.

  Variable dType: Kind.
  Variable default: ConstT dType.

  Local Notation "^ s" := (fifoName -- s) (at level 0).

  Definition listEltT ty := list (ty dType).
  Definition listEltK ty := @NativeKind (listEltT ty) nil.
  Definition listElt ty := (^"elt" :: (@NativeConst (listEltT ty) nil nil))%struct.

  Definition listIsEmpty {ty} (l: fullType ty (listEltK ty)) :=
    match l with
    | nil => ConstBool true
    | _ => ConstBool false
    end.
  Definition listEnq {ty} (a: ty dType) (l: fullType ty (listEltK ty)) :=
    l ++ [a].
  Definition listDeq {ty} (l: fullType ty (listEltK ty)) :=
    match l with
    | nil => nil
    | h :: t => t
    end.
Definition listFirstElt {ty} (l: fullType ty (listEltK ty)): Expr ty (SyntaxKind dType).
exact (match l with
    | nil => ($$default)%kami_expr
    | h :: t => (#h)%kami_expr
    end).
Defined.
Definition nativeEnq {ty} : forall (d: ty dType), ActionT ty Void.
exact (fun d =>
    (ReadN eltT : listEltK ty <- ^"elt";
     Write ^"elt" <- (Var _ (listEltK ty) (listEnq d eltT));
     Retv)%kami_action).
Defined.
Definition nativeDeq {ty} : ActionT ty dType.
exact ((ReadN eltT : listEltK ty <- ^"elt";
     Assert !$$(listIsEmpty eltT);
     Write ^"elt" <- (Var _ (listEltK ty) (listDeq eltT));
     Ret (listFirstElt eltT))%kami_action).
Defined.
Definition nativeFirstElt {ty} : ActionT ty dType.
Admitted.

  Definition nativeFifo := MODULE {
    RegisterN ^"elt" : listEltK type <- (NativeConst nil nil)

    with Method ^"enq"(d : dType) : Void := (nativeEnq d)
    with Method ^"deq"() : dType := nativeDeq
    with Method ^"firstElt"() : dType := nativeFirstElt
  }.

  Definition nativeSimpleFifo := MODULE {
    RegisterN ^"elt" : listEltK type <- (NativeConst nil nil)

    with Method ^"enq"(d : dType) : Void := (nativeEnq d)
    with Method ^"deq"() : dType := nativeDeq
  }.

End NativeFifo.

#[global] Hint Unfold nativeFifo nativeSimpleFifo : ModuleDefs.
#[global] Hint Unfold listEltT listEltK listElt

     nativeEnq nativeDeq nativeFirstElt: MethDefs.

Open Scope string.

Section DataSizeAbs.

Variable dataSize: nat.

Definition enq1 :=
  MethodSig ("fifo1" -- "enq") (Bit dataSize): Void.

Definition stage1 :=
  MODULE {
    Register "data" : Bit dataSize <- Default

    with Rule "produce" :=
      Read data <- "data";
      Call enq1(#data);
      Write "data" <- #data + $1;
      Retv
  }.

#[local] Hint Unfold enq1 : MethDefs.
#[local] Hint Unfold stage1 : ModuleDefs.

Definition deq1 :=
  MethodSig ("fifo1" -- "deq") (): Bit dataSize.
Definition enq2 :=
  MethodSig ("fifo2" -- "enq") (Bit dataSize): Void.

Definition stage2 :=
  MODULE {
    Rule "doDouble" :=
      Call data <- deq1();
      LET doubled <- $2 * #data;
      Call enq2(#doubled);
      Retv
  }.

#[local] Hint Unfold deq1 enq2 : MethDefs.
#[local] Hint Unfold stage2 : ModuleDefs.

Definition nfifo1 :=
  @nativeSimpleFifo "fifo1" (Bit dataSize) Default.
Definition nfifo2 :=
  @nativeSimpleFifo "fifo2" (Bit dataSize) Default.

#[local] Hint Unfold nfifo1 nfifo2 : ModuleDefs.

Definition impl12 := (stage1 ++ nfifo1 ++ stage2)%kami.

#[local] Hint Unfold impl12 : ModuleDefs.
Lemma impl12_PhoasWf: ModPhoasWf impl12.
Admitted.
#[local] Hint Resolve impl12_PhoasWf.

Definition impl12Inl: {m: Modules & impl12 <<== m}.
Proof.
  kinline_refine impl12.
Defined.
