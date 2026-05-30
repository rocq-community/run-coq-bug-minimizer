
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/utils/theories" "MetaRocq.Utils" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/common/theories" "MetaRocq.Common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/pcuic/theories" "MetaRocq.PCUIC" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/safechecker-plugin/theories" "MetaRocq.SafeCheckerPlugin" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-pcuic/theories" "MetaRocq.TemplatePCUIC" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq/theories" "MetaRocq.Template" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/safechecker/theories" "MetaRocq.SafeChecker" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/erasure/theories" "MetaRocq.Erasure" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Equations" "Equations" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/ExtLib" "ExtLib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 716 lines to 63 lines, then from 77 lines to 1134 lines, then from 1139 lines to 110 lines, then from 124 lines to 932 lines, then from 938 lines to 159 lines, then from 173 lines to 795 lines, then from 798 lines to 229 lines, then from 240 lines to 1159 lines, then from 1166 lines to 620 lines, then from 627 lines to 258 lines, then from 270 lines to 3388 lines, then from 3354 lines to 377 lines, then from 389 lines to 1585 lines, then from 1588 lines to 611 lines, then from 620 lines to 352 lines, then from 364 lines to 1215 lines, then from 1222 lines to 373 lines, then from 385 lines to 757 lines, then from 764 lines to 380 lines, then from 392 lines to 926 lines, then from 932 lines to 399 lines, then from 411 lines to 694 lines, then from 701 lines to 418 lines, then from 429 lines to 2198 lines, then from 2198 lines to 479 lines, then from 491 lines to 858 lines, then from 865 lines to 501 lines, then from 512 lines to 1214 lines, then from 1221 lines to 580 lines, then from 591 lines to 905 lines, then from 912 lines to 582 lines, then from 594 lines to 861 lines, then from 868 lines to 595 lines, then from 607 lines to 844 lines, then from 851 lines to 604 lines, then from 616 lines to 786 lines, then from 793 lines to 635 lines, then from 647 lines to 2282 lines, then from 2246 lines to 998 lines, then from 1006 lines to 625 lines, then from 637 lines to 786 lines, then from 793 lines to 634 lines, then from 645 lines to 971 lines, then from 978 lines to 735 lines, then from 747 lines to 1976 lines, then from 1954 lines to 860 lines, then from 872 lines to 1018 lines, then from 1025 lines to 867 lines, then from 878 lines to 1031 lines, then from 1037 lines to 891 lines, then from 903 lines to 1505 lines, then from 1510 lines to 904 lines, then from 915 lines to 2140 lines, then from 2145 lines to 1174 lines, then from 1187 lines to 1376 lines, then from 1384 lines to 1217 lines, then from 1229 lines to 1436 lines, then from 1444 lines to 1235 lines, then from 1248 lines to 1493 lines, then from 1501 lines to 1283 lines, then from 1295 lines to 1753 lines, then from 1761 lines to 1316 lines, then from 1328 lines to 1945 lines, then from 1953 lines to 1839 lines, then from 1852 lines to 3149 lines, then from 3157 lines to 1842 lines, then from 1855 lines to 2559 lines, then from 2565 lines to 1859 lines, then from 1871 lines to 2886 lines, then from 2894 lines to 2206 lines, then from 2220 lines to 2818 lines, then from 2825 lines to 2238 lines, then from 2251 lines to 3319 lines, then from 3317 lines to 2349 lines, then from 2363 lines to 4522 lines, then from 4493 lines to 2648 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Modules that could not be inlined: Stdlib.micromega.ZifyInst
   Expected coqc runtime on this file: 1.352 sec
   Expected coqc peak memory usage on this file: 1810540.0 kb *)









Require Corelib.BinNums.PosDef.
Require Corelib.BinNums.NatDef.
Require Corelib.BinNums.IntDef.
Require Corelib.Numbers.BinNums.
Require Corelib.Program.Tactics.
Require Corelib.extraction.Extraction.
Require Corelib.ssr.ssreflect.
Require Corelib.Classes.CRelationClasses.
Require Corelib.Init.Byte.
Require Corelib.Program.Wf.
Require Corelib.Floats.FloatOps.
Require Corelib.Init.Ltac.
Require Corelib.Program.Basics.
Require Corelib.Setoids.Setoid.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Strings.PrimString.
Require Stdlib.Init.Byte.
Require Stdlib.Program.Wf.
Require MetaRocq.Utils.MRProd.
Require Equations.Prop.Constants.
Require Stdlib.micromega.Refl.
Require Stdlib.Sorting.SetoidList.
Require Stdlib.micromega.ZifyInst.
Axiom proof_admitted : False.
Tactic Notation "admit" := abstract case proof_admitted.
Export Stdlib.Bool.Bool.
Export Stdlib.Sorting.SetoidList.
Export Stdlib.Structures.Orders.

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

End WSetsOn.

Module Type WSets.
  Declare Module E : DecidableType.
End WSets.

Module Type HasOrdOps (Import T:TypElt).

End HasOrdOps.

Module Type SetsOn (E : OrderedType).

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

End WRawSets.

Module WRaw2SetsOn (E:DecidableType)(M:WRawSets E) <: WSetsOn E.

 Record t_ := Mkt {this :> M.t; is_ok : M.Ok this}.
 Definition t := t_.
 Definition is_empty (s : t) := M.is_empty s.

End WRaw2SetsOn.

Module WRaw2Sets (D:DecidableType)(M:WRawSets D) <: WSets with Module E := D.
  Module E := D.
End WRaw2Sets.

Module Type RawSets (E : OrderedType).
  Include WRawSets E <+ HasOrdOps <+ HasLt <+ IsStrOrder.

End RawSets.

Module Raw2SetsOn (O:OrderedType)(M:RawSets O) <: SetsOn O.
  Include WRaw2SetsOn O M.

End Raw2SetsOn.

Module Raw2Sets (O:OrderedType)(M:RawSets O) <: Sets with Module E := O.
  Module E := O.
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

