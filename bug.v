
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/utils/theories" "MetaRocq.Utils" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/common/theories" "MetaRocq.Common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq/theories" "MetaRocq.Template" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Equations" "Equations" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/ExtLib" "ExtLib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq/src" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 1651 lines to 25 lines, then from 39 lines to 968 lines, then from 973 lines to 46 lines, then from 60 lines to 558 lines, then from 565 lines to 65 lines, then from 79 lines to 1315 lines, then from 1320 lines to 357 lines, then from 371 lines to 2072 lines, then from 2077 lines to 370 lines, then from 384 lines to 3502 lines, then from 3468 lines to 600 lines, then from 614 lines to 1810 lines, then from 1813 lines to 669 lines, then from 683 lines to 1534 lines, then from 1541 lines to 695 lines, then from 709 lines to 1080 lines, then from 1087 lines to 711 lines, then from 725 lines to 1259 lines, then from 1265 lines to 730 lines, then from 744 lines to 2513 lines, then from 2513 lines to 749 lines, then from 769 lines to 545 lines, then from 559 lines to 1261 lines, then from 1268 lines to 600 lines, then from 614 lines to 928 lines, then from 935 lines to 601 lines, then from 615 lines to 852 lines, then from 859 lines to 611 lines, then from 625 lines to 795 lines, then from 802 lines to 642 lines, then from 656 lines to 1827 lines, then from 1818 lines to 902 lines, then from 916 lines to 2215 lines, then from 2214 lines to 1198 lines, then from 1212 lines to 2847 lines, then from 2811 lines to 1241 lines, then from 1255 lines to 2484 lines, then from 2462 lines to 1281 lines, then from 1295 lines to 1448 lines, then from 1454 lines to 1306 lines, then from 1320 lines to 2090 lines, then from 2095 lines to 1306 lines, then from 1320 lines to 2588 lines, then from 2590 lines to 1316 lines, then from 1330 lines to 2555 lines, then from 2559 lines to 1350 lines, then from 1364 lines to 1554 lines, then from 1561 lines to 1364 lines, then from 1378 lines to 1586 lines, then from 1593 lines to 1383 lines, then from 1397 lines to 1964 lines, then from 1968 lines to 1461 lines, then from 1475 lines to 3500 lines, then from 3503 lines to 1766 lines, then from 1780 lines to 2398 lines, then from 2405 lines to 2290 lines, then from 2304 lines to 3602 lines, then from 3609 lines to 2293 lines, then from 2307 lines to 2704 lines, then from 2706 lines to 2442 lines, then from 2456 lines to 3472 lines, then from 3479 lines to 2788 lines, then from 2802 lines to 4073 lines, then from 4080 lines to 3026 lines, then from 3040 lines to 3472 lines, then from 3479 lines to 3209 lines, then from 3223 lines to 5509 lines, then from 5514 lines to 3285 lines, then from 3299 lines to 3698 lines, then from 3705 lines to 3399 lines, then from 3413 lines to 3427 lines, then from 3434 lines to 3400 lines, then from 3414 lines to 3865 lines, then from 3871 lines to 3412 lines, then from 3426 lines to 4024 lines, then from 4031 lines to 3448 lines, then from 3462 lines to 4530 lines, then from 4527 lines to 3598 lines, then from 3612 lines to 4797 lines, then from 4796 lines to 3684 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 0.970 sec
   Expected coqc peak memory usage on this file: 2643704.0 kb *)
Require Corelib.Strings.PrimString.
Require Corelib.BinNums.IntDef.
Require Corelib.Floats.PrimFloat.
Require Stdlib.Init.Byte.
Require MetaRocq.Utils.MRProd.
Require Stdlib.Numbers.Integer.Abstract.ZProperties.
Require Stdlib.Sorting.Sorted.
Require Stdlib.micromega.Tauto.
Module Export SetoidList.









Export Stdlib.Lists.List.
Export Stdlib.Sorting.Sorted.
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

Section NoDupA.

End NoDupA.

Section EquivlistA.

End EquivlistA.

