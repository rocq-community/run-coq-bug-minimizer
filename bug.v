
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/color" "CoLoR" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Bignums" "Bignums" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 440 lines to 291 lines, then from 305 lines to 1337 lines, then from 1343 lines to 423 lines, then from 437 lines to 1360 lines, then from 1366 lines to 499 lines, then from 513 lines to 1364 lines, then from 1371 lines to 834 lines, then from 835 lines to 431 lines, then from 445 lines to 1323 lines, then from 1330 lines to 512 lines, then from 526 lines to 1506 lines, then from 1513 lines to 682 lines, then from 696 lines to 1453 lines, then from 1460 lines to 1036 lines, then from 1026 lines to 727 lines, then from 741 lines to 1698 lines, then from 1705 lines to 808 lines, then from 822 lines to 1389 lines, then from 1396 lines to 788 lines, then from 802 lines to 1386 lines, then from 1393 lines to 840 lines, then from 854 lines to 2796 lines, then from 2803 lines to 1435 lines, then from 1371 lines to 825 lines, then from 839 lines to 3375 lines, then from 3382 lines to 909 lines, then from 923 lines to 2229 lines, then from 2236 lines to 1059 lines, then from 1073 lines to 1532 lines, then from 1538 lines to 1371 lines, then from 1363 lines to 1032 lines, then from 1046 lines to 1840 lines, then from 1847 lines to 1081 lines, then from 1095 lines to 2067 lines, then from 2074 lines to 1193 lines, then from 1207 lines to 2288 lines, then from 2295 lines to 1209 lines, then from 1223 lines to 1891 lines, then from 1898 lines to 1228 lines, then from 1242 lines to 4023 lines, then from 4030 lines to 1295 lines, then from 1309 lines to 1576 lines, then from 1583 lines to 1311 lines, then from 1325 lines to 2168 lines, then from 2175 lines to 1611 lines, then from 1602 lines to 1134 lines, then from 1148 lines to 3857 lines, then from 3856 lines to 1538 lines, then from 1550 lines to 1940 lines, then from 1947 lines to 1576 lines, then from 1588 lines to 2161 lines, then from 2165 lines to 2022 lines, then from 2034 lines to 2691 lines, then from 2697 lines to 2027 lines, then from 2039 lines to 2732 lines, then from 2735 lines to 2118 lines, then from 2130 lines to 3804 lines, then from 3811 lines to 2216 lines, then from 2227 lines to 2399 lines, then from 2406 lines to 2239 lines, then from 2251 lines to 3425 lines, then from 3416 lines to 2693 lines, then from 2651 lines to 2301 lines, then from 2313 lines to 3619 lines, then from 3618 lines to 2603 lines, then from 2615 lines to 4254 lines, then from 4218 lines to 2729 lines, then from 2741 lines to 2879 lines, then from 2886 lines to 2741 lines, then from 2752 lines to 3983 lines, then from 3961 lines to 2868 lines, then from 2879 lines to 3483 lines, then from 3488 lines to 2873 lines, then from 2884 lines to 3037 lines, then from 3043 lines to 2898 lines, then from 2910 lines to 4140 lines, then from 4145 lines to 3162 lines, then from 3174 lines to 3365 lines, then from 3373 lines to 3207 lines, then from 3219 lines to 3428 lines, then from 3436 lines to 3218 lines, then from 3231 lines to 3799 lines, then from 3804 lines to 3295 lines, then from 3307 lines to 4011 lines, then from 4017 lines to 3326 lines, then from 3338 lines to 4718 lines, then from 4725 lines to 3632 lines, then from 3645 lines to 4240 lines, then from 4240 lines to 3702 lines, then from 3716 lines to 4122 lines, then from 4121 lines to 3746 lines, then from 3758 lines to 4085 lines, then from 4092 lines to 3849 lines, then from 3862 lines to 4932 lines, then from 4930 lines to 4443 lines, then from 4396 lines to 2559 lines, then from 2571 lines to 3173 lines, then from 3181 lines to 2604 lines, then from 2616 lines to 2857 lines, then from 2865 lines to 2617 lines, then from 2629 lines to 3817 lines, then from 3817 lines to 2616 lines, then from 2628 lines to 4790 lines, then from 4762 lines to 2877 lines, then from 2889 lines to 3113 lines, then from 3119 lines to 2878 lines, then from 2890 lines to 2939 lines, then from 2947 lines to 2893 lines, then from 2905 lines to 2987 lines, then from 2995 lines to 2909 lines, then from 2921 lines to 3002 lines, then from 3010 lines to 2913 lines, then from 2925 lines to 3105 lines, then from 3112 lines to 2921 lines, then from 2933 lines to 3163 lines, then from 3171 lines to 2937 lines, then from 2949 lines to 2962 lines, then from 2970 lines to 2941 lines, then from 2955 lines to 2943 lines, then from 2954 lines to 2878 lines, then from 2892 lines to 2878 lines *)
(* coqc version 9.4+alpha compiled with OCaml 5.4.1
   coqtop version 9.4+alpha
   Modules that could not be inlined: Stdlib.micromega.ZifyInst, Stdlib.Vectors.Vector
   Expected coqc runtime on this file: 1.257 sec
   Expected coqc peak memory usage on this file: 1356344.0 kb *)
