
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/utils/theories" "MetaRocq.Utils" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/common/theories" "MetaRocq.Common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq/theories" "MetaRocq.Template" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Equations" "Equations" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/ExtLib" "ExtLib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq/src" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq" "-top" "MetaRocq.Template.EtaExpand") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 1651 lines to 25 lines, then from 39 lines to 968 lines, then from 973 lines to 46 lines, then from 60 lines to 558 lines, then from 565 lines to 65 lines, then from 79 lines to 1315 lines, then from 1320 lines to 357 lines, then from 371 lines to 2072 lines, then from 2077 lines to 370 lines, then from 384 lines to 3502 lines, then from 3468 lines to 600 lines, then from 614 lines to 1810 lines, then from 1813 lines to 669 lines, then from 683 lines to 1534 lines, then from 1541 lines to 695 lines, then from 709 lines to 1080 lines, then from 1087 lines to 711 lines, then from 725 lines to 1259 lines, then from 1265 lines to 730 lines, then from 744 lines to 2513 lines, then from 2513 lines to 749 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 0.587 sec
   Expected coqc peak memory usage on this file: 783112.0 kb *)
Require Corelib.Strings.PrimString.
Require Corelib.Floats.PrimFloat.
Require MetaRocq.Utils.MRProd.
Require Stdlib.MSets.MSetList.
Require Stdlib.MSets.MSetAVL.
Require Stdlib.ZArith.ZArith.
Require MetaRocq.Utils.bytestring.
Import Stdlib.Sorting.SetoidList.

Export ListNotations.

Notation "#| l |" := (List.length l) (at level 0, l at level 99, format "#| l |").
Admit Obligations.

Section MapInP.
End MapInP.
Module Export MetaRocq_DOT_Utils_DOT_MRList.
Module Export MetaRocq.
Module Export Utils.
Module Export MRList.
End MRList.

End Utils.

End MetaRocq.

End MetaRocq_DOT_Utils_DOT_MRList.
Export MetaRocq.Utils.MRList.
Export MetaRocq.Utils.MRProd.
Export MetaRocq.Utils.bytestring.
Module Export MetaRocq_DOT_Utils_DOT_MRUtils.
Module Export MetaRocq.
Module Export Utils.
Module Export MRUtils.
End MRUtils.

End Utils.

End MetaRocq.

End MetaRocq_DOT_Utils_DOT_MRUtils.
Export Stdlib.ZArith.ZArith.
Export Stdlib.micromega.Lia.
Export Stdlib.Lists.List.
Export MetaRocq.Utils.MRUtils.
Notation "A * B" := (prod A B) : type_scope2.
Global Open Scope type_scope2.
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
Module Export MetaRocq_DOT_Common_DOT_Kernames.
Module Export Kernames.
End Kernames.

End MetaRocq_DOT_Common_DOT_Kernames.

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
Module Export Universes.
Import Stdlib.MSets.MSetList.
Import MetaRocq.Utils.utils.

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

Module Export Universe.

  Definition t := nonEmptyLevelExprSet.
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
Admitted.
End Instance.

Module Export UContext.
End UContext.

Module Export AUContext.
  Definition t := list name × ConstraintSet.t.
End AUContext.

Module Export ContextSet.
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
Abbreviation sort := Sort.t.

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

Class UnivSubst A := subst_instance : Instance.t -> A -> A.
#[global] Instance subst_instance_level : UnivSubst Level.t.
Admitted.
#[global] Instance subst_instance_sort : UnivSubst Sort.t.
Admitted.
#[global] Instance subst_instance_instance : UnivSubst Instance.t.
Admitted.

Section Closedu.
End Closedu.

Section UniverseClosedSubst.

End UniverseClosedSubst.

Section SubstInstanceClosed.
End SubstInstanceClosed.

End Universes.
Module Export MetaRocq_DOT_Common_DOT_Universes.
Module Export MetaRocq.
Module Export Common.
Module Export Universes.
End Universes.

End Common.

End MetaRocq.

End MetaRocq_DOT_Common_DOT_Universes.
Import MetaRocq.Utils.utils.
Import MetaRocq.Common.BasicAst.

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

Module Type EnvironmentSig (T : Term).
End EnvironmentSig.

Module Type EnvironmentDecide (T : Term) (Import E : EnvironmentSig T).
End EnvironmentDecide.

Module EnvironmentDecideReflectInstances (T : Term) (Import E : EnvironmentSig T) (Import EDec : EnvironmentDecide T E).
End EnvironmentDecideReflectInstances.

Module Type TermUtils (T: Term) (E: EnvironmentSig T).

End TermUtils.
Import MetaRocq.Utils.utils.
Export MetaRocq.Common.Universes.
Export MetaRocq.Common.BasicAst.

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

Definition tRel := tRel.
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

Module TemplateTermUtils <: TermUtils TemplateTerm Env.
Definition inds := inds.

End TemplateTermUtils.
Module Export MetaRocq_DOT_Template_DOT_Ast.
Module Export MetaRocq.
Module Export Template.
Module Export Ast.
End Ast.

End Template.

End MetaRocq.

End MetaRocq_DOT_Template_DOT_Ast.

Import MetaRocq.Utils.utils.
Import MetaRocq.Template.Ast.

Lemma subst_instance_mkApps u f a :
  subst_instance u (mkApps f a) =
  mkApps (subst_instance u f) (map (subst_instance u) a).
Admitted.
Module Export MetaRocq_DOT_Template_DOT_UnivSubst.
Module Export MetaRocq.
Module Export Template.
Module Export UnivSubst.
End UnivSubst.

End Template.

End MetaRocq.

End MetaRocq_DOT_Template_DOT_UnivSubst.

Import MetaRocq.Utils.utils.
Import MetaRocq.Template.Ast.

Lemma subst_rel_eq :
  forall (u : list term) n i t p,
    List.nth_error u i = Some t -> p = n + i ->
    subst u n (tRel p) = lift0 n t.
Admitted.

Lemma subst_mkApps u k t l :
  subst u k (mkApps t l) = mkApps (subst u k t) (map (subst u k) l).
Admitted.
Module Export MetaRocq.
Module Export Template.
Module Export LiftSubst.
End LiftSubst.

End Template.

End MetaRocq.
Import MetaRocq.Utils.utils.
Export MetaRocq.Template.Ast.
Export MetaRocq.Template.LiftSubst.
Export MetaRocq.Template.UnivSubst.

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
