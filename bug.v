
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-notation-overridden" "-w" "-redundant-canonical-projection" "-w" "-notation-incompatible-prefix" "-w" "-deprecated-from-Coq" "-w" "-deprecated-dirpath-Coq" "-w" "-deprecated-native-compiler-option" "-native-compiler" "ondemand" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_build_ci/iris/iris" "iris" "-Q" "/github/workspace/builds/coq/coq-failing/_build_ci/iris/iris_heap_lang" "iris.heap_lang" "-Q" "/github/workspace/builds/coq/coq-failing/_build_ci/iris/iris_unstable" "iris.unstable" "-Q" "/github/workspace/builds/coq/coq-failing/_build_ci/iris/iris_deprecated" "iris.deprecated" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Autosubst" "Autosubst" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/stdpp" "stdpp" "-top" "iris.heap_lang.lang") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 843 lines to 68 lines, then from 81 lines to 438 lines, then from 444 lines to 74 lines, then from 87 lines to 440 lines, then from 446 lines to 85 lines, then from 98 lines to 1108 lines, then from 1114 lines to 87 lines, then from 100 lines to 496 lines, then from 502 lines to 89 lines, then from 102 lines to 470 lines, then from 476 lines to 90 lines, then from 103 lines to 541 lines, then from 547 lines to 99 lines, then from 112 lines to 801 lines, then from 806 lines to 116 lines, then from 129 lines to 743 lines, then from 749 lines to 127 lines, then from 140 lines to 521 lines, then from 527 lines to 136 lines, then from 149 lines to 377 lines, then from 383 lines to 140 lines, then from 153 lines to 866 lines, then from 871 lines to 142 lines, then from 155 lines to 681 lines, then from 687 lines to 144 lines, then from 157 lines to 1644 lines, then from 1650 lines to 146 lines, then from 159 lines to 2371 lines, then from 2376 lines to 224 lines, then from 237 lines to 1903 lines, then from 1909 lines to 239 lines, then from 252 lines to 2181 lines, then from 2186 lines to 243 lines, then from 256 lines to 931 lines, then from 937 lines to 262 lines, then from 275 lines to 1359 lines, then from 1363 lines to 297 lines, then from 310 lines to 662 lines, then from 668 lines to 311 lines, then from 324 lines to 455 lines, then from 461 lines to 313 lines, then from 326 lines to 2075 lines, then from 2077 lines to 372 lines, then from 385 lines to 423 lines, then from 429 lines to 373 lines, then from 386 lines to 432 lines, then from 436 lines to 385 lines, then from 398 lines to 1364 lines, then from 1369 lines to 440 lines, then from 453 lines to 694 lines, then from 700 lines to 441 lines, then from 454 lines to 794 lines, then from 800 lines to 444 lines, then from 457 lines to 621 lines, then from 627 lines to 446 lines, then from 459 lines to 1029 lines, then from 1035 lines to 448 lines, then from 461 lines to 1215 lines, then from 1221 lines to 454 lines, then from 467 lines to 561 lines, then from 567 lines to 465 lines, then from 478 lines to 666 lines, then from 672 lines to 467 lines, then from 480 lines to 2418 lines, then from 2377 lines to 923 lines *)
(* coqc version 9.2+alpha compiled with OCaml 4.14.2
   coqtop version 9.2+alpha
   Expected coqc runtime on this file: 0.400 sec *)