Require Corelib.Program.Utils.
Require Stdlib.Vectors.Vector.
Require Stdlib.micromega.ZifyInst.
Axiom proof_admitted : False.
Tactic Notation "admit" := abstract case proof_admitted.
Export Corelib.Program.Utils.
Module Export CoLoR_DOT_Util_DOT_Logic_DOT_LogicUtil_WRAPPED.
Module Export LogicUtil.

Ltac hyp := assumption || (symmetry; assumption).
Ltac refl := reflexivity.

End LogicUtil.
Module Export CoLoR.
Module Export Util.
Module Export Logic.
Module Export LogicUtil.
Include CoLoR_DOT_Util_DOT_Logic_DOT_LogicUtil_WRAPPED.LogicUtil.
End LogicUtil.
Set Implicit Arguments.

Inductive JMeq (A:Type) (x:A) : forall B:Type, B -> Prop :=
    JMeq_refl : JMeq x x.

Register JMeq as core.JMeq.type.
Register JMeq_refl as core.JMeq.refl.
Open Scope program_scope.
Import Stdlib.Relations.Relations.

Section S.

  Variables (A : Type) (R : relation A).

  Definition rel_dec := forall x y, {R x y} + {~R x y}.

End S.
Import Stdlib.Lists.List.

Infix "+++" := rev_append (right associativity, at level 60) : list_scope.
Module Stdlib_DOT_micromega_DOT_Tauto_WRAPPED.
Module Export Tauto.
Import Stdlib.Bool.Bool.

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
Definition rtyp (k: kind) : Type.
exact (if k then Prop else bool).
Defined.

  Variable ex : forall (k: kind), TX k -> rtyp k.

    Variable ea : forall (k: kind), TA -> rtyp k.
Definition eTT (k: kind) : rtyp k.
Admitted.
Definition eFF (k: kind) : rtyp k.
Admitted.
Definition eAND (k: kind) : rtyp k -> rtyp k -> rtyp k.
Admitted.
Definition eOR (k: kind) : rtyp k -> rtyp k -> rtyp k.
Admitted.
Definition eIMPL (k: kind) : rtyp k -> rtyp k -> rtyp k.
exact (if k as k' return rtyp k' -> rtyp k' -> rtyp k'
      then (fun x y => x -> y) else implb).
Defined.
Definition eIFF (k: kind) : rtyp k -> rtyp k -> rtyp k.
Admitted.
Definition eNOT (k: kind) : rtyp k -> rtyp k.
Admitted.

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

End S.

Definition eKind (k: kind) := if k then Prop else bool.
Register eKind as micromega.eKind.

