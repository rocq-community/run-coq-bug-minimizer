
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/color" "CoLoR" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Bignums" "Bignums" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 440 lines to 291 lines, then from 305 lines to 1337 lines, then from 1343 lines to 423 lines, then from 437 lines to 1360 lines, then from 1366 lines to 499 lines, then from 513 lines to 1364 lines, then from 1371 lines to 834 lines, then from 835 lines to 431 lines, then from 445 lines to 1323 lines, then from 1330 lines to 512 lines, then from 526 lines to 1506 lines, then from 1513 lines to 682 lines, then from 696 lines to 1453 lines, then from 1460 lines to 1036 lines, then from 1026 lines to 727 lines, then from 741 lines to 1698 lines, then from 1705 lines to 808 lines, then from 822 lines to 1389 lines, then from 1396 lines to 788 lines, then from 802 lines to 1386 lines, then from 1393 lines to 840 lines, then from 854 lines to 2796 lines, then from 2803 lines to 1435 lines, then from 1371 lines to 825 lines, then from 839 lines to 3375 lines, then from 3382 lines to 909 lines, then from 923 lines to 2229 lines, then from 2236 lines to 1059 lines, then from 1073 lines to 1532 lines, then from 1538 lines to 1371 lines, then from 1363 lines to 1032 lines, then from 1046 lines to 1840 lines, then from 1847 lines to 1081 lines, then from 1095 lines to 2067 lines, then from 2074 lines to 1193 lines, then from 1207 lines to 2288 lines, then from 2295 lines to 1209 lines, then from 1223 lines to 1891 lines, then from 1898 lines to 1228 lines, then from 1242 lines to 4023 lines, then from 4030 lines to 1295 lines, then from 1309 lines to 1576 lines, then from 1583 lines to 1311 lines, then from 1325 lines to 2168 lines, then from 2175 lines to 1611 lines, then from 1602 lines to 1134 lines, then from 1148 lines to 3857 lines, then from 3856 lines to 1538 lines, then from 1550 lines to 1940 lines, then from 1947 lines to 1576 lines, then from 1588 lines to 2161 lines, then from 2165 lines to 2022 lines, then from 2034 lines to 2691 lines, then from 2697 lines to 2027 lines, then from 2039 lines to 2732 lines, then from 2735 lines to 2118 lines, then from 2130 lines to 3804 lines, then from 3811 lines to 2216 lines, then from 2227 lines to 2399 lines, then from 2406 lines to 2239 lines, then from 2251 lines to 3425 lines, then from 3416 lines to 2693 lines *)
(* coqc version 9.4+alpha compiled with OCaml 5.4.1
   coqtop version 9.4+alpha
   Expected coqc runtime on this file: 2.141 sec
   Expected coqc peak memory usage on this file: 1094776.0 kb *)









Require Corelib.Init.Byte.
Require Corelib.Program.Tactics.
Require Corelib.Init.Wf.
Require Corelib.Program.Wf.
Require Corelib.Program.Utils.
Require Corelib.Program.Basics.
Require Corelib.Setoids.Setoid.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.BinNums.NatDef.
Require Corelib.Lists.ListDef.
Require Corelib.BinNums.PosDef.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Classes.Morphisms.
Require Corelib.BinNums.IntDef.
Require Corelib.Init.Ltac.
Require Corelib.Numbers.BinNums.
Require Corelib.Init.Datatypes.
Require Corelib.Classes.RelationClasses.
Require Stdlib.Classes.DecidableClass.
Require Stdlib.Logic.Decidable.
Require Stdlib.Logic.EqdepFacts.
Require Stdlib.Logic.FunctionalExtensionality.
Require Stdlib.Logic.HLevelsBase.
Require Stdlib.Program.Syntax.
Require Stdlib.Sets.Ensembles.
Require Stdlib.micromega.ZifyClasses.
Require Stdlib.BinNums.NatDef.
Require Stdlib.BinNums.PosDef.
Require Stdlib.BinNums.IntDef.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Init.Byte.
Require Stdlib.Init.Wf.
Require Stdlib.Init.Datatypes.
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
Require Stdlib.Sets.Relations_1.
Require CoLoR.Util.Logic.LogicUtil.
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
Require Stdlib.Classes.RelationPairs.
Require Stdlib.Program.WfExtensionality.
Require CoLoR.Util.Relation.RelMidex.
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
Require Stdlib.Numbers.Natural.Abstract.NOrder.
Require Stdlib.Numbers.Integer.Abstract.ZLt.
Require Stdlib.Numbers.Natural.Abstract.NAddOrder.
Require Stdlib.Numbers.Integer.Abstract.ZAddOrder.
Require Stdlib.Numbers.Natural.Abstract.NMulOrder.
Require Stdlib.Numbers.Integer.Abstract.ZMulOrder.
Require Stdlib.Numbers.Natural.Abstract.NSub.
Require Stdlib.Numbers.Integer.Abstract.ZMaxMin.
Require Stdlib.Numbers.Integer.Abstract.ZParity.
Require Stdlib.Numbers.Integer.Abstract.ZSgnAbs.
Require Stdlib.Numbers.Natural.Abstract.NDiv.
Require Stdlib.Numbers.Natural.Abstract.NGcd.
Require Stdlib.Numbers.Natural.Abstract.NMaxMin.
Require Stdlib.Numbers.Natural.Abstract.NParity.
Require Stdlib.Numbers.Natural.Abstract.NSqrt.
Require Stdlib.Numbers.Integer.Abstract.ZDivFloor.
Require Stdlib.Numbers.Integer.Abstract.ZDivTrunc.
Require Stdlib.Numbers.Integer.Abstract.ZGcd.
Require Stdlib.Numbers.Natural.Abstract.NDiv0.
Require Stdlib.Numbers.Natural.Abstract.NPow.
Require Stdlib.Numbers.Integer.Abstract.ZPow.
Require Stdlib.Numbers.Natural.Abstract.NLcm.
Require Stdlib.Numbers.Natural.Abstract.NLog.
Require Stdlib.Numbers.Integer.Abstract.ZBits.
Require Stdlib.Numbers.Integer.Abstract.ZLcm.
Require Stdlib.Numbers.Natural.Abstract.NBits.
Require Stdlib.Numbers.Natural.Abstract.NLcm0.
Require Stdlib.Numbers.Integer.Abstract.ZProperties.
Require Stdlib.Numbers.Natural.Abstract.NProperties.
Require Stdlib.Arith.PeanoNat.
Require Stdlib.Arith.Between.
Require Stdlib.Arith.Compare_dec.
Require Stdlib.Structures.OrdersAlt.
Require Stdlib.FSets.FSetInterface.
Require Stdlib.FSets.FMapList.
Require Stdlib.Vectors.Vector.
Require Stdlib.Strings.String.
Require Stdlib.ZArith.Int.
Require Stdlib.micromega.Zify.
Require Stdlib.micromega.ZMicromega.
Require Stdlib.MSets.MSetGenTree.
Axiom proof_admitted : False.
Tactic Notation "admit" := abstract case proof_admitted.
Module Export MSetAVL.
Import Stdlib.MSets.MSetInterface.
Import Stdlib.ZArith.Int.



Module Ops (Import I:Int)(X:OrderedType) <: MSetInterface.Ops X.
#[local] Open Scope Int_scope.
#[local] Abbreviation int := I.t.





Include MSetGenTree.Ops X I.

Definition t := tree.
Definition height (s : t) : int. exact (match s with
  | Leaf => 0
  | Node h _ _ _ => h
  end). Defined.



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
Fixpoint partition (f:elt->bool)(s : t) : t*t. exact (match s with
   | Leaf => (Leaf, Leaf)
   | Node _ l x r =>
      let (l1,l2) := partition f l in
      let (r1,r2) := partition f r in
      if f x then (join l1 x r1, concat l2 r2)
      else (concat l1 r1, join l2 x r2)
  end). Defined.

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

End MSetAVL.
Module Export Stdlib_DOT_MSets_DOT_MSetAVL.
Module Export Stdlib.
Module Export MSets.
Module Export MSetAVL.
End MSetAVL.

End MSets.

End Stdlib.

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
Module Export Stdlib.
Module Export micromega.
Module Export Lia.
End Lia.
Module CoLoR_DOT_Util_DOT_Relation_DOT_RelUtil_WRAPPED.
Module Export RelUtil.

Set Implicit Arguments.
Export Stdlib.Relations.Relations.
Export CoLoR.Util.Relation.RelMidex.
Arguments transp {A} R x y.
Arguments clos_trans {A} R x y.
Arguments union {A} R1 R2 x y.
Arguments lexprod [A B] _ _ _ _.

Abbreviation rel := relation.

