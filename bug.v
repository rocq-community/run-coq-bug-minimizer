
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "+implicit-core-hint-db,+implicits-in-term,+non-reversible-notation,+deprecated-intros-until-0,+deprecated-focus,+unused-intro-pattern,+variable-collision,+unexpected-implicit-declaration,+omega-is-deprecated,+deprecated-instantiate-syntax,+non-recursive,+undeclared-scope,+deprecated-hint-rewrite-without-locality,+deprecated-hint-without-locality,+deprecated-instance-without-locality,+deprecated-typeclasses-transparency-without-locality,+fragile-hint-constr,-deprecated-since-9.0,-deprecated-since-8.20,-deprecated-from-Coq" "-w" "-notation-overridden,-native-compiler-disabled,-ambiguous-paths,-masking-absolute-name" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/fiat_crypto/src" "Crypto" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Coqprime" "Coqprime" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Kami" "Kami" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Rewriter" "Rewriter" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Rupicola" "Rupicola" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/bedrock2" "bedrock2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/bedrock2Examples" "bedrock2Examples" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/compiler" "compiler" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/coqutil" "coqutil" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/riscv" "riscv" "-top" "Crypto.Bedrock.Field.Synthesis.Examples.redc") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 577 lines to 117 lines, then from 131 lines to 869 lines, then from 877 lines to 453 lines, then from 468 lines to 1367 lines, then from 1372 lines to 533 lines, then from 548 lines to 1295 lines, then from 1303 lines to 616 lines, then from 631 lines to 1279 lines, then from 1286 lines to 653 lines, then from 668 lines to 953 lines, then from 961 lines to 662 lines, then from 677 lines to 1947 lines, then from 1949 lines to 996 lines, then from 1011 lines to 1284 lines, then from 1292 lines to 1026 lines, then from 1041 lines to 1079 lines, then from 1087 lines to 1042 lines, then from 1057 lines to 1205 lines, then from 1211 lines to 1085 lines, then from 1100 lines to 1221 lines, then from 1229 lines to 1123 lines, then from 1138 lines to 1177 lines, then from 1185 lines to 1151 lines, then from 1166 lines to 1480 lines, then from 1488 lines to 1182 lines, then from 1197 lines to 1464 lines, then from 1472 lines to 1195 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Modules that could not be inlined: Crypto.Arithmetic.WordByWordMontgomery
   Expected coqc runtime on this file: 1.177 sec
   Expected coqc peak memory usage on this file: 976608.0 kb *)

Require bedrock2.Markers.
Require coqutil.Tactics.eabstract.
Require coqutil.Tactics.letexists.
Require coqutil.Tactics.ident_of_string.
Require coqutil.Tactics.reference_to_string.
Require bedrock2.NotationsCustomEntry.
Require bedrock2.WeakestPreconditionProperties.
Require coqutil.Word.Bitwidth64.
Require coqutil.Word.Naive.
Module Export SortedListWord.
Import coqutil.Word.Interface.
Import coqutil.Map.Interface.

Section __.
  Context {width} (word : word width) {word_ok : @word.ok width word}.

  Context (value : Type).
Definition map : map.map word value.
Admitted.
Global Instance ok : map.ok map.
Admitted.
End __.
End SortedListWord.

Module Export bedrock2_DOT_BasicC64Semantics_WRAPPED.
Module Export BasicC64Semantics.
Import Coq.ZArith.ZArith.
Import bedrock2.Semantics.
Export coqutil.Word.Bitwidth64.
#[export] Instance word: word.word 64.
exact (Naive.word64).
Defined.
#[export] Instance mem: Interface.map.map word Byte.byte.
exact (SortedListWord.map _ _).
Defined.
#[export] Instance locals: Interface.map.map String.string word.
exact (SortedListString.map _).
Defined.
#[export] Instance ext_spec: ExtSpec.
Admitted.
Add Ring wring : (Properties.word.ring_theory (word := word))
      (preprocess [autorewrite with rew_word_morphism],
       morphism (Properties.word.ring_morph (word := word)),
       constants [Properties.word_cst]).

End BasicC64Semantics.
Module Export bedrock2.
Module Export BasicC64Semantics.
Include bedrock2_DOT_BasicC64Semantics_WRAPPED.BasicC64Semantics.
End BasicC64Semantics.

End bedrock2.
Ltac rdelta x :=
  match constr:(Set) with
  | _ => progress_rdelta x
  | _ => x
  end
with progress_rdelta x :=
  let x := eval cbv delta [x] in x in
  rdelta x.

Ltac rdelta_var x :=
  match constr:(Set) with
  | _ => progress_rdelta_var x
  | _ => x
  end
with progress_rdelta_var x :=
  let __ := match constr:(Set) with _ => is_var x end in
  let x := eval cbv delta [x] in x in
  rdelta_var x.
Module Export coqutil_DOT_Tactics_DOT_rdelta.
Module Export coqutil.
Module Export Tactics.
Module Export rdelta.
End rdelta.

End Tactics.

End coqutil.

End coqutil_DOT_Tactics_DOT_rdelta.

Ltac _syntactic_unify_deltavar x y :=
  match constr:(Set) with
  | _ => is_evar x; unify x y
  | _ => is_evar y; unify x y
  | _ => is_var x; let x := eval cbv delta [x] in x in _syntactic_unify_deltavar x y
  | _ => is_var y; let y := eval cbv delta [y] in y in _syntactic_unify_deltavar x y
  | _ => lazymatch x with
         | ?f ?a => lazymatch y with ?g ?b => _syntactic_unify_deltavar f g; _syntactic_unify_deltavar a b end
         | (fun (a:?Ta) => ?f a)
           => lazymatch y with (fun (b:?Tb) => ?g b) =>
                               let __ := constr:(fun (a:Ta) (b:Tb) => ltac:(_syntactic_unify_deltavar f g; exact Set)) in idtac end
         | let a : ?Ta := ?v in ?f a
           => lazymatch y with let b : ?Tb := ?w in ?g b =>
                               _syntactic_unify_deltavar v w;
                               let __ := constr:(fun (a:Ta) (b:Tb) => ltac:(_syntactic_unify_deltavar f g; exact Set)) in idtac end

         | _ => first [ constr_eq x y
                      | first [has_evar x | has_evar y]; unify x y; constr_eq x y ]
         end
  end.
Tactic Notation "syntactic_unify_deltavar" open_constr(x) open_constr(y) :=  _syntactic_unify_deltavar x y.

Ltac _syntactic_exact_deltavar e :=
  let t := type of e in
  let g := lazymatch goal with |- ?g => g end in
  tryif syntactic_unify_deltavar t g then exact_no_check e else fail "syntactic_unify" t g.
Tactic Notation "syntactic_exact_deltavar" open_constr(e) :=
  _syntactic_exact_deltavar e.
Module Export coqutil_DOT_Tactics_DOT_syntactic_unify.
Module Export coqutil.
Module Export Tactics.
Module Export syntactic_unify.
End syntactic_unify.

End Tactics.

End coqutil.

