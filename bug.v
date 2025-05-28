
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/utils/theories" "MetaRocq.Utils" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/common/theories" "MetaRocq.Common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/pcuic/theories" "MetaRocq.PCUIC" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Equations" "Equations" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 3959 lines to 98 lines, then from 111 lines to 3187 lines, then from 3191 lines to 96 lines, then from 107 lines to 1813 lines, then from 1818 lines to 359 lines, then from 369 lines to 1502 lines, then from 1506 lines to 524 lines, then from 535 lines to 3221 lines, then from 3222 lines to 656 lines, then from 667 lines to 2894 lines, then from 2900 lines to 656 lines, then from 667 lines to 1321 lines, then from 1327 lines to 874 lines, then from 883 lines to 675 lines, then from 686 lines to 2746 lines, then from 2745 lines to 687 lines, then from 698 lines to 3155 lines, then from 3155 lines to 745 lines, then from 756 lines to 1586 lines, then from 1589 lines to 869 lines, then from 880 lines to 2395 lines, then from 2394 lines to 885 lines, then from 895 lines to 2754 lines, then from 2755 lines to 1157 lines, then from 1161 lines to 1145 lines, then from 1156 lines to 1809 lines, then from 1813 lines to 1200 lines, then from 1211 lines to 4024 lines, then from 4021 lines to 1355 lines, then from 1366 lines to 3048 lines, then from 3051 lines to 1938 lines, then from 1928 lines to 1518 lines, then from 1529 lines to 1814 lines, then from 1819 lines to 1523 lines, then from 1533 lines to 2340 lines, then from 2342 lines to 1526 lines, then from 1536 lines to 4638 lines, then from 4602 lines to 1892 lines, then from 1903 lines to 3075 lines, then from 3076 lines to 2771 lines, then from 2762 lines to 1985 lines, then from 1996 lines to 2830 lines, then from 2835 lines to 2048 lines, then from 2059 lines to 2413 lines, then from 2418 lines to 2052 lines, then from 2063 lines to 2597 lines, then from 2601 lines to 2063 lines, then from 2074 lines to 6642 lines, then from 6641 lines to 4802 lines, then from 4761 lines to 2105 lines, then from 2116 lines to 2604 lines, then from 2606 lines to 2117 lines, then from 2128 lines to 3899 lines, then from 3897 lines to 2137 lines, then from 2148 lines to 2516 lines, then from 2521 lines to 2151 lines, then from 2161 lines to 2404 lines, then from 2409 lines to 2150 lines, then from 2161 lines to 2447 lines, then from 2449 lines to 2162 lines, then from 2178 lines to 2162 lines, then from 2173 lines to 2602 lines, then from 2607 lines to 2180 lines, then from 2190 lines to 2437 lines, then from 2442 lines to 2200 lines, then from 2210 lines to 2368 lines, then from 2373 lines to 2201 lines, then from 2211 lines to 2367 lines, then from 2371 lines to 2204 lines, then from 2214 lines to 2934 lines, then from 2939 lines to 2250 lines, then from 2261 lines to 2593 lines, then from 2598 lines to 2252 lines, then from 2263 lines to 2633 lines, then from 2637 lines to 2623 lines, then from 2621 lines to 2324 lines, then from 2335 lines to 2934 lines, then from 2939 lines to 2302 lines, then from 2313 lines to 2654 lines, then from 2656 lines to 2311 lines, then from 2322 lines to 2473 lines, then from 2478 lines to 2312 lines, then from 2322 lines to 2470 lines, then from 2475 lines to 2312 lines, then from 2323 lines to 2571 lines, then from 2576 lines to 2353 lines, then from 2363 lines to 2478 lines, then from 2483 lines to 2368 lines, then from 2379 lines to 3551 lines, then from 3541 lines to 3278 lines *)
(* coqc version 9.1+alpha compiled with OCaml 4.14.2
   coqtop version runner-t7b1znuaq-project-4504-concurrent-2:/builds/coq/coq/_build/default,(HEAD detached at cdd06d0a2f356e) (cdd06d0a2f356e0c02e2d20356562b7deae4cf15)
   Modules that could not be inlined: Equations.Prop.DepElim
   Expected coqc runtime on this file: 1.301 sec *)









Require Corelib.Init.Ltac.
Require Corelib.Classes.CRelationClasses.
Require Stdlib.Classes.CRelationClasses.
Require Stdlib.Classes.DecidableClass.
Require Stdlib.Logic.HLevelsBase.
Require Stdlib.Bool.Bool.
Require Corelib.Classes.RelationClasses.
Require Stdlib.Classes.RelationClasses.
Require Corelib.Numbers.BinNums.
Require Stdlib.Numbers.BinNums.
Require Stdlib.Logic.EqdepFacts.
Require Stdlib.Logic.Eqdep_dec.
Require Corelib.Classes.Morphisms.
Require Stdlib.Classes.Morphisms.
Require Corelib.Setoids.Setoid.
Require Stdlib.Setoids.Setoid.
Require Stdlib.Structures.Equalities.
Require Corelib.Relations.Relation_Definitions.
Require Stdlib.Relations.Relation_Definitions.
Require Stdlib.Relations.Relation_Operators.
Require Stdlib.Relations.Operators_Properties.
Require Stdlib.Relations.Relations.
Require Stdlib.Structures.Orders.
Require Corelib.Program.Basics.
Require Stdlib.Program.Basics.
Require Stdlib.Structures.OrdersTac.
Require Stdlib.Structures.OrdersFacts.
Require Stdlib.Structures.GenericMinMax.
Require Corelib.Classes.Morphisms_Prop.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Numbers.NumPrelude.
Require Stdlib.Numbers.NatInt.NZAxioms.
Require Stdlib.Numbers.NatInt.NZBase.
Require Stdlib.Numbers.NatInt.NZAdd.
Require Stdlib.Numbers.NatInt.NZMul.
Require Stdlib.Logic.Decidable.
Require Stdlib.Numbers.NatInt.NZOrder.
Require Stdlib.Numbers.NatInt.NZAddOrder.
Require Stdlib.Numbers.NatInt.NZMulOrder.
Require Stdlib.Numbers.NatInt.NZParity.
Require Stdlib.Numbers.NatInt.NZPow.
Require Stdlib.Numbers.NatInt.NZSqrt.
Require Stdlib.Numbers.NatInt.NZLog.
Require Stdlib.Numbers.NatInt.NZDiv.
Require Stdlib.Numbers.NatInt.NZGcd.
Require Stdlib.Numbers.NatInt.NZBits.
Require Stdlib.Numbers.Natural.Abstract.NAxioms.
Require Stdlib.Numbers.Natural.Abstract.NBase.
Require Stdlib.Numbers.Natural.Abstract.NAdd.
Require Stdlib.Numbers.Natural.Abstract.NOrder.
Require Stdlib.Numbers.Natural.Abstract.NAddOrder.
Require Stdlib.Numbers.Natural.Abstract.NMulOrder.
Require Stdlib.Numbers.Natural.Abstract.NSub.
Require Stdlib.Numbers.Natural.Abstract.NMaxMin.
Require Stdlib.Numbers.Natural.Abstract.NParity.
Require Stdlib.Numbers.Natural.Abstract.NPow.
Require Stdlib.Numbers.Natural.Abstract.NSqrt.
Require Stdlib.Numbers.Natural.Abstract.NLog.
Require Stdlib.Numbers.Natural.Abstract.NDiv.
Require Stdlib.Numbers.Natural.Abstract.NDiv0.
Require Stdlib.Numbers.Natural.Abstract.NGcd.
Require Stdlib.Numbers.Natural.Abstract.NLcm.
Require Stdlib.Numbers.Natural.Abstract.NLcm0.
Require Stdlib.Numbers.Natural.Abstract.NBits.
Require Stdlib.Numbers.Natural.Abstract.NProperties.
Require Stdlib.Arith.PeanoNat.
Require Corelib.BinNums.PosDef.
Require Stdlib.BinNums.PosDef.
Require Stdlib.PArith.BinPosDef.
Require Stdlib.PArith.BinPos.
Require Stdlib.PArith.Pnat.
Require Stdlib.PArith.POrderedType.
Require Stdlib.PArith.PArith.
Require Corelib.BinNums.NatDef.
Require Stdlib.BinNums.NatDef.
Require Stdlib.NArith.BinNatDef.
Require Stdlib.NArith.BinNat.
Require Stdlib.setoid_ring.Ring_theory.
Require Corelib.Lists.ListDef.
Require Stdlib.Lists.ListDef.
Require Stdlib.Lists.List.
Require Stdlib.setoid_ring.BinList.
Require Stdlib.Numbers.Integer.Abstract.ZAxioms.
Require Stdlib.Numbers.Integer.Abstract.ZBase.
Require Stdlib.Numbers.Integer.Abstract.ZAdd.
Require Stdlib.Numbers.Integer.Abstract.ZMul.
Require Stdlib.Numbers.Integer.Abstract.ZLt.
Require Stdlib.Numbers.Integer.Abstract.ZAddOrder.
Require Stdlib.Numbers.Integer.Abstract.ZMulOrder.
Require Stdlib.Numbers.Integer.Abstract.ZMaxMin.
Require Stdlib.Numbers.Integer.Abstract.ZSgnAbs.
Require Stdlib.Numbers.Integer.Abstract.ZParity.
Require Stdlib.Numbers.Integer.Abstract.ZPow.
Require Stdlib.Numbers.Integer.Abstract.ZDivTrunc.
Require Stdlib.Numbers.Integer.Abstract.ZDivFloor.
Require Stdlib.Numbers.Integer.Abstract.ZGcd.
Require Stdlib.Numbers.Integer.Abstract.ZLcm.
Require Stdlib.Numbers.Integer.Abstract.ZBits.
Require Stdlib.Numbers.Integer.Abstract.ZProperties.
Require Corelib.BinNums.IntDef.
Require Stdlib.BinNums.IntDef.
Require Stdlib.ZArith.BinIntDef.
Require Stdlib.ZArith.BinInt.
Require Stdlib.setoid_ring.Ring_polynom.
Require Stdlib.Lists.ListTactics.
Require Stdlib.setoid_ring.InitialRing.
Require Stdlib.setoid_ring.Ring_tac.
Require Stdlib.setoid_ring.Ring_base.
Require Stdlib.setoid_ring.Ring.
Require Stdlib.Arith.Factorial.
Require Stdlib.Arith.Between.
Require Stdlib.Arith.Peano_dec.
Require Stdlib.Arith.Compare_dec.
Require Stdlib.Arith.EqNat.
Require Stdlib.Arith.Wf_nat.
Require Stdlib.Arith.Arith_base.
Require Stdlib.NArith.Nnat.
Require Stdlib.setoid_ring.ArithRing.
Require Stdlib.Arith.Arith.
Require Stdlib.ZArith.Znat.
Require Stdlib.micromega.ZifyClasses.
Require Stdlib.ZArith.Zeven.
Require Stdlib.micromega.ZifyInst.
Require Stdlib.micromega.Zify.
Require Stdlib.omega.PreOmega.
Require Stdlib.micromega.OrderedRing.
Require Stdlib.NArith.Ndiv_def.
Require Stdlib.NArith.Nsqrt_def.
Require Stdlib.NArith.Ngcd_def.
Require Stdlib.NArith.NArith_base.
Require Stdlib.setoid_ring.NArithRing.
Require Stdlib.NArith.NArith.
Require Stdlib.micromega.Env.
Require Stdlib.micromega.EnvRing.
Require Stdlib.micromega.Refl.
Require Stdlib.micromega.Tauto.
Require Stdlib.micromega.RingMicromega.
Require Stdlib.ZArith.Zpow_def.
Require Stdlib.setoid_ring.ZArithRing.
Require Stdlib.micromega.ZCoeff.
Require Stdlib.ZArith.Zcompare.
Require Stdlib.ZArith.Zorder.
Require Stdlib.ZArith.Zmisc.
Require Stdlib.ZArith.Wf_Z.
Require Corelib.Init.Sumbool.
Require Stdlib.Init.Sumbool.
Require Stdlib.ZArith.ZArith_dec.
Require Stdlib.ZArith.Zbool.
Require Stdlib.ZArith.Zabs.
Require Stdlib.ZArith.Zcomplements.
Require Stdlib.ZArith.Zdiv.
Require Stdlib.micromega.VarMap.
Require Stdlib.micromega.ZMicromega.
Require Stdlib.micromega.DeclConstantZ.
Require Stdlib.micromega.Lia.
Require Stdlib.btauto.Algebra.
Require Stdlib.btauto.Reflect.
Require Stdlib.btauto.Btauto.
Require Corelib.ssr.ssreflect.
Require Stdlib.ssr.ssreflect.
Require Corelib.ssr.ssrbool.
Require Stdlib.ssr.ssrbool.
Require MetaRocq.Common.config.
Require Stdlib.Sets.Relations_1.
Require Stdlib.Sorting.Sorted.
Require Stdlib.Sorting.SetoidList.
Require Stdlib.Classes.RelationPairs.
Require Stdlib.MSets.MSetInterface.
Require Stdlib.Structures.EqualitiesFacts.
Require Stdlib.Structures.OrdersLists.
Require Stdlib.MSets.MSetList.
Require Stdlib.ZArith.Int.
Require Stdlib.MSets.MSetGenTree.
Require Corelib.Floats.FloatOps.
Require Corelib.Strings.PrimString.
Require Corelib.Program.Tactics.
Require Stdlib.Program.Tactics.
Require Corelib.extraction.Extraction.
Require Stdlib.Unicode.Utf8_core.
Require Equations.Init.
Require Equations.Signature.
Require Equations.CoreTactics.
Require Equations.Prop.SigmaNotations.
Require Stdlib.extraction.Extraction.
Require Equations.Prop.Logic.
Require Equations.Prop.Classes.
Require Equations.Prop.EqDec.
Require Equations.Prop.DepElim.

Module Export AdmitTactic.
Module Import LocalFalse.
Inductive False : Prop := .
End LocalFalse.
Axiom proof_admitted : False.
Import Coq.Init.Ltac.
Tactic Notation "admit" := abstract case proof_admitted.
End AdmitTactic.

Module Export Stdlib_DOT_MSets_DOT_MSetAVL_WRAPPED.
Module Export MSetAVL.
Import Stdlib.MSets.MSetInterface.
Import Stdlib.MSets.MSetGenTree.
Import Stdlib.ZArith.BinInt.
Import Stdlib.ZArith.Int.

Set Implicit Arguments.
Unset Strict Implicit.

Local Unset Elimination Schemes.



Module Ops (Import I:Int)(X:OrderedType) <: MSetInterface.Ops X.
Local Open Scope Int_scope.
Local Notation int := I.t.





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
Notation "<< l , b , r >>" := (mktriple l b r) (at level 9).

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



Local Hint Immediate MX.eq_sym : core.
Local Hint Unfold In lt_tree gt_tree Ok : core.
Local Hint Constructors InT bst : core.
Local Hint Resolve MX.eq_refl MX.eq_trans MX.lt_trans ok : core.
Local Hint Resolve lt_leaf gt_leaf lt_tree_node gt_tree_node : core.
Local Hint Resolve lt_tree_not_in lt_tree_trans gt_tree_not_in gt_tree_trans : core.
Local Hint Resolve elements_spec2 : core.