Infix "U" := union (at level 45, left associativity) : relation_scope.
Notation "x !" := (clos_trans x) (at level 1) : relation_scope.

Open Scope relation_scope.
Definition empty_rel {A} : rel A.
Admitted.

Section bool_of_rel.

  Variables (A : Type) (R : rel A) (R_dec : rel_dec R).

  Definition bool_of_rel t u := if R_dec t u then true else false.

End bool_of_rel.

Section finitely_branching.

End finitely_branching.

Section comp_clos.

End comp_clos.

Section clos_sym.

End clos_sym.

Section clos_equiv.

End clos_equiv.

Section qo_clos.

End qo_clos.

Section commut.

End commut.

Section inverse_image.

  Variables (A B : Type) (R : rel B) (f : A->B).
Definition Rof : rel A.
exact (fun a a' => R (f a) (f a')).
Defined.

End inverse_image.

Section opt_r.

End opt_r.

Section opt.

  Variables (A : Type) (R : rel A).

  Inductive opt : rel (option A) :=
  | opt_intro : forall x y, R x y -> opt (Some x) (Some y).

End opt.

Section restrict.

End restrict.

End RelUtil.

End CoLoR_DOT_Util_DOT_Relation_DOT_RelUtil_WRAPPED.
Module Export CoLoR_DOT_Util_DOT_Relation_DOT_RelUtil.
Module Export CoLoR.
Module Export Util.
Module Export Relation.
Module RelUtil.
Include CoLoR_DOT_Util_DOT_Relation_DOT_RelUtil_WRAPPED.RelUtil.
End RelUtil.

End Relation.

End Util.

End CoLoR.

End CoLoR_DOT_Util_DOT_Relation_DOT_RelUtil.
Module Export OrderedTypeEx.

Import Stdlib.Structures.OrderedType.
Import Stdlib.Arith.Peano_dec.
Import Stdlib.Strings.String.

Module Type UsualOrderedType.
End UsualOrderedType.

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

End Z_as_OT.

Module Positive_as_OT <: UsualOrderedType.

End Positive_as_OT.

Module N_as_OT <: UsualOrderedType.

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

End PositiveOrderedTypeBits.

Module Ascii_as_OT <: UsualOrderedType.
End Ascii_as_OT.

Module String_as_OT <: UsualOrderedType.
Definition eq_dec (x y : string): {x = y} + { ~ (x = y)}.
Admitted.
End String_as_OT.

End OrderedTypeEx.
Export Stdlib.FSets.FSetInterface.

Module WFacts_fun (Import E : DecidableType)(Import M : WSfun E).

End WFacts_fun.
Module Export FSetCompat.
Set Implicit Arguments.

Module Backport_WSets
 (E:DecidableType.DecidableType)
 (M:MSetInterface.WSets with Definition E.t := E.t
                        with Definition E.eq := E.eq)
 <: FSetInterface.WSfun E.

 Definition elt := E.t.
 Definition t := M.t.
Definition In : elt -> t -> Prop.
exact (M.In).
Defined.
 Definition Equal s s' := forall a : elt, In a s <-> In a s'.
 Definition Subset s s' := forall a : elt, In a s -> In a s'.
 Definition Empty s := forall a : elt, ~ In a s.
 Definition For_all (P : elt -> Prop) s := forall x, In x s -> P x.
 Definition Exists (P : elt -> Prop) s := exists x, In x s /\ P x.
