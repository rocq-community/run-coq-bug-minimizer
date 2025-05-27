
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/utils/theories" "MetaRocq.Utils" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/common/theories" "MetaRocq.Common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/pcuic/theories" "MetaRocq.PCUIC" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Equations" "Equations" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 3959 lines to 98 lines, then from 111 lines to 3187 lines, then from 3191 lines to 96 lines, then from 107 lines to 1813 lines, then from 1818 lines to 359 lines, then from 369 lines to 1502 lines, then from 1506 lines to 524 lines, then from 535 lines to 3221 lines, then from 3222 lines to 656 lines, then from 667 lines to 2894 lines, then from 2900 lines to 656 lines, then from 667 lines to 1321 lines, then from 1327 lines to 874 lines, then from 883 lines to 675 lines, then from 686 lines to 2746 lines, then from 2745 lines to 687 lines, then from 698 lines to 3155 lines, then from 3155 lines to 745 lines, then from 756 lines to 1586 lines, then from 1589 lines to 869 lines, then from 880 lines to 2395 lines, then from 2394 lines to 885 lines, then from 895 lines to 2754 lines, then from 2755 lines to 1157 lines, then from 1161 lines to 1145 lines, then from 1156 lines to 1809 lines, then from 1813 lines to 1200 lines, then from 1211 lines to 4024 lines, then from 4021 lines to 1355 lines, then from 1366 lines to 3048 lines, then from 3051 lines to 1938 lines, then from 1928 lines to 1518 lines, then from 1529 lines to 1814 lines, then from 1819 lines to 1523 lines, then from 1533 lines to 2340 lines, then from 2342 lines to 1526 lines, then from 1536 lines to 4638 lines, then from 4602 lines to 1892 lines, then from 1903 lines to 3075 lines, then from 3076 lines to 2771 lines, then from 2762 lines to 1985 lines, then from 1996 lines to 2830 lines, then from 2835 lines to 2048 lines, then from 2059 lines to 2413 lines, then from 2418 lines to 2052 lines, then from 2063 lines to 2597 lines, then from 2601 lines to 2063 lines, then from 2074 lines to 6642 lines, then from 6641 lines to 4802 lines *)
(* coqc version 9.1+alpha compiled with OCaml 4.14.2
   coqtop version runner-t7b1znuaq-project-4504-concurrent-2:/builds/coq/coq/_build/default,(HEAD detached at cdd06d0a2f356e) (cdd06d0a2f356e0c02e2d20356562b7deae4cf15)
   Expected coqc runtime on this file: 3.393 sec *)









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
Require Stdlib.MSets.MSetGenTree.
Require Stdlib.ZArith.Int.
Require Stdlib.MSets.MSetAVL.
Require Corelib.Floats.FloatOps.
Require Corelib.Strings.PrimString.
Require Corelib.Init.Byte.
Require Stdlib.Init.Byte.
Require Stdlib.Strings.Byte.
Require Stdlib.Strings.Ascii.
Require Stdlib.Strings.String.
Require Corelib.extraction.Extraction.
Require Stdlib.extraction.Extraction.
Require Stdlib.Unicode.Utf8_core.
Require Equations.Init.
Require Equations.Signature.
Require Equations.CoreTactics.
Require Equations.Prop.SigmaNotations.
Require Equations.Prop.Logic.
Require Equations.Prop.Classes.
Require Corelib.Program.Tactics.
Require Stdlib.Program.Tactics.
Require Equations.Prop.EqDec.
Require Equations.Prop.DepElim.
Require Equations.Prop.Constants.
Require Stdlib.Vectors.Fin.
Require Stdlib.Vectors.VectorDef.
Require Stdlib.Vectors.VectorSpec.
Require Stdlib.Vectors.VectorEq.
Require Stdlib.Vectors.Vector.
Require Stdlib.Vectors.Bvector.
Require Stdlib.Wellfounded.Disjoint_Union.
Require Stdlib.Wellfounded.Inclusion.
Require Stdlib.Wellfounded.Inverse_Image.
Require Stdlib.Wellfounded.Transitive_Closure.
Require Stdlib.Wellfounded.List_Extension.
Require Stdlib.Wellfounded.Lexicographic_Exponentiation.
Require Stdlib.Wellfounded.Lexicographic_Product.
Require Stdlib.Wellfounded.Union.
Require Stdlib.Wellfounded.Well_Ordering.
Require Stdlib.Wellfounded.Wellfounded.
Require Corelib.Program.Wf.
Require Stdlib.Program.Wf.
Require Stdlib.Logic.FunctionalExtensionality.
Require Equations.Prop.Subterm.
Require Equations.Prop.FunctionalInduction.
Require Equations.Prop.Tactics.
Require Equations.Prop.NoConfusion.
Require Equations.Prop.EqDecInstances.
Require Equations.Prop.Loader.
Require Equations.Prop.Telescopes.
Require Equations.Prop.Equations.
Require Stdlib.Structures.OrderedType.
Require MetaRocq.Utils.MRCompare.
Require MetaRocq.Utils.ReflectEq.
Require MetaRocq.Utils.ByteCompare.
Require MetaRocq.Utils.ByteCompareSpec.
Require Stdlib.Structures.OrdersAlt.
Require MetaRocq.Utils.bytestring.
Require MetaRocq.Utils.MRSquash.
Require Stdlib.setoid_ring.Algebra_syntax.
Require Stdlib.Unicode.Utf8.
Require Equations.Type.Logic.
Require Equations.Type.Relation.
Require Equations.Type.Relation_Properties.
Require MetaRocq.Utils.MRProd.
Require MetaRocq.Utils.MRRelations.
Require Stdlib.setoid_ring.Ncring.
Require Stdlib.setoid_ring.Ncring_polynom.
Require Stdlib.ZArith.Zmax.
Require Stdlib.ZArith.Zmin.
Require Stdlib.ZArith.Zminmax.
Require Stdlib.ZArith.auxiliary.
Require Stdlib.omega.OmegaLemmas.
Require Stdlib.setoid_ring.Ncring_initial.
Require Stdlib.setoid_ring.Ncring_tac.
Require Stdlib.setoid_ring.Cring.
Require Stdlib.ZArith.Zhints.
Require Stdlib.ZArith.ZArith_base.
Require Stdlib.ZArith.Zpower.
Require Stdlib.ZArith.Zdiv_facts.
Require Stdlib.ZArith.Zdivisibility.
Require Stdlib.ZArith.ZModOffset.
Require Stdlib.ZArith.Zcong.
Require Stdlib.micromega.ZArith_hints.
Require Stdlib.ZArith.Zbitwise.
Require Stdlib.ZArith.Znumtheory.
Require Stdlib.ZArith.ZArith.
Require MetaRocq.Utils.MRPrelude.
Require MetaRocq.Utils.MRReflect.
Require MetaRocq.Utils.MRList.
Require MetaRocq.Utils.MROption.

Module Export AdmitTactic.
Module Import LocalFalse.
Inductive False : Prop := .
End LocalFalse.
Axiom proof_admitted : False.
Import Coq.Init.Ltac.
Tactic Notation "admit" := abstract case proof_admitted.
End AdmitTactic.

Module Export MetaRocq_DOT_Utils_DOT_All_Forall_WRAPPED.
Module Export All_Forall.
Import Stdlib.Lists.List.
Import Stdlib.Bool.Bool.
Import Stdlib.Arith.Arith.
Import Stdlib.ssr.ssreflect.
Import Stdlib.ssr.ssrbool.
Import Stdlib.Classes.Morphisms.
Import Stdlib.micromega.Lia.
Import Stdlib.Unicode.Utf8.
Import MetaRocq.Utils.MRPrelude.
Import MetaRocq.Utils.MRReflect.
Import MetaRocq.Utils.MRList.
Import MetaRocq.Utils.MRRelations.
Import MetaRocq.Utils.MRProd.
Import MetaRocq.Utils.MROption.
Import Equations.Prop.Equations.

Import ListNotations.

Derive Signature for Forall Forall2.




Inductive All {A} (P : A -> Type) : list A -> Type :=
    All_nil : All P []
  | All_cons : forall (x : A) (l : list A),
                  P x -> All P l -> All P (x :: l).
Arguments All {A} P%_type _.
Arguments All_nil {_ _}.
Arguments All_cons {_ _ _ _}.
Derive Signature NoConfusion for All.
#[global] Hint Constructors All : core.

Inductive Alli {A} (P : nat -> A -> Type) (n : nat) : list A -> Type :=
| Alli_nil : Alli P n []
| Alli_cons hd tl : P n hd -> Alli P (S n) tl -> Alli P n (hd :: tl).
Arguments Alli_nil {_ _ _}.
Arguments Alli_cons {_ _ _ _ _}.
Derive Signature for Alli.
Derive NoConfusionHom for Alli.

Inductive All2 {A B : Type} (R : A -> B -> Type) : list A -> list B -> Type :=
  All2_nil : All2 R [] []
| All2_cons : forall (x : A) (y : B) (l : list A) (l' : list B),
    R x y -> All2 R l l' -> All2 R (x :: l) (y :: l').
Arguments All2_nil {_ _ _}.
Arguments All2_cons {_ _ _ _ _ _ _}.
Derive Signature for All2.
Derive NoConfusionHom for All2.
#[global] Hint Constructors All2 : core.

Lemma All2_tip {A} {P} (t u : A) : P t u -> All2 P [t] [u].
Admitted.
#[global] Hint Resolve All2_tip : core.

Inductive All2_dep {A B : Type} {R : A -> B -> Type} (R' : forall a b, R a b -> Type) : forall {xs ys}, All2 R xs ys -> Type :=
| All2_dep_nil : All2_dep R' All2_nil
| All2_dep_cons : forall (x : A) (y : B) (l : list A) (l' : list B) (r : R x y) (rs : All2 R l l'),
    R' x y r -> All2_dep R' rs -> All2_dep R' (All2_cons r rs).
Arguments All2_dep_nil {_ _ _ _}.
Arguments All2_dep_cons {_ _ _ _ _ _ _ _ _ _} _ _.
Derive Signature for All2_dep.
Derive NoConfusionHom for All2_dep.
#[global] Hint Constructors All2_dep : core.

Inductive Forall2_dep {A B : Type} {R : A -> B -> Prop} (R' : forall a b, R a b -> Prop) : forall {xs ys}, Forall2 R xs ys -> Prop :=
| Forall2_dep_nil : Forall2_dep R' (@Forall2_nil _ _ _)
| Forall2_dep_cons : forall (x : A) (y : B) (l : list A) (l' : list B) (r : R x y) (rs : Forall2 R l l'),
    R' x y r -> Forall2_dep R' rs -> Forall2_dep R' (@Forall2_cons _ _ _ _ _ _ _ r rs).
Arguments Forall2_dep_nil {_ _ _ _}.
Arguments Forall2_dep_cons {_ _ _ _ _ _ _ _ _ _} _ _.
Derive Signature for Forall2_dep.
#[global] Hint Constructors Forall2_dep : core.

Inductive All2i {A B : Type} (R : nat -> A -> B -> Type) (n : nat)
  : list A -> list B -> Type :=
| All2i_nil : All2i R n [] []
| All2i_cons :
    forall x y l r,
      R n x y ->
      All2i R (S n) l r ->
      All2i R n (x :: l) (y :: r).
Arguments All2i_nil {_ _ _ _}.
Arguments All2i_cons {_ _ _ _ _ _ _ _}.

Derive Signature NoConfusionHom for All2i.

Inductive All3 {A B C : Type} (R : A -> B -> C -> Type) : list A -> list B -> list C -> Type :=
  All3_nil : All3 R [] [] []
| All3_cons : forall (x : A) (y : B) (z : C) (l : list A) (l' : list B) (l'' : list C),
    R x y z -> All3 R l l' l'' -> All3 R (x :: l) (y :: l') (z :: l'').
Arguments All3_nil {_ _ _ _}.
Arguments All3_cons {_ _ _ _ _ _ _ _ _ _}.

Inductive Forall3 {A B C : Type} (R : A -> B -> C -> Type) : list A -> list B -> list C -> Prop :=
  Forall3_nil : Forall3 R [] [] []
| Forall3_cons : forall (x : A) (y : B) (z : C) (l : list A) (l' : list B) (l'' : list C),
    R x y z -> Forall3 R l l' l'' -> Forall3 R (x :: l) (y :: l') (z :: l'').
Arguments Forall3_nil {_ _ _ _}.
Arguments Forall3_cons {_ _ _ _ _ _ _ _ _ _}.

#[global] Hint Constructors All3 Forall3 : core.
Derive Signature for All3 Forall3.
Derive NoConfusionHom for All3.

Definition invert_Forall2 {A B R l l'} (a : @Forall2 A B R l l')
  := match a in Forall2 _ l l'
           return
           match l, l' return @Forall2 A B R l l' -> Prop with
           | [], [] => fun a => Forall2_nil _ = a
           | [], _ | _, [] => fun _ => False
           | x :: xs, y :: ys
             => fun a => sigP (fun v => Forall2_cons _ _ (proj1 v) (proj2 v) = a)
           end a
     with
     | Forall2_nil _ => eq_refl
     | Forall2_cons _ _ r a => existP _ (conj r a) eq_refl
     end.
Import EqNotations.
Definition invert_Forall2_dep {A B R R' l l' a} (a' : @Forall2_dep A B R R' l l' a)
  := match a' in @Forall2_dep _ _ _ _ l l' a
           return
           match l, l' return forall a, @Forall2_dep A B R R' l l' a -> Prop with
           | [], [] => fun a a' => (rew [Forall2_dep _] invert_Forall2 a in Forall2_dep_nil) = a'
           | [], _ | _, [] => fun _ _ => False
           | x :: xs, y :: ys
             => fun a a' => sigP (fun v => (rew projP2 (invert_Forall2 a) in Forall2_dep_cons (proj1 v) (proj2 v)) = a')
           end a a'
     with
     | Forall2_dep_nil => eq_refl
     | Forall2_dep_cons r a => existP _ (conj r a) eq_refl
     end.

Definition Forall2_rect A B R (P : forall x y, Forall2 R x y -> Type)
  (Hn : P [] [] (@Forall2_nil _ _ _))
  (Hc : forall x y l l' r (a : Forall2 R l l'),
      P l l' a -> P (x :: l) (y :: l') (Forall2_cons _ _ r a))
  : forall l l' (a : @Forall2 A B R l l'), P l l' a.
Admitted.

Definition Forall2_rec A B R (P : forall x y, Forall2 R x y -> Set)
  (Hn : P [] [] (@Forall2_nil _ _ _))
  (Hc : forall x y l l' r (a : Forall2 R l l'),
      P l l' a -> P (x :: l) (y :: l') (Forall2_cons _ _ r a))
  : forall l l' (a : @Forall2 A B R l l'), P l l' a
  := @Forall2_rect A B R P Hn Hc.