Require Stdlib.ZArith.Zdiv.
Require Stdlib.ZArith.Zcomplements.
Require Stdlib.micromega.ZCoeff.
Require Stdlib.micromega.RingMicromega.
Require Stdlib.ZArith.Zabs.
Require Stdlib.ZArith.Zbool.
Require Stdlib.setoid_ring.ZArithRing.
Require Stdlib.ZArith.Wf_Z.
Require Stdlib.micromega.OrderedRing.
Require Stdlib.ZArith.ZArith_dec.
Require Stdlib.setoid_ring.Ring.
Require Stdlib.setoid_ring.Ring_base.
Require Stdlib.ZArith.Zmisc.
Require Stdlib.setoid_ring.Ring_tac.
Require Stdlib.ZArith.Zorder.
Require Stdlib.ZArith.Znat.
Require Stdlib.setoid_ring.InitialRing.
Require Stdlib.setoid_ring.Ring_polynom.
Require Stdlib.micromega.EnvRing.
Require Stdlib.micromega.VarMap.
Require Stdlib.micromega.Env.
Require Stdlib.ZArith.Zpow_def.
Require Stdlib.ZArith.Zeven.
Require Stdlib.ZArith.Zcompare.
Require Stdlib.ZArith.BinInt.
Require Stdlib.ZArith.BinIntDef.
Require Stdlib.NArith.Nnat.
Require Stdlib.setoid_ring.Ring_theory.
Require Stdlib.setoid_ring.BinList.
Require Stdlib.NArith.BinNat.
Require Stdlib.NArith.BinNatDef.
Require Stdlib.PArith.Pnat.
Require Stdlib.Arith.Arith_base.
Require Stdlib.PArith.BinPos.
Require Stdlib.Lists.ListTactics.
Require Stdlib.micromega.Tauto.
Require Stdlib.micromega.Refl.
Require Stdlib.Lists.List.
Require Stdlib.Arith.Peano_dec.
Require Stdlib.Arith.Wf_nat.
Require Stdlib.Arith.Factorial.
Require Stdlib.Arith.EqNat.
Require Stdlib.Arith.Compare_dec.
Require Stdlib.Arith.Between.
Require Stdlib.Arith.PeanoNat.
Require Stdlib.Numbers.Natural.Abstract.NProperties.
Require Stdlib.Numbers.Integer.Abstract.ZProperties.
Require Stdlib.Numbers.Natural.Abstract.NLcm0.
Require Stdlib.Numbers.Natural.Abstract.NBits.
Require Stdlib.Numbers.Integer.Abstract.ZLcm.
Require Stdlib.Numbers.Integer.Abstract.ZBits.
Require Stdlib.Numbers.Natural.Abstract.NLog.
Require Stdlib.Numbers.Natural.Abstract.NLcm.
Require Stdlib.Numbers.Integer.Abstract.ZPow.
Require Stdlib.Numbers.Natural.Abstract.NPow.
Require Stdlib.Numbers.Natural.Abstract.NDiv0.
Require Stdlib.Numbers.Integer.Abstract.ZGcd.
Require Stdlib.Numbers.Integer.Abstract.ZDivTrunc.
Require Stdlib.Numbers.Integer.Abstract.ZDivFloor.
Require Stdlib.Numbers.Natural.Abstract.NSqrt.
Require Stdlib.Numbers.Natural.Abstract.NParity.
Require Stdlib.Numbers.Natural.Abstract.NMaxMin.
Require Stdlib.Numbers.Natural.Abstract.NGcd.
Require Stdlib.Numbers.Natural.Abstract.NDiv.
Require Stdlib.Numbers.Integer.Abstract.ZSgnAbs.
Require Stdlib.Numbers.Integer.Abstract.ZParity.
Require Stdlib.Numbers.Integer.Abstract.ZMaxMin.
Require Stdlib.Numbers.Natural.Abstract.NSub.
Require Stdlib.Numbers.Integer.Abstract.ZMulOrder.
Require Stdlib.Numbers.Natural.Abstract.NMulOrder.
Require Stdlib.Numbers.Integer.Abstract.ZAddOrder.
Require Stdlib.Numbers.Natural.Abstract.NAddOrder.
Require Stdlib.Numbers.Integer.Abstract.ZLt.
Require Stdlib.Numbers.Natural.Abstract.NOrder.
Require Stdlib.Numbers.Integer.Abstract.ZMul.
Require Stdlib.Numbers.Natural.Abstract.NAdd.
Require Stdlib.Numbers.Integer.Abstract.ZAdd.
Require Stdlib.Numbers.Natural.Abstract.NBase.
Require Stdlib.Numbers.Integer.Abstract.ZBase.
Require Stdlib.Numbers.Natural.Abstract.NAxioms.
Require Stdlib.Numbers.Integer.Abstract.ZAxioms.
Require Stdlib.Numbers.NatInt.NZBits.
Require Stdlib.Numbers.NatInt.NZLog.
Require Stdlib.Numbers.NatInt.NZSqrt.
Require Stdlib.Numbers.NatInt.NZPow.
Require Stdlib.Numbers.NatInt.NZParity.
Require Stdlib.Numbers.NatInt.NZGcd.
Require Stdlib.Numbers.NatInt.NZDiv.
Require Stdlib.Numbers.NatInt.NZMulOrder.
Require Stdlib.Numbers.NatInt.NZAddOrder.
Require Stdlib.Numbers.NatInt.NZOrder.
Require Stdlib.Numbers.NatInt.NZMul.
Require Stdlib.Numbers.NatInt.NZAdd.
Require Stdlib.Numbers.NatInt.NZBase.
Require Stdlib.Numbers.NatInt.NZAxioms.
Require Stdlib.Structures.GenericMinMax.
Require Stdlib.Structures.OrdersFacts.
Require Stdlib.Structures.OrdersTac.
Require Stdlib.Structures.Orders.
Require Stdlib.Structures.Equalities.
Require Stdlib.Numbers.NumPrelude.
Require Stdlib.Relations.Relations.
Require Stdlib.PArith.BinPosDef.
Require Stdlib.Relations.Operators_Properties.
Require Stdlib.Relations.Relation_Operators.
Require Stdlib.Bool.Bool.
Require Stdlib.Setoids.Setoid.
Require Stdlib.Relations.Relation_Definitions.
Require Stdlib.Program.Basics.
Require Stdlib.Numbers.BinNums.
Require Stdlib.Logic.Eqdep_dec.
Require Stdlib.Lists.ListDef.
Require Stdlib.Init.Sumbool.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.BinNums.NatDef.
Require Stdlib.BinNums.PosDef.
Require Stdlib.BinNums.IntDef.
Require Stdlib.Logic.HLevelsBase.
Require Stdlib.Logic.EqdepFacts.
Require Stdlib.Logic.Decidable.
Require Stdlib.Classes.DecidableClass.
Require Corelib.Init.Sumbool.
Require Corelib.Program.Basics.
Require Corelib.BinNums.NatDef.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Lists.ListDef.
Require Corelib.BinNums.PosDef.
Require Corelib.Classes.Morphisms.
Require Corelib.Numbers.BinNums.
Require Corelib.Init.Ltac.
Require Corelib.BinNums.IntDef.
Require Corelib.Classes.RelationClasses.