Module Stdlib_DOT_micromega_DOT_Tauto_WRAPPED.
Module Export Tauto.
Import Stdlib.micromega.Refl.

Set Implicit Arguments.


Inductive kind : Type :=
|isProp
|isBool.

Register isProp as micromega.kind.isProp.

Section S.
  Context {TA  : Type}.

  Context {TX  : kind -> Type}.

  Context {AA  : Type}.

  Context {AF  : Type}.


  Inductive GFormula  : kind -> Type :=
  | TT   : forall (k: kind), GFormula k
  | FF   : forall (k: kind), GFormula k
  | X    : forall (k: kind), TX k -> GFormula k
  | A    : forall (k: kind), TA -> AA -> GFormula k
  | AND  : forall (k: kind), GFormula k -> GFormula k -> GFormula k
  | OR   : forall (k: kind), GFormula k -> GFormula k -> GFormula k
  | NOT  : forall (k: kind), GFormula k -> GFormula k
  | IMPL : forall (k: kind), GFormula k -> option AF -> GFormula k -> GFormula k
  | IFF  : forall (k: kind), GFormula k -> GFormula k -> GFormula k
  | EQ   : GFormula isBool -> GFormula isBool -> GFormula isProp.
  Register A  as micromega.GFormula.A.
  Register IMPL  as micromega.GFormula.IMPL.

  Section MAPX.

  End MAPX.

  Section FOLDANNOT.

  End FOLDANNOT.
Definition rtyp (k: kind) : Type. exact (if k then Prop else bool). Defined.

  Variable ex : forall (k: kind), TX k -> rtyp k.


  Section EVAL.

    Variable ea : forall (k: kind), TA -> rtyp k.
Definition eTT (k: kind) : rtyp k. exact (if k as k' return  rtyp k' then True else true). Defined.
Definition eFF (k: kind) : rtyp k. exact (if k as k' return  rtyp k' then False else false). Defined.
Definition eAND (k: kind) : rtyp k -> rtyp k -> rtyp k. exact (if k as k' return rtyp k' -> rtyp k' -> rtyp k'
      then and else andb). Defined.
Definition eOR (k: kind) : rtyp k -> rtyp k -> rtyp k. exact (if k as k' return rtyp k' -> rtyp k' -> rtyp k'
      then or else orb). Defined.
Definition eIMPL (k: kind) : rtyp k -> rtyp k -> rtyp k. exact (if k as k' return rtyp k' -> rtyp k' -> rtyp k'
      then (fun x y => x -> y) else implb). Defined.
Definition eIFF (k: kind) : rtyp k -> rtyp k -> rtyp k. exact (if k as k' return rtyp k' -> rtyp k' -> rtyp k'
      then iff else eqb). Defined.
Definition eNOT (k: kind) : rtyp k -> rtyp k. exact (if k as k' return rtyp k' -> rtyp k'
      then not else negb). Defined.

    Fixpoint eval_f (k: kind) (f:GFormula k) {struct f}: rtyp k :=
      match f in GFormula k' return rtyp k' with
      | TT tk => eTT tk
      | FF tk => eFF tk
      | A k a _ =>  ea k a
      | X p => ex  p
      | @AND k e1 e2 => eAND k (eval_f  e1) (eval_f e2)
      | @OR k e1 e2  => eOR k (eval_f e1) (eval_f e2)
      | @NOT k e     => eNOT k (eval_f e)
      | @IMPL k f1 _ f2 => eIMPL k (eval_f f1)  (eval_f f2)
      | @IFF k f1 f2    => eIFF k (eval_f f1) (eval_f f2)
      | EQ f1 f2    => (eval_f f1) = (eval_f f2)
      end.

  End EVAL.

End S.


Definition eKind (k: kind) := if k then Prop else bool.
Register eKind as micromega.eKind.

Definition BFormula (A : Type) := @GFormula A eKind unit unit.

Register BFormula as micromega.BFormula.type.

Section MAPATOMS.

End MAPATOMS.