End coqutil_DOT_Tactics_DOT_syntactic_unify.

Ltac list_get l i :=
  lazymatch l with
  | cons ?a ?l =>
    lazymatch i with
    | O  => a
    | S ?i => list_get l i
    end
  | _ => fail "list_get nil" i
  end.

Ltac index_and_element_of xs :=
  multimatch xs with
  | cons ?x _ => constr:((0%nat, x))
  | cons _ ?xs =>
    let r := index_and_element_of xs in
    multimatch r with
    | (?i, ?y) => constr:((S i, y))
    end
  end.

Ltac find_syntactic_unify_deltavar xs y :=
  multimatch xs with
  | cons ?x _ =>
    let __ := match constr:(Set) with _ => syntactic_unify_deltavar x y end in
    constr:(O)
  | cons _ ?xs => let i := find_syntactic_unify_deltavar xs y in constr:(S i)
  end.

Ltac find_constr_eq xs y :=
  match xs with
  | cons ?x _ => constr:(ltac:(constr_eq x y; exact 0%nat))
  | cons _ ?xs => let i := find_constr_eq xs y in constr:(S i)
  end.
Module Export coqutil.
Module Export Tactics.
Module Export ltac_list_ops.
End ltac_list_ops.

End Tactics.

End coqutil.
Module Export Lift1Prop.
Import Coq.Classes.Morphisms.

Section Binary.
  Context {T: Type} (P Q: T -> Prop).
  Definition impl1 := forall x, P x -> Q x.
  Definition iff1 := forall x, P x <-> Q x.
End Binary.
Global Instance subrelation_iff1_impl1 T : subrelation (@iff1 T) (@impl1 T).
Admitted.
Global Instance Equivalence_iff1 T : Equivalence (@iff1 T).
Admitted.
Module Export coqutil.
Module Export Lift1Prop.
End Lift1Prop.

End coqutil.
Module Export Separation.
Import coqutil.Map.Interface.
Import map.

Section Sep.
  Context {key value} {map : map key value}.
  Definition emp (P : Prop) := fun m : map => m = empty /\ P.
  Definition sep (p q : map -> Prop) m :=
    exists mp mq, split m mp mq /\ p mp /\ q mq.
  Definition ptsto k v := fun m : map => m = put empty k v.

  Fixpoint seps (xs : list (rep -> Prop)) : rep -> Prop :=
    match xs with
    | cons x nil => x
    | cons x xs => sep x (seps xs)
    | nil => emp True
    end.
End Sep.

Definition sepclause_of_map {key value map} (m : @map.rep key value map)
  : map.rep -> Prop := Logic.eq m.
Coercion sepclause_of_map : Interface.map.rep >-> Funclass.

Declare Scope sep_scope.
Delimit Scope sep_scope with sep.
Infix "*" := sep (at level 40, left associativity) : sep_scope.
Notation "m =* P" := ((P%sep) m) (at level 70, only parsing).
Module Export coqutil.
Module Export Map.
Module Export Separation.
End Separation.
Module Export SeparationLogic.
Import coqutil.Lift1Prop.
Import coqutil.Map.Interface.
Import coqutil.Tactics.ltac_list_ops.
Import Map.Interface.map.
Lemma impl1_refl{T: Type}: forall {P: T -> Prop}, Lift1Prop.impl1 P P.
Admitted.

Lemma iff1_refl{A: Type}(P: A -> Prop): iff1 P P.
Admitted.
Lemma iff1_sym{A: Type}{P Q: A -> Prop}: iff1 P Q -> iff1 Q P.
Admitted.

Ltac iff1_syntactic_reflexivity :=
  lazymatch goal with
  | |- iff1 ?x ?y => first [is_evar x | is_evar y | constr_eq x y]
  end;
  exact (iff1_refl _).

Section SepProperties.
  Context {key value} {map : map key value} {ok : ok map}.

  Local Definition hd {T} := Eval cbv delta in @List.hd T.
  Local Definition tl {T} := Eval cbv delta in @List.tl T.
  Local Definition firstn {T} := Eval cbv delta in @List.firstn T.
  Local Definition skipn {T} := Eval cbv delta in @List.skipn T.
  Local Definition app {T} := Eval cbv delta in @List.app T.

  Local Infix "++" := app.
  Let nth n xs := hd (emp(map:=map) True) (skipn n xs).
  Let remove_nth n (xs : list (map -> Prop)) :=
    (firstn n xs ++ tl (skipn n xs)).

  Lemma cancel_seps_at_indices i j xs ys
        (Hij : nth i xs = nth j ys)
        (Hrest : iff1 (seps (remove_nth i xs)) (seps (remove_nth j ys)))
    : iff1 (seps xs) (seps ys).
Admitted.

  Lemma cancel_seps_at_indices_by_implication i j xs ys
        (Hij : Lift1Prop.impl1 (nth i xs) (nth j ys))
        (Hrest : Lift1Prop.impl1 (seps (remove_nth i xs)) (seps (remove_nth j ys)))
    : Lift1Prop.impl1 (seps xs) (seps ys).
Admitted.

  Lemma cancel_emp_at_index_l i xs ys
        (Hi : nth i xs = emp True)
        (Hrest : iff1 (seps (remove_nth i xs)) (seps ys))
    : iff1 (seps xs) (seps ys).
Admitted.
  Lemma cancel_emp_at_index_r j xs ys
        (Hj : nth j ys = emp True)
        (Hrest : iff1 (seps xs) (seps (remove_nth j ys)))
    : iff1 (seps xs) (seps ys).
Admitted.

  Lemma cancel_emp_at_index_impl j xs ys
        (Hj : nth j ys = emp True)
        (Hrest : impl1 (seps xs) (seps (remove_nth j ys)))
    : impl1 (seps xs) (seps ys).
Admitted.
End SepProperties.
Import coqutil.Tactics.syntactic_unify.
Import coqutil.Tactics.rdelta.

Module Export Tree.
  Inductive Tree(A: Type): Type :=
  | Leaf(a: A)
  | Node(left right: Tree A).
  Arguments Leaf {A} _.
  Arguments Node {A} _ _.
  Section Interp.
    Context {A B: Type}.
    Context (interp_Leaf: A -> B).
    Context (interp_Node: B -> B -> B).
Fixpoint interp(t: Tree A): B.
exact (match t with
      | Leaf a => interp_Leaf a
      | Node t1 t2 => interp_Node (interp t1) (interp t2)
      end).
Defined.
  End Interp.
Definition flatten{A: Type}: Tree A -> list A.
exact (interp (fun a => cons a nil) (@app A)).
Defined.

  Section WithMap.
    Context {key value} {map : map key value} {ok : ok map}.
Definition to_sep: Tree (map -> Prop) -> map -> Prop.
exact (interp (fun x => x) sep).
Defined.

    Lemma flatten_iff1_to_sep(t : Tree.Tree (map -> Prop)):
      Lift1Prop.iff1 (seps (flatten t)) (to_sep t).