Module Export AdmitTactic.
Module Import LocalFalse.
Inductive False : Prop := .
End LocalFalse.
Axiom proof_admitted : False.
Import Coq.Init.Ltac.
Tactic Notation "admit" := abstract case proof_admitted.
End AdmitTactic.

Module Export Stdlib_DOT_micromega_DOT_ZMicromega_WRAPPED.
Module Export ZMicromega.















Import Stdlib.Lists.List.
Import Stdlib.Bool.Bool.
Import Stdlib.micromega.OrderedRing.
Import Stdlib.micromega.RingMicromega.
Import Stdlib.setoid_ring.ZArithRing.
Import Stdlib.micromega.ZCoeff.
Import Stdlib.micromega.Refl.
Import Stdlib.ZArith.BinInt.
Import Stdlib.micromega.Tauto.
#[local] Open Scope Z_scope.

Lemma eq_le_iff : forall x, 0 = x  <-> (0 <= x /\ x <= 0).
Admitted.

Lemma lt_le_iff x : 0 < x <-> 0 <= x - 1.
Admitted.

Lemma le_0_iff x y : x <= y <-> 0 <= y - x.
Admitted.

Lemma le_neg x : ((0 <= x) -> False) <-> 0 < -x.
Admitted.

Lemma eq_cnf x : (0 <= x - 1 -> False) /\ (0 <= -1 - x -> False) <-> x = 0.
Admitted.
Import Stdlib.micromega.EnvRing.

Lemma Zsor : SOR 0 1 Z.add Z.mul Z.sub Z.opp (@eq Z) Z.le Z.lt.
Admitted.

Lemma ZSORaddon :
  SORaddon 0 1 Z.add Z.mul Z.sub Z.opp  (@eq Z) Z.le 
  0%Z 1%Z Z.add Z.mul Z.sub Z.opp 
  Z.eqb Z.leb
  (fun x => x) (fun x => x) (pow_N 1 Z.mul).
Admitted.
Fixpoint Zeval_expr (env : PolEnv Z) (e: PExpr Z) : Z. exact (match e with
    | PEc c => c
    | PEX x => env x
    | PEadd e1 e2 => Zeval_expr env e1 + Zeval_expr env e2
    | PEmul e1 e2 => Zeval_expr env e1 * Zeval_expr env e2
    | PEpow e1 n  => Z.pow (Zeval_expr env e1) (Z.of_N n)
    | PEsub e1 e2 => (Zeval_expr env e1) - (Zeval_expr env e2)
    | PEopp e   => Z.opp (Zeval_expr env e)
  end). Defined.

Strategy expand [ Zeval_expr ].

Definition eval_expr := eval_pexpr  Z.add Z.mul Z.sub Z.opp (fun x => x) (fun x => x) (pow_N 1 Z.mul).
Fixpoint Zeval_const  (e: PExpr Z) : option Z. exact (match e with
  | PEc c => Some c
  | PEX x => None
  | PEadd e1 e2 => map_option2 (fun x y => Some (x + y))
                               (Zeval_const e1) (Zeval_const e2)
  | PEmul e1 e2 => map_option2 (fun x y => Some (x * y))
                               (Zeval_const e1) (Zeval_const e2)
  | PEpow e1 n  => map_option (fun x => Some (Z.pow x (Z.of_N n)))
                                 (Zeval_const e1)
  | PEsub e1 e2 => map_option2 (fun x y => Some (x - y))
                               (Zeval_const e1)  (Zeval_const e2)
  | PEopp e   => map_option (fun x => Some (Z.opp x)) (Zeval_const e)
  end). Defined.

Lemma ZNpower : forall r n, r ^ Z.of_N n = pow_N 1 Z.mul r n.
Admitted.