Section S.
  Variable Term  : Type.
  Variable Term' : Type.
  Variable Annot : Type.

  Variable unsat : Term'  -> bool.

  Variable deduce : Term' -> Term' -> option Term'.

  Definition clause := list  (Term' * Annot).
  Definition cnf := list clause.

  Variable normalise : Term -> Annot -> cnf.
  Variable negate : Term -> Annot -> cnf.
Definition cnf_tt : cnf. exact (@nil clause). Defined.
Definition cnf_ff : cnf. exact (cons (@nil (Term' * Annot)) nil). Defined.
Fixpoint add_term (t: Term' * Annot) (cl : clause) : option clause. exact (match cl with
    | nil =>
      match deduce (fst t) (fst t) with
      | None =>  Some (t ::nil)
      | Some u => if unsat u then None else Some (t::nil)
      end
    | t'::cl =>
      match deduce (fst t) (fst t') with
      | None =>
        match add_term t cl with
        | None => None
        | Some cl' => Some (t' :: cl')
        end
      | Some u =>
        if unsat u then None else
          match add_term t cl with
          | None => None
          | Some cl' => Some (t' :: cl')
          end
      end
    end). Defined.
Fixpoint or_clause (cl1 cl2 : clause) : option clause. exact (match cl1 with
    | nil => Some cl2
    | t::cl => match add_term t cl2 with
               | None => None
               | Some cl' => or_clause cl cl'
               end
    end). Defined.
Definition xor_clause_cnf (t:clause) (f:cnf) : cnf. exact (List.fold_left (fun acc e =>
                      match or_clause t e with
                      | None => acc
                      | Some cl => cl :: acc
                      end) f nil). Defined.
Definition or_clause_cnf (t: clause) (f:cnf) : cnf. exact (match t with
    | nil => f
    | _   => xor_clause_cnf t f
    end). Defined.
Fixpoint or_cnf (f : cnf) (f' : cnf) {struct f}: cnf. exact (match f with
    | nil => cnf_tt
    | e :: rst => (or_cnf rst f') +++ (or_clause_cnf e f')
    end). Defined.
Definition and_cnf (f1 : cnf) (f2 : cnf) : cnf. exact (f1 +++ f2). Defined.

  
  Definition TFormula (TX: kind -> Type) (AF: Type) := @GFormula Term TX Annot AF.
Definition is_cnf_tt (c : cnf) : bool. exact (match c with
    | nil => true
    | _  => false
    end). Defined.
Definition is_cnf_ff (c : cnf) : bool. exact (match c with
    | nil::nil => true
    | _        => false
    end). Defined.
Definition and_cnf_opt (f1 : cnf) (f2 : cnf) : cnf. exact (if is_cnf_ff f1 || is_cnf_ff f2
    then cnf_ff
    else
      if is_cnf_tt f2
      then f1
      else and_cnf f1 f2). Defined.
Definition or_cnf_opt (f1 : cnf) (f2 : cnf) : cnf. exact (if is_cnf_tt f1 || is_cnf_tt f2
    then cnf_tt
    else if is_cnf_ff f2
         then f1 else or_cnf f1 f2). Defined.

  Section REC.
    Context {TX : kind -> Type}.
    Context {AF : Type}.

    Variable REC : forall (pol : bool) (k: kind) (f : TFormula TX AF k), cnf.

    Definition mk_and (k: kind) (pol:bool) (f1 f2 : TFormula TX AF k):=
      (if pol then and_cnf_opt else or_cnf_opt) (REC pol f1) (REC pol f2).

    Definition mk_or (k: kind) (pol:bool) (f1 f2 : TFormula TX AF k):=
      (if pol then or_cnf_opt else and_cnf_opt) (REC pol f1) (REC pol f2).

    Definition mk_impl (k: kind) (pol:bool) (f1 f2 : TFormula TX AF k):=
      (if pol then or_cnf_opt else and_cnf_opt) (REC (negb pol) f1) (REC pol f2).

    Definition mk_iff (k: kind) (pol:bool) (f1 f2: TFormula TX AF k):=
      or_cnf_opt (and_cnf_opt (REC (negb pol) f1) (REC false f2))
                 (and_cnf_opt (REC pol f1) (REC true f2)).

  End REC.

  Definition is_bool {TX : kind -> Type} {AF: Type} (k: kind) (f : TFormula TX AF k) :=
    match f with
    | TT _ => Some true
    | FF _ => Some false
    | _    => None
    end.

  Fixpoint xcnf {TX : kind -> Type} {AF: Type} (pol : bool) (k: kind) (f : TFormula TX AF k)  {struct f}: cnf :=
    match f with
    | TT _ => if pol then cnf_tt else cnf_ff
    | FF _ => if pol then cnf_ff else cnf_tt
    | X _ p => if pol then cnf_ff else cnf_ff 
    | A _ x t => if pol then normalise x  t else negate x  t
    | NOT e  => xcnf (negb pol) e
    | AND e1 e2 => mk_and xcnf pol e1 e2
    | OR e1 e2  => mk_or xcnf pol e1 e2
    | IMPL e1 _ e2 => mk_impl xcnf pol e1 e2
    | IFF e1 e2 => match is_bool e2 with
                   | Some isb => xcnf (if isb then pol else negb pol) e1
                   | None  => mk_iff xcnf pol e1 e2
                   end
    | EQ e1 e2 =>
      match is_bool e2 with
      | Some isb => xcnf (if isb then pol else negb pol) e1
      | None  => mk_iff xcnf pol e1 e2
      end
    end.

  Section CNFAnnot.


    Section REC.

    End REC.

    Section Abstraction.

      Section REC.

      End REC.

    End Abstraction.

  End CNFAnnot.
Definition e_rtyp (k: kind) (x : rtyp k) : rtyp k. exact (x). Defined.

  Variable Witness : Type.
  Variable checker : list (Term'*Annot) -> Witness -> bool.
Fixpoint cnf_checker (f : cnf) (l : list Witness)  {struct f}: bool. exact (match f with
    | nil => true
    | e::f => match l with
              | nil => false
              | c::l => match checker e c with
                        | true => cnf_checker f l
                        |   _  => false
                        end
              end
    end). Defined.
Definition tauto_checker (f:@GFormula Term rtyp Annot unit isProp) (w:list Witness) : bool. exact (cnf_checker (xcnf true f) w). Defined.

  Definition eval_bf {A : Type} (ea : forall (k: kind), A -> rtyp k) (k: kind) (f: BFormula A k) := eval_f e_rtyp ea f.

End S.





End Tauto.

End Stdlib_DOT_micromega_DOT_Tauto_WRAPPED.
Module Export Stdlib_DOT_micromega_DOT_Tauto.
Module Export Stdlib.
Module Export micromega.
Module Tauto.
Include Stdlib_DOT_micromega_DOT_Tauto_WRAPPED.Tauto.
End Tauto.

End micromega.

End Stdlib.

End Stdlib_DOT_micromega_DOT_Tauto.
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
Module Export RingSyntax.
Reserved Notation "x ?=! y" (at level 70, no associativity).
Reserved Notation "x +! y " (at level 50, left associativity).
Reserved Notation "x -! y" (at level 50, left associativity).
Reserved Notation "-! x" (at level 35, right associativity).

Reserved Notation "x ?== y" (at level 70, no associativity).
Reserved Notation "-- x" (at level 35, right associativity).
End RingSyntax.
Module Export Stdlib.
Module Export setoid_ring.
Module Export Ring_theory.
End Ring_theory.

End setoid_ring.

End Stdlib.
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
Module Export Equations_DOT_Prop_DOT_Subterm_WRAPPED.
Module Export Subterm.
Import Stdlib.Relations.Relations.
Export Stdlib.Program.Wf.
Import Equations.Prop.Classes.
Import Equations.Prop.DepElim.

Generalizable Variables A R S B.
Definition FixWf `{WF:WellFounded A R} (P : A -> Type)
  (step : forall x : A, (forall y : A, R y x -> P y) -> P x) : forall x : A, P x.
Admitted.

Lemma FixWf_unfold_ext_step :
  forall (A : Type) (R : relation A) (WF : WellFounded R) (P : A -> Type)
    (step : forall x : A, (forall y : A, R y x -> P y) -> P x) (x : A)
    (step' : forall y : A, R y x -> P y),
    step' = (fun (y : A) (_ : R y x) => FixWf P step y) ->
    FixWf P step x = step x step'.
Admitted.

Ltac unfold_FixWf_ext :=
  match goal with
    |- context [ @FixWf ?A ?R ?WF ?P ?f ?x ] =>
    let step := fresh in
    set(step := fun y (_ : R y x) => @FixWf A R WF P f y) in *;
    rewrite (@FixWf_unfold_ext_step A R WF P f x step);
    [hidebody step; try red_eq_lhs
    |reflexivity]
  end.

Ltac unfold_recursor_ext := unfold_FixWf_ext.

Section Lexicographic_Product.

End Lexicographic_Product.

End Subterm.
Import Equations.CoreTactics.
Import Equations.Prop.DepElim.

Ltac Equations.Init.simpl_equations ::= DepElim.simpl_equations.
Ltac Equations.Init.simplify_equalities ::= DepElim.simplify_dep_elim.
Ltac Equations.Init.unfold_recursor_ext ::= Subterm.unfold_recursor_ext.

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

Inductive t {A} : Type :=
| Empty : t
| Elt : A -> t
| Branch : t  -> A -> t  -> t .
Arguments t : clear implicits.

Register Branch as micromega.VarMap.Branch.
Register Elt    as micromega.VarMap.Elt.
Register Empty  as micromega.VarMap.Empty.
Register t      as micromega.VarMap.type.

Section MakeVarMap.

  Variable A : Type.
  Variable default : A.

  Notation t := (t A).
Fixpoint find (vm : t) (p:positive) {struct vm} : A.
exact (match vm with
      | Empty => default
      | Elt i => i
      | Branch l e r => match p with
                        | xH => e
                        | xO p => find l p
                        | xI p => find r p
                      end
    end).
Defined.

End MakeVarMap.
Module Export Stdlib_DOT_micromega_DOT_VarMap.
Module Export Stdlib.
Module Export micromega.
Module Export VarMap.
End VarMap.

End micromega.

End Stdlib.

End Stdlib_DOT_micromega_DOT_VarMap.
Module Export EnvRing.

Set Implicit Arguments.
Export Stdlib.setoid_ring.Ring_theory.
Import RingSyntax.

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

Register PEc as micromega.PExpr.PEc.
Register PEX as micromega.PExpr.PEX.
Register PEadd as micromega.PExpr.PEadd.

#[universes(template)]
Inductive Pol {C} : Type :=
| Pc : C -> Pol
| Pinj : positive -> Pol -> Pol
| PX : Pol -> positive -> Pol -> Pol.
Arguments Pol : clear implicits.

Section MakeRingPol.

 Variable C: Type.
 Variable (cO cI: C) (cadd cmul csub : C->C->C) (copp : C->C).
 Variable ceqb : C->C->bool.

 Infix "+!" := cadd.
 Infix "-! " := csub.
Notation "-! x" := (copp x).
 Infix "?=!" := ceqb.

 Notation PExpr := (PExpr C).
 Notation Pol := (Pol C).
 Implicit Types P : Pol.

 Definition P0 := Pc cO.
 Definition P1 := Pc cI.
Fixpoint Peq (P P' : Pol) {struct P'} : bool.
admit.
Defined.

 Infix "?==" := Peq.

 Definition mkPinj j P :=
  match P with
  | Pc _ => P
  | Pinj j' Q => Pinj (j + j') Q
  | _ => Pinj j P
  end.

 Definition mkPinj_pred j P :=
  match j with
  | xH => P
  | xO j => Pinj (Pos.pred_double j) P
  | xI j => Pinj (xO j) P
  end.

 Definition mkPX P i Q :=
  match P with
  | Pc c => if c ?=! cO then mkPinj xH Q else PX P i Q
  | Pinj _ _ => PX P i Q
  | PX P' i' Q' => if Q' ?== P0 then PX P' (i' + i) Q else PX P i Q
  end.

 Definition mkXi i := PX P1 i P0.

 Definition mkX := mkXi 1.
Fixpoint Popp (P:Pol) : Pol.
exact (match P with
  | Pc c => Pc (-! c)
  | Pinj j Q => Pinj j (Popp Q)
  | PX P i Q => PX (Popp P) i (Popp Q)
  end).
Defined.

 Notation "-- P" := (Popp P).
Fixpoint PaddC (P:Pol) (c:C) : Pol.
exact (match P with
  | Pc c1 => Pc (c1 +! c)
  | Pinj j Q => Pinj j (PaddC Q c)
  | PX P i Q => PX P i (PaddC Q c)
  end).
Defined.
Fixpoint PsubC (P:Pol) (c:C) : Pol.
exact (match P with
  | Pc c1 => Pc (c1 -! c)
  | Pinj j Q => Pinj j (PsubC Q c)
  | PX P i Q => PX P i (PsubC Q c)
  end).
Defined.

 Section PopI.

  Variable Pop : Pol -> Pol -> Pol.
  Variable Q : Pol.
Fixpoint PaddI (j:positive) (P:Pol) : Pol.
exact (match P with
   | Pc c => mkPinj j (PaddC Q c)
   | Pinj j' Q' =>
     match Z.pos_sub j' j with
     | Zpos k =>  mkPinj j (Pop (Pinj k Q') Q)
     | Z0 => mkPinj j (Pop Q' Q)
     | Zneg k => mkPinj j' (PaddI k Q')
     end
   | PX P i Q' =>
     match j with
     | xH => PX P i (Pop Q' Q)
     | xO j => PX P i (PaddI (Pos.pred_double j) Q')
     | xI j => PX P i (PaddI (xO j) Q')
     end
   end).
Defined.
Fixpoint PsubI (j:positive) (P:Pol) : Pol.
exact (match P with
   | Pc c => mkPinj j (PaddC (--Q) c)
   | Pinj j' Q' =>
     match Z.pos_sub j' j with
     | Zpos k =>  mkPinj j (Pop (Pinj k Q') Q)
     | Z0 => mkPinj j (Pop Q' Q)
     | Zneg k => mkPinj j' (PsubI k Q')
     end
   | PX P i Q' =>
     match j with
     | xH => PX P i (Pop Q' Q)
     | xO j => PX P i (PsubI (Pos.pred_double j) Q')
     | xI j => PX P i (PsubI (xO j) Q')
     end
   end).
Defined.

 Variable P' : Pol.
Fixpoint PaddX (i':positive) (P:Pol) : Pol.
exact (match P with
  | Pc c => PX P' i' P
  | Pinj j Q' =>
    match j with
    | xH =>  PX P' i' Q'
    | xO j => PX P' i' (Pinj (Pos.pred_double j) Q')
    | xI j => PX P' i' (Pinj (xO j) Q')
    end
  | PX P i Q' =>
    match Z.pos_sub i i' with
    | Zpos k => mkPX (Pop (PX P k P0) P') i' Q'
    | Z0 => mkPX (Pop P P') i Q'
    | Zneg k => mkPX (PaddX k P) i Q'
    end
  end).
Defined.
Fixpoint PsubX (i':positive) (P:Pol) : Pol.
exact (match P with
  | Pc c => PX (--P') i' P
  | Pinj j Q' =>
    match j with
    | xH =>  PX (--P') i' Q'
    | xO j => PX (--P') i' (Pinj (Pos.pred_double j) Q')
    | xI j => PX (--P') i' (Pinj (xO j) Q')
    end
  | PX P i Q' =>
    match Z.pos_sub i i' with
    | Zpos k => mkPX (Pop (PX P k P0) P') i' Q'
    | Z0 => mkPX (Pop P P') i Q'
    | Zneg k => mkPX (PsubX k P) i Q'
    end
  end).
Defined.

 End PopI.
Fixpoint Padd (P P': Pol) {struct P'} : Pol.
exact (match P' with
  | Pc c' => PaddC P c'
  | Pinj j' Q' => PaddI Padd Q' j' P
  | PX P' i' Q' =>
    match P with
    | Pc c => PX P' i' (PaddC Q' c)
    | Pinj j Q =>
      match j with
      | xH => PX P' i' (Padd Q Q')
      | xO j => PX P' i' (Padd (Pinj (Pos.pred_double j) Q) Q')
      | xI j => PX P' i' (Padd (Pinj (xO j) Q) Q')
      end
    | PX P i Q =>
      match Z.pos_sub i i' with
      | Zpos k => mkPX (Padd (PX P k P0) P') i' (Padd Q Q')
      | Z0 => mkPX (Padd P P') i (Padd Q Q')
      | Zneg k => mkPX (PaddX Padd P' k P) i (Padd Q Q')
      end
    end
  end).
Defined.
Fixpoint Psub (P P': Pol) {struct P'} : Pol.
exact (match P' with
  | Pc c' => PsubC P c'
  | Pinj j' Q' => PsubI Psub Q' j' P
  | PX P' i' Q' =>
    match P with
    | Pc c => PX (--P') i'  (PaddC (--Q') c)
    | Pinj j Q =>
      match j with
      | xH => PX (--P') i' (Psub Q Q')
      | xO j => PX (--P') i' (Psub (Pinj (Pos.pred_double j) Q) Q')
      | xI j => PX (--P') i' (Psub (Pinj (xO j) Q) Q')
      end
    | PX P i Q =>
      match Z.pos_sub i i' with
      | Zpos k => mkPX (Psub (PX P k P0) P') i' (Psub Q Q')
      | Z0 => mkPX (Psub P P') i (Psub Q Q')
      | Zneg k => mkPX (PsubX Psub P' k P) i (Psub Q Q')
      end
    end
  end).
Defined.

 Section PmulI.

 End PmulI.
Fixpoint Pmul (P P'' : Pol) {struct P''} : Pol.
Admitted.

 Definition mk_X j := mkPinj_pred j mkX.

Section POWER.
  Variable subst_l : Pol -> Pol.
Fixpoint Ppow_pos (res P:Pol) (p:positive) : Pol.
Admitted.

  Definition Ppow_N P n :=
   match n with
   | N0 => P1
   | Npos p => Ppow_pos P1 P p
   end.

 End POWER.
Fixpoint norm_aux (pe:PExpr) : Pol.
exact (match pe with
   | PEc c => Pc c
   | PEX j => mk_X j
   | PEadd (PEopp pe1) pe2 => Psub (norm_aux pe2) (norm_aux pe1)
   | PEadd pe1 (PEopp pe2) =>
     Psub (norm_aux pe1) (norm_aux pe2)
   | PEadd pe1 pe2 => Padd (norm_aux  pe1) (norm_aux pe2)
   | PEsub pe1 pe2 => Psub (norm_aux pe1) (norm_aux pe2)
   | PEmul pe1 pe2 => Pmul (norm_aux pe1) (norm_aux pe2)
   | PEopp pe1 => Popp (norm_aux pe1)
   | PEpow pe1 n => Ppow_N (fun p => p) (norm_aux pe1) n
   end).
Defined.

End MakeRingPol.

End EnvRing.
Module Export Stdlib_DOT_micromega_DOT_EnvRing.
Module Export Stdlib.
Module Export micromega.
Module Export EnvRing.
End EnvRing.

End micromega.

End Stdlib.

End Stdlib_DOT_micromega_DOT_EnvRing.
Module Import OrderedRingSyntax.
Reserved Notation "x [=] y" (at level 70, no associativity).
Reserved Notation "x [<] y" (at level 70, no associativity).
Reserved Notation "x [<=] y" (at level 70, no associativity).
End OrderedRingSyntax.

Section STRICT_ORDERED_RING.

End STRICT_ORDERED_RING.
Module Export Stdlib.
Module Export micromega.
Module Export OrderedRing.
End OrderedRing.
Module Export Zify.
Import Stdlib.micromega.ZifyInst.

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
Module Export Equations_DOT_Prop_DOT_Loader_WRAPPED.
Module Export Loader.
Export Equations.Prop.SigmaNotations.
Export Equations.Prop.Classes.
Export Equations_DOT_Prop_DOT_Subterm_WRAPPED.Subterm.
End Loader.
Module Export RingMicromega.

Import Stdlib.micromega.Env.
Import Stdlib.micromega.EnvRing.
Import Stdlib.Bool.Bool.
Import Stdlib.micromega.OrderedRing.

Set Implicit Arguments.

Import OrderedRingSyntax.

Section Micromega.

Variable R : Type.

Variable C : Type.
Variables cO cI : C.
Variables cplus ctimes cminus: C -> C -> C.
Variable copp : C -> C.
Variables ceqb cleb : C -> C -> bool.
Notation "x [=] y" := (ceqb x y).
Notation "x [<=] y" := (cleb x y).

Definition cneqb (x y : C) := negb (ceqb x y).
Definition cltb (x y : C) := (cleb x y) && (cneqb x y).
Notation "x [<] y" := (cltb x y).

Definition PolC := Pol C.

Definition PolEnv := Env R.

Inductive Op1 : Set :=
| Equal
| NonEqual
| Strict
| NonStrict .

Definition NFormula := (PolC * Op1)%type.
Definition OpAdd (o o': Op1) : option Op1.
exact (match o with
    | Equal => Some o'
    | NonStrict =>
      match o' with
        | Strict => Some Strict
        | NonEqual => None
        | _ => Some NonStrict
      end
    | Strict => match o' with
                  | NonEqual => None
                  |  _        => Some Strict
                end
    | NonEqual => match o' with
                    | Equal  => Some NonEqual
                    | _      => None
                  end
  end).
Defined.

Inductive Psatz : Type :=
| PsatzLet: Psatz -> Psatz -> Psatz
| PsatzIn : nat -> Psatz
| PsatzSquare : PolC -> Psatz
| PsatzMulC : PolC -> Psatz -> Psatz
| PsatzMulE : Psatz -> Psatz -> Psatz
| PsatzAdd  : Psatz -> Psatz -> Psatz
| PsatzC    : C -> Psatz
| PsatzZ    : Psatz.
Definition map_option (A B:Type) (f : A -> option B) (o : option A) : option B.
exact (match o with
    | None => None
    | Some x => f x
  end).
Defined.
Definition nformula_plus_nformula (f1 f2 : NFormula) : option NFormula.
exact (let (e1,o1) := f1 in
    let (e2,o2) := f2 in
      map_option  (fun x => (Some (Padd cO cplus ceqb e1 e2,x)))    (OpAdd o1 o2)).
Defined.
Definition check_inconsistent (f : NFormula) : bool.
exact (let (e, op) := f in
  match  e with
  | Pc c =>
    match op with
    | Equal => cneqb c cO
    | NonStrict => c [<] cO
    | Strict => c [<=] cO
    | NonEqual => c [=] cO
    end
  | _ => false
  end).
Defined.

Inductive Op2 : Set :=
| OpEq
| OpNEq
| OpLe
| OpGe
| OpLt
| OpGt.
Register OpLe  as micromega.Op2.OpLe.
Register OpLt  as micromega.Op2.OpLt.

#[universes(template)]
Record Formula (T:Type) : Type := Build_Formula{
  Flhs : PExpr T;
  Fop : Op2;
  Frhs : PExpr T
}.

Register Formula as micromega.Formula.type.
Register Build_Formula as micromega.Formula.Build_Formula.

Definition norm := norm_aux cO cI cplus ctimes cminus copp ceqb.

Definition psub := Psub cO  cplus cminus copp ceqb.

End Micromega.

End RingMicromega.
Module Export Stdlib.
Module Export micromega.
Module Export RingMicromega.
End RingMicromega.
Module Export Telescopes.

Set Universe Polymorphism.
Import Sigma_Notations.
Local Open Scope equations_scope.

Cumulative Inductive tele@{i} : Type :=
| tip (A : Type@{i})
| ext (A : Type@{i}) (B : A -> tele) : tele.
Register tip as equations.tele.tip.

Section TeleSigma.
  Universe i.

  Equations tele_sigma (t : tele@{i}) : Type@{i} :=
  tele_sigma (tip A) := A ;
  tele_sigma (ext A B) := @sigma A (fun x => tele_sigma (B x)).

  Coercion tele_sigma : tele >-> Sortclass.

  Universes j k.

  Equations tele_fn : tele@{i} -> Type@{j} -> Type@{k} :=
  | tip A | concl := A -> concl;
  | ext A B | concl := forall x : A, tele_fn (B x) concl.

  Equations tele_MR (T : tele@{i}) (A : Type@{j}) (f : tele_fn T A) : T -> A :=
  tele_MR (tip A)   C f := f;
  tele_MR (ext A B) C f := fun x => tele_MR (B x.1) C (f x.1) x.2.

  Equations tele_measure (T : tele@{i}) (A : Type@{i}) (f : tele_fn T A) (R : A -> A -> Prop) : T -> T -> Prop :=
  tele_measure T C f R := fun x y => R (tele_MR T C f x) (tele_MR T C f y).

  Equations tele_type : tele@{i} -> Type@{k} :=
  | tip A := A -> Type@{j};
  | ext A B := forall x : A, tele_type (B x).

  Equations tele_type_app (T : tele@{i}) (P : tele_type T) (x : tele_sigma T) : Type@{k} :=
  tele_type_app (tip A) P a := P a;
  tele_type_app (ext A B) P (a, b) := tele_type_app (B a) (P a) b.

  Equations tele_forall (T : tele@{i}) (P : tele_type T) : Type@{k} :=
  | tip A | P := forall x : A, P x;
  | ext A B | P := forall x : A, tele_forall (B x) (P x).

  Equations tele_forall_type_app (T : tele@{i}) (P : tele_type T)
            (fn : forall t, tele_type_app T P t) : tele_forall T P :=
  | (tip A) | P | fn := fn;
  | ext A B | P | fn := fun a : A => tele_forall_type_app (B a) (P a) (fun b => fn (a, b)).

  Equations tele_forall_uncurry (T : tele@{i}) (P : T -> Type@{j}) : Type@{k} :=
  | tip A   | P := forall x : A, P x;
  | ext A B | P := forall x : A, tele_forall_uncurry (B x) (fun y : tele_sigma (B x) => P (x, y)).

  Equations tele_forall_pack (T : tele) (P : T -> Type) (f : tele_forall_uncurry T P) (t : T) : P t :=
  | (tip A) | P | f | t := f t;
  | ext A B | P | f | (a, b) := tele_forall_pack (B a) (fun b => P (a, b)) (f a) b.

  Equations tele_forall_unpack (T : tele@{i}) (P : T -> Type@{j}) (f : forall (t : T), P t) : tele_forall_uncurry T P :=
  | (tip A) | P | f := f;
  | ext A B | P | f := fun a : A => tele_forall_unpack (B a) (fun b => P (a, b)) (fun b => f (a, b)).

End TeleSigma.

Register tele_sigma as equations.tele.interp.
Register tele_measure as equations.tele.measure.

Section Fix.
  Universe i j k.
  Context {T : tele@{i}} (R : T -> T -> Prop).
  Context (wf : WellFounded R).
  Context (P : tele_type@{i j k} T).

  Definition tele_fix_functional_type :=
    tele_forall_uncurry T (fun x =>
      ((tele_forall_uncurry T (fun y =>
         R y x -> tele_type_app T P y))) ->
      tele_type_app T P x).

  Context (fn : tele_fix_functional_type).

  Lemma tele_fix : tele_forall T P.
  Proof.
    refine (tele_forall_type_app _ _
     (@Subterm.FixWf (tele_sigma T) _ wf (tele_type_app T P)
           (fun x H => tele_forall_pack T _ fn x (tele_forall_unpack T _ H)))).
  Defined.
End Fix.

Register tele_fix as equations.tele.fix.
Register tele_MR as equations.tele.MR.
Register tele_fix_functional_type as equations.tele.fix_functional_type.

Register tele_type_app as equations.tele.type_app.
Register tele_forall_type_app as equations.tele.forall_type_app.
Register tele_forall_uncurry as equations.tele.forall_uncurry.
Register tele_forall as equations.tele.forall.
Register tele_forall_pack as equations.tele.forall_pack.
Register tele_forall_unpack as equations.tele.forall_unpack.

End Telescopes.
Module Export Equations_DOT_Prop_DOT_Equations_WRAPPED.
Module Export Equations.

Export Equations_DOT_Prop_DOT_Loader_WRAPPED.Loader.
Import Stdlib.Program.Tactics.

Global Obligation Tactic := simpl in *; program_simplify; Equations.CoreTactics.equations_simpl;
                              try program_solve_wf.
End Equations.
Module Export ZMicromega.
Import Stdlib.Lists.List.
Import Stdlib.ZArith.BinInt.
Import Stdlib.micromega.Tauto.
Import Stdlib.micromega.RingMicromega.
Import Stdlib.micromega.EnvRing.

#[local] Open Scope Z_scope.
Fixpoint Zeval_expr (env : PolEnv Z) (e: PExpr Z) : Z.
exact (match e with
    | PEc c => c
    | PEX x => env x
    | PEadd e1 e2 => Zeval_expr env e1 + Zeval_expr env e2
    | PEmul e1 e2 => Zeval_expr env e1 * Zeval_expr env e2
    | PEpow e1 n  => Z.pow (Zeval_expr env e1) (Z.of_N n)
    | PEsub e1 e2 => (Zeval_expr env e1) - (Zeval_expr env e2)
    | PEopp e   => Z.opp (Zeval_expr env e)
  end).
Defined.
Definition Zeval_pop2 (o : Op2) : Z -> Z -> Prop.
exact (match o with
| OpEq =>  @eq Z
| OpNEq => fun x y  => ~ x = y
| OpLe => Z.le
| OpGe => Z.ge
| OpLt => Z.lt
| OpGt => Z.gt
end).
Defined.
Definition Zeval_bop2 (o : Op2) : Z -> Z -> bool.
Admitted.
Definition Zeval_op2 (k: Tauto.kind) :  Op2 ->  Z -> Z -> Tauto.rtyp k.
exact (if k as k0 return (Op2 -> Z -> Z -> Tauto.rtyp k0)
  then Zeval_pop2 else Zeval_bop2).
Defined.

Definition Zeval_formula (env : PolEnv Z) (k: Tauto.kind) (f : Formula Z):=
  let (lhs, op, rhs) := f in
    (Zeval_op2 k op) (Zeval_expr env lhs) (Zeval_expr env rhs).

Definition ZWitness := Psatz Z.

Definition psub  := psub Z0  Z.add Z.sub Z.opp Z.eqb.

Definition normZ  := norm 0 1 Z.add Z.mul Z.sub Z.opp Z.eqb.

Definition Zunsat := check_inconsistent 0  Z.eqb Z.leb.

Definition Zdeduce := nformula_plus_nformula 0 Z.add Z.eqb.
Definition xnnormalise (t : Formula Z) : NFormula Z.
exact (let (lhs,o,rhs) := t in
  let lhs := normZ lhs in
  let rhs := normZ rhs in
  match o with
  | OpEq  => (psub rhs lhs,  Equal)
  | OpNEq => (psub rhs lhs,  NonEqual)
  | OpGt  => (psub lhs rhs,  Strict)
  | OpLt  => (psub rhs lhs,  Strict)
  | OpGe  => (psub lhs rhs,  NonStrict)
  | OpLe =>  (psub rhs lhs,  NonStrict)
  end).
Defined.
Definition xnormalise (f: NFormula Z) : list (NFormula Z).
exact (let (e,o) := f in
  match o with
  | Equal     => (psub e (Pc 1),NonStrict) :: (psub (Pc (-1)) e, NonStrict) :: nil
  | NonStrict =>  ((psub (Pc (-1)) e,NonStrict)::nil)
  | Strict    =>  ((psub (Pc 0)) e, NonStrict)::nil
  | NonEqual  =>  (e, Equal)::nil
  end).
Defined.

Definition cnf_of_list {T: Type} (tg : T) (l : list (NFormula Z)) :=
  List.fold_right (fun x acc =>
                     if Zunsat x then acc else ((x,tg)::nil)::acc)
                  (cnf_tt _ _)  l.
Definition normalise {T : Type} (t:Formula Z) (tg:T) : cnf (NFormula Z) T.
exact (let f := xnnormalise t in
  if Zunsat f then cnf_ff _ _
  else cnf_of_list tg (xnormalise f)).
Defined.
Definition xnegate (f:NFormula Z) : list (NFormula Z).
exact (let (e,o) := f in
    match o with
      | Equal  => (e,Equal) :: nil
      | NonEqual => (psub e (Pc 1),NonStrict) :: (psub (Pc (-1)) e, NonStrict) :: nil
      | NonStrict => (e,NonStrict)::nil
      | Strict    => (psub e (Pc 1),NonStrict)::nil
    end).
Defined.
Definition negate {T : Type} (t:Formula Z) (tg:T) : cnf (NFormula Z) T.
exact (let f := xnnormalise t in
  if Zunsat f then cnf_tt _ _
  else cnf_of_list tg (xnegate f)).
Defined.

Inductive ZArithProof :=
| DoneProof
| RatProof : ZWitness -> ZArithProof -> ZArithProof
| CutProof : ZWitness -> ZArithProof -> ZArithProof
| SplitProof : PolC Z -> ZArithProof -> ZArithProof -> ZArithProof
| deprecated_EnumProof : ZWitness -> ZWitness -> list ZArithProof -> ZArithProof
| ExProof   : positive -> ZArithProof -> ZArithProof

.

Register ZArithProof as micromega.ZArithProof.type.

Fixpoint ZChecker  (l:list (NFormula Z)) (pf : ZArithProof)  {struct pf} : bool.
Admitted.
Definition ZTautoChecker  (f : BFormula (Formula Z) Tauto.isProp) (w: list ZArithProof): bool.
exact (@tauto_checker (Formula Z) (NFormula Z) unit Zunsat Zdeduce normalise negate  ZArithProof (fun cl => ZChecker (List.map fst cl)) f w).
Defined.

Lemma ZTautoChecker_sound : forall f w, ZTautoChecker f w = true -> forall env, eval_bf  (Zeval_formula env)  f.
Admitted.

End ZMicromega.

Import Stdlib.ZArith.BinInt.
Import Stdlib.micromega.VarMap.
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
Export Stdlib.ZArith.Znat.
Import Stdlib.Classes.Morphisms.
#[export] Instance proper_S_lt : Morphisms.Proper (lt ==> lt)%signature S.
Admitted.
#[export] Instance proper_add_lt_r : Morphisms.Proper (eq ==> lt ==> lt)%signature Nat.add.
Admitted.
Module Export String.
  Inductive t : Set :=
  | EmptyString
  | String (_ : Byte.byte) (_ : t).

  Fixpoint print (b : t) : list Byte.byte :=
    match b with
    | EmptyString => nil
    | String b bs => b :: print bs
    end.
Fixpoint parse (b : list Byte.byte) : t.
Admitted.
Fixpoint compare (xs ys : t) : comparison.
Admitted.
Abbreviation string := String.t.

String Notation String.t String.parse String.print : bs_scope.
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
Notation "'eta_compose'" := (fun g f x => g (f x)).

Notation "g ∘ f" := (eta_compose g f) (at level 40, left associativity).

Notation "'∑' x .. y , p" := (sigT (fun x => .. (sigT (fun y => p%type)) ..))
  (at level 200, x binder, right associativity,
   format "'[' '∑'  '/  ' x  ..  y ,  '/  ' p ']'")
  : type_scope.

Notation "( x ; y )" := (@existT _ _ x y).
Ltac tea := try eassumption.
Import Stdlib.Sorting.SetoidList.

Export ListNotations.

Notation "#| l |" := (List.length l) (at level 0, l at level 99, format "#| l |").

Section ListSize.
  Context {A} (size : A -> nat).
Fixpoint list_size (l : list A) : nat.
exact (match l with
    | [] =>  0
    | a :: v => S (size a + list_size v)
    end).
Defined.

End ListSize.

Section MapInP.
  Context {A B : Type}.

  Equations map_InP (l : list A) (f : forall x : A, In x l -> B) : list B :=
  map_InP nil _ := nil;
  map_InP (cons x xs) f := cons (f x _) (map_InP xs (fun x inx => f x _)).
End MapInP.

Lemma In_size {A B} {x : A} {l : list A} (proj : A -> B) (size : B -> nat) :
  In x l -> size (proj x) < (list_size (size ∘ proj) l).
Admitted.
Variant prim_tag :=
  | primInt
  | primFloat
  | primString
  | primArray.
Derive NoConfusion EqDec for prim_tag.
Export MetaRocq.Utils.MRProd.

Global Open Scope bs_scope.

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

Inductive recursivity_kind :=
  | Finite
  | CoFinite
  | BiFinite .

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

  Module Export EAst.

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
Import Equations_DOT_Prop_DOT_Equations_WRAPPED.Equations.
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
