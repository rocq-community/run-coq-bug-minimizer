
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/utils/theories" "MetaRocq.Utils" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/common/theories" "MetaRocq.Common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/pcuic/theories" "MetaRocq.PCUIC" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/safechecker-plugin/theories" "MetaRocq.SafeCheckerPlugin" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-pcuic/theories" "MetaRocq.TemplatePCUIC" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq/theories" "MetaRocq.Template" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/safechecker/theories" "MetaRocq.SafeChecker" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/erasure/theories" "MetaRocq.Erasure" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Equations" "Equations" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/ExtLib" "ExtLib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 716 lines to 63 lines, then from 77 lines to 1134 lines, then from 1139 lines to 110 lines, then from 124 lines to 932 lines, then from 938 lines to 159 lines, then from 173 lines to 795 lines, then from 798 lines to 229 lines, then from 240 lines to 1159 lines, then from 1166 lines to 620 lines, then from 627 lines to 258 lines, then from 270 lines to 3388 lines, then from 3354 lines to 377 lines, then from 389 lines to 1585 lines, then from 1588 lines to 611 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 2.746 sec
   Expected coqc peak memory usage on this file: 645696.0 kb *)









Require Corelib.Init.Hexadecimal.
Require Corelib.Numbers.Cyclic.Int63.CarryType.
Require Corelib.Init.Ltac.
Require Corelib.Init.Wf.
Require Corelib.Classes.CRelationClasses.
Require Corelib.BinNums.NatDef.
Require Corelib.Init.Byte.
Require Corelib.BinNums.PosDef.
Require Corelib.Numbers.Cyclic.Int63.PrimInt63.
Require Corelib.Floats.FloatOps.
Require Corelib.ssr.ssrbool.
Require Corelib.Setoids.Setoid.
Require Corelib.BinNums.IntDef.
Require Corelib.Program.Wf.
Require Corelib.Numbers.BinNums.
Require Corelib.Lists.ListDef.
Require Corelib.Init.Decimal.
Require Corelib.Strings.PrimString.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Numbers.Cyclic.Int63.Uint63Axioms.
Require Corelib.Classes.Morphisms.
Require Corelib.extraction.Extraction.
Require Corelib.Program.Basics.
Require Corelib.Program.Tactics.
Require Corelib.Strings.PrimStringAxioms.
Require Corelib.Floats.SpecFloat.
Require Corelib.Program.Utils.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Init.Sumbool.
Require Corelib.Init.Nat.
Require Corelib.Floats.PrimFloat.
Require Corelib.Classes.RelationClasses.
Require Corelib.Numbers.Cyclic.Int63.Sint63Axioms.
Require Corelib.ssr.ssreflect.
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
Require Stdlib.BinNums.IntDef.
Require Stdlib.BinNums.PosDef.
Require Stdlib.Classes.CRelationClasses.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Floats.PrimFloat.
Require Stdlib.Floats.FloatOps.
Require Stdlib.Floats.SpecFloat.
Require Stdlib.Init.Hexadecimal.
Require Stdlib.Init.Byte.
Require Stdlib.Init.Sumbool.
Require Stdlib.Init.Wf.
Require Stdlib.Init.Nat.
Require Stdlib.Init.Decimal.
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
Require Stdlib.ssr.ssrbool.
Require Stdlib.ssr.ssreflect.
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
Require MetaRocq.Common.Primitive.
Require MetaRocq.Common.Kernames.
Axiom proof_admitted : False.
Tactic Notation "admit" := abstract case proof_admitted.
Export MetaRocq.Common.Kernames.


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
Import Stdlib.MSets.MSetList.
Import MetaRocq.Utils.utils.

Module Level.
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

Module LevelExpr.
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

Module Universe.

  Definition t := nonEmptyLevelExprSet.
Definition lt : t -> t -> Prop.
Admitted.
End Universe.

Module Sort.
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

Inductive allowed_eliminations : Set :=
  | IntoSProp
  | IntoPropSProp
  | IntoSetPropSProp
  | IntoAny.
Module Export MetaRocq.
Module Export Common.
Module Export Universes.
End Universes.

End Common.

End MetaRocq.
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
Definition prim_val : Type@{i}.
exact (∑ t : prim_tag, prim_model t).
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

  Section map_onPrims.
  End map_onPrims.
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
Module Export MetaRocq.
Module Export Erasure.
Module Export EInduction.
End EInduction.

Module Export MetaRocq_DOT_Erasure_DOT_ELiftSubst_WRAPPED.

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
Module Export MetaRocq.
Module Export Erasure.
Module Export ELiftSubst.
End ELiftSubst.
Import MetaRocq.Common.BasicAst.
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
