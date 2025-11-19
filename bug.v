
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/utils/theories" "MetaRocq.Utils" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/common/theories" "MetaRocq.Common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/pcuic/theories" "MetaRocq.PCUIC" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/safechecker-plugin/theories" "MetaRocq.SafeCheckerPlugin" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-pcuic/theories" "MetaRocq.TemplatePCUIC" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq/theories" "MetaRocq.Template" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/safechecker/theories" "MetaRocq.SafeChecker" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/erasure/theories" "MetaRocq.Erasure" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Equations" "Equations" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 2155 lines to 516 lines, then from 530 lines to 1482 lines, then from 1487 lines to 517 lines, then from 531 lines to 1202 lines, then from 1208 lines to 611 lines, then from 625 lines to 1214 lines, then from 1217 lines to 672 lines, then from 686 lines to 1728 lines, then from 1733 lines to 780 lines, then from 794 lines to 1587 lines, then from 1593 lines to 789 lines, then from 803 lines to 1613 lines, then from 1619 lines to 845 lines, then from 859 lines to 1466 lines, then from 1469 lines to 945 lines, then from 959 lines to 1859 lines, then from 1865 lines to 1022 lines, then from 1036 lines to 3851 lines, then from 3850 lines to 2939 lines, then from 2891 lines to 1000 lines, then from 1012 lines to 2696 lines, then from 2701 lines to 1031 lines, then from 1042 lines to 1329 lines, then from 1336 lines to 1046 lines, then from 1057 lines to 4161 lines, then from 4127 lines to 1087 lines, then from 1098 lines to 2272 lines, then from 2275 lines to 1127 lines, then from 1139 lines to 1975 lines, then from 1982 lines to 1195 lines, then from 1207 lines to 1563 lines, then from 1570 lines to 1211 lines, then from 1223 lines to 1734 lines, then from 1740 lines to 1737 lines *)
(* coqc version 9.2+alpha compiled with OCaml 4.14.2
   coqtop version 9.2+alpha
   Expected coqc runtime on this file: 1.118 sec
   Expected coqc peak memory usage on this file: 841584.0 kb *)




Require Coq.Init.Ltac.
Module Export AdmitTactic.
Module Import LocalFalse.
Inductive False : Prop := .
End LocalFalse.
Axiom proof_admitted : False.
Import Coq.Init.Ltac.
Tactic Notation "admit" := abstract case proof_admitted.
End AdmitTactic.

Require MetaRocq.Utils.MRUtils.
Require Corelib.BinNums.IntDef.
Require Corelib.BinNums.NatDef.
Require Corelib.BinNums.PosDef.
Require Corelib.Classes.CRelationClasses.
Require Corelib.Classes.Morphisms.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Classes.RelationClasses.
Require Corelib.Init.Byte.
Require Corelib.Init.Sumbool.
Require Corelib.Lists.ListDef.
Require Corelib.Numbers.BinNums.
Require Corelib.Program.Basics.
Require Corelib.Program.Tactics.
Require Corelib.Program.Wf.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Setoids.Setoid.
Require Corelib.extraction.Extraction.
Require Corelib.ssr.ssrbool.
Require Corelib.ssr.ssreflect.
Require MetaRocq.Utils.MRSquash.
Require Stdlib.Classes.DecidableClass.
Require Stdlib.Logic.Decidable.
Require Stdlib.Logic.EqdepFacts.
Require Stdlib.Logic.FunctionalExtensionality.
Require Stdlib.Logic.HLevelsBase.
Require Stdlib.Sets.Relations_1.
Require Stdlib.Unicode.Utf8_core.
Require Stdlib.Wellfounded.Inverse_Image.
Require Stdlib.micromega.ZifyClasses.
Require Stdlib.setoid_ring.Algebra_syntax.
Require Stdlib.BinNums.IntDef.
Require Stdlib.BinNums.NatDef.
Require Stdlib.BinNums.PosDef.
Require Stdlib.Classes.CRelationClasses.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Init.Byte.
Require Stdlib.Init.Sumbool.
Require Stdlib.Lists.ListDef.
Require Stdlib.Logic.Eqdep_dec.
Require Stdlib.Numbers.BinNums.
Require Stdlib.Program.Basics.
Require Stdlib.Program.Tactics.
Require Stdlib.Program.Wf.
Require Stdlib.Relations.Relation_Definitions.
Require Stdlib.Setoids.Setoid.
Require Stdlib.Unicode.Utf8.
Require Stdlib.Wellfounded.Well_Ordering.
Require Stdlib.extraction.Extraction.
Require Stdlib.ssr.ssrbool.
Require Stdlib.ssr.ssreflect.
Require Equations.Init.
Require Stdlib.Bool.Bool.
Require Stdlib.Relations.Relation_Operators.
Require Stdlib.Wellfounded.Inclusion.
Require Equations.Prop.SigmaNotations.
Require Equations.Signature.
Require Stdlib.Relations.Operators_Properties.
Require Stdlib.Wellfounded.Disjoint_Union.
Require Stdlib.Wellfounded.Transitive_Closure.
Require Equations.CoreTactics.
Require Stdlib.PArith.BinPosDef.
Require Stdlib.Relations.Relations.
Require Stdlib.Wellfounded.Union.
Require Equations.Type.Logic.
Require Stdlib.Numbers.NumPrelude.
Require Equations.Prop.Logic.
Require Equations.Type.Relation.
Require Stdlib.Wellfounded.Lexicographic_Product.
Require Equations.Type.Relation_Properties.
Require MetaRocq.Utils.MRProd.
Require Stdlib.Structures.Equalities.
Require Equations.Prop.Classes.
Require Equations.Prop.EqDec.
Require MetaRocq.Utils.MRRelations.
Require Equations.Prop.DepElim.
Require Equations.Prop.FunctionalInduction.
Require Stdlib.Structures.Orders.
Require Equations.Prop.Constants.
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
Require Stdlib.Arith.EqNat.
Require Stdlib.Arith.Factorial.
Require Stdlib.Arith.Wf_nat.
Require Stdlib.Arith.Peano_dec.
Require Stdlib.Lists.List.
Require Stdlib.Wellfounded.List_Extension.
Require Stdlib.micromega.Refl.
Require Stdlib.Sorting.Sorted.
Require Stdlib.micromega.Tauto.
Require Stdlib.Lists.ListTactics.
Require Stdlib.Sorting.SetoidList.
Require Stdlib.Wellfounded.Lexicographic_Exponentiation.
Require Stdlib.PArith.BinPos.
Require Stdlib.Arith.Arith_base.
Require Stdlib.PArith.POrderedType.
Require Stdlib.PArith.Pnat.
Require Stdlib.Vectors.Fin.
Require Stdlib.NArith.BinNatDef.
Require Stdlib.PArith.PArith.
Require Stdlib.Vectors.VectorDef.
Require Stdlib.NArith.BinNat.
Require Stdlib.setoid_ring.BinList.
Require Stdlib.setoid_ring.Ring_theory.
Require Stdlib.NArith.Nnat.
Require Stdlib.Wellfounded.Wellfounded.
Require Stdlib.Vectors.VectorSpec.
Require Stdlib.ZArith.BinIntDef.
Require Stdlib.Vectors.VectorEq.
Require Stdlib.Vectors.Vector.
Require Stdlib.Strings.Byte.
Require Stdlib.Strings.Ascii.
Require Stdlib.micromega.DeclConstantZ.
Require Stdlib.Vectors.Bvector.
Require Equations.Prop.Subterm.
Require Stdlib.ZArith.BinInt.
Require Stdlib.ZArith.Zcompare.
Require Stdlib.ZArith.Zeven.
Require Equations.Prop.Tactics.
Require Stdlib.ZArith.Zpow_def.
Require Stdlib.setoid_ring.Ncring.
Require Stdlib.micromega.Env.
Require Stdlib.micromega.VarMap.
Require Stdlib.micromega.EnvRing.
Require Stdlib.setoid_ring.Ring_polynom.
Require Stdlib.setoid_ring.InitialRing.
Require Stdlib.ZArith.Znat.
Require Stdlib.ZArith.Zorder.
Require Stdlib.setoid_ring.Ncring_polynom.
Require Stdlib.setoid_ring.Ring_tac.
Require Stdlib.ZArith.Zmax.
Require Stdlib.ZArith.Zmin.
Require Stdlib.ZArith.Zminmax.
Require Stdlib.ZArith.Zmisc.
Require Stdlib.ZArith.auxiliary.
Require Stdlib.omega.OmegaLemmas.
Require Stdlib.setoid_ring.Ncring_initial.
Require Stdlib.setoid_ring.Ring_base.
Require Stdlib.setoid_ring.Ncring_tac.
Require Stdlib.setoid_ring.Ring.
Require Stdlib.ZArith.ZArith_dec.
Require Stdlib.micromega.OrderedRing.
Require Stdlib.ZArith.Wf_Z.
Require Stdlib.setoid_ring.ArithRing.
Require Stdlib.setoid_ring.Cring.
Require Stdlib.setoid_ring.ZArithRing.
Require Stdlib.ZArith.Zbool.
Require Stdlib.setoid_ring.Integral_domain.
Require Stdlib.ZArith.Zabs.
Require Equations.Prop.NoConfusion.
Require Stdlib.micromega.RingMicromega.
Require Stdlib.nsatz.NsatzTactic.
Require Equations.Prop.EqDecInstances.
Require Equations.Prop.Loader.
Require Equations.Prop.Telescopes.
Require Stdlib.ZArith.Zhints.
Require Stdlib.micromega.ZCoeff.
Require Equations.Prop.Equations.
Require Stdlib.Arith.Arith.
Require Stdlib.ZArith.ZArith_base.
Require Stdlib.micromega.ZifyInst.
Require MetaRocq.Utils.ReflectEq.
Require Stdlib.Strings.String.
Require Stdlib.micromega.Zify.
Require Stdlib.omega.PreOmega.
Require Stdlib.ZArith.Zcomplements.
Require Stdlib.ZArith.Zpower.
Require Stdlib.ZArith.Zdiv.
Require Stdlib.micromega.ZMicromega.
Require Stdlib.micromega.Lia.
Require Stdlib.ZArith.Zdiv_facts.
Require Stdlib.ZArith.Zdivisibility.
Require Stdlib.ZArith.ZModOffset.
Require Stdlib.ZArith.Zcong.
Require Stdlib.btauto.Algebra.
Require Stdlib.btauto.Reflect.
Require Stdlib.micromega.ZArith_hints.
Require Stdlib.btauto.Btauto.
Require Stdlib.ZArith.Zbitwise.
Require Stdlib.ZArith.ZNsatz.
Require Stdlib.ZArith.Znumtheory.
Require Stdlib.ZArith.ZArith.
Require MetaRocq.Utils.MRPrelude.
Require MetaRocq.Utils.MRReflect.
Require MetaRocq.Utils.MRList.
Require MetaRocq.Utils.MROption.
Require MetaRocq.Utils.All_Forall.