Tactic Notation "factornode" ident(s) :=
 try clear s;
 match goal with
   | |- context [Node ?l ?x ?r ?h] =>
       set (s:=Node l x r h) in *; clearbody s; clear l x r h
   | _ : context [Node ?l ?x ?r ?h] |- _ =>
       set (s:=Node l x r h) in *; clearbody s; clear l x r h
 end.



#[local] Ltac caseq :=
match goal with [ |- context [match ?t with _ => _ end] ] =>
  let cmp := fresh in
  let H := fresh in
  remember t as cmp eqn:H; symmetry in H; destruct cmp
end.

Lemma bal_ind  [P : t -> X.t -> t -> tree -> Prop] :
  (forall (l : t) (x : X.t) (r : t),
   let hl := height l in
   let hr := height r in (hr + 2 <? hl) = true -> l = Leaf -> P Leaf x r (assert_false l x r)) ->
  (forall (l : t) (x : X.t) (r : t),
   let hl := height l in
   let hr := height r in
   (hr + 2 <? hl) = true ->
   forall (_x : I.t) (ll : tree) (lx : X.t) (lr : tree),
   l = Node _x ll lx lr ->
   (height lr <=? height ll) = true -> P (Node _x ll lx lr) x r (create ll lx (create lr x r))) ->
  (forall (l : t) (x : X.t) (r : t),
   let hl := height l in
   let hr := height r in
   (hr + 2 <? hl) = true ->
   forall (_x : I.t) (ll : tree) (lx : X.t) (lr : tree),
   l = Node _x ll lx lr ->
   (height lr <=? height ll) = false ->
   lr = Leaf -> P (Node _x ll lx Leaf) x r (assert_false l x r)) ->
  (forall (l : t) (x : X.t) (r : t),
   let hl := height l in
   let hr := height r in
   (hr + 2 <? hl) = true ->
   forall (_x : I.t) (ll : tree) (lx : X.t) (lr : tree),
   l = Node _x ll lx lr ->
   (height lr <=? height ll) = false ->
   forall (_x0 : I.t) (lrl : tree) (lrx : X.t) (lrr : tree),
   lr = Node _x0 lrl lrx lrr ->
   P (Node _x ll lx (Node _x0 lrl lrx lrr)) x r (create (create ll lx lrl) lrx (create lrr x r))) ->
  (forall (l : t) (x : X.t) (r : t),
   let hl := height l in
   let hr := height r in
   (hr + 2 <? hl) = false ->
   (hl + 2 <? hr) = true -> r = Leaf -> P l x Leaf (assert_false l x r)) ->
  (forall (l : t) (x : X.t) (r : t),
   let hl := height l in
   let hr := height r in
   (hr + 2 <? hl) = false ->
   (hl + 2 <? hr) = true ->
   forall (_x : I.t) (rl : tree) (rx : X.t) (rr : tree),
   r = Node _x rl rx rr ->
   (height rl <=? height rr) = true -> P l x (Node _x rl rx rr) (create (create l x rl) rx rr)) ->
  (forall (l : t) (x : X.t) (r : t),
   let hl := height l in
   let hr := height r in
   (hr + 2 <? hl) = false ->
   (hl + 2 <? hr) = true ->
   forall (_x : I.t) (rl : tree) (rx : X.t) (rr : tree),
   r = Node _x rl rx rr ->
   (height rl <=? height rr) = false ->
   rl = Leaf -> P l x (Node _x Leaf rx rr) (assert_false l x r)) ->
  (forall (l : t) (x : X.t) (r : t),
   let hl := height l in
   let hr := height r in
   (hr + 2 <? hl) = false ->
   (hl + 2 <? hr) = true ->
   forall (_x : I.t) (rl : tree) (rx : X.t) (rr : tree),
   r = Node _x rl rx rr ->
   (height rl <=? height rr) = false ->
   forall (_x0 : I.t) (rll : tree) (rlx : X.t) (rlr : tree),
   rl = Node _x0 rll rlx rlr ->
   P l x (Node _x (Node _x0 rll rlx rlr) rx rr) (create (create l x rll) rlx (create rlr rx rr))) ->
  (forall (l : t) (x : X.t) (r : t),
   let hl := height l in
   let hr := height r in
   (hr + 2 <? hl) = false -> (hl + 2 <? hr) = false -> P l x r (create l x r)) ->
  forall (l : t) (x : X.t) (r : t), P l x r (bal l x r).
Admitted.

Lemma remove_min_ind [P : tree -> elt -> t -> t * elt -> Prop] :
  (forall (l : tree) (x : elt) (r : t), l = Leaf -> P Leaf x r (r, x)) ->
  (forall (l : tree) (x : elt) (r : t) (_x : I.t) (ll : tree) (lx : X.t) (lr : tree),
   l = Node _x ll lx lr ->
   P ll lx lr (remove_min ll lx lr) ->
   forall (l' : t) (m : elt),
   remove_min ll lx lr = (l', m) -> P (Node _x ll lx lr) x r (bal l' x r, m)) ->
  forall (l : tree) (x : elt) (r : t), P l x r (remove_min l x r).
Admitted.

Lemma merge_ind [P : tree -> tree -> tree -> Prop] :
  (forall s1 s2 : tree, s1 = Leaf -> P Leaf s2 s2) ->
  (forall (s1 s2 : tree) (_x : I.t) (_x0 : tree) (_x1 : X.t) (_x2 : tree),
   s1 = Node _x _x0 _x1 _x2 -> s2 = Leaf -> P (Node _x _x0 _x1 _x2) Leaf s1) ->
  (forall (s1 s2 : tree) (_x : I.t) (_x0 : tree) (_x1 : X.t) (_x2 : tree),
   s1 = Node _x _x0 _x1 _x2 ->
   forall (_x3 : I.t) (l2 : tree) (x2 : X.t) (r2 : tree),
   s2 = Node _x3 l2 x2 r2 ->
   forall (s2' : t) (m : elt),
   remove_min l2 x2 r2 = (s2', m) -> P (Node _x _x0 _x1 _x2) (Node _x3 l2 x2 r2) (bal s1 m s2')) ->
  forall s1 s2 : tree, P s1 s2 (merge s1 s2).
Admitted.

Lemma concat_ind [P : tree -> tree -> tree -> Prop] :
  (forall s1 s2 : tree, s1 = Leaf -> P Leaf s2 s2) ->
  (forall (s1 s2 : tree) (_x : I.t) (_x0 : tree) (_x1 : X.t) (_x2 : tree),
   s1 = Node _x _x0 _x1 _x2 -> s2 = Leaf -> P (Node _x _x0 _x1 _x2) Leaf s1) ->
  (forall (s1 s2 : tree) (_x : I.t) (_x0 : tree) (_x1 : X.t) (_x2 : tree),
   s1 = Node _x _x0 _x1 _x2 ->
   forall (_x3 : I.t) (l2 : tree) (x2 : X.t) (r2 : tree),
   s2 = Node _x3 l2 x2 r2 ->
   forall (s2' : t) (m : elt),
   remove_min l2 x2 r2 = (s2', m) -> P (Node _x _x0 _x1 _x2) (Node _x3 l2 x2 r2) (join s1 m s2')) ->
  forall s1 s2 : tree, P s1 s2 (concat s1 s2).
Admitted.

Lemma inter_ind [P : tree -> tree -> tree -> Prop] :
  (forall s1 s2 : tree, s1 = Leaf -> P Leaf s2 Leaf) ->
  (forall (s1 s2 : tree) (_x : I.t) (l1 : tree) (x1 : X.t) (r1 : tree),
   s1 = Node _x l1 x1 r1 -> s2 = Leaf -> P (Node _x l1 x1 r1) Leaf Leaf) ->
  (forall (s1 s2 : tree) (_x : I.t) (l1 : tree) (x1 : X.t) (r1 : tree),
   s1 = Node _x l1 x1 r1 ->
   forall (_x0 : I.t) (_x1 : tree) (_x2 : X.t) (_x3 : tree),
   s2 = Node _x0 _x1 _x2 _x3 ->
   forall (l2' : t) (pres : bool) (r2' : t),
   split x1 s2 = << l2', pres, r2' >> ->
   pres = true ->
   P l1 l2' (inter l1 l2') ->
   P r1 r2' (inter r1 r2') ->
   P (Node _x l1 x1 r1) (Node _x0 _x1 _x2 _x3) (join (inter l1 l2') x1 (inter r1 r2'))) ->
  (forall (s1 s2 : tree) (_x : I.t) (l1 : tree) (x1 : X.t) (r1 : tree),
   s1 = Node _x l1 x1 r1 ->
   forall (_x0 : I.t) (_x1 : tree) (_x2 : X.t) (_x3 : tree),
   s2 = Node _x0 _x1 _x2 _x3 ->
   forall (l2' : t) (pres : bool) (r2' : t),
   split x1 s2 = << l2', pres, r2' >> ->
   pres = false ->
   P l1 l2' (inter l1 l2') ->
   P r1 r2' (inter r1 r2') ->
   P (Node _x l1 x1 r1) (Node _x0 _x1 _x2 _x3) (concat (inter l1 l2') (inter r1 r2'))) ->
  forall s1 s2 : tree, P s1 s2 (inter s1 s2).
Admitted.

Lemma diff_ind [P : tree -> tree -> tree -> Prop] :
  (forall s1 s2 : tree, s1 = Leaf -> P Leaf s2 Leaf) ->
  (forall (s1 s2 : tree) (_x : I.t) (l1 : tree) (x1 : X.t) (r1 : tree),
   s1 = Node _x l1 x1 r1 -> s2 = Leaf -> P (Node _x l1 x1 r1) Leaf s1) ->
  (forall (s1 s2 : tree) (_x : I.t) (l1 : tree) (x1 : X.t) (r1 : tree),
   s1 = Node _x l1 x1 r1 ->
   forall (_x0 : I.t) (_x1 : tree) (_x2 : X.t) (_x3 : tree),
   s2 = Node _x0 _x1 _x2 _x3 ->
   forall (l2' : t) (pres : bool) (r2' : t),
   split x1 s2 = << l2', pres, r2' >> ->
   pres = true ->
   P l1 l2' (diff l1 l2') ->
   P r1 r2' (diff r1 r2') ->
   P (Node _x l1 x1 r1) (Node _x0 _x1 _x2 _x3) (concat (diff l1 l2') (diff r1 r2'))) ->
  (forall (s1 s2 : tree) (_x : I.t) (l1 : tree) (x1 : X.t) (r1 : tree),
   s1 = Node _x l1 x1 r1 ->
   forall (_x0 : I.t) (_x1 : tree) (_x2 : X.t) (_x3 : tree),
   s2 = Node _x0 _x1 _x2 _x3 ->
   forall (l2' : t) (pres : bool) (r2' : t),
   split x1 s2 = << l2', pres, r2' >> ->
   pres = false ->
   P l1 l2' (diff l1 l2') ->
   P r1 r2' (diff r1 r2') ->
   P (Node _x l1 x1 r1) (Node _x0 _x1 _x2 _x3) (join (diff l1 l2') x1 (diff r1 r2'))) ->
  forall s1 s2 : tree, P s1 s2 (diff s1 s2).
Admitted.

Lemma union_ind [P : tree -> tree -> tree -> Prop] :
  (forall s1 s2 : tree, s1 = Leaf -> P Leaf s2 s2) ->
  (forall (s1 s2 : tree) (_x : I.t) (l1 : tree) (x1 : X.t) (r1 : tree),
   s1 = Node _x l1 x1 r1 -> s2 = Leaf -> P (Node _x l1 x1 r1) Leaf s1) ->
  (forall (s1 s2 : tree) (_x : I.t) (l1 : tree) (x1 : X.t) (r1 : tree),
   s1 = Node _x l1 x1 r1 ->
   forall (_x0 : I.t) (_x1 : tree) (_x2 : X.t) (_x3 : tree),
   s2 = Node _x0 _x1 _x2 _x3 ->
   forall (l2' : t) (_x4 : bool) (r2' : t),
   split x1 s2 = << l2', _x4, r2' >> ->
   P l1 l2' (union l1 l2') ->
   P r1 r2' (union r1 r2') ->
   P (Node _x l1 x1 r1) (Node _x0 _x1 _x2 _x3) (join (union l1 l2') x1 (union r1 r2'))) ->
  forall s1 s2 : tree, P s1 s2 (union s1 s2).
Admitted.



Declare Scope pair_scope.

Notation "s #1" := (fst s) (at level 9, format "s '#1'") : pair_scope.
Notation "s #2" := (snd s) (at level 9, format "s '#2'") : pair_scope.
Notation "t #l" := (t_left t) (at level 9, format "t '#l'") : pair_scope.
Notation "t #b" := (t_in t) (at level 9, format "t '#b'") : pair_scope.
Notation "t #r" := (t_right t) (at level 9, format "t '#r'") : pair_scope.

Local Open Scope pair_scope.



Lemma singleton_spec : forall x y, InT y (singleton x) <-> X.eq y x.
Admitted.

#[global]
Instance singleton_ok x : Ok (singleton x).
Admitted.



Lemma create_spec :
 forall l x r y,  InT y (create l x r) <-> X.eq y x \/ InT y l \/ InT y r.
Admitted.

#[global]
Instance create_ok l x r `(Ok l, Ok r, lt_tree x l, gt_tree x r) :
 Ok (create l x r).
Admitted.

Lemma bal_spec : forall l x r y,
 InT y (bal l x r) <-> X.eq y x \/ InT y l \/ InT y r.
Admitted.

#[global]
Instance bal_ok l x r `(Ok l, Ok r, lt_tree x l, gt_tree x r) :
 Ok (bal l x r).
Admitted.



Lemma add_spec' : forall s x y,
 InT y (add x s) <-> X.eq y x \/ InT y s.
Admitted.

Lemma add_spec : forall s x y `{Ok s},
 InT y (add x s) <-> X.eq y x \/ InT y s.
Admitted.

#[global]
Instance add_ok s x `(Ok s) : Ok (add x s).
Admitted.

Local Open Scope Int_scope.





Ltac join_tac :=
 let l := fresh "l" in
 intro l; induction l as [| lh ll _ lx lr Hlr];
   [ | intros x r; induction r as [| rh rl Hrl rx rr _]; unfold join;
     [ | destruct ((rh+2) <? lh) eqn:LT;
       [ match goal with |- context b [ bal ?a ?b ?c] =>
           replace (bal a b c)
           with (bal ll lx (join lr x (Node rh rl rx rr))); [ | auto]
         end
       | destruct ((lh+2) <? rh) eqn:LT';
         [ match goal with |- context b [ bal ?a ?b ?c] =>
             replace (bal a b c)
             with (bal (join (Node lh ll lx lr) x rl) rx rr); [ | auto]
           end
         | ] ] ] ]; intros.

Lemma join_spec : forall l x r y,
 InT y (join l x r) <-> X.eq y x \/ InT y l \/ InT y r.
Admitted.

#[global]
Instance join_ok : forall l x r `(Ok l, Ok r, lt_tree x l, gt_tree x r),
 Ok (join l x r).
Admitted.



Lemma remove_min_spec : forall l x r y h,
 InT y (Node h l x r) <->
  X.eq y (remove_min l x r)#2 \/ InT y (remove_min l x r)#1.
Admitted.

#[global]
Instance remove_min_ok l x r : forall h `(Ok (Node h l x r)),
 Ok (remove_min l x r)#1.