Definition empty : t.
Admitted.
Definition is_empty : t -> bool.
Admitted.
Definition mem : elt -> t -> bool.
Admitted.
Definition add : elt -> t -> t.
Admitted.
Definition singleton : elt -> t.
Admitted.
Definition remove : elt -> t -> t.
Admitted.
Definition union : t -> t -> t.
Admitted.
Definition inter : t -> t -> t.
Admitted.
Definition diff : t -> t -> t.
Admitted.
Definition eq : t -> t -> Prop.
exact (M.eq).
Defined.
Definition eq_dec : forall s s', {eq s s'}+{~eq s s'}.
Admitted.
Definition equal : t -> t -> bool.
Admitted.
Definition subset : t -> t -> bool.
Admitted.
Definition fold : forall A : Type, (elt -> A -> A) -> t -> A -> A.
Admitted.
Definition for_all : (elt -> bool) -> t -> bool.
Admitted.
Definition exists_ : (elt -> bool) -> t -> bool.
Admitted.
Definition filter : (elt -> bool) -> t -> t.
Admitted.
Definition partition : (elt -> bool) -> t -> t * t.
Admitted.
Definition cardinal : t -> nat.
Admitted.
Definition elements : t -> list elt.
Admitted.
Definition choose : t -> option elt.
Admitted.
Definition In_1 : forall s x y, E.eq x y -> In x s -> In y s.
Admitted.
Definition eq_refl : forall s, eq s s.
Admitted.
Definition eq_sym : forall s s', eq s s' -> eq s' s.
Admitted.
Definition eq_trans : forall s s' s'', eq s s' -> eq s' s'' -> eq s s''.
Admitted.
Definition mem_1 : forall s x, In x s -> mem x s = true.
Admitted.
Definition mem_2 : forall s x, mem x s = true -> In x s.
Admitted.
Definition equal_1 : forall s s', Equal s s' -> equal s s' = true.
Admitted.
Definition equal_2 : forall s s', equal s s' = true -> Equal s s'.
Admitted.
Definition subset_1 : forall s s', Subset s s' -> subset s s' = true.
Admitted.
Definition subset_2 : forall s s', subset s s' = true -> Subset s s'.
Admitted.
Definition empty_1 : Empty empty.
Admitted.
Definition is_empty_1 : forall s, Empty s -> is_empty s = true.
Admitted.
Definition is_empty_2 : forall s, is_empty s = true -> Empty s.
Admitted.
Definition add_1 : forall s x y, E.eq x y -> In y (add x s).
Admitted.
Definition add_2 : forall s x y, In y s -> In y (add x s).
Admitted.
Definition add_3 : forall s x y, ~ E.eq x y -> In y (add x s) -> In y s.
Admitted.
Definition remove_1 : forall s x y, E.eq x y -> ~ In y (remove x s).
Admitted.
Definition remove_2 : forall s x y, ~ E.eq x y -> In y s -> In y (remove x s).
Admitted.
Definition remove_3 : forall s x y, In y (remove x s) -> In y s.
Admitted.
Definition union_1 : forall s s' x, In x (union s s') -> In x s \/ In x s'.
Admitted.
Definition union_2 : forall s s' x, In x s -> In x (union s s').
Admitted.
Definition union_3 : forall s s' x, In x s' -> In x (union s s').
Admitted.
Definition inter_1 : forall s s' x, In x (inter s s') -> In x s.
Admitted.
Definition inter_2 : forall s s' x, In x (inter s s') -> In x s'.
Admitted.
Definition inter_3 : forall s s' x, In x s -> In x s' -> In x (inter s s').
Admitted.
Definition diff_1 : forall s s' x, In x (diff s s') -> In x s.
Admitted.
Definition diff_2 : forall s s' x, In x (diff s s') -> ~ In x s'.
Admitted.
Definition diff_3 : forall s s' x, In x s -> ~ In x s' -> In x (diff s s').
Admitted.
Definition singleton_1 : forall x y, In y (singleton x) -> E.eq x y.
Admitted.
Definition singleton_2 : forall x y, E.eq x y -> In y (singleton x).
Admitted.
Definition fold_1 : forall s (A : Type) (i : A) (f : elt -> A -> A),
   fold f s i = fold_left (fun a e => f e a) (elements s) i.
Admitted.
Definition cardinal_1 : forall s, cardinal s = length (elements s).
Admitted.
Definition filter_1 : forall s x f, compat_bool E.eq f ->
  In x (filter f s) -> In x s.
Admitted.
Definition filter_2 : forall s x f, compat_bool E.eq f ->
  In x (filter f s) -> f x = true.
Admitted.
Definition filter_3 : forall s x f, compat_bool E.eq f ->
  In x s -> f x = true -> In x (filter f s).
Admitted.
Definition for_all_1 : forall s f, compat_bool E.eq f ->
  For_all (fun x => f x = true) s -> for_all f s = true.
Admitted.
Definition for_all_2 : forall s f, compat_bool E.eq f ->
  for_all f s = true -> For_all (fun x => f x = true) s.
Admitted.
Definition exists_1 : forall s f, compat_bool E.eq f ->
  Exists (fun x => f x = true) s -> exists_ f s = true.
Admitted.
Definition exists_2 : forall s f, compat_bool E.eq f ->
  exists_ f s = true -> Exists (fun x => f x = true) s.
Admitted.
Definition partition_1 : forall s f, compat_bool E.eq f ->
  Equal (fst (partition f s)) (filter f s).
Admitted.
Definition partition_2 : forall s f, compat_bool E.eq f ->
  Equal (snd (partition f s)) (filter (fun x => negb (f x)) s).
Admitted.
Definition choose_1 : forall s x, choose s = Some x -> In x s.
Admitted.
Definition choose_2 : forall s, choose s = None -> Empty s.
Admitted.
Definition elements_1 : forall s x, In x s -> InA E.eq x (elements s).
Admitted.
Definition elements_2 : forall s x, InA E.eq x (elements s) -> In x s.
Admitted.
Definition elements_3w : forall s, NoDupA E.eq (elements s).
Admitted.

End Backport_WSets.

Module Backport_Sets
 (O:OrderedType.OrderedType)
 (M:MSetInterface.Sets with Definition E.t := O.t
                       with Definition E.eq := O.eq
                       with Definition E.lt := O.lt)
 <: FSetInterface.S with Module E:=O.

  Include Backport_WSets O M.
Definition lt : t -> t -> Prop.
Admitted.
Definition min_elt : t -> option elt.
Admitted.
Definition max_elt : t -> option elt.
Admitted.
Definition min_elt_1 : forall s x, min_elt s = Some x -> In x s.
Admitted.
Definition min_elt_2 : forall s x y,
   min_elt s = Some x -> In y s -> ~ O.lt y x.
Admitted.
Definition min_elt_3 : forall s, min_elt s = None -> Empty s.
Admitted.
Definition max_elt_1 : forall s x, max_elt s = Some x -> In x s.
Admitted.
Definition max_elt_2 : forall s x y,
   max_elt s = Some x -> In y s -> ~ O.lt x y.
Admitted.
Definition max_elt_3 : forall s, max_elt s = None -> Empty s.
Admitted.
Definition elements_3 : forall s, sort O.lt (elements s).
Admitted.
Definition choose_3 : forall s s' x y,
   choose s = Some x -> choose s' = Some y -> Equal s s' -> O.eq x y.
Admitted.
Definition lt_trans : forall s s' s'', lt s s' -> lt s' s'' -> lt s s''.
Admitted.
  Lemma lt_not_eq : forall s s',  lt s s' -> ~ eq s s'.
Admitted.
  Definition compare : forall s s', Compare lt eq s s'.
Admitted.

  Module E := O.

End Backport_Sets.

Module Update_WSets
 (E:Equalities.DecidableType)
 (M:FSetInterface.WS with Definition E.t := E.t
                     with Definition E.eq := E.eq)
 <: MSetInterface.WSetsOn E.

 Definition elt := E.t.
 Definition t := M.t.
Definition In : elt -> t -> Prop.
exact (M.In).
Defined.
 Definition Equal s s' := forall a : elt, In a s <-> In a s'.
 Definition Subset s s' := forall a : elt, In a s -> In a s'.
 Definition Empty s := forall a : elt, ~ In a s.
 Definition For_all (P : elt -> Prop) s := forall x, In x s -> P x.
 Definition Exists (P : elt -> Prop) s := exists x, In x s /\ P x.
Definition empty : t.
admit.
Defined.
Definition is_empty : t -> bool.
Admitted.
Definition mem : elt -> t -> bool.
Admitted.
Definition add : elt -> t -> t.
Admitted.
Definition singleton : elt -> t.
Admitted.
Definition remove : elt -> t -> t.
Admitted.
Definition union : t -> t -> t.
admit.
Defined.
Definition inter : t -> t -> t.
admit.
Defined.
Definition diff : t -> t -> t.
admit.
Defined.
Definition eq : t -> t -> Prop.
exact (M.eq).
Defined.
Definition eq_dec : forall s s', {eq s s'}+{~eq s s'}.
Admitted.
Definition equal : t -> t -> bool.
Admitted.
Definition subset : t -> t -> bool.
Admitted.
Definition fold : forall A : Type, (elt -> A -> A) -> t -> A -> A.
admit.
Defined.
Definition for_all : (elt -> bool) -> t -> bool.
Admitted.
Definition exists_ : (elt -> bool) -> t -> bool.
Admitted.
Definition filter : (elt -> bool) -> t -> t.
admit.
Defined.
Definition partition : (elt -> bool) -> t -> t * t.
admit.
Defined.
Definition cardinal : t -> nat.
admit.
Defined.
Definition elements : t -> list elt.
admit.
Defined.
Definition choose : t -> option elt.
admit.
Defined.

#[global]
 Instance In_compat : Proper (E.eq==>Logic.eq==>iff) In.
Admitted.
#[global]
 Instance eq_equiv : Equivalence eq.
Admitted.

 Section Spec.
  Variable s s': t.
  Variable x y : elt.

  Lemma mem_spec : mem x s = true <-> In x s.
Proof using .
admit.
Defined.

  Lemma equal_spec : equal s s' = true <-> Equal s s'.
Proof using .
admit.
Defined.

  Lemma subset_spec : subset s s' = true <-> Subset s s'.
Proof using .
admit.
Defined.
Definition empty_spec : Empty empty.
admit.
Defined.

  Lemma is_empty_spec : is_empty s = true <-> Empty s.
Proof using .
admit.
Defined.

  Lemma add_spec : In y (add x s) <-> E.eq y x \/ In y s.
Proof using .
admit.
Defined.

  Lemma remove_spec : In y (remove x s) <-> In y s /\ ~E.eq y x.
Proof using .
admit.
Defined.

  Lemma singleton_spec : In y (singleton x) <-> E.eq y x.
Proof using .
admit.
Defined.
Definition union_spec : In x (union s s') <-> In x s \/ In x s'.
admit.
Defined.
Definition inter_spec : In x (inter s s') <-> In x s /\ In x s'.
admit.
Defined.
Definition diff_spec : In x (diff s s') <-> In x s /\ ~In x s'.
admit.
Defined.
Definition fold_spec : forall (A : Type) (i : A) (f : elt -> A -> A),
   fold f s i = fold_left (flip f) (elements s) i.
admit.
Defined.
Definition cardinal_spec : cardinal s = length (elements s).
admit.
Defined.

  Lemma elements_spec1 : InA E.eq x (elements s) <-> In x s.
Proof using .
admit.
Defined.
Definition elements_spec2w : NoDupA E.eq (elements s).
admit.
Defined.
Definition choose_spec1 : choose s = Some x -> In x s.
admit.
Defined.
Definition choose_spec2 : choose s = None -> Empty s.
admit.
Defined.
Definition filter_spec : forall f, Proper (E.eq==>Logic.eq) f ->
   (In x (filter f s) <-> In x s /\ f x = true).
admit.
Defined.
Definition partition_spec1 : forall f, Proper (E.eq==>Logic.eq) f ->
   Equal (fst (partition f s)) (filter f s).
admit.
Defined.
Definition partition_spec2 : forall f, Proper (E.eq==>Logic.eq) f ->
   Equal (snd (partition f s)) (filter (fun x => negb (f x)) s).
admit.
Defined.

  Lemma for_all_spec : forall f, Proper (E.eq==>Logic.eq) f ->
    (for_all f s = true <-> For_all (fun x => f x = true) s).
Proof using .
admit.
Defined.

  Lemma exists_spec : forall f, Proper (E.eq==>Logic.eq) f ->
    (exists_ f s = true <-> Exists (fun x => f x = true) s).
Proof using .
admit.
Defined.

  End Spec.

End Update_WSets.

Module Update_Sets
 (O:Orders.OrderedType)
 (M:FSetInterface.S with Definition E.t := O.t
                    with Definition E.eq := O.eq
                    with Definition E.lt := O.lt)
 <: MSetInterface.Sets with Module E:=O.

  Include Update_WSets O M.
Definition lt : t -> t -> Prop.
Admitted.
Definition min_elt : t -> option elt.
Admitted.
Definition max_elt : t -> option elt.
Admitted.
Definition min_elt_spec1 : forall s x, min_elt s = Some x -> In x s.
Admitted.
Definition min_elt_spec2 : forall s x y,
   min_elt s = Some x -> In y s -> ~ O.lt y x.
Admitted.
Definition min_elt_spec3 : forall s, min_elt s = None -> Empty s.
Admitted.
Definition max_elt_spec1 : forall s x, max_elt s = Some x -> In x s.
Admitted.
Definition max_elt_spec2 : forall s x y,
   max_elt s = Some x -> In y s -> ~ O.lt x y.
Admitted.
Definition max_elt_spec3 : forall s, max_elt s = None -> Empty s.
Admitted.
Definition elements_spec2 : forall s, sort O.lt (elements s).
Admitted.
Definition choose_spec3 : forall s s' x y,
   choose s = Some x -> choose s' = Some y -> Equal s s' -> O.eq x y.
Admitted.

#[global]
  Instance lt_strorder : StrictOrder lt.
Admitted.

#[global]
  Instance lt_compat : Proper (eq==>eq==>iff) lt.
Admitted.

  Definition compare s s' :=
   match M.compare s s' with
    | EQ _ => Eq
    | LT _ => Lt
    | GT _ => Gt
   end.

  Lemma compare_spec : forall s s', CompSpec eq lt s s' (compare s s').
Admitted.

  Module E := O.

End Update_Sets.

End FSetCompat.
Module Export EqUtil.
Import Stdlib.Structures.Equalities.
Import CoLoR.Util.Relation.RelUtil.

Module LeibnizFacts (Import T : Typ).
Definition eq : relation t.
exact (@Logic.eq t).
Defined.

  Global Instance eq_refl : Reflexive eq.
Admitted.

  Global Instance eq_sym : Symmetric eq.
Admitted.

  Global Instance eq_trans : Transitive eq.
Admitted.

End LeibnizFacts.

Section eq_dep.

End eq_dep.

Section beq.

End beq.

Section eq_dec.

End eq_dec.

End EqUtil.
Module Export CoLoR.
Module Export Util.
Module Export Logic.
Module Export EqUtil.
End EqUtil.
Module Export FMapAVL.
Import Stdlib.FSets.FMapInterface.
Import Stdlib.ZArith.Int.

Set Implicit Arguments.

Module Raw (Import I:Int)(X: OrderedType).
#[local] Open Scope lazy_bool_scope.
#[local] Abbreviation int := I.t.

Definition key := X.t.

#[universes(template)]
Inductive tree {elt : Type} :=
  | Leaf : tree
  | Node : tree -> key -> elt -> tree -> int -> tree.
Arguments tree : clear implicits.

Section Elt.

Variable elt : Type.

Abbreviation t := (tree elt).
Fixpoint cardinal (m : t) : nat.
Admitted.

Fixpoint fold (A : Type) (f : key -> elt -> A -> A) (m : t) : A -> A :=
 fun a => match m with
  | Leaf => a
  | Node l x d r _ => fold f r (f x d (fold f l a))
 end.

Variable cmp : elt->elt->bool.

Inductive enumeration :=
 | End : enumeration
 | More : key -> elt -> t -> enumeration -> enumeration.

Fixpoint cons m e : enumeration :=
 match m with
  | Leaf => e
  | Node l x d r h => cons l (More x d r e)
 end.

Definition equal_more x1 d1 (cont:enumeration->bool) e2 :=
 match e2 with
 | End => false
 | More x2 d2 r2 e2 =>
     match X.compare x1 x2 with
      | EQ _ => cmp d1 d2 &&& cont (cons r2 e2)
      | _ => false
     end
 end.

Fixpoint equal_cont m1 (cont:enumeration->bool) e2 :=
 match m1 with
  | Leaf => cont e2
  | Node l1 x1 d1 r1 _ =>
     equal_cont l1 (equal_more x1 d1 (equal_cont r1 cont)) e2
  end.

Definition equal_end e2 := match e2 with End => true | _ => false end.

Definition equal m1 m2 := equal_cont m1 equal_end (cons m2 End).

End Elt.
Abbreviation t := tree.
Arguments Leaf : clear implicits.

Fixpoint map (elt elt' : Type)(f : elt -> elt')(m : t elt) : t elt' :=
  match m with
   | Leaf _   => Leaf _
   | Node l x d r h => Node (map f l) x (f d) (map f r) h
  end.

Section Map2.
Variable elt elt' elt'' : Type.
Variable f : option elt -> option elt' -> option elt''.
Definition map2 : t elt -> t elt' -> t elt''.
Admitted.

End Map2.

Section Invariants.
Variable elt : Type.

Inductive MapsTo (x : key)(e : elt) : t elt -> Prop :=
  | MapsRoot : forall l r h y,
      X.eq x y -> MapsTo x e (Node l y e r h)
  | MapsLeft : forall l r h y e',
      MapsTo x e l -> MapsTo x e (Node l y e' r h)
  | MapsRight : forall l r h y e',
      MapsTo x e r -> MapsTo x e (Node l y e' r h).

Inductive In (x : key) : t elt -> Prop :=
  | InRoot : forall l r h y e,
      X.eq x y -> In x (Node l y e r h)
  | InLeft : forall l r h y e',
      In x l -> In x (Node l y e' r h)
  | InRight : forall l r h y e',
      In x r -> In x (Node l y e' r h).

Definition In0 k m := exists e:elt, MapsTo k e m.

Definition lt_tree x m := forall y, In y m -> X.lt y x.
Definition gt_tree x m := forall y, In y m -> X.lt x y.

Inductive bst : t elt -> Prop :=
  | BSLeaf : bst (Leaf _)
  | BSNode : forall x e l r h, bst l -> bst r ->
     lt_tree x l -> gt_tree x r -> bst (Node l x e r h).

End Invariants.

Module Export Proofs.
 Module PX := KeyOrderedType X.

Section Elt.
Variable elt:Type.

Definition Empty m := forall (a:key)(e:elt) , ~ MapsTo a e m.

End Elt.

Section Map.
Variable elt elt' : Type.
Variable f : elt -> elt'.

Lemma map_bst : forall m, bst m -> bst (map f m).
Admitted.

End Map.
Section Map2.
Variable elt elt' elt'' : Type.
Variable f : option elt -> option elt' -> option elt''.

Lemma map2_bst : forall m m', bst m -> bst m' -> bst (map2 f m m').
Admitted.

End Map2.
End Proofs.
End Raw.

Module IntMake (I:Int)(X: OrderedType) <: S with Module E := X.

 Module E := X.
 Module Raw := Raw I X.
 Import Raw.Proofs.

 #[universes(template)]
 Record bst (elt:Type) :=
  Bst {this :> Raw.tree elt; is_bst : Raw.bst this}.

 Definition t := bst.
 Definition key := E.t.

 Section Elt.
 Variable elt elt' elt'': Type.

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
Definition remove x m : t elt.
admit.
Defined.
Definition mem x m : bool.
admit.
Defined.
Definition find x m : option elt.
admit.
Defined.
 Definition map f m : t elt' := Bst (map_bst f (is_bst m)).
Definition mapi (f:key->elt->elt') m : t elt'.
admit.
Defined.
 Definition map2 f m (m':t elt') : t elt'' :=
  Bst (map2_bst f (is_bst m) (is_bst m')).
Definition elements m : list (key*elt).
admit.
Defined.
 Definition cardinal m := Raw.cardinal (this m).
 Definition fold (A:Type) (f:key->elt->A->A) m i := Raw.fold (A:=A) f (this m) i.
 Definition equal cmp m m' : bool := Raw.equal cmp (this m) (this m').
Definition MapsTo x e m : Prop.
exact (Raw.MapsTo x e (this m)).
Defined.
Definition In x m : Prop.
exact (Raw.In0 x (this m)).
Defined.
Definition Empty m : Prop.
exact (Empty (this m)).
Defined.
Definition eq_key : (key*elt) -> (key*elt) -> Prop.
exact (@PX.eqk elt).
Defined.
Definition eq_key_elt : (key*elt) -> (key*elt) -> Prop.
exact (@PX.eqke elt).
Defined.
Definition lt_key : (key*elt) -> (key*elt) -> Prop.
exact (@PX.ltk elt).
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
 Lemma is_empty_2 : forall m, is_empty m = true -> Empty m.
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

 Lemma fold_1 : forall m (A : Type) (i : A) (f : key -> elt -> A -> A),
        fold f m i = fold_left (fun a p => f (fst p) (snd p) a) (elements m) i.
Proof using .
admit.
Defined.

 Lemma elements_1 : forall m x e,
   MapsTo x e m -> InA eq_key_elt (x,e) (elements m).
Proof using .
admit.
Defined.

 Lemma elements_2 : forall m x e,
   InA eq_key_elt (x,e) (elements m) -> MapsTo x e m.
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

 Definition Equal m m' := forall y, find y m = find y m'.
 Definition Equiv (eq_elt:elt->elt->Prop) m m' :=
   (forall k, In k m <-> In k m') /\
   (forall k e e', MapsTo k e m -> MapsTo k e' m' -> eq_elt e e').
 Definition Equivb cmp := Equiv (Cmp cmp).

 Lemma equal_1 : forall m m' cmp,
   Equivb cmp m m' -> equal cmp m m' = true.
Proof using .
admit.
Defined.

 Lemma equal_2 : forall m m' cmp,
   equal cmp m m' = true -> Equivb cmp m m'.
Proof using .
admit.
Defined.

 End Elt.

 Lemma map_1 : forall (elt elt':Type)(m: t elt)(x:key)(e:elt)(f:elt->elt'),
        MapsTo x e m -> MapsTo x (f e) (map f m).
Admitted.

 Lemma map_2 : forall (elt elt':Type)(m:t elt)(x:key)(f:elt->elt'), In x (map f m) -> In x m.
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

End IntMake.

Module IntMake_ord (I:Int)(X: OrderedType)(D : OrderedType) <:
    Sord with Module Data := D
         with Module MapS.E := X.

  Module Data := D.
  Module Import MapS := IntMake(I)(X).
  Module LO := FMapList.Make_ord(X)(D).

  Definition t := MapS.t D.t.

  Definition cmp e e' :=
   match D.compare e e' with EQ _ => true | _ => false end.

  Definition eq (m1 m2 : t) := LO.eq_list (elements m1) (elements m2).
  Definition lt (m1 m2 : t) := LO.lt_list (elements m1) (elements m2).

  Definition compare (s s':t) : Compare lt eq s s'.
Admitted.

  Lemma eq_1 : forall (m m' : t), Equivb cmp m m' -> eq m m'.
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

End IntMake_ord.

Module Make (X: OrderedType) <: S with Module E := X
 :=IntMake(Z_as_Int)(X).

End FMapAVL.
Export Stdlib.Arith.Arith.

  Module Export FSetAVL.
Import Stdlib.FSets.FSetInterface.
Import Stdlib.ZArith.Int.

Module IntMake (I:Int)(X: OrderedType) <: S with Module E := X.
 Module X' := OrdersAlt.Update_OT X.
 Module MSet := MSetAVL.IntMake I X'.
 Include FSetCompat.Backport_Sets X MSet.
End IntMake.

Module Make (X: OrderedType) <: S with Module E := X
 :=IntMake(Z_as_Int)(X).

Set Implicit Arguments.
Import Stdlib.Program.Program.

Abbreviation vector := Vector.t.
Abbreviation Vnil := Vector.nil.
Abbreviation Vcons := Vector.cons.

Arguments Vnil {A}.
Arguments Vcons [A] _ [n] _.
  Notation " [ x ; .. ; y ] " := (Vcons x .. (Vcons y Vnil) ..)
    : vector_scope.

Section Vnth.

  Variable A : Type.

  Program Fixpoint Vnth n (v : vector A n) : forall i, i < n -> A :=
    match v with
      | Vnil => fun i ip => !
      | Vcons x v' => fun i =>
        match i with
          | 0 => fun _ => x
          | S j => fun H => Vnth v' (i:=j) _
        end
    end.
Admit Obligations.

End Vnth.

Section Vopt_filter.

  Variable (A : Type).

  Fixpoint Vopt_filter n (ks : vector nat n) p (xs : vector A p) :=
    match ks in vector _ n return vector (option A) n with
      | Vnil => Vnil
      | Vcons k ks' =>
        Vcons (match lt_dec k p with left h => Some (Vnth xs h) | _ => None end)
          (Vopt_filter ks' xs)
    end.

End Vopt_filter.

Section S.

  Context {A : Type}.

  Definition set := A -> Prop.

End S.

Arguments set : clear implicits.

Module Export FMapUtil.

Module Make (Export XMap : FMapInterface.S).

  Arguments empty {elt}.

  Module Domain (XSet : FSetInterface.S with Module E := XMap.E).

  End Domain.

End Make.
Module Export SN.
Import CoLoR.Util.Relation.RelUtil.

Section sn.

  Variable (A : Type) (R : rel A).

  Inductive SN x : Prop := SN_intro : (forall y, R x y -> SN y) -> SN x.

End sn.

End SN.
Module Export Lexico.
Import CoLoR.Util.Relation.RelUtil.

Section lex.

  Variables (A B : Type) (gtA eqA : relation A) (gtB : relation B).

  Inductive lex : relation (prod A B) :=
  | lex1 a a' b b' : gtA a a' -> lex (a,b) (a',b')
  | lex2 a a' b b' : eqA a a' -> gtB b b' -> lex (a,b) (a',b').

End lex.

Fixpoint prodn n A : Type :=
  match n with
    | 0 => unit
    | S n' => prod A (prodn n' A)
  end.

Fixpoint lexn {n A} (eqA gtA : relation A) :=
  match n as n return relation (prodn n A) with
    | 0 => empty_rel
    | S n' => lex gtA eqA (lexn eqA gtA)
  end.

Fixpoint prod_of_vec n A (v : vector A n) :=
  match v in vector _ n return prodn n A with
    | Vnil => tt
    | Vcons x v' => (x, prod_of_vec v')
  end.
Definition lexv {n A} (eq gt : relation A) : relation (vector A n).
exact (fun v w => lexn eq gt (prod_of_vec v) (prod_of_vec w)).
Defined.

End Lexico.
Import CoLoR.Util.Logic.EqUtil.
Export Stdlib.Structures.OrderedType.

Module Type Cmp.

  Parameter t : Type.

  Parameter cmp : t -> t -> comparison.

End Cmp.

Module Type CmpTrans.

End CmpTrans.

Module Type CmpTransLeibniz.

  Include Cmp.

End CmpTransLeibniz.

Module CmpTrans_of_CmpTransLeibniz (CTL : CmpTransLeibniz) <: CmpTrans.

End CmpTrans_of_CmpTransLeibniz.

Module MOT_of_CmpTransLeibniz (Import CTL : CmpTransLeibniz) <: MiniOrderedType.

  Definition t := t.

  Include LeibnizFacts CTL.
Definition lt : relation t.
Admitted.

  Global Instance lt_trans : Transitive lt.
Admitted.

  Lemma lt_not_eq x y : lt x y -> x <> y.
Admitted.

  Lemma compare x y : Compare lt eq x y.
Admitted.

End MOT_of_CmpTransLeibniz.

Module Export Def.

Section term.

  Variables F X : Type.

  Inductive Te : Type :=
  | Var (x : X)
  | Fun (f : F)
  | App (u v : Te)
  | Lam (x : X) (u : Te).

    Variables
      (eq_fun_dec : forall f g : F, {f=g}+{~f=g})
      (eq_var_dec : forall x y : X, {x=y}+{~x=y}).

    Lemma eq_term_dec : forall u v : Te, {u=v}+{~u=v}.
Admitted.

  Abbreviation Tes := (vector Te).

  Fixpoint apps {n} t (us : Tes n) :=
    match us with
      | Vnil => t
      | Vcons u us' => apps (App t u) us'
    end.

  Fixpoint head (t : Te) :=
    match t with
      | App u _ => head u
      | _ => t
    end.

  Record Ens := mk_Ens {
    Ens_type : Type;
    Ens_empty : Ens_type;
    Ens_singleton : X -> Ens_type;
    Ens_add : X -> Ens_type -> Ens_type;
    Ens_union : Ens_type -> Ens_type -> Ens_type;
    Ens_remove : X -> Ens_type -> Ens_type;
    Ens_diff : Ens_type -> Ens_type -> Ens_type;
    Ens_In : X -> Ens_type -> Prop;
    Ens_mem : X -> Ens_type -> bool;
    Ens_fold : forall A, (X -> A -> A) -> Ens_type -> A -> A }.

    Variable ens_X : Ens.

    Abbreviation empty := (Ens_empty ens_X).
    Abbreviation singleton := (Ens_singleton ens_X).
    Abbreviation union := (Ens_union ens_X).
    Abbreviation remove := (Ens_remove ens_X).

    Fixpoint fv (t : Te) :=
      match t with
        | Var x => singleton x
        | Fun _ => empty
        | App u v => union (fv u) (fv v)
        | Lam x u => remove x (fv u)
      end.

    Fixpoint fvs {n} (ts : Tes n) :=
      match ts with
        | Vnil => empty
        | Vcons t ts' => union (fv t) (fvs ts')
      end.

    Variable R : relation Te.

    Inductive clos_mon : relation Te :=
    | m_step : forall u v, R u v -> clos_mon u v
    | m_app_l : forall v u u', clos_mon u u' -> clos_mon (App u v) (App u' v)
    | m_app_r : forall u v v', clos_mon v v' -> clos_mon (App u v) (App u v')
    | m_lam : forall x u u', clos_mon u u' -> clos_mon (Lam x u) (Lam x u').

End term.

Arguments Var [F X] _.
Arguments Fun [F X] _.

Module Type Var.

  Parameter X : Type.

  Declare Module Export XOrd : OrderedType
  with Definition t := X
  with Definition eq := @Logic.eq X.

  Declare Module Export XSet : FSetInterface.S with Module E := XOrd.

  Abbreviation ens_X :=
    (@mk_Ens X XSet.t empty singleton add union remove diff In mem fold).

  Parameter var_notin : XSet.t -> X.

End Var.

Module NatVar <: Var.

  Definition X := nat.

  Module XOrd := OrderedTypeEx.Nat_as_OT.

  Module Export XSet := FSetAVL.Make XOrd.

  Abbreviation ens_X :=
    (@mk_Ens X XSet.t empty singleton add union remove diff In mem fold).

  Definition var_notin xs :=
    match max_elt xs with
      | Some k => S k
      | None => 0
    end.

End NatVar.

Module Type L_Struct.

  Parameter F : Type.

  Declare Module Export FOrd : OrderedType
  with Definition t := F
  with Definition eq := @Logic.eq F.

  Declare Module Export V : Var.

  Abbreviation Te := (Te F X).
  Abbreviation Tes := (vector Te).

End L_Struct.

Module Make (Export L : L_Struct).

    End Make.
Module Export LSubs.
Import CoLoR.Util.Relation.RelUtil.

  Section subs.

    Variables (F X : Type)
      (eq_fun_dec : forall f g : F, {f=g}+{~f=g})
      (eq_var_dec : forall x y : X, {x=y}+{~x=y}).

    Abbreviation Te := (@Te F X).
    Abbreviation Var := (@Var F X).
    Abbreviation eq_term_dec := (@eq_term_dec F X eq_fun_dec eq_var_dec).
    Abbreviation beq_term := (bool_of_rel eq_term_dec).

    Variable ens_X : Ens X.

    Abbreviation empty := (Ens_empty ens_X).
    Abbreviation mem := (Ens_mem ens_X).
    Abbreviation add := (Ens_add ens_X).
    Abbreviation union := (Ens_union ens_X).
    Abbreviation remove := (Ens_remove ens_X).
    Abbreviation fold := (Ens_fold ens_X).

    Abbreviation fv := (@fv F X ens_X).

    Variable var_notin : Ens_type ens_X -> X.

    Definition id := fun y => Var y.

    Definition update x (t : Te) s := fun y =>
      match eq_var_dec y x with
        | left _ => t
        | _ => s y
      end.

    Definition single x t := update x t id.

    Definition domain_fun s x xs :=
      if beq_term (s x) (Var x) then xs else add x xs.

    Definition domain xs s := fold (domain_fun s) xs empty.

    Definition fvcod_fun s (x : X) xs := union (fv (s x)) xs.

    Definition fvcod xs s := fold (fvcod_fun s) xs empty.

    Definition fvcodom xs s := fvcod (domain xs s) s.

    Definition var x u s :=
      let xs := fvcodom (remove x (fv u)) s in
        if mem x xs then var_notin (union (fv u) xs) else x.

    Fixpoint subs s (t : Te) :=
      match t with
        | Def.Var x => s x
        | Fun f => t
        | App u v => App (subs s u) (subs s v)
        | Lam x u =>
          let x' := var x u s in Lam x' (subs (update x (Var x') s) u)
      end.

    Definition rename y z := subs (single y (Var z)).

    Inductive clos_subs R : rel Te :=
    | subs_step : forall x y s, R x y -> clos_subs R (subs s x) (subs s y).

  End subs.

Module Make (Export L : L_Struct).
  Abbreviation clos_subs :=
    (@clos_subs F X FOrd.eq_dec XOrd.eq_dec ens_X var_notin).

  End Make.

End LSubs.
Module Export LAlpha.
Import CoLoR.Util.Relation.RelUtil.

  Section aeq.

    Variables (F X : Type)
      (eq_fun_dec : forall f g : F, {f=g}+{~f=g})
      (eq_var_dec : forall x y : X, {x=y}+{~x=y}).

    Abbreviation Te := (@Te F X).

    Variable ens_X : Ens X.

    Abbreviation In := (Ens_In ens_X).
    Abbreviation fv := (@fv F X ens_X).

    Variable var_notin : Ens_type ens_X -> X.

    Abbreviation rename := (@rename F X eq_fun_dec eq_var_dec ens_X var_notin).

    Inductive aeq : relation Te :=
    | aeq_refl : forall u, aeq u u
    | aeq_sym : forall u v, aeq u v -> aeq v u
    | aeq_trans : forall u v w, aeq u v -> aeq v w -> aeq u w
    | aeq_app_l : forall u u' v, aeq u u' -> aeq (App u v) (App u' v)
    | aeq_app_r : forall u v v', aeq v v' -> aeq (App u v) (App u v')
    | aeq_lam : forall x u u', aeq u u' -> aeq (Lam x u) (Lam x u')
    | aeq_alpha : forall x u y,
      ~In y (fv u) -> aeq (Lam x u) (Lam y (rename x y u)).

    Infix "~~" := aeq (at level 70).

      Variable R : relation Te.

      Inductive clos_aeq : relation Te :=
      | clos_aeq_intro :
        forall u u' v v', u ~~ u' -> v ~~ v' -> R u' v' -> clos_aeq u v.

  End aeq.

Module Make (Export L : L_Struct).

  Module Export S := LSubs.Make L.
  Abbreviation clos_aeq := (@clos_aeq F X FOrd.eq_dec XOrd.eq_dec ens_X var_notin).

  Lemma clos_aeq_intro_refl (R : rel Te) t u : R t u -> clos_aeq R t u.
Admitted.

    End Make.

End LAlpha.
Module Export LBeta.

Section beta_top.

  Variables F X : Type.

  Abbreviation Te := (@Te F X).

  Variable eq_fun_dec : forall f g : F, {f=g}+{~f=g}.
  Variable eq_var_dec : forall x y : X, {x=y}+{~x=y}.

  Variable ens_X : Ens X.

  Variable var_notin : Ens_type ens_X -> X.

  Abbreviation single := (@single F X eq_var_dec).
  Abbreviation subs := (@subs F X eq_fun_dec eq_var_dec ens_X var_notin).

  Inductive beta_top : relation Te :=
  | beta_top_intro : forall x u v,
    beta_top (App (Lam x u) v) (subs (single x v) u).

End beta_top.

Module Make (Export L : L_Struct).

  Module Export A := LAlpha.Make L.

  Abbreviation beta_top := (@beta_top F X FOrd.eq_dec XOrd.eq_dec ens_X var_notin).

End Make.
Module Export LEta.

Section eta_top.

  Variables F X : Type.

  Abbreviation Te := (@Te F X).

  Variable ens_X : Ens X.

  Abbreviation In := (@Ens_In X ens_X).
  Abbreviation fv := (@fv F X ens_X).

  Inductive eta_top : relation Te :=
  | eta_top_intro : forall x u,
      ~In x (fv u) -> eta_top (Lam x (App u (Var x))) u.

End eta_top.

Module Make (Export L : L_Struct).

  Abbreviation eta_top := (@eta_top F X ens_X).

End Make.
Module Export LComp.

Module Type CP_Struct.

  Declare Module Export L : L_Struct.

End CP_Struct.

Module CP_beta_eta (L : L_Struct) <: CP_Struct.

  Module L := L.

End CP_beta_eta.

Module Make (Export CP : CP_Struct).

End Make.
Module Export LCompRewrite.
Import CoLoR.Util.Relation.RelUtil.

Module Type RS_Struct.

  Declare Module Export L : L_Struct.

  Parameter rule : relation Te.

  Parameter lhs_fun : forall l r, rule l r -> F.
  Parameter lhs_nb_args : forall l r, rule l r -> nat.
  Parameter lhs_args : forall l r (h : rule l r), Tes (lhs_nb_args h).

End RS_Struct.

Module Make (Export RS : RS_Struct).

  Module Export A := LAlpha.Make L.

  Abbreviation Sh := (clos_subs rule).

End Make.

Module CP_beta_eta_rewrite (Import RS : RS_Struct) <: LComp.CP_Struct.

  Module L := L.

  Module Import S := Make RS.
  Module Import B := LBeta.Make L.
  Module Import E := LEta.Make L.

  Definition Rh := beta_top U eta_top U Sh.

  Abbreviation R := (clos_mon Rh).

  Abbreviation R_aeq := (clos_aeq R).

End CP_beta_eta_rewrite.

End LCompRewrite.
Module Export LSimple.

Section simple.

  Variable So : Type.

  Inductive Ty : Type :=
  | Base : So -> Ty
  | Arr : Ty -> Ty -> Ty.

  Abbreviation Tys := (vector Ty).

  Fixpoint arity (T : Ty) :=
    match T with
      | Base _ => 0
      | Arr _ T' => S (arity T')
    end.

  Fixpoint inputs (T : Ty) :=
    match T as T return Tys (arity T) with
      | Base _ => Vnil
      | Arr T1 T2 => Vcons T1 (inputs T2)
    end.

  Fixpoint output (T : Ty) k {struct k} :=
    match k, T with
      | S k', Arr U V => output V k'
      | _, _ => T
    end.

  Fixpoint output_base (T : Ty) :=
    match T with
      | Base b => b
      | Arr _ T' => output_base T'
    end.

  End simple.

Infix "~~>" := Arr (at level 55, right associativity).

Module ST_Cmp (Export BCmp : Cmp) <: Cmp.

  Definition t := Ty BCmp.t.

  Fixpoint cmp A B :=
    match A, B with
      | Base a, Base b => BCmp.cmp a b
      | Base _, Arr _ _ => Lt
      | Arr _ _, Base _ => Gt
      | Arr A1 A2, Arr B1 B2 =>
          match cmp A1 B1 with
            | Eq => cmp A2 B2
            | c => c
          end
    end.

End ST_Cmp.

Module ST_CmpTransLeibniz (Export BCmpTransLeibniz : CmpTransLeibniz)
  <: CmpTransLeibniz.

  Module C := ST_Cmp BCmpTransLeibniz.

  Include C.

End ST_CmpTransLeibniz.

Section typing.

  Variables F X So : Type.

  Abbreviation Te := (@Te F X).
  Abbreviation Ty := (@Ty So).

  Variable typ : F -> Ty.

  Definition TypArgs f := vector Te (arity (typ f)).

  Record Env := mk_Env {
    Env_type : Type;
    Env_empty : Env_type;
    Env_add : X -> Ty -> Env_type -> Env_type;
    Env_In : X -> Env_type -> Prop;
    Env_MapsTo : X -> Ty -> Env_type -> Prop;
    Env_Equal : relation Env_type }.

  Variable env : Env.

  Abbreviation En := (Env_type env).
  Abbreviation MapsTo := (Env_MapsTo env).
  Abbreviation add := (Env_add env).

  Inductive tr : En -> Te -> Ty -> Prop :=
  | tr_var : forall E x T, MapsTo x T E -> tr E (Var x) T
  | tr_fun : forall E f, tr E (Fun f) (typ f)
  | tr_app : forall E u v V T, tr E u (V ~~> T) -> tr E v V -> tr E (App u v) T
  | tr_lam : forall E x X v V, tr (add x X E) v V -> tr E (Lam x v) (X ~~> V).

End typing.

Module Type ST_Struct.

  Declare Module Export L : L_Struct.

  Parameter So : Type.

  Abbreviation Ty := (Ty So).

  Parameter typ : F -> Ty.

  Declare Module Export XMap : FMapInterface.S with Module E := XOrd.

  Abbreviation En := (@XMap.t Ty).
  Abbreviation empty := (@XMap.empty Ty).
  Abbreviation add := (@XMap.add Ty).
  Abbreviation In := (@XMap.In Ty).
  Abbreviation MapsTo := (@XMap.MapsTo Ty).
  Abbreviation Equal := (@XMap.Equal Ty).
  Abbreviation env := (mk_Env empty add In MapsTo Equal).

End ST_Struct.

Module Make (Export ST : ST_Struct).

  Module Export B := LBeta.Make ST.L.

  Module XMapUtil := FMapUtil.Make XMap.

  Abbreviation tr := (@tr F X So typ env).

  Notation "E '|-' v '~:' V" := (tr E v V) (at level 70).

End Make.
Import CoLoR.Util.Relation.RelUtil.

Module Export Def.

  Section call.

    Variables F X : Type.

    Abbreviation Te := (@Te F X).
    Abbreviation Tes := (vector Te).

    Record call : Type := mk_call {
      call_fun : F;
      call_nb_args : nat;
      call_args : Tes call_nb_args }.

    Variables (eq_fun_dec : forall x y : F, {x=y}+{~x=y})
      (eq_var_dec : forall x y : X, {x=y}+{~x=y})
      (ens_X : Ens X) (var_notin : Ens_type ens_X -> X).

    Abbreviation aeq := (@aeq F X eq_fun_dec eq_var_dec ens_X var_notin).

    Variables (C : Type) (code : F -> C) (gtC : relation C).

    Variables (filter_arity : C -> nat)
      (filter : forall r, vector nat (filter_arity r)).
Definition gt_call (gt_args : C -> relation call) : relation call.
exact (Rof (transp (lexprod (transp gtC) (fun r => transp (gt_args r))))
          (fun c => @existT _ _ (code (call_fun c)) c)).
Defined.

    Definition gt_args_lex (gt : relation Te) r : relation call := Rof
      (lexv (opt aeq) (opt gt))
      (fun c => Vopt_filter (filter r) (call_args c)).

  End call.

Module Type DLQO_Struct.

  Declare Module Export ST : ST_Struct.

  Parameter C : Type.
  Parameter code : F -> C.

  Parameter gtC : relation C.

  Parameter filter_arity : C -> nat.
  Parameter filter : forall r, vector nat (filter_arity r).

  Abbreviation gt_call := (@gt_call F X C code gtC).
  Abbreviation gt_args_lex := (@gt_args_lex F X FOrd.eq_dec XOrd.eq_dec ens_X
    var_notin C filter_arity filter).

End DLQO_Struct.

Module Make (Export ST : ST_Struct).

End Make.

Module Lex (Export CO : DLQO_Struct).

  End Lex.
Module Export LCompSimple.

  Module Make (Export ST : ST_Struct)
  (Export CP : CP_Struct with Module L := ST.L).
  Module Export T := LSimple.Make ST.

  End Make.

Module SN_beta_eta (Export ST : ST_Struct).
End SN_beta_eta.
Module Export LCompInt.

  Section supterm_acc.

    Variables F X : Type.
    Abbreviation Te := (@Te F X).

    Variable So : Type.
    Abbreviation Ty := (@Ty So).

    Variable typ : F -> Ty.
    Abbreviation TypArgs := (@TypArgs F X So typ).

    Variables (Acc : F -> set nat)
      (Acc_arity : forall f i, Acc f i -> i < arity (typ f)).

    Inductive supterm_acc : relation Te :=
    | stacc_intro : forall f (ts : TypArgs f) i (hi : Acc f i),
      supterm_acc (apps (Fun f) ts) (Vnth ts (Acc_arity hi)).

    Lemma stacc_intro' f (ts : TypArgs f) i (hi : Acc f i) t u :
      t = apps (Fun f) ts -> u = Vnth ts (Acc_arity hi) -> supterm_acc t u.
Admitted.

  End supterm_acc.

Module Type BI_Struct.

  Declare Module Export ST : ST_Struct.

  Parameter Acc : F -> set nat.
  Parameter Acc_arity : forall f i, Acc f i -> i < arity (typ f).
  Abbreviation supterm_acc := (@supterm_acc F X So typ Acc Acc_arity).

End BI_Struct.

Module Make (Export ST : ST_Struct)
  (Export CP : CP_Struct with Module L := ST.L)
  (Export BI : BI_Struct with Module ST := ST).
  Module Export CS := LCompSimple.Make ST CP.

    End Make.

  Section cc.

    Variables F X : Type.

    Abbreviation Te := (@Te F X).
    Abbreviation Tes := (vector Te).
    Abbreviation call := (@call F X).

    Variable So : Type.

    Abbreviation Ty := (@Ty So).

    Variable ens_X : Ens X.

    Abbreviation In := (Ens_In ens_X).
    Abbreviation fvs := (@fvs F X ens_X).

    Variable env : Env X So.

    Abbreviation En := (Env_type env).
    Abbreviation MapsTo := (Env_MapsTo env).
    Abbreviation add := (Env_add env).

    Variable typ : F -> Ty.

    Abbreviation TypArgs := (@TypArgs F X So typ).

    Variables (Acc : F -> nat -> Prop)
      (Acc_arity : forall g i, Acc g i -> i < arity (typ g)).

    Variable gt1 : En -> relation call.

      Variables (f : F) (n : nat) (ls : Tes n).

      Inductive cc : En -> Te -> Ty -> Prop :=

      | cc_arg : forall E i (i1 : i < n) (i2 : i < arity (typ f)),
        cc E (Vnth ls i1) (Vnth (inputs (typ f)) i2)

      | cc_var : forall E x T,
        MapsTo x T E -> ~In x (fvs ls) -> cc E (Var x) T

      | cc_app : forall E t u A B,
        cc E t (A ~~> B) -> cc E u A -> cc E (App t u) B

      | cc_lam : forall E x A v B,
        ~In x (fvs ls) -> cc (add x A E) v B -> cc E (Lam x v) (A ~~> B)

      | cc_acc : forall E g (us : TypArgs g) i (hi : Acc g i),
        cc E (apps (Fun g) us) (Base (output_base (typ g))) ->
        cc E (Vnth us (Acc_arity hi)) (Vnth (inputs (typ g)) (Acc_arity hi))

      | cc_call : forall E g p (us : Tes p),
        0+p <= arity (typ g) -> gt1 E (mk_call f ls) (mk_call g us) ->
        (forall i (i1 : i < p) (i2 : i < arity (typ g)),
          cc E (Vnth us i1) (Vnth (inputs (typ g)) i2)) ->
        cc E (apps (Fun g) us) (output (typ g) p).

     Lemma cc_arg' E v V i (i1 : i < n) (i2 : i < arity (typ f)) :
        v = Vnth ls i1 -> V = Vnth (inputs (typ f)) i2 -> cc E v V.
Admitted.

     Lemma cc_acc' E v V g (us : TypArgs g) i (hi : Acc g i) :
        cc E (apps (Fun g) us) (Base (output_base (typ g))) ->
        v = Vnth us (Acc_arity hi) ->
        V = Vnth (inputs (typ g)) (Acc_arity hi) -> cc E v V.
Admitted.

     Lemma cc_call' E v V g p (us : Tes p) :
        0+p <= arity (typ g) -> gt1 E (mk_call f ls) (mk_call g us) ->
        (forall i (i1 : i < p) (i2 : i < arity (typ g)),
          cc E (Vnth us i1) (Vnth (inputs (typ g)) i2)) ->
        v = apps (Fun g) us -> V = output (typ g) p -> cc E v V.
Admitted.

  End cc.

Module Type CC_Struct.

  Declare Module Export BI : BI_Struct.
  Abbreviation cc := (@cc F X So ens_X env typ Acc Acc_arity).

End CC_Struct.

Module Comp (Export CC : CC_Struct)
  (Export CP : CP_Struct with Module L := CC.BI.ST.L).

  End Comp.

Module Termin (Export CC : CC_Struct)
  (Export RS : RS_Struct with Module L := CC.BI.ST.L).

  Module CP := CP_beta_eta_rewrite RS.

  End Termin.

Module SN_rewrite (Export CC : CC_Struct)
  (Export RS : RS_Struct with Module L := CC.BI.ST.L)
  (Export CO : DLQO_Struct with Module ST := CC.BI.ST).

  Module Import T := Termin CC RS.

  Module Export CI := LCompInt.Make CC.BI.ST CP BI.

  Definition gt := clos_aeq (supterm_acc!).

  Definition gt1 (E : En) := gt_call (gt_args_lex gt).

  Section termin.

    Variables
      (lhs_cc_rhs : forall l r (h : rule l r),
        cc gt1 (lhs_fun h) (lhs_args h)
        XMap.empty r (output (typ (lhs_fun h)) (lhs_nb_args h))).

    Lemma tr_sn_beta_eta_rewrite_aeq : forall E v V, E |- v ~: V -> SN R_aeq v.
Admitted.

  End termin.

End SN_rewrite.
Import CoLoR.Util.Logic.LogicUtil.
Import Stdlib.Structures.Equalities.
Import Stdlib.micromega.Lia.

Inductive B : Type := Nat : B.

Module BTyp <: Typ.

  Definition t := B.

End BTyp.

Module BCmp <: Cmp.

  Include BTyp.

  Definition cmp (_ _ : B) := Eq.

End BCmp.

Abbreviation TNat := (Base Nat).

Module Ty_Cmp := ST_Cmp BCmp.

Inductive F : Type :=
| Zero : F
| Succ : F
| Rec : Ty B -> F.

Definition prec f :=
  match f with
    | Zero => 0
    | Succ => 1
    | Rec _ => 2
  end.

Module FCmp <: Cmp.

  Definition t := F.

  Definition cmp f g :=
    match f, g with
      | Rec u, Rec v => Ty_Cmp.cmp u v
      | _, _ => Nat.compare (prec f) (prec g)
    end.

End FCmp.

Module FCmpTransLeibniz <: CmpTransLeibniz.

  Include FCmp.

End FCmpTransLeibniz.

Module FMOT := MOT_of_CmpTransLeibniz FCmpTransLeibniz.

Module FOrd := MOT_to_OT FMOT.

Module L_SystemT <: L_Struct.

  Definition F := F.

  Module FOrd := FOrd.

  Module Export V := NatVar.

  Abbreviation Te := (Te F X).
  Abbreviation Tes := (vector Te).

  Abbreviation Var := (@Var F X).
  Abbreviation Fun := (@Fun F X).

  Abbreviation FZero := (Fun Zero).
  Abbreviation FSucc := (Fun Succ).
  Definition FRec A := Fun (Rec A).

End L_SystemT.
Local Open Scope vector_scope.

Module RS_SystemT <: RS_Struct.

  Module Export L := L_SystemT.

  Definition u := Var 0.
  Definition v := Var 1.
  Definition n := Var 2.

  Inductive R : relation Te :=
  | rule_Rec_Zero : forall A, R (apps (Fun (Rec A)) [FZero; u; v]) u
  | rule_Rec_Succ : forall A, R (apps (Fun (Rec A)) [apps FSucc [n]; u; v])
                                (apps v [n; apps (FRec A) [n; u; v]]).

  Definition rule := R.

  Definition lhs_fun l r (_ : rule l r) :=
    match head l with
      | Def.Fun f => f
      | _ => Zero
    end.

  Definition lhs_nb_args l r (_ : rule l r) := 3.

  Definition lhs_args l r :=
    match l as l return forall h : rule l r, Tes (lhs_nb_args h) with
      | Def.App (Def.App (Def.App (Def.Fun _) l1) l2) l3 =>
        fun _ => [l1; l2; l3]
      | _ => fun _ => [FZero; FZero; FZero]
    end.

End RS_SystemT.

Module ST_SystemT <: ST_Struct.

  Module Export L := L_SystemT.

  Definition So := B.

  Abbreviation Ty := (Ty So).

  Definition typ f :=
    match f with
      | Zero => TNat
      | Succ => TNat ~~> TNat
      | Rec A => TNat ~~> A ~~> (TNat ~~> A ~~> A) ~~> A
    end.

  Module Export XMap := FMapAVL.Make XOrd.
  Abbreviation empty := (@XMap.empty Ty).
  Abbreviation add := (@XMap.add Ty).
  Abbreviation In := (@XMap.In Ty).
  Abbreviation MapsTo := (@XMap.MapsTo Ty).
  Abbreviation Equal := (@XMap.Equal Ty).
  Abbreviation env := (mk_Env empty add In MapsTo Equal).

End ST_SystemT.

Module DLQO_SystemT <: DLQO_Struct.

  Module Export ST := ST_SystemT.

  Definition C := F.

  Definition code (f : F) := f.

  Definition gtC := Rof gt prec.

  Definition filter_arity (_ : F) := 1.

  Definition filter (_ : F) := [0].

End DLQO_SystemT.

Module BI_SystemT <: BI_Struct.

  Module Export ST := ST_SystemT.

  Inductive acc : F -> set nat :=
  | Acc_Succ : acc Succ 0.

  Definition Acc := acc.

  Lemma Acc_arity f i (hi : Acc f i) : i < arity (typ f).
Admitted.

End BI_SystemT.

Module CC_SystemT <: CC_Struct.

  Module Export BI := BI_SystemT.

  Abbreviation cc := (@cc F X So ens_X env typ Acc Acc_arity).

End CC_SystemT.

Module Export SN := SN_rewrite CC_SystemT RS_SystemT DLQO_SystemT.
Import DLQO_SystemT.
Import RS_SystemT.

Lemma tr_sn_SystemT : forall E v V, E |- v ~: V -> SN R_aeq v.

Proof.
  apply tr_sn_beta_eta_rewrite_aeq.
  intros l r h; inversion h; subst;
    unfold lhs_fun, lhs_args, lhs_nb_args; simpl.

  eapply cc_arg' with (i:=1); refl.

  set (ls := [App FSucc n; u; v]).

  assert (hn : cc gt1 (Rec A) ls ST.empty n TNat).
  eapply cc_acc' with (g:=Succ) (us:=[n]) (i:=0); simpl; try refl.
  eapply cc_arg' with (i:=0); refl.

  assert (hv : cc gt1 (Rec A) ls ST.empty v (TNat ~~> A ~~> A)).
  eapply cc_arg' with (i:=2); simpl; refl.

  assert (hu : cc gt1 (Rec A) ls ST.empty u A).
  eapply cc_arg' with (i:=1); simpl; refl.

  eapply cc_app.
eapply cc_app.
apply hv.
hyp.
  eapply cc_call' with (g:=Rec A) (us:=[n; u; v]); try refl.
  simpl.
lia.
  unfold gt1, Def.gt_call, Rof, transp.
apply right_lex.
  unfold Def.gt_args_lex, Rof, lexv; simpl.
apply lex1.
apply opt_intro.
  unfold gt.
apply clos_aeq_intro_refl.
apply t_step.
  eapply stacc_intro' with (i:=0) (f:=Succ) (ts:=[n]); try refl.