Lemma Zeval_expr_compat : forall env e, Zeval_expr env e = eval_expr env e.
Admitted.
Definition Zeval_pop2 (o : Op2) : Z -> Z -> Prop. exact (match o with
| OpEq =>  @eq Z
| OpNEq => fun x y  => ~ x = y
| OpLe => Z.le
| OpGe => Z.ge
| OpLt => Z.lt
| OpGt => Z.gt
end). Defined.
Definition Zeval_bop2 (o : Op2) : Z -> Z -> bool. exact (match o with
| OpEq =>  Z.eqb
| OpNEq => fun x y => negb (Z.eqb x y)
| OpLe => Z.leb
| OpGe => Z.geb
| OpLt => Z.ltb
| OpGt => Z.gtb
end). Defined.

Lemma pop2_bop2 :
  forall (op : Op2) (q1 q2 : Z), is_true (Zeval_bop2 op q1 q2) <-> Zeval_pop2 op q1 q2.
Admitted.
Definition Zeval_op2 (k: Tauto.kind) :  Op2 ->  Z -> Z -> Tauto.rtyp k. exact (if k as k0 return (Op2 -> Z -> Z -> Tauto.rtyp k0)
  then Zeval_pop2 else Zeval_bop2). Defined.

Lemma Zeval_op2_hold : forall k op q1 q2,
    Tauto.hold k (Zeval_op2 k op q1 q2) <-> Zeval_pop2 op q1 q2.
Admitted.

Definition Zeval_formula (env : PolEnv Z) (k: Tauto.kind) (f : Formula Z):=
  let (lhs, op, rhs) := f in
    (Zeval_op2 k op) (Zeval_expr env lhs) (Zeval_expr env rhs).

Definition Zeval_formula' :=
  eval_formula  Z.add Z.mul Z.sub Z.opp (@eq Z) Z.le Z.lt (fun x => x) (fun x => x) (pow_N 1 Z.mul).

Lemma Zeval_formula_compat : forall env k f, Tauto.hold k (Zeval_formula env k f) <-> Zeval_formula env Tauto.isProp f.
Admitted.

Lemma Zeval_formula_compat' : forall env f,  Zeval_formula env Tauto.isProp f <-> Zeval_formula' env f.
Admitted.

Definition eval_nformula :=
  eval_nformula 0 Z.add Z.mul  (@eq Z) Z.le Z.lt (fun x => x) .
Definition Zeval_op1 (o : Op1) : Z -> Prop. exact (match o with
| Equal => fun x : Z => x = 0
| NonEqual => fun x : Z => x <> 0
| Strict => fun x : Z => 0 < x
| NonStrict => fun x : Z => 0 <= x
end). Defined.

Lemma Zeval_nformula_dec : forall env d, (eval_nformula env d) \/ ~ (eval_nformula env d).
Admitted.

Definition ZWitness := Psatz Z.

Definition ZWeakChecker := check_normalised_formulas 0 1 Z.add Z.mul Z.eqb Z.leb.

Lemma ZWeakChecker_sound :   forall (l : list (NFormula Z)) (cm : ZWitness),
  ZWeakChecker l cm = true ->
  forall env, make_impl (eval_nformula env) l False.
Admitted.

Definition psub  := psub Z0  Z.add Z.sub Z.opp Z.eqb.
Declare Equivalent Keys psub RingMicromega.psub.

Definition popp  := popp Z.opp.
Declare Equivalent Keys popp RingMicromega.popp.

Definition padd  := padd Z0  Z.add Z.eqb.
Declare Equivalent Keys padd RingMicromega.padd.

Definition pmul := pmul 0 1 Z.add Z.mul Z.eqb.

Definition normZ  := norm 0 1 Z.add Z.mul Z.sub Z.opp Z.eqb.
Declare Equivalent Keys normZ RingMicromega.norm.

Definition eval_pol := eval_pol Z.add Z.mul (fun x => x).
Declare Equivalent Keys eval_pol RingMicromega.eval_pol.

Lemma eval_pol_sub : forall env lhs rhs, eval_pol env (psub  lhs rhs) = eval_pol env lhs - eval_pol env rhs.
Admitted.

Lemma eval_pol_add : forall env lhs rhs, eval_pol env (padd  lhs rhs) = eval_pol env lhs + eval_pol env rhs.
Admitted.

Lemma eval_pol_mul : forall env lhs rhs, eval_pol env (pmul  lhs rhs) = eval_pol env lhs * eval_pol env rhs.
Admitted.

Lemma eval_pol_norm : forall env e, eval_expr env e = eval_pol env (normZ e) .
Admitted.

Definition Zunsat := check_inconsistent 0  Z.eqb Z.leb.

Definition Zdeduce := nformula_plus_nformula 0 Z.add Z.eqb.

Lemma Zunsat_sound : forall f,
    Zunsat f = true -> forall env, eval_nformula env f -> False.