Section Fold.



Section Fold_With_Restriction.

End Fold_With_Restriction.

End Fold.

Section Fold2.

Section Fold2_With_Restriction.

End Fold2_With_Restriction.

End Fold2.

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
Module Export Stdlib.
Module Export Sorting.
Module Export SetoidList.
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

  Section Spec.

  End Spec.

End WSetsOn.

Module Type WSets.
  Declare Module E : DecidableType.
End WSets.

Module Type HasOrdOps (Import T:TypElt).

End HasOrdOps.

Module Type Ops (E : OrderedType) := WOps E <+ HasOrdOps.

Module Type SetsOn (E : OrderedType).

  Section Spec.

  End Spec.

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

  Section Spec.

  End Spec.

End WRawSets.

Module WRaw2SetsOn (E:DecidableType)(M:WRawSets E) <: WSetsOn E.

 Record t_ := Mkt {this :> M.t; is_ok : M.Ok this}.
 Definition t := t_.
 Definition is_empty (s : t) := M.is_empty s.

 Section Spec.

 End Spec.

End WRaw2SetsOn.

Module WRaw2Sets (D:DecidableType)(M:WRawSets D) <: WSets with Module E := D.
  Module E := D.
End WRaw2Sets.

Module Type RawSets (E : OrderedType).
  Include WRawSets E <+ HasOrdOps <+ HasLt <+ IsStrOrder.

  Section Spec.

  End Spec.

End RawSets.

Module Raw2SetsOn (O:OrderedType)(M:RawSets O) <: SetsOn O.
  Include WRaw2SetsOn O M.

  Section Spec.

  End Spec.

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
 Instance eq_equiv : Equivalence eq.
Admitted.

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
Include Stdlib_DOT_MSets_DOT_MSetInterface_WRAPPED.MSetInterface.
End MSetInterface.

End MSets.

End Stdlib.

End Stdlib_DOT_MSets_DOT_MSetInterface.
Module Export MSetList.
Set Implicit Arguments.

Module Ops (X:OrderedType) <: WOps X.

  Definition elt := X.t.
  Definition t := list elt.
Definition empty : t.
Admitted.

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
Fixpoint union (s : t) : t -> t.
Admitted.
Fixpoint inter (s : t) : t -> t.
Admitted.
Fixpoint diff (s : t) : t -> t.
Admitted.
Fixpoint equal (s : t) : t -> bool.
Admitted.

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
Definition fold (B : Type) (f : elt -> B -> B) (s : t) (i : B) : B.
Admitted.
Fixpoint filter (f : elt -> bool) (s : t) : t.
Admitted.
Fixpoint for_all (f : elt -> bool) (s : t) : bool.
Admitted.
Fixpoint exists_ (f : elt -> bool) (s : t) : bool.
Admitted.
Fixpoint partition (f : elt -> bool) (s : t) : t * t.
Admitted.
Definition cardinal (s : t) : nat.
Admitted.
Definition elements (x : t) : list elt.
Admitted.
Definition min_elt (s : t) : option elt.
Admitted.
Fixpoint max_elt (s : t) : option elt.
Admitted.

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
    forall (s : t) (x : elt), choose s = Some x -> In x s.
Admitted.
Definition choose_spec2 :
    forall s : t, choose s = None -> Empty s.
Admitted.

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

End OrderedTypeFacts.

Module KeyOrderedType(O:OrderedType).

End KeyOrderedType.

End OrderedType.
Module Export Stdlib_DOT_Structures_DOT_OrderedType.
Module Export OrderedType.
End OrderedType.

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
Module Export Stdlib_DOT_PArith_DOT_BinPosDef.
Module Export BinPosDef.
End BinPosDef.

End Stdlib_DOT_PArith_DOT_BinPosDef.
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

Infix "+" := Pos.add : positive_scope.
Infix "*" := Pos.mul : positive_scope.
Infix "^" := Pos.pow : positive_scope.

End BinPos.
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

Number Notation N N.of_num_uint N.to_num_uint : N_scope.

End BinNat.
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