Admitted.

    Lemma iff1_to_sep_of_iff1_flatten(LHS RHS : Tree (map -> Prop)):
      Lift1Prop.iff1 (seps (flatten LHS)) (seps (flatten RHS)) ->
      Lift1Prop.iff1 (to_sep LHS) (to_sep RHS).
Admitted.

    Lemma impl1_to_sep_of_impl1_flatten(LHS RHS : Tree (map -> Prop)):
      Lift1Prop.impl1 (seps (flatten LHS)) (seps (flatten RHS)) ->
      Lift1Prop.impl1 (to_sep LHS) (to_sep RHS).
Admitted.

    Lemma flatten_to_sep_with_and(t : Tree.Tree (map -> Prop))(m: map)(C: Prop):
      seps (flatten t) m /\ C -> to_sep t m /\ C.
Admitted.
  End WithMap.

Ltac reify e :=
  lazymatch e with
  | @sep ?key ?value ?map ?a ?b =>
    let a := reify a in
    let b := reify b in
    uconstr:(@Tree.Node (@map.rep key value map -> Prop) a b)
  | ?a => uconstr:(Tree.Leaf a)
  end.

Ltac reify_goal :=
  lazymatch goal with
  | |- Lift1Prop.iff1 ?LHS ?RHS =>
    let LHS := reify LHS in
    let RHS := reify RHS in
    change (Lift1Prop.iff1 (Tree.to_sep LHS) (Tree.to_sep RHS));
    eapply Tree.iff1_to_sep_of_iff1_flatten
  | |- Lift1Prop.impl1 ?LHS ?RHS =>
    let LHS := reify LHS in
    let RHS := reify RHS in
    change (Lift1Prop.impl1 (Tree.to_sep LHS) (Tree.to_sep RHS));
    eapply Tree.impl1_to_sep_of_impl1_flatten
  end;
  cbv [Tree.flatten Tree.interp app].

Ltac flatten_seps_in H :=
  lazymatch type of H with
  | ?nested ?m =>
    let tmem := type of m in
    let E := fresh "E" in
    eassert (@iff1 tmem nested _) as E;
    [
      let stars := eval cbv [seps] in nested in
      let tree := reify stars in
      transitivity (Tree.to_sep tree); [
        cbv [seps Tree.to_sep Tree.interp]; iff1_syntactic_reflexivity
      |];

      transitivity (seps (Tree.flatten tree)); [
        exact (iff1_sym (Tree.flatten_iff1_to_sep tree))
      |];

      cbv [SeparationLogic.Tree.flatten SeparationLogic.Tree.interp SeparationLogic.app];
      iff1_syntactic_reflexivity
    | let HNew := fresh in pose proof (proj1 (E m) H) as HNew;
      move HNew before H;
      clear E H;
      rename HNew into H ]
  end.

Ltac flatten_seps_in_goal :=
  cbv [seps];
  lazymatch goal with
  | |- ?nested ?m /\ ?C =>
      let xs := reify nested in
      change (Tree.to_sep xs m /\ C);
      eapply Tree.flatten_to_sep_with_and
  | |- ?nested ?m =>
      let xs := reify nested in
      change (Tree.to_sep xs m);
      eapply Tree.flatten_iff1_to_sep
  end;
  cbv [Tree.flatten Tree.interp app].

Ltac cancel_emp_l :=
  lazymatch goal with
  | |- Lift1Prop.iff1 (@seps ?K ?V ?M ?LHS) (seps ?RHS) =>
    let i := find_constr_eq LHS constr:(@emp K V M True) in
    simple refine (cancel_emp_at_index_l i LHS RHS _ _);
    cbv [firstn skipn app hd tl];
    [syntactic_exact_deltavar (@eq_refl _ _)|]
  end.

Ltac cancel_emp_r :=
  lazymatch goal with
  | |- Lift1Prop.iff1 (seps ?LHS) (@seps ?K ?V ?M ?RHS) =>
    let j := find_constr_eq RHS constr:(@emp K V M True) in
    simple refine (cancel_emp_at_index_r j LHS RHS _ _);
    cbv [firstn skipn app hd tl];
    [syntactic_exact_deltavar (@eq_refl _ _)|]
  end.

Ltac cancel_emp_impl :=
  lazymatch goal with
  | |- Lift1Prop.impl1 (seps ?LHS) (@seps ?K ?V ?M ?RHS) =>
    let j := find_constr_eq RHS constr:(@emp K V M True) in

    simple refine (cancel_emp_at_index_impl j LHS RHS _ _);
    cbv [firstn skipn app hd tl];

    [syntactic_exact_deltavar (@eq_refl _ _)|]
  end.

Ltac cancel_seps_at_indices i j :=
  lazymatch goal with
  | |- Lift1Prop.iff1 (seps ?LHS) (seps ?RHS) =>
    simple refine (cancel_seps_at_indices i j LHS RHS _ _);
    cbv [firstn skipn app hd tl]
  end.

Ltac cancel_seps_at_indices_by_implication i j :=
  lazymatch goal with
  | |- Lift1Prop.impl1 (seps ?LHS) (seps ?RHS) =>
    simple refine (cancel_seps_at_indices_by_implication i j LHS RHS _ _);
    cbv [firstn skipn app hd tl]
  end.

Ltac find_implication xs y :=
  multimatch xs with
  | cons ?x _ => constr:(O)
  | cons _ ?xs => let i := find_implication xs y in constr:(S i)
  end.

Ltac cancel_step := once (
      let RHS := lazymatch goal with |- Lift1Prop.iff1 _ (seps ?RHS) => RHS end in
      let jy := index_and_element_of RHS in
      let j := lazymatch jy with (?i, _) => i end in
      let y := lazymatch jy with (_, ?y) => y end in
      assert_fails (has_evar y);
      let LHS := lazymatch goal with |- Lift1Prop.iff1 (seps ?LHS) _ => LHS end in
      let i := find_constr_eq LHS y in
      cancel_seps_at_indices i j; [exact eq_refl|]).

Ltac cancel_step_impl := once (
    let RHS := lazymatch goal with |- Lift1Prop.impl1 _ (seps ?RHS) => RHS end in
    let jy := index_and_element_of RHS in
    let j := lazymatch jy with (?i, _) => i end in
    let y := lazymatch jy with (_, ?y) => y end in
    assert_fails (has_evar y);
    let LHS := lazymatch goal with |- Lift1Prop.impl1 (seps ?LHS) _ => LHS end in
    let i := find_constr_eq LHS y in
    cancel_seps_at_indices_by_implication i j; [exact impl1_refl|]).

Ltac ecancel_step_at j :=
      let RHS := lazymatch goal with |- Lift1Prop.iff1 _ (seps ?RHS) => RHS end in
      let y := list_get RHS j in
      assert_fails (idtac; let y := rdelta_var y in is_evar y);
      let LHS := lazymatch goal with |- Lift1Prop.iff1 (seps ?LHS) _ => LHS end in
      let i := find_syntactic_unify_deltavar LHS y in
      cancel_seps_at_indices i j; [exact eq_refl|].