Admitted.
Definition xnnormalise (t : Formula Z) : NFormula Z. exact (let (lhs,o,rhs) := t in
  let lhs := normZ lhs in
  let rhs := normZ rhs in
  match o with
  | OpEq  => (psub rhs lhs,  Equal)
  | OpNEq => (psub rhs lhs,  NonEqual)
  | OpGt  => (psub lhs rhs,  Strict)
  | OpLt  => (psub rhs lhs,  Strict)
  | OpGe  => (psub lhs rhs,  NonStrict)
  | OpLe =>  (psub rhs lhs,  NonStrict)
  end). Defined.

Lemma xnnormalise_correct :
  forall env f,
    eval_nformula env (xnnormalise f) <-> Zeval_formula env Tauto.isProp f.
Admitted.
Definition xnormalise (f: NFormula Z) : list (NFormula Z). exact (let (e,o) := f in
  match o with
  | Equal     => (psub e (Pc 1),NonStrict) :: (psub (Pc (-1)) e, NonStrict) :: nil
  | NonStrict =>  ((psub (Pc (-1)) e,NonStrict)::nil)
  | Strict    =>  ((psub (Pc 0)) e, NonStrict)::nil
  | NonEqual  =>  (e, Equal)::nil
  end). Defined.

Lemma eval_pol_Pc : forall env z,
    eval_pol env (Pc z) = z.
Admitted.

Lemma xnormalise_correct : forall env f,
    (make_conj (fun x => eval_nformula env x -> False) (xnormalise f)) <-> eval_nformula env f.
Admitted.

Definition cnf_of_list {T: Type} (tg : T) (l : list (NFormula Z)) :=
  List.fold_right (fun x acc =>
                     if Zunsat x then acc else ((x,tg)::nil)::acc)
                  (cnf_tt _ _)  l.

Lemma cnf_of_list_correct :
  forall {T : Type} (tg:T)  (f : list (NFormula Z)) env,
  eval_cnf eval_nformula env (cnf_of_list tg f) <->
  make_conj (fun x : NFormula Z => eval_nformula env x -> False) f.
Admitted.
Definition normalise {T : Type} (t:Formula Z) (tg:T) : cnf (NFormula Z) T. exact (let f := xnnormalise t in
  if Zunsat f then cnf_ff _ _
  else cnf_of_list tg (xnormalise f)). Defined.

Lemma normalise_correct : forall (T: Type) env t (tg:T), eval_cnf eval_nformula env (normalise t tg) <-> Zeval_formula env Tauto.isProp t.
Admitted.
Definition xnegate (f:NFormula Z) : list (NFormula Z). exact (let (e,o) := f in
    match o with
      | Equal  => (e,Equal) :: nil
      | NonEqual => (psub e (Pc 1),NonStrict) :: (psub (Pc (-1)) e, NonStrict) :: nil
      | NonStrict => (e,NonStrict)::nil
      | Strict    => (psub e (Pc 1),NonStrict)::nil
    end). Defined.
Definition negate {T : Type} (t:Formula Z) (tg:T) : cnf (NFormula Z) T. exact (let f := xnnormalise t in
  if Zunsat f then cnf_tt _ _
  else cnf_of_list tg (xnegate f)). Defined.

Lemma xnegate_correct : forall env f,
    (make_conj (fun x => eval_nformula env x -> False) (xnegate f)) <-> ~ eval_nformula env f.
Admitted.

Lemma negate_correct : forall T env t (tg:T), eval_cnf eval_nformula env (negate t tg) <-> ~ Zeval_formula env Tauto.isProp t.
Admitted.

Definition cnfZ (Annot: Type) (TX : Tauto.kind -> Type)  (AF : Type) (k: Tauto.kind) (f : TFormula (Formula Z) Annot TX AF k) :=
  rxcnf Zunsat Zdeduce normalise negate true f.
Definition ZweakTautoChecker (w: list ZWitness) (f : BFormula (Formula Z) Tauto.isProp) : bool. exact (@tauto_checker (Formula Z)  (NFormula Z) unit Zunsat Zdeduce normalise negate  ZWitness (fun cl => ZWeakChecker (List.map fst cl)) f w). Defined.


Import Stdlib.ZArith.Zdiv.
#[local] Open Scope Z_scope.
Definition ceiling (a b:Z) : Z. exact (let (q,r) := Z.div_eucl a b in
    match r with
      | Z0 => q
      | _  => q + 1
    end). Defined.

Lemma Zdivide_ceiling : forall a b, (b | a) -> ceiling a b = Z.div a b.
Admitted.

Lemma narrow_interval_lower_bound a b x :
  a > 0 -> a * x  >= b -> x >= ceiling b a.
Admitted.



Inductive ZArithProof :=
| DoneProof
| RatProof : ZWitness -> ZArithProof -> ZArithProof
| CutProof : ZWitness -> ZArithProof -> ZArithProof
| SplitProof : PolC Z -> ZArithProof -> ZArithProof -> ZArithProof
| EnumProof : ZWitness -> ZWitness -> list ZArithProof -> ZArithProof
| ExProof   : positive -> ZArithProof -> ZArithProof

.