End BinIntDef.
Module Export Stdlib_DOT_ZArith_DOT_BinIntDef.
Module Export BinIntDef.
End BinIntDef.

End Stdlib_DOT_ZArith_DOT_BinIntDef.
Export Stdlib.Init.Byte.

Section N.
End N.
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

Definition compare (x y : byte) :=
  N.compare (ByteN.to_N x) (ByteN.to_N y).
Module Export BinInt.
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

Number Notation Z Z.of_num_int Z.to_num_int : Z_scope.

Infix "+" := Z.add : Z_scope.
Notation "- x" := (Z.opp x) : Z_scope.
Infix "-" := Z.sub : Z_scope.
Infix "*" := Z.mul : Z_scope.
Infix "<" := Z.lt : Z_scope.

Module Export Pos2Z.

End Pos2Z.

Module Export Z2Pos.

End Z2Pos.

Section LocalNotations.

End LocalNotations.

End BinInt.
Module Export Stdlib_DOT_ZArith_DOT_BinInt.
Module Export Stdlib.
Module Export ZArith.
Module Export BinInt.
End BinInt.

End ZArith.

End Stdlib.

End Stdlib_DOT_ZArith_DOT_BinInt.
Declare Scope Int_scope.
#[local] Open Scope Int_scope.

Module Type Int.

  Parameter t : Set.
  Parameter _1 : t.
  Parameter _2 : t.
  Parameter add : t -> t -> t.
  Parameter max : t -> t -> t.
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
  #[local] Open Scope Z_scope.
  Definition t := Z.
  Definition _0 := 0.
  Definition _1 := 1.
  Definition _2 := 2.
  Definition _3 := 3.
  Definition add := Z.add.
  Definition max := Z.max.
  Definition eqb := Z.eqb.
  Definition ltb := Z.ltb.
  Definition leb := Z.leb.
Definition i2z : t -> Z.
Admitted.
  Lemma i2z_eq n p : i2z n = i2z p -> n = p.
Admitted.
  Lemma i2z_0 : i2z _0 = 0.
Admitted.
  Lemma i2z_1 : i2z _1 = 1.
Admitted.
  Lemma i2z_2 : i2z _2 = 2.
Admitted.
  Lemma i2z_3 : i2z _3 = 3.
Admitted.
  Lemma i2z_add n p : i2z (n + p) = i2z n + i2z p.
Admitted.
  Lemma i2z_opp n : i2z (- n) = - i2z n.
Admitted.
  Lemma i2z_sub n p : i2z (n - p) = i2z n - i2z p.
Admitted.
  Lemma i2z_mul n p : i2z (n * p) = i2z n * i2z p.
Admitted.
  Lemma i2z_max n p : i2z (max n p) = Z.max (i2z n) (i2z p).
Admitted.
  Lemma i2z_eqb n p : eqb n p = Z.eqb (i2z n) (i2z p).
Admitted.
  Lemma i2z_leb n p : leb n p = Z.leb (i2z n) (i2z p).
Admitted.
  Lemma i2z_ltb n p : ltb n p = Z.ltb (i2z n) (i2z p).
Admitted.
End Z_as_Int.
Module Export Stdlib_DOT_ZArith_DOT_Int.
Module Export Stdlib.
Module Export ZArith.
Module Export Int.
End Int.

End ZArith.

End Stdlib.

End Stdlib_DOT_ZArith_DOT_Int.
Import Stdlib.ZArith.BinInt.

Section S.

  Variable D :Type.

  Definition Env := positive -> D.

End S.
Module Export Stdlib_DOT_micromega_DOT_Env.
Module Export Stdlib.
Module Export micromega.
Module Export Env.
End Env.

End micromega.

End Stdlib.

End Stdlib_DOT_micromega_DOT_Env.

Section MakeVarMap.

End MakeVarMap.
Module Export Stdlib_DOT_micromega_DOT_VarMap.
Module Export Stdlib.
Module Export micromega.
Module Export VarMap.
End VarMap.

End micromega.

End Stdlib.