Ltac ecancel_steps_inbounds j :=
  let RHS := lazymatch goal with |- Lift1Prop.iff1 _ (seps ?RHS) => RHS end in
  let __ := list_get RHS j in
  idtac.

Ltac ecancel_steps_at j :=
   tryif (ecancel_steps_inbounds j) then (
    tryif (ecancel_step_at j)
    then (                         ecancel_steps_at j)
    else (let j := constr:(S j) in ecancel_steps_at j)
  ) else idtac.

Ltac ecancel_step_by_implication :=
      let RHS := lazymatch goal with |- Lift1Prop.impl1 _ (seps ?RHS) => RHS end in
      let jy := index_and_element_of RHS in
      let j := lazymatch jy with (?i, _) => i end in
      let y := lazymatch jy with (_, ?y) => y end in
      assert_fails (idtac; let y := rdelta_var y in is_evar y);
      let LHS := lazymatch goal with |- Lift1Prop.impl1 (seps ?LHS) _ => LHS end in
      let i := find_implication LHS y in
      cancel_seps_at_indices_by_implication i j; [solve [auto 1 with nocore ecancel_impl]|].

Ltac ecancel_done :=
  cbv [seps];
  syntactic_exact_deltavar
    (@RelationClasses.reflexivity _ _
        (@RelationClasses.Equivalence_Reflexive _ _ (@Equivalence_iff1 _)) _).

Ltac cancel_done :=
  lazymatch goal with
  | |- iff1 (seps (cons _ nil)) _ => idtac
  | |- iff1 _ (seps (cons _ nil )) => idtac
  | |- ?g => assert_fails (has_evar g)
  end;
  ecancel_done.

Ltac cancel_seps :=
  lazymatch goal with
  | |- Lift1Prop.iff1 _ _ =>
    repeat cancel_step;
    repeat cancel_emp_l;
    repeat cancel_emp_r
  | |- Lift1Prop.impl1 _ _ =>
    repeat cancel_step_impl;
    repeat cancel_emp_impl
  end;
  try solve [ cancel_done ].

Ltac cancel := reify_goal; cancel_seps.

Ltac ecancel :=
  cancel;
  lazymatch goal with
  | [|- impl1 _ _] =>
     repeat ecancel_step_by_implication;
     (solve [ cbv [seps]; exact impl1_refl ])
  | [|- iff1 _ _] =>
    ecancel_steps_at O;
    ecancel_done
  end.

Ltac ecancel_assumption :=
  multimatch goal with
  | |- _ ?m1 =>
    multimatch goal with
    | H: _ ?m2 |- _ =>
      syntactic_unify_deltavar m1 m2;
      refine (Lift1Prop.subrelation_iff1_impl1 _ _ _ _ _ H); clear H;
      solve [ecancel]
    end
  end.
Module Export coqutil.
Module Export Map.
Module Export SeparationLogic.
End SeparationLogic.

End Map.

End coqutil.
Require Crypto.Arithmetic.WordByWordMontgomery.
Export coqutil.Map.SeparationLogic.
Module Export bedrock2.
Module Export Map.
Module Export SeparationLogic.
End SeparationLogic.

End Map.

End bedrock2.
Module Export Array.
Import Stdlib.ZArith.ZArith.
Import coqutil.Map.Interface.
Import coqutil.Map.Separation.
Import coqutil.Word.Interface.
Import coqutil.Byte.

Section Array.
  Context {width : Z} {word : Word.Interface.word width} {word_ok : word.ok word}.
  Context {value} {mem : map.map word value} {mem_ok : map.ok mem}.
  Context {T} (element : word -> T -> mem -> Prop) (size : word).
  Fixpoint array (start : word) (xs : list T) :=
    match xs with
    | nil => emp True
    | cons x xs => sep (element start x) (array (word.add start size) xs)
    end.

End Array.

Section ByteArray.
  Context {width : Z} {word : Word.Interface.word width} {word_ok : word.ok word}.
  Context {mem : map.map word byte} {mem_ok : map.ok mem}.
  Local Notation array := (array (mem:=mem) ptsto (word.of_Z 1)).

  Lemma array_1_to_anybytes bs m (a: word) :
    array a bs m -> bedrock2.Memory.anybytes a (Z.of_nat (List.length bs)) m.
Admitted.

  Lemma anybytes_to_array_1 m (addr : word) n :
      bedrock2.Memory.anybytes addr n m ->
      exists bs, array  addr bs m /\ List.length bs = Z.to_nat n.
Admitted.
End ByteArray.
Module Export bedrock2.
Module Export Array.
End Array.

End bedrock2.
Module Export Scalars.
Import coqutil.Map.Interface.
Import coqutil.Map.Separation.
Import coqutil.Word.LittleEndianList.
Import bedrock2.Memory.
Import Coq.ZArith.ZArith.
Import coqutil.Word.Bitwidth.
Import coqutil.Byte.

Section Scalars.
  Context {width : Z} {BW: Bitwidth width} {word : Word.Interface.word width} {word_ok : word.ok word}.

  Context {mem : map.map word byte} {mem_ok : map.ok mem}.
  Implicit Types (m : mem).

  Definition truncated_scalar sz addr (value:Z) : mem -> Prop :=
    (le_split (bytes_per (width:=width) sz) value) $@ addr.

  Definition truncated_word sz addr (value: word) : mem -> Prop :=
    truncated_scalar sz addr (word.unsigned value).

  Notation scalar8 := ptsto (only parsing).

  Definition scalar16 := truncated_word Syntax.access_size.two.
  Definition scalar32 := truncated_word Syntax.access_size.four.
  Definition scalar := truncated_word Syntax.access_size.word.
Definition truncate_word(sz: Syntax.access_size)(w: word): word.
Admitted.

  Lemma load_one_of_sep addr value R m
    (Hsep : sep (scalar8 addr value) R m)
    : Memory.load Syntax.access_size.one m addr = Some (word.of_Z (byte.unsigned value)).
Admitted.

  Lemma load_two_of_sep addr value R m
    (Hsep : sep (scalar16 addr value) R m)
    : Memory.load Syntax.access_size.two m addr = Some (truncate_word Syntax.access_size.two value).
Admitted.

  Lemma load_four_of_sep addr value R m
    (Hsep : sep (scalar32 addr value) R m)
    : Memory.load Syntax.access_size.four m addr = Some (truncate_word Syntax.access_size.four value).
Admitted.

  Lemma load_four_of_sep_32bit(W32: width = 32) addr value R m
    (Hsep : sep (scalar32 addr value) R m)
    : Memory.load Syntax.access_size.four m addr = Some value.
Admitted.

  Lemma load_word_of_sep addr value R m
    (Hsep : sep (scalar addr value) R m)
    : Memory.load Syntax.access_size.word m addr = Some value.
Admitted.

  Lemma store_one_of_sep addr (oldvalue : byte) (value : word) R m (post:_->Prop)
    (Hsep : sep (scalar8 addr oldvalue) R m)
    (Hpost : forall m, sep (scalar8 addr (byte.of_Z (word.unsigned value))) R m -> post m)
    : exists m1, Memory.store Syntax.access_size.one m addr value = Some m1 /\ post m1.