Register ZArithProof as micromega.ZArithProof.type.
Register DoneProof   as micromega.ZArithProof.DoneProof.
Register RatProof    as micromega.ZArithProof.RatProof.
Register CutProof    as micromega.ZArithProof.CutProof.
Register SplitProof  as micromega.ZArithProof.SplitProof.
Register EnumProof   as micromega.ZArithProof.EnumProof.

Section MaxVar.

End MaxVar.

End ZMicromega.
Module Export Stdlib_DOT_micromega_DOT_ZMicromega.
Module Export Stdlib.
Module Export micromega.
Module Export ZMicromega.
End ZMicromega.

End micromega.

End Stdlib.

End Stdlib_DOT_micromega_DOT_ZMicromega.
Module Export Lia.
End Lia.
Export Stdlib.Numbers.BinNums.
Module Export Stdlib_DOT_PArith_DOT_PArith.
Module Export Stdlib.
Module Export PArith.
Module Export PArith.
End PArith.

End PArith.

End Stdlib.

End Stdlib_DOT_PArith_DOT_PArith.
Module Export Stdlib_DOT_btauto_DOT_Algebra.
Module Export Algebra.
End Algebra.

End Stdlib_DOT_btauto_DOT_Algebra.
Module Export Reflect.
End Reflect.
Module Export Btauto.
End Btauto.
Module Export Zbitwise.
End Zbitwise.
Module Export ZArith.
End ZArith.
Import Stdlib.Lists.List.
Import Stdlib.Setoids.Setoid.
Import ListNotations.

Section Permutation.

Variable A:Type.

