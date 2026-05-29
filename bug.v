
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/utils/theories" "MetaRocq.Utils" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/common/theories" "MetaRocq.Common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/pcuic/theories" "MetaRocq.PCUIC" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/safechecker-plugin/theories" "MetaRocq.SafeCheckerPlugin" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-pcuic/theories" "MetaRocq.TemplatePCUIC" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq/theories" "MetaRocq.Template" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/safechecker/theories" "MetaRocq.SafeChecker" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/erasure/theories" "MetaRocq.Erasure" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Equations" "Equations" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/ExtLib" "ExtLib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq" "-top" "MetaRocq.Erasure.EImplementBox") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 716 lines to 63 lines, then from 77 lines to 1134 lines, then from 1139 lines to 110 lines, then from 124 lines to 932 lines, then from 938 lines to 159 lines, then from 173 lines to 795 lines, then from 798 lines to 229 lines, then from 240 lines to 1159 lines, then from 1166 lines to 620 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 3.281 sec
   Expected coqc peak memory usage on this file: 678992.0 kb *)









Require Corelib.Init.Sumbool.
Require Corelib.Classes.RelationClasses.
Require Corelib.extraction.Extraction.
Require Corelib.ssr.ssreflect.
Require Corelib.Init.Ltac.
Require Corelib.ssr.ssrbool.
Require Corelib.Numbers.BinNums.
Require Corelib.Init.Nat.
Require Corelib.ssr.ssrfun.
Require Corelib.Classes.Morphisms.
Require Corelib.Program.Basics.
Require Corelib.Floats.FloatAxioms.
Require Corelib.Setoids.Setoid.
Require Corelib.Init.Decimal.
Require Corelib.Floats.PrimFloat.
Require Corelib.BinNums.NatDef.
Require Corelib.Classes.CRelationClasses.
Require Corelib.Numbers.Cyclic.Int63.Uint63Axioms.
Require Corelib.Lists.ListDef.
Require Corelib.Strings.PrimStringAxioms.
Require Corelib.Program.Wf.
Require Corelib.Strings.PrimString.
Require Corelib.BinNums.PosDef.
Require Corelib.Program.Tactics.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.BinNums.IntDef.
Require Corelib.Floats.FloatOps.
Require Corelib.Init.Wf.
Require Corelib.Classes.CMorphisms.
Require Corelib.Init.Byte.
Require Corelib.Numbers.Cyclic.Int63.Sint63Axioms.
Require Corelib.Floats.SpecFloat.
Require Corelib.Init.Hexadecimal.
Require Corelib.Numbers.Cyclic.Int63.PrimInt63.
Require Corelib.Numbers.Cyclic.Int63.CarryType.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Program.Utils.
Require ExtLib.Core.Any.
Require ExtLib.Structures.BinOps.
Require MetaRocq.Utils.MREquality.
Require MetaRocq.Utils.MRSquash.
Require MetaRocq.Utils.MRTactics.DestructHyps.
Require MetaRocq.Utils.MRTactics.FindHyp.
Require MetaRocq.Utils.MRTactics.Head.
Require MetaRocq.Utils.MRTactics.SpecializeBy.
Require MetaRocq.Utils.MRTactics.SplitInContext.
Require MetaRocq.Utils.MRTactics.Zeta1.
Require Stdlib.Classes.DecidableClass.
Require Stdlib.Logic.Decidable.
Require Stdlib.Logic.EqdepFacts.
Require Stdlib.Logic.FunctionalExtensionality.
Require Stdlib.Logic.HLevelsBase.
Require Stdlib.Program.Syntax.
Require Stdlib.Sets.Relations_1.
Require Stdlib.Unicode.Utf8_core.
Require Stdlib.Wellfounded.Inverse_Image.
Require Stdlib.micromega.ZifyClasses.
Require Stdlib.setoid_ring.Algebra_syntax.
Require Equations.Init.
Require ExtLib.Structures.Functor.
Require ExtLib.Structures.Monoid.
Require Ltac2.Init.
Require MetaRocq.Utils.MRTactics.UniquePose.
Require Stdlib.BinNums.NatDef.
Require Stdlib.BinNums.PosDef.
Require Stdlib.BinNums.IntDef.
Require Stdlib.Classes.CMorphisms.
Require Stdlib.Classes.CRelationClasses.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Floats.FloatAxioms.
Require Stdlib.Floats.FloatOps.
Require Stdlib.Floats.SpecFloat.
Require Stdlib.Floats.PrimFloat.
Require Stdlib.Init.Wf.
Require Stdlib.Init.Decimal.
Require Stdlib.Init.Byte.
Require Stdlib.Init.Hexadecimal.
Require Stdlib.Init.Sumbool.
Require Stdlib.Init.Nat.
Require Stdlib.Lists.ListDef.
Require Stdlib.Logic.Eqdep.
Require Stdlib.Logic.Eqdep_dec.
Require Stdlib.Logic.ProofIrrelevanceFacts.
Require Stdlib.Numbers.BinNums.
Require Stdlib.Numbers.Cyclic.Int63.CarryType.
Require Stdlib.Numbers.Cyclic.Int63.PrimInt63.
Require Stdlib.Numbers.Cyclic.Int63.Sint63Axioms.
Require Stdlib.Numbers.Cyclic.Int63.Uint63Axioms.
Require Stdlib.Program.Basics.
Require Stdlib.Program.Tactics.
Require Stdlib.Program.Utils.
Require Stdlib.Program.Wf.
Require Stdlib.Relations.Relation_Definitions.
Require Stdlib.Setoids.Setoid.
Require Stdlib.Strings.PrimString.
Require Stdlib.Strings.PrimStringAxioms.
Require Stdlib.Unicode.Utf8.
Require Stdlib.Wellfounded.Well_Ordering.
Require Stdlib.extraction.Extraction.
Require Stdlib.ssr.ssreflect.
Require Stdlib.ssr.ssrfun.
Require Stdlib.ssr.ssrbool.
Require Equations.Prop.SigmaNotations.
Require Equations.Signature.
Require ExtLib.Structures.Applicative.
Require Ltac2.Message.
Require Ltac2.Std.
Require MetaRocq.Utils.MRTactics.DestructHead.
Require MetaRocq.Utils.MRTactics.SpecializeAllWays.
Require Stdlib.Bool.Bool.
Require Stdlib.Logic.JMeq.
Require Stdlib.Logic.ProofIrrelevance.
Require Stdlib.Relations.Relation_Operators.
Require Stdlib.Wellfounded.Inclusion.
Require Equations.CoreTactics.
Require ExtLib.Structures.Monad.
Require Ltac2.Control.
Require MetaRocq.Utils.MRTactics.GeneralizeOverHoles.
Require Stdlib.Program.Combinators.
Require Stdlib.Relations.Operators_Properties.
Require Stdlib.Wellfounded.Disjoint_Union.
Require Stdlib.Wellfounded.Transitive_Closure.
Require ExtLib.Structures.MonadCont.
Require ExtLib.Structures.MonadExc.
Require ExtLib.Structures.MonadFix.
Require ExtLib.Structures.MonadPlus.
Require ExtLib.Structures.MonadReader.
Require ExtLib.Structures.MonadState.
Require ExtLib.Structures.MonadTrans.
Require ExtLib.Structures.MonadZero.
Require Stdlib.PArith.BinPosDef.
Require Stdlib.Relations.Relations.
Require Stdlib.Wellfounded.Union.
Require Equations.Type.Logic.
Require Ltac2.Ltac1.
Require Stdlib.Program.Equality.
Require Equations.Prop.Logic.
Require Equations.Type.Relation.
Require ExtLib.Structures.MonadWriter.
Require Stdlib.Numbers.NumPrelude.
Require Equations.Type.Relation_Properties.
Require MetaRocq.Utils.MRTactics.InHypUnderBindersDo.
Require MetaRocq.Utils.MRTactics.SpecializeUnderBindersBy.
Require Stdlib.Classes.RelationPairs.
Require Stdlib.Program.WfExtensionality.
Require Stdlib.Wellfounded.Lexicographic_Product.
Require Equations.Prop.Classes.
Require MetaRocq.Utils.MRProd.
Require Stdlib.Structures.Equalities.
Require Equations.Prop.EqDec.
Require Stdlib.Program.Subset.
Require MetaRocq.Utils.MRRelations.
Require Equations.Prop.DepElim.
Require Equations.Prop.FunctionalInduction.
Require ExtLib.Structures.Monads.
Require Stdlib.Structures.Orders.
Require ExtLib.Data.Monads.OptionMonad.
Require Equations.Prop.Constants.
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
Require Stdlib.Structures.DecidableType.
Require Stdlib.Structures.OrderedType.
Require Stdlib.Wellfounded.Lexicographic_Exponentiation.
Require Stdlib.MSets.MSetInterface.
Require Stdlib.PArith.BinPos.
Require Stdlib.Structures.EqualitiesFacts.
Require Stdlib.Structures.OrderedTypeAlt.
Require Stdlib.Structures.OrdersAlt.
Require Stdlib.Arith.Arith_base.
Require Stdlib.FSets.FMapInterface.
Require Stdlib.PArith.POrderedType.
Require Stdlib.PArith.Pnat.
Require Stdlib.Structures.OrdersLists.
Require Stdlib.FSets.FMapList.
Require Stdlib.Vectors.Fin.
Require Stdlib.NArith.BinNatDef.
Require Stdlib.PArith.PArith.
Require Stdlib.Vectors.VectorDef.
Require Stdlib.NArith.BinNat.
Require Stdlib.setoid_ring.BinList.
Require Stdlib.MSets.MSetList.
Require Stdlib.NArith.Ndiv_def.
Require Stdlib.NArith.Ngcd_def.
Require Stdlib.NArith.Nsqrt_def.
Require Stdlib.setoid_ring.Ring_theory.
Require Stdlib.NArith.Nnat.
Require Stdlib.Wellfounded.Wellfounded.
Require Stdlib.Vectors.VectorSpec.
Require Stdlib.ZArith.BinIntDef.
Require Stdlib.Vectors.VectorEq.
Require Stdlib.Vectors.Vector.
Require Stdlib.NArith.NArith_base.
Require Stdlib.Strings.Byte.
Require MetaRocq.Utils.ByteCompare.
Require Stdlib.Strings.Ascii.
Require Stdlib.Vectors.Bvector.
Require Stdlib.Strings.String.
Require Stdlib.NArith.Ndec.
Require Stdlib.Numbers.DecimalString.
Require Stdlib.Numbers.HexadecimalString.
Require Equations.Prop.Subterm.
Require Stdlib.ZArith.BinInt.
Require Equations.Prop.Tactics.
Require Stdlib.ZArith.Int.
Require Stdlib.ZArith.Zcompare.
Require Stdlib.ZArith.Zeven.
Require Stdlib.ZArith.auxiliary.
Require Stdlib.ZArith.Zpow_def.
Require Stdlib.setoid_ring.Ncring.
Require Stdlib.Numbers.Cyclic.Abstract.DoubleType.
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
Require Stdlib.omega.OmegaLemmas.
Require Stdlib.setoid_ring.Ncring_initial.
Require Stdlib.setoid_ring.Ring_base.
Require Stdlib.micromega.ZifyInst.
Require Stdlib.setoid_ring.Ncring_tac.
Require MetaRocq.Common.Primitive.
Require MetaRocq.Common.Universes.
Axiom proof_admitted : False.
Tactic Notation "admit" := abstract case proof_admitted.