Module MetaRocq_DOT_Utils_DOT_monad_utils_WRAPPED.
Module monad_utils.
Import Stdlib.Arith.Arith Stdlib.Lists.List.
Import MetaRocq.Utils.All_Forall MetaRocq.Utils.MRSquash.
Import Equations.Prop.Equations.
Coercion is_true : bool >-> Sortclass.

Import ListNotations.

Set Universe Polymorphism.
Set Polymorphic Inductive Cumulativity.

Class Monad@{d c} (m : Type@{d} -> Type@{c}) : Type :=
{ ret : forall {t : Type@{d}}, t -> m t
; bind : forall {t u : Type@{d}}, m t -> (t -> m u) -> m u
}.

Class MonadExc E (m : Type -> Type) : Type :=
{ raise : forall {T}, E -> m T
; catch : forall {T}, m T -> (E -> m T) -> m T
}.

Module MRMonadNotation.
  Declare Scope monad_scope.
  Delimit Scope monad_scope with monad.

  Notation "c >>= f" := (@bind _ _ _ _ c f) (at level 50, left associativity) : monad_scope.
  Notation "f =<< c" := (@bind _ _ _ _ c f) (at level 51, right associativity) : monad_scope.

  Notation "'mlet' x <- c1 ;; c2" := (@bind _ _ _ _ c1 (fun x => c2))
    (at level 100, c1 at next level, right associativity, x pattern) : monad_scope.

  Notation "'mlet' ' pat <- c1 ;; c2" := (@bind _ _ _ _ c1 (fun x => match x with pat => c2 end))
    (at level 100, pat pattern, c1 at next level, right associativity) : monad_scope.

  Notation "x <- c1 ;; c2" := (@bind _ _ _ _ c1 (fun x => c2))
    (at level 100, c1 at next level, right associativity) : monad_scope.

  Notation "' pat <- c1 ;; c2" := (@bind _ _ _ _ c1 (fun x => match x with pat => c2 end))
    (at level 100, pat pattern, c1 at next level, right associativity) : monad_scope.

  Notation "e1 ;; e2" := (_ <- e1%monad ;; e2%monad)%monad
    (at level 100, right associativity) : monad_scope.
End MRMonadNotation.

Import MRMonadNotation.

#[global] Instance option_monad : Monad option :=
  {| ret A a := Some a ;
     bind A B m f :=
       match m with
       | Some a => f a
       | None => None
       end
  |}.

#[global] Instance id_monad : Monad (fun x => x) :=
  {| ret A a := a ;
     bind A B m f := f m
  |}.

#[global] Instance option_monad_exc : MonadExc unit option :=
{| raise T _ := None ;
    catch T m f :=
      match m with
      | Some a => Some a
      | None => f tt
      end
|}.

Open Scope monad.

Section MapOpt.
  Context {A} {B} (f : A -> option B).

  Fixpoint mapopt (l : list A) : option (list B) :=
    match l with
    | nil => ret nil
    | x :: xs => x' <- f x ;;
                xs' <- mapopt xs ;;
                ret (x' :: xs')
    end.
End MapOpt.