End Stdlib_DOT_micromega_DOT_VarMap.
Import Stdlib.PArith.BinPos.

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

Section MakeRingPol.

End MakeRingPol.
Module Export Stdlib_DOT_micromega_DOT_EnvRing.
Module Export Stdlib.
Module Export micromega.
Module Export EnvRing.
End EnvRing.

End micromega.

End Stdlib.

End Stdlib_DOT_micromega_DOT_EnvRing.

Export Stdlib.Arith.Arith_base.
Module Export Stdlib.
Module Export ZArith.
Module Export Znat.
End Znat.

End ZArith.

End Stdlib.
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

Import Stdlib.micromega.Env.
Import Stdlib.micromega.EnvRing.

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

Module Export Stdlib_DOT_micromega_DOT_ZMicromega_WRAPPED.
Module Export ZMicromega.
Import Stdlib.ZArith.BinInt.
Import Stdlib.micromega.Tauto.
Import Stdlib.micromega.EnvRing.
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

Section MaxVar.
End MaxVar.
Definition ZTautoChecker  (f : BFormula (Formula Z) Tauto.isProp) (w: list ZArithProof): bool.
Admitted.

Lemma ZTautoChecker_sound : forall f w, ZTautoChecker f w = true -> forall env, eval_bf  (Zeval_formula env)  f.
Admitted.

End ZMicromega.
Module Export Stdlib.
Module Export micromega.
Module Export ZMicromega.
Include Stdlib_DOT_micromega_DOT_ZMicromega_WRAPPED.ZMicromega.
End ZMicromega.
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
Fixpoint min_elt (t : tree) : option elt.
Admitted.
Fixpoint max_elt (t : tree) : option elt.
Admitted.

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
Fixpoint cardinal (s : tree) : nat.
Admitted.

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

Definition eq := Equal.
#[global]
Instance eq_equiv : Equivalence eq.
Admitted.
Definition lt (s1 s2 : tree) : Prop.
Admitted.

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
Module Export MSetAVL.
Import Stdlib.MSets.MSetInterface.
Import Stdlib.ZArith.Int.

Module Ops (Import I:Int)(X:OrderedType) <: MSetInterface.Ops X.
#[local] Notation int := I.t.

Include MSetGenTree.Ops X I.

Definition t := tree.
Definition height (s : t) : int.
Admitted.

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
Fixpoint partition (f:elt->bool)(s : t) : t*t.
Admitted.

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
Module Export Stdlib_DOT_MSets_DOT_MSetAVL.
Module Export MSetAVL.
End MSetAVL.

End Stdlib_DOT_MSets_DOT_MSetAVL.
Module Export Lia.

Import Stdlib.ZArith.BinInt.
Import Stdlib.micromega.VarMap.
Import Stdlib.micromega.ZMicromega.
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

End Lia.
Module Export Stdlib_DOT_micromega_DOT_Lia.
Module Export Stdlib.
Module Export micromega.
Module Export Lia.
End Lia.

End micromega.

End Stdlib.

End Stdlib_DOT_micromega_DOT_Lia.
Export Stdlib.ZArith.BinInt.
Export Stdlib.ZArith.Znat.
Module Export Stdlib.
Module Export ZArith.
Module Export ZArith.
End ZArith.

End ZArith.

End Stdlib.
Admit Obligations.

Module Export String.
  Inductive t : Set :=
  | EmptyString
  | String (_ : Byte.byte) (_ : t).
Fixpoint compare (xs ys : t) : comparison.
Admitted.
Abbreviation string := String.t.
Import Stdlib.Structures.Orders.

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
Definition eq_dec : forall x y : t, {eq x y} + {not (eq x y)}.
Admitted.
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

Import Stdlib.Sorting.SetoidList.

Export ListNotations.

Notation "#| l |" := (List.length l) (at level 0, l at level 99, format "#| l |").

Export MetaRocq.Utils.MRProd.
Export Stdlib.ZArith.ZArith.
Export Stdlib.micromega.Lia.
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
Definition eq_leibniz (x y : t) : eq x y -> x = y.
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