Definition Forall2_dep_rect A B R R' (P : forall x y a, @Forall2_dep A B R R' x y a -> Type)
  (Hn : P [] [] (@Forall2_nil _ _ _) Forall2_dep_nil)
  (Hc : forall x y l l' r rs r' (a : Forall2_dep R' rs),
      P l l' rs a -> P (x :: l) (y :: l') (Forall2_cons _ _ r rs) (Forall2_dep_cons r' a))
  : forall l l' a (a' : @Forall2_dep A B R R' l l' a), P l l' a a'.
Admitted.

Definition Forall2_dep_rec A B R R' (P : forall x y a, @Forall2_dep A B R R' x y a -> Set)
  (Hn : P [] [] (@Forall2_nil _ _ _) Forall2_dep_nil)
  (Hc : forall x y l l' r rs r' (a : Forall2_dep R' rs),
      P l l' rs a -> P (x :: l) (y :: l') (Forall2_cons _ _ r rs) (Forall2_dep_cons r' a))
  : forall l l' a (a' : @Forall2_dep A B R R' l l' a), P l l' a a'
  := @Forall2_dep_rect A B R R' P Hn Hc.

Section alli.
  Context {A} (p : nat -> A -> bool).
  Fixpoint alli (n : nat) (l : list A) : bool :=
  match l with
  | [] => true
  | hd :: tl => p n hd && alli (S n) tl
  end.
End alli.

Lemma alli_ext {A} (p q : nat -> A -> bool) n (l : list A) :
  (forall i, p i =1 q i) ->
  alli p n l = alli q n l.
Admitted.

#[global] Instance alli_proper {A} :
   Proper ((pointwise_relation nat (pointwise_relation A eq)) ==> eq ==> eq ==> eq) alli.
Admitted.

Lemma alli_impl {A} (p q : nat -> A -> bool) n (l : list A) :
  (forall i x, p i x -> q i x) ->
  alli p n l -> alli q n l.
Admitted.

Lemma allbiP {A} (P : nat -> A -> Type) (p : nat -> A -> bool) n l :
  (forall i x, reflectT (P i x) (p i x)) ->
  reflectT (Alli P n l) (alli p n l).
Admitted.

Lemma alli_Alli {A} (p : nat -> A -> bool) n l :
  alli p n l <~> Alli p n l.
Admitted.

Lemma alli_shiftn {A} n k p (l : list A) :
  alli p (n + k) l = alli (fun i => p (n + i)) k l.
Admitted.

Section alli.
  Context {A} (p q : nat -> A -> bool) (l l' : list A).

  Lemma alli_app n :
    alli p n (l ++ l') =
    alli p n l && alli p (#|l| + n) l'.
Admitted.

  Lemma alli_shift n :
    alli p n l = alli (fun i => p (n + i)) 0 l.
Admitted.

  Lemma alli_map {B} (f : B -> A) n bs : alli p n (map f bs) = alli (fun i => p i ∘ f) n bs.
Admitted.
End alli.

Lemma alli_mapi {A B} (f : nat -> A -> bool) (g : nat -> B -> A) n l :
  alli f n (mapi_rec g l n) = alli (fun i x => f i (g i x)) n l.
Admitted.

Section Forallb2.
  Context {A B} (f : A -> B -> bool).

  Fixpoint forallb2 l l' :=
    match l, l' with
    | hd :: tl, hd' :: tl' => f hd hd' && forallb2 tl tl'
    | [], [] => true
    | _, _ => false
    end.

End Forallb2.

Section Forallb3.
  Context {A B C} (f : A -> B -> C -> bool).

  Fixpoint forallb3 l l' l'' :=
    match l, l', l'' with
    | hd :: tl, hd' :: tl', hd'' :: tl'' => f hd hd' hd'' && forallb3 tl tl' tl''
    | [], [], [] => true
    | _, _, _ => false
    end.

End Forallb3.

Lemma forallb2_refl :
  forall A (R : A -> A -> bool),
    (forall x, R x x) ->
    forall l, forallb2 R l l.
Admitted.

Lemma forallb2_map :
  forall A B C D (R : A -> B -> bool) f g (l : list C) (l' : list D),
    forallb2 R (map f l) (map g l') =
    forallb2 (fun x y => R (f x) (g y)) l l'.
Admitted.

Lemma forall_map_spec {A B} {l} {f g : A -> B} :
  Forall (fun x => f x = g x) l <->
  map f l = map g l.
Admitted.

Lemma forall_map_id_spec {A} {l} {f : A -> A} :
  Forall (fun x => f x = x) l <-> map f l = l.
Admitted.

Lemma forallb_Forall {A} (p : A -> bool) l
  : Forall p l <-> is_true (forallb p l).
Admitted.

Lemma forallbP {A} (P : A -> Prop) (p : A -> bool) l :
  (forall x, reflect (P x) (p x)) ->
  reflect (Forall P l) (forallb p l).
Admitted.

Lemma forallb_ext {A} (p q : A -> bool) : p =1 q -> forallb p =1 forallb q.
Admitted.

#[global] Instance forallb_proper {A} : Proper (`=1` ==> eq ==> eq) (@forallb A).
Admitted.

Lemma forallbP_cond {A} (P Q : A -> Prop) (p : A -> bool) l :
  Forall Q l ->
  (forall x, Q x -> reflect (P x) (p x)) -> reflect (Forall P l) (forallb p l).
Admitted.

Lemma nth_error_forallb {A} {p : A -> bool} {l : list A} {n x} :
  nth_error l n = Some x -> forallb p l -> p x.
Admitted.

Lemma forallb_nth_error {A} P l n :
  @forallb A P l -> on_Some_or_None P (nth_error l n).
Admitted.

Lemma map_eq_inj {A B} (f g : A -> B) l: map f l = map g l ->
                                         All (fun x => f x = g x) l.
Admitted.



Lemma Forall_mix {A} (P Q : A -> Prop) : forall l, Forall P l -> Forall Q l -> Forall (fun x => P x /\ Q x) l.
Admitted.

Lemma Forall_skipn {A} (P : A -> Prop) n l : Forall P l -> Forall P (skipn n l).
Admitted.

Lemma Forall_firstn {A} (P : A -> Prop) n l : Forall P l -> Forall P (firstn n l).
Admitted.

Lemma forallb2_All2 {A B : Type} {p : A -> B -> bool}
      {l : list A} {l' : list B}:
  is_true (forallb2 p l l') -> All2 (fun x y => is_true (p x y)) l l'.
Admitted.

Lemma All2_forallb2 {A B : Type} {p : A -> B -> bool}
      {l : list A} {l' : list B} :
  All2 (fun x y => is_true (p x y)) l l' -> is_true (forallb2 p l l').
Admitted.

Lemma forallb3_All3 {A B C : Type} {p : A -> B -> C -> bool}
      {l : list A} {l' : list B} {l'' : list C}:
  is_true (forallb3 p l l' l'') -> All3 (fun x y z => is_true (p x y z)) l l' l''.
Admitted.

Lemma All3_forallb3 {A B C : Type} {p : A -> B -> C -> bool}
      {l : list A} {l' : list B} {l'' : list C} :
  All3 (fun x y z => is_true (p x y z)) l l' l'' -> is_true (forallb3 p l l' l'').
Admitted.

Lemma All3P {A B C : Type} {p : A -> B -> C -> bool} {l l' l''} :
  reflectT (All3 p l l' l'') (forallb3 p l l' l'').
Admitted.

Lemma All2_refl {A} {P : A -> A -> Type} l :
  (forall x, P x x) ->
  All2 P l l.
Admitted.

Lemma forallb2_app {A B} (p : A -> B -> bool) l l' q q' :
  is_true (forallb2 p l l' && forallb2 p q q')
  -> is_true (forallb2 p (l ++ q) (l' ++ q')).
Admitted.

Lemma All2_map_equiv {A B C D} {R : C -> D -> Type} {f : A -> C} {g : B -> D} {l l'} :
  All2 (fun x y => R (f x) (g y)) l l' <~> All2 R (map f l) (map g l').
Admitted.

Lemma All2_map {A B C D} {R : C -> D -> Type} {f : A -> C} {g : B -> D} {l l'} :
  All2 (fun x y => R (f x) (g y)) l l' -> All2 R (map f l) (map g l').
Admitted.

Lemma All2_map_inv {A B C D} {R : C -> D -> Type} {f : A -> C} {g : B -> D} {l l'} :
  All2 R (map f l) (map g l') -> All2 (fun x y => R (f x) (g y)) l l'.
Admitted.

Lemma All2_tip_l {A B} {R : A -> B -> Type} x y : All2 R [x] y -> ∑ y', (y = [y']) * R x y'.
Admitted.

Lemma All2i_All2i_mix {A B} {P Q : nat -> A -> B -> Type}
      {n} {l : list A} {l' : list B} :
  All2i P n l l' -> All2i Q n l l' -> All2i (fun i x y => (P i x y * Q i x y)%type) n l l'.
Admitted.

Lemma All2i_nth_error {A B} {P : nat -> A -> B -> Type} {l l' n x c k} :
  All2i P k l l' ->
  nth_error l n = Some x ->
  nth_error l' n = Some c ->
  P (k + n)%nat x c.
Admitted.



















Lemma All2_All_mix_left {A B} {P : A -> Type} {Q : A -> B -> Type}
      {l : list A} {l' : list B} :
  All P l -> All2 Q l l' -> All2 (fun x y => (P x * Q x y)%type) l l'.
Admitted.

Lemma All2_All_mix_right {A B} {P : B -> Type} {Q : A -> B -> Type}
      {l : list A} {l' : list B} :
  All P l' -> All2 Q l l' -> All2 (fun x y => (Q x y * P y)%type) l l'.
Admitted.

Lemma All2i_All_mix_left {A B} {P : A -> Type} {Q : nat -> A -> B -> Type}
      {n} {l : list A} {l' : list B} :
  All P l -> All2i Q n l l' -> All2i (fun i x y => (P x * Q i x y)%type) n l l'.
Admitted.

Lemma All2i_All_mix_right {A B} {P : B -> Type} {Q : nat -> A -> B -> Type}
      {n} {l : list A} {l' : list B} :
  All P l' -> All2i Q n l l' -> All2i (fun i x y => (Q i x y * P y)%type) n l l'.
Admitted.

Lemma All2i_All2_mix_left {A B} {P : A -> B -> Type} {Q : nat -> A -> B -> Type}
      {n} {l : list A} {l' : list B} :
  All2 P l l' -> All2i Q n l l' -> All2i (fun i x y => (P x y * Q i x y)%type) n l l'.
Admitted.

Lemma All2_All2_All2 {A B C} {P Q R} (l : list A) (l' : list B) (l'' : list C) :
  All2 P l l' -> All2 Q l' l'' ->
  (forall x y z, P x y -> Q y z -> R x z) ->
  All2 R l l''.
Admitted.

Lemma Forall_All {A : Type} (P : A -> Prop) l :
  Forall P l -> All P l.
Admitted.

Lemma All_Forall {A : Type} (P : A -> Prop) l :
  All P l -> Forall P l.
Admitted.

Lemma forallb_All {A} (p : A -> bool) l : is_true (forallb p l) -> All p l.
Admitted.

Lemma All_forallb {A} (p : A -> bool) l : All p l -> is_true (forallb p l).
Admitted.

Lemma All_firstn {A} {P : A -> Type} {l} {n} : All P l -> All P (firstn n l).
Admitted.

Lemma All_skipn {A} {P : A -> Type} {l} {n} : All P l -> All P (skipn n l).
Admitted.

Lemma All_app {A} {P : A -> Type} {l l'} : All P (l ++ l') -> All P l * All P l'.
Admitted.

Lemma All_app_inv {A} (P : A -> Type) l l' : All P l -> All P l' -> All P (l ++ l').
Admitted.

Lemma All_True {A} l : All (fun x : A => True) l.
Admitted.

Lemma All_tip {A} {P : A -> Type} {a : A} : P a <~> All P [a].
Admitted.

Lemma All_mix {A} {P : A -> Type} {Q : A -> Type} {l} :
  All P l -> All Q l -> All (fun x => (P x * Q x)%type) l.
Admitted.

Lemma All2_All_left {A B} {P : A -> B -> Type} {Q : A -> Type} {l l'} :
  All2 P l l' ->
  (forall x y, P x y -> Q x) ->
  All Q l.
Admitted.

Lemma All2_All_right {A B} {P : A -> B -> Type} {Q : B -> Type} {l l'} :
  All2 P l l' ->
  (forall x y, P x y -> Q y) ->
  All Q l'.
Admitted.

Lemma All2_right {A B} {P : B -> Type} {l : list A} {l'} :
  All2 (fun x y => P y) l l' -> All P l'.
Admitted.

Lemma All2_impl_All2 {A B} {P Q : A -> B -> Type} {l l'} :
    All2 P l l' ->
    All2 (fun x y => P x y -> Q x y) l l' ->
    All2 Q l l'.
Admitted.

Lemma All2_impl {A B} {P Q : A -> B -> Type} {l l'} :
    All2 P l l' ->
    (forall x y, P x y -> Q x y) ->
    All2 Q l l'.
Admitted.

Lemma All2_eq_eq {A} (l l' : list A) : l = l' -> All2 (fun x y => x = y) l l'.
Admitted.

Lemma All2_reflexivity {A} {P : A -> A -> Type} :
  CRelationClasses.Reflexive P -> CRelationClasses.Reflexive (All2 P).
Admitted.

Lemma All2_symmetry {A} (R : A -> A -> Type) :
  CRelationClasses.Symmetric R ->
  CRelationClasses.Symmetric (All2 R).
Admitted.

Lemma All2_transitivity {A} (R : A -> A -> Type) :
  CRelationClasses.Transitive R ->
  CRelationClasses.Transitive (All2 R).
Admitted.

Lemma All2_apply {A B C} {D : A -> B -> C -> Type} {l : list B} {l' : list C} :
  forall (a : A),
    All2 (fun x y => forall a : A, D a x y) l l' ->
    All2 (fun x y => D a x y) l l'.
Admitted.

Lemma All2_apply_arrow {A B C} {D : B -> C -> Type} {l : list B} {l' : list C} :
  A -> All2 (fun x y => A -> D x y) l l' ->
  All2 (fun x y => D x y) l l'.
Admitted.

Lemma All2_apply_dep_arrow {B C} {A} {D : B -> C -> Type} {l : list B} {l' : list C} :
  All A l ->
  All2 (fun x y => A x -> D x y) l l' ->
  All2 D l l'.
Admitted.

Lemma All2_apply_dep_All {B C} {A} {D : C -> Type} {l : list B} {l' : list C} :
  All A l ->
  All2 (fun x y => A x -> D y) l l' ->
  All D l'.
Admitted.

Lemma All2P {A B : Type} {P : A -> B -> Type} {p : A -> B -> bool} {l l'} :
  (forall x y, reflectT (P x y) (p x y)) ->
  reflectT (All2 P l l') (forallb2 p l l').
Admitted.

Lemma All2i_All_left {A B} {P : nat -> A -> B -> Type} {Q : A -> Type} {n l l'} :
  All2i P n l l' ->
  (forall i x y, P i x y -> Q x) ->
  All Q l.
Admitted.

Lemma All2i_All_right {A B} {P : nat -> A -> B -> Type} {Q : B -> Type} {n l l'} :
  All2i P n l l' ->
  (forall i x y, P i x y -> Q y) ->
  All Q l'.
Admitted.

Lemma All2_dep_impl {A B} {P : A -> B -> Type} {P' Q' : forall a b, P a b -> Type} {l l'} {a : All2 P l l'} :
    All2_dep P' a ->
    (forall x y r, P' x y r -> Q' x y r) ->
    All2_dep Q' a.
Admitted.

Lemma All_refl {A} (P : A -> Type) l : (forall x, P x) -> All P l.
Admitted.

Lemma All_rev_map {A B} (P : A -> Type) f (l : list B) : All (fun x => P (f x)) l -> All P (rev_map f l).
Admitted.

Lemma All_rev (A : Type) (P : A -> Type) (l : list A) : All P l -> All P (List.rev l).
Admitted.

Lemma All_rev_inv {A} (P : A -> Type) (l : list A) : All P (List.rev l) -> All P l.
Admitted.

Lemma All_impl_All {A} {P Q} {l : list A} : All P l -> All (fun x => P x -> Q x) l -> All Q l.
Admitted.

Lemma Alli_impl_Alli {A} {P Q} (l : list A) {n} : Alli P n l -> Alli (fun n x => P n x -> Q n x) n l -> Alli Q n l.
Admitted.

Lemma All_impl {A} {P Q} {l : list A} : All P l -> (forall x, P x -> Q x) -> All Q l.
Admitted.

Lemma Alli_impl {A} {P Q} (l : list A) {n} : Alli P n l -> (forall n x, P n x -> Q n x) -> Alli Q n l.
Admitted.

Lemma All_map {A B} {P : B -> Type} {f : A -> B} {l : list A} :
  All (fun x => P (f x)) l -> All P (map f l).
Admitted.

Lemma All_map_inv {A B} (P : B -> Type) (f : A -> B) l : All P (map f l) -> All (fun x => P (f x)) l.
Admitted.

Lemma In_All {A} {P : A -> Type} l :
    (∀ x : A, In x l -> P x) -> All P l.
Admitted.

Lemma All_nth_error :
  forall A P l i x,
    @All A P l ->
    nth_error l i = Some x ->
    P x.
Admitted.

Lemma Alli_mix {A} {P : nat -> A -> Type} {Q : nat -> A -> Type} {n l} :
  Alli P n l -> Alli Q n l -> Alli (fun n x => (P n x * Q n x)%type) n l.
Admitted.

Lemma Alli_All {A} {P : nat -> A -> Type} {Q : A -> Type} {l n} :
  Alli P n l ->
  (forall n x, P n x -> Q x) ->
  All Q l.
Admitted.

Lemma Alli_app {A} (P : nat -> A -> Type) n l l' : Alli P n (l ++ l') -> Alli P n l * Alli P (length l + n) l'.
Admitted.

Lemma Alli_nth_error :
  forall A P k l i x,
    @Alli A P k l ->
    nth_error l i = Some x ->
    P (k + i) x.
Admitted.

Lemma forall_nth_error_All :
  forall {A} (P : A -> Type) l,
    (forall i x, nth_error l i = Some x -> P x) ->
    All P l.
Admitted.

Lemma forall_nth_error_Alli :
  forall {A} (P : nat -> A -> Type) k l,
    (forall i x, nth_error l i = Some x -> P (k + i) x) ->
    Alli P k l.
Admitted.

Lemma Alli_mapi {A B} {P : nat -> B -> Type} (f : nat -> A -> B) k l :
  Alli (fun n a => P n (f n a)) k l <~> Alli P k (mapi_rec f l k).
Admitted.

Lemma Alli_shift {A} {P : nat -> A -> Type} k l :
  Alli (fun x => P (S x)) k l ->
  Alli P (S k) l.
Admitted.

Lemma Alli_refl {A} (P : nat -> A -> Type) n (l : list A) :
  (forall n x, P n x) -> Alli P n l.
Admitted.

Lemma Alli_rev {A} {P : nat -> A -> Type} k l :
  Alli P k l ->
  Alli (fun k' => P (Nat.pred #|l| - k' + k)) 0 (List.rev l).
Admitted.

Lemma Alli_rev_inv {A: Type} (P : nat -> A -> Type) (k : nat) (l : list A) :
  Alli P k (List.rev l) ->
  Alli (fun k' : nat => P (Nat.pred #|l| - k' + k)) 0 l.
Admitted.

Lemma Alli_app_inv {A} {P} {l l' : list A} {n} : Alli P n l -> Alli P (n + #|l|) l' -> Alli P n (l ++ l').
Admitted.

Lemma Alli_rev_nth_error {A} (l : list A) n P x :
  Alli P 0 (List.rev l) ->
  nth_error l n = Some x ->
  P (#|l| - S n) x.
Admitted.

Lemma Alli_shiftn {A} {P : nat -> A -> Type} k l n :
  Alli (fun x => P (n + x)) k l -> Alli P (n + k) l.
Admitted.

Lemma Alli_shiftn_inv {A} {P : nat -> A -> Type} k l n :
  Alli P (n + k) l -> Alli (fun x => P (n + x)) k l.
Admitted.

Lemma Alli_All_mix {A} {P : nat -> A -> Type} (Q : A -> Type) k l :
  Alli P k l -> All Q l -> Alli (fun k x => (P k x) * Q x)%type k l.
Admitted.

Inductive OnOne2 {A : Type} (P : A -> A -> Type) : list A -> list A -> Type :=
| OnOne2_hd hd hd' tl : P hd hd' -> OnOne2 P (hd :: tl) (hd' :: tl)
| OnOne2_tl hd tl tl' : OnOne2 P tl tl' -> OnOne2 P (hd :: tl) (hd :: tl').
Derive Signature NoConfusion for OnOne2.

Lemma OnOne2_All_mix_left {A} {P : A -> A -> Type} {Q : A -> Type} {l l'} :
  All Q l -> OnOne2 P l l' -> OnOne2 (fun x y => (P x y * Q x)%type) l l'.
Admitted.

Lemma OnOne2_All_mix_both {A} {P : A -> A -> Type} {Q R : A -> Type} {l l'} :
  All Q l -> All R l' -> OnOne2 P l l' -> OnOne2 (fun x y => (P x y × Q x × R y)%type) l l'.
Admitted.

Lemma OnOne2_app {A} (P : A -> A -> Type) l tl tl' : OnOne2 P tl tl' -> OnOne2 P (l ++ tl) (l ++ tl').
Admitted.

Lemma OnOne2_app_r {A} (P : A -> A -> Type) l l' tl :
  OnOne2 P l l' ->
  OnOne2 P (l ++ tl) (l' ++ tl).
Admitted.

Lemma OnOne2_length {A} {P} {l l' : list A} : OnOne2 P l l' -> #|l| = #|l'|.
Admitted.

Lemma OnOne2_mapP {A B} {P} {l l' : list A} (f : A -> B) :
  OnOne2 (on_rel P f) l l' -> OnOne2 P (map f l) (map f l').
Admitted.

Lemma OnOne2_map {A B} {P : B -> B -> Type} {l l' : list A} (f : A -> B) :
  OnOne2 (on_Trel P f) l l' -> OnOne2 P (map f l) (map f l').
Admitted.

Lemma OnOne2_sym {A} (P : A -> A -> Type) l l' : OnOne2 (fun x y => P y x) l' l -> OnOne2 P l l'.
Admitted.

Lemma OnOne2_exist {A} (P : A -> A -> Type) (Q : A -> A -> Type) l l' :
  OnOne2 P l l' ->
  (forall x y, P x y -> ∑ z, Q x z × Q y z) ->
  ∑ r, (OnOne2 Q l r × OnOne2 Q l' r).
Admitted.


Lemma OnOne2_ind_l :
  forall A (R : list A -> A -> A -> Type)
    (P : forall L l l', OnOne2 (R L) l l' -> Type),
    (forall L x y l (r : R L x y), P L (x :: l) (y :: l) (OnOne2_hd _ _ _ l r)) ->
    (forall L x l l' (h : OnOne2 (R L) l l'),
        P L l l' h ->
        P L (x :: l) (x :: l') (OnOne2_tl _ x _ _ h)
    ) ->
    forall l l' h, P l l l' h.
Admitted.

Lemma OnOne2_impl_exist_and_All :
  forall A (l1 l2 l3 : list A) R1 R2 R3,
    OnOne2 R1 l1 l2 ->
    All2 R2 l3 l2 ->
    (forall x x' y, R1 x y -> R2 x' y -> ∑ z : A, R3 x z × R2 x' z) ->
    ∑ l4, OnOne2 R3 l1 l4 × All2 R2 l3 l4.
Admitted.

Lemma OnOne2_impl_exist_and_All_r :
  forall A (l1 l2 l3 : list A) R1 R2 R3,
    OnOne2 R1 l1 l2 ->
    All2 R2 l2 l3 ->
    (forall x x' y, R1 x y -> R2 y x' -> ∑ z : A, R3 x z × R2 z x') ->
    ∑ l4, ( OnOne2 R3 l1 l4 × All2 R2 l4 l3 ).
Admitted.

Lemma OnOne2_split :
  forall A (P : A -> A -> Type) l l',
    OnOne2 P l l' ->
    ∑ x y u v,
      P x y ×
      (l = u ++ x :: v /\
      l' = u ++ y :: v).
Admitted.

Lemma OnOne2_impl {A} {P Q} {l l' : list A} :
  OnOne2 P l l' ->
  (forall x y, P x y -> Q x y) ->
  OnOne2 Q l l'.
Admitted.

Lemma OnOne2_nth_error {A} (l l' : list A) n t P :
  OnOne2 P l l' ->
  nth_error l n = Some t ->
  ∑ t', (nth_error l' n = Some t') *
  ((t = t') + (P t t')).
Admitted.

Lemma OnOne2_nth_error_r {A} (l l' : list A) n t' P :
  OnOne2 P l l' ->
  nth_error l' n = Some t' ->
  ∑ t, (nth_error l n = Some t) *
  ((t = t') + (P t t')).
Admitted.

Lemma OnOne2_impl_All_r {A} (P : A -> A -> Type) (Q : A -> Type) l l' :
  (forall x y, Q x -> P x y -> Q y) ->
  OnOne2 P l l' -> All Q l -> All Q l'.
Admitted.

Lemma OnOne2_All2_All2 {A : Type} {l1 l2 l3 : list A} {R1 R2 R3  : A -> A -> Type} :
  OnOne2 R1 l1 l2 ->
  All2 R2 l1 l3 ->
  (forall x y, R2 x y -> R3 x y) ->
  (forall x y z : A, R1 x y -> R2 x z -> R3 y z) ->
  All2 R3 l2 l3.
Admitted.

Lemma OnOne2_All_All {A : Type} {l1 l2 : list A} {R1  : A -> A -> Type} {R2 R3 : A -> Type} :
  OnOne2 R1 l1 l2 ->
  All R2 l1 ->
  (forall x, R2 x -> R3 x) ->
  (forall x y : A, R1 x y -> R2 x -> R3 y) ->
  All R3 l2.
Admitted.

Lemma OnOne2_map_inv {A} {P : A -> A -> Type} (l : list A) (l' : list A) (f : A -> A) :
  (forall x y, P (f x) y -> ∑ y', y = f y') ->
  OnOne2 P (List.map f l) l' ->
  ∑ l'', OnOne2 (fun x y => P (f x) (f y)) l l''.
Admitted.

Inductive OnOne2i {A : Type} (P : nat -> A -> A -> Type) : nat -> list A -> list A -> Type :=
| OnOne2i_hd i hd hd' tl : P i hd hd' -> OnOne2i P i (hd :: tl) (hd' :: tl)
| OnOne2i_tl i hd tl tl' : OnOne2i P (S i) tl tl' -> OnOne2i P i (hd :: tl) (hd :: tl').
Derive Signature NoConfusion for OnOne2i.

Lemma OnOne2i_All_mix_left {A} {P : nat -> A -> A -> Type} {Q : A -> Type} {i l l'} :
  All Q l -> OnOne2i P i l l' -> OnOne2i (fun i x y => (P i x y * Q x)%type) i l l'.
Admitted.

Lemma OnOne2i_app {A} (P : nat -> A -> A -> Type) {i l tl tl'} :
  OnOne2i P (#|l| + i) tl tl' ->
  OnOne2i P i (l ++ tl) (l ++ tl').
Admitted.

Lemma OnOne2i_app_r {A} (P : nat -> A -> A -> Type) i l l' tl :
  OnOne2i P i l l' ->
  OnOne2i P i (l ++ tl) (l' ++ tl).
Admitted.

Lemma OnOne2i_length {A} {P} {i} {l l' : list A} : OnOne2i P i l l' -> #|l| = #|l'|.
Admitted.

Lemma OnOne2i_mapP {A B} {P} {i} {l l' : list A} (f : A -> B) :
  OnOne2i (fun i => on_rel (P i) f) i l l' -> OnOne2i P i (map f l) (map f l').
Admitted.

Lemma OnOne2i_map {A B} {P : nat -> B -> B -> Type} {i} {l l' : list A} (f : A -> B) :
  OnOne2i (fun i => on_Trel (P i) f) i l l' -> OnOne2i P i (map f l) (map f l').
Admitted.

Lemma OnOne2i_sym {A} (P : nat -> A -> A -> Type) i l l' : OnOne2i (fun i x y => P i y x) i l' l -> OnOne2i P i l l'.
Admitted.

Lemma OnOne2i_exist {A} (P : nat -> A -> A -> Type) (Q : nat -> A -> A -> Type) i l l' :
  OnOne2i P i l l' ->
  (forall i x y, P i x y -> ∑ z, Q i x z × Q i y z) ->
  ∑ r, (OnOne2i Q i l r × OnOne2i Q i l' r).
Admitted.


Lemma OnOne2i_ind_l :
  forall A (R : list A -> nat -> A -> A -> Type)
    (P : forall L i l l', OnOne2i (R L) i l l' -> Type),
    (forall L i x y l (r : R L i x y), P L i (x :: l) (y :: l) (OnOne2i_hd _ _ _ _ l r)) ->
    (forall L i x l l' (h : OnOne2i (R L) (S i) l l'),
        P L (S i) l l' h ->
        P L i (x :: l) (x :: l') (OnOne2i_tl _ i x _ _ h)
    ) ->
    forall i l l' h, P l i l l' h.
Admitted.

Lemma OnOne2i_impl_exist_and_All :
  forall A i (l1 l2 l3 : list A) R1 R2 R3,
    OnOne2i R1 i l1 l2 ->
    All2 R2 l3 l2 ->
    (forall i x x' y, R1 i x y -> R2 x' y -> ∑ z : A, R3 i x z × R2 x' z) ->
    ∑ l4, OnOne2i R3 i l1 l4 × All2 R2 l3 l4.
Admitted.

Lemma OnOne2i_impl_exist_and_All_r :
  forall A i (l1 l2 l3 : list A) R1 R2 R3,
    OnOne2i R1 i l1 l2 ->
    All2 R2 l2 l3 ->
    (forall i x x' y, R1 i x y -> R2 y x' -> ∑ z : A, R3 i x z × R2 z x') ->
    ∑ l4, ( OnOne2i R3 i l1 l4 × All2 R2 l4 l3 ).
Admitted.

Lemma OnOne2i_split :
  forall A (P : nat -> A -> A -> Type) i l l',
    OnOne2i P i l l' ->
    ∑ i x y u v,
      P i x y ×
      (l = u ++ x :: v /\
      l' = u ++ y :: v).
Admitted.

Lemma OnOne2i_impl {A} {P Q} {i} {l l' : list A} :
  OnOne2i P i l l' ->
  (forall i x y, P i x y -> Q i x y) ->
  OnOne2i Q i l l'.
Admitted.

Lemma OnOne2i_nth_error {A} (l l' : list A) i n t P :
  OnOne2i P i l l' ->
  nth_error l n = Some t ->
  ∑ t', (nth_error l' n = Some t') *
  ((t = t') + (P (i + n)%nat t t')).
Admitted.

Lemma OnOne2i_nth_error_r {A} i (l l' : list A) n t' P :
  OnOne2i P i l l' ->
  nth_error l' n = Some t' ->
  ∑ t, (nth_error l n = Some t) *
  ((t = t') + (P (i + n)%nat t t')).
Admitted.

Inductive OnOne2All {A B : Type} (P : B -> A -> A -> Type) : list B -> list A -> list A -> Type :=
| OnOne2All_hd b bs hd hd' tl : P b hd hd' -> #|bs| = #|tl| -> OnOne2All P (b :: bs) (hd :: tl) (hd' :: tl)
| OnOne2All_tl b bs hd tl tl' : OnOne2All P bs tl tl' -> OnOne2All P (b :: bs) (hd :: tl) (hd :: tl').
Derive Signature NoConfusion for OnOne2All.

Lemma OnOne2All_All_mix_left {A B} {P : B -> A -> A -> Type} {Q : A -> Type} {i l l'} :
  All Q l -> OnOne2All P i l l' -> OnOne2All (fun i x y => (P i x y * Q x)%type) i l l'.
Admitted.

Lemma OnOne2All_All2_mix_left {A B} {P : B -> A -> A -> Type} {Q : B -> A -> Type} {i l l'} :
  All2 Q i l -> OnOne2All P i l l' -> OnOne2All (fun i x y => (P i x y * Q i x)%type) i l l'.
Admitted.

Lemma OnOne2All_app {A B} (P : B -> A -> A -> Type) {i i' l tl tl'} :
  OnOne2All P i tl tl' ->
  #|i'| = #|l| ->
  OnOne2All P (i' ++ i) (l ++ tl) (l ++ tl').
Admitted.

Lemma OnOne2All_length {A B} {P} {i : list B} {l l' : list A} : OnOne2All P i l l' -> #|l| = #|l'|.
Admitted.

Lemma OnOne2All_length2 {A B} {P} {i : list B} {l l' : list A} : OnOne2All P i l l' -> #|i| = #|l|.
Admitted.

Lemma OnOne2All_mapP {A B I} {P} {i : list I} {l l' : list A} (f : A -> B) :
  OnOne2All (fun i => on_rel (P i) f) i l l' -> OnOne2All P i (map f l) (map f l').
Admitted.

Lemma OnOne2All_map {A I B} {P : I -> B -> B -> Type} {i : list I} {l l' : list A} (f : A -> B) :
  OnOne2All (fun i => on_Trel (P i) f) i l l' -> OnOne2All P i (map f l) (map f l').
Admitted.

Lemma OnOne2All_map_all {A B I I'} {P} {i : list I} {l l' : list A} (g : I -> I') (f : A -> B) :
  OnOne2All (fun i => on_Trel (P (g i)) f) i l l' -> OnOne2All P (map g i) (map f l) (map f l').
Admitted.

Lemma OnOne2All_sym {A B} (P : B -> A -> A -> Type) i l l' : OnOne2All (fun i x y => P i y x) i l' l -> OnOne2All P i l l'.
Admitted.

Lemma OnOne2All_exist {A B} (P : B -> A -> A -> Type) (Q : B -> A -> A -> Type) i l l' :
  OnOne2All P i l l' ->
  (forall i x y, P i x y -> ∑ z, Q i x z × Q i y z) ->
  ∑ r, (OnOne2All Q i l r × OnOne2All Q i l' r).
Admitted.


Lemma OnOne2All_ind_l :
  forall A B (R : list A -> B -> A -> A -> Type)
    (P : forall L i l l', OnOne2All (R L) i l l' -> Type),
    (forall L b bs x y l (r : R L b x y) (len : #|bs| = #|l|),
      P L (b :: bs) (x :: l) (y :: l) (OnOne2All_hd _ _ _ _ _ l r len)) ->
    (forall L b bs x l l' (h : OnOne2All (R L) bs l l'),
        P L bs l l' h ->
        P L (b :: bs) (x :: l) (x :: l') (OnOne2All_tl _ _ _ x _ _ h)
    ) ->
    forall i l l' h, P l i l l' h.
Admitted.

Lemma OnOne2All_impl_exist_and_All :
  forall A B (i : list B) (l1 l2 l3 : list A) R1 R2 R3,
    OnOne2All R1 i l1 l2 ->
    All2 R2 l3 l2 ->
    (forall i x x' y, R1 i x y -> R2 x' y -> ∑ z : A, R3 i x z × R2 x' z) ->
    ∑ l4, OnOne2All R3 i l1 l4 × All2 R2 l3 l4.
Admitted.

Lemma OnOne2All_impl_exist_and_All_r :
  forall A B (i : list B) (l1 l2 l3 : list A) R1 R2 R3,
    OnOne2All R1 i l1 l2 ->
    All2 R2 l2 l3 ->
    (forall i x x' y, R1 i x y -> R2 y x' -> ∑ z : A, R3 i x z × R2 z x') ->
    ∑ l4, ( OnOne2All R3 i l1 l4 × All2 R2 l4 l3 ).
Admitted.

Lemma OnOne2All_split :
  forall A B (P : B -> A -> A -> Type) i l l',
    OnOne2All P i l l' ->
    ∑ i x y u v,
      P i x y ×
      (l = u ++ x :: v /\
      l' = u ++ y :: v).
Admitted.

Lemma OnOne2All_impl {A B} {P Q} {i : list B} {l l' : list A} :
  OnOne2All P i l l' ->
  (forall i x y, P i x y -> Q i x y) ->
  OnOne2All Q i l l'.
Admitted.

Lemma OnOne2All_nth_error {A B} {i : list B} (l l' : list A) n t P :
  OnOne2All P i l l' ->
  nth_error l n = Some t ->
  ∑ t', (nth_error l' n = Some t') *
  ((t = t') + (∑ i', (nth_error i n = Some i') * P i' t t')).
Admitted.

Lemma OnOne2All_nth_error_r {A B} (i : list B) (l l' : list A) n t' P :
  OnOne2All P i l l' ->
  nth_error l' n = Some t' ->
  ∑ t, (nth_error l n = Some t) *
  ((t = t') + (∑ i', (nth_error i n = Some i') * P i' t t')).
Admitted.

Lemma OnOne2All_impl_All_r {A B} (P : B -> A -> A -> Type) (Q : A -> Type) i l l' :
  (forall i x y, Q x -> P i x y -> Q y) ->
  OnOne2All P i l l' -> All Q l -> All Q l'.
Admitted.

Lemma OnOne2All_nth_error_impl {A B} (P : A -> B -> B -> Type) il l l' :
  OnOne2All P il l l' ->
  OnOne2All (fun i x y => (∑ ni, nth_error il ni = Some i) × P i x y) il l l'.
Admitted.

Lemma All2_Forall2 {A B} {P : A -> B -> Prop} {l l'} :
  All2 P l l' -> Forall2 P l l'.
Admitted.


Lemma Forall2_All2 {A B} {P : A -> B -> Prop} l l' : Forall2 P l l' -> All2 P l l'.
Admitted.

Lemma All2_map_left_equiv {A B C} {P : A -> C -> Type} {l l'} {f : B -> A} :
  All2 (fun x y => P (f x) y) l l' <~> All2 P (map f l) l'.
Admitted.

Lemma All2_map_right_equiv {A B C} {P : A -> C -> Type} {l l'} {f : B -> C} :
  All2 (fun x y => P x (f y)) l l' <~> All2 P  l (map f l').
Admitted.

Lemma All2_map_left {A B C} {P : A -> C -> Type} {l l'} {f : B -> A} :
  All2 (fun x y => P (f x) y) l l' -> All2 P (map f l) l'.
Admitted.

Lemma All2_map_left' {A B  C} (P : A -> B -> Type) l l' (f : C -> A) :
  All2 P (map f l) l' -> All2 (fun x y => P (f x) y) l l'.
Admitted.

Lemma All2_map_right {A B C} {P : A -> C -> Type} {l l'} {f : B -> C} :
  All2 (fun x y => P x (f y)) l l' -> All2 P l (map f l').
Admitted.

Definition All2_map_left_inv {A B C} {P : A -> C -> Type} {l l'} {f : B -> A} :
  All2 P (map f l) l' -> All2 (fun x y => P (f x) y) l l' := (snd All2_map_left_equiv).
Definition All2_map_right_inv {A B C} {P : A -> C -> Type} {l l'} {f : B -> C} :
  All2 P l (map f l') -> All2 (fun x y => P x (f y)) l l' := (snd All2_map_right_equiv).

Lemma All2_undep {A B R R' l l' a}
  : @All2 A B R' l l' <~> @All2_dep A B R (fun x y _ => R' x y) l l' a.
Admitted.

Lemma Forall2_undep {A B R R' l l' a}
  : @Forall2 A B R' l l' <-> @Forall2_dep A B R (fun x y _ => R' x y) l l' a.
Admitted.

Lemma All2_All2_mix {A B} {P Q : A -> B -> Type} l l' :
  All2 P l l' ->
  All2 Q l l' ->
  All2 (fun x y => P x y × Q x y) l l'.
Admitted.

Lemma All2_mix {A} {P Q : A -> A -> Type} {l l'} :
  All2 P l l' -> All2 Q l l' -> All2 (fun x y => (P x y * Q x y))%type l l'.
Admitted.

Lemma All2_mix_inv {A} {P Q : A -> A -> Type} {l l'} :
  All2 (fun x y => (P x y * Q x y))%type l l' ->
  (All2 P l l' * All2 Q l l').
Admitted.

Lemma All_reflect_reflect_All2 {A B} R (P : A -> B -> Type) (p : A -> B -> bool) l l' :
  All (fun x => forall y, R y -> reflectT (P x y) (p x y)) l ->
  All R l' ->
  reflectT (All2 P l l') (forallb2 p l l').
Admitted.

Lemma All2_reflect_reflect_All2 {A B} (P : A -> B -> Type) (p : A -> B -> bool) l l' :
  All2 (fun x y => reflectT (P x y) (p x y)) l l' ->
  reflectT (All2 P l l') (forallb2 p l l').
Admitted.

Lemma All3_Forall3 {A B C} {P : A -> B -> C -> Prop} {l l' l''} :
  All3 P l l' l'' -> Forall3 P l l' l''.
Admitted.


Lemma Forall3_All3 {A B C} {P : A -> B -> C -> Prop} l l' l'' : Forall3 P l l' l'' -> All3 P l l' l''.
Admitted.

Lemma All_map_eq {A B} {l} {f g : A -> B} :
  All (fun x => f x = g x) l ->
  map f l = map g l.
Admitted.

Lemma All_map_id {A} {l} {f : A -> A} :
  All (fun x => f x = x) l ->
  map f l = l.
Admitted.

Lemma forall_forallb_map_spec {A B : Type} {P : A -> Prop} {p : A -> bool}
      {l : list A} {f g : A -> B} :
    Forall P l -> is_true (forallb p l) ->
    (forall x : A, P x -> is_true (p x) -> f x = g x) -> map f l = map g l.
Admitted.

Lemma forall_forallb_forallb_spec {A : Type} {P : A -> Prop} {p : A -> bool}
      {l : list A} {f : A -> bool} :
    Forall P l -> is_true (forallb p l) ->
    (forall x : A, P x -> is_true (p x) -> is_true (f x)) -> is_true (forallb f l).
Admitted.

Lemma Forall_map {A B} (P : B -> Prop) (f : A -> B) l : Forall (fun x => P (f x)) l -> Forall P (map f l).
Admitted.

Lemma Forall_map_inv {A B} (P : B -> Prop) (f : A -> B) l : Forall P (map f l) -> Forall (fun x => P (f x)) l.
Admitted.

Lemma Forall_impl_Forall {A} {P Q : A -> Prop} {l} :
  Forall P l -> Forall (fun x => P x -> Q x) l -> Forall Q l.
Admitted.

Lemma Forall_impl {A} {P Q : A -> Prop} {l} :
  Forall P l -> (forall x, P x -> Q x) -> Forall Q l.
Admitted.

Lemma Forall_app {A} (P : A -> Prop) l l' : Forall P (l ++ l') -> Forall P l /\ Forall P l'.
Admitted.

Lemma Forall_last {A} (P : A -> Prop) a l : l <> [] -> Forall P l -> P (last l a).
Admitted.

Lemma All_safe_nth {A} {P : A -> Type} {Γ n} (isdecl : n < length Γ) : All P Γ ->
   P (safe_nth Γ (exist _ n isdecl)).
Admitted.

Definition size := nat.





Section All_size.
  Context {A} (P : A -> Type) (fn : forall x1, P x1 -> size).
  Fixpoint all_size {l1 : list A} (f : All P l1) : size :=
  match f with
  | All_nil => 0
  | All_cons px pl => fn _ px + all_size pl
  end.
End All_size.

Section Alli_size.
  Context {A} (P : nat -> A -> Type) (fn : forall n x1, P n x1 -> size).
  Fixpoint alli_size {l1 : list A} {n} (f : Alli P n l1) : size :=
  match f with
  | Alli_nil => 0
  | Alli_cons px pl => fn _ _ px + alli_size pl
  end.
End Alli_size.

Section All2_size.
  Context {A B} (P : A -> B -> Type) (fn : forall x1 x2, P x1 x2 -> size).
  Fixpoint all2_size {l1 l2} (f : All2 P l1 l2) : size :=
  match f with
  | All2_nil => 0
  | All2_cons rxy rll' => fn _ _ rxy + all2_size rll'
  end.
End All2_size.

Section All2i_size.
  Context {A B} (P : nat -> A -> B -> Type) (fn : forall i x1 x2, P i x1 x2 -> size).
  Fixpoint all2i_size {n l1 l2} (f : All2i P n l1 l2) : size :=
  match f with
  | All2i_nil => 0
  | All2i_cons rxy rll' => fn _ _ _ rxy + all2i_size rll'
  end.
End All2i_size.

Lemma All2i_impl {A B R R' n l l'} :
    @All2i A B R n l l' ->
    (forall i x y, R i x y -> R' i x y) ->
    All2i R' n l l'.
Admitted.

Lemma All2_non_nil {A B} (P : A -> B -> Type) (l : list A) (l' : list B) :
  All2 P l l' -> l <> nil -> l' <> nil.
Admitted.

Lemma nth_error_forall {A} {P : A -> Prop} {l : list A} {n x} :
  nth_error l n = Some x -> Forall P l -> P x.
Admitted.

Lemma nth_error_all {A} {P : A -> Type} {l : list A} {n x} :
  nth_error l n = Some x -> All P l -> P x.
Admitted.

Lemma nth_error_alli {A} {P : nat -> A -> Type} {l : list A} {n x} {k} :
  nth_error l n = Some x -> Alli P k l -> P (k + n) x.
Admitted.

Lemma All_map_id' {A} {P : A -> Type} {l} {f} :
  All P l ->
  (forall x, P x -> f x = x) ->
  map f l = l.
Admitted.

Lemma Alli_mapi_spec {A B} {P : nat -> A -> Type} {l} {f g : nat -> A -> B} {n} :
  Alli P n l -> (forall n x, P n x -> f n x = g n x) ->
  mapi_rec f l n = mapi_rec g l n.
Admitted.

Lemma Alli_mapi_id {A} {P : nat -> A -> Type} {l} {f} {n} :
  Alli P n l ->
  (forall n x, P n x -> f n x = x) ->
  mapi_rec f l n = l.
Admitted.

Lemma Alli_map_id {A} {P : nat -> A -> Type} {l} {f} {n} :
  Alli P n l ->
  (forall n x, P n x -> f x = x) ->
  map f l = l.
Admitted.

Lemma forallb_map {A B} (f : A -> B) (l : list A) p :
  forallb p (map f l) = forallb (fun x => p (f x)) l.
Admitted.

Lemma forallb_mapi {A B} (f f' : nat -> A -> B) (g g' : B -> bool) l :
  (forall n x, nth_error l n = Some x -> g (f n x) = g' (f' n x)) ->
  forallb g (mapi f l) = forallb g' (mapi f' l).
Admitted.

Lemma forallb_mapi_impl {A B} (f f' : nat -> A -> B) (g g' : B -> bool) l :
  (forall n x, nth_error l n = Some x -> g (f n x) -> g' (f' n x)) ->
  forallb g (mapi f l) -> forallb g' (mapi f' l).
Admitted.

Lemma All_forallb' {A} P (l : list A) (p : A -> bool) :
  All P l ->
  (forall x, P x -> is_true (p x)) ->
  is_true (forallb p l).
Admitted.

Lemma forallb_Forall' {A} (P : A -> Prop) (l : list A) p :
  is_true (forallb p l) ->
  (forall x, is_true (p x) -> P x) ->
  Forall P l.
Admitted.

Lemma forallb_skipn {A} (p : A -> bool) n l :
  is_true (forallb p l) ->
  is_true (forallb p (skipn n l)).
Admitted.

Lemma Forall_forallb_eq_forallb {A} (P : A -> Prop) (p q : A -> bool) l :
  Forall P l ->
  (forall x, P x -> p x = q x) ->
  forallb p l = forallb q l.
Admitted.

Lemma forallb2_length {A B} (p : A -> B -> bool) l l' : is_true (forallb2 p l l') -> length l = length l'.
Admitted.

Lemma map_option_Some X (L : list (option X)) t : map_option_out L = Some t -> All2 (fun x y => x = Some y) L t.
Admitted.

Lemma Alli_map_option_out_mapi_Some_spec {A B} (f g : nat -> A -> option B) l t P :
  Alli P 0 l ->
  (forall i x t, P i x -> f i x = Some t -> g i x = Some t) ->
  map_option_out (mapi f l) = Some t ->
  map_option_out (mapi g l) = Some t.
Admitted.


Lemma All_mapi {A B} P f l k :
  Alli (fun i x => P (f i x)) k l -> All P (@mapi_rec A B f l k).
Admitted.

Lemma All_Alli {A} {P : A -> Type} {Q : nat -> A -> Type} {l n} :
  All P l ->
  (forall n x, P x -> Q n x) ->
  Alli Q n l.
Admitted.

Lemma All2_All_left_pack {A B} {P : A -> B -> Type} {l l'} :
  All2 P l l' -> Alli (fun i x => ∑ y, (nth_error l i = Some x /\ nth_error l' i = Some y) * P x y) 0 l.
Admitted.

Lemma map_option_out_All {A} P (l : list (option A)) l' :
  (All (on_Some_or_None P) l) ->
  map_option_out l = Some l' ->
  All P l'.
Admitted.

Lemma Forall_forallb {A} P (l : list A) (p : A -> bool) :
  Forall P l ->
  (forall x, P x -> is_true (p x)) ->
  is_true (forallb p l).
Admitted.

Lemma Forall2_right {A B} (P : B -> Prop) (l : list A) (l' : list B) :
  Forall2 (fun x y => P y) l l' -> List.Forall (fun x => P x) l'.
Admitted.

Lemma Forall2_non_nil {A B} (P : A -> B -> Prop) (l : list A) (l' : list B) :
  Forall2 P l l' -> l <> nil -> l' <> nil.
Admitted.

Lemma Forall2_length {A B} {P : A -> B -> Prop} {l l'} : Forall2 P l l' -> #|l| = #|l'|.
Admitted.

Lemma Forall2_triv {A B} {l : list A} {l' : list B} : #|l| = #|l'| -> Forall2 (fun _ _ => True) l l'.
Admitted.

Lemma Forall2_app_r {A} (P : A -> A -> Prop) l l' r r' : Forall2 P (l ++ [r]) (l' ++ [r']) ->
                                                         (Forall2 P l l') /\ (P r r').
Admitted.

Lemma Forall2_map_inv :
  forall {A B A' B'} (R : A' -> B' -> Prop) (f : A -> A')
    (g : B -> B') (l : list A) (l' : list B),
    Forall2 R (map f l) (map g l') ->
    Forall2 (fun x y => R (f x) (g y)) l l'.
Admitted.

Lemma Forall2_tip_l {A B} {R : A -> B -> Prop} x y : Forall2 R [x] y -> exists y', (y = [y']) /\ R x y'.
Admitted.

Lemma All2_length {A B} {P : A -> B -> Type} {l l'} : All2 P l l' -> #|l| = #|l'|.
Admitted.

Lemma All2_nth_error_None {A B} {P : A -> B -> Type} {l l'} n :
  All2 P l l' ->
  nth_error l n = None ->
  nth_error l' n = None.
Admitted.

Lemma All2_app_inv_l : forall (A B : Type) (R : A -> B -> Type),
    forall l1 l2 r,
      All2 R (l1 ++ l2) r ->
      ∑ r1 r2,
        (r = r1 ++ r2)%list ×
        All2 R l1 r1 ×
        All2 R l2 r2.
Admitted.

Lemma All2_app_inv_r :
  forall A B R l r1 r2,
    @All2 A B R l (r1 ++ r2) ->
    ∑ l1 l2,
      (l = l1 ++ l2)%list ×
      All2 R l1 r1 ×
      All2 R l2 r2.
Admitted.

Lemma All2_app_inv :
  forall A B (P : A -> B -> Type) l1 l2 r1 r2,
    #|l1| = #|r1| ->
    All2 P (l1 ++ l2) (r1 ++ r2) ->
    All2 P l1 r1 × All2 P l2 r2.
Admitted.

Lemma All2_rect_rev : forall (A B : Type) (R : A -> B -> Type) (P : forall (l : list A) (l0 : list B), Type),
    P [] [] ->
    (forall (x : A) (y : B) (l : list A) (l' : list B) (r : R x y) (a : All2 R l l'),
        P l l' -> P (l ++ [x])%list (l' ++ [y]))%list ->
    forall (l : list A) (l0 : list B) (a : All2 R l l0), P l l0.
Admitted.

Lemma All2_ind_rev : forall (A B : Type) (R : A -> B -> Type) (P : forall (l : list A) (l0 : list B), Prop),
    P [] [] ->
    (forall (x : A) (y : B) (l : list A) (l' : list B) (r : R x y) (a : All2 R l l'),
        P l l' -> P (l ++ [x])%list (l' ++ [y]))%list ->
    forall (l : list A) (l0 : list B) (a : All2 R l l0), P l l0.
Admitted.

Lemma All2_app :
  forall (A B : Type) (R : A -> B -> Type),
  forall l1 l2 l1' l2',
    All2 R l1 l1' ->
    All2 R l2 l2' ->
    All2 R (l1 ++ l2) (l1' ++ l2').
Admitted.

Lemma All2_rev (A B : Type) (P : A -> B -> Type) l l' :
  All2 P l l' ->
  All2 P (List.rev l) (List.rev l').
Admitted.

Lemma All_All2_flex {A B} (P : A -> Type) (Q : A -> B -> Type) l l' :
  All P l ->
  (forall x y, In y l' -> P x -> Q x y) ->
  length l' = length l ->
  All2 Q l l'.
Admitted.

Lemma All_All_All2 {A} (P Q : A -> Prop) l l' :
  All P l -> All Q l' -> #|l| = #|l'| -> All2 (fun x y => P x /\ Q y) l l'.
Admitted.

Lemma All2_impl_In {A B} {P Q : A -> B -> Type} {l l'} :
  All2 P l l' ->
  (forall x y, In x l -> In y l' -> P x y -> Q x y) ->
  All2 Q l l'.
Admitted.

Lemma Forall2_skipn A B (P : A -> B -> Prop) l l' n:
  Forall2 P l l' -> Forall2 P (skipn n l) (skipn n l').
Admitted.

Lemma Forall2_nth_error_Some {A B} {P : A -> B -> Prop} {l l'} n t :
  Forall2 P l l' ->
  nth_error l n = Some t ->
  exists t' : B, (nth_error l' n = Some t') /\ P t t'.
Admitted.

Lemma Forall2_impl {A B} {P Q : A -> B -> Prop} {l l'} :
    Forall2 P l l' ->
    (forall x y, P x y -> Q x y) ->
    Forall2 Q l l'.
Admitted.

Lemma app_Forall :
  forall A P (l1 l2 : list A),
    Forall P l1 ->
    Forall P l2 ->
    Forall P (l1 ++ l2).
Admitted.

Lemma rev_Forall :
  forall A P l,
    Forall P l ->
    Forall P (@List.rev A l).
Admitted.

Lemma Forall2_impl' {A B} {P Q : A -> B -> Prop} {l l'} :
    Forall2 P l l' ->
    Forall (fun x => forall y, P x y -> Q x y) l ->
    Forall2 Q l l'.
Admitted.

Lemma Forall2_Forall {A R l} : @Forall2 A A R l l -> Forall (fun x => R x x) l.
Admitted.

Lemma All2_All {A R l} : @All2 A A R l l -> All (fun x => R x x) l.
Admitted.

Lemma Forall_Forall2 {A R l} : Forall (fun x => R x x) l -> @Forall2 A A R l l.
Admitted.

Lemma Forall_True {A} {P : A -> Prop} l : (forall x, P x) -> Forall P l.
Admitted.

Lemma Forall2_True {A B} {R : A -> B -> Prop} l l'
  : (forall x y, R x y) -> #|l| = #|l'| -> Forall2 R l l'.
Admitted.

Lemma Forall2_map {A B A' B'} (R : A' -> B' -> Prop) (f : A -> A') (g : B -> B') l l'
  : Forall2 (fun x y => R (f x) (g y)) l l' -> Forall2 R (map f l) (map g l').
Admitted.

Lemma Forall2_map_right {A B C} (P : A -> B -> Prop) (f : C -> B) (l : list A) (l' : list C) :
  Forall2 P l (map f l') <-> Forall2 (fun x y => P x (f y)) l l'.
Admitted.

Lemma Forall2_and {A B} (R R' : A -> B -> Prop) l l'
  : Forall2 R l l' -> Forall2 R' l l' -> Forall2 (fun x y => R x y /\ R' x y) l l'.
Admitted.

Lemma Forall_Forall2_and {A B} {R : A -> B -> Prop} {P l l'}
  : Forall2 R l l' -> Forall P l -> Forall2 (fun x y => P x /\ R x y) l l'.
Admitted.

Lemma Forall_Forall2_and' {A B} {R : A -> B -> Prop} {P l l'}
  : Forall2 R l l' -> Forall P l' -> Forall2 (fun x y => R x y /\ P y) l l'.
Admitted.

Lemma Forall2_nth :
  forall A B P l l' n (d : A) (d' : B),
    Forall2 P l l' ->
    P d d' ->
    P (nth n l d) (nth n l' d').
Admitted.

Lemma Forall2_nth_error_Some_l :
  forall A B (P : A -> B -> Prop) l l' n t,
    nth_error l n = Some t ->
    Forall2 P l l' ->
    exists t',
      nth_error l' n = Some t' /\
      P t t'.
Admitted.

Lemma Forall2_nth_error_Some_r :
  forall A B (P : A -> B -> Prop) l l' n t,
    nth_error l' n = Some t ->
    Forall2 P l l' ->
    exists t',
      nth_error l n = Some t' /\
      P t' t.
Admitted.

Lemma Forall2_nth_error_None_l :
  forall A B (P : A -> B -> Prop) l l' n,
    nth_error l n = None ->
    Forall2 P l l' ->
    nth_error l' n = None.
Admitted.

Lemma Forall2_trans :
  forall A (P : A -> A -> Prop),
    RelationClasses.Transitive P ->
    RelationClasses.Transitive (Forall2 P).
Admitted.

Lemma Forall2_rev :
  forall A B R l l',
    @Forall2 A B R l l' ->
    Forall2 R (List.rev l) (List.rev l').
Admitted.


Lemma Forall2_mapi :
  forall A B A' B' (R : A' -> B' -> Prop) (f : nat -> A -> A') (g : nat -> B -> B') l l',
    Forall2 (fun x y => forall i, R (f i x) (g i y)) l l' ->
    Forall2 R (mapi f l) (mapi g l').
Admitted.

Lemma All2_trans {A} (P : A -> A -> Type) :
  CRelationClasses.Transitive P ->
  CRelationClasses.Transitive (All2 P).
Admitted.

Lemma All2_trans' {A B C}
      (P : A -> B -> Type) (Q : B -> C -> Type) (R : A -> C -> Type)
      (H : forall x y z, P x y × Q y z -> R x z) {l1 l2 l3}
  : All2 P l1 l2 -> All2 Q l2 l3 -> All2 R l1 l3.
Admitted.

Lemma All2_nth :
  forall A B P l l' n (d : A) (d' : B),
    All2 P l l' ->
    P d d' ->
    P (nth n l d) (nth n l' d').
Admitted.

Lemma All2_mapi :
  forall A B A' B' (R : A' -> B' -> Type) (f : nat -> A -> A') (g : nat -> B -> B') l l',
    All2 (fun x y => forall i, R (f i x) (g i y)) l l' ->
    All2 R (mapi f l) (mapi g l').
Admitted.

Lemma All2_skipn :
  forall A B R l l' n,
    @All2 A B R l l' ->
    @All2 A B R (skipn n l) (skipn n l').
Admitted.

Lemma All2_right_triv {A B} {l : list A} {l' : list B} P :
  All P l' -> #|l| = #|l'| -> All2 (fun _ b => P b) l l'.
Admitted.

Lemma All_repeat {A} {n P} x :
  P x -> @All A P (repeat x n).
Admitted.

Lemma Forall2_Forall_right {A B} {P : A -> B -> Prop} {Q : B -> Prop} {l l'} :
  Forall2 P l l' ->
  (forall x y, P x y -> Q y) ->
  Forall Q l'.
Admitted.

Lemma All2_from_nth_error A B L1 L2 (P : A -> B -> Type) :
  #|L1| = #|L2| ->
                (forall n x1 x2, n < #|L1| -> nth_error L1 n = Some x1
                                      -> nth_error L2 n = Some x2
                                      -> P x1 x2) ->
                All2 P L1 L2.
Admitted.

Lemma All2_nth_error {A B} {P : A -> B -> Type} {l l'} n t t' :
  All2 P l l' ->
  nth_error l n = Some t ->
  nth_error l' n = Some t' ->
  P t t'.
Admitted.

Lemma All2_dep_from_nth_error A B L1 L2 (P : A -> B -> Type) (P' : forall a b, P a b -> Type) (H : All2 P L1 L2) :
  (forall n x1 x2 (_ : n < #|L1|)
          (H1 : nth_error L1 n = Some x1)
          (H2 : nth_error L2 n = Some x2),
      P' x1 x2 (All2_nth_error n x1 x2 H H1 H2)) ->
  All2_dep P' H.
Admitted.

Lemma All2_dep_nth_error {A B} {P : A -> B -> Type} {P' : forall a b, P a b -> Type} {l l'} n t t' {H : All2 P l l'}
  (H' : All2_dep P' H)
  (H1 : nth_error l n = Some t)
  (H2 : nth_error l' n = Some t') :
  P' t t' (All2_nth_error n t t' H H1 H2).
Admitted.

Lemma Forall2_from_nth_error A B L1 L2 (P : A -> B -> Prop) :
  #|L1| = #|L2| ->
                (forall n x1 x2, n < #|L1| -> nth_error L1 n = Some x1
                                      -> nth_error L2 n = Some x2
                                      -> P x1 x2) ->
                Forall2 P L1 L2.
Admitted.

Lemma Forall2_nth_error {A B} {P : A -> B -> Prop} {l l'} n t t' :
  Forall2 P l l' ->
  nth_error l n = Some t ->
  nth_error l' n = Some t' ->
  P t t'.
Admitted.

Lemma Forall2_dep_from_nth_error A B L1 L2 (P : A -> B -> Prop) (P' : forall a b, P a b -> Prop) (H : Forall2 P L1 L2) :
  (forall n x1 x2 (_ : n < #|L1|)
          (H1 : nth_error L1 n = Some x1)
          (H2 : nth_error L2 n = Some x2),
      P' x1 x2 (Forall2_nth_error n x1 x2 H H1 H2)) ->
  Forall2_dep P' H.
Admitted.

Lemma Forall2_dep_nth_error {A B} {P : A -> B -> Prop} {P' : forall a b, P a b -> Prop} {l l'} n t t' {H : Forall2 P l l'}
  (H' : Forall2_dep P' H)
  (H1 : nth_error l n = Some t)
  (H2 : nth_error l' n = Some t') :
  P' t t' (Forall2_nth_error n t t' H H1 H2).
Admitted.
Import MetaRocq.Utils.MRSquash.

Lemma All2_swap :
  forall A B R l l',
    @All2 A B R l l' ->
    All2 (fun x y => R y x) l' l.
Admitted.

Lemma All2_firstn :
  forall A B R l l' n,
    @All2 A B R l l' ->
    @All2 A B R (firstn n l) (firstn n l').
Admitted.

Lemma All2_impl' {A B} {P Q : A -> B -> Type} {l : list A} {l' : list B}
  : All2 P l l' -> All (fun x => forall y, P x y -> Q x y) l -> All2 Q l l'.
Admitted.

Lemma All_All2 {A} {P : A -> A -> Type} {Q} {l : list A} :
  All Q l ->
  (forall x, Q x -> P x x) ->
  All2 P l l.
Admitted.


Lemma All2_nth_error_Some {A B} {P : A -> B -> Type} {l l'} n t :
  All2 P l l' ->
  nth_error l n = Some t ->
  { t' : B & (nth_error l' n = Some t') * P t t'}%type.
Admitted.

Lemma All2_nth_error_Some_r {A B} {P : A -> B -> Type} {l l'} n t' :
  All2 P l l' ->
  nth_error l' n = Some t' ->
  ∑ t, nth_error l n = Some t × P t t'.
Admitted.

Lemma All2_same {A} {P : A -> A -> Type} l : (forall x, P x x) -> All2 P l l.
Admitted.

Lemma All2_prod {A B} P Q (l : list A) (l' : list B) : All2 P l l' -> All2 Q l l' -> All2 (Trel_conj P Q) l l'.
Admitted.

Lemma All2_prod_inv :
  forall A B (P : A -> B -> Type) Q l l',
    All2 (Trel_conj P Q) l l' ->
    All2 P l l' × All2 Q l l'.
Admitted.

Lemma All2_sym {A} (P : A -> A -> Type) l l' :
  All2 P l l' -> All2 (fun x y => P y x) l' l.
Admitted.

Lemma All2_symP {A} (P : A -> A -> Type) :
  CRelationClasses.Symmetric P ->
  CRelationClasses.Symmetric (All2 P).
Admitted.

Lemma Forall2_symP {A} (P : A -> A -> Prop) :
  RelationClasses.Symmetric P ->
  RelationClasses.Symmetric (Forall2 P).
Admitted.

Lemma All_All2_All2_mix {A B} (P : B -> B -> Type) (Q R : A -> B -> Type) l l' l'' :
  All (fun x => forall y z, Q x y -> R x z -> ∑ v, P y v * P z v) l -> All2 Q l l' -> All2 R l l'' ->
  ∑ l''', All2 P l' l''' * All2 P l'' l'''.
Admitted.

Lemma All2_nth_error_Some_right {A} {P : A -> A -> Type} {l l'} n t :
  All2 P l l' ->
  nth_error l' n = Some t ->
  { t' : A & (nth_error l n = Some t') * P t' t}%type.
Admitted.

Lemma All_forallb_map_spec {A B : Type} {P : A -> Type} {p : A -> bool}
      {l : list A} {f g : A -> B} :
    All P l -> forallb p l ->
    (forall x : A, P x -> p x -> f x = g x) -> map f l = map g l.
Admitted.

Lemma All_forallb_forallb_spec {A : Type} {P : A -> Type} {p : A -> bool}
      {l : list A} {f : A -> bool} :
    All P l -> forallb p l ->
    (forall x : A, P x -> p x -> f x) -> forallb f l.
Admitted.

Lemma All_forallb_eq_forallb {A} (P : A -> Type) (p q : A -> bool) l :
  All P l ->
  (forall x, P x -> p x = q x) ->
  forallb p l = forallb q l.
Admitted.

Lemma forallb_nth {A} (l : list A) (n : nat) P d :
  forallb P l -> n < #|l| -> exists x, (nth n l d = x) /\ P x.
Admitted.

Lemma forallb_nth' {A} {l : list A} {P} n d :
  forallb P l -> {exists x, (nth n l d = x) /\ P x} + {nth n l d = d}.
Admitted.

Lemma forallb_impl {A} (p q : A -> bool) l :
  (forall x, In x l -> p x -> q x) -> forallb p l -> forallb q l.
Admitted.

Lemma forallb_iff {A} (p q : A -> bool) l :
  (forall x, In x l -> p x <-> q x) -> forallb p l = forallb q l.
Admitted.

Lemma All2_eq :
  forall A (l l' : list A),
    All2 eq l l' ->
    l = l'.
Admitted.

Lemma All_prod_inv :
  forall A P Q l,
    All (fun x : A => P x × Q x) l ->
    All P l × All Q l.
Admitted.

Lemma All_pair {A} (P Q : A -> Type) l :
  All (fun x => P x × Q x) l <~> (All P l × All Q l).
Admitted.

Lemma All_prod :
  forall A P Q l,
    All P l ->
    All Q l ->
    All (fun x : A => P x × Q x) l.
Admitted.

Lemma All2i_mapi :
  forall A B C D R f g l l',
    @All2i A B (fun i x y => R i (f i x) (g i y)) 0 l l' ->
    @All2i C D R 0 (mapi f l) (mapi g l').
Admitted.

Lemma All2i_app :
  forall A B R n l1 l2 r1 r2,
    @All2i A B R n l1 r1 ->
    All2i R (n + #|l1|) l2 r2 ->
    All2i R n (l1 ++ l2) (r1 ++ r2).
Admitted.



Lemma All2i_mapi_rec {A B C D} (R : nat -> A -> B -> Type)
      (l : list C) (l' : list D) (f : nat -> C -> A) (g : nat -> D -> B) n :
  All2i (fun n x y => R n (f n x) (g n y)) n l l' ->
  All2i R n (mapi_rec f l n) (mapi_rec g l' n).
Admitted.

Lemma All2i_trivial {A B} (R : nat -> A -> B -> Type) (H : forall n x y, R n x y) n l l' :
  #|l| = #|l'| -> All2i R n l l'.
Admitted.

Lemma All2i_rev :
  forall A B R l l' n,
    @All2i A B R n l l' ->
    All2i (fun i x y => R (n + #|l| - (S i)) x y) 0 (List.rev l) (List.rev l').
Admitted.

Section All2i_len.

  

  Hint Constructors All2i : pcuic.

  Inductive All2i_len {A B : Type} (R : nat -> A -> B -> Type) : list A -> list B -> Type :=
    All2i_len_nil : All2i_len R [] []
  | All2i_len_cons : forall (x : A) (y : B) (l : list A) (l' : list B),
          R (List.length l) x y -> All2i_len R l l' -> All2i_len R (x :: l) (y :: l').
  Hint Constructors All2i_len : core pcuic.

  Lemma All2i_len_app {A B} (P : nat -> A -> B -> Type) l0 l0' l1 l1' :
    All2i_len P l0' l1' ->
    All2i_len (fun n => P (n + #|l0'|)) l0 l1 ->
    All2i_len P (l0 ++ l0') (l1 ++ l1').
Admitted.

  Lemma All2i_len_length {A B} (P : nat -> A -> B -> Type) l l' :
    All2i_len P l l' -> #|l| = #|l'|.
Admitted.

  Lemma All2i_len_impl {A B} (P Q : nat -> A -> B -> Type) l l' :
    All2i_len P l l' -> (forall n x y, P n x y -> Q n x y) -> All2i_len Q l l'.
Admitted.

  Lemma All2i_len_rev {A B} (P : nat -> A -> B -> Type) l l' :
    All2i_len P l l' ->
    All2i_len (fun n => P (#|l| - S n)) (List.rev l) (List.rev l').
Admitted.

  Lemma All2i_rev_ctx {A B} (R : nat -> A -> B -> Type) (n : nat) (l : list A) (l' : list B) :
    All2i_len R l l' -> All2i R 0 (List.rev l) (List.rev l').
Admitted.

  Lemma All2i_rev_ctx_gen {A B} (R : nat -> A -> B -> Type) (n : nat) (l : list A) (l' : list B) :
    All2i R n l l' -> All2i_len (fun m => R (n + m)) (List.rev l) (List.rev l').
Admitted.

  Lemma All2i_rev_ctx_inv {A B} (R : nat -> A -> B -> Type) (l : list A) (l' : list B) :
    All2i R 0 l l' -> All2i_len R (List.rev l) (List.rev l').
Admitted.

End All2i_len.

Lemma All_sq {A} {P : A -> Type} {l}
  : All (fun x => ∥ P x ∥) l -> ∥ All P l ∥.
Admitted.

Lemma All2_sq {A B} {R : A -> B -> Type} {l1 l2}
  : All2 (fun x y => ∥ R x y ∥) l1 l2 -> ∥ All2 R l1 l2 ∥.
Admitted.

Lemma All_All2_refl {A : Type} {R} {l : list A} :
  All (fun x : A => R x x) l -> All2 R l l.
Admitted.

Lemma All2_app_r {A} (P : A -> A -> Type) l l' r r' :
  All2 P (l ++ [r]) (l' ++ [r']) -> (All2 P l l') * (P r r').
Admitted.

Lemma Forall2_eq {A} l l'
  : @Forall2 A A eq l l' -> l = l'.
Admitted.

Lemma Forall2_map' {A B A' B'} (R : A' -> B' -> Prop) (f : A -> A') (g : B -> B') l l'
  : Forall2 R (map f l) (map g l') -> Forall2 (fun x y => R (f x) (g y)) l l'.
Admitted.

Lemma Forall2_same :
  forall A (P : A -> A -> Prop) l,
    (forall x, P x x) ->
    Forall2 P l l.
Admitted.

Lemma Forall2_sym :
  forall A B (P : A -> B -> Prop) l l',
    Forall2 P l l' ->
    Forall2 (fun x y => P y x) l' l.
Admitted.

Lemma forallb2_Forall2 :
  forall A B (p : A -> B -> bool) l l',
    forallb2 p l l' ->
    Forall2 (fun x y => p x y) l l'.
Admitted.

Lemma forallb2P {A B} (P : A -> B -> Prop) (p : A -> B -> bool) l l' :
  (forall x y, reflect (P x y) (p x y)) ->
  reflect (Forall2 P l l') (forallb2 p l l').
Admitted.

Lemma forallb3_Forall3 :
  forall A B C (p : A -> B -> C -> bool) l l' l'',
    forallb3 p l l' l'' ->
    Forall3 (fun x y z => p x y z) l l' l''.
Admitted.

Lemma forallb3P {A B C} (P : A -> B -> C -> Prop) (p : A -> B -> C -> bool) l l' l'' :
  (forall x y z, reflect (P x y z) (p x y z)) ->
  reflect (Forall3 P l l' l'') (forallb3 p l l' l'').
Admitted.



Lemma All2_In {A B} (P : A -> B -> Type) l l' x : In x l ->
  All2 P l l' -> ∥ ∑ x', P x x' ∥.
Admitted.

Lemma All2_In_right {A B} (P : A -> B -> Type) l l' x' : In x' l' ->
  All2 P l l' -> ∥ ∑ x, P x x' ∥.
Admitted.

Lemma All_In {A} (P : A -> Type) l x : In x l ->
  All P l -> ∥ P x ∥.
Admitted.

Lemma In_Forall {A} {P : A -> Prop} l :
  (forall x, In x l -> P x) ->
  Forall P l.
Admitted.

Lemma All_forall {X Y} (f:X->Y->Prop) xs:
  All (fun a => forall b, f a b) xs ->
  (forall b, All (fun a => f a b) xs).
Admitted.

Lemma All2i_map {A B C D} (R : nat -> C -> D -> Type) (f : A -> C) (g : B -> D) n l l' :
  All2i (fun i x y => R i (f x) (g y)) n l l' -> All2i R n (map f l) (map g l').
Admitted.

Lemma All2i_map_right {B C D} (R : nat -> C -> D -> Type) (g : B -> D) n l l' :
  All2i (fun i x y => R i x (g y)) n l l' -> All2i R n l (map g l').
Admitted.

Lemma All2i_nth_impl_gen {A B} (R : nat -> A -> B -> Type) n l l' :
  All2i R n l l' ->
  All2i (fun i x y =>
    (if i <? n then False
    else nth_error l (i - n) = Some x) × R i x y) n l l'.
Admitted.

Lemma All2i_nth_hyp {A B} (R : nat -> A -> B -> Type) l l' :
  All2i R 0 l l' ->
  All2i (fun i x y => nth_error l i = Some x × R i x y) 0 l l'.
Admitted.

Lemma All2i_nth_error_l {A B} (P : nat -> A -> B -> Type) l l' n x k :
  All2i P k l l' ->
  nth_error l n = Some x ->
  ∑ c, nth_error l' n = Some c × P (k + n)%nat x c.
Admitted.

Lemma All2i_nth_error_r {A B} (P : nat ->A -> B -> Type) l l' n x k :
  All2i P k l l' ->
  nth_error l' n = Some x ->
  ∑ c, nth_error l n = Some c × P (k + n)%nat c x.
Admitted.

Lemma All2i_app_inv_l {X Y} (R : nat -> X -> Y -> Type) n xs xs' l :
  All2i R n (xs ++ xs') l ->
  ∑ ys ys',
  l = ys ++ ys' × All2i R n xs ys × All2i R (n + #|xs|) xs' ys'.
Admitted.

Lemma All2i_app_inv_r {X Y} (R : nat -> X -> Y -> Type) n l ys ys' :
  All2i R n l (ys ++ ys') ->
  ∑ xs xs',
  l = xs ++ xs' × All2i R n xs ys × All2i R (n + #|xs|) xs' ys'.
Admitted.

Lemma All2i_length {X Y} (R : nat -> X -> Y -> Type) n xs ys :
  All2i R n xs ys ->
  #|xs| = #|ys|.
Admitted.

Lemma All2i_app_inv {X Y} (R : nat -> X -> Y -> Type) n xs xs' ys ys' :
  All2i R n (xs ++ xs') (ys ++ ys') ->
  #|xs| = #|ys| ->
                All2i R n xs ys × All2i R (n + #|xs|) xs' ys'.
Admitted.

Lemma All2i_All2 {A B} {P : nat -> A -> B -> Type} {Q : A -> B -> Type} n l l' :
  All2i P n l l' ->
  (forall i x y, P i x y -> Q x y) ->
  All2 Q l l'.
Admitted.

Lemma All2i_All2_All2i_All2i {A B C n} {P : nat -> A -> B -> Type} {Q : B -> C -> Type} {R : nat -> A -> C -> Type}
  {S : nat -> A -> C -> Type} {l l' l''} :
  All2i P n l l' ->
  All2 Q l' l'' ->
  All2i R n l l'' ->
  (forall n x y z, P n x y -> Q y z -> R n x z -> S n x z) ->
  All2i S n l l''.
Admitted.

Lemma All2i_All2_All2 {A B C} {P : nat -> A -> B -> Type} {Q R : B -> C -> Type} {n l l' l''} :
  All2i P n l l' ->
  All2 Q l' l'' ->
  (forall n x y z, P n x y -> Q y z -> R y z) ->
  All2 R l' l''.
Admitted.

Inductive All_fold {A} (P : list A -> A -> Type) : list A -> Type :=
  | All_fold_nil : All_fold P nil
  | All_fold_cons {d Γ} : All_fold P Γ -> P Γ d -> All_fold P (d :: Γ).

Derive Signature NoConfusionHom for All_fold.

Lemma All_fold_tip {A : Type} (P : list A -> A -> Type) {x} : All_fold P [x] -> P [] x.
Admitted.

Inductive All2_fold {A} (P : list A -> list A -> A -> A -> Type)
            : list A -> list A -> Type :=
| All2_fold_nil : All2_fold P nil nil
| All2_fold_cons {d d' Γ Γ'} : All2_fold P Γ Γ' -> P Γ Γ' d d' -> All2_fold P (d :: Γ) (d' :: Γ').

Derive Signature NoConfusion for All2_fold.

Definition All_over {A B} (P : list B -> list B -> A -> A -> Type) (Γ Γ' : list B) :=
  fun Δ Δ' => P (Δ ++ Γ) (Δ' ++ Γ').

Lemma All2_fold_from_nth_error A L1 L2 P :
  #|L1| = #|L2| ->
                (forall n x1 x2, n < #|L1| -> nth_error L1 n = Some x1
                                           -> nth_error L2 n = Some x2
                                           -> P (skipn (S n) L1) (skipn (S n) L2) x1 x2) ->
                @All2_fold A P L1 L2.
Admitted.

Lemma All2_fold_app {A} {P} {Γ Γ' Γl Γr : list A} :
  All2_fold P Γ Γl ->
  All2_fold (All_over P Γ Γl) Γ' Γr ->
  All2_fold P (Γ' ++ Γ) (Γr ++ Γl).
Admitted.

Lemma All2_fold_length {A P} {Γ Γ' : list A} :
  All2_fold P Γ Γ' -> #|Γ| = #|Γ'|.
Admitted.

Lemma All2_fold_impl {A P Q} {Γ Γ' : list A} :
  All2_fold P Γ Γ' -> (forall Γ Γ' d d', P Γ Γ' d d' -> Q Γ Γ' d d') ->
  All2_fold Q Γ Γ'.
Admitted.

Lemma All_fold_app_inv {A} {P} (Γ Δ : list A) :
  All_fold P (Γ ++ Δ) ->
  All_fold P Δ × All_fold (fun Γ => P (Γ ++ Δ)) Γ.
Admitted.

Lemma All2_fold_All_fold_mix_left {A} P Q (Γ Γ' : list A) :
  All_fold P Γ ->
  All2_fold Q Γ Γ' ->
  All2_fold (fun Γ Γ' d d' => P Γ d × Q Γ Γ' d d') Γ Γ'.
Admitted.

Lemma All2_fold_All_fold_mix_right {A} P Q (Γ Γ' : list A) :
  All_fold P Γ' ->
  All2_fold Q Γ Γ' ->
  All2_fold (fun Γ Γ' d d' => P Γ' d' × Q Γ Γ' d d') Γ Γ'.
Admitted.

Lemma All2_fold_All_fold_mix_left_inv {A} P Q (Γ Γ' : list A) :
  All2_fold (fun Γ Γ' d d' => P Γ d × Q Γ Γ' d d') Γ Γ' ->
  All_fold P Γ × All2_fold Q Γ Γ'.
Admitted.

Lemma All2_fold_All_right {A P} {Γ Γ' : list A} :
  All2_fold (fun _ Γ _ d => P Γ d) Γ Γ' ->
  All_fold P Γ'.
Admitted.

Lemma All2_fold_All_left {A P} {Γ Γ' : list A} :
  All2_fold (fun Γ _ d _ => P Γ d) Γ Γ' ->
  All_fold P Γ.
Admitted.

Section All_fold.
  Context {A} {P : list A -> A -> Type}.

  Lemma All_fold_impl Q Γ :
    All_fold P Γ ->
    (forall Γ x, P Γ x -> Q Γ x) ->
    All_fold Q Γ.
Admitted.

  Lemma All_fold_app Γ Δ :
    All_fold (fun Γ => P (Γ ++ Δ)) Γ ->
    All_fold P Δ ->
    All_fold P (Γ ++ Δ).
Admitted.
End All_fold.

Section Alli_All_fold.
  Context {A : Type}.
  Lemma Alli_All_fold {P : nat -> A -> Type} {n Γ} :
    Alli P n Γ <~>
    All_fold (fun Γ d => P (n + #|Γ|) d) (List.rev Γ).
Admitted.

  Lemma Alli_rev_All_fold (P : nat -> A -> Type) n Γ :
    Alli P n (List.rev Γ) ->
    All_fold (fun Γ d => P (n + #|Γ|) d) Γ.
Admitted.

  Lemma All_fold_Alli_rev (P : nat -> A -> Type) n Γ :
    All_fold (fun Γ d => P (n + #|Γ|) d) Γ ->
    Alli P n (List.rev Γ).
Admitted.
End Alli_All_fold.

Section All2_fold.
  Context {A} {P : list A -> list A -> A -> A -> Type}.

  Lemma All2_fold_All2 (Q : A -> A -> Type) {Γ Δ : list A} :
    All2_fold (fun _ _ => Q) Γ Δ <~>
    All2 Q Γ Δ.
Admitted.

  Lemma All2_fold_refl: (forall Δ x, P Δ Δ x x) ->
    forall Δ : list A, All2_fold P Δ Δ.
Admitted.

  Lemma All2_fold_trans  :
    (forall Γ Γ' Γ'' x y z,
        All2_fold P Γ Γ' ->
        All2_fold P Γ' Γ'' ->
        All2_fold P Γ Γ'' ->
        P Γ Γ' x y -> P Γ' Γ'' y z -> P Γ Γ'' x z) ->
    CRelationClasses.Transitive (All2_fold P).
Admitted.

  Lemma All2_fold_sym :
    (forall Γ Γ' x y,
        All2_fold P Γ Γ' ->
        All2_fold P Γ' Γ ->
        P Γ Γ' x y -> P Γ' Γ y x) ->
    CRelationClasses.Symmetric (All2_fold P).
Admitted.

  Lemma All2_fold_flip Γ Δ :
    All2_fold P Γ Δ ->
    All2_fold (fun Γ Γ' x y => P Γ' Γ y x) Δ Γ.
Admitted.

  Lemma All2_fold_app_inv Γ Γ' Δ Δ' :
    #|Δ| = #|Δ'| ->
    All2_fold P (Δ ++ Γ) (Δ' ++ Γ') ->
    All2_fold P Γ Γ' * All2_fold (fun Δ Δ' => P (Δ ++ Γ) (Δ' ++ Γ')) Δ Δ'.
Admitted.

  Lemma All2_fold_app_inv_l Γ Γ' Δ Δ' :
    #|Γ| = #|Γ'| ->
    All2_fold P (Δ ++ Γ) (Δ' ++ Γ') ->
    All2_fold P Γ Γ' * All2_fold (fun Δ Δ' => P (Δ ++ Γ) (Δ' ++ Γ')) Δ Δ'.
Admitted.

  Lemma All2_fold_impl_ind {P' Γ Δ} :
    All2_fold P Γ Δ ->
    (forall Γ Δ d d',
      All2_fold P Γ Δ ->
      All2_fold P' Γ Δ ->
      P Γ Δ d d' ->
      P' Γ Δ d d') ->
    All2_fold P' Γ Δ.
Admitted.

  Lemma All2_fold_impl_len {Q} {Γ Δ : list A} :
    All2_fold P Γ Δ ->
    (forall Γ Δ T U, #|Γ| = #|Δ| -> P Γ Δ T U -> Q Γ Δ T U) ->
    All2_fold Q Γ Δ.
Admitted.

  Lemma All2_fold_forallb2 (Pb : A -> A -> bool) Γ Δ :
    All2_fold (fun _ _ => Pb) Γ Δ ->
    forallb2 Pb Γ Δ.
Admitted.

  Lemma All2_fold_nth {n Γ Γ' d} :
    All2_fold P Γ Γ' -> nth_error Γ n = Some d ->
    { d' & ((nth_error Γ' n = Some d') *
            let Γs := skipn (S n) Γ in
            let Γs' := skipn (S n) Γ' in
            All2_fold P Γs Γs' *
            P Γs Γs' d d')%type }.
Admitted.

  Lemma All2_fold_nth_r {n Γ Γ' d'} :
    All2_fold P Γ Γ' -> nth_error Γ' n = Some d' ->
    { d & ((nth_error Γ n = Some d) *
          let Γs := skipn (S n) Γ in
          let Γs' := skipn (S n) Γ' in
          All2_fold P Γs Γs' *
          P Γs Γs' d d')%type }.
Admitted.

  Lemma All2_fold_prod {Q} {Γ Δ} :
    All2_fold P Γ Δ ->
    All2_fold Q Γ Δ ->
    All2_fold (fun Γ Δ x y => P Γ Δ x y × Q Γ Δ x y) Γ Δ.
Admitted.

  Lemma All2_fold_prod_inv {Q} {Γ Δ} :
    All2_fold (fun Γ Δ x y => P Γ Δ x y × Q Γ Δ x y) Γ Δ ->
    All2_fold P Γ Δ × All2_fold Q Γ Δ.
Admitted.

End All2_fold.

Lemma All_fold_prod {A} (P : list A -> A -> Type) Q Γ Δ :
  #|Γ| = #|Δ| ->
  All_fold P Γ ->
  All_fold P Δ ->
  (forall Δ Δ' x y,
    All_fold P Δ ->
    All_fold P Δ' ->
    All2_fold Q Δ Δ' -> P Δ x -> P Δ' y -> Q Δ Δ' x y) ->
  All2_fold Q Γ Δ.
Admitted.

Lemma All2_fold_All_fold_mix {A P Q} {l l' : list A} :
  All2_fold P l l' ->
  All_fold Q l ->
  All_fold Q l' ->
  All2_fold (fun Γ Γ' x y => Q Γ x × Q Γ' y × P Γ Γ' x y) l l'.
Admitted.

Lemma All2_fold_All_fold_mix_inv {A} {P Q} {l l' : list A} :
  All2_fold (fun Γ Γ' x y => Q Γ x × Q Γ' y × P Γ Γ' x y) l l' ->
  All2_fold P l l' × All_fold Q l × All_fold Q l'.
Admitted.

Lemma All_fold_All2_fold_impl {A} {P Q} {Γ : list A} :
  All_fold P Γ ->
  (forall Γ d, All_fold P Γ -> All2_fold Q Γ Γ -> P Γ d -> Q Γ Γ d d) ->
  All2_fold Q Γ Γ.
Admitted.

Lemma All_fold_All2_fold {A P} {Γ : list A} :
  All_fold (fun Γ d => P Γ Γ d d) Γ <~>
  All2_fold P Γ Γ.
Admitted.

Lemma All_remove_last {A} (P : A -> Type) l : All P l -> All P (remove_last l).
Admitted.

Lemma All3_map_all {A B C} {A' B' C'} P (l : list A') (l' : list B') (l'' : list C')
  (f : A' -> A) (g : B' -> B) (h : C' -> C) :
  All3 (fun x y z => P (f x) (g y) (h z)) l l' l'' ->
  All3 P (map f l) (map g l') (map h l'').
Admitted.

Lemma OnOne2All_All3 {A B} P Q (l : list A) (l' : list B) (l'' : list B) :
  (forall x y z, P x y z -> Q x y z) ->
  (forall x y, Q x y y) ->
  OnOne2All P l l' l'' ->
  All3 Q l l' l''.
Admitted.

Set Equations Transparent.

Section map_All.
  Context {A B C} {Q : C -> Type} {P : C -> A  -> Prop}
    (fn : forall (x : A) , (forall (y:C),  Q y -> P y x) -> B).

  Equations? map_All (l : list A) (Hl : forall y, Q y -> ∥ All (P y) l ∥) : list B :=
  | [], _ := []
  | x :: xs, h := fn x _ :: map_All xs _.
  Proof.
all:clear fn map_All.
    -
 specialize (h y X).
sq.
now depelim h.
    -
 specialize (h y X).
sq.
now depelim h.
  Qed.
End map_All.

Section make_All.
  Context {A} {B : A -> Type} (f : forall x : A, B x).

  Equations make_All (l : list A) : All B l :=
  | [] := All_nil
  | hd :: tl := All_cons (f hd) (make_All tl).
End make_All.

Section make_All_All.
  Context {A} {B : A -> Type} {C : A -> Type} (f : forall x : A, B x -> C x).

  Equations make_All_All {l : list A} (a : All B l) : All C l :=
  | All_nil := All_nil
  | All_cons bhd btl := All_cons (f _ bhd) (make_All_All btl).
End make_All_All.

Lemma All_map_All {A B C} {Q : C -> Type} {P : C -> A -> Prop}
  {Q' : B -> Type} {R : C -> A -> Prop}
  f args (ha: forall y : C, Q y -> ∥ All (R y) args ∥) :
  (forall y : C, Q y -> All (P y) args) ->
  (forall x y rx, P y x -> Q' (f x rx)) ->
  forall y, Q y -> All Q' (map_All f args ha).
Admitted.

Lemma map_All_length {A B C : Type} {Q : C -> Type} {P : C -> A -> Prop}
  (fn : forall x : A, (forall y : C, Q y -> P y x) -> B)
  (l : list A) (Hl : forall y : C, Q y -> ∥ All (P y) l ∥) :
  #|map_All fn l Hl| = #|l|.
Admitted.
#[export] Hint Rewrite @map_All_length : len.

Lemma nth_error_map_All {A B C} {Q : C -> Type} {P : C -> A  -> Prop}
  (fn : forall (x : A) , (forall (y:C),  Q y -> P y x) -> B) :
  forall l : list A, forall H : (forall y : C, Q y -> ∥ All (P y) l ∥),
  forall n x,
    nth_error l n = Some x ->
    exists D, nth_error (map_All fn l H) n = Some (fn x D).
Admitted.

Section map_All2.
  Context {A B} {P Q : A -> B -> Type} (f : forall {x y}, P x y -> Q x y).

  Equations map_All2 {l l'} (a : All2 P l l') : All2 Q l l' :=
  | All2_nil := All2_nil
  | All2_cons hd tl := All2_cons (f _ _ hd) (map_All2 tl).
End map_All2.

Lemma All2_map2_left {A B C D E} {P : E -> A -> Type} Q (R : B -> D -> Type) {f : B -> C -> E} {l l' l'' l'''} :
  All2 R l l''' ->
  All2 Q l' l'' ->
  #|l| = #|l'| ->
  (forall x y z w, R x w -> Q y z -> P (f x y) z) ->
  All2 P (map2 f l l') l''.
Admitted.

Lemma All2_map2_left_All3 {A B C} {P : A -> A -> Type} {f : B -> C -> A} {l l' l''} :
  All3 (fun x y z => P (f x y) z) l l' l'' ->
  All2 P (map2 f l l') l''.
Admitted.

Lemma All3_impl {A B C} {P Q : A -> B -> C -> Type} {l l' l''} :
  All3 P l l' l'' ->
  (forall x y z, P x y z -> Q x y z) ->
  All3 Q l l' l''.
Admitted.

Lemma Forall3_impl {A B C} {P Q : A -> B -> C -> Prop} {l l' l''} :
  Forall3 P l l' l'' ->
  (forall x y z, P x y z -> Q x y z) ->
  Forall3 Q l l' l''.
Admitted.

Lemma Forall3_Forall2_left {A B C} {P : A -> B -> C -> Prop} {Q : A -> B -> Prop} {l l' l''} :
  Forall3 P l l' l'' ->
  (forall x y z, P x y z -> Q x y) ->
  Forall2 Q l l'.
Admitted.

Lemma Forall3_Forall2_edges {A B C} {P : A -> B -> C -> Prop} {Q : A -> C -> Prop} {l l' l''} :
  Forall3 P l l' l'' ->
  (forall x y z, P x y z -> Q x z) ->
  Forall2 Q l l''.
Admitted.

Lemma Forall3_Forall2_right {A B C} {P : A -> B -> C -> Prop} {Q : B -> C -> Prop} {l l' l''} :
  Forall3 P l l' l'' ->
  (forall x y z, P x y z -> Q y z) ->
  Forall2 Q l' l''.
Admitted.

Lemma Forall2_Forall2_Forall3 {A B C} {P : A -> B -> Prop} {Q : B -> C -> Prop} {l l' l''} :
  Forall2 P l l' ->
  Forall2 Q l' l'' ->
  Forall3 (fun x y z => P x y /\ Q y z) l l' l''.
Admitted.

Lemma Forall3_symP {A B} (P : B -> A -> A -> Prop) :
  (forall b, RelationClasses.Symmetric (P b)) ->
  forall l, RelationClasses.Symmetric (Forall3 P l).
Admitted.

Lemma Forall3_transP {A B} (P : B -> A -> A -> Prop) :
  (forall b, RelationClasses.Transitive (P b)) ->
  forall l, RelationClasses.Transitive (Forall3 P l).
Admitted.

Lemma Forall3_antisymP {A B} (P P' : B -> A -> A -> Prop) :
  (forall b x y, P b x y -> P b y x -> P' b x y) ->
  forall l l' l'', Forall3 P l l' l'' -> Forall3 P l l'' l' -> Forall3 P' l l' l''.
Admitted.

Lemma Forall3_map_inv {A B C A' B' C'} (R : A' -> B' -> C' -> Prop) (f : A -> A') (g : B -> B') (h : C -> C') l l' l'' :
  Forall3 R (map f l) (map g l') (map h l'') ->
  Forall3 (fun x y z => R (f x) (g y) (h z)) l l' l''.
Admitted.

Lemma Forall3_map {A B C A' B' C'} (R : A' -> B' -> C' -> Prop) (f : A -> A') (g : B -> B') (h : C -> C') l l' l'' :
  Forall3 (fun x y z => R (f x) (g y) (h z)) l l' l'' ->
  Forall3 R (map f l) (map g l') (map h l'').
Admitted.

Lemma map2_app {A B C} (f : A -> B -> C) l0 l0' l1 l1' :
  #|l0| = #|l1| -> #|l0'| = #|l1'| ->
  map2 f (l0 ++ l0') (l1 ++ l1') =
  map2 f l0 l1 ++ map2 f l0' l1'.
Admitted.

Lemma All1_map2_right_inv {A B C} R (g : A -> B -> C) l l' : #|l| = #|l'| ->  All2 R l (map2 g l l') ->  All2 (fun x y => R x (g x y)) l l'.
Admitted.

Lemma All1_map2_right {A B C} R (g : A -> B -> C) l l' : All2 (fun x y => R x (g x y)) l l' -> All2 R l (map2 g l l').
Admitted.

Lemma All1i_map2_right {A B C} k R (g : A -> B -> C) l l' : All2i (fun i x y => R i x (g x y)) k l l' -> All2i R k l (map2 g l l').
Admitted.

Lemma All1i_Alli_mix_left {A B k Q R} {l : list A} {l' : list B}
  : Alli Q k l -> All2i R k l l' -> All2i (fun i x y => Q i x * R i x y)%type k l l'.
Admitted.

Lemma All_Alli_swap_iff A B P
  : forall ls1 ls2 n, (@All A (fun x => @Alli B (P x) n ls1) ls2) <~> (@Alli B (fun n y => @All A (fun x => P x n y) ls2) n ls1).
Admitted.

Lemma All_eta3 {A B C P} ls
  : @All (A * B * C)%type (fun '(a, b, c) => P a b c) ls <~> All (fun abc => P abc.1.1 abc.1.2 abc.2) ls.
Admitted.

Lemma All2_All_swap A B C P
  : forall ls1 ls2 ls3,
    @All2 A B (fun x y => @All C (P x y) ls1) ls2 ls3 -> @All C (fun z => @All2 A B (fun x y => P x y z) ls2 ls3) ls1.
Admitted.

Lemma All_All2_swap_sum A B C P
  : forall ls1 ls2 ls3,
    @All C (fun z => @All2 A B (fun x y => P x y z) ls2 ls3) ls1 -> (ls1 = []) + (@All2 A B (fun x y => @All C (P x y) ls1) ls2 ls3).
Admitted.

Lemma All_All2_swap A B C P
  : forall ls1 ls2 ls3,
    ls1 <> [] \/ List.length ls2 = List.length ls3 -> @All C (fun z => @All2 A B (fun x y => P x y z) ls2 ls3) ls1 -> @All2 A B (fun x y => @All C (P x y) ls1) ls2 ls3.
Admitted.

Lemma All2_fold_All_swap A B P
  : forall ls1 ls2 ls3,
    @All2_fold A (fun l1 l2 x y => @All B (P l1 l2 x y) ls1) ls2 ls3 -> @All B (fun z => @All2_fold A (fun l1 l2 x y => P l1 l2 x y z) ls2 ls3) ls1.
Admitted.

Lemma All_All2_fold_swap_sum A B P
  : forall ls1 ls2 ls3,
    @All B (fun z => @All2_fold A (fun l1 l2 x y => P l1 l2 x y z) ls2 ls3) ls1 -> (ls1 = []) + (@All2_fold A (fun l1 l2 x y => @All B (P l1 l2 x y) ls1) ls2 ls3).
Admitted.

Lemma All_All2_fold_swap A B P
  : forall ls1 ls2 ls3,
    ls1 <> [] \/ List.length ls2 = List.length ls3 -> @All B (fun z => @All2_fold A (fun l1 l2 x y => P l1 l2 x y z) ls2 ls3) ls1 -> @All2_fold A (fun l1 l2 x y => @All B (P l1 l2 x y) ls1) ls2 ls3.
Admitted.

Lemma All2_map2_right {A B C} {l : list A} {l' : list B} (f : A -> B -> C) P :
  All2 (fun x y => P x (f x y)) l l' ->
  All2 P l (map2 f l l').
Admitted.

Lemma All2i_map2_right {A B C} {n} {l : list A} {l' : list B} (f : A -> B -> C) P :
  All2i (fun n x y => P n x (f x y)) n l l' ->
  All2i P n l (map2 f l l').
Admitted.

Lemma All2_map2_right_inv {A B C} R (g : A -> B -> C) l l' : #|l| = #|l'| ->  All2 R l (map2 g l l') ->  All2 (fun x y => R x (g x y)) l l'.
Admitted.

Lemma All2i_Alli_mix_left {A B k Q R} {l : list A} {l' : list B}
  : Alli Q k l -> All2i R k l l' -> All2i (fun i x y => (Q i x * R i x y)%type) k l l'.
Admitted.

End All_Forall.

End MetaRocq_DOT_Utils_DOT_All_Forall_WRAPPED.
Module Export MetaRocq_DOT_Utils_DOT_All_Forall.
Module Export MetaRocq.
Module Export Utils.
Module Export All_Forall.
Include MetaRocq_DOT_Utils_DOT_All_Forall_WRAPPED.All_Forall.
End All_Forall.

End Utils.

End MetaRocq.

End MetaRocq_DOT_Utils_DOT_All_Forall.
Export MetaRocq.Utils.MRPrelude.
Export MetaRocq.Utils.All_Forall.
Export MetaRocq.Utils.MRCompare.
Export MetaRocq.Utils.MRList.
Export MetaRocq.Utils.MROption.
Export MetaRocq.Utils.MRProd.
Export MetaRocq.Utils.MRRelations.
Export MetaRocq.Utils.ReflectEq.
Export MetaRocq.Utils.bytestring.
Export Stdlib.ZArith.ZArith.
Export Stdlib.Lists.List.
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
Import Stdlib.Structures.Orders.
Import Equations.Prop.Equations.

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
Import Equations.Type.Relation.

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
Import Equations.Type.Relation_Properties.

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