Section MonadOperations.
  Context {T : Type -> Type} {M : Monad T}.
  Context {A B} (f : A -> T B).
  Fixpoint monad_map (l : list A)
    : T (list B)
    := match l with
       | nil => ret nil
       | x :: l => x' <- f x ;;
                  l' <- monad_map l ;;
                  ret (x' :: l')
       end.

  Definition monad_option_map (l : option A)
    : T (option B)
    := match l with
       | None => ret None
       | Some x => x' <- f x ;;
                   ret (Some x')
       end.

  Context (g : A -> B -> T A).
  Fixpoint monad_fold_left (l : list B) (x : A) : T A
    := match l with
       | nil => ret x
       | y :: l => x' <- g x y ;;
                   monad_fold_left l x'
       end.

  Fixpoint monad_fold_right (l : list B) (x : A) : T A
       := match l with
          | nil => ret x
          | y :: l => l' <- monad_fold_right l x ;;
                      g l' y
          end.

  Context (h : nat -> A -> T B).
  Fixpoint monad_map_i_aux (n0 : nat) (l : list A) : T (list B)
    := match l with
       | nil => ret nil
       | x :: l => x' <- (h n0 x) ;;
                   l' <- (monad_map_i_aux (S n0) l) ;;
                   ret (x' :: l')
       end.

  Definition monad_map_i := @monad_map_i_aux 0.
End MonadOperations.

Section MonadOperations.
  Context {T} {M : Monad T} {E} {ME : MonadExc E T}.
  Context {A B C} (f : A -> B -> T C) (e : E).
  Fixpoint monad_map2 (l : list A) (l' : list B) : T (list C) :=
    match l, l' with
    | nil, nil => ret nil
    | x :: l, y :: l' =>
      x' <- f x y ;;
      xs' <- monad_map2 l l' ;;
      ret (x' :: xs')
    | _, _ => raise e
    end.
End MonadOperations.

Definition monad_iter {T : Type -> Type} {M A} (f : A -> T unit) (l : list A) : T unit
  := @monad_fold_left T M _ _ (fun _ => f) l tt.

Fixpoint monad_All {T : Type -> Type} {M : Monad T} {A} {P} (f : forall x, T (P x)) l : T (@All A P l) := match l with
   | [] => ret All_nil
   | a :: l => X <- f a ;;
              Y <- monad_All f l ;;
              ret (All_cons X Y)
   end.

Fixpoint monad_All2 {T : Type -> Type} {E} {M : Monad T} {M' : MonadExc E T} wrong_sizes
  {A B R} (f : forall x y, T (R x y)) l1 l2 : T (@All2 A B R l1 l2) :=
  match l1, l2 with
   | [], [] => ret All2_nil
   | a :: l1, b :: l2 => X <- f a b ;;
                        Y <- monad_All2 wrong_sizes f l1 l2 ;;
                        ret (All2_cons X Y)
   | _, _ => raise wrong_sizes
   end.

Definition monad_prod {T} {M : Monad T} {A B} (x : T A) (y : T B): T (A * B)%type
  := X <- x ;; Y <- y ;; ret (X, Y).


Definition check_dec {T : Type -> Type} {E : Type} {M : Monad T} {M' : MonadExc E T} (e : E) {P}
  (H : {P} + {~ P}) : T P
  := match H with
  | left x => ret x
  | right _ => raise e
  end.

Definition check_eq_true {T : Type -> Type} {E : Type} {M : Monad T} {M' : MonadExc E T} (b : bool) (e : E) : T b :=
  if b return T b then ret eq_refl else raise e.

Definition check_eq_nat {T : Type -> Type} {E : Type} {M : Monad T} {M' : MonadExc E T} n m (e : E) : T (n = m) :=
  match PeanoNat.Nat.eq_dec n m with
  | left p => ret p
  | right p => raise e
  end.

Program Fixpoint monad_Alli {T : Type -> Type} {M : Monad T} {A} {P} (f : forall n x, T (∥ P n x ∥)) l n
  : T (∥ @Alli A P n l ∥)
  := match l with
      | [] => ret (sq Alli_nil)
      | a :: l => X <- f n a ;;
                  Y <- monad_Alli f l (S n) ;;
                  ret _
      end.
Next Obligation.
  sq. constructor; assumption.
Defined.

Program Fixpoint monad_Alli_All {T : Type -> Type} {M : Monad T} {A} {P} {Q} (f : forall n x, ∥ Q x ∥ -> T (∥ P n x ∥)) l n :
  ∥ All Q l ∥ -> T (∥ @Alli A P n l ∥)
  := match l with
      | [] => fun _ => ret (sq Alli_nil)
      | a :: l => fun allq => X <- f n a _ ;;
                  Y <- monad_Alli_All f l (S n) _ ;;
                  ret _
      end.
Next Obligation. sq.
  now depelim allq.
Qed.
Next Obligation.
  sq; now depelim allq.
Qed.
Next Obligation.
  sq. constructor; assumption.
Defined.

Section monad_Alli_nth.
  Context {T} {M : Monad T} {A} {P : nat -> A -> Type}.
  Program Fixpoint monad_Alli_nth_gen l k
    (f : forall n x, nth_error l n = Some x -> T (∥ P (k + n) x ∥)) :
    T (∥ @Alli A P k l ∥)
    := match l with
      | [] => ret (sq Alli_nil)
      | a :: l => X <- f 0 a _ ;;
                  Y <- monad_Alli_nth_gen l (S k) (fun n x hnth => px <- f (S n) x hnth;; ret _) ;;
                  ret _
      end.
    Next Obligation.
      sq. now rewrite Nat.add_succ_r in px.
    Qed.
    Next Obligation.
      sq. rewrite Nat.add_0_r in X. constructor; auto.
    Qed.

  Definition monad_Alli_nth l (f : forall n x, nth_error l n = Some x -> T (∥ P n x ∥)) : T (∥ @Alli A P 0 l ∥) :=
    monad_Alli_nth_gen l 0 f.

End monad_Alli_nth.

Section MonadAllAll.
  Context {T : Type -> Type} {M : Monad T} {A} {P : A -> Type} {Q} (f : forall x, ∥ Q x ∥ -> T (∥ P x ∥)).
  Program Fixpoint monad_All_All l : ∥ All Q l ∥ -> T (∥ All P l ∥) :=
    match l return ∥ All Q l ∥ -> T (∥ All P l ∥) with
      | [] => fun _ => ret (sq All_nil)
      | a :: l => fun allq =>
      X <- f a _ ;;
      Y <- monad_All_All l _ ;;
      ret _
      end.
  Next Obligation. sq.
    now depelim allq.
  Qed.
  Next Obligation.
    sq; now depelim allq.
  Qed.
  Next Obligation.
    sq. constructor; assumption.
  Defined.
End MonadAllAll.

End monad_utils.

End MetaRocq_DOT_Utils_DOT_monad_utils_WRAPPED.
Module Export MetaRocq_DOT_Utils_DOT_monad_utils.
Module Export MetaRocq.
Module Export Utils.
Module monad_utils.
Include MetaRocq_DOT_Utils_DOT_monad_utils_WRAPPED.monad_utils.
End monad_utils.

End Utils.

End MetaRocq.

End MetaRocq_DOT_Utils_DOT_monad_utils.
Export Stdlib.Bool.Bool.
Export Stdlib.Lists.List.
Export MetaRocq.Utils.MRUtils.
Export MetaRocq.Utils.monad_utils.
Module Export MetaRocq_DOT_Utils_DOT_utils.
Module Export MetaRocq.
Module Export Utils.
Module Export utils.
End utils.

End Utils.

End MetaRocq.

End MetaRocq_DOT_Utils_DOT_utils.

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

Module Kername.

  Definition eqb kn kn' :=
    match compare kn kn' with
    | Eq => true
    | _ => false
    end.

  #[global, program] Instance reflect_kername : ReflectEq kername := {
    eqb := eqb
  }.
Admit Obligations.

End Kername.

Notation eq_kername := (eqb (A:=kername)) (only parsing).

Record inductive : Set := mkInd { inductive_mind : kername ;
                                  inductive_ind : nat }.

Record projection := mkProjection
  { proj_ind : inductive;
    proj_npars : nat;
    proj_arg : nat  }.
Module Export Kernames.
End Kernames.

Inductive name : Set :=
| nAnon
| nNamed (_ : ident).

Inductive recursivity_kind :=
  | Finite
  | CoFinite
  | BiFinite .

Section Contexts.
End Contexts.

Section ContextMap.
End ContextMap.

Section ContextTest.
End ContextTest.

Section ContextTestK.
End ContextTestK.

Section Contexts.

End Contexts.

Section Contexts.

End Contexts.
Module Export MetaRocq_DOT_Common_DOT_BasicAst.
Module Export MetaRocq.
Module Export Common.
Module Export BasicAst.
End BasicAst.

End Common.

End MetaRocq.

End MetaRocq_DOT_Common_DOT_BasicAst.
  Section GeneralLemmas.

  End GeneralLemmas.

Inductive allowed_eliminations : Set :=
  | IntoSProp
  | IntoPropSProp
  | IntoSetPropSProp
  | IntoAny.

Section UnivCF2.

End UnivCF2.

Section UniverseLemmas.
End UniverseLemmas.

Section no_prop_leq_type.

End no_prop_leq_type.

Section Closedu.
End Closedu.

Section UniverseClosedSubst.

End UniverseClosedSubst.

Section SubstInstanceClosed.
End SubstInstanceClosed.
Module Export MetaRocq_DOT_Common_DOT_Universes.
Module Export MetaRocq.
Module Export Common.
Module Export Universes.
End Universes.

End Common.

End MetaRocq.

End MetaRocq_DOT_Common_DOT_Universes.
Variant prim_tag :=
  | primInt
  | primFloat
  | primString
  | primArray.
Module Export MetaRocq_DOT_Common_DOT_Primitive.
Module Export MetaRocq.
Module Export Common.
Module Export Primitive.
End Primitive.

End Common.

End MetaRocq.

End MetaRocq_DOT_Common_DOT_Primitive.
Module Type Term.
End Term.

Module Type TermDecide (Import T : Term).
End TermDecide.

Module TermDecideReflectInstances (Import T : Term) (Import TDec : TermDecide T).
End TermDecideReflectInstances.

Module Type EnvironmentSig (T : Term).
End EnvironmentSig.

Module Type EnvironmentDecide (T : Term) (Import E : EnvironmentSig T).
End EnvironmentDecide.

Module EnvironmentDecideReflectInstances (T : Term) (Import E : EnvironmentSig T) (Import EDec : EnvironmentDecide T E).
End EnvironmentDecideReflectInstances.

Module Type TermUtils (T: Term) (E: EnvironmentSig T).

End TermUtils.
Module Export MetaRocq.
Module Export Common.
Module Export Environment.
End Environment.

End Common.

End MetaRocq.
Import Stdlib.ssr.ssreflect.
Import Stdlib.ssr.ssrbool.
Import MetaRocq.Utils.utils.
Import MetaRocq.Common.BasicAst.
Import MetaRocq.Common.Universes.
Import MetaRocq.Common.Environment.
Import MetaRocq.Common.Primitive.

Module Lookup (T : Term) (E : EnvironmentSig T).

End Lookup.

Module Type LookupSig (T : Term) (E : EnvironmentSig T).
End LookupSig.

Module EnvTyping (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E).

  Section TypeLocal.
  End TypeLocal.

  Section All_local_env_rel.

  End All_local_env_rel.

  Section TypeLocalOver.

  End TypeLocalOver.

  Section TypeCtxInst.
  End TypeCtxInst.

  Section lift_sorting_size_gen.

  End lift_sorting_size_gen.

  Section All_local_env_size.
  End All_local_env_size.

  Section Regular.
  End Regular.

  Section Bidirectional.
  End Bidirectional.

End EnvTyping.

Module Type EnvTypingSig (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E).
End EnvTypingSig.

Module Conversion (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E) (ET : EnvTypingSig T E TU).

  Section Conversion.
  End Conversion.
End Conversion.

Module Type ConversionSig (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E) (ET : EnvTypingSig T E TU).
End ConversionSig.

Module GlobalMaps (T: Term) (E: EnvironmentSig T) (TU : TermUtils T E) (ET: EnvTypingSig T E TU) (C: ConversionSig T E TU ET) (L: LookupSig T E).

  End GlobalMaps.

  Section Properties.
  End Properties.
Import Stdlib.Unicode.Utf8.

Set Universe Polymorphism.

Section PrimModel.
  Universe i.
  Context {term : Type@{i}}.

  Record array_model : Type@{i} :=
  { array_default : term;
    array_value : list term }.

  Inductive prim_model : prim_tag -> Type@{i} :=
  | primIntModel (i : PrimInt63.int) : prim_model primInt
  | primFloatModel (f : PrimFloat.float) : prim_model primFloat
  | primStringModel (s : PrimString.string) : prim_model primString
  | primArrayModel (a : array_model) : prim_model primArray.
Definition prim_val : Type@{i}.
exact (∑ t : prim_tag, prim_model t).
Defined.

  Definition prim_int i : prim_val := (primInt; primIntModel i).
  Definition prim_float f : prim_val := (primFloat; primFloatModel f).
  Definition prim_string s : prim_val := (primString; primStringModel s).
  Definition prim_array a : prim_val := (primArray; primArrayModel a).
Definition test_prim (f : term -> bool) (p : prim_val) : bool.
admit.
Defined.
End PrimModel.
Arguments prim_val : clear implicits.

Section PrimOps.
  Universes i j.
  Context {term : Type@{i}} {term' : Type@{j}}.
Definition map_prim (f : term -> term') (p : prim_val term) : prim_val term'.
admit.
Defined.
End PrimOps.

Inductive All2_Set {A B : Set} (R : A -> B -> Set) : list A -> list B -> Set :=
  All2_nil : All2_Set R [] []
| All2_cons : forall (x : A) (y : B) (l : list A) (l' : list B),
    R x y -> All2_Set R l l' -> All2_Set R (x :: l) (y :: l').
Arguments All2_nil {_ _ _}.
Arguments All2_cons {_ _ _ _ _ _ _}.
Equations All2_over {A B : Set} {P : A → B → Set} {l : list A} {l' : list B} :
  All2_Set P l l' → (∀ (x : A) (y : B), P x y → Type) → Type :=
| All2_nil, _ := unit
| All2_cons rxy rll', Q => Q _ _ rxy × All2_over rll' Q.

  Section map_onPrims.
  End map_onPrims.
Module Export EAst.

Record def (term : Set) := { dname : name; dbody : term; rarg : nat }.
Arguments dname {term} d.
Arguments dbody {term} d.
Arguments rarg {term} d.

Definition map_def {term : Set} (f : term -> term) (d : def term) :=
  {| dname := d.(dname); dbody := f d.(dbody); rarg := d.(rarg) |}.

Definition test_def {term : Set} (f : term -> bool) (d : def term) :=
  f d.(dbody).

Definition mfixpoint (term : Set) := list (def term).

Inductive term : Set :=
| tBox
| tRel (n : nat)
| tVar (i : ident)
| tEvar (n : nat) (l : list term)
| tLambda (na : name) (t : term)
| tLetIn (na : name) (b t : term)
| tApp (u v : term)
| tConst (k : kername)
| tConstruct (ind : inductive) (n : nat) (args : list term)
| tCase (indn : inductive * nat ) (c : term  ) (brs : list (list name * term) )
| tProj (p : projection) (c : term)
| tFix (mfix : mfixpoint term) (idx : nat)
| tCoFix (mfix : mfixpoint term) (idx : nat)
| tPrim (prim : prim_val term)
| tLazy (t : term)
| tForce (t : term).

Fixpoint mkApps t us :=
  match us with
  | nil => t
  | a :: args => mkApps (tApp t a) args
  end.

Definition isLambda t :=
  match t with
  | tLambda _ _ => true
  | _ => false
  end.

Record constructor_body :=
  mkConstructor {
    cstr_name : ident;
    cstr_nargs : nat
  }.

Record projection_body :=
  mkProjection {
    proj_name : ident;
  }.

Record one_inductive_body : Set := {
  ind_name : ident;
  ind_propositional : bool;
  ind_kelim : allowed_eliminations;
  ind_ctors : list constructor_body;
  ind_projs : list projection_body  }.

Record mutual_inductive_body := {
  ind_finite : recursivity_kind;
  ind_npars : nat;
  ind_bodies : list one_inductive_body }.

Definition cstr_arity (mdecl : mutual_inductive_body) (cdecl : constructor_body) :=
  (mdecl.(ind_npars) + cdecl.(cstr_nargs))%nat.

Record constant_body := { cst_body : option term }.

Inductive global_decl :=
| ConstantDecl : constant_body -> global_decl
| InductiveDecl : mutual_inductive_body -> global_decl.

Definition global_declarations := list (kername * global_decl).

Notation global_context := global_declarations.
Module Export MetaRocq.
Module Export Erasure.
Module Export EAst.
End EAst.

Fixpoint decompose_app_rec t l :=
  match t with
  | tApp f a => decompose_app_rec f (a :: l)
  | f => (f, l)
  end.

Definition decompose_app f := decompose_app_rec f [].

Definition head t := fst (decompose_app t).

Definition isFix t :=
  match t with
  | tFix _ _ => true
  | _ => false
  end.

Definition isConstruct t :=
  match t with
  | tConstruct _ _ _ => true
  | _ => false
  end.

Definition isPrim t :=
  match t with
  | tPrim _ => true
  | _ => false
  end.

Definition isBox t :=
  match t with
  | tBox => true
  | _ => false
  end.

Definition isLazy c :=
  match c with
  | tLazy _ => true
  | _ => false
  end.

Definition isFixApp t := isFix (head t).
Definition isConstructApp t := isConstruct (head t).
Definition isPrimApp t := isPrim (head t).
Definition isLazyApp t := isLazy (head t).

Section PrimDeps.

End PrimDeps.

Section All_rec.
End All_rec.
Section MkApps_rec.

  End MkApps_rec.

  Section MkApps_case.

  End MkApps_case.
Module Export ELiftSubst.

Fixpoint lift n k t : term :=
  match t with
  | tRel i => if Nat.leb k i then tRel (n + i) else tRel i
  | tEvar ev args => tEvar ev (List.map (lift n k) args)
  | tLambda na M => tLambda na (lift n (S k) M)
  | tApp u v => tApp (lift n k u) (lift n k v)
  | tLetIn na b b' => tLetIn na (lift n k b) (lift n (S k) b')
  | tCase ind c brs =>
    let brs' := List.map (fun br =>
      (br.1, lift n (#|br.1| + k) br.2)) brs in
    tCase ind (lift n k c) brs'
  | tProj p c => tProj p (lift n k c)
  | tFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (lift n k')) mfix in
    tFix mfix' idx
  | tCoFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (lift n k')) mfix in
    tCoFix mfix' idx
  | tBox => t
  | tVar _ => t
  | tConst _ => t
  | tConstruct ind i args => tConstruct ind i (map (lift n k) args)
  | tPrim p => tPrim (map_prim (lift n k) p)
  | tLazy t => tLazy (lift n k t)
  | tForce t => tForce (lift n k t)
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
  | tLambda na M => tLambda na (subst s (S k) M)
  | tApp u v => tApp (subst s k u) (subst s k v)
  | tLetIn na b b' => tLetIn na (subst s k b) (subst s (S k) b')
  | tCase ind c brs =>
    let brs' := List.map (fun br => (br.1, subst s (#|br.1| + k) br.2)) brs in
    tCase ind (subst s k c) brs'
  | tProj p c => tProj p (subst s k c)
  | tFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (subst s k')) mfix in
    tFix mfix' idx
  | tCoFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (subst s k')) mfix in
    tCoFix mfix' idx
  | tConstruct ind i args => tConstruct ind i (map (subst s k) args)
  | tPrim p => tPrim (map_prim (subst s k) p)
  | tLazy t => tLazy (subst s k t)
  | tForce t => tForce (subst s k t)
  | tBox => tBox
  | tVar n => tVar n
  | tConst c => tConst c
  end.

Notation subst0 t := (subst t 0).

Fixpoint closedn k (t : term) : bool :=
  match t with
  | tRel i => Nat.ltb i k
  | tEvar ev args => List.forallb (closedn k) args
  | tLambda _ M => closedn (S k) M
  | tApp u v => closedn k u && closedn k v
  | tLetIn na b b' => closedn k b && closedn (S k) b'
  | tCase ind c brs =>
    let brs' := List.forallb (fun br => closedn (#|br.1| + k) br.2) brs in
    closedn k c && brs'
  | tProj p c => closedn k c
  | tFix mfix idx =>
    let k' := List.length mfix + k in
    List.forallb (test_def (closedn k')) mfix
  | tCoFix mfix idx =>
    let k' := List.length mfix + k in
    List.forallb (test_def (closedn k')) mfix
  | tConstruct ind i args => forallb (closedn k) args
  | tPrim p => test_prim (closedn k) p
  | tLazy t => closedn k t
  | tForce t => closedn k t
  | _ => true
  end.

Notation closed t := (closedn 0 t).

Lemma closedn_subst s k t :
  forallb (closedn k) s -> closedn (#|s| + k) t ->
  closedn k (subst0 s t).
Admitted.
Module Export ECSubst.

Fixpoint csubst t k u :=
  match u with
  | tBox => tBox
  | tRel n =>
     match Nat.compare k n with
    | Datatypes.Eq => t
    | Gt => tRel n
    | Lt => tRel (Nat.pred n)
    end
  | tEvar ev args => tEvar ev (List.map (csubst t k) args)
  | tLambda na M => tLambda na (csubst t (S k) M)
  | tApp u v => tApp (csubst t k u) (csubst t k v)
  | tLetIn na b b' => tLetIn na (csubst t k b) (csubst t (S k) b')
  | tCase ind c brs =>
    let brs' := List.map (fun br => (br.1, csubst t (#|br.1| + k) br.2)) brs in
    tCase ind (csubst t k c) brs'
  | tProj p c => tProj p (csubst t k c)
  | tFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (csubst t k')) mfix in
    tFix mfix' idx
  | tCoFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (csubst t k')) mfix in
    tCoFix mfix' idx
  | tConstruct ind n args => tConstruct ind n (map (csubst t k) args)
  | tPrim p => tPrim (map_prim (csubst t k) p)
  | tLazy u => tLazy (csubst t k u)
  | tForce u => tForce (csubst t k u)
  | x => x
  end.

Definition substl defs body : term :=
  fold_left (fun bod term => csubst term 0 bod)
    defs body.

Lemma closed_subst t k u : closed t ->
    csubst t k u = subst [t] k u.
Admitted.

Lemma closed_substl ts k u :
  forallb (closedn 0) ts ->
  closedn (#|ts| + k) u ->
  closedn k (ECSubst.substl ts u).
Admitted.
Import MetaRocq.Erasure.EAst.
Import MRMonadNotation.

Fixpoint lookup_env (Σ : global_context) id : option global_decl :=
  match Σ with
  | nil => None
  | hd :: tl =>
    if eq_kername id hd.1 then Some hd.2
    else lookup_env tl id
  end.

Definition declared_constant (Σ : global_context) id decl : Prop :=
  lookup_env Σ id = Some (ConstantDecl decl).

Section Lookups.
  Context (Σ : global_declarations).

  Definition lookup_minductive kn : option mutual_inductive_body :=
    decl <- lookup_env Σ kn;;
    match decl with
    | ConstantDecl _ => None
    | InductiveDecl mdecl => ret mdecl
    end.

  Definition lookup_inductive kn : option (mutual_inductive_body * one_inductive_body) :=
    mdecl <- lookup_minductive (inductive_mind kn) ;;
    idecl <- nth_error mdecl.(ind_bodies) (inductive_ind kn) ;;
    ret (mdecl, idecl).

  Definition lookup_constructor kn c : option (mutual_inductive_body * one_inductive_body * constructor_body) :=
    '(mdecl, idecl) <- lookup_inductive kn ;;
    cdecl <- nth_error idecl.(ind_ctors) c ;;
    ret (mdecl, idecl, cdecl).

End Lookups.

Definition inductive_isprop_and_pars Σ ind :=
  '(mdecl, idecl) <- lookup_inductive Σ ind ;;
  ret (idecl.(ind_propositional), mdecl.(ind_npars)).

Definition constructor_isprop_pars_decl Σ ind c :=
  '(mdecl, idecl, cdecl) <- lookup_constructor Σ ind c ;;
  ret (idecl.(ind_propositional), mdecl.(ind_npars), cdecl).

Definition closed_decl (d : EAst.global_decl) :=
  match d with
  | EAst.ConstantDecl cb =>
    option_default (ELiftSubst.closedn 0) (EAst.cst_body cb) true
  | EAst.InductiveDecl _ => true
  end.

Definition closed_env (Σ : EAst.global_declarations) :=
  forallb (test_snd closed_decl) Σ.

Definition fix_subst (l : mfixpoint term) :=
  let fix aux n :=
      match n with
      | 0 => []
      | S n => tFix l n :: aux n
      end
  in aux (List.length l).

Definition cofix_subst (l : mfixpoint term) :=
  let fix aux n :=
      match n with
      | 0 => []
      | S n => tCoFix l n :: aux n
      end
  in aux (List.length l).

Definition cunfold_fix (mfix : mfixpoint term) (idx : nat) :=
  match List.nth_error mfix idx with
  | Some d =>
    Some (d.(rarg), substl (fix_subst mfix) d.(dbody))
  | None => None
  end.

Definition cunfold_cofix (mfix : mfixpoint term) (idx : nat) :=
  match List.nth_error mfix idx with
  | Some d =>
    Some (d.(rarg), substl (cofix_subst mfix) d.(dbody))
  | None => None
  end.

Definition iota_red npar args (br : list name * term) :=
  substl (List.rev (List.skipn npar args)) br.2.
Import MetaRocq.Erasure.EAst.

Class WcbvFlags := { with_prop_case : bool ; with_guarded_fix : bool ; with_constructor_as_block : bool }.

Definition atom `{wfl : WcbvFlags} Σ t :=
  match t with
  | tBox
  | tCoFix _ _
  | tLambda _ _
  | tLazy _
  | tFix _ _ => true
  | tConstruct ind c [] => negb with_constructor_as_block && isSome (lookup_constructor Σ ind c)
  | _ => false
  end.

Section Wcbv.
  Context {wfl : WcbvFlags}.
  Context (Σ : global_declarations).

  Variant eval_primitive {term term' : Set} (eval : term -> term' -> Set) : prim_val term -> prim_val term' -> Set :=
    | evalPrimInt i : eval_primitive eval (prim_int i) (prim_int i)
    | evalPrimFloat f : eval_primitive eval (prim_float f) (prim_float f)
    | evalPrimString s : eval_primitive eval (prim_string s) (prim_string s)
    | evalPrimArray v def v' def'
      (ev : All2_Set eval v v')
      (ed : eval def def') :
      let a := {| array_default := def; array_value := v |} in
      let a' := {| array_default := def'; array_value := v' |} in
      eval_primitive eval (prim_array a) (prim_array a').

  Variant eval_primitive_ind {term term' : Set} (eval : term -> term' -> Set) (P : forall x y, eval x y -> Type) : forall x y, eval_primitive eval x y -> Type :=
  | evalPrimIntDep i : eval_primitive_ind eval P (prim_int i) (prim_int i) (evalPrimInt eval i)
  | evalPrimFloatDep f : eval_primitive_ind eval P (prim_float f) (prim_float f) (evalPrimFloat eval f)
  | evalPrimStringDep s : eval_primitive_ind eval P (prim_string s) (prim_string s) (evalPrimString eval s)
  | evalPrimArrayDep v def v' def'
    (ev : All2_Set eval v v')
    (ed : eval def def') :
    All2_over ev P -> P _ _ ed ->
    let a := {| array_default := def; array_value := v |} in
    let a' := {| array_default := def'; array_value := v' |} in
    eval_primitive_ind eval P (prim_array a) (prim_array a') (evalPrimArray eval v def v' def' ev ed).

  Local Unset Elimination Schemes.

  Inductive eval : term -> term -> Set :=

  | eval_box a t t' :
      eval a tBox ->
      eval t t' ->
      eval (tApp a t) tBox

  | eval_beta f na b a a' res :
      eval f (tLambda na b) ->
      eval a a' ->
      eval (csubst a' 0 b) res ->
      eval (tApp f a) res

  | eval_zeta na b0 b0' b1 res :
      eval b0 b0' ->
      eval (csubst b0' 0 b1) res ->
      eval (tLetIn na b0 b1) res

  | eval_iota ind pars cdecl discr c args brs br res :
      with_constructor_as_block = false ->
      eval discr (mkApps (tConstruct ind c []) args) ->
      constructor_isprop_pars_decl Σ ind c = Some (false, pars, cdecl) ->
      nth_error brs c = Some br ->
      #|args| = pars + cdecl.(cstr_nargs) ->
      #|skipn pars args| = #|br.1| ->
      eval (iota_red pars args br) res ->
      eval (tCase (ind, pars) discr brs) res

  | eval_iota_block ind pars cdecl discr c args brs br res :
      with_constructor_as_block = true ->
      eval discr (tConstruct ind c args) ->
      constructor_isprop_pars_decl Σ ind c = Some (false, pars, cdecl) ->
      nth_error brs c = Some br ->
      #|args| = pars + cdecl.(cstr_nargs) ->
      #|skipn pars args| = #|br.1| ->
      eval (iota_red pars args br) res ->
      eval (tCase (ind, pars) discr brs) res

  | eval_iota_sing ind pars discr brs n f res :
      with_prop_case ->
      eval discr tBox ->
      inductive_isprop_and_pars Σ ind = Some (true, pars) ->
      brs = [ (n,f) ] ->
      eval (substl (repeat tBox #|n|) f) res ->
      eval (tCase (ind, pars) discr brs) res

  | eval_fix f mfix idx argsv a av fn res :
      forall guarded : with_guarded_fix,
      eval f (mkApps (tFix mfix idx) argsv) ->
      eval a av ->
      cunfold_fix mfix idx = Some (#|argsv|, fn) ->
      eval (tApp (mkApps fn argsv) av) res ->
      eval (tApp f a) res

  | eval_fix_value f mfix idx argsv a av narg fn :
      forall guarded : with_guarded_fix,
      eval f (mkApps (tFix mfix idx) argsv) ->
      eval a av ->
      cunfold_fix mfix idx = Some (narg, fn) ->
      (#|argsv| < narg) ->
      eval (tApp f a) (tApp (mkApps (tFix mfix idx) argsv) av)

  | eval_fix' f mfix idx a av fn res narg :
    forall unguarded : with_guarded_fix = false,
    eval f (tFix mfix idx) ->
    cunfold_fix mfix idx = Some (narg, fn) ->
    eval a av ->
    eval (tApp fn av) res ->
    eval (tApp f a) res

  | eval_cofix_case ip mfix idx args discr narg fn brs res :
      eval discr (mkApps (tCoFix mfix idx) args) ->
      cunfold_cofix mfix idx = Some (narg, fn) ->
      eval (tCase ip (mkApps fn args) brs) res ->
      eval (tCase ip discr brs) res

  | eval_cofix_proj p mfix idx args discr narg fn res :
      eval discr (mkApps (tCoFix mfix idx) args) ->
      cunfold_cofix mfix idx = Some (narg, fn) ->
      eval (tProj p (mkApps fn args)) res ->
      eval (tProj p discr) res

  | eval_delta c decl body (isdecl : declared_constant Σ c decl) res :
      decl.(cst_body) = Some body ->
      eval body res ->
      eval (tConst c) res

  | eval_proj p cdecl discr args a res :
      with_constructor_as_block = false ->
      eval discr (mkApps (tConstruct p.(proj_ind) 0 []) args) ->
      constructor_isprop_pars_decl Σ p.(proj_ind) 0 = Some (false, p.(proj_npars), cdecl) ->
      #|args| = p.(proj_npars) + cdecl.(cstr_nargs) ->
      nth_error args (p.(proj_npars) + p.(proj_arg)) = Some a ->
      eval a res ->
      eval (tProj p discr) res

  | eval_proj_block p cdecl discr args a res :
      with_constructor_as_block = true ->
      eval discr (tConstruct p.(proj_ind) 0 args) ->
      constructor_isprop_pars_decl Σ p.(proj_ind) 0 = Some (false, p.(proj_npars), cdecl) ->
      #|args| = p.(proj_npars) + cdecl.(cstr_nargs) ->
      nth_error args (p.(proj_npars) + p.(proj_arg)) = Some a ->
      eval a res ->
      eval (tProj p discr) res

  | eval_proj_prop p discr :
      with_prop_case ->
      eval discr tBox ->
      inductive_isprop_and_pars Σ p.(proj_ind) = Some (true, p.(proj_npars)) ->
      eval (tProj p discr) tBox

  | eval_construct ind c mdecl idecl cdecl f args a a' :
    with_constructor_as_block = false ->
    lookup_constructor Σ ind c = Some (mdecl, idecl, cdecl) ->
    eval f (mkApps (tConstruct ind c []) args) ->
    #|args| < cstr_arity mdecl cdecl ->
    eval a a' ->
    eval (tApp f a) (tApp (mkApps (tConstruct ind c []) args) a')

  | eval_construct_block ind c mdecl idecl cdecl args args' :
    with_constructor_as_block = true ->
    lookup_constructor Σ ind c = Some (mdecl, idecl, cdecl) ->
    #|args| = cstr_arity mdecl cdecl ->
    All2_Set eval args args' ->
    eval (tConstruct ind c args) (tConstruct ind c args')

  | eval_app_cong f f' a a' :
      eval f f' ->
      ~~ (isLambda f' || (if with_guarded_fix then isFixApp f' else isFix f') || isBox f' || isConstructApp f'
        || isPrimApp f' || isLazyApp f')  ->
      eval a a' ->
      eval (tApp f a) (tApp f' a')

  | eval_prim p p' :
    eval_primitive eval p p' ->
    eval (tPrim p) (tPrim p')

  | eval_force t v v' :
    eval t (tLazy v) ->
    eval v v' ->
    eval (tForce t) v'

  | eval_atom t : atom Σ t -> eval t t.

End Wcbv.
Section eval_rect.

  Variables (wfl : WcbvFlags) (Σ : global_declarations) (P : forall x y, eval Σ x y → Type).

  Lemma eval_rect :
    (∀ (a t t' : term) (e : eval Σ a tBox),
     P a tBox e
     → ∀ e0 : eval Σ t t',
         P t t' e0 → P (tApp a t) tBox (eval_box Σ a t t' e e0))
  → (∀ (f0 : term) (na : name) (b a a' res : term)
       (e : eval Σ f0 (tLambda na b)),
       P f0 (tLambda na b) e
       → ∀ e0 : eval Σ a a',
           P a a' e0
           → ∀ e1 : eval Σ (csubst a' 0 b) res,
               P (csubst a' 0 b) res e1
               → P (tApp f0 a) res (eval_beta Σ f0 na b a a' res e e0 e1))
    → (∀ (na : name) (b0 b0' b1 res : term) (e : eval Σ b0 b0'),
         P b0 b0' e
         → ∀ e0 : eval Σ (csubst b0' 0 b1) res,
             P (csubst b0' 0 b1) res e0
             → P (tLetIn na b0 b1) res (eval_zeta Σ na b0 b0' b1 res e e0))
      → (∀ (ind : inductive) (pars : nat) (cdecl : constructor_body)
           (discr : term) (c : nat) (args : list term)
           (brs : list (list name × term)) (br : list name × term)
           (res : term) (e : with_constructor_as_block = false)
           (e0 : eval Σ discr (mkApps (tConstruct ind c []) args)),
           P discr (mkApps (tConstruct ind c []) args) e0
           → ∀ (e1 : constructor_isprop_pars_decl Σ ind c =
                     Some (false, pars, cdecl)) (e2 :
                                                 nth_error brs c =
                                                 Some br)
               (e3 : #|args| = pars + cstr_nargs cdecl)
               (e4 : #|skipn pars args| = #|br.1|)
               (e5 : eval Σ (iota_red pars args br) res),
               P (iota_red pars args br) res e5
               → P (tCase (ind, pars) discr brs) res
                   (eval_iota Σ ind pars cdecl discr c args brs br res e e0
                      e1 e2 e3 e4 e5))
        → (∀ (ind : inductive) (pars : nat) (cdecl : constructor_body)
             (discr : term) (c : nat) (args : list term)
             (brs : list (list name × term)) (br : list name × term)
             (res : term) (e : with_constructor_as_block = true)
             (e0 : eval Σ discr (tConstruct ind c args)),
             P discr (tConstruct ind c args) e0
             → ∀ (e1 : constructor_isprop_pars_decl Σ ind c =
                       Some (false, pars, cdecl))
                 (e2 : nth_error brs c = Some br)
                 (e3 : #|args| = pars + cstr_nargs cdecl)
                 (e4 : #|skipn pars args| = #|br.1|)
                 (e5 : eval Σ (iota_red pars args br) res),
                 P (iota_red pars args br) res e5
                 → P (tCase (ind, pars) discr brs) res
                     (eval_iota_block Σ ind pars cdecl discr c args brs br
                        res e e0 e1 e2 e3 e4 e5))
          → (∀ (ind : inductive) (pars : nat) (discr : term)
               (brs : list (list name × term)) (n : list name)
               (f4 res : term) (i : with_prop_case)
               (e : eval Σ discr tBox),
               P discr tBox e
               → ∀ (e0 : inductive_isprop_and_pars Σ ind = Some (true, pars))
                   (e1 : brs = [(n, f4)]) (e2 : eval Σ
                                                 (substl
                                                 (repeat tBox #|n|) f4) res),
                   P (substl (repeat tBox #|n|) f4) res e2
                   → P (tCase (ind, pars) discr brs) res
                       (eval_iota_sing Σ ind pars discr brs n f4 res i e e0
                          e1 e2))
            → (∀ (f5 : term) (mfix : mfixpoint term)
                 (idx : nat) (argsv : list term) (a av fn res : term)
                 (guarded : with_guarded_fix) (e :
                                               eval Σ f5
                                                 (mkApps
                                                 (tFix mfix idx) argsv)),
                 P f5 (mkApps (tFix mfix idx) argsv) e
                 → ∀ e0 : eval Σ a av,
                     P a av e0
                     → ∀ (e1 : cunfold_fix mfix idx = Some (#|argsv|, fn))
                         (e2 : eval Σ (tApp (mkApps fn argsv) av) res),
                         P (tApp (mkApps fn argsv) av) res e2
                         → P (tApp f5 a) res
                             (eval_fix Σ f5 mfix idx argsv a av fn res
                                guarded e e0 e1 e2))
              → (∀ (f6 : term) (mfix : mfixpoint term)
                   (idx : nat) (argsv : list term)
                   (a av : term) (narg : nat) (fn : term)
                   (guarded : with_guarded_fix) (e :
                                                 eval Σ f6
                                                 (mkApps
                                                 (tFix mfix idx) argsv)),
                   P f6 (mkApps (tFix mfix idx) argsv) e
                   → ∀ e0 : eval Σ a av,
                       P a av e0
                       → ∀ (e1 : cunfold_fix mfix idx = Some (narg, fn))
                           (l : #|argsv| < narg),
                           P (tApp f6 a)
                             (tApp (mkApps (tFix mfix idx) argsv) av)
                             (eval_fix_value Σ f6 mfix idx argsv a av narg fn
                                guarded e e0 e1 l))
                → (∀ (f7 : term) (mfix : mfixpoint term)
                     (idx : nat) (a av fn res : term)
                     (narg : nat) (unguarded : with_guarded_fix = false)
                     (e : eval Σ f7 (tFix mfix idx)),
                     P f7 (tFix mfix idx) e
                     → ∀ (e0 : cunfold_fix mfix idx = Some (narg, fn))
                         (e1 : eval Σ a av),
                         P a av e1
                         → ∀ e2 : eval Σ (tApp fn av) res,
                             P (tApp fn av) res e2
                             → P (tApp f7 a) res
                                 (eval_fix' Σ f7 mfix idx a av fn res narg
                                    unguarded e e0 e1 e2))
                  → (∀ (ip : inductive × nat) (mfix : mfixpoint term)
                       (idx : nat) (args : list term)
                       (discr : term) (narg : nat)
                       (fn : term) (brs : list (list name × term))
                       (res : term) (e : eval Σ discr
                                           (mkApps (tCoFix mfix idx) args)),
                       P discr (mkApps (tCoFix mfix idx) args) e
                       → ∀ (e0 : cunfold_cofix mfix idx = Some (narg, fn))
                           (e1 : eval Σ (tCase ip (mkApps fn args) brs) res),
                           P (tCase ip (mkApps fn args) brs) res e1
                           → P (tCase ip discr brs) res
                               (eval_cofix_case Σ ip mfix idx args discr narg
                                  fn brs res e e0 e1))
                    → (∀ (p : projection) (mfix : mfixpoint term)
                         (idx : nat) (args : list term)
                         (discr : term) (narg : nat)
                         (fn res : term) (e : eval Σ discr
                                                (mkApps
                                                 (tCoFix mfix idx) args)),
                         P discr (mkApps (tCoFix mfix idx) args) e
                         → ∀ (e0 : cunfold_cofix mfix idx = Some (narg, fn))
                             (e1 : eval Σ (tProj p (mkApps fn args)) res),
                             P (tProj p (mkApps fn args)) res e1
                             → P (tProj p discr) res
                                 (eval_cofix_proj Σ p mfix idx args discr
                                    narg fn res e e0 e1))
                      → (∀ (c : kername) (decl : constant_body)
                           (body : term) (isdecl :
                                          declared_constant Σ c decl)
                           (res : term) (e : cst_body decl = Some body)
                           (e0 : eval Σ body res),
                           P body res e0
                           → P (tConst c) res
                               (eval_delta Σ c decl body isdecl res e e0))
                        → (∀ (p : projection) (cdecl : constructor_body)
                             (discr : term) (args : list term)
                             (a res : term) (e : with_constructor_as_block =
                                                 false)
                             (e0 : eval Σ discr
                                     (mkApps (tConstruct (proj_ind p) 0 [])
                                        args)),
                             P discr
                               (mkApps (tConstruct (proj_ind p) 0 []) args)
                               e0
                             → ∀ (e1 : constructor_isprop_pars_decl Σ
                                         (proj_ind p) 0 =
                                       Some (false, proj_npars p, cdecl))
                                 (e2 : #|args| =
                                       proj_npars p + cstr_nargs cdecl)
                                 (e3 : nth_error args
                                         (proj_npars p + proj_arg p) =
                                       Some a) (e4 : eval Σ a res),
                                 P a res e4
                                 → P (tProj p discr) res
                                     (eval_proj Σ p cdecl discr args a res e
                                        e0 e1 e2 e3 e4))
                          → (∀ (p : projection) (cdecl : constructor_body)
                               (discr : term) (args : list term)
                               (a res : term) (e :
                                               with_constructor_as_block =
                                               true)
                               (e0 : eval Σ discr
                                       (tConstruct (proj_ind p) 0 args)),
                               P discr (tConstruct (proj_ind p) 0 args) e0
                               → ∀ (e1 : constructor_isprop_pars_decl Σ
                                           (proj_ind p) 0 =
                                         Some (false, proj_npars p, cdecl))
                                   (e2 : #|args| =
                                         proj_npars p + cstr_nargs cdecl)
                                   (e3 : nth_error args
                                           (proj_npars p + proj_arg p) =
                                         Some a) (e4 : eval Σ a res),
                                   P a res e4
                                   → P (tProj p discr) res
                                       (eval_proj_block Σ p cdecl discr args
                                          a res e e0 e1 e2 e3 e4))
                            → (∀ (p : projection)
                                 (discr : term) (i : with_prop_case)
                                 (e : eval Σ discr tBox),
                                 P discr tBox e
                                 → ∀ e0 : inductive_isprop_and_pars Σ
                                            (proj_ind p) =
                                          Some (true, proj_npars p),
                                     P (tProj p discr) tBox
                                       (eval_proj_prop Σ p discr i e e0))
                              → (∀ (ind : inductive)
                                   (c : nat) (mdecl : mutual_inductive_body)
                                   (idecl : one_inductive_body)
                                   (cdecl : constructor_body)
                                   (f14 : term) (args : list term)
                                   (a a' : term) (e :
                                                 with_constructor_as_block =
                                                 false)
                                   (e0 : lookup_constructor Σ ind c =
                                         Some (mdecl, idecl, cdecl))
                                   (e1 : eval Σ f14
                                           (mkApps (tConstruct ind c []) args)),
                                   P f14 (mkApps (tConstruct ind c []) args)
                                     e1
                                   → ∀ (l : #|args| < cstr_arity mdecl cdecl)
                                       (e2 : eval Σ a a'),
                                       P a a' e2
                                       → P (tApp f14 a)
                                           (tApp
                                              (mkApps
                                                 (tConstruct ind c []) args)
                                              a')
                                           (eval_construct Σ ind c mdecl
                                              idecl cdecl f14 args a a' e e0
                                              e1 l e2))
                                → (∀ (ind : inductive)
                                     (c : nat) (mdecl : mutual_inductive_body)
                                     (idecl : one_inductive_body)
                                     (cdecl : constructor_body)
                                     (args args' :
                                      list term) (e :
                                                 with_constructor_as_block =
                                                 true)
                                     (e0 : lookup_constructor Σ ind c =
                                           Some (mdecl, idecl, cdecl))
                                     (e1 : #|args| = cstr_arity mdecl cdecl)
                                     (a : All2_Set (eval Σ) args args')
                                     (iha : All2_over a P),
                                     P (tConstruct ind c args)
                                       (tConstruct ind c args')
                                       (eval_construct_block Σ ind c mdecl
                                          idecl cdecl args args' e e0 e1 a))
                                  → (∀ (f16 f' a a' : term)
                                       (e : eval Σ f16 f'),
                                       P f16 f' e
                                       → ∀ (i : ~~
                                                (isLambda f'
                                                 ||
                                                 (if with_guarded_fix
                                                 then isFixApp f'
                                                 else isFix f') ||
                                                 isBox f'
                                                 ||
                                                 isConstructApp f'
                                                 || isPrimApp f' || isLazyApp f'))
                                           (e0 : eval Σ a a'),
                                           P a a' e0
                                           → P (tApp f16 a)
                                               (tApp f' a')
                                               (eval_app_cong Σ f16 f' a a' e
                                                 i e0)) ->

    (forall p p' (ev : eval_primitive (eval Σ) p p'),
      eval_primitive_ind _ P _ _ ev ->
      P (tPrim p) (tPrim p') (eval_prim _ _ _ ev)) ->
    (forall t t' v (ev1 : eval Σ t (tLazy t')) (ev2 : eval Σ t' v),
      P _ _ ev1 -> P _ _ ev2 ->
      P (tForce t) v (eval_force _ t t' v ev1 ev2))

    → (∀ (t : term) (i : atom Σ t),
          P t t (eval_atom Σ t i))
      → ∀ (t t0 : term) (e : eval Σ t t0),
          P t t0 e.
Admitted.
  Definition eval_ind := eval_rect.

End eval_rect.

#[register=no] Scheme eval_nondep := Minimality for eval Sort Prop.

Lemma closedn_mkApps k f args : closedn k (mkApps f args) = closedn k f && forallb (closedn k) args.
Admitted.

Lemma eval_closed {wfl : WcbvFlags} Σ :
  closed_env Σ ->
  forall t u, closed t -> eval Σ t u -> closed u.
Proof.
  move=> clΣ t u Hc ev.
move: Hc.
  induction ev; simpl in *; auto;
    (move/andP=> [/andP[Hc Hc'] Hc''] || move/andP=> [Hc Hc'] || move=>Hc); auto.
  -
 eapply IHev3.
rewrite ECSubst.closed_subst //.
auto.
    eapply closedn_subst; tea.
cbn.
rewrite andb_true_r.
auto.
cbn.
auto.
  -
 eapply IHev2.
    rewrite ECSubst.closed_subst; auto.
    eapply closedn_subst; tea.
cbn.
rewrite andb_true_r.
auto.
  -
 specialize (IHev1 Hc).
    move: IHev1; rewrite closedn_mkApps => /andP[] _ clargs.
    apply IHev2.
rewrite /iota_red.
    eapply closed_substl.
now rewrite forallb_rev forallb_skipn.
    len.
rewrite e4.