Admitted.

  Lemma store_two_of_sep addr (oldvalue : word) (value : word) R m (post:_->Prop)
    (Hsep : sep (scalar16 addr oldvalue) R m)
    (Hpost : forall m, sep (scalar16 addr value) R m -> post m)
    : exists m1, Memory.store Syntax.access_size.two m addr value = Some m1 /\ post m1.
Admitted.

  Lemma store_four_of_sep addr (oldvalue : word) (value : word) R m (post:_->Prop)
    (Hsep : sep (scalar32 addr oldvalue) R m)
    (Hpost : forall m, sep (scalar32 addr value) R m -> post m)
    : exists m1, Memory.store Syntax.access_size.four m addr value = Some m1 /\ post m1.
Admitted.

  Lemma store_word_of_sep addr (oldvalue value: word) R m (post:_->Prop)
    (Hsep : sep (scalar addr oldvalue) R m)
    (Hpost : forall m, sep (scalar addr value) R m -> post m)
    : exists m1, Memory.store Syntax.access_size.word m addr value = Some m1 /\ post m1.
Admitted.

End Scalars.
Module Export bedrock2.
Module Export Scalars.
End Scalars.
Module Export Loops.
Import coqutil.Datatypes.PrimitivePair.
Import coqutil.Datatypes.HList.
Import coqutil.dlet.
Import Stdlib.ZArith.BinIntDef.
Import coqutil.Map.Interface.
Import coqutil.Word.Bitwidth.
Import bedrock2.Syntax.
Import bedrock2.Semantics.
Import bedrock2.WeakestPrecondition.

Section Loops.
  Context {width: Z} {BW: Bitwidth width} {word: word.word width} {mem: map.map word Byte.byte}.
  Context {locals: map.map String.string word}.
  Context {ext_spec: ExtSpec}.

  Context {fs : env}.
  Let call := fs.

  Local Notation "A /\ B" := (Markers.split (A /\ B)).
Definition reconstruct (variables:list String.string) (values:tuple word (length variables)) : locals.
exact (map.putmany_of_tuple (tuple.of_list variables) values map.empty).
Defined.
Fixpoint gather (variables : list String.string) (l : locals) : option (locals *  tuple word (length variables)).
exact (match variables with
    | nil => Some (l, tt)
    | cons x xs' =>
      match map.get l x with
      | None => None
      | Some v =>
        match gather xs' (map.remove l x) with
        | None => None
        | Some (l, vs') => Some (l, (pair.mk v vs'))
        end
      end
    end).
Defined.
Definition enforce (variables : list String.string) (values:tuple word (length variables)) (l:locals) : Prop.
exact (match gather variables l with
    | None => False
    | Some (remaining, r) => values = r /\ remaining = map.empty
    end).
Defined.

  Import pair.

  Lemma tailrec
    {e c t localsmap} {m : mem}
    (ghosttypes : polymorphic_list.list Type)
    (variables : list String.string)
    {l0 : tuple word (length variables)}
    {Pl : enforce variables l0 localsmap}
    {post : _->_->_-> Prop}
    {measure : Type} (spec:_->HList.arrows ghosttypes (_->_->ufunc word (length variables) (Prop*(_->_->ufunc word (length variables) Prop)))) lt
    (Hwf : well_founded lt)
    (v0 : measure)
    : hlist.foralls (fun (g0 : hlist ghosttypes) => forall
    (Hpre : (tuple.apply (hlist.apply (spec v0) g0 t m) l0).(1))
    (Hbody : forall v, hlist.foralls (fun g => forall t m, tuple.foralls (fun l =>
      @dlet _ (fun _ => Prop) (reconstruct variables l) (fun localsmap : locals =>
      match tuple.apply (hlist.apply (spec v) g t m) l with S_ =>
      S_.(1) ->
      Markers.unique (Markers.left (exists br, expr m localsmap e (eq br) /\ Markers.right (
      (word.unsigned br <> 0%Z -> cmd call c t m localsmap
        (fun t' m' localsmap' =>
          Markers.unique (Markers.left (hlist.existss (fun l' => enforce variables l' localsmap' /\ Markers.right (
          Markers.unique (Markers.left (hlist.existss (fun g' => exists v',
          match tuple.apply (hlist.apply (spec v') g' t' m') l' with S' =>
          S'.(1) /\ Markers.right (
            lt v' v /\
            forall T M, hlist.foralls (fun L => tuple.apply (S'.(2) T M) L -> tuple.apply (S_.(2) T M) L)) end))))))))) /\
      (word.unsigned br = 0%Z -> tuple.apply (S_.(2) t m) l))))end))))
    (Hpost : match (tuple.apply (hlist.apply (spec v0) g0 t m) l0).(2) with Q0 => forall t m, hlist.foralls (fun l =>  tuple.apply (Q0 t m) l -> post t m (reconstruct variables l))end)
    , cmd call (cmd.while e c) t m localsmap post ).
Admitted.
End Loops.
Module Export bedrock2.
Module Export Loops.
End Loops.
Import coqutil.Tactics.Tactics.
Import coqutil.Tactics.letexists.
Import coqutil.Tactics.eabstract.
Import coqutil.Tactics.rdelta.
Import coqutil.Tactics.reference_to_string.
Import coqutil.Tactics.ident_of_string.
Import coqutil.Map.Interface.
Import bedrock2.Syntax.
Import bedrock2.WeakestPrecondition.
Import bedrock2.WeakestPreconditionProperties.
Import bedrock2.Map.SeparationLogic.

Definition spec_of (procname:String.string) := Semantics.env -> Prop.
Existing Class spec_of.
Import Ltac2.Ltac2.

Local Ltac2 rec splitcmd (cmd : constr) : unit :=
  match! cmd with
    | cmd.seq ?cmd1 ?cmd2 =>
        set (cmd.seq $cmd1 $cmd2) in *; splitcmd cmd1; splitcmd cmd2
    | cmd.cond ?expr ?cmd1 ?cmd2 => set (cmd.cond $expr $cmd1 $cmd2) in *; splitcmd cmd1; splitcmd cmd2
    | cmd.while ?expr ?cmd => set (cmd.while $expr $cmd) in *; splitcmd cmd
    | _ => ()
  end.

Local Ltac2 Notation "instance_of" type(constr) :=
  lazy_match! Ltac2.Constr.pretype (preterm:(_ : $type)) with ?instance => instance end.

Local Ltac2 rec unfold_const x :=
  if Bool.neg (Constr.is_const x) then x else
    let ref := reference_to_string.reference_of_constr x in
    match! eval cbv delta [$ref] in $x with ?x => unfold_const x
  end.

Local Ltac2 function_body (proc : constr) : constr :=
  let unfolded := unfold_const proc in
  match! unfolded with (_, _, ?fbody) => fbody end.