Inductive Permutation : list A -> list A -> Prop :=
| perm_nil: Permutation [] []
| perm_skip x l l' : Permutation l l' -> Permutation (x::l) (x::l')
| perm_swap x y l : Permutation (y::x::l) (x::y::l)
| perm_trans l l' l'' :
    Permutation l l' -> Permutation l' l'' -> Permutation l l''.

Theorem Permutation_refl : forall l : list A, Permutation l l.
Admitted.

Theorem Permutation_sym : forall l l' : list A,
 Permutation l l' -> Permutation l' l.
Admitted.

Theorem Permutation_trans : forall l l' l'' : list A,
 Permutation l l' -> Permutation l' l'' -> Permutation l l''.
Admitted.

End Permutation.

#[global]
Instance Permutation_Equivalence A : Equivalence (@Permutation A) := {
  Equivalence_Reflexive := @Permutation_refl A ;
  Equivalence_Symmetric := @Permutation_sym A ;
  Equivalence_Transitive := @Permutation_trans A }.

Section Permutation_properties.

End Permutation_properties.

Section Permutation_map.

End Permutation_map.

Section Permutation_transp.

End Permutation_transp.
Module Export Stdlib_DOT_Sorting_DOT_Permutation.
Module Export Stdlib.
Module Export Sorting.
Module Export Permutation.
End Permutation.

End Sorting.

End Stdlib.

End Stdlib_DOT_Sorting_DOT_Permutation.
Notation "∃ x .. y , P" := (exists x, .. (exists y, P) ..)
  (at level 10, x binder, y binder, P at level 200,
  format "'[  ' '[  ' ∃  x  ..  y ']' ,  '/' P ']'") : type_scope.
Notation "x ∧ y" := (x /\ y) (at level 80, right associativity) : type_scope.
Notation "x → y" := (x -> y)
  (at level 99, y at level 200, right associativity): type_scope.

Notation "x ↔ y" := (x <-> y) (at level 95, no associativity): type_scope.
Notation "¬ x" := (~x) (at level 75, right associativity) : type_scope.
Module Export Stdlib.
Module Export Unicode.
Module Export Utf8_core.
End Utf8_core.

Export Stdlib.Unicode.Utf8_core.
Export Stdlib.Classes.Morphisms.
Export Stdlib.Lists.List.
Export Stdlib.Setoids.Setoid.
Export ListNotations.

Global Generalizable All Variables.

Global Obligation Tactic := idtac.

Declare Scope stdpp_scope.
Global Open Scope stdpp_scope.
Notation "(=@{ A } )" := (@eq A) (only parsing) : stdpp_scope.

Class Decision (P : Prop) := decide : {P} + {¬P}.
Global Arguments decide _ {_} : simpl never, assert.

Class RelDecision {A B} (R : A → B → Prop) :=
  decide_rel x y :: Decision (R x y).
Notation EqDecision A := (RelDecision (=@{A})).

Class Inj {A B} (R : relation A) (S : relation B) (f : A → B) : Prop :=
  inj x y : S (f x) (f y) → R x y.

Lemma not_symmetry `{R : relation A, !Symmetric R} x y : ¬R x y → ¬R y x.
Admitted.

Section prod_relation.
End prod_relation.

Section prod_setoid.
End prod_setoid.

Section sum_relation.
End sum_relation.

Definition is_Some {A} (mx : option A) := ∃ x, mx = Some x.
Notation "x ↾ p" := (exist _ x p) (at level 20) : stdpp_scope.

Section sig_map.
End sig_map.

Class ElemOf A B := elem_of: A → B → Prop.
Infix "∈" := elem_of (at level 70) : stdpp_scope.
Notation "x ∉ X" := (¬x ∈ X) (at level 80) : stdpp_scope.

Inductive list_elem_of {A} : ElemOf A (list A) :=
  | list_elem_of_here (x : A) l : x ∈ x :: l
  | list_elem_of_further (x y : A) l : x ∈ l → x ∈ y :: l.
Global Existing Instance list_elem_of.
Module Export stdpp_DOT_base.
Module Export stdpp.
Module Export base.
End base.

End stdpp.

End stdpp_DOT_base.

Export stdpp.base.
Module Export proof_irrel.
End proof_irrel.

Ltac solve_trivial_decision :=
  match goal with
  | |- Decision (?P) => apply _
  | |- sumbool ?P (¬?P) => change (Decision P); apply _
  end.
Ltac solve_decision :=
  unfold EqDecision; intros; first
    [ solve_trivial_decision
    | unfold Decision; decide equality; solve_trivial_decision ].
Notation cast_if S := (if S then left _ else right _).
Module Export decidable.
End decidable.

Ltac fast_done :=
  solve
    [ eassumption
    | symmetry; eassumption
    | apply not_symmetry; eassumption
    | reflexivity ].

Ltac done :=
  solve
  [ repeat first
    [ fast_done
    | solve [trivial]

    | progress intros
    | solve [symmetry; trivial]
    | solve [apply not_symmetry; trivial]
    | discriminate
    | contradiction
    | split
    | match goal with H : is_Some None |- _ => destruct H as [? [=]] end
    | match goal with H : ¬_ |- _ => case H; clear H; fast_done end
    ]
  ].
Tactic Notation "by" tactic(tac) :=
  tac; done.
Module Export stdpp_DOT_tactics.
Module Export stdpp.
Module Export tactics.
End tactics.

End stdpp.

End stdpp_DOT_tactics.

Export stdpp.tactics.

Section Forall2.
End Forall2.

Section setoids.
End setoids.

Section union_intersection_difference.
End union_intersection_difference.
Module Export stdpp_DOT_option.
Module Export stdpp.
Module Export option.
End option.

End stdpp.

End stdpp_DOT_option.
Export Stdlib.PArith.PArith.
Export stdpp.option.
Module Export numbers.
End numbers.
Notation "( x ::.)" := (cons x) (only parsing) : list_scope.

Section list_set.
End list_set.

Section filter.
End filter.
Module Export stdpp_DOT_list_basics.
Module Export stdpp.
Module Export list_basics.
End list_basics.

End stdpp.

End stdpp_DOT_list_basics.
Export Stdlib.Sorting.Permutation.

Global Arguments Permutation {_} _ _ : assert.

Infix "≡ₚ" := Permutation (at level 70, no associativity) : stdpp_scope.
Notation "(≡ₚ)" := Permutation (only parsing) : stdpp_scope.

Inductive submseteq {A} : relation (list A) :=
  | submseteq_nil : submseteq [] []
  | submseteq_skip x l1 l2 : submseteq l1 l2 → submseteq (x :: l1) (x :: l2)
  | submseteq_swap x y l : submseteq (y :: x :: l) (x :: y :: l)
  | submseteq_cons x l1 l2 : submseteq l1 l2 → submseteq l1 (x :: l2)
  | submseteq_trans l1 l2 l3 : submseteq l1 l2 → submseteq l2 l3 → submseteq l1 l3.
Infix "⊆+" := submseteq (at level 70) : stdpp_scope.

Section general_properties.
Context {A : Type}.
Implicit Types x y z : A.
Implicit Types l k : list A.

Global Instance cons_Permutation_inj_r x : Inj (≡ₚ) (≡ₚ) (x ::.).
Admitted.
Lemma submseteq_nil_l l : [] ⊆+ l.
Admitted.

Global Instance: Proper ((≡ₚ) ==> (≡ₚ) ==> iff) (@submseteq A).
Admitted.

Lemma elem_of_submseteq l k x : x ∈ l → l ⊆+ k → x ∈ k.
Admitted.
Lemma submseteq_cons_l x l k : x :: l ⊆+ k ↔ ∃ k', k ≡ₚ x :: k' ∧ l ⊆+ k'.
Admitted.
  Context `{!EqDecision A}.

  Local Program Fixpoint elem_of_or_Permutation x l :
      (x ∉ l) + { k | l ≡ₚ x :: k } :=
    match l with
    | [] => inl _
    | y :: l =>
       if decide (x = y) then inr (l ↾ _) else
       match elem_of_or_Permutation x l return _ with
       | inl _ => inl _ | inr (k ↾ _) => inr ((y :: k) ↾ _)
       end
    end.
Admit Obligations.

  Global Program Instance submseteq_dec : RelDecision (@submseteq A) :=
    fix go l1 l2 :=
    match l1 with
    | [] => left _
    | x :: l1 =>
       match elem_of_or_Permutation x l2 return _ with
       | inl _ => right _
       | inr (l2 ↾ _) => cast_if (go l1 l2)
       end
    end.
  Next Obligation.
intros _ l1 l2 _.
apply submseteq_nil_l.
Qed.
  Next Obligation.
    intros _ ? l2 x l1 <- Hx Hxl1.
eapply Hx, elem_of_submseteq, Hxl1.
by left.
  Qed.
  Next Obligation.
intros _ ?? x l1 <- _ l2 -> Hl.
by apply submseteq_skip.
Qed.
  Next Obligation.
    intros _ ?? x l1 <- _ l2 -> Hl (l2' & Hl2%(inj _) & ?)%submseteq_cons_l.
    apply Hl.
by rewrite Hl2.
  Qed.
End general_properties.
Module Export list_relations.
End list_relations.
Module Export list_monad.
End list_monad.
Module Export list_tactics.
End list_tactics.
Module Export list_numbers.
End list_numbers.
Export stdpp.list_basics.
Module Export stdpp.
Module Export list.
End list.

Inductive ascii : Set := Ascii (_ _ _ _ _ _ _ _ : bool).
Module Export Stdlib.
Module Export Strings.
Module Export Ascii.
End Ascii.

End Strings.

End Stdlib.

Module Export Stdlib_DOT_Strings_DOT_String_WRAPPED.
Module Export String.
Import Stdlib.Strings.Ascii.

Inductive string : Set :=
  | EmptyString : string
  | String : ascii -> string -> string.

Module Export StringSyntax.
End StringSyntax.

End String.
Module Export Stdlib.
Module Export Strings.
Module Export String.
Include Stdlib_DOT_Strings_DOT_String_WRAPPED.String.
End String.
Export stdpp.list.
Admit Obligations.
Module Export stdpp_DOT_countable.
Module Export stdpp.
Module Export countable.
End countable.

End stdpp.

End stdpp_DOT_countable.

Export Stdlib.Strings.String (string(..)).
Module Export stdpp.
Module Export strings.
End strings.

End stdpp.
Module Export pretty.
End pretty.
Module Export infinite.
End infinite.
Module Export gmap.
End gmap.
Import stdpp.countable.

Record loc := Loc { loc_car : Z }.
Module Export iris.
Module Export heap_lang.
Module Export locations.
End locations.

End heap_lang.

End iris.

Export stdpp.strings.

Inductive binder := BAnon | BNamed :> string → binder.

Global Instance binder_dec_eq : EqDecision binder.
Admitted.
Export iris.heap_lang.locations.

Definition proph_id := positive.

Inductive base_lit : Set :=
  | LitInt (n : Z) | LitBool (b : bool) | LitUnit | LitPoison
  | LitLoc (l : loc) | LitProphecy (p: proph_id).
Inductive un_op : Set :=
  | NegOp | MinusUnOp.
Inductive bin_op : Set :=

  | PlusOp | MinusOp | MultOp | QuotOp | RemOp
  | AndOp | OrOp | XorOp
  | ShiftLOp | ShiftROp
  | LeOp | LtOp | EqOp
  | OffsetOp.

Inductive expr :=

  | Val (v : val)

  | Var (x : string)
  | Rec (f x : binder) (e : expr)
  | App (e1 e2 : expr)

  | UnOp (op : un_op) (e : expr)
  | BinOp (op : bin_op) (e1 e2 : expr)
  | If (e0 e1 e2 : expr)

  | Pair (e1 e2 : expr)
  | Fst (e : expr)
  | Snd (e : expr)

  | InjL (e : expr)
  | InjR (e : expr)
  | Case (e0 : expr) (e1 : expr) (e2 : expr)

  | AllocN (e1 e2 : expr)
  | Free (e : expr)
  | Load (e : expr)
  | Store (e1 : expr) (e2 : expr)
  | CmpXchg (e0 : expr) (e1 : expr) (e2 : expr)
  | Xchg (e0 : expr) (e1 : expr)
  | FAA (e1 : expr) (e2 : expr)

  | Fork (e : expr)

  | NewProph
  | Resolve (e0 : expr) (e1 : expr) (e2 : expr)
with val :=
  | LitV (l : base_lit)
  | RecV (f x : binder) (e : expr)
  | PairV (v1 v2 : val)
  | InjLV (v : val)
  | InjRV (v : val).

Global Instance base_lit_eq_dec : EqDecision base_lit.
Admitted.
Global Instance expr_eq_dec : EqDecision expr.
Admitted.
Global Instance val_eq_dec : EqDecision val.
Proof.
solve_decision.