Import MetaRocq.Utils.utils.
Import MetaRocq.Common.Primitive.

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
Definition prim_val : Type@{i}. exact (∑ t : prim_tag, prim_model t). Defined.
Admit Obligations.
End PrimModel.


Arguments array_model : clear implicits.
Arguments prim_val : clear implicits.

Section PrimOps.
  Universes i j.
  Context {term : Type@{i}} {term' : Type@{j}}.
Definition map_array_model (f : term -> term') (a : array_model term) : array_model term'. exact ({| array_default := f a.(array_default);
      array_value := map f a.(array_value) |}). Defined.
Definition map_prim (f : term -> term') (p : prim_val term) : prim_val term'. exact (match p.π2 return prim_val term' with
    | primIntModel f => (primInt; primIntModel f)
    | primFloatModel f => (primFloat; primFloatModel f)
    | primStringModel f => (primString; primStringModel f)
    | primArrayModel a => (primArray; primArrayModel (map_array_model f a))
    end). Defined.
End PrimOps.

Section primtheory.
End primtheory.

Section primtheory.

End primtheory.

Section PrimIn.
  Universe i.
Context {term : Type@{i}}.

  Equations InPrim (x : term) (p : prim_val term) : Prop :=
    | x | (primInt; primIntModel i) := False
    | x | (primFloat; primFloatModel _) := False
    | x | (primString; primStringModel _) := False
    | x | (primArray; primArrayModel a) :=
      x = a.(array_default) \/ In x a.(array_value).

  Equations map_primIn (p : prim_val term) (f : forall x : term, InPrim x p -> term) : prim_val term :=
    | (primInt; primIntModel i) | _ := (primInt; primIntModel i)
    | (primFloat; primFloatModel f) | _ := (primFloat; primFloatModel f)
    | (primString; primStringModel f) | _ := (primString; primStringModel f)
    | (primArray; primArrayModel a) | f :=
      (primArray; primArrayModel
        {| array_default := f a.(array_default) (or_introl eq_refl);
          array_value := map_InP a.(array_value) (fun x H => f x (or_intror H)) |}).

End PrimIn.

Section All2_size.
End All2_size.

Section map_All2_dep.

End map_All2_dep.

Section onPrims.

  Section map_onPrims.
  End map_onPrims.

End onPrims.
Module Export MetaRocq.
Module Export Erasure.
Module Export EPrimitive.
End EPrimitive.
Module Export MetaRocq_DOT_Erasure_DOT_EAst_WRAPPED.
Module Export EAst.
Import MetaRocq.Common.BasicAst.
Import MetaRocq.Common.Universes.

Record def (term : Set) := { dname : name; dbody : term; rarg : nat }.
Arguments dname {term} d.
Arguments dbody {term} d.
Arguments rarg {term} d.

Definition map_def {term : Set} (f : term -> term) (d : def term) :=
  {| dname := d.(dname); dbody := f d.(dbody); rarg := d.(rarg) |}.

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

Record constant_body := { cst_body : option term }.

Inductive global_decl :=
| ConstantDecl : constant_body -> global_decl
| InductiveDecl : mutual_inductive_body -> global_decl.

Definition global_declarations := list (kername * global_decl).

Abbreviation global_context := global_declarations.

End EAst.
Module Export MetaRocq.
Module Export Erasure.
Module Export EAst.
Include MetaRocq_DOT_Erasure_DOT_EAst_WRAPPED.EAst.
End EAst.

Module Export MetaRocq_DOT_Erasure_DOT_EInduction_WRAPPED.
Module Export EInduction.
Import MetaRocq.Utils.utils.
Import MetaRocq.Erasure.EPrimitive.
Import Equations.Prop.Equations.
Definition prim_size (f : term -> nat) (p : prim_val term) : nat.
admit.
Defined.
Fixpoint size (t : term) : nat.
exact (match t with
  | tRel i => 1
  | tEvar ev args => S (list_size size args)
  | tLambda na M => S (size M)
  | tApp u v => S (size u + size v)
  | tLetIn na b b' => S (size b + size b')
  | tCase ind c brs => S (size c + list_size (fun x => size x.2) brs)
  | tProj p c => S (size c)
  | tFix mfix idx => S (list_size (fun x => size (dbody x)) mfix)
  | tCoFix mfix idx => S (list_size (fun x => size (dbody x)) mfix)
  | tConstruct _ _ ignore_args => S (list_size size ignore_args)
  | tPrim p => S (prim_size size p)
  | tLazy t => S (size t)
  | tForce t => S (size t)
  | _ => 1
  end).
Defined.

Lemma InPrim_size x p : InPrim x p -> size x < S (prim_size size p).
Admitted.
Global Instance Wf_size_lt : WellFounded (MR lt size).
Admitted.

End EInduction.
Module Export MetaRocq.
Module Export Erasure.
Module Export EInduction.
Include MetaRocq_DOT_Erasure_DOT_EInduction_WRAPPED.EInduction.
End EInduction.

End Erasure.

End MetaRocq.

Module Export MetaRocq_DOT_Erasure_DOT_ELiftSubst_WRAPPED.
Module Export ELiftSubst.

Import MetaRocq.Utils.utils.
Import MetaRocq.Erasure.EPrimitive.
Import MetaRocq.Erasure.EAst.

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

End ELiftSubst.
Module Export MetaRocq.
Module Export Erasure.
Module Export ELiftSubst.
Include MetaRocq_DOT_Erasure_DOT_ELiftSubst_WRAPPED.ELiftSubst.
End ELiftSubst.

End Erasure.

End MetaRocq.
Import MetaRocq.Utils.utils.
Import MetaRocq.Common.BasicAst.
Import MetaRocq.Erasure.EPrimitive.
Import MetaRocq.Erasure.EAst.
Import MetaRocq.Erasure.EInduction.
Import MetaRocq.Erasure.ELiftSubst.

Section implement_box.
  Context (Σ : global_declarations).

  Definition iBox :=
   tFix [ {| dname := nNamed "reccall" ; dbody := tLambda nAnon (tRel 1) ; rarg := 0 |} ] 0.

  Equations? implement_box (t : term) : term
    by wf t (fun x y : EAst.term => size x < size y) :=
    | tRel i => EAst.tRel i
    | tEvar ev args => EAst.tEvar ev (map_InP args (fun x H => implement_box x))
    | tLambda na M => EAst.tLambda na (implement_box M)
    | tApp u v := tApp (implement_box u) (implement_box v)
    | tLetIn na b b' => EAst.tLetIn na (implement_box b) (implement_box b')
    | tCase ind c brs =>
      let brs' := map_InP brs (fun x H => (x.1, lift 1 #|x.1| (implement_box x.2))) in
      EAst.tLetIn (nNamed "discr") (implement_box c)
      (EAst.tCase (ind.1, 0) (tRel 0) brs')
    | tProj p c => EAst.tProj {| proj_ind := p.(proj_ind); proj_npars := 0; proj_arg := p.(proj_arg) |} (implement_box c)
    | tFix mfix idx =>
      let mfix' := map_InP mfix (fun d H => {| dname := dname d; dbody := implement_box d.(dbody); rarg := d.(rarg) |}) in
      EAst.tFix mfix' idx
    | tCoFix mfix idx =>
      let mfix' := map_InP mfix (fun d H => {| dname := dname d; dbody := implement_box d.(dbody); rarg := d.(rarg) |}) in
      EAst.tCoFix mfix' idx
    | tBox => iBox
    | tVar n => EAst.tVar n
    | tConst n => EAst.tConst n
    | tConstruct ind i block_args => EAst.tConstruct ind i (map_InP block_args (fun d H => implement_box d))
    | tPrim p => EAst.tPrim (map_primIn p (fun x H => implement_box x))
    | tLazy t => EAst.tLazy (implement_box t)
    | tForce t => EAst.tForce (implement_box t).
  Proof.
    all:try lia.
    all:try apply (In_size); tea.
    all:try lia.
    -
 setoid_rewrite <- (In_size id size H); unfold id; lia.
    -
 setoid_rewrite <- (In_size id size H); unfold id; lia.
    -
 setoid_rewrite <- (In_size snd size H); cbn; lia.
    -
 setoid_rewrite <- (In_size dbody size H); cbn; lia.
    -
 setoid_rewrite <- (In_size dbody size H); cbn; lia.
    -
 now eapply InPrim_size in H.
  Qed.

End implement_box.

Definition implement_box_constant_decl cb :=
  {| cst_body := option_map implement_box cb.(cst_body) |}.