Local Ltac2 rec callee_specs (cmd : constr) : constr list :=
  match! cmd with
    | cmd.cond _ ?c1 ?c2  => List.append (callee_specs c1) (callee_specs c2)
    | cmd.seq ?c1 ?c2 => List.append (callee_specs c1) (callee_specs c2)
    | cmd.while _ ?c => callee_specs c
    | cmd.stackalloc _ _ ?c => callee_specs c
    | cmd.call _ ?f _ => [instance_of (spec_of $f)]
    | cmd.skip => []
    | cmd.set _ _ => []
    | cmd.unset _ => []
    | cmd.store _ _ _ => []
    | cmd.interact _ _ _ => []
    | _ => Control.throw (Invalid_argument (Some (Message.concat
        (Message.of_string "Failed to recurse into the following command, consider reducing it before calling program_logic_goal_for: ")
        (Message.of_constr cmd))))
  end.

Local Ltac2 program_logic_goal_for_function (proc : constr) : unit :=
  let fname := constr_string_basename_of_constr_reference proc in
  let fname_spec := instance_of (spec_of $fname) in
  let fbody := function_body proc in
  let goal := (fun (functions : constr) =>
    List.fold_right (fun premise_spec conclusion => '(($premise_spec $functions) -> $conclusion)) (callee_specs fbody) '($fname_spec $functions)) in
  exact (forall (functions : @map.rep _ _ Semantics.env) (EnvContains : map.get functions $fname = Some $proc),
    ltac2:(let g := goal &functions in exact $g)
  ).

Set Default Proof Mode "Classic".

Definition program_logic_goal_for (_ : Syntax.func) (P : Prop) := P.

Notation "program_logic_goal_for_function! proc" := (program_logic_goal_for proc ltac2:(
   program_logic_goal_for_function (Ltac2.Constr.pretype proc)))
  (at level 10, only parsing).

Ltac normalize_body_of_function f := eval cbv in f.

Ltac bind_body_of_function f_ :=
  let f := normalize_body_of_function f_ in
  let fbody := open_constr:(_) in
  let funif := open_constr:((_, _, fbody)) in
  unify f funif;
  let go_split := ltac2:(fbody |-
    let fbody_value := Option.get (Ltac1.to_constr fbody) in
    splitcmd fbody_value) in
  change f_ with f;
  go_split fbody; intros.

Ltac enter f :=
  cbv beta delta [program_logic_goal_for];
  bind_body_of_function f;
  lazymatch goal with |- ?s ?p => let s := rdelta s in change (s p); cbv beta end.

Ltac is_context_variable H :=
  assert_succeeds (exfalso; clear -H; assert(H = H);
    let A := fresh in let B := fresh in destruct H as [A B]; pose H).

Ltac straightline_cleanup :=
  match goal with

  | x : Word.Interface.word.rep _ |- _ => clear x
  | x : Init.Byte.byte |- _ => clear x
  | x : Semantics.trace |- _ => clear x
  | x : Syntax.cmd |- _ => clear x
  | x : Syntax.expr |- _ => clear x
  | x : coqutil.Map.Interface.map.rep |- _ => clear x
  | x : BinNums.Z |- _ => clear x
  | x : unit |- _ => clear x
  | x : bool |- _ => clear x
  | x : list _ |- _ => clear x
  | x : nat |- _ => clear x

  | x := _ : Word.Interface.word.rep _ |- _ => clear x
  | x := _ : Init.Byte.byte |- _ => clear x
  | x := _ : Semantics.trace |- _ => clear x
  | x := _ : Syntax.cmd |- _ => clear x
  | x := _ : Syntax.expr |- _ => clear x
  | x := _ : coqutil.Map.Interface.map.rep |- _ => clear x
  | x := _ : BinNums.Z |- _ => clear x
  | x := _ : unit |- _ => clear x
  | x := _ : bool |- _ => clear x
  | x := _ : list _ |- _ => clear x
  | x := _ : nat |- _ => clear x
  | |- forall _, _ => intros
  | |- let _ := _ in _ => intros
  | |- dlet.dlet ?v (fun x => ?P) => change (let x := v in P); intros
  | _ => progress (cbn [Semantics.interp_binop] in * )
  | H: exists _, _ |- _ => tryif is_context_variable H then fail else destruct H
  | H: _ /\ _ |- _ => tryif is_context_variable H then fail else destruct H
  | x := ?y |- ?G => is_var y; subst x
  | H: ?x = ?y |- _ => constr_eq x y; clear H
  | H: ?x = ?y |- _ => is_var x; is_var y; assert_fails (idtac; let __ := eval cbv [x] in x in idtac); subst x
  | H: ?x = ?y |- _ => is_var x; is_var y; assert_fails (idtac; let __ := eval cbv [y] in y in idtac); subst y
  | H: ?x = ?v |- _ =>
    is_var x;
    assert_fails (idtac; let __ := eval cbv delta [x] in x in idtac);
    lazymatch v with context[x] => fail | _ => idtac end;
    let x' := fresh x in
    rename x into x';
    simple refine (let x := v in _);
    change (x' = x) in H;
    symmetry in H;
    destruct H
  end.

Ltac straightline_stackalloc :=
  match goal with Hanybytes: Memory.anybytes ?a ?n ?mStack |- _ =>
  let m := match goal with H : map.split ?mCobined ?m mStack |- _ => m end in
  let mCombined := match goal with H : map.split ?mCobined ?m mStack |- _ => mCobined end in
  let Hsplit := match goal with H : map.split ?mCobined ?m mStack |- _ => H end in
  let Hm := multimatch goal with H : _ m |- _ => H end in
  let Hm' := fresh Hm in
  let Htmp := fresh in
  let Pm := match type of Hm with ?P m => P end in
  assert_fails (assert (Separation.sep Pm (Array.array Separation.ptsto (Interface.word.of_Z (BinNums.Zpos BinNums.xH)) a _) mCombined) as _ by ecancel_assumption);
  rename Hm into Hm';
  let stack := fresh "stack" in
  let stack_length := fresh "length_" stack in
  destruct (Array.anybytes_to_array_1 mStack a n Hanybytes) as (stack&Htmp&stack_length);
  epose proof (ex_intro _ m (ex_intro _ mStack (conj Hsplit (conj Hm' Htmp)))
  : Separation.sep _ (Array.array Separation.ptsto (Interface.word.of_Z (BinNums.Zpos BinNums.xH)) a _) mCombined) as Hm;
  clear Htmp;
  try (let m' := fresh m in rename m into m'); rename mCombined into m;
  ( assert (BinInt.Z.of_nat (Datatypes.length stack) = n)
  by (rewrite stack_length; apply (ZifyInst.of_nat_to_nat_eq n))
  || fail 2 "negative stackalloc of size" n )
  end.

Ltac straightline_stackdealloc :=
  lazymatch goal with |- exists _ _, Memory.anybytes ?a ?n _ /\ map.split ?m _ _ /\ _ =>
  let Hm := multimatch goal with Hm : _ m |- _ => Hm end in
  let stack := match type of Hm with context [Array.array Separation.ptsto _ a ?stack] => stack end in
  let length_stack := match goal with H : Datatypes.length stack = _ |- _ => H end in
  let Hm' := fresh Hm in
  pose proof Hm as Hm';
  let Psep := match type of Hm with ?P _ => P end in
  let Htmp := fresh "Htmp" in
  eassert (Lift1Prop.iff1 Psep (Separation.sep _ (Array.array Separation.ptsto (Interface.word.of_Z (BinNums.Zpos BinNums.xH)) a stack))) as Htmp
  by ecancel || fail "failed to find stack frame in" Psep "using ecancel";
  eapply (fun m => proj1 (Htmp m)) in Hm;
  let m' := fresh m in
  rename m into m';
  let mStack := fresh in
  destruct Hm as (m&mStack&Hsplit&Hm&Harray1); move Hm at bottom;
  pose proof Array.array_1_to_anybytes _ _ _ Harray1 as Hanybytes;
  rewrite length_stack in Hanybytes;
  refine (ex_intro _ m (ex_intro _ mStack (conj Hanybytes (conj Hsplit _))));
  clear Htmp Hsplit mStack Harray1 Hanybytes
  end.

Ltac rename_to_different H :=
  idtac;
  let G := fresh H "'0" in
  rename H into G.
Ltac ensure_free H :=
  try rename_to_different H.

Ltac eq_uniq_step :=
  match goal with
  | |- ?x = ?y =>
      let x := rdelta x in
      let y := rdelta y in
      first [ is_evar x | is_evar y | constr_eq x y ]; exact eq_refl
  | |- ?lhs = ?rhs =>
      let lh := head lhs in
      is_constructor lh;
      let rh := head rhs in
      constr_eq lh rh;
      f_equal
  end.
Ltac eq_uniq := repeat eq_uniq_step.

Ltac fwd_uniq_step :=
  match goal with
  | |- exists x : ?T, _ =>
      let ev := open_constr:(match _ return T with x => x end) in
      eexists ev;
      let rec f :=
        tryif has_evar ev
        then fwd_uniq_step
        else idtac
      in f
  | |- _ /\ _ => split; [ solve [repeat fwd_uniq_step; eq_uniq] | ]
  | _ => solve [ eq_uniq ]
  end.

Ltac straightline :=
  match goal with
  | _ => straightline_cleanup
  | |- program_logic_goal_for ?f _ =>
    enter f; intros;
    match goal with
    | H: map.get ?functions ?fname = Some _ |- _ =>
        eapply start_func; [exact H | clear H]
    end;
    cbv match beta delta [WeakestPrecondition.func]
  | |- WeakestPrecondition.cmd _ (cmd.set ?s ?e) _ _ _ ?post =>
    unfold1_cmd_goal; cbv beta match delta [cmd_body];
    let __ := match s with String.String _ _ => idtac | String.EmptyString => idtac end in
    ident_of_constr_string_cps s ltac:(fun x =>
      ensure_free x;

      letexists _ as x; split; [solve [repeat straightline]|])
  | |- cmd _ ?c _ _ _ ?post =>
    let c := eval hnf in c in
    lazymatch c with
    | cmd.while _ _ => fail
    | cmd.cond _ _ _ => fail
    | cmd.interact _ _ _ => fail
    | _ => unfold1_cmd_goal; cbv beta match delta [cmd_body]
    end
  | |- @list_map _ _ (get _) _ _ => unfold1_list_map_goal; cbv beta match delta [list_map_body]
  | |- @list_map _ _ (expr _ _) _ _ => unfold1_list_map_goal; cbv beta match delta [list_map_body]
  | |- @list_map _ _ _ nil _ => cbv beta match fix delta [list_map list_map_body]
  | |- expr _ _ _ _ => unfold1_expr_goal; cbv beta match delta [expr_body]
  | |- dexpr _ _ _ _ => cbv beta delta [dexpr]
  | |- dexprs _ _ _ _ => cbv beta delta [dexprs]
  | |- literal _ _ => cbv beta delta [literal]
  | |- @get ?w ?W ?L ?l ?x ?P =>
      let get' := eval cbv [get] in @get in
      change (get' w W L l x P); cbv beta
  | |- load _ _ _ _ => cbv beta delta [load]
  | |- @Loops.enforce ?width ?word ?locals ?names ?values ?map =>
    let values := eval cbv in values in
    change (@Loops.enforce width word locals names values map);
    exact (conj (eq_refl values) eq_refl)
  | |- @eq (@coqutil.Map.Interface.map.rep String.string Interface.word.rep _) _ _ =>
    eapply SortedList.eq_value; exact eq_refl
  | |- @map.get String.string Interface.word.rep ?M ?m ?k = Some ?e' =>
    let e := rdelta e' in
    is_evar e;
    once (let v := multimatch goal with x := context[@map.put _ _ M _ k ?v] |- _ => v end in

          unify e v; exact (eq_refl (Some v)))
  | |- @coqutil.Map.Interface.map.get String.string Interface.word.rep _ _ _ = Some ?v =>
    let v' := rdelta v in is_evar v'; (change v with v'); exact eq_refl
  | |- ?x = ?y =>
    let y := rdelta y in is_evar y; change (x=y); exact eq_refl
  | |- ?x = ?y =>
    let x := rdelta x in is_evar x; change (x=y); exact eq_refl
  | |- ?x = ?y =>
    let x := rdelta x in let y := rdelta y in constr_eq x y; exact eq_refl
  | |- store Syntax.access_size.one _ _ _ _ =>
    eapply Scalars.store_one_of_sep; [solve[ecancel_assumption]|]
  | |- store Syntax.access_size.two _ _ _ _ =>
    eapply Scalars.store_two_of_sep; [solve[ecancel_assumption]|]
  | |- store Syntax.access_size.four _ _ _ _ =>
    eapply Scalars.store_four_of_sep; [solve[ecancel_assumption]|]
  | |- store Syntax.access_size.word _ _ _ _ =>
    eapply Scalars.store_word_of_sep; [solve[ecancel_assumption]|]
  | |- bedrock2.Memory.load Syntax.access_size.one ?m ?a = Some ?ev =>
    try subst ev; refine (@Scalars.load_one_of_sep _ _ _ _ _ _ _ _ _ _); ecancel_assumption
  | |- @bedrock2.Memory.load _ ?word ?mem Syntax.access_size.two ?m ?a = Some ?ev =>
    try subst ev; refine (@Scalars.load_two_of_sep _ _ word _ mem _ a _ _ m _); ecancel_assumption
  | |- @bedrock2.Memory.load _ ?word ?mem Syntax.access_size.four ?m ?a = Some ?ev =>
    try subst ev; refine (@Scalars.load_four_of_sep_32bit _ _ word _ mem _ eq_refl a _ _ m _); ecancel_assumption
  | |- @bedrock2.Memory.load _ ?word ?mem Syntax.access_size.four ?m ?a = Some ?ev =>
    try subst ev; refine (@Scalars.load_four_of_sep _ _ word _ mem _ a _ _ m _); ecancel_assumption
  | |- @bedrock2.Memory.load _ ?word ?mem Syntax.access_size.word ?m ?a = Some ?ev =>
    try subst ev; refine (@Scalars.load_word_of_sep _ _ word _ mem _ a _ _ m _); ecancel_assumption
  | |- exists l', Interface.map.of_list_zip ?ks ?vs = Some l' /\ _ =>
    letexists; split; [exact eq_refl|]
  | |- exists l', Interface.map.putmany_of_list_zip ?ks ?vs ?l = Some l' /\ _ =>
    letexists; split; [exact eq_refl|]
  | _ => fwd_uniq_step
  | |- exists x, ?P /\ ?Q =>
    let x := fresh x in refine (let x := _ in ex_intro (fun x => P /\ Q) x _);
                        split; [solve [repeat straightline]|]
  | |- exists x, Markers.split (?P /\ ?Q) =>
    let x := fresh x in refine (let x := _ in ex_intro (fun x => P /\ Q) x _);
                        split; [solve [repeat straightline]|]
  | |- Markers.unique (exists x, Markers.split (?P /\ ?Q)) =>
    let x := fresh x in refine (let x := _ in ex_intro (fun x => P /\ Q) x _);
                        split; [solve [repeat straightline]|]
  | |- Markers.unique (Markers.left ?G) =>
    change G;
    unshelve (idtac; repeat match goal with
                     | |- Markers.split (?P /\ Markers.right ?Q) =>
                       split; [eabstract (repeat straightline) | change Q]
                     | |- exists _, _ => letexists
                     end); []
  | |- Markers.split ?G => change G; split
  | |- True => exact I
  | |- False \/ _ => right
  | |- _ \/ False => left
  | |- BinInt.Z.modulo ?z (Memory.bytes_per_word _) = BinInt.Z0 /\ _ =>
      lazymatch Coq.setoid_ring.InitialRing.isZcst z with
      | true => split; [exact eq_refl|]
      end
  | |- _ => straightline_stackalloc
  | |- _ => straightline_stackdealloc
  | |- context[sep (sep ?_a ?_b) ?_c] => progress (flatten_seps_in_goal; cbn [seps])
  | H : context[sep (sep ?_a ?_b) ?_c] |- _ => progress (flatten_seps_in H; cbn [seps] in H)
  end.
Import bedrock2.NotationsCustomEntry.
Local Open Scope string_scope.
Local Open Scope Z_scope.
Import coqutil.Word.Properties.
Import bedrock2.WeakestPrecondition.
Import bedrock2.BasicC64Semantics.
Import bedrock2.Scalars.
Import bedrock2.Array.
Import bedrock2.Loops.
Import bedrock2.Map.SeparationLogic.
Import coqutil.Map.Interface.
Import Stdlib.ZArith.ZArith.
Import Crypto.Arithmetic.WordByWordMontgomery.

Section WithParameters.
  Import WordByWordMontgomery.

  Context {prime: Z} (r := 64) {ri : Z}.
Instance spec_of_redc_alt : spec_of "redc_alt".
exact (fnspec! "redc_alt" Astart Bstart Sstart len / A (aval: Z) B (bval: Z) S R,
    { requires t m :=
        m =* array scalar (word.of_Z 8) Astart A *
                  array scalar (word.of_Z 8) Bstart B *
                  array scalar (word.of_Z 8) Sstart S * R /\
        word.unsigned len = Z.of_nat (List.length A)  /\
        word.unsigned len = Z.of_nat (List.length B)  /\
        word.unsigned len = Z.of_nat (List.length S) /\
        @eval r (Z.to_nat (word.unsigned len)) (List.map word.unsigned A) = aval /\
        @eval r (Z.to_nat (word.unsigned len)) (List.map word.unsigned B) = bval;
      ensures t' m' :=  t=t' /\ exists S',
          m' =*
             array scalar (word.of_Z 8) Astart A *
             array scalar (word.of_Z 8) Bstart B *
            array scalar (word.of_Z 8) Sstart S' * R /\
          ( aval * bval * ri^(word.unsigned len) ) mod prime =
            @eval r (Z.to_nat (word.unsigned len)) (List.map word.unsigned S') mod prime
    }).
Defined.
Instance spec_of_redc_step : spec_of "redc_step".
Admitted.

  Definition redc_alt :=
    func! (Astart, Bstart, Sstart, len) {
    i = $0;
    while (i < len) {
         store(Sstart + $8*i, $0);
         i = i + $1
      };
    i = $0;
    while (i < len) {
         redc_step ( load(Astart + $8*i), Bstart, Sstart, len );
          i = i + $1
      }
    }.

  Import Coq.Lists.List.

  Let zeros (n: Z) :=
        repeat (@word.of_Z _ word 0) (Z.to_nat n).

 Theorem redc_alt_ok :
      program_logic_goal_for_function! redc_alt.
 Proof.
   repeat straightline.

      refine ( tailrec (HList.polymorphic_list.cons _ (HList.polymorphic_list.cons _ (HList.polymorphic_list.cons _ (HList.polymorphic_list.cons _ (HList.polymorphic_list.cons _ (HList.polymorphic_list.cons _ (HList.polymorphic_list.cons _ (HList.polymorphic_list.cons _ HList.polymorphic_list.nil))))))))
               ("Astart":: "Bstart" :: "Sstart" :: "len" :: "i" :: nil)
               (fun l A aval B bval S Ra Rb R t m Astart Bstart Sstart len i => PrimitivePair.pair.mk
                                    (m =* array scalar (word.of_Z 8) (word.add Sstart (word.mul (word.of_Z 8) i)) S * R /\
                                       word.unsigned len - word.unsigned i = Z.of_nat (List.length S) /\

                                    l = List.length S )
                                    (fun t' m' Astart' Bstart' Sstart' len' i' =>
                                       (
                                     t = t' /\ Astart = Astart' /\ Bstart = Bstart' /\ Sstart = Sstart' /\ len = len' /\
                                     m' =* array scalar (word.of_Z 8) (word.add Sstart (word.mul (word.of_Z 8) i)) (zeros (word.unsigned len - word.unsigned i)) * R
                                     )
                                    )
               )
               lt _ _ _ _ _ _ _ _ _ _ _ _ _);
        cbn [reconstruct map.putmany_of_list HList.tuple.to_list
         HList.hlist.foralls HList.tuple.foralls
         HList.hlist.existss HList.tuple.existss
         HList.hlist.apply  HList.tuple.apply
         HList.hlist
         List.repeat Datatypes.length
         HList.polymorphic_list.repeat HList.polymorphic_list.length
         PrimitivePair.pair._1 PrimitivePair.pair._2] in *.

      {
 repeat straightline.
}
      {
 exact Wf_nat.lt_wf.
}
      {
 repeat straightline.
        subst i.
        replace (word.add Sstart (word.mul (word.of_Z 8) (word.of_Z 0))) with (Sstart) by ring.
        repeat split; try eauto.
        -
 ecancel_assumption.
        -
 rewrite word.unsigned_of_Z_0.
Lia.lia.
}

      {
 repeat straightline.
eexists.