Definition BFormula (A : Type) := @GFormula A eKind unit unit.

Register BFormula as micromega.BFormula.type.

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
Definition cnf_tt : cnf.
exact (@nil clause).
Defined.
Definition cnf_ff : cnf.
admit.
Defined.
Fixpoint add_term (t: Term' * Annot) (cl : clause) : option clause.
exact (match cl with
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
    end).
Defined.
Fixpoint or_clause (cl1 cl2 : clause) : option clause.
exact (match cl1 with
    | nil => Some cl2
    | t::cl => match add_term t cl2 with
               | None => None
               | Some cl' => or_clause cl cl'
               end
    end).
Defined.
Definition xor_clause_cnf (t:clause) (f:cnf) : cnf.
exact (List.fold_left (fun acc e =>
                      match or_clause t e with
                      | None => acc
                      | Some cl => cl :: acc
                      end) f nil).
Defined.
Definition or_clause_cnf (t: clause) (f:cnf) : cnf.
exact (match t with
    | nil => f
    | _   => xor_clause_cnf t f
    end).
Defined.
Fixpoint or_cnf (f : cnf) (f' : cnf) {struct f}: cnf.
exact (match f with
    | nil => cnf_tt
    | e :: rst => (or_cnf rst f') +++ (or_clause_cnf e f')
    end).
Defined.

  Definition TFormula (TX: kind -> Type) (AF: Type) := @GFormula Term TX Annot AF.
Definition is_cnf_tt (c : cnf) : bool.
exact (match c with
    | nil => true
    | _  => false
    end).
Defined.
Definition is_cnf_ff (c : cnf) : bool.
exact (match c with
    | nil::nil => true
    | _        => false
    end).
Defined.
Definition and_cnf_opt (f1 : cnf) (f2 : cnf) : cnf.
Admitted.
Definition or_cnf_opt (f1 : cnf) (f2 : cnf) : cnf.
exact (if is_cnf_tt f1 || is_cnf_tt f2
    then cnf_tt
    else if is_cnf_ff f2
         then f1 else or_cnf f1 f2).
Defined.

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

      Definition e_rtyp (k: kind) (x : rtyp k) : rtyp k.
admit.
Defined.

  Variable Witness : Type.
  Variable checker : list (Term'*Annot) -> Witness -> bool.
Fixpoint cnf_checker (f : cnf) (l : list Witness)  {struct f}: bool.
exact (match f with
    | nil => true
    | e::f => match l with
              | nil => false
              | c::l => match checker e c with
                        | true => cnf_checker f l
                        |   _  => false
                        end
              end
    end).
Defined.
Definition tauto_checker (f:@GFormula Term rtyp Annot unit isProp) (w:list Witness) : bool.
exact (cnf_checker (xcnf true f) w).
Defined.

  Definition eval_bf {A : Type} (ea : forall (k: kind), A -> rtyp k) (k: kind) (f: BFormula A k) := eval_f e_rtyp ea f.

End S.

End Tauto.

End Stdlib_DOT_micromega_DOT_Tauto_WRAPPED.
Module Export Stdlib.
Module Export micromega.
Module Tauto.
Include Stdlib_DOT_micromega_DOT_Tauto_WRAPPED.Tauto.
End Tauto.

Module Export Stdlib_DOT_Structures_DOT_DecidableType_WRAPPED.
Module Export DecidableType.

Module Type DecidableType := Equalities.DecidableTypeOrig.

End DecidableType.
Module Export Stdlib.
Module Export Structures.
Module Export DecidableType.
Include Stdlib_DOT_Structures_DOT_DecidableType_WRAPPED.DecidableType.
End DecidableType.
Module Export Stdlib_DOT_Structures_DOT_OrderedType_WRAPPED.
Module Export OrderedType.

Inductive Compare (X : Type) (lt eq : X -> X -> Prop) (x y : X) : Type :=
  | LT : lt x y -> Compare lt eq x y
  | EQ : eq x y -> Compare lt eq x y
  | GT : lt y x -> Compare lt eq x y.

Arguments LT [X lt eq x y] _.
Arguments EQ [X lt eq x y] _.
Arguments GT [X lt eq x y] _.

Module Type MiniOrderedType.

  Parameter Inline t : Type.

  Parameter Inline eq : t -> t -> Prop.
  Parameter Inline lt : t -> t -> Prop.

  Axiom eq_refl : forall x : t, eq x x.
  Axiom eq_sym : forall x y : t, eq x y -> eq y x.
  Axiom eq_trans : forall x y z : t, eq x y -> eq y z -> eq x z.

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

  End OrderedTypeFacts.

End OrderedType.
Module Export Stdlib.
Module Export Structures.
Module Export OrderedType.
Include Stdlib_DOT_Structures_DOT_OrderedType_WRAPPED.OrderedType.
End OrderedType.
Module Export Stdlib_DOT_MSets_DOT_MSetInterface_WRAPPED.
Module Export MSetInterface.
Export Stdlib.Structures.Orders.

Module Type TypElt.
 Parameters t elt : Type.
End TypElt.

Module Type HasWOps (Import T:TypElt).

  Parameter is_empty : t -> bool.

  Parameter mem : elt -> t -> bool.

  Parameter equal : t -> t -> bool.

  Parameter subset : t -> t -> bool.

  Parameter for_all : (elt -> bool) -> t -> bool.

  Parameter exists_ : (elt -> bool) -> t -> bool.

  Parameter cardinal : t -> nat.

End HasWOps.

Module Type WOps (E : DecidableType).
  Definition elt := E.t.
  Parameter t : Type.

  Include HasWOps.
End WOps.

Module Type WSetsOn (E : DecidableType).

  Include WOps E.

  Parameter In : elt -> t -> Prop.

  Definition Equal s s' := forall a : elt, In a s <-> In a s'.
Definition eq : t -> t -> Prop.
exact (Equal).
Defined.

End WSetsOn.

Module Type WSets.
  Declare Module E : DecidableType.
  Include WSetsOn E.
End WSets.

Module Type HasOrdOps (Import T:TypElt).

  Parameter compare : t -> t -> comparison.

End HasOrdOps.

Module Type Ops (E : OrderedType) := WOps E <+ HasOrdOps.

Module Type SetsOn (E : OrderedType).
  Include WSetsOn E <+ HasOrdOps <+ HasLt <+ IsStrOrder.

End SetsOn.

Module Type Sets.
  Declare Module E : OrderedType.
  Include SetsOn E.
End Sets.

Module Type S := Sets.

Module Type WRawSets (E : DecidableType).

  Include WOps E.

  Parameter IsOk : t -> Prop.
  Class Ok (s:t) : Prop := ok : IsOk s.

  Parameter In : elt -> t -> Prop.
Definition eq : t -> t -> Prop.
Admitted.

End WRawSets.

Module WRaw2SetsOn (E:DecidableType)(M:WRawSets E) <: WSetsOn E.

 Definition elt := E.t.

 Record t_ := Mkt {this :> M.t; is_ok : M.Ok this}.
 Definition t := t_.

 Definition In (x : elt)(s : t) := M.In x (this s).
 Definition Equal (s s' : t) := forall a : elt, In a s <-> In a s'.

 Definition mem (x : elt)(s : t) := M.mem x s.
 Definition equal (s s' : t) := M.equal s s'.
 Definition subset (s s' : t) := M.subset s s'.
 Definition is_empty (s : t) := M.is_empty s.
 Definition cardinal (s : t) := M.cardinal s.
 Definition for_all (f : elt -> bool)(s : t) := M.for_all f s.
 Definition exists_ (f : elt -> bool)(s : t) := M.exists_ f s.
Definition eq : t -> t -> Prop.
exact (Equal).
Defined.

End WRaw2SetsOn.

Module WRaw2Sets (D:DecidableType)(M:WRawSets D) <: WSets with Module E := D.
  Module E := D.
  Include WRaw2SetsOn D M.
End WRaw2Sets.

Module Type RawSets (E : OrderedType).
  Include WRawSets E <+ HasOrdOps <+ HasLt <+ IsStrOrder.

End RawSets.

Module Raw2SetsOn (O:OrderedType)(M:RawSets O) <: SetsOn O.
  Include WRaw2SetsOn O M.

  Definition compare (s s':t) := M.compare s s'.
  Definition lt (s s':t) := M.lt s s'.

#[global]
  Instance lt_strorder : StrictOrder lt.
Admitted.

#[global]
  Instance lt_compat : Proper (eq==>eq==>iff) lt.
Admitted.

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

End MakeListOrdering.

End MSetInterface.
Module Export Stdlib.
Module Export MSets.
Module Export MSetInterface.
Include Stdlib_DOT_MSets_DOT_MSetInterface_WRAPPED.MSetInterface.
End MSetInterface.
Module Export OrdersAlt.

Module Type OrderedTypeOrig := OrderedType.OrderedType.

Module Type OrderedTypeAlt.

 Parameter t : Type.

 Parameter compare : t -> t -> comparison.

 Infix "?=" := compare (at level 70, no associativity).

End OrderedTypeAlt.

Module Update_OT (O:OrderedTypeOrig) <: OrderedType.

 Include Update_DT O.

 Definition lt := O.lt.

#[global]
 Instance lt_strorder : StrictOrder lt.
Admitted.

#[global]
 Instance lt_compat : Proper (eq==>eq==>iff) lt.
Admitted.

 Definition compare x y :=
   match O.compare x y with
    | EQ _ => Eq
    | LT _ => Lt
    | GT _ => Gt
  end.

 Lemma compare_spec : forall x y, CompSpec eq lt x y (compare x y).
Admitted.

End Update_OT.

Module Backport_OT (O:OrderedType) <: OrderedTypeOrig.

 Include Backport_DT O.

 Definition lt := O.lt.

 Definition compare : forall x y, Compare lt eq x y.
Admitted.

End Backport_OT.

Module OT_from_Alt (Import O:OrderedTypeAlt) <: OrderedType.

 Definition t := t.

 Definition eq x y := (x?=y) = Eq.
 Definition lt x y := (x?=y) = Lt.

#[global]
 Instance eq_equiv : Equivalence eq.
Admitted.

#[global]
 Instance lt_strorder : StrictOrder lt.
Admitted.

#[global]
 Instance lt_compat : Proper (eq==>eq==>iff) lt.
Admitted.

 Definition compare := O.compare.

 Lemma compare_spec : forall x y, CompSpec eq lt x y (compare x y).
Admitted.

 Definition eq_dec : forall x y, { eq x y } + { ~ eq x y }.
Admitted.

End OT_from_Alt.

Module OT_to_Alt (Import O:OrderedType) <: OrderedTypeAlt.

 Definition t := t.
 Definition compare := compare.

End OT_to_Alt.
Module Export Stdlib_DOT_FSets_DOT_FSetInterface_WRAPPED.
Module Export FSetInterface.
Export Stdlib.Structures.OrderedType.
Export Stdlib.Structures.DecidableType.

Module Type WSfun (E : DecidableType).

  Definition elt := E.t.

  Parameter t : Type.

  Parameter In : elt -> t -> Prop.
  Definition Equal s s' := forall a : elt, In a s <-> In a s'.

  Parameter empty : t.

  Parameter mem : elt -> t -> bool.

  Parameter add : elt -> t -> t.

  Parameter singleton : elt -> t.

  Parameter remove : elt -> t -> t.

  Parameter union : t -> t -> t.

  Parameter diff : t -> t -> t.
Definition eq : t -> t -> Prop.
exact (Equal).
Defined.

  Parameter fold : forall A : Type, (elt -> A -> A) -> t -> A -> A.

End WSfun.

Module Type WS.
  Declare Module E : DecidableType.
  Include WSfun E.
End WS.

Module Type Sfun (E : OrderedType).
  Include WSfun E.

End Sfun.

Module Type S.
  Declare Module E : OrderedType.
  Include Sfun E.
End S.

End FSetInterface.
Module Export Stdlib.
Module Export FSets.
Module Export FSetInterface.
Include Stdlib_DOT_FSets_DOT_FSetInterface_WRAPPED.FSetInterface.
End FSetInterface.

Module Export Stdlib_DOT_FSets_DOT_FMapInterface_WRAPPED.
Module Export FMapInterface.

Module Type WSfun (E : DecidableType).

  Definition key := E.t.

  Parameter t : Type -> Type.

  Section Types.

    Variable elt:Type.

    Parameter empty : t elt.

    Parameter add : key -> elt -> t elt -> t elt.

    Parameter find : key -> t elt -> option elt.

      Parameter MapsTo : key -> elt -> t elt -> Prop.
Definition In (k:key)(m: t elt) : Prop.
Admitted.

     Definition Equal m m' := forall y, find y m = find y m'.
   End Types.

End WSfun.

Module Type Sfun (E : OrderedType).
  Include WSfun E.
End Sfun.

Module Type S.
  Declare Module E : OrderedType.
  Include Sfun E.
End S.

Module Type Sord.

  Declare Module Data : OrderedType.
  Declare Module MapS : S.

End Sord.

End FMapInterface.
Module Export Stdlib.
Module Export FSets.
Module Export FMapInterface.
Include Stdlib_DOT_FSets_DOT_FMapInterface_WRAPPED.FMapInterface.
End FMapInterface.

Module Raw (X:OrderedType).
End Raw.

Module Make (X: OrderedType) <: S with Module E := X.
Module E := X.

Definition key := E.t.
Definition t (elt:Type) : Type.
Admitted.

Section Elt.
 Variable elt elt' elt'':Type.

 Implicit Types m : t elt.
 Implicit Types x y : key.
 Implicit Types e : elt.
Definition empty : t elt.
admit.
Defined.
Definition add x e m : t elt.
admit.
Defined.
Definition find x m : option elt.
admit.
Defined.
Definition MapsTo x e m : Prop.
admit.
Defined.
Definition In x m : Prop.
admit.
Defined.

 Definition Equal m m' := forall y, find y m = find y m'.

 End Elt.

End Make.

Module Make_ord (X: OrderedType)(D : OrderedType) <:
Sord with Module Data := D
        with Module MapS.E := X.

Module Data := D.
Module MapS := Make(X).

End Make_ord.
Reserved Notation "x ?=! y" (at level 70, no associativity).
Reserved Notation "x +! y " (at level 50, left associativity).
Reserved Notation "x -! y" (at level 50, left associativity).
Reserved Notation "-! x" (at level 35, right associativity).

Reserved Notation "x ?== y" (at level 70, no associativity).
Reserved Notation "-- x" (at level 35, right associativity).
Import Stdlib.ZArith.BinInt.

Module Type Int.

  Parameter t : Set.

End Int.

Module MoreInt (Import I:Int).

End MoreInt.

Module Z_as_Int <: Int.
  Definition t := Z.
End Z_as_Int.

Section S.

  Variable D :Type.

  Definition Env := positive -> D.

End S.

Inductive t {A} : Type :=
| Empty : t
| Elt : A -> t
| Branch : t  -> A -> t  -> t .
Arguments t : clear implicits.
Register Elt    as micromega.VarMap.Elt.
Register t      as micromega.VarMap.type.

Section MakeVarMap.

  Variable A : Type.
  Variable default : A.

  Abbreviation t := (t A).
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

 Abbreviation PExpr := (PExpr C).
 Abbreviation Pol := (Pol C).
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
Reserved Notation "x [=] y" (at level 70, no associativity).
Reserved Notation "x [<] y" (at level 70, no associativity).
Reserved Notation "x [<=] y" (at level 70, no associativity).
Import Stdlib.Bool.Bool.

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
Export Stdlib.Arith.Arith_base.
Module Export ZMicromega.
Import Stdlib.micromega.Tauto.

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

#[warning="-register-all"]
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
Module Export MSetGenTree.
Import Stdlib.MSets.MSetInterface.
#[local] Open Scope lazy_bool_scope.

Module Type InfoTyp.
 Parameter t : Set.
End InfoTyp.

Module Ops (X:OrderedType)(Info:InfoTyp).

Definition elt := X.t.

Inductive tree  : Type :=
| Leaf : tree
| Node : Info.t -> tree -> X.t -> tree -> tree.

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

Module Type OpsT (X:OrderedType)(Info:InfoTyp).
Include Ops X Info.
End OpsT.

Module Props (X:OrderedType)(Info:InfoTyp)(Import M:OpsT X Info).

Inductive InT (x : elt) : tree -> Prop :=
  | IsRoot : forall c l r y, X.eq x y -> InT x (Node c l y r)
  | InLeft : forall c l r y, InT x l -> InT x (Node c l y r)
  | InRight : forall c l r y, InT x r -> InT x (Node c l y r).

Definition In := InT.

Definition Equal s s' := forall a : elt, InT a s <-> InT a s'.

Definition lt_tree x s := forall y, InT y s -> X.lt y x.
Definition gt_tree x s := forall y, InT y s -> X.lt x y.

Inductive bst : tree -> Prop :=
  | BSLeaf : bst Leaf
  | BSNode : forall c x l r, bst l -> bst r ->
     lt_tree x l -> gt_tree x r -> bst (Node c l x r).

Definition IsOk := bst.

Class Ok (s:tree) : Prop := ok : bst s.

Definition eq := Equal.
Definition lt (s1 s2 : tree) : Prop.
Admitted.

#[global]
Instance lt_strorder : StrictOrder lt.
Admitted.

#[global]
Instance lt_compat : Proper (eq==>eq==>iff) lt.
Admitted.

End Props.
Module Export MSetAVL.

Module Ops (Import I:Int)(X:OrderedType) <: MSetInterface.Ops X.

Include MSetGenTree.Ops X I.

Definition t := tree.

End Ops.

Module MakeRaw (Import I:Int)(X:OrderedType) <: RawSets X.
Include Ops I X.

Include MSetGenTree.Props X I.

End MakeRaw.

Module IntMake (I:Int)(X: OrderedType) <: S with Module E := X.
 Module Raw := MakeRaw I X.
 Include Raw2Sets X Raw.
End IntMake.
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
Module CoLoR_DOT_Util_DOT_Relation_DOT_RelUtil_WRAPPED.
Module Export RelUtil.
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

Section inverse_image.

  Variables (A B : Type) (R : rel B) (f : A->B).
Definition Rof : rel A.
exact (fun a a' => R (f a) (f a')).
Defined.

End inverse_image.

Section opt.

  Variables (A : Type) (R : rel A).

  Inductive opt : rel (option A) :=
  | opt_intro : forall x y, R x y -> opt (Some x) (Some y).

End opt.

End RelUtil.

End CoLoR_DOT_Util_DOT_Relation_DOT_RelUtil_WRAPPED.
Module Export CoLoR.
Module Export Util.
Module Export Relation.
Module RelUtil.
Include CoLoR_DOT_Util_DOT_Relation_DOT_RelUtil_WRAPPED.RelUtil.
End RelUtil.
Module Export OrderedTypeEx.

Module Type UsualOrderedType.
End UsualOrderedType.

Module Nat_as_OT <: UsualOrderedType.

  Definition t := nat.

  Definition eq := @eq nat.
  Definition eq_refl := @eq_refl t.
  Definition eq_sym := @eq_sym t.
  Definition eq_trans := @eq_trans t.

  Definition lt := lt.

  Definition compare x y : Compare lt eq x y.
Admitted.

  Definition eq_dec := eq_nat_dec.

End Nat_as_OT.
Export Stdlib.FSets.FSetInterface.

Module WFacts_fun (Import E : DecidableType)(Import M : WSfun E).

End WFacts_fun.
Module Export FSetCompat.

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
Definition empty : t.
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
Definition diff : t -> t -> t.
Admitted.
Definition eq : t -> t -> Prop.
exact (M.eq).
Defined.
Definition fold : forall A : Type, (elt -> A -> A) -> t -> A -> A.
Admitted.

End Backport_WSets.

Module Backport_Sets
 (O:OrderedType.OrderedType)
 (M:MSetInterface.Sets with Definition E.t := O.t
                       with Definition E.eq := O.eq
                       with Definition E.lt := O.lt)
 <: FSetInterface.S with Module E:=O.

  Include Backport_WSets O M.
Definition max_elt : t -> option elt.
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
Definition is_empty : t -> bool.
Admitted.
Definition mem : elt -> t -> bool.
Admitted.
Definition eq : t -> t -> Prop.
exact (M.eq).
Defined.
Definition equal : t -> t -> bool.
Admitted.
Definition subset : t -> t -> bool.
Admitted.
Definition for_all : (elt -> bool) -> t -> bool.
Admitted.
Definition exists_ : (elt -> bool) -> t -> bool.
Admitted.
Definition cardinal : t -> nat.
admit.
Defined.

End Update_WSets.

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

Module Export FMapAVL.
Import Stdlib.FSets.FMapInterface.

Module Raw (Import I:Int)(X: OrderedType).
#[local] Abbreviation int := I.t.

Definition key := X.t.

#[universes(template)]
Inductive tree {elt : Type} :=
  | Leaf : tree
  | Node : tree -> key -> elt -> tree -> int -> tree.
Arguments tree : clear implicits.
Abbreviation t := tree.
Arguments Leaf : clear implicits.

Section Invariants.
Variable elt : Type.

Inductive In (x : key) : t elt -> Prop :=
  | InRoot : forall l r h y e,
      X.eq x y -> In x (Node l y e r h)
  | InLeft : forall l r h y e',
      In x l -> In x (Node l y e' r h)
  | InRight : forall l r h y e',
      In x r -> In x (Node l y e' r h).

Definition lt_tree x m := forall y, In y m -> X.lt y x.
Definition gt_tree x m := forall y, In y m -> X.lt x y.

Inductive bst : t elt -> Prop :=
  | BSLeaf : bst (Leaf _)
  | BSNode : forall x e l r h, bst l -> bst r ->
     lt_tree x l -> gt_tree x r -> bst (Node l x e r h).

End Invariants.
End Raw.

Module IntMake (I:Int)(X: OrderedType) <: S with Module E := X.

 Module E := X.
 Module Raw := Raw I X.

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
Definition add x e m : t elt.
admit.
Defined.
Definition find x m : option elt.
admit.
Defined.
Definition MapsTo x e m : Prop.
admit.
Defined.
Definition In x m : Prop.
admit.
Defined.

 Definition Equal m m' := forall y, find y m = find y m'.

 End Elt.

End IntMake.

Module IntMake_ord (I:Int)(X: OrderedType)(D : OrderedType) <:
    Sord with Module Data := D
         with Module MapS.E := X.

  Module Data := D.
  Module Import MapS := IntMake(I)(X).

End IntMake_ord.

Module Make (X: OrderedType) <: S with Module E := X
 :=IntMake(Z_as_Int)(X).

End FMapAVL.

  Module Export FSetAVL.

Module IntMake (I:Int)(X: OrderedType) <: S with Module E := X.
 Module X' := OrdersAlt.Update_OT X.
 Module MSet := MSetAVL.IntMake I X'.
 Include FSetCompat.Backport_Sets X MSet.
End IntMake.

Module Make (X: OrderedType) <: S with Module E := X
 :=IntMake(Z_as_Int)(X).

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