Admitted.

Lemma remove_min_gt_tree : forall l x r h `{Ok (Node h l x r)},
 gt_tree (remove_min l x r)#2 (remove_min l x r)#1.
Admitted.
Local Hint Resolve remove_min_gt_tree : core.



Lemma merge_spec : forall s1 s2 y,
 InT y (merge s1 s2) <-> InT y s1 \/ InT y s2.
Admitted.

#[global]
Instance merge_ok s1 s2 : forall `(Ok s1, Ok s2)
 `(forall y1 y2 : elt, InT y1 s1 -> InT y2 s2 -> X.lt y1 y2),
 Ok (merge s1 s2).
Admitted.



Lemma remove_spec : forall s x y `{Ok s},
 (InT y (remove x s) <-> InT y s /\ ~ X.eq y x).
Admitted.

#[global]
Instance remove_ok s x `(Ok s) : Ok (remove x s).
Admitted.



Lemma concat_spec : forall s1 s2 y,
 InT y (concat s1 s2) <-> InT y s1 \/ InT y s2.
Admitted.

#[global]
Instance concat_ok s1 s2 : forall `(Ok s1, Ok s2)
 `(forall y1 y2 : elt, InT y1 s1 -> InT y2 s2 -> X.lt y1 y2),
 Ok (concat s1 s2).
Admitted.



Lemma split_spec1 : forall s x y `{Ok s},
 (InT y (split x s)#l <-> InT y s /\ X.lt y x).
Admitted.

Lemma split_spec2 : forall s x y `{Ok s},
 (InT y (split x s)#r <-> InT y s /\ X.lt x y).
Admitted.

Lemma split_spec3 : forall s x `{Ok s},
 ((split x s)#b = true <-> InT x s).
Admitted.

Lemma split_ok : forall s x `{Ok s}, Ok (split x s)#l /\ Ok (split x s)#r.
Admitted.

#[global]
Instance split_ok1 s x `(Ok s) : Ok (split x s)#l.
Admitted.

#[global]
Instance split_ok2 s x `(Ok s) : Ok (split x s)#r.
Admitted.



Ltac destruct_split := match goal with
 | H : split ?x ?s = << ?u, ?v, ?w >> |- _ =>
   assert ((split x s)#l = u) by (rewrite H; auto);
   assert ((split x s)#b = v) by (rewrite H; auto);
   assert ((split x s)#r = w) by (rewrite H; auto);
   clear H; subst u w
 end.

Lemma inter_spec_ok : forall s1 s2 `{Ok s1, Ok s2},
 Ok (inter s1 s2) /\ (forall y, InT y (inter s1 s2) <-> InT y s1 /\ InT y s2).
Admitted.

Lemma inter_spec : forall s1 s2 y `{Ok s1, Ok s2},
 (InT y (inter s1 s2) <-> InT y s1 /\ InT y s2).
Admitted.

#[global]
Instance inter_ok s1 s2 `(Ok s1, Ok s2) : Ok (inter s1 s2).
Admitted.



Lemma diff_spec_ok : forall s1 s2 `{Ok s1, Ok s2},
 Ok (diff s1 s2) /\ (forall y, InT y (diff s1 s2) <-> InT y s1 /\ ~InT y s2).
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

Lemma filter_weak_spec : forall s x f,
 InT x (filter f s) -> InT x s.
Admitted.

#[global]
Instance filter_ok s f `(H : Ok s) : Ok (filter f s).
Admitted.



Lemma partition_spec1' s f : (partition f s)#1 = filter f s.
Admitted.

Lemma partition_spec2' s f :
 (partition f s)#2 = filter (fun x => negb (f x)) s.
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

End MSetAVL.

End Stdlib_DOT_MSets_DOT_MSetAVL_WRAPPED.
Module Export Stdlib_DOT_MSets_DOT_MSetAVL.
Module Export Stdlib.
Module Export MSets.
Module Export MSetAVL.
Include Stdlib_DOT_MSets_DOT_MSetAVL_WRAPPED.MSetAVL.
End MSetAVL.

End MSets.

End Stdlib.

End Stdlib_DOT_MSets_DOT_MSetAVL.
Register Equations.Init.sigmaI as equations.sigma.intro.

Register Init.Logic.eq as equations.equality.type.
Register Init.Logic.eq_refl as equations.equality.refl.

Register Classes.EqDec as equations.eqdec.class.
Register Classes.dec_eq as equations.eqdec.dec_eq.

Register Init.Logic.False as equations.bottom.type.
Register Init.Logic.False_rect as equations.bottom.case.

Register Init.Logic.True as equations.top.type.

Register Equations.Prop.Classes.NoConfusionPackage as equations.noconfusion.class.
Register Equations.Prop.Classes.apply_noConfusion as equations.depelim.apply_noConfusion.
Register Equations.Prop.DepElim.opaque_ind_pack_eq_inv as equations.depelim.opaque_ind_pack_eq_inv.
Import Equations.CoreTactics.
Import Equations.Prop.DepElim.

Ltac solve_noconf_prf := intros;
  on_last_hyp ltac:(fun id => destruct id) ;
  on_last_hyp ltac:(fun id =>
                      destruct_sigma id;
                      destruct id) ;
  constructor.

Ltac solve_noconf_inv_eq a b :=
  destruct_sigma a; destruct_sigma b;
  destruct a ; depelim b; simpl in * |-;
  on_last_hyp ltac:(fun id => hnf in id; destruct_tele_eq id || destruct id);
  solve [constructor].

Ltac solve_noconf_inv := intros;
  match goal with
    |- ?R ?a ?b => destruct_sigma a; destruct_sigma b;
                   destruct a ; depelim b; simpl in * |-;
                 on_last_hyp ltac:(fun id => hnf in id; destruct_tele_eq id || destruct id);
                 solve [constructor]
  | |- @eq _ (?f ?a ?b _) _ => solve_noconf_inv_eq a b
  end.

Ltac solve_noconf_inv_equiv :=
  intros;

  on_last_hyp ltac:(fun id => destruct id) ;

  on_last_hyp ltac:(fun id => destruct_sigma id; destruct id) ;
  simpl; constructor.

Ltac solve_noconf := simpl; intros;
    match goal with
      [ H : @eq _ _ _ |- @eq _ _ _ ] => try solve_noconf_inv_equiv
    | [ H : @eq _ _ _ |- _ ] => try solve_noconf_prf
    | [ |- @eq _ _ _ ] => try solve_noconf_inv
    end.

Ltac Equations.Init.solve_noconf ::= solve_noconf.
Export Equations.Prop.Classes.
Module Export ReflectEq.

Inductive reflectProp (P : Prop) : bool -> Prop :=
 | reflectP : P -> reflectProp P true
 | reflectF : ~ P -> reflectProp P false.

Class ReflectEq A := {
  eqb : A -> A -> bool ;
  eqb_spec : forall x y : A, reflectProp (x = y) (eqb x y)
}.
Export Stdlib.Sorting.SetoidList.
Import Stdlib.Structures.Orders.
Definition compare_cont (c : comparison) (d : comparison) : comparison.
Admitted.

Module BoolOT <: UsualOrderedType.
  Definition t := bool.
Definition compare (x y : bool) : comparison.
Admitted.

  Definition lt (x y : bool) :=
    if x then False else y = true.

  Definition compare_spec (x y : bool) : CompareSpec (x = y) (lt x y) (lt y x) (compare x y).
Admitted.
Definition eq : t -> t -> Prop.
exact (eq).
Defined.
Definition eq_equiv : Equivalence eq.
exact (_).
Defined.

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
Fixpoint compare (l1 l2 : t) : comparison.
Admitted.
Definition eq : t -> t -> Prop.
exact (eq).
Defined.
Definition eq_equiv : Equivalence eq.
exact (_).
Defined.

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
Definition eqb (l1 l2 : t) : bool.
Admitted.

  Program Definition eqb_dec (x y : t) : { x = y } + { x <> y } :=
    match eqb x y with
    | true => left _
    | false => right _
    end.
Admit Obligations.

  Global Instance eq_dec : EqDec t := { eq_dec := eqb_dec }.

End ListOrderedType.

Module Export String.
  Inductive t : Set :=
  | EmptyString
  | String (_ : Byte.byte) (_ : t).
Fixpoint compare (xs ys : t) : comparison.
Admitted.
Notation string := String.t.

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
Notation "p .1" := (fst p) : pair_scope.
Notation "p .2" := (snd p) : pair_scope.
Open Scope pair_scope.

Notation "x × y" := (prod x y ) (at level 80, right associativity).
Definition BiImpl (A B : Type) : Type := (A -> B) * (B -> A).

Notation "A <-> B" := (BiImpl A B) (at level 95) : type_scope.
Module Export Equations_DOT_Type_DOT_Relation_WRAPPED.
Module Export Relation.

Definition relation (A : Type) := A -> A -> Type.

Section Reflexive_Transitive_Closure.
  Context {A : Type} (R : relation A).

  Inductive clos_refl_trans (x:A) : A -> Type :=
    | rt_step (y:A) : R x y -> clos_refl_trans x y
    | rt_refl : clos_refl_trans x x
    | rt_trans (y z:A) :
          clos_refl_trans x y -> clos_refl_trans y z -> clos_refl_trans x z.

  Inductive clos_refl_trans_1n (x: A) : A -> Type :=
    | rt1n_refl : clos_refl_trans_1n x x
    | rt1n_trans (y z:A) :
         R x y -> clos_refl_trans_1n y z -> clos_refl_trans_1n x z.

End Reflexive_Transitive_Closure.

End Relation.

Section Properties.

  Context{A : Type}.
  Variable R : relation A.

    Lemma clos_rt_rt1n_iff : forall x y,
      clos_refl_trans R x y <-> clos_refl_trans_1n R x y.
Admitted.

End Properties.
Import Stdlib.Classes.CRelationClasses.
Definition on_rel {A B} (R : A -> A -> Prop) (f : B -> A) : B -> B -> Prop.
Admitted.

Notation on_Trel_eq R f g :=
  (fun x y => (R (f x) (f y) * (g x = g y)))%type.

Global Instance clos_rt_trans A R : Transitive (@clos_refl_trans A R).
Admitted.

Global Instance clos_rt_refl A R : Reflexive (@clos_refl_trans A R).
Admitted.
Export Stdlib.ZArith.BinInt.
Export Stdlib.ZArith.Znat.
Coercion is_true : bool >-> Sortclass.

Notation "'eta_compose'" := (fun g f x => g (f x)).

Notation "g ∘ f" := (eta_compose g f) (at level 40, left associativity).

Notation "'∑' x .. y , p" := (sigT (fun x => .. (sigT (fun y => p%type)) ..))
  (at level 200, x binder, right associativity,
   format "'[' '∑'  '/  ' x  ..  y ,  '/  ' p ']'")
  : type_scope.

Notation "( x ; y )" := (@existT _ _ x y).
Notation "x .π1" := (@projT1 _ _ x) (at level 3, format "x '.π1'").
Notation "x .π2" := (@projT2 _ _ x) (at level 3, format "x '.π2'").
Import Stdlib.Sorting.SetoidList.

Export ListNotations.

Notation "#| l |" := (List.length l) (at level 0, l at level 99, format "#| l |").

Fixpoint mapi_rec {A B} (f : nat -> A -> B) (l : list A) (n : nat) : list B :=
  match l with
  | [] => []
  | hd :: tl => f n hd :: mapi_rec f tl (S n)
  end.

Definition mapi {A B} (f : nat -> A -> B) (l : list A) := mapi_rec f l 0.

Section map2.

  Context {A B C} (f : A -> B -> C).
Fixpoint map2 (l : list A) (l' : list B) : list C.
Admitted.

End map2.

Definition option_default {A B} (f : A -> B) (o : option A) (b : B) :=
  match o with Some x => f x | None => b end.

Fixpoint map_option_out {A} (l : list (option A)) : option (list A) :=
  match l with
  | nil => Some nil
  | hd :: tl => match hd, map_option_out tl with
                | Some hd, Some tl => Some (hd :: tl)
                | _, _ => None
                end
  end.

Inductive All {A} (P : A -> Type) : list A -> Type :=
    All_nil : All P []
  | All_cons : forall (x : A) (l : list A),
                  P x -> All P l -> All P (x :: l).

Inductive All2 {A B : Type} (R : A -> B -> Type) : list A -> list B -> Type :=
  All2_nil : All2 R [] []
| All2_cons : forall (x : A) (y : B) (l : list A) (l' : list B),
    R x y -> All2 R l l' -> All2 R (x :: l) (y :: l').

Inductive All2i {A B : Type} (R : nat -> A -> B -> Type) (n : nat)
  : list A -> list B -> Type :=
| All2i_nil : All2i R n [] []
| All2i_cons :
    forall x y l r,
      R n x y ->
      All2i R (S n) l r ->
      All2i R n (x :: l) (y :: r).

Inductive Forall3 {A B C : Type} (R : A -> B -> C -> Type) : list A -> list B -> list C -> Prop :=
  Forall3_nil : Forall3 R [] [] []
| Forall3_cons : forall (x : A) (y : B) (z : C) (l : list A) (l' : list B) (l'' : list C),
    R x y z -> Forall3 R l l' l'' -> Forall3 R (x :: l) (y :: l') (z :: l'').

Section alli.
  Context {A} (p : nat -> A -> bool).
Fixpoint alli (n : nat) (l : list A) : bool.
Admitted.
End alli.

Inductive OnOne2 {A : Type} (P : A -> A -> Type) : list A -> list A -> Type :=
| OnOne2_hd hd hd' tl : P hd hd' -> OnOne2 P (hd :: tl) (hd' :: tl)
| OnOne2_tl hd tl tl' : OnOne2 P tl tl' -> OnOne2 P (hd :: tl) (hd :: tl').

Inductive All2_fold {A} (P : list A -> list A -> A -> A -> Type)
            : list A -> list A -> Type :=
| All2_fold_nil : All2_fold P nil nil
| All2_fold_cons {d d' Γ Γ'} : All2_fold P Γ Γ' -> P Γ Γ' d d' -> All2_fold P (d :: Γ) (d' :: Γ').

Lemma All2_fold_length {A P} {Γ Γ' : list A} :
  All2_fold P Γ Γ' -> #|Γ| = #|Γ'|.
Admitted.
Notation "A * B" := (prod A B) : type_scope2.
Global Open Scope type_scope2.

Definition ident   := string.

Definition dirpath := list ident.

Module IdentOT := StringOT.

Module DirPathOT := ListOrderedType IdentOT.

Inductive modpath :=
| MPfile  (dp : dirpath)
| MPbound (dp : dirpath) (id : ident) (i : nat)
| MPdot   (mp : modpath) (id : ident).

Definition kername := modpath × ident.

Module Export ModPathComp.

  Definition mpbound_compare dp id k dp' id' k' :=
    compare_cont (DirPathOT.compare dp dp')
      (compare_cont (IdentOT.compare id id') (Nat.compare k k')).

  Fixpoint compare mp mp' :=
    match mp, mp' with
    | MPfile dp, MPfile dp' => DirPathOT.compare dp dp'
    | MPbound dp id k, MPbound dp' id' k' =>
      mpbound_compare dp id k dp' id' k'
    | MPdot mp id, MPdot mp' id' =>
      compare_cont (compare mp mp') (IdentOT.compare id id')
    | MPfile _, _ => Gt
    | _, MPfile _ => Lt
    | MPbound _ _ _, _ => Gt
    | _, MPbound _ _ _ => Lt
    end.

End ModPathComp.

  Definition compare kn kn' :=
    match kn, kn' with
    | (mp, id), (mp', id') =>
      compare_cont (ModPathComp.compare mp mp') (IdentOT.compare id id')
    end.

  Definition eqb kn kn' :=
    match compare kn kn' with
    | Eq => true
    | _ => false
    end.

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
Module Export BasicAst.
Import Stdlib.ssr.ssreflect.

Inductive name : Set :=
| nAnon
| nNamed (_ : ident).

Inductive relevance : Set := Relevant | Irrelevant.

Record binder_annot (A : Type) := mkBindAnn { binder_name : A; binder_relevance : relevance }.
Arguments binder_relevance {_}.
Definition eq_binder_annot {A B} (b : binder_annot A) (b' : binder_annot B) : Prop.
Admitted.

Definition aname := binder_annot name.

Record case_info := mk_case_info {
  ci_ind : inductive;
  ci_npar : nat;

  ci_relevance : relevance }.

Inductive recursivity_kind :=
  | Finite
  | CoFinite
  | BiFinite .

Inductive conv_pb :=
  | Conv
  | Cumul.

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

Record judgment_ {universe Term} := Judge {
  j_term : option Term;
  j_typ : Term;
  j_univ : option universe;
  j_rel : option relevance;
}.
Arguments judgment_ : clear implicits.
Arguments Judge {universe Term} _ _ _.

Section Contexts.
  Context {term : Type}.

  Record context_decl := mkdecl {
    decl_name : aname ;
    decl_body : option term ;
    decl_type : term
  }.
End Contexts.

Arguments context_decl : clear implicits.
Notation TypRel typ rel := (Judge None typ None (Some rel)).
Notation TermTypRel tm ty rel := (Judge (Some tm) ty None (Some rel)).
Notation TypUnivRel ty u rel := (Judge None ty (Some u) (Some rel)).

Notation j_vass na ty := (TypRel ty na.(binder_relevance)).
Notation j_vass_s na ty s := (TypUnivRel ty s na.(binder_relevance)).
Notation j_vdef na b ty := (TermTypRel b ty na.(binder_relevance)).
Definition map_decl {term term'} (f : term -> term') (d : context_decl term) : context_decl term'.
Admitted.
Definition test_decl {term} (f : term -> bool) (d : context_decl term) : bool.
Admitted.

Definition snoc {A} (Γ : list A) (d : A) := d :: Γ.

Notation " Γ ,, d " := (snoc Γ d) (at level 20, d at next level).

Definition app_context {A} (Γ Γ': list A) := Γ' ++ Γ.

Notation "Γ ,,, Γ'" := (app_context Γ Γ') (at level 25, Γ' at next level, left associativity).

Section Contexts.
  Context {term term' term'' : Type}.

  Definition fold_context_k (f : nat -> term -> term') Γ :=
    List.rev (mapi (fun k' decl => map_decl (f k') decl) (List.rev Γ)).
Definition forget_types (c : list (BasicAst.context_decl term)) : list aname.
admit.
Defined.

End Contexts.
Module Export Universes.
Import MetaRocq.Common.config.

Implicit Types (cf : checker_flags).

Record valuation :=
  { valuation_mono : string -> positive ;
    valuation_poly : nat -> nat }.

Class Evaluable (A : Type) := val : valuation -> A -> nat.

Module Level.
  Inductive t_ : Set :=
  | lzero
  | level (_ : string)
  | lvar (_ : nat) .

  Definition t := t_.
Global Instance Evaluable : Evaluable t.
Admitted.
Definition compare (l1 l2 : t) : comparison.
Admitted.
Definition eq : t -> t -> Prop.
exact (eq).
Defined.
Definition eq_equiv : Equivalence eq.
Admitted.

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
Definition eq_dec : forall (l1 l2 : t), {l1 = l2}+{l1 <> l2}.
Admitted.

End Level.

Module LevelSet := MSetAVL.Make Level.

Module LevelExpr.
  Definition t := (Level.t * nat)%type.
Definition get_level (e : t) : Level.t.
Admitted.
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

Coercion t_set : nonEmptyLevelExprSet >-> LevelExprSet.t.

Module Export Universe.

  Definition t := nonEmptyLevelExprSet.
Definition make' (l: Level.t) : t.
Admitted.
Global Instance Evaluable : Evaluable Universe.t.
Admitted.
Definition lt : t -> t -> Prop.
Admitted.
End Universe.

Module Export ConstraintType.
  Inductive t_ : Set := Le (z : Z) | Eq.

  Definition t := t_.

  Inductive lt_ : t -> t -> Prop :=
  | LeLe n m : (n < m)%Z -> lt_ (Le n) (Le m)
  | LeEq n : lt_ (Le n) Eq.
  Definition lt := lt_.
End ConstraintType.

Module UnivConstraint.
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
exact (list Level.t).
Defined.
Definition empty : t.
Admitted.
End Instance.

Module Export UContext.
  Definition t := list name × (Instance.t × ConstraintSet.t).
Definition instance : t -> Instance.t.
Admitted.
End UContext.

Module Export AUContext.
  Definition t := list name × ConstraintSet.t.
Definition repr (x : t) : UContext.t.
Admitted.
End AUContext.

Module Export ContextSet.
  Definition t := LevelSet.t × ConstraintSet.t.
End ContextSet.

Module Variance.

  Inductive t :=
  | Irrelevant : t
  | Covariant : t
  | Invariant : t.

End Variance.

Variant opt_variance :=
  AllEqual | AllIrrelevant | Variance of list Variance.t.

Inductive universes_decl : Type :=
| Monomorphic_ctx
| Polymorphic_ctx (cst : AUContext.t).

Inductive satisfies0 (v : valuation) : UnivConstraint.t -> Prop :=
| satisfies0_Lt (l l' : Level.t) (z : Z) : (Z.of_nat (val v l) <= Z.of_nat (val v l') - z)%Z
                        -> satisfies0 v (l, ConstraintType.Le z, l')
| satisfies0_Eq (l l' : Level.t) : val v l = val v l'
                        -> satisfies0 v (l, ConstraintType.Eq, l').

Definition satisfies v : ConstraintSet.t -> Prop :=
  ConstraintSet.For_all (satisfies0 v).

Definition leq0_universe_n n φ (u u' : Universe.t) :=
  forall v, satisfies v φ -> (Z.of_nat (val v u) <= Z.of_nat (val v u') - n)%Z.

Definition leq_universe_n {cf} n φ (u u' : Universe.t) :=
  if check_univs then leq0_universe_n n φ u u' else True.
Definition leq_universe {cf} := leq_universe_n 0.

Definition eq0_universe φ (u u' : Universe.t) :=
  forall v, satisfies v φ -> val v u = val v u'.

Definition eq_universe {cf} φ (u u' : Universe.t) :=
  if check_univs then eq0_universe φ u u' else True.

Definition valid_constraints0 φ ctrs
  := forall v, satisfies v φ -> satisfies v ctrs.

Definition valid_constraints {cf} φ ctrs
  := if check_univs then valid_constraints0 φ ctrs else True.

Definition compare_universe {cf} φ (pb : conv_pb) :=
  match pb with
  | Conv => eq_universe φ
  | Cumul => leq_universe φ
  end.

Module Export Sort.
  Inductive t_ {univ} :=
    sProp | sSProp | sType (_ : univ).
  Arguments t_ : clear implicits.

  Definition t := t_ Universe.t.

  Inductive family : Set :=
  | fSProp
  | fProp
  | fType.

  Definition on_sort {univ} {T} (P: univ -> T) (def: T) (s : t_ univ) :=
    match s with
    | sProp | sSProp => def
    | sType l => P l
    end.
Definition is_sprop {univ} (s : t_ univ) : bool.
Admitted.
Definition is_propositional {univ} (s : t_ univ) : bool.
Admitted.
Definition type0 : t.
Admitted.
Definition super : t -> t.
Admitted.
Definition sort_of_product : t -> t -> t.
Admitted.

  Definition to_family {univ} (s : t_ univ) :=
    match s with
    | sSProp => fSProp
    | sProp => fProp
    | sType _ => fType
    end.

  Inductive lt_ {univ univ_lt} : t_ univ -> t_ univ -> Prop :=
  | ltPropSProp : lt_ sProp sSProp
  | ltPropType s : lt_ sProp (sType s)
  | ltSPropType s : lt_ sSProp (sType s)
  | ltTypeType s1 s2 : univ_lt s1 s2 -> lt_ (sType s1) (sType s2).
  Arguments lt_ {univ} univ_lt.

  Definition lt := lt_ Universe.lt.

  Module OT <: OrderedType.
    Definition t := t.
#[local] Definition eq : t -> t -> Prop.
exact (eq).
Defined.
#[local] Definition eq_equiv : Equivalence eq.
Admitted.
    Definition lt := lt.
    #[local] Instance lt_strorder : StrictOrder lt.
Admitted.

    Definition lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.
Definition compare (x y : t) : comparison.
Admitted.
    Lemma compare_spec x y : CompareSpec (eq x y) (lt x y) (lt y x) (compare x y).
Admitted.
    Definition eq_dec (x y : t) : {x = y} + {x <> y}.
Admitted.
  End OT.
End Sort.
Notation sort := Sort.t.

Section SortCompare.
  Context {cf}.
  Definition leq_sort_n_ {univ} (leq_universe_n : Z -> univ -> univ -> Prop) n s s' : Prop :=
    match s, s' with
    | sProp,   sProp
    | sSProp,  sSProp => (n = 0)%Z
    | sType u, sType u' => leq_universe_n n u u'
    | sProp,   sType u => prop_sub_type
    | _, _ => False
    end.

  Definition leq_sort_n n φ := leq_sort_n_ (fun n => leq_universe_n n φ) n.
  Definition leq_sort := leq_sort_n 0.

  Definition eq_sort_ {univ} (eq_universe : univ -> univ -> Prop) s s' : Prop :=
    match s, s' with
    | sProp,   sProp
    | sSProp,  sSProp => True
    | sType u, sType u' => eq_universe u u'
    | _, _ => False
    end.

  Definition eq_sort φ := eq_sort_ (eq_universe φ).

  Definition compare_sort φ (pb : conv_pb) :=
    match pb with
    | Conv => eq_sort φ
    | Cumul => leq_sort φ
    end.
End SortCompare.

Definition relevance_of_family (s : Sort.family) :=
  match s with
  | Sort.fSProp => Irrelevant
  | _ => Relevant
  end.
Notation relevance_of_sort s := (relevance_of_family (Sort.to_family s)).

Notation isSortRel s rel := (relevance_of_sort s = rel).
Notation isSortRelOpt s relopt :=
  (option_default (fun rel => isSortRel s rel) relopt True).

Inductive allowed_eliminations : Set :=
  | IntoSProp
  | IntoPropSProp
  | IntoSetPropSProp
  | IntoAny.

Definition is_lSet {cf} φ s := eq_sort φ s Sort.type0.

Definition is_allowed_elimination {cf} φ allowed : Sort.t -> Prop :=
  match allowed with
  | IntoSProp => Sort.is_sprop
  | IntoPropSProp => Sort.is_propositional
  | IntoSetPropSProp => fun s => Sort.is_propositional s \/ is_lSet φ s
  | IntoAny => fun s => true
  end.

Class UnivSubst A := subst_instance : Instance.t -> A -> A.

Notation "x @[ u ]" := (subst_instance u x) (at level 3,
  format "x @[ u ]").
#[global] Instance subst_instance_cstrs : UnivSubst ConstraintSet.t.
Admitted.

Definition abstract_instance decl :=
  match decl with
  | Monomorphic_ctx => Instance.empty
  | Polymorphic_ctx auctx => UContext.instance (AUContext.repr auctx)
  end.

End Universes.

#[global] Instance reflect_recursivity_kind : ReflectEq recursivity_kind.
Admitted.
Variant prim_tag :=
  | primInt
  | primFloat
  | primString
  | primArray.
Derive NoConfusion EqDec for prim_tag.
Import Stdlib.ssr.ssrbool.

Module Type Term.

  Parameter Inline term : Type.

  Parameter Inline tRel : nat -> term.
  Parameter Inline tSort : Sort.t -> term.
  Parameter Inline tLambda : aname -> term -> term -> term.
  Parameter Inline tLetIn : aname -> term -> term -> term -> term.

  Parameter Inline lift : nat -> nat -> term -> term.
  Parameter Inline subst : list term -> nat -> term -> term.

  Notation lift0 n := (lift n 0).
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

Module Environment (T : Term).

  Import T.

  Definition judgment := judgment_ Sort.t term.

  Notation context_decl := (context_decl term).

  Definition vass x A : context_decl :=
    {| decl_name := x ; decl_body := None ; decl_type := A |}.

  Definition vdef x t A : context_decl :=
    {| decl_name := x ; decl_body := Some t ; decl_type := A |}.

  Definition context := list context_decl.

  Definition lift_context n k (Γ : context) : context :=
    fold_context_k (fun k' => lift n (k' + k)) Γ.

  Definition subst_context s k (Γ : context) : context :=
    fold_context_k (fun k' => subst s (k' + k)) Γ.

  Definition subst_telescope s k (Γ : context) : context :=
    mapi (fun k' decl => map_decl (subst s (k' + k)) decl) Γ.
Global Instance subst_instance_context : UnivSubst context.
Admitted.
Definition set_binder_name (na : aname) (x : context_decl) : context_decl.
Admitted.
Fixpoint context_assumptions (Γ : context) : nat.
Admitted.
Fixpoint smash_context (Γ Γ' : context) : context.
Admitted.

  Fixpoint extended_subst (Γ : context) (n : nat)
   :=
  match Γ with
  | nil => nil
  | cons d vs =>
    match decl_body d with
    | Some b =>

      let s := extended_subst vs n in

      let b' := lift (context_assumptions vs + n) #|s| b in

      let b' := subst s 0 b' in

      b' :: s
    | None => tRel n :: extended_subst vs (S n)
    end
  end.

  Definition expand_lets_k Γ k t :=
    (subst (extended_subst Γ 0) k (lift (context_assumptions Γ) (k + #|Γ|) t)).

  Definition expand_lets Γ t := expand_lets_k Γ 0 t.

  Definition expand_lets_k_ctx Γ k Δ :=
    (subst_context (extended_subst Γ 0) k (lift_context (context_assumptions Γ) (k + #|Γ|) Δ)).

  Definition expand_lets_ctx Γ Δ := expand_lets_k_ctx Γ 0 Δ.
Definition fix_context (m : mfixpoint term) : context.
Admitted.

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
Fixpoint lookup_global (Σ : global_declarations) (kn : kername) : option global_decl.
Admitted.

  Definition lookup_env (Σ : global_env) (kn : kername) := lookup_global Σ.(declarations) kn.
Definition primitive_constant (Σ : global_env) (p : prim_tag) : option kername.
Admitted.
Definition tImpl (dom codom : term) : term.
Admitted.

  Definition array_uctx := ([nAnon], ConstraintSet.empty).

  Definition primitive_invariants (p : prim_tag) (cdecl : constant_body) :=
    match p with
    | primInt | primFloat | primString =>
     [/\ cdecl.(cst_type) = tSort Sort.type0, cdecl.(cst_body) = None &
          cdecl.(cst_universes) = Monomorphic_ctx]
    | primArray =>
      let s := sType (Universe.make' (Level.lvar 0)) in
      [/\ cdecl.(cst_type) = tImpl (tSort s) (tSort s), cdecl.(cst_body) = None &
        cdecl.(cst_universes) = Polymorphic_ctx array_uctx]
    end.
Definition global_env_ext : Type.
Admitted.
Definition fst_ctx : global_env_ext -> global_env.
Admitted.
  Coercion fst_ctx : global_env_ext >-> global_env.

  Definition mkLambda_or_LetIn d t :=
    match d.(decl_body) with
    | None => tLambda d.(decl_name) d.(decl_type) t
    | Some b => tLetIn d.(decl_name) b d.(decl_type) t
    end.

  Definition it_mkLambda_or_LetIn (l : context) (t : term) :=
    List.fold_left (fun acc d => mkLambda_or_LetIn d acc) l t.
Fixpoint reln (l : list term) (p : nat) (Γ0 : list context_decl) {struct Γ0} : list term.
Admitted.

  Definition to_extended_list_k Γ k := reln [] k Γ.
  Definition to_extended_list Γ := to_extended_list_k Γ 0.

  Inductive All_decls_alpha (P : term -> term -> Type) : context_decl -> context_decl -> Type :=
  | on_vass_alpha na na' t t' :
    eq_binder_annot na na' ->
    P t t' ->
    All_decls_alpha P (vass na t) (vass na' t')

  | on_vdef_alpha na na' b t b' t' :
    eq_binder_annot na na' ->
    P b b' ->
    P t t' ->
    All_decls_alpha P (vdef na b t) (vdef na' b' t').

End Environment.

Module Type EnvironmentSig (T : Term).
 Include Environment T.
End EnvironmentSig.

Module Type EnvironmentDecide (T : Term) (Import E : EnvironmentSig T).
End EnvironmentDecide.

Module EnvironmentDecideReflectInstances (T : Term) (Import E : EnvironmentSig T) (Import EDec : EnvironmentDecide T E).
End EnvironmentDecideReflectInstances.

Module Type TermUtils (T: Term) (E: EnvironmentSig T).

End TermUtils.
Module Export EnvironmentTyping.
Import MetaRocq.Common.config.

Module Lookup (T : Term) (E : EnvironmentSig T).
Import E.

  Definition declared_constant (Σ : global_env) id decl := In (id,ConstantDecl decl) (declarations Σ).

  Definition declared_minductive Σ mind decl := In (mind,InductiveDecl decl) (declarations Σ).

  Definition declared_inductive Σ ind mdecl decl :=
    declared_minductive Σ (inductive_mind ind) mdecl /\
    List.nth_error mdecl.(ind_bodies) (inductive_ind ind) = Some decl.

  Definition declared_constructor Σ cstr mdecl idecl cdecl :=
    declared_inductive Σ (fst cstr) mdecl idecl /\
    List.nth_error idecl.(ind_ctors) (snd cstr) = Some cdecl.

  Definition declared_projection Σ (proj : projection) mdecl idecl cdecl pdecl
  : Prop :=
    declared_constructor Σ (proj.(proj_ind), 0) mdecl idecl cdecl /\
    List.nth_error idecl.(ind_projs) proj.(proj_arg) = Some pdecl /\
    mdecl.(ind_npars) = proj.(proj_npars).

  Definition lookup_minductive_gen (lookup : kername -> option global_decl) mind :=
    match lookup mind with
    | Some (InductiveDecl decl) => Some decl
    | _ => None
    end.

  Definition lookup_inductive_gen lookup ind :=
    match lookup_minductive_gen lookup (inductive_mind ind) with
    | Some mdecl =>
      match nth_error mdecl.(ind_bodies) (inductive_ind ind) with
      | Some idecl => Some (mdecl, idecl)
      | None => None
      end
    | None => None
    end.

  Definition lookup_constructor_gen lookup ind k :=
    match lookup_inductive_gen lookup ind with
    | Some (mdecl, idecl) =>
      match nth_error idecl.(ind_ctors) k with
      | Some cdecl => Some (mdecl, idecl, cdecl)
      | None => None
      end
    | _ => None
    end.
Definition global_ext_levels (Σ : global_env_ext) : LevelSet.t.
Admitted.
Definition global_ext_constraints (Σ : global_env_ext) : ConstraintSet.t.
Admitted.

  Coercion global_ext_constraints : global_env_ext >-> ConstraintSet.t.

  Definition consistent_instance `{checker_flags} (lvs : LevelSet.t) (φ : ConstraintSet.t) uctx (u : Instance.t) :=
    match uctx with
    | Monomorphic_ctx => List.length u = 0
    | Polymorphic_ctx c =>

      forallb (fun l => LevelSet.mem l lvs) u /\
      List.length u = List.length c.1 /\
      valid_constraints φ (subst_instance_cstrs u c.2)
    end.

  Definition consistent_instance_ext `{checker_flags} Σ :=
    consistent_instance (global_ext_levels Σ) (global_ext_constraints Σ).

  Definition wf_universe Σ (u : Universe.t) : Prop :=
    forall l, LevelExprSet.In l u -> LevelSet.In (LevelExpr.get_level l) (global_ext_levels Σ).

  Definition wf_sort Σ (s : sort) : Prop :=
    Sort.on_sort (wf_universe Σ) True s.

End Lookup.

Module Type LookupSig (T : Term) (E : EnvironmentSig T).
End LookupSig.

Module EnvTyping (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E).
Import T.
Import E.

  Definition on_def_type (P : context -> judgment -> Type) Γ d :=
    P Γ (TypRel d.(dtype) d.(dname).(binder_relevance)).

  Definition on_def_body (P : context -> judgment -> Type) types Γ d :=
    P (Γ ,,, types) (TermTypRel d.(dbody) (lift0 #|types| d.(dtype)) d.(dname).(binder_relevance)).

  Definition lift_sorting checking sorting : judgment -> Type :=
    fun j => option_default (fun tm => checking tm (j_typ j)) (j_term j) (unit : Type) ×
                                ∑ s, sorting (j_typ j) s ×
                                  option_default (fun u => u = s) (j_univ j) True /\
                                  isSortRelOpt s (j_rel j).

  Notation typing_sort typing := (fun T s => typing T (tSort s)).

  Definition lift_typing0 typing := lift_sorting typing (typing_sort typing).
  Notation lift_typing1 typing := (fun Γ => lift_typing0 (typing Γ)).
  Notation lift_typing typing := (fun Σ Γ => lift_typing0 (typing Σ Γ)).

  Section TypeLocal.
    Context (typing : forall (Γ : context), judgment -> Type).

    Inductive All_local_env : context -> Type :=
    | localenv_nil :
        All_local_env []

    | localenv_cons_abs Γ na t :
        All_local_env Γ ->
        typing Γ (j_vass na t) ->
        All_local_env (Γ ,, vass na t)

    | localenv_cons_def Γ na b t :
        All_local_env Γ ->
        typing Γ (j_vdef na b t) ->
        All_local_env (Γ ,, vdef na b t).
  End TypeLocal.

  Section TypeCtxInst.
    Context (typing : forall (Γ : context), term -> term -> Type).

    Inductive ctx_inst (Γ : context) : list term -> context -> Type :=
    | ctx_inst_nil : ctx_inst Γ [] []
    | ctx_inst_ass na t i inst Δ :
        typing Γ i t ->
        ctx_inst Γ inst (subst_telescope [i] 0 Δ) ->
        ctx_inst Γ (i :: inst) (vass na t :: Δ)
    | ctx_inst_def na b t inst Δ :
        ctx_inst Γ inst (subst_telescope [b] 0 Δ) ->
        ctx_inst Γ inst (vdef na b t :: Δ).
  End TypeCtxInst.

End EnvTyping.

Module Type EnvTypingSig (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E).
End EnvTypingSig.

Module Conversion (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E) (ET : EnvTypingSig T E TU).
End Conversion.

Module Type ConversionSig (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E) (ET : EnvTypingSig T E TU).
End ConversionSig.

Module GlobalMaps (T: Term) (E: EnvironmentSig T) (TU : TermUtils T E) (ET: EnvTypingSig T E TU) (C: ConversionSig T E TU ET) (L: LookupSig T E).
Import T.
Import E.

  Section GlobalMaps.
    Context (Pcmp: global_env_ext -> context -> conv_pb -> term -> term -> Type).
    Context (P : global_env_ext -> context -> judgment -> Type).
Definition on_global_env (g : global_env) : Type.
Admitted.

  End GlobalMaps.

End GlobalMaps.

Module Type GlobalMapsSig (T: Term) (E: EnvironmentSig T) (TU : TermUtils T E) (ET: EnvTypingSig T E TU) (C: ConversionSig T E TU ET) (L: LookupSig T E).
End GlobalMapsSig.

Module Type ConversionParSig (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E) (ET : EnvTypingSig T E TU).

End ConversionParSig.
Module Export PCUICPrimitive.

Record array_model {term : Type} :=
  { array_level : Level.t;
    array_type : term;
    array_default : term;
    array_value : list term }.

Arguments array_model : clear implicits.

Inductive prim_model (term : Type) : prim_tag -> Type :=
| primIntModel (i : PrimInt63.int) : prim_model term primInt
| primFloatModel (f : PrimFloat.float) : prim_model term primFloat
| primStringModel (s : PrimString.string) : prim_model term primString
| primArrayModel (a : array_model term) : prim_model term primArray.

Arguments primIntModel {term}.
Arguments primFloatModel {term}.
Arguments primStringModel {term}.
Arguments primArrayModel {term}.

Definition prim_val term := ∑ t : prim_tag, prim_model term t.
Definition prim_val_tag {term} (s : prim_val term) := s.π1.

Inductive onPrims {term} (eq_term : term -> term -> Type) Re : prim_val term -> prim_val term -> Type :=
  | onPrimsInt i : onPrims eq_term Re (primInt; primIntModel i) (primInt; primIntModel i)
  | onPrimsFloat f : onPrims eq_term Re (primFloat; primFloatModel f) (primFloat; primFloatModel f)
  | onPrimsString s : onPrims eq_term Re (primString; primStringModel s) (primString; primStringModel s)
  | onPrimsArray a a' :
    Re (Universe.make' a.(array_level)) (Universe.make' a'.(array_level)) ->
    eq_term a.(array_default) a'.(array_default) ->
    eq_term a.(array_type) a'.(array_type) ->
    All2 eq_term a.(array_value) a'.(array_value) ->
    onPrims eq_term Re (primArray; primArrayModel a) (primArray; primArrayModel a').
Definition mapu_array_model {term term'} (fl : Level.t -> Level.t) (f : term -> term')
  (ar : array_model term) : array_model term'.
admit.
Defined.

Equations mapu_prim {term term'} (f : Level.t -> Level.t) (g : term -> term')
  (p : PCUICPrimitive.prim_val term) : PCUICPrimitive.prim_val term' :=
| _, _, (primInt; primIntModel i) => (primInt; primIntModel i)
| _, _, (primFloat; primFloatModel fl) => (primFloat; primFloatModel fl)
| _, _, (primString; primStringModel s) => (primString; primStringModel s)
| f, g, (primArray; primArrayModel ar) =>
  (primArray; primArrayModel (mapu_array_model f g ar)).
Notation map_prim := (mapu_prim id).

Record predicate {term} := mk_predicate {
  pparams : list term;
  puinst : Instance.t;
  pcontext : list (context_decl term);

  preturn : term;  }.
Arguments predicate : clear implicits.

Section map_predicate_k.
  Context {term : Type}.
  Context (uf : Instance.t -> Instance.t).
  Context (f : nat -> term -> term).

  Definition map_predicate_k k (p : predicate term) :=
    {| pparams := map (f k) p.(pparams);
        puinst := uf p.(puinst);
        pcontext := p.(pcontext);
        preturn := f (#|p.(pcontext)| + k) p.(preturn) |}.

End map_predicate_k.

Section Branch.
  Context {term : Type}.

  Record branch := mk_branch {
    bcontext : list (context_decl term);

    bbody : term;  }.

End Branch.
Arguments branch : clear implicits.

Section map_branch_k.
  Context {term term' : Type}.
  Context (f : nat -> term -> term').
  Context (g : list (BasicAst.context_decl term) -> list (BasicAst.context_decl term')).
  Definition map_branch_k k (b : branch term) :=
  {| bcontext := g b.(bcontext);
     bbody := f (#|b.(bcontext)| + k) b.(bbody) |}.
End map_branch_k.

Notation map_branches_k f h k brs :=
  (List.map (map_branch_k f h k) brs).

Inductive term :=
| tRel (n : nat)
| tVar (i : ident)
| tEvar (n : nat) (l : list term)
| tSort (u : sort)
| tProd (na : aname) (A B : term)
| tLambda (na : aname) (A t : term)
| tLetIn (na : aname) (b B t : term)
| tApp (u v : term)
| tConst (k : kername) (ui : Instance.t)
| tInd (ind : inductive) (ui : Instance.t)
| tConstruct (ind : inductive) (n : nat) (ui : Instance.t)
| tCase (indn : case_info) (p : predicate term) (c : term) (brs : list (branch term))
| tProj (p : projection) (c : term)
| tFix (mfix : mfixpoint term) (idx : nat)
| tCoFix (mfix : mfixpoint term) (idx : nat)
| tPrim (prim : prim_val term).

Fixpoint mkApps t us :=
  match us with
  | nil => t
  | u :: us => mkApps (tApp t u) us
  end.

Definition isLambda t :=
  match t with
  | tLambda _ _ _ => true
  | _ => false
  end.

Fixpoint lift n k t : term :=
  match t with
  | tRel i => tRel (if Nat.leb k i then (n + i) else i)
  | tEvar ev args => tEvar ev (List.map (lift n k) args)
  | tLambda na T M => tLambda na (lift n k T) (lift n (S k) M)
  | tApp u v => tApp (lift n k u) (lift n k v)
  | tProd na A B => tProd na (lift n k A) (lift n (S k) B)
  | tLetIn na b t b' => tLetIn na (lift n k b) (lift n k t) (lift n (S k) b')
  | tCase ind p c brs =>
    let p' := map_predicate_k id (lift n) k p in
    let brs' := map_branches_k (lift n) id k brs in
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
  | tPrim p => tPrim (map_prim (lift n k) p)
  | x => x
  end.

Notation lift0 n := (lift n 0).

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
  | tApp u v => tApp (subst s k u) (subst s k v)
  | tProd na A B => tProd na (subst s k A) (subst s (S k) B)
  | tLetIn na b ty b' => tLetIn na (subst s k b) (subst s k ty) (subst s (S k) b')
  | tCase ind p c brs =>
    let p' := map_predicate_k id (subst s) k p in
    let brs' := map_branches_k (subst s) id k brs in
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
  | tPrim p => tPrim (map_prim (subst s k) p)
  | x => x
  end.

Notation subst0 t := (subst t 0).
Definition subst1 t k u := subst [t] k u.
Notation "M { j := N }" := (subst1 N j M) (at level 10, right associativity).
#[global]
Instance subst_instance_constr : UnivSubst term.
Admitted.

Module PCUICTerm <: Term.

  Definition term := term.

  Definition tRel := tRel.
  Definition tSort := tSort.
  Definition tLambda := tLambda.
  Definition tLetIn := tLetIn.

  Definition lift := lift.
  Definition subst := subst.
End PCUICTerm.

Module PCUICEnvironment := Environment PCUICTerm.
Export PCUICEnvironment.

Fixpoint destArity Γ (t : term) :=
  match t with
  | tProd na t b => destArity (Γ ,, vass na t) b
  | tLetIn na b b_ty b' => destArity (Γ ,, vdef na b b_ty) b'
  | tSort s => Some (Γ, s)
  | _ => None
  end.

Definition inds ind u (l : list one_inductive_body) :=
  let fix aux n :=
      match n with
      | 0 => []
      | S n => tInd (mkInd ind n) u :: aux n
      end
  in aux (List.length l).

Module PCUICTermUtils <: TermUtils PCUICTerm PCUICEnvironment.

End PCUICTermUtils.

Module PCUICEnvTyping := EnvironmentTyping.EnvTyping PCUICTerm PCUICEnvironment PCUICTermUtils.

Module PCUICConversion := EnvironmentTyping.Conversion PCUICTerm PCUICEnvironment PCUICTermUtils PCUICEnvTyping.

Module PCUICLookup := EnvironmentTyping.Lookup PCUICTerm PCUICEnvironment.
Include PCUICLookup.

Module PCUICGlobalMaps := EnvironmentTyping.GlobalMaps
  PCUICTerm
  PCUICEnvironment
  PCUICTermUtils
  PCUICEnvTyping
  PCUICConversion
  PCUICLookup
.
Include PCUICGlobalMaps.

Fixpoint decompose_app_rec (t : term) l :=
  match t with
  | tApp f a => decompose_app_rec f (a :: l)
  | _ => (t, l)
  end.

Definition decompose_app t := decompose_app_rec t [].

Definition isConstruct_app t :=
  match fst (decompose_app t) with
  | tConstruct _ _ _ => true
  | _ => false
  end.
Fixpoint decompose_prod_assum (Γ : context) (t : term) : context * term.
Admitted.

Coercion ci_ind : case_info >-> inductive.

Definition ind_predicate_context ind mdecl idecl : context :=
  let ictx := (expand_lets_ctx mdecl.(ind_params) idecl.(ind_indices)) in
  let indty := mkApps (tInd ind (abstract_instance mdecl.(ind_universes)))
    (to_extended_list (smash_context [] mdecl.(ind_params) ,,, ictx)) in
  let inddecl :=
    {| decl_name :=
      {| binder_name := nNamed (ind_name idecl); binder_relevance := idecl.(ind_relevance) |};
       decl_body := None;
       decl_type := indty |}
  in (inddecl :: ictx).

Definition inst_case_context params puinst (pctx : context) :=
  subst_context (List.rev params) 0 (subst_instance puinst pctx).

Definition inst_case_predicate_context (p : predicate term) :=
  inst_case_context p.(pparams) p.(puinst) p.(pcontext).

Definition inst_case_branch_context (p : predicate term) (br : branch term) :=
  inst_case_context p.(pparams) p.(puinst) br.(bcontext).

Definition iota_red npar p args br :=
  subst (List.rev (List.skipn npar args)) 0
    (expand_lets (inst_case_branch_context p br) (bbody br)).

Definition pre_case_predicate_context_gen ind mdecl idecl params puinst : context :=
  inst_case_context params puinst (ind_predicate_context ind mdecl idecl).

Definition case_predicate_context_gen ind mdecl idecl params puinst pctx :=
  map2 set_binder_name pctx (pre_case_predicate_context_gen ind mdecl idecl params puinst).

Definition case_predicate_context ind mdecl idecl p : context :=
  case_predicate_context_gen ind mdecl idecl p.(pparams) p.(puinst) (forget_types p.(pcontext)).

Definition cstr_branch_context ind mdecl cdecl : context :=
  expand_lets_ctx mdecl.(ind_params)
    (subst_context (inds (inductive_mind ind) (abstract_instance mdecl.(ind_universes))
       mdecl.(ind_bodies)) #|mdecl.(ind_params)|
      cdecl.(cstr_args)).

Definition pre_case_branch_context_gen ind mdecl cdecl params puinst : context :=
  inst_case_context params puinst (cstr_branch_context ind mdecl cdecl).

Definition case_branch_context_gen ind mdecl params puinst pctx cdecl :=
  map2 set_binder_name pctx (pre_case_branch_context_gen ind mdecl cdecl params puinst).

Definition case_branch_type_gen ind mdecl (idecl : one_inductive_body) params puinst bctx ptm i cdecl : context * term :=
  let cstr := tConstruct ind i puinst in
  let args := to_extended_list cdecl.(cstr_args) in
  let cstrapp := mkApps cstr (map (lift0 #|cdecl.(cstr_args)|) params ++ args) in
  let brctx := case_branch_context_gen ind mdecl params puinst bctx cdecl in
  let upars := subst_instance puinst mdecl.(ind_params) in
  let indices :=
    (map (subst (List.rev params) #|cdecl.(cstr_args)|)
      (map (expand_lets_k upars #|cdecl.(cstr_args)|)
        (map (subst (inds (inductive_mind ind) puinst mdecl.(ind_bodies))
                    (#|mdecl.(ind_params)| + #|cdecl.(cstr_args)|))
          (map (subst_instance puinst) cdecl.(cstr_indices))))) in
  let ty := mkApps (lift0 #|cdecl.(cstr_args)| ptm) (indices ++ [cstrapp]) in
  (brctx, ty).

Definition case_branch_type ind mdecl idecl p (b : branch term) ptm i cdecl : context * term :=
  case_branch_type_gen ind mdecl idecl p.(pparams) p.(puinst) (forget_types b.(bcontext)) ptm i cdecl.

Definition idecl_binder idecl :=
  {| decl_name :=
    {| binder_name := nNamed idecl.(ind_name);
        binder_relevance := idecl.(ind_relevance) |};
     decl_body := None;
     decl_type := idecl.(ind_type) |}.

Definition wf_predicate_gen mdecl idecl (pparams : list term) (pcontext : list aname) : Prop :=
  let decl := idecl_binder idecl in
  (#|pparams| = mdecl.(ind_npars)) /\
  (Forall2 (fun na decl => eq_binder_annot na decl.(decl_name))
    pcontext (decl :: idecl.(ind_indices))).

Definition wf_predicate mdecl idecl (p : predicate term) : Prop :=
  wf_predicate_gen mdecl idecl p.(pparams) (forget_types p.(pcontext)).

Definition wf_branch_gen cdecl (bctx : list aname) : Prop :=
  (Forall2 (fun na decl => eq_binder_annot na decl.(decl_name))
    bctx cdecl.(cstr_args)).

Definition wf_branch cdecl (b : branch term) : Prop :=
  wf_branch_gen cdecl (forget_types b.(bcontext)).

Definition wf_branches idecl (brs : list (branch term)) : Prop :=
  Forall2 wf_branch idecl.(ind_ctors) brs.

Definition fix_subst (l : mfixpoint term) :=
  let fix aux n :=
      match n with
      | 0 => []
      | S n => tFix l n :: aux n
      end
  in aux (List.length l).

Definition unfold_fix (mfix : mfixpoint term) (idx : nat) :=
  match List.nth_error mfix idx with
  | Some d => Some (d.(rarg), subst0 (fix_subst mfix) d.(dbody))
  | None => None
  end.

Definition cofix_subst (l : mfixpoint term) :=
  let fix aux n :=
      match n with
      | 0 => []
      | S n => tCoFix l n :: aux n
      end
  in aux (List.length l).

Definition unfold_cofix (mfix : mfixpoint term) (idx : nat) :=
  match List.nth_error mfix idx with
  | Some d => Some (d.(rarg), subst0 (cofix_subst mfix) d.(dbody))
  | None => None
  end.

Definition is_constructor n ts :=
  match List.nth_error ts n with
  | Some a => isConstruct_app a
  | None => false
  end.
Definition cmp_universe_instance (cmp_univ : Universe.t -> Universe.t -> Prop) : Instance.t -> Instance.t -> Prop.
Admitted.

Definition cmp_universe_variance (cmp_univ : conv_pb -> Universe.t -> Universe.t -> Prop) pb v u u' :=
  match v with
  | Variance.Irrelevant => True
  | Variance.Covariant => on_rel (cmp_univ pb) Universe.make' u u'
  | Variance.Invariant => on_rel (cmp_univ Conv) Universe.make' u u'
  end.

Definition cmp_universe_instance_variance cmp_univ pb v u u' :=
  Forall3 (cmp_universe_variance cmp_univ pb) v u u'.

Definition global_variance_gen lookup gr napp :=
  match gr with
  | IndRef ind =>
    match lookup_inductive_gen lookup ind with
    | Some (mdecl, idecl) =>
      match destArity [] idecl.(ind_type) with
      | Some (ctx, _) => if (context_assumptions ctx) <=? napp then
          match mdecl.(ind_variance) with
          | Some var => Variance var
          | None => AllEqual
          end
        else AllEqual
      | None => AllEqual
      end
    | None => AllEqual
    end
  | ConstructRef ind k =>
    match lookup_constructor_gen lookup ind k with
    | Some (mdecl, idecl, cdecl) =>
      if (cdecl.(cstr_arity) + mdecl.(ind_npars))%nat <=? napp then

        AllIrrelevant
      else AllEqual
    | _ => AllEqual
    end
  | _ => AllEqual
  end.

Definition cmp_opt_variance cmp_univ pb v :=
  match v with
  | AllEqual => cmp_universe_instance (cmp_univ Conv)
  | AllIrrelevant => fun l l' => #|l| = #|l'|
  | Variance v => fun u u' => cmp_universe_instance (cmp_univ Conv) u u' \/ cmp_universe_instance_variance cmp_univ pb v u u'
  end.

Definition cmp_global_instance_gen Σ cmp_universe pb gr napp :=
  cmp_opt_variance cmp_universe pb (global_variance_gen Σ gr napp).

Notation cmp_global_instance Σ := (cmp_global_instance_gen (lookup_env Σ)).

Inductive eq_decl_upto_names : context_decl -> context_decl -> Type :=
  | compare_vass {na na' T} :
    eq_binder_annot na na' -> eq_decl_upto_names (vass na T) (vass na' T)
  | compare_vdef {na na' b T} :
    eq_binder_annot na na' -> eq_decl_upto_names (vdef na b T) (vdef na' b T).

Notation eq_context_upto_names := (All2 eq_decl_upto_names).

Definition shiftnP k p i :=
  (i <? k) || p (i - k).
Fixpoint on_free_vars (p : nat -> bool) (t : term) : bool.
Admitted.

Definition on_free_vars_decl P d :=
  test_decl (on_free_vars P) d.

Definition on_free_vars_ctx P ctx :=
  alli (fun k => (on_free_vars_decl (shiftnP k P))) 0 (List.rev ctx).

Notation is_open_term Γ := (on_free_vars (shiftnP #|Γ| xpred0)).
Notation is_closed_context := (on_free_vars_ctx xpred0).
Definition set_preturn (p : predicate term) (pret' : term) : predicate term.
Admitted.
Definition set_pparams (p : predicate term) (pars' : list term) : predicate term.
Admitted.
Definition on_one_decl (P : term -> term -> Type)
  (d : context_decl) (d' : context_decl) : Type.
Admitted.

Section OnOne_local_2.
  Context (P : forall (Γ : context), context_decl -> context_decl -> Type).

  Inductive OnOne2_local_env : context -> context -> Type :=
  | onone2_localenv_cons_abs Γ na na' t t' :
      P Γ (vass na t) (vass na' t') ->
      OnOne2_local_env (Γ ,, vass na t) (Γ ,, vass na' t')
  | onone2_localenv_def Γ na na' b b' t t' :
      P Γ (vdef na b t) (vdef na' b' t') ->
      OnOne2_local_env (Γ ,, vdef na b t) (Γ ,, vdef na' b' t')
  | onone2_localenv_cons_tl Γ Γ' d :
      OnOne2_local_env Γ Γ' ->
      OnOne2_local_env (Γ ,, d) (Γ' ,, d).
End OnOne_local_2.
Arguments exist {_ _} _ _.
Import Equations_DOT_Type_DOT_Relation_WRAPPED.Relation.

Reserved Notation " Σ ;;; Γ |- t ⇝ u " (at level 50, Γ, t, u at next level).

Definition set_array_default (ar : array_model term) (v : term) :=
  {| array_level := ar.(array_level);
     array_default := v;
     array_type := ar.(array_type);
     array_value := ar.(array_value) |}.

Definition set_array_type (ar : array_model term) (v : term) :=
  {| array_level := ar.(array_level);
     array_default := ar.(array_default);
     array_type := v;
     array_value := ar.(array_value) |}.

Definition set_array_value (ar : array_model term) (v : list term) :=
  {| array_level := ar.(array_level);
     array_default := ar.(array_default);
     array_type := ar.(array_type);
     array_value := v |}.

Inductive red1 (Σ : global_env) (Γ : context) : term -> term -> Type :=

| red_beta na t b a :
  Σ ;;; Γ |- tApp (tLambda na t b) a ⇝ b {0 := a}

| red_zeta na b t b' :
  Σ ;;; Γ |- tLetIn na b t b' ⇝ b' {0 := b}

| red_rel i body :
    option_map decl_body (nth_error Γ i) = Some (Some body) ->
    Σ ;;; Γ |- tRel i ⇝ lift0 (S i) body

| red_iota ci c u args p brs br :
    nth_error brs c = Some br ->
    #|args| = (ci.(ci_npar) + context_assumptions br.(bcontext))%nat ->
    Σ ;;; Γ |- tCase ci p (mkApps (tConstruct ci.(ci_ind) c u) args) brs
        ⇝ iota_red ci.(ci_npar) p args br

| red_fix mfix idx args narg fn :
    unfold_fix mfix idx = Some (narg, fn) ->
    is_constructor narg args = true ->
    Σ ;;; Γ |- mkApps (tFix mfix idx) args ⇝ mkApps fn args

| red_cofix_case ip p mfix idx args narg fn brs :
    unfold_cofix mfix idx = Some (narg, fn) ->
    Σ ;;; Γ |- tCase ip p (mkApps (tCoFix mfix idx) args) brs ⇝
         tCase ip p (mkApps fn args) brs

| red_cofix_proj p mfix idx args narg fn :
    unfold_cofix mfix idx = Some (narg, fn) ->
    Σ ;;; Γ |- tProj p (mkApps (tCoFix mfix idx) args) ⇝ tProj p (mkApps fn args)

| red_delta c decl body (isdecl : declared_constant Σ c decl) u :
    decl.(cst_body) = Some body ->
    Σ ;;; Γ |- tConst c u ⇝ subst_instance u body

| red_proj p args u arg:
    nth_error args (p.(proj_npars) + p.(proj_arg)) = Some arg ->
    Σ ;;; Γ |- tProj p (mkApps (tConstruct p.(proj_ind) 0 u) args) ⇝ arg

| abs_red_l na M M' N : Σ ;;; Γ |- M ⇝ M' -> Σ ;;; Γ |- tLambda na M N ⇝ tLambda na M' N
| abs_red_r na M M' N : Σ ;;; Γ ,, vass na N |- M ⇝ M' -> Σ ;;; Γ |- tLambda na N M ⇝ tLambda na N M'

| letin_red_def na b t b' r : Σ ;;; Γ |- b ⇝ r -> Σ ;;; Γ |- tLetIn na b t b' ⇝ tLetIn na r t b'
| letin_red_ty na b t b' r : Σ ;;; Γ |- t ⇝ r -> Σ ;;; Γ |- tLetIn na b t b' ⇝ tLetIn na b r b'
| letin_red_body na b t b' r : Σ ;;; Γ ,, vdef na b t |- b' ⇝ r -> Σ ;;; Γ |- tLetIn na b t b' ⇝ tLetIn na b t r

| case_red_param ci p params' c brs :
    OnOne2 (fun t u => Σ ;;; Γ |- t ⇝ u) p.(pparams) params' ->
    Σ ;;; Γ |- tCase ci p c brs ⇝ tCase ci (set_pparams p params') c brs

| case_red_return ci p preturn' c brs :
  Σ ;;; Γ ,,, inst_case_predicate_context p |- p.(preturn) ⇝ preturn' ->
  Σ ;;; Γ |- tCase ci p c brs ⇝ tCase ci (set_preturn p preturn') c brs

| case_red_discr ci p c c' brs :
  Σ ;;; Γ |- c ⇝ c' -> Σ ;;; Γ |- tCase ci p c brs ⇝ tCase ci p c' brs

| case_red_brs ci p c brs brs' :
    OnOne2 (fun br br' =>
      on_Trel_eq (fun t u => Σ ;;; Γ ,,, inst_case_branch_context p br |- t ⇝ u) bbody bcontext br br')
      brs brs' ->
    Σ ;;; Γ |- tCase ci p c brs ⇝ tCase ci p c brs'

| proj_red p c c' : Σ ;;; Γ |- c ⇝ c' -> Σ ;;; Γ |- tProj p c ⇝ tProj p c'

| app_red_l M1 N1 M2 : Σ ;;; Γ |- M1 ⇝ N1 -> Σ ;;; Γ |- tApp M1 M2 ⇝ tApp N1 M2
| app_red_r M2 N2 M1 : Σ ;;; Γ |- M2 ⇝ N2 -> Σ ;;; Γ |- tApp M1 M2 ⇝ tApp M1 N2

| prod_red_l na M1 M2 N1 : Σ ;;; Γ |- M1 ⇝ N1 -> Σ ;;; Γ |- tProd na M1 M2 ⇝ tProd na N1 M2
| prod_red_r na M2 N2 M1 : Σ ;;; Γ ,, vass na M1 |- M2 ⇝ N2 ->
                           Σ ;;; Γ |- tProd na M1 M2 ⇝ tProd na M1 N2

| evar_red ev l l' : OnOne2 (fun t u => Σ ;;; Γ |- t ⇝ u) l l' -> Σ ;;; Γ |- tEvar ev l ⇝ tEvar ev l'

| fix_red_ty mfix0 mfix1 idx :
    OnOne2 (on_Trel_eq (fun t u => Σ ;;; Γ |- t ⇝ u) dtype (fun x => (dname x, dbody x, rarg x))) mfix0 mfix1 ->
    Σ ;;; Γ |- tFix mfix0 idx ⇝ tFix mfix1 idx

| fix_red_body mfix0 mfix1 idx :
    OnOne2 (on_Trel_eq (fun t u => Σ ;;; Γ ,,, fix_context mfix0 |- t ⇝ u) dbody (fun x => (dname x, dtype x, rarg x)))
           mfix0 mfix1 ->
    Σ ;;; Γ |- tFix mfix0 idx ⇝ tFix mfix1 idx

| cofix_red_ty mfix0 mfix1 idx :
    OnOne2 (on_Trel_eq (fun t u => Σ ;;; Γ |- t ⇝ u) dtype (fun x => (dname x, dbody x, rarg x))) mfix0 mfix1 ->
    Σ ;;; Γ |- tCoFix mfix0 idx ⇝ tCoFix mfix1 idx

| cofix_red_body mfix0 mfix1 idx :
    OnOne2 (on_Trel_eq (fun t u => Σ ;;; Γ ,,, fix_context mfix0 |- t ⇝ u) dbody (fun x => (dname x, dtype x, rarg x))) mfix0 mfix1 ->
    Σ ;;; Γ |- tCoFix mfix0 idx ⇝ tCoFix mfix1 idx

| array_red_val arr value :
    OnOne2 (fun t u => Σ ;;; Γ |- t ⇝ u) arr.(array_value) value ->
    Σ ;;; Γ |- tPrim (primArray; primArrayModel arr) ⇝
               tPrim (primArray; primArrayModel (set_array_value arr value))

| array_red_def arr def :
    Σ ;;; Γ |- arr.(array_default) ⇝ def ->
    Σ ;;; Γ |- tPrim (primArray; primArrayModel arr) ⇝
               tPrim (primArray; primArrayModel (set_array_default arr def))

| array_red_type arr ty :
    Σ ;;; Γ |- arr.(array_type) ⇝ ty ->
    Σ ;;; Γ |- tPrim (primArray; primArrayModel arr) ⇝
          tPrim (primArray; primArrayModel (set_array_type arr ty))

where " Σ ;;; Γ |- t ⇝ u " := (red1 Σ Γ t u).

Definition red1_ctx Σ := (OnOne2_local_env (fun Δ => on_one_decl (fun t t' => red1 Σ Δ t t'))).

Definition red Σ Γ := clos_refl_trans (fun t u : term => Σ;;; Γ |- t ⇝ u).
Module Export PCUICCumulativitySpec.

Implicit Types (cf : checker_flags).

Definition cumul_predicate (cumul : context -> term -> term -> Type) cumul_universe Γ p p' :=
  All2 (cumul Γ) p.(pparams) p'.(pparams) ×
  cmp_universe_instance cumul_universe p.(puinst) p'.(puinst) ×
  eq_context_upto_names p.(pcontext) p'.(pcontext) ×
  cumul (Γ ,,, inst_case_predicate_context p) p.(preturn) p'.(preturn).

Definition cumul_branch (cumul_term : context -> term -> term -> Type) Γ p br br' :=
  eq_context_upto_names br.(bcontext) br'.(bcontext) ×
  cumul_term (Γ ,,, inst_case_branch_context p br) br.(bbody) br'.(bbody).

Definition cumul_branches cumul_term Γ p brs brs' := All2 (cumul_branch cumul_term Γ p) brs brs'.

Definition cumul_mfixpoint (cumul_term : context -> term -> term -> Type) Γ mfix mfix' :=
  All2 (fun d d' =>
    cumul_term Γ d.(dtype) d'.(dtype) ×
    cumul_term (Γ ,,, fix_context mfix) d.(dbody) d'.(dbody) ×
    d.(rarg) = d'.(rarg) ×
    eq_binder_annot d.(dname) d'.(dname)
  ) mfix mfix'.

Reserved Notation " Σ ;;; Γ ⊢ t ≤s[ pb ] u" (at level 50, Γ, t, u at next level,
  format "Σ  ;;;  Γ  ⊢  t  ≤s[ pb ]  u").

Definition cumul_Ind_univ {cf} (Σ : global_env_ext) pb i napp :=
  cmp_global_instance Σ (compare_universe Σ) pb (IndRef i) napp.

Definition cumul_Construct_univ {cf} (Σ : global_env_ext) pb  i k napp :=
  cmp_global_instance Σ (compare_universe Σ) pb (ConstructRef i k) napp.
Inductive cumulSpec0 {cf : checker_flags} (Σ : global_env_ext) Γ (pb : conv_pb) : term -> term -> Type :=

| cumul_Trans : forall t u v,
    is_closed_context Γ -> is_open_term Γ u ->
    Σ ;;; Γ ⊢ t ≤s[pb] u ->
    Σ ;;; Γ ⊢ u ≤s[pb] v ->
    Σ ;;; Γ ⊢ t ≤s[pb] v

| cumul_Sym : forall t u,
    Σ ;;; Γ ⊢ t ≤s[Conv] u ->
    Σ ;;; Γ ⊢ u ≤s[pb] t

| cumul_Refl : forall t,
    Σ ;;; Γ ⊢ t ≤s[pb] t

| cumul_Ind : forall i u u' args args',
    cumul_Ind_univ Σ pb i #|args| u u' ->
    All2 (fun t u => Σ ;;; Γ ⊢ t ≤s[Conv] u) args args' ->
    Σ ;;; Γ ⊢ mkApps (tInd i u) args ≤s[pb] mkApps (tInd i u') args'

| cumul_Construct : forall i k u u' args args',
    cumul_Construct_univ Σ pb i k #|args| u u' ->
    All2 (fun t u => Σ ;;; Γ ⊢ t ≤s[Conv] u) args args' ->
    Σ ;;; Γ ⊢ mkApps (tConstruct i k u) args ≤s[pb] mkApps (tConstruct i k u') args'

| cumul_Sort : forall s s',
    compare_sort Σ pb s s' ->
    Σ ;;; Γ ⊢ tSort s ≤s[pb] tSort s'

| cumul_Const : forall c u u',
    cmp_universe_instance (compare_universe Σ Conv) u u' ->
    Σ ;;; Γ ⊢ tConst c u ≤s[pb] tConst c u'

| cumul_Evar : forall e args args',
    All2 (fun t u => Σ ;;; Γ ⊢ t ≤s[Conv] u) args args' ->
    Σ ;;; Γ ⊢ tEvar e args ≤s[pb] tEvar e args'

| cumul_App : forall t t' u u',
    Σ ;;; Γ ⊢ t ≤s[pb] t' ->
    Σ ;;; Γ ⊢ u ≤s[Conv] u' ->
    Σ ;;; Γ ⊢ tApp t u ≤s[pb] tApp t' u'

| cumul_Lambda : forall na na' ty ty' t t',
    eq_binder_annot na na' ->
    Σ ;;; Γ ⊢ ty ≤s[Conv] ty' ->
    Σ ;;; Γ ,, vass na ty ⊢ t ≤s[Conv] t' ->
    Σ ;;; Γ ⊢ tLambda na ty t ≤s[pb] tLambda na' ty' t'

| cumul_Prod : forall na na' a a' b b',
    eq_binder_annot na na' ->
    Σ ;;; Γ ⊢ a ≤s[Conv] a' ->
    Σ ;;; Γ ,, vass na a ⊢ b ≤s[pb] b' ->
    Σ ;;; Γ ⊢ tProd na a b ≤s[pb] tProd na' a' b'

| cumul_LetIn : forall na na' t t' ty ty' u u',
    eq_binder_annot na na' ->
    Σ ;;; Γ ⊢ t ≤s[Conv] t' ->
    Σ ;;; Γ ⊢ ty ≤s[Conv] ty' ->
    Σ ;;; Γ ,, vdef na t ty ⊢ u ≤s[Conv] u' ->
    Σ ;;; Γ ⊢ tLetIn na t ty u ≤s[pb] tLetIn na' t' ty' u'

| cumul_Case indn : forall p p' c c' brs brs',
    cumul_predicate (fun Γ t u => Σ ;;; Γ ⊢ t ≤s[Conv] u) (compare_universe Σ Conv) Γ p p' ->
    Σ ;;; Γ ⊢ c ≤s[Conv] c' ->
    cumul_branches (fun Γ t u => Σ ;;; Γ ⊢ t ≤s[Conv] u) Γ p brs brs' ->
    Σ ;;; Γ ⊢ tCase indn p c brs ≤s[pb] tCase indn p' c' brs'

| cumul_Proj : forall p c c',
    Σ ;;; Γ ⊢ c ≤s[Conv] c' ->
    Σ ;;; Γ ⊢ tProj p c ≤s[pb] tProj p c'

| cumul_Fix : forall mfix mfix' idx,
    cumul_mfixpoint (fun Γ t u => Σ ;;; Γ ⊢ t ≤s[Conv] u) Γ mfix mfix' ->
    Σ ;;; Γ ⊢ tFix mfix idx ≤s[pb] tFix mfix' idx

| cumul_CoFix : forall mfix mfix' idx,
    cumul_mfixpoint (fun Γ t u => Σ ;;; Γ ⊢ t ≤s[Conv] u) Γ mfix mfix' ->
    Σ ;;; Γ ⊢ tCoFix mfix idx ≤s[pb] tCoFix mfix' idx

| cumul_Prim p p' :
  onPrims (fun x y => Σ ;;; Γ ⊢ x ≤s[Conv] y) (compare_universe Σ Conv) p p' ->
  Σ ;;; Γ ⊢ tPrim p ≤s[pb] tPrim p'

| cumul_beta : forall na t b a,
    Σ ;;; Γ ⊢ tApp (tLambda na t b) a ≤s[pb] b {0 := a}

| cumul_zeta : forall na b t b',
    Σ ;;; Γ ⊢ tLetIn na b t b' ≤s[pb] b' {0 := b}

| cumul_rel i body :
    option_map decl_body (nth_error Γ i) = Some (Some body) ->
    Σ ;;; Γ ⊢ tRel i ≤s[pb] lift0 (S i) body

| cumul_iota : forall ci c u args p brs br,
    nth_error brs c = Some br ->
    #|args| = (ci.(ci_npar) + context_assumptions br.(bcontext))%nat ->
    Σ ;;; Γ ⊢ tCase ci p (mkApps (tConstruct ci.(ci_ind) c u) args) brs  ≤s[pb] iota_red ci.(ci_npar) p args br

| cumul_fix : forall mfix idx args narg fn,
    unfold_fix mfix idx = Some (narg, fn) ->
    is_constructor narg args = true ->
    Σ ;;; Γ ⊢ mkApps (tFix mfix idx) args ≤s[pb] mkApps fn args

| cumul_cofix_case : forall ip p mfix idx args narg fn brs,
    unfold_cofix mfix idx = Some (narg, fn) ->
    Σ ;;; Γ ⊢ tCase ip p (mkApps (tCoFix mfix idx) args) brs ≤s[pb] tCase ip p (mkApps fn args) brs

| cumul_cofix_proj : forall p mfix idx args narg fn,
    unfold_cofix mfix idx = Some (narg, fn) ->
    Σ ;;; Γ ⊢ tProj p (mkApps (tCoFix mfix idx) args) ≤s[pb] tProj p (mkApps fn args)

| cumul_delta : forall c decl body (isdecl : declared_constant Σ c decl) u,
    decl.(cst_body) = Some body ->
    Σ ;;; Γ ⊢ tConst c u ≤s[pb] body@[u]

| cumul_proj : forall p args u arg,
    nth_error args (p.(proj_npars) + p.(proj_arg)) = Some arg ->
    Σ ;;; Γ ⊢ tProj p (mkApps (tConstruct p.(proj_ind) 0 u) args) ≤s[pb] arg

where " Σ ;;; Γ ⊢ t ≤s[ pb ] u " := (@cumulSpec0 _ Σ Γ pb t u) : type_scope.
Definition cumulSpec `{checker_flags} (Σ : global_env_ext) Γ := cumulSpec0 Σ Γ Cumul.

Notation " Σ ;;; Γ |- t <=s u " := (@cumulSpec _ Σ Γ t u) (at level 50, Γ, t, u at next level).

Module PCUICConversionParSpec <: EnvironmentTyping.ConversionParSig PCUICTerm PCUICEnvironment PCUICTermUtils PCUICEnvTyping.
End PCUICConversionParSpec.

End PCUICCumulativitySpec.

Implicit Types (cf : checker_flags) (Σ : global_env_ext).

Definition type_of_constructor mdecl (cdecl : constructor_body) (c : inductive * nat) (u : list Level.t) :=
  let mind := inductive_mind (fst c) in
  subst0 (inds mind u mdecl.(ind_bodies)) (subst_instance u (cstr_type cdecl)).

Include PCUICEnvTyping.

Inductive FixCoFix : Type := Fix | CoFix.

Class GuardChecker :=
{
  guard : FixCoFix -> global_env_ext -> context -> mfixpoint term -> Prop ;
}.

Axiom guard_checking : GuardChecker.
#[global]
Existing Instance guard_checking.

Definition fix_guard := guard Fix.
Definition cofix_guard := guard CoFix.

Definition destInd (t : term) :=
  match t with
  | tInd ind u => Some (ind, u)
  | _ => None
  end.

Definition isCoFinite (r : recursivity_kind) :=
  match r with
  | CoFinite => true
  | _ => false
  end.

Definition check_recursivity_kind
  (lookup: kername -> option global_decl) ind r :=
  match lookup ind with
  | Some (InductiveDecl mib) => ReflectEq.eqb mib.(ind_finite) r
  | _ => false
  end.

Definition check_one_fix d :=
  let '{| dname := na;
         dtype := ty;
         dbody := b;
         rarg := arg |} := d in
  let '(ctx, ty) := decompose_prod_assum [] ty in
  match nth_error (List.rev (smash_context [] ctx)) arg with
  | Some argd =>
    let (hd, args) := decompose_app argd.(decl_type) in
    match destInd hd with
    | Some (mkInd mind _, u) => Some mind
    | None => None
    end
  | None => None
  end.

Definition wf_fixpoint_gen
  (lookup: kername -> option global_decl) mfix :=
  forallb (isLambda ∘ dbody) mfix &&
  let checks := map check_one_fix mfix in
  match map_option_out checks with
  | Some (ind :: inds) =>

    forallb (eqb ind) inds &&
    check_recursivity_kind lookup ind Finite
  | _ => false
  end.

Definition wf_fixpoint (Σ : global_env) := wf_fixpoint_gen (lookup_env Σ).

Definition check_one_cofix d :=
  let '{| dname := na;
         dtype := ty;
         dbody := b;
         rarg := arg |} := d in
  let '(ctx, ty) := decompose_prod_assum [] ty in
  let (hd, args) := decompose_app ty in
  match destInd hd with
  | Some (mkInd ind _, u) => Some ind
  | None => None
  end.

Definition wf_cofixpoint_gen
  (lookup: kername -> option global_decl) mfix :=
  let checks := map check_one_cofix mfix in
  match map_option_out checks with
  | Some (ind :: inds) =>

    forallb (eqb ind) inds &&
    check_recursivity_kind lookup ind CoFinite
  | _ => false
  end.

Definition wf_cofixpoint (Σ : global_env) := wf_cofixpoint_gen (lookup_env Σ).

Reserved Notation "'wf_local' Σ Γ " (at level 9, Σ, Γ at next level).

Reserved Notation " Σ ;;; Γ |- t : T " (at level 50, Γ, t, T at next level).

Variant case_side_conditions `{checker_flags} wf_local_fun typing Σ Γ ci p ps mdecl idecl indices predctx :=
| case_side_info
    (eq_npars : mdecl.(ind_npars) = ci.(ci_npar))
    (wf_pred : wf_predicate mdecl idecl p)
    (cons : consistent_instance_ext Σ (ind_universes mdecl) p.(puinst))
    (wf_pctx : wf_local_fun Σ (Γ ,,, predctx))

    (conv_pctx : eq_context_upto_names p.(pcontext) (ind_predicate_context ci.(ci_ind) mdecl idecl))
    (allowed_elim : is_allowed_elimination Σ idecl.(ind_kelim) ps)
    (elim_relevance : isSortRel ps ci.(ci_relevance))
    (ind_inst : ctx_inst (typing Σ) Γ (p.(pparams) ++ indices)
                         (List.rev (subst_instance p.(puinst)
                                                   (ind_params mdecl ,,, ind_indices idecl : context))))
    (not_cofinite : isCoFinite mdecl.(ind_finite) = false).

Variant case_branch_typing `{checker_flags} wf_local_fun typing Σ Γ (ci:case_info) p ps mdecl idecl ptm  brs :=
| case_branch_info
    (wf_brs : wf_branches idecl brs)
    (brs_ty :
       All2i (fun i cdecl br =>

                eq_context_upto_names br.(bcontext) (cstr_branch_context ci mdecl cdecl) ×
                let brctxty := case_branch_type ci.(ci_ind) mdecl idecl p br ptm i cdecl in
                (wf_local_fun Σ (Γ ,,, brctxty.1) ×
                ((typing Σ (Γ ,,, brctxty.1) br.(bbody) (brctxty.2)) ×
                (typing Σ (Γ ,,, brctxty.1) brctxty.2 (tSort ps)))))
             0 idecl.(ind_ctors) brs).

Variant primitive_typing_hyps `{checker_flags}
  (typing : forall (Σ : global_env_ext) (Γ : context), term -> term -> Type)
  Σ Γ : prim_val term -> Type :=
| prim_int_hyps i : primitive_typing_hyps typing Σ Γ (primInt; primIntModel i)
| prim_float_hyps f : primitive_typing_hyps typing Σ Γ (primFloat; primFloatModel f)
| prim_string_hyps s : primitive_typing_hyps typing Σ Γ (primString; primStringModel s)
| prim_array_hyps a
  (wfl : wf_universe Σ (Universe.make' a.(array_level)))
  (hty : typing Σ Γ a.(array_type) (tSort (sType (Universe.make' a.(array_level)))))
  (hdef : typing Σ Γ a.(array_default) a.(array_type))
  (hvalue : All (fun x => typing Σ Γ x a.(array_type)) a.(array_value)) :
  primitive_typing_hyps typing Σ Γ (primArray; primArrayModel a).

Equations prim_type (p : prim_val term) (cst : kername) : term :=
prim_type (primInt; _) cst := tConst cst [];
prim_type (primFloat; _) cst := tConst cst [];
prim_type (primString; _) cst := tConst cst [];
prim_type (primArray; primArrayModel a) cst := tApp (tConst cst [a.(array_level)]) a.(array_type).

Inductive typing `{checker_flags} (Σ : global_env_ext) (Γ : context) : term -> term -> Type :=
| type_Rel : forall n decl,
    wf_local Σ Γ ->
    nth_error Γ n = Some decl ->
    Σ ;;; Γ |- tRel n : lift0 (S n) decl.(decl_type)

| type_Sort : forall s,
    wf_local Σ Γ ->
    wf_sort Σ s ->
    Σ ;;; Γ |- tSort s : tSort (Sort.super s)

| type_Prod : forall na A B s1 s2,
    lift_typing typing Σ Γ (j_vass_s na A s1) ->
    Σ ;;; Γ ,, vass na A |- B : tSort s2 ->
    Σ ;;; Γ |- tProd na A B : tSort (Sort.sort_of_product s1 s2)

| type_Lambda : forall na A t B,
    lift_typing typing Σ Γ (j_vass na A) ->
    Σ ;;; Γ ,, vass na A |- t : B ->
    Σ ;;; Γ |- tLambda na A t : tProd na A B

| type_LetIn : forall na b B t A,
    lift_typing typing Σ Γ (j_vdef na b B) ->
    Σ ;;; Γ ,, vdef na b B |- t : A ->
    Σ ;;; Γ |- tLetIn na b B t : tLetIn na b B A

| type_App : forall t na A B s u,

    Σ ;;; Γ |- tProd na A B : tSort s ->
    Σ ;;; Γ |- t : tProd na A B ->
    Σ ;;; Γ |- u : A ->
    Σ ;;; Γ |- tApp t u : B{0 := u}

| type_Const : forall cst u decl,
    wf_local Σ Γ ->
    declared_constant Σ cst decl ->
    consistent_instance_ext Σ decl.(cst_universes) u ->
    Σ ;;; Γ |- tConst cst u : decl.(cst_type)@[u]

| type_Ind : forall ind u mdecl idecl,
    wf_local Σ Γ ->
    declared_inductive Σ ind mdecl idecl ->
    consistent_instance_ext Σ mdecl.(ind_universes) u ->
    Σ ;;; Γ |- tInd ind u : idecl.(ind_type)@[u]

| type_Construct : forall ind i u mdecl idecl cdecl,
    wf_local Σ Γ ->
    declared_constructor Σ (ind, i) mdecl idecl cdecl ->
    consistent_instance_ext Σ mdecl.(ind_universes) u ->
    Σ ;;; Γ |- tConstruct ind i u : type_of_constructor mdecl cdecl (ind, i) u

| type_Case : forall ci p c brs indices ps mdecl idecl,
    let predctx := case_predicate_context ci.(ci_ind) mdecl idecl p in
    let ptm := it_mkLambda_or_LetIn predctx p.(preturn) in
    declared_inductive Σ ci.(ci_ind) mdecl idecl ->
    Σ ;;; Γ ,,, predctx |- p.(preturn) : tSort ps ->
    Σ ;;; Γ |- c : mkApps (tInd ci.(ci_ind) p.(puinst)) (p.(pparams) ++ indices) ->
    case_side_conditions (fun Σ Γ => wf_local Σ Γ) typing Σ Γ ci p ps
                         mdecl idecl indices predctx  ->
    case_branch_typing (fun Σ Γ => wf_local Σ Γ) typing Σ Γ ci p ps
                        mdecl idecl ptm brs ->
    Σ ;;; Γ |- tCase ci p c brs : mkApps ptm (indices ++ [c])

| type_Proj : forall p c u mdecl idecl cdecl pdecl args,
    declared_projection Σ p mdecl idecl cdecl pdecl ->
    Σ ;;; Γ |- c : mkApps (tInd p.(proj_ind) u) args ->
    #|args| = ind_npars mdecl ->
    Σ ;;; Γ |- tProj p c : subst0 (c :: List.rev args) pdecl.(proj_type)@[u]

| type_Fix : forall mfix n decl,
    wf_local Σ Γ ->
    fix_guard Σ Γ mfix ->
    nth_error mfix n = Some decl ->
    All (on_def_type (lift_typing1 (typing Σ)) Γ) mfix ->
    All (on_def_body (lift_typing1 (typing Σ)) (fix_context mfix) Γ) mfix ->
    wf_fixpoint Σ mfix ->
    Σ ;;; Γ |- tFix mfix n : decl.(dtype)

| type_CoFix : forall mfix n decl,
    wf_local Σ Γ ->
    cofix_guard Σ Γ mfix ->
    nth_error mfix n = Some decl ->
    All (on_def_type (lift_typing1 (typing Σ)) Γ) mfix ->
    All (on_def_body (lift_typing1 (typing Σ)) (fix_context mfix) Γ) mfix ->
    wf_cofixpoint Σ mfix ->
    Σ ;;; Γ |- tCoFix mfix n : decl.(dtype)

| type_Prim p prim_ty cdecl :
    wf_local Σ Γ ->
    primitive_constant Σ (prim_val_tag p) = Some prim_ty ->
    declared_constant Σ prim_ty cdecl ->
    primitive_invariants (prim_val_tag p) cdecl ->
    primitive_typing_hyps typing Σ Γ p ->
    Σ ;;; Γ |- tPrim p : prim_type p prim_ty

| type_Cumul : forall t A B s,
    Σ ;;; Γ |- t : A ->
    Σ ;;; Γ |- B : tSort s ->
    Σ ;;; Γ |- A <=s B ->
    Σ ;;; Γ |- t : B

where " Σ ;;; Γ |- t : T " := (typing Σ Γ t T)
and "'wf_local' Σ Γ " := (All_local_env (lift_typing1 (typing Σ)) Γ).

Definition wf `{checker_flags} := on_global_env cumulSpec0 (lift_typing typing).
Notation on_contexts_length := All2_fold_length.
Import Stdlib.Classes.CRelationClasses.

Definition ws_term P := { t : term | on_free_vars P t }.
Definition ws_term_proj {P} (t : ws_term P) : term.
admit.
Defined.
Coercion ws_term_proj : ws_term >-> term.

Definition ws_context P := { t : context | on_free_vars_ctx P t }.

Notation closed_context := (ws_context xpred0).
Notation open_term Γ := (ws_term (shiftnP #|Γ| xpred0)).
Definition ws_context_proj' {P} (t : ws_context P) : list context_decl.
Admitted.
Coercion ws_context_proj' : ws_context >-> list.

Definition ws_red1 Σ P (Γ : ws_context P) (t u : ws_term (shiftnP #|Γ| P)) :=
  red1 Σ Γ t u.

Definition ws_red Σ P (Γ : ws_context P) := clos_refl_trans (ws_red1 Σ P Γ).

Definition ws_pair :=
  ∑ Γ : ws_context xpred0, ws_term (shiftnP #|Γ| xpred0).

Section RedConfluence.
  Context {cf : checker_flags}.
  Context {Σ : global_env_ext} (wfΣ : wf Σ).
Definition red1_rel_alpha : relation ws_pair.
exact (relation_disjunction (A:=ws_pair) (fun '(Γ; t) '(Δ; u) => (red1 Σ Γ t u * (Γ = Δ)))%type
     (relation_disjunction (A:=ws_pair)
        (fun '(Γ; t) '(Δ; u) => ((red1_ctx Σ Γ Δ * (t = u :> term))))
        (fun '(Γ; t) '(Δ; u) => ((eq_context_upto_names Γ Δ * (t = u :> term)))))%type).
Defined.

  Lemma red_ws_red (Γ : closed_context) (x y : ws_term (shiftnP #|Γ| xpred0)) :
    red Σ Γ x y -> ws_red Σ xpred0 Γ x y.
Admitted.
Definition transport_ws_term {n m : nat} (t : ws_term (shiftnP n xpred0)) (eq : n = m) : ws_term (shiftnP m xpred0).
Admitted.
Definition red_ctx_alpha : relation context.
exact (All2_fold (fun Γ _ => All_decls_alpha (red Σ Γ))).
Defined.

  Instance red_ctx_alpha_refl : Reflexive red_ctx_alpha.
Admitted.

  Lemma ws_red_refl_irrel P (Γ : ws_context P) (x y : ws_term (shiftnP #|Γ| P)) :
    x = y :> term ->
    ws_red Σ P Γ x y.
Admitted.

  Lemma clos_rt_red1_alpha_out x y :
    clos_refl_trans red1_rel_alpha x y ->
    ∑ redctx : red_ctx_alpha x.π1 y.π1,
      ws_red Σ xpred0 x.π1 x.π2 (transport_ws_term y.π2 (symmetry (All2_fold_length redctx))).
  Proof using wfΣ.
    intros H.
    eapply clos_rt_rt1n_iff in H.
    induction H.
    -
 unshelve eexists.
reflexivity.
eapply ws_red_refl_irrel => //.
    -
 destruct x as [Γ t], y as [Δ u], z as [Δ' u']; simpl in *.
      destruct IHclos_refl_trans_1n.
      red in r.
destruct r.
      *
 destruct p.
subst.
exists x.
        transitivity u; auto.
        now eapply red_ws_red.
      *
 destruct t as [t ht], u as [u hu];
        move: r; case; move => [] r eq; noconf eq.
