
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "+duplicate-clear" "-w" "+non-primitive-record" "-w" "+undeclared-scope" "-w" "+deprecated-hint-without-locality" "-w" "+deprecated-hint-rewrite-without-locality" "-w" "-projection-no-head-constant" "-w" "-redundant-canonical-projection" "-w" "-notation-overridden" "-w" "-ambiguous-paths" "-w" "-elpi.add-const-for-axiom-or-sectionvar" "-w" "-mathcomp-subset-itv" "-w" "+level-tolerance" "-w" "-notation-for-abbreviation" "-w" "-deprecated-native-compiler-option" "-native-compiler" "ondemand" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/mathcomp" "mathcomp" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/HB" "HB" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi" "elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_elpi" "elpi_elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_examples" "elpi_examples" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/mathcomp" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 2712 lines to 251 lines, then from 218 lines to 96 lines, then from 110 lines to 1271 lines, then from 1278 lines to 204 lines, then from 218 lines to 1752 lines, then from 1759 lines to 1577 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 30.372 sec
   Expected coqc peak memory usage on this file: 1444632.0 kb *)









Require Corelib.Init.Ltac.
Require Corelib.ssr.ssrbool.
Require Corelib.ssr.ssrfun.
Require Corelib.ssr.ssreflect.
Require Corelib.BinNums.PosDef.
Require elpi_elpi.dummy.
Require mathcomp.boot.ssrnotations.
Require elpi.elpi.
Require mathcomp.boot.ssreflect.
Require elpi.apps.locker.locker.
Require mathcomp.boot.ssrfun.
Require HB.structures.
Require mathcomp.boot.ssrbool.
Require mathcomp.boot.eqtype.
Require mathcomp.boot.ssrnat.
Require mathcomp.boot.seq.
Require mathcomp.boot.choice.
Require mathcomp.boot.div.
Require mathcomp.boot.path.
Require mathcomp.boot.fintype.
Require mathcomp.boot.tuple.
Require mathcomp.boot.finfun.
Require mathcomp.boot.bigop.
Require mathcomp.boot.finset.
Require mathcomp.boot.monoid.
Require mathcomp.boot.prime.
Require mathcomp.boot.nmodule.
Require mathcomp.boot.binomial.
Require mathcomp.order.preorder.
Require mathcomp.order.order.
Require mathcomp.algebra.alg.algebra.

Module Export AdmitTactic.
Module Import LocalFalse.
Inductive False : Prop := .
End LocalFalse.
Axiom proof_admitted : False.
Import Coq.Init.Ltac.
Tactic Notation "admit" := abstract case proof_admitted.
End AdmitTactic.

Module mathcomp_DOT_algebra_DOT_alg_DOT_divalg_WRAPPED.
Module Export divalg.


Import HB.structures.
Import mathcomp.boot.ssreflect.
Import mathcomp.boot.ssrfun.
Import mathcomp.boot.ssrbool.
Import mathcomp.boot.eqtype.
Import mathcomp.boot.ssrnat.
Import mathcomp.boot.seq.
Import mathcomp.boot.div.
Import mathcomp.boot.choice.
Import mathcomp.boot.fintype.
Import mathcomp.boot.bigop.
Import mathcomp.boot.prime.
Import mathcomp.boot.nmodule.
Import mathcomp.algebra.alg.algebra.



































































































Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Module Import GRing.


Export GRing.

HB.mixin Record NzRing_hasMulInverse R & NzRing R := {
  unit_subdef : pred R;
  inv : R -> R;
  mulVr_subproof : {in unit_subdef, left_inverse 1 inv *%R};
  divrr_subproof : {in unit_subdef, right_inverse 1 inv *%R};
  unitrP_subproof : forall x y, y * x = 1 /\ x * y = 1 -> unit_subdef x;
  invr_out_subproof : {in [predC unit_subdef], inv =1 id}
}.

#[short(type="unitRingType")]
HB.structure Definition UnitRing := {R of NzRing_hasMulInverse R & NzRing R}.

Module Export UnitRingExports.
Bind Scope ring_scope with UnitRing.sort.
End UnitRingExports.
HB.export UnitRingExports.

Definition unit_pred {R : unitRingType} :=
  Eval cbv [ unit_subdef NzRing_hasMulInverse.unit_subdef ] in
    (fun u : R => unit_subdef u).
Arguments unit_pred _ _ /.
Definition unit {R : unitRingType} := [qualify a u : R | unit_pred u].

Local Notation "x ^-1" := (inv x).
Local Notation "x / y" := (x * y^-1).
Local Notation "x ^- n" := ((x ^+ n)^-1).

Section UnitRingTheory.

Variable R : unitRingType.
Implicit Types x y : R.

Lemma divrr : {in unit, right_inverse 1 (@inv R) *%R}.
Admitted.
Definition mulrV := divrr.

Lemma mulVr : {in unit, left_inverse 1 (@inv R) *%R}.
Admitted.

Lemma invr_out x : x \isn't a unit -> x^-1 = x.
Admitted.

Lemma unitrP x : reflect (exists y, y * x = 1 /\ x * y = 1) (x \is a unit).
Admitted.

Lemma mulKr : {in unit, left_loop (@inv R) *%R}.
Admitted.

Lemma mulVKr : {in unit, rev_left_loop (@inv R) *%R}.
Admitted.

Lemma mulrK : {in unit, right_loop (@inv R) *%R}.
Admitted.

Lemma mulrVK : {in unit, rev_right_loop (@inv R) *%R}.
Admitted.
Definition divrK := mulrVK.

Lemma mulrI : {in @unit R, right_injective *%R}.
Admitted.

Lemma mulIr : {in @unit R, left_injective *%R}.
Admitted.


Lemma telescope_prodr n m (f : nat -> R) :
    (forall k, n < k < m -> f k \is a unit) -> n < m ->
  \prod_(n <= k < m) (f k / f k.+1) = f n / f m.
Admitted.

Lemma telescope_prodr_eq n m (f u : nat -> R) : n < m ->
    (forall k, n < k < m -> f k \is a unit) ->
    (forall k, (n <= k < m)%N -> u k = f k / f k.+1) ->
  \prod_(n <= k < m) u k = f n / f m.
Admitted.

Lemma commrV x y : comm x y -> comm x y^-1.
Admitted.

Lemma unitrE x : (x \is a unit) = (x / x == 1).
Admitted.

Lemma invrK : involutive (@inv R).
Admitted.

Lemma invr_inj : injective (@inv R).
Admitted.

Lemma unitrV x : (x^-1 \in unit) = (x \in unit).
Admitted.

Lemma unitr1 : 1 \in @unit R.
Admitted.

Lemma invr1 : 1^-1 = 1 :> R.
Admitted.

Lemma div1r x : 1 / x = x^-1.
Admitted.
Lemma divr1 x : x / 1 = x.
Admitted.

Lemma natr_div m d :
  d %| m -> d%:R \is a @unit R -> (m %/ d)%:R = m%:R / d%:R :> R.
Admitted.

Lemma divrI : {in unit, right_injective (fun x y => x / y)}.
Admitted.

Lemma divIr : {in unit, left_injective (fun x y => x / y)}.
Admitted.

Lemma unitr0 : (0 \is a @unit R) = false.
Admitted.

Lemma invr0 : 0^-1 = 0 :> R.
Admitted.

Lemma unitrN1 : -1 \is a @unit R.
Admitted.

Lemma invrN1 : (-1)^-1 = -1 :> R.
Admitted.

Lemma invr_sign n : ((-1) ^- n) = (-1) ^+ n :> R.
Admitted.

Lemma unitrMl x y : y \is a unit -> (x * y \is a unit) = (x \is a unit).
Admitted.

Lemma unitrMr x y : x \is a unit -> (x * y \is a unit) = (y \is a unit).
Admitted.

Lemma unitr_prod {I : Type} (P : pred I) (E : I -> R) (r : seq I) :
  (forall i, P i -> E i \is a GRing.unit) ->
    (\prod_(i <- r | P i) E i \is a GRing.unit).
Admitted.

Lemma unitr_prod_in {I : eqType} (P : pred I) (E : I -> R) (r : seq I) :
  {in r, forall i, P i -> E i \is a GRing.unit} ->
    (\prod_(i <- r | P i) E i \is a GRing.unit).
Admitted.

Lemma invrM : {in unit &, forall x y, (x * y)^-1 = y^-1 * x^-1}.
Admitted.

Lemma unitrM_comm x y :
  comm x y -> (x * y \is a unit) = (x \is a unit) && (y \is a unit).
Admitted.

Lemma unitrX x n : x \is a unit -> x ^+ n \is a unit.
Admitted.

Lemma unitrX_pos x n : n > 0 -> (x ^+ n \in unit) = (x \in unit).
Admitted.

Lemma exprVn x n : x^-1 ^+ n = x ^- n.
Admitted.

Lemma exprB m n x : n <= m -> x \is a unit -> x ^+ (m - n) = x ^+ m / x ^+ n.
Admitted.

Lemma invr_neq0 x : x != 0 -> x^-1 != 0.
Admitted.

Lemma invr_eq0 x : (x^-1 == 0) = (x == 0).
Admitted.

Lemma invr_eq1 x : (x^-1 == 1) = (x == 1).
Admitted.

Lemma rev_unitrP (x y : R^c) : y * x = 1 /\ x * y = 1 -> x \is a unit.
Admitted.

#[export]
HB.instance Definition _ :=
  NzRing_hasMulInverse.Build R^c mulrV mulVr rev_unitrP invr_out.

#[export]
HB.instance Definition _ := UnitRing.on R^o.

End UnitRingTheory.

Arguments invrK {R}.
Arguments invr_inj {R} [x1 x2].
Arguments telescope_prodr_eq {R n m} f u.

Lemma rev_prodrV (R : unitRingType)
  (I : Type) (r : seq I) (P : pred I) (E : I -> R) :
  (forall i, P i -> E i \is a GRing.unit) ->
  \prod_(i <- r | P i) (E i)^-1 = ((\prod_(i <- r | P i) (E i : R^c))^-1).
Admitted.

Section UnitRingClosedPredicates.

Variables (R : unitRingType) (S : {pred R}).

Definition invr_closed := {in S, forall x, x^-1 \in S}.
Definition divr_2closed := {in S &, forall x y, x / y \in S}.
Definition divr_closed := 1 \in S /\ divr_2closed.
Definition sdivr_closed := -1 \in S /\ divr_2closed.
Definition divring_closed := [/\ 1 \in S, subr_closed S & divr_2closed].

Lemma divr_closedV : divr_closed -> invr_closed.
Admitted.

Lemma divr_closedM : divr_closed -> mulr_closed S.
Admitted.

Lemma sdivr_closed_div : sdivr_closed -> divr_closed.
Admitted.

Lemma sdivr_closedM : sdivr_closed -> smulr_closed S.
Admitted.

Lemma divring_closedBM : divring_closed -> subring_closed S.
Admitted.

Lemma divring_closed_div : divring_closed -> sdivr_closed.
Admitted.

End UnitRingClosedPredicates.

Section UnitRingMorphism.

Variables (R S : unitRingType) (f : {rmorphism R -> S}).

Lemma rmorph_unit x : x \in unit -> f x \in unit.
Admitted.

Lemma rmorphV : {in unit, {morph f: x / x^-1}}.
Admitted.

Lemma rmorph_div x y : y \in unit -> f (x / y) = f x / f y.
Admitted.

End UnitRingMorphism.

#[short(type="comUnitRingType")]
HB.structure Definition ComUnitRing := {R of ComNzRing R & UnitRing R}.

Module Export ComUnitRingExports.
Bind Scope ring_scope with ComUnitRing.sort.
End ComUnitRingExports.
HB.export ComUnitRingExports.


HB.factory Record ComNzRing_hasMulInverse R & ComNzRing R := {
  unit : {pred R};
  inv : R -> R;
  mulVx : {in unit, left_inverse 1 inv *%R};
  unitPl : forall x y, y * x = 1 -> unit x;
  invr_out : {in [predC unit], inv =1 id}
}.

HB.builders Context R & ComNzRing_hasMulInverse R.

Fact mulC_mulrV : {in unit, right_inverse 1 inv *%R}.
Admitted.

Fact mulC_unitP x y : y * x = 1 /\ x * y = 1 -> unit x.
Admitted.

HB.instance Definition _ :=
  NzRing_hasMulInverse.Build R mulVx mulC_mulrV mulC_unitP invr_out.

HB.end.

#[short(type="unitAlgType")]
HB.structure Definition UnitAlgebra R := {V of NzAlgebra R V & UnitRing V}.

Module Export UnitAlgebraExports.
Bind Scope ring_scope with UnitAlgebra.sort.
End UnitAlgebraExports.
HB.export UnitAlgebraExports.

#[short(type="comUnitAlgType")]
HB.structure Definition ComUnitAlgebra R :=
  {V of ComNzAlgebra R V & UnitRing V}.

Module Export ComUnitAlgebraExports.
Bind Scope ring_scope with UnitAlgebra.sort.
End ComUnitAlgebraExports.
HB.export ComUnitAlgebraExports.

Section ComUnitRingTheory.

Variable R : comUnitRingType.
Implicit Types x y : R.

Lemma unitrM x y : (x * y \in unit) = (x \in unit) && (y \in unit).
Admitted.

Lemma unitrPr x : reflect (exists y, x * y = 1) (x \in unit).
Admitted.

Lemma mulr1_eq x y : x * y = 1 -> x^-1 = y.
Admitted.

Lemma divr1_eq x y : x / y = 1 -> x = y.
Admitted.

Lemma divKr x : x \is a unit -> {in unit, involutive (fun y => x / y)}.
Admitted.

Lemma expr_div_n x y n : (x / y) ^+ n = x ^+ n / y ^+ n.
Admitted.

Lemma unitr_prodP (I : eqType) (r : seq I) (P : pred I) (E : I -> R) :
  reflect {in r, forall i, P i -> E i \is a GRing.unit}
    (\prod_(i <- r | P i) E i \is a GRing.unit).
Admitted.

Lemma prodrV (I : eqType) (r : seq I) (P : pred I) (E : I -> R) :
  (forall i, P i -> E i \is a GRing.unit) ->
  \prod_(i <- r | P i) (E i)^-1 = (\prod_(i <- r | P i) E i)^-1.
Admitted.


#[export] HB.instance Definition _ := ComUnitRing.on R^c.
#[export] HB.instance Definition _ := ComUnitRing.on R^o.


End ComUnitRingTheory.

Section UnitAlgebraTheory.

Variable (R : comUnitRingType) (A : unitAlgType R).
Implicit Types (k : R) (x y : A).

Lemma scaler_injl : {in unit, @right_injective R A A *:%R}.
Admitted.

Lemma scaler_unit k x : k \in unit -> (k *: x \in unit) = (x \in unit).
Admitted.

Lemma invrZ k x : k \in unit -> x \in unit -> (k *: x)^-1 = k^-1 *: x^-1.
Admitted.

Section ClosedPredicates.

Variables S : {pred A}.

Definition divalg_closed := [/\ 1 \in S, linear_closed S & divr_2closed S].

Lemma divalg_closedBdiv : divalg_closed -> divring_closed S.
Admitted.

Lemma divalg_closedZ : divalg_closed -> subalg_closed S.
Admitted.

End ClosedPredicates.

End UnitAlgebraTheory.

Module Export ClosedExports.

Notation invr_closed := invr_closed.
Notation divr_2closed := divr_2closed.
Notation divr_closed := divr_closed.
Notation sdivr_closed := sdivr_closed.
Notation divring_closed := divring_closed.
Notation divalg_closed := divalg_closed.

Coercion divr_closedV : divr_closed >-> invr_closed.
Coercion divr_closedM : divr_closed >-> mulr_closed.
Coercion sdivr_closed_div : sdivr_closed >-> divr_closed.
Coercion sdivr_closedM : sdivr_closed >-> smulr_closed.
Coercion divring_closedBM : divring_closed >-> subring_closed.
Coercion divring_closed_div : divring_closed >-> sdivr_closed.
Coercion divalg_closedBdiv : divalg_closed >-> divring_closed.
Coercion divalg_closedZ : divalg_closed >-> subalg_closed.

End ClosedExports.

Definition integral_domain_axiom (R : pzRingType) :=
  forall x y : R, x * y = 0 -> (x == 0) || (y == 0).

HB.mixin Record ComUnitRing_isIntegral R & ComUnitRing R := {
  mulf_eq0_subproof : integral_domain_axiom R;
}.

#[mathcomp(axiom="integral_domain_axiom"), short(type="idomainType")]
HB.structure Definition IntegralDomain :=
  {R of ComUnitRing_isIntegral R & ComUnitRing R}.

Module Export IntegralDomainExports.
Bind Scope ring_scope with IntegralDomain.sort.
End IntegralDomainExports.
HB.export IntegralDomainExports.

Section IntegralDomainTheory.

Variable R : idomainType.
Implicit Types x y : R.

Lemma mulf_eq0 x y : (x * y == 0) = (x == 0) || (y == 0).
Admitted.

Lemma prodf_eq0 (I : finType) (P : pred I) (F : I -> R) :
  reflect (exists2 i, P i & (F i == 0)) (\prod_(i | P i) F i == 0).
Admitted.

Lemma prodf_seq_eq0 I r (P : pred I) (F : I -> R) :
  (\prod_(i <- r | P i) F i == 0) = has (fun i => P i && (F i == 0)) r.
Admitted.

Lemma mulf_neq0 x y : x != 0 -> y != 0 -> x * y != 0.
Admitted.

Lemma prodf_neq0 (I : finType) (P : pred I) (F : I -> R) :
  reflect (forall i, P i -> (F i != 0)) (\prod_(i | P i) F i != 0).
Admitted.

Lemma prodf_seq_neq0 I r (P : pred I) (F : I -> R) :
  (\prod_(i <- r | P i) F i != 0) = all (fun i => P i ==> (F i != 0)) r.
Admitted.

Lemma expf_eq0 x n : (x ^+ n == 0) = (n > 0) && (x == 0).
Admitted.

Lemma sqrf_eq0 x : (x ^+ 2 == 0) = (x == 0).
Admitted.

Lemma expf_neq0 x m : x != 0 -> x ^+ m != 0.
Admitted.

Lemma natf_neq0_pchar n : (n%:R != 0 :> R) = (pchar R)^'.-nat n.
Admitted.

Lemma natf0_pchar n : n > 0 -> n%:R == 0 :> R -> exists p, p \in pchar R.
Admitted.

Lemma pcharf'_nat n : (pchar R)^'.-nat n = (n%:R != 0 :> R).
Admitted.

Lemma pcharf0P : pchar R =i pred0 <-> (forall n, (n%:R == 0 :> R) = (n == 0)%N).
Admitted.

Lemma eqf_sqr x y : (x ^+ 2 == y ^+ 2) = (x == y) || (x == - y).
Admitted.

Lemma mulfI x : x != 0 -> injective ( *%R x).
Admitted.

Lemma mulIf x : x != 0 -> injective ( *%R^~ x).
Admitted.

Lemma divfI x : x != 0 -> injective (fun y => x / y).
Admitted.

Lemma divIf y : y != 0 -> injective (fun x => x / y).
Admitted.

Lemma sqrf_eq1 x : (x ^+ 2 == 1) = (x == 1) || (x == -1).
Admitted.

Lemma expfS_eq1 x n :
  (x ^+ n.+1 == 1) = (x == 1) || (\sum_(i < n.+1) x ^+ i == 0).
Admitted.

Lemma lregP x : reflect (lreg x) (x != 0).
Admitted.

Lemma rregP x : reflect (rreg x) (x != 0).
Admitted.

#[export]
HB.instance Definition _ := IntegralDomain.on R^o.

End IntegralDomainTheory.

Arguments lregP {R x}.
Arguments rregP {R x}.

Definition field_axiom (R : unitRingType) := forall x : R, x != 0 -> x \in unit.

HB.mixin Record UnitRing_isField R & UnitRing R := {
  fieldP : field_axiom R;
}.

#[mathcomp(axiom="field_axiom"), short(type="fieldType")]
HB.structure Definition Field := { R of IntegralDomain R & UnitRing_isField R }.

Module Export FieldExports.
Bind Scope ring_scope with Field.sort.
End FieldExports.
HB.export FieldExports.

#[export] HB.instance Definition regular_field (F : fieldType) := Field.on F^o.

Lemma IdomainMixin (R : unitRingType): Field.axiom R -> IntegralDomain.axiom R.
Admitted.

HB.factory Record ComUnitRing_isField R & ComUnitRing R := {
  fieldP : field_axiom R;
}.
HB.builders Context R & ComUnitRing_isField R.
HB.instance Definition _ :=
  ComUnitRing_isIntegral.Build R (IdomainMixin fieldP).
HB.instance Definition _ := UnitRing_isField.Build R fieldP.
HB.end.

HB.factory Record ComNzRing_isField R & ComNzRing R := {
  inv : R -> R;
  mulVf : forall x, x != 0 -> inv x * x = 1;
  invr0 : inv 0 = 0;
}.

HB.builders Context R & ComNzRing_isField R.

Fact intro_unit (x y : R) : y * x = 1 -> x != 0.
Admitted.

Fact inv_out : {in predC (predC1 0), inv =1 id}.
Admitted.

HB.instance Definition _ : ComNzRing_hasMulInverse R :=
  ComNzRing_hasMulInverse.Build R mulVf intro_unit inv_out.

HB.instance Definition _ : ComUnitRing_isField R :=
  ComUnitRing_isField.Build R (fun x x_neq_0 => x_neq_0).

HB.end.

Section FieldTheory.

Variable F : fieldType.
Implicit Types x y : F.

Lemma unitfE x : (x \in unit) = (x != 0).
Admitted.

Lemma mulVf x : x != 0 -> x^-1 * x = 1.
Admitted.
Lemma divff x : x != 0 -> x / x = 1.
Admitted.
Definition mulfV := divff.
Lemma mulKf x : x != 0 -> cancel ( *%R x) ( *%R x^-1).
Admitted.
Lemma mulVKf x : x != 0 -> cancel ( *%R x^-1) ( *%R x).
Admitted.
Lemma mulfK x : x != 0 -> cancel ( *%R^~ x) ( *%R^~ x^-1).
Admitted.
Lemma mulfVK x : x != 0 -> cancel ( *%R^~ x^-1) ( *%R^~ x).
Admitted.
Definition divfK := mulfVK.

Lemma invfM : {morph @inv F : x y / x * y}.
Admitted.

Lemma invf_div x y : (x / y)^-1 = y / x.
Admitted.

Lemma divKf x : x != 0 -> involutive (fun y => x / y).
Admitted.

Lemma expfB_cond m n x : (x == 0) + n <= m -> x ^+ (m - n) = x ^+ m / x ^+ n.
Admitted.

Lemma expfB m n x : n < m -> x ^+ (m - n) = x ^+ m / x ^+ n.
Admitted.

Lemma prodfV I r (P : pred I) (E : I -> F) :
  \prod_(i <- r | P i) (E i)^-1 = (\prod_(i <- r | P i) E i)^-1.
Admitted.

Lemma prodf_div I r (P : pred I) (E D : I -> F) :
  \prod_(i <- r | P i) (E i / D i) =
     \prod_(i <- r | P i) E i / \prod_(i <- r | P i) D i.
Admitted.

Lemma telescope_prodf n m (f : nat -> F) :
    (forall k, n < k < m -> f k != 0) -> n < m ->
  \prod_(n <= k < m) (f k.+1 / f k) = f m / f n.
Admitted.

Lemma telescope_prodf_eq n m (f u : nat -> F) :
    (forall k, n < k < m -> f k != 0) -> n < m ->
    (forall k, n <= k < m -> u k = f k.+1 / f k) ->
  \prod_(n <= k < m) u k = f m / f n.
Admitted.

Lemma addf_div x1 y1 x2 y2 :
  y1 != 0 -> y2 != 0 -> x1 / y1 + x2 / y2 = (x1 * y2 + x2 * y1) / (y1 * y2).
Admitted.

Lemma mulf_div x1 y1 x2 y2 : (x1 / y1) * (x2 / y2) = (x1 * x2) / (y1 * y2).
Admitted.

Lemma eqr_div x y z t : y != 0 -> t != 0 -> (x / y == z / t) = (x * t == z * y).
Admitted.

Lemma eqr_sum_div I r P (f : I -> F) c a : c != 0 ->
  (\big[+%R/0]_(x <- r | P x) (f x / c) == a)
  = (\big[+%R/0]_(x <- r | P x) f x == a * c).
Admitted.

Lemma pchar0_natf_div :
  pchar F =i pred0 -> forall m d, d %| m -> (m %/ d)%:R = m%:R / d%:R :> F.
Admitted.

Section FieldMorphismInj.

Variables (R : nzRingType) (f : {rmorphism F -> R}).

Lemma fmorph_eq0 x : (f x == 0) = (x == 0).
Admitted.

Lemma fmorph_inj : injective f.
Admitted.

Lemma fmorph_eq : {mono f : x y / x == y}.
Admitted.

Lemma fmorph_eq1 x : (f x == 1) = (x == 1).
Admitted.

Lemma fmorph_pchar : pchar R =i pchar F.
Admitted.

End FieldMorphismInj.

Section FieldMorphismInv.

Variables (R : unitRingType) (f : {rmorphism F -> R}).

Lemma fmorph_unit x : (f x \in unit) = (x != 0).
Admitted.

Lemma fmorphV : {morph f: x / x^-1}.
Admitted.

Lemma fmorph_div : {morph f : x y / x / y}.
Admitted.

End FieldMorphismInv.

Section ModuleTheory.

Variable V : lmodType F.
Implicit Types (a : F) (v : V).

Lemma scalerK a : a != 0 -> cancel ( *:%R a : V -> V) ( *:%R a^-1).
Admitted.

Lemma scalerKV a : a != 0 -> cancel ( *:%R a^-1 : V -> V) ( *:%R a).
Admitted.

Lemma scalerI a : a != 0 -> injective ( *:%R a : V -> V).
Admitted.

Lemma scaler_eq0 a v : (a *: v == 0) = (a == 0) || (v == 0).
Admitted.

End ModuleTheory.

Lemma pchar_lalg (A : nzLalgType F) : pchar A =i pchar F.
Admitted.

End FieldTheory.

Arguments fmorph_inj {F R} f [x1 x2].
Arguments telescope_prodf_eq {F n m} f u.



HB.mixin Record isInvClosed (R : unitRingType) (S : {pred R}) := {
  rpredVr : invr_closed S
}.



#[short(type="divClosed")]
HB.structure Definition DivClosed (R : unitRingType) :=
  {S of MulClosed R S & isInvClosed R S}.

#[short(type="sdivClosed")]
HB.structure Definition SdivClosed (R : unitRingType) :=
  {S of SmulClosed R S & isInvClosed R S}.

#[short(type="divringClosed")]
HB.structure Definition DivringClosed (R : unitRingType) :=
  {S of SubringClosed R S & isInvClosed R S}.

#[short(type="divalgClosed")]
HB.structure Definition DivalgClosed (R : nzRingType) (A : unitAlgType R) :=
  {S of DivringClosed A S & isScaleClosed R A S}.



HB.factory Record isDivClosed (R : unitRingType) (S : R -> bool) := {
  divr_closed_subproof : divr_closed S
}.

HB.builders Context R S & isDivClosed R S.
HB.instance Definition _ := isMulClosed.Build R S
  (divr_closedM divr_closed_subproof).
HB.instance Definition _ := isInvClosed.Build R S
  (divr_closedV divr_closed_subproof).
HB.end.

HB.factory Record isSdivClosed (R : unitRingType) (S : R -> bool) := {
  sdivr_closed_subproof : sdivr_closed S
}.

HB.builders Context R S & isSdivClosed R S.
HB.instance Definition _ := isDivClosed.Build R S
  (sdivr_closed_div sdivr_closed_subproof).
HB.instance Definition _ := isSmulClosed.Build R S
  (sdivr_closedM sdivr_closed_subproof).
HB.end.

HB.factory Record isDivringClosed (R : unitRingType) (S : R -> bool) := {
  divring_closed_subproof : divring_closed S
}.

HB.builders Context R S & isDivringClosed R S.
HB.instance Definition _ := isSubringClosed.Build R S
  (divring_closedBM divring_closed_subproof).
HB.instance Definition _ := isSdivClosed.Build R S
  (divring_closed_div divring_closed_subproof).
HB.end.

HB.factory Record isDivalgClosed (R : comUnitRingType) (A : unitAlgType R)
    (S : A -> bool) := {
  divalg_closed_subproof : divalg_closed S
}.

HB.builders Context R A S & isDivalgClosed R A S.
HB.instance Definition _ := isDivringClosed.Build A S
  (divalg_closedBdiv divalg_closed_subproof).
HB.instance Definition _ := isSubalgClosed.Build R A S
  (subalg_closed_semi (divalg_closedZ divalg_closed_subproof)).
HB.end.

Section UnitRingPred.

Variable R : unitRingType.

Section Div.

Variable S : divClosed R.

Lemma rpredV x : (x^-1 \in S) = (x \in S).
Admitted.

Lemma rpred_div : {in S &, forall x y, x / y \in S}.
Admitted.

Lemma rpredXN n : {in S, forall x, x ^- n \in S}.
Admitted.

Lemma rpredMl x y : x \in S -> x \is a unit-> (x * y \in S) = (y \in S).
Admitted.

Lemma rpredMr x y : x \in S -> x \is a unit -> (y * x \in S) = (y \in S).
Admitted.

Lemma rpred_divr x y : x \in S -> x \is a unit -> (y / x \in S) = (y \in S).
Admitted.

Lemma rpred_divl x y : x \in S -> x \is a unit -> (x / y \in S) = (y \in S).
Admitted.

End Div.

Lemma divringClosedP (divS : divringClosed R) : divring_closed divS.
Admitted.

Fact unitr_sdivr_closed : @sdivr_closed R unit.
Admitted.

#[export]
HB.instance Definition _ := isSdivClosed.Build R unit_pred unitr_sdivr_closed.

Implicit Type x : R.

Lemma unitrN x : (- x \is a unit) = (x \is a unit).
Admitted.

Lemma invrN x : (- x)^-1 = - x^-1.
Admitted.

Lemma divrNN x y : (- x) / (- y) = x / y.
Admitted.

Lemma divrN x y : x / (- y) = - (x / y).
Admitted.

Lemma invr_signM n x : ((-1) ^+ n * x)^-1 = (-1) ^+ n * x^-1.
Admitted.

Lemma divr_signM (b1 b2 : bool) x1 x2:
  ((-1) ^+ b1 * x1) / ((-1) ^+ b2 * x2) = (-1) ^+ (b1 (+) b2) * (x1 / x2).
Admitted.

End UnitRingPred.

Section FieldPred.

Variable F : fieldType.
Implicit Types x y : F.

Section ModuleTheory.

Variable V : lmodType F.
Implicit Types (a : F) (v : V).

Lemma rpredZeq (S : submodClosed V) a v :
  (a *: v \in S) = (a == 0) || (v \in S).
Admitted.

End ModuleTheory.

Section Predicates.

Context (S : divClosed F).

Lemma fpredMl x y : x \in S -> x != 0 -> (x * y \in S) = (y \in S).
Admitted.

Lemma fpredMr x y : x \in S -> x != 0 -> (y * x \in S) = (y \in S).
Admitted.

Lemma fpred_divl x y : x \in S -> x != 0 -> (x / y \in S) = (y \in S).
Admitted.

Lemma fpred_divr x y : x \in S -> x != 0 -> (y / x \in S) = (y \in S).
Admitted.

End Predicates.

End FieldPred.

#[short(type="subUnitRingType")]
HB.structure Definition SubUnitRing (R : nzRingType) (S : pred R) :=
  {U of SubNzRing R S U & UnitRing U}.

HB.factory Record SubNzRing_isSubUnitRing (R : unitRingType) S U
    & SubNzRing R S U := {
  divring_closed_subproof : divring_closed S
}.

HB.builders Context R S U & SubNzRing_isSubUnitRing R S U.

HB.instance Definition _ := isDivringClosed.Build R S divring_closed_subproof.

Let inU v Sv : U := Sub v Sv.
Let invU (u : U) := inU (rpredVr _ (valP u)).

Lemma mulVr : {in [pred x | val x \is a unit], left_inverse 1 invU *%R}.
Admitted.
Lemma divrr : {in [pred x | val x \is a unit], right_inverse 1 invU *%R}.
Admitted.
Lemma unitrP (x y : U) : y * x = 1 /\ x * y = 1 -> val x \is a unit.
Admitted.
Lemma invr_out : {in [pred x | val x \isn't a unit], invU =1 id}.
Admitted.
HB.instance Definition _ := NzRing_hasMulInverse.Build U
  mulVr divrr unitrP invr_out.
HB.end.

#[short(type="subComUnitRingType")]
HB.structure Definition SubComUnitRing (R : comUnitRingType) (S : pred R) :=
  {U of SubComNzRing R S U & SubUnitRing R S U}.

#[short(type="subIdomainType")]
HB.structure Definition SubIntegralDomain (R : idomainType) (S : pred R) :=
  {U of SubComNzRing R S U & IntegralDomain U}.

HB.factory Record SubComUnitRing_isSubIntegralDomain (R : idomainType) S U
  & SubComUnitRing R S U := {}.

HB.builders Context R S U & SubComUnitRing_isSubIntegralDomain R S U.
Lemma id : IntegralDomain.axiom U.
Admitted.
HB.instance Definition _ := ComUnitRing_isIntegral.Build U id.
HB.end.

#[short(type="subFieldType")]
HB.structure Definition SubField (F : fieldType) (S : pred F) :=
  {U of SubIntegralDomain F S U & Field U}.

HB.factory Record SubIntegralDomain_isSubField (F : fieldType) S U
    & SubIntegralDomain F S U := {
  subfield_subproof : {mono (val : U -> F) : u / u \in unit}
}.

HB.builders Context F S U & SubIntegralDomain_isSubField F S U.
Lemma fieldP : Field.axiom U.
Admitted.
HB.instance Definition _ := UnitRing_isField.Build U fieldP.
HB.end.

HB.factory Record SubChoice_isSubUnitRing (R : unitRingType) S U
    & SubChoice R S U := {
  divring_closed_subproof : divring_closed S
}.

HB.builders Context R S U & SubChoice_isSubUnitRing R S U.
HB.instance Definition _ := SubChoice_isSubNzRing.Build R S U
  (divring_closedBM divring_closed_subproof).
HB.instance Definition _ := SubNzRing_isSubUnitRing.Build R S U
  divring_closed_subproof.
HB.end.

HB.factory Record SubChoice_isSubComUnitRing (R : comUnitRingType) S U
    & SubChoice R S U := {
  divring_closed_subproof : divring_closed S
}.

HB.builders Context R S U & SubChoice_isSubComUnitRing R S U.
HB.instance Definition _ := SubChoice_isSubComNzRing.Build R S U
  (divring_closedBM divring_closed_subproof).
HB.instance Definition _ := SubNzRing_isSubUnitRing.Build R S U
  divring_closed_subproof.
HB.end.

HB.factory Record SubChoice_isSubIntegralDomain (R : idomainType) S U
    & SubChoice R S U := {
  divring_closed_subproof : divring_closed S
}.

HB.builders Context R S U & SubChoice_isSubIntegralDomain R S U.
HB.instance Definition _ := SubChoice_isSubComUnitRing.Build R S U
  divring_closed_subproof.
HB.instance Definition _ := SubComUnitRing_isSubIntegralDomain.Build R S U.
HB.end.

Module Export SubExports.

Notation "[ 'SubNzRing_isSubUnitRing' 'of' U 'by' <: ]" :=
  (SubNzRing_isSubUnitRing.Build _ _ U (divringClosedP _))
  (format "[ 'SubNzRing_isSubUnitRing'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubChoice_isSubUnitRing' 'of' U 'by' <: ]" :=
  (SubChoice_isSubUnitRing.Build _ _ U (divringClosedP _))
  (format "[ 'SubChoice_isSubUnitRing'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubChoice_isSubComUnitRing' 'of' U 'by' <: ]" :=
  (SubChoice_isSubComUnitRing.Build _ _ U (divringClosedP _))
  (format "[ 'SubChoice_isSubComUnitRing'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubComUnitRing_isSubIntegralDomain' 'of' U 'by' <: ]" :=
  (SubComUnitRing_isSubIntegralDomain.Build _ _ U)
  (format "[ 'SubComUnitRing_isSubIntegralDomain'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubChoice_isSubIntegralDomain' 'of' U 'by' <: ]" :=
  (SubChoice_isSubIntegralDomain.Build _ _ U (divringClosedP _))
  (format "[ 'SubChoice_isSubIntegralDomain'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubIntegralDomain_isSubField' 'of' U 'by' <: ]" :=
  (SubIntegralDomain_isSubField.Build _ _ U (frefl _))
  (format "[ 'SubIntegralDomain_isSubField'  'of'  U  'by'  <: ]")
  : form_scope.

End SubExports.
HB.export SubExports.

Module Export Theory.

Export GRing.Theory.

Definition lregP {R x} := @lregP R x.
Definition rregP {R x} := @rregP R x.
Definition mulrV := mulrV.
Definition divrr := divrr.
Definition mulVr := mulVr.
Definition invr_out := invr_out.
Definition unitrP {R x} := @unitrP R x.
Definition mulKr := mulKr.
Definition mulVKr := mulVKr.
Definition mulrK := mulrK.
Definition mulrVK := mulrVK.
Definition divrK := divrK.
Definition mulrI := mulrI.
Definition mulIr := mulIr.
Definition divrI := divrI.
Definition divIr := divIr.
Definition telescope_prodr := telescope_prodr.
Definition telescope_prodr_eq := @telescope_prodr_eq.
Arguments telescope_prodr_eq {R n m} f u.
Definition commrV := commrV.
Definition unitrE := unitrE.
Definition invrK := @invrK.
Arguments invrK {R}.
Definition invr_inj := @invr_inj.
Arguments invr_inj {R} [x1 x2].
Definition unitrV := unitrV.
Definition unitr1 := unitr1.
Definition invr1 := invr1.
Definition divr1 := divr1.
Definition div1r := div1r.
Definition natr_div := natr_div.
Definition unitr0 := unitr0.
Definition invr0 := invr0.
Definition unitrN1 := unitrN1.
Definition unitrN := unitrN.
Definition invrN1 := invrN1.
Definition invrN := invrN.
Definition divrNN := divrNN.
Definition divrN := divrN.
Definition invr_sign := invr_sign.
Definition unitrMl := unitrMl.
Definition unitrMr := unitrMr.
Definition invrM := invrM.
Definition unitr_prod := unitr_prod.
Definition unitr_prod_in := unitr_prod_in.
Definition invr_eq0 := invr_eq0.
Definition invr_eq1 := invr_eq1.
Definition invr_neq0 := invr_neq0.
Definition rev_unitrP := rev_unitrP.
Definition rev_prodrV := rev_prodrV.
Definition unitrM_comm := unitrM_comm.
Definition unitrX := unitrX.
Definition unitrX_pos := unitrX_pos.
Definition exprVn := exprVn.
Definition exprB := exprB.
Definition invr_signM := invr_signM.
Definition divr_signM := divr_signM.
Definition rpredVr := @rpredVr.
Definition rpredV := rpredV.
Definition rpred_div := rpred_div.
Definition rpredXN := rpredXN.
Definition rpredZeq := rpredZeq.
Definition pchar_lalg := pchar_lalg.
Definition rpredMr := rpredMr.
Definition rpredMl := rpredMl.
Definition rpred_divr := rpred_divr.
Definition rpred_divl := rpred_divl.
Definition divringClosedP := divringClosedP.
Definition unitrM := unitrM.
Definition unitr_prodP := unitr_prodP.
Definition prodrV := prodrV.
Definition unitrPr {R x} := @unitrPr R x.
Definition expr_div_n := expr_div_n.
Definition mulr1_eq := mulr1_eq.
Definition divr1_eq := divr1_eq.
Definition divKr := divKr.
Definition mulf_eq0 := mulf_eq0.
Definition prodf_eq0 := prodf_eq0.
Definition prodf_seq_eq0 := prodf_seq_eq0.
Definition mulf_neq0 := mulf_neq0.
Definition prodf_neq0 := prodf_neq0.
Definition prodf_seq_neq0 := prodf_seq_neq0.
Definition expf_eq0 := expf_eq0.
Definition sqrf_eq0 := sqrf_eq0.
Definition expf_neq0 := expf_neq0.
Definition natf_neq0_pchar := natf_neq0_pchar.
Definition natf0_pchar := natf0_pchar.
Definition pcharf'_nat := pcharf'_nat.
Definition pcharf0P := pcharf0P.
Definition eqf_sqr := eqf_sqr.
Definition mulfI := mulfI.
Definition mulIf := mulIf.
Definition divfI := divfI.
Definition divIf := divIf.
Definition sqrf_eq1 := sqrf_eq1.
Definition expfS_eq1 := expfS_eq1.
Definition fieldP := @fieldP.
Definition unitfE := unitfE.
Definition mulVf := mulVf.
Definition mulfV := mulfV.
Definition divff := divff.
Definition mulKf := mulKf.
Definition mulVKf := mulVKf.
Definition mulfK := mulfK.
Definition mulfVK := mulfVK.
Definition divfK := divfK.
Definition divKf := divKf.
Definition invfM := invfM.
Definition invf_div := invf_div.
Definition expfB_cond := expfB_cond.
Definition expfB := expfB.
Definition prodfV := prodfV.
Definition prodf_div := prodf_div.
Definition telescope_prodf := telescope_prodf.
Definition telescope_prodf_eq := @telescope_prodf_eq.
Arguments telescope_prodf_eq {F n m} f u.
Definition addf_div := addf_div.
Definition mulf_div := mulf_div.
Definition eqr_div := eqr_div.
Definition eqr_sum_div := eqr_sum_div.
Definition pchar0_natf_div := pchar0_natf_div.
Definition fpredMr := fpredMr.
Definition fpredMl := fpredMl.
Definition fpred_divr := fpred_divr.
Definition fpred_divl := fpred_divl.
Definition rmorph_unit := rmorph_unit.
Definition rmorphV := rmorphV.
Definition rmorph_div := rmorph_div.
Definition fmorph_eq0 := fmorph_eq0.
Definition fmorph_inj := @fmorph_inj.
Arguments fmorph_inj {F R} f [x1 x2].
Definition fmorph_eq := fmorph_eq.
Definition fmorph_eq1 := fmorph_eq1.
Definition fmorph_pchar := fmorph_pchar.
Definition fmorph_unit := fmorph_unit.
Definition fmorphV := fmorphV.
Definition fmorph_div := fmorph_div.
Definition scaler_eq0 := scaler_eq0.
Definition scalerK := scalerK.
Definition scalerKV := scalerKV.
Definition scalerI := scalerI.
Definition scaler_injl := scaler_injl.
Definition scaler_unit := scaler_unit.
Definition invrZ := invrZ.

End Theory.

Module Export AllExports.
HB.reexport.
End AllExports.

End GRing.

Export AllExports.
Export ClosedExports.

Notation "x ^-1" := (inv x) : ring_scope.
Notation "x ^- n" := (inv (x ^+ n)) : ring_scope.
Notation "x / y" := (mul x y^-1) : ring_scope.

Section PairUnitRing.

Variables R1 R2 : unitRingType.

Definition pair_unitr :=
  [qualify a x : R1 * R2 | (x.1 \is a GRing.unit) && (x.2 \is a GRing.unit)].
Definition pair_invr x :=
  if x \is a pair_unitr then (x.1^-1, x.2^-1) else x.

Lemma pair_mulVl : {in pair_unitr, left_inverse 1 pair_invr *%R}.
Admitted.

Lemma pair_mulVr : {in pair_unitr, right_inverse 1 pair_invr *%R}.
Admitted.

Lemma pair_unitP x y : y * x = 1 /\ x * y = 1 -> x \is a pair_unitr.
Admitted.

Lemma pair_invr_out : {in [predC pair_unitr], pair_invr =1 id}.
Admitted.

#[export]
HB.instance Definition _ := NzRing_hasMulInverse.Build (R1 * R2)%type
  pair_mulVl pair_mulVr pair_unitP pair_invr_out.

End PairUnitRing.


#[export]
HB.instance Definition _ (R1 R2 : comUnitRingType) :=
  UnitRing.on (R1 * R2)%type.
#[export]
HB.instance Definition _ (R : nzRingType) (A1 A2 : unitAlgType R) :=
  NzAlgebra.on (A1 * A2)%type.
#[export]
HB.instance Definition _ (R : nzRingType) (A1 A2 : comUnitAlgType R) :=
  NzAlgebra.on (A1 * A2)%type.




Fact mulVb (b : bool) : b != 0 -> b * b = 1.
Admitted.

Fact invb_out (x y : bool) : y * x = 1 -> x != 0.
Admitted.

HB.instance Definition _ := ComNzRing_hasMulInverse.Build bool
  mulVb invb_out (fun x => fun => erefl x).

Lemma bool_fieldP : Field.axiom bool.
Admitted.

HB.instance Definition _ := ComUnitRing_isField.Build bool bool_fieldP.

End divalg.

End mathcomp_DOT_algebra_DOT_alg_DOT_divalg_WRAPPED.
Module Export mathcomp_DOT_algebra_DOT_alg_DOT_divalg.
Module Export mathcomp.
Module Export algebra.
Module Export alg.
Module Export divalg.
Include mathcomp_DOT_algebra_DOT_alg_DOT_divalg_WRAPPED.divalg.
End divalg.

End alg.

End algebra.

End mathcomp.

End mathcomp_DOT_algebra_DOT_alg_DOT_divalg.

Module mathcomp_DOT_algebra_DOT_num_theory_DOT_orderedzmod_WRAPPED.
Module Export orderedzmod.

Import HB.structures.
Import mathcomp.boot.ssrfun.
Import mathcomp.boot.ssrbool.
Import mathcomp.boot.eqtype.
Import mathcomp.boot.choice.
Import mathcomp.boot.nmodule.
Import mathcomp.order.order.
Import mathcomp.algebra.alg.algebra.

Local Open Scope ring_scope.

Fact ring_display : Order.disp_t.
Admitted.

Module Export Num.

#[short(type="porderNmodType")]
HB.structure Definition POrderNmodule :=
  { R of Order.isPOrder ring_display R & GRing.Nmodule R}.

#[short(type="porderZmodType")]
HB.structure Definition POrderZmodule :=
  { R of POrderNmodule R & GRing.Zmodule R }.

HB.mixin Record Add_isHomo R & POrderNmodule R := {
  ler_wD2l : forall x : R, {homo +%R x : y z / (y <= z)%O}
}.

#[short(type="porderedNmodType")]
HB.structure Definition POrderedNmodule :=
  { R of POrderNmodule R & Add_isHomo R}.

#[short(type="porderedZmodType")]
HB.structure Definition POrderedZmodule :=
  { R of GRing.Zmodule R & POrderedNmodule R}.

HB.factory Record ZmodulePositiveCone R & GRing.Zmodule R := {
  nonneg : {pred R};
  nonneg0 : nonneg 0;
  nonnegD : forall x y, nonneg x -> nonneg y -> nonneg (x + y);
  nonneg_definite : forall x, nonneg x -> nonneg (- x) -> x = 0;
}.

HB.builders Context R & ZmodulePositiveCone R.

Definition le x y := nonneg (y - x).

Fact le_refl : reflexive le.
Admitted.

Fact le_anti : antisymmetric le.
Admitted.

Fact le_trans : transitive le.
Admitted.

HB.instance Definition _ := Order.Le_isPOrder.Build ring_display R
  le_refl le_anti le_trans.

HB.end.

HB.mixin Record POrderedZmodule_hasTransCmp R & GRing.Nmodule R
    & Order.isPOrder ring_display R := {
  comparabler_trans : transitive (Order.comparable : rel R)
}.

#[short(type="numZmodType")]
HB.structure Definition NumZmodule :=
  {R of POrderedZmodule_hasTransCmp R & POrderedZmodule R}.

Notation ler := (@Order.le ring_display _) (only parsing).
Notation ltr := (@Order.lt ring_display _) (only parsing).
Notation lerif := (@Order.leif ring_display _) (only parsing).

Notation le := ler (only parsing).
Notation lt := ltr (only parsing).

Module Import Syntax.

Notation "x <= y" := (le x y) : ring_scope.

Notation "x < y"  := (lt x y) : ring_scope.

Notation "x <= y ?= 'iff' C" := (lerif x y C) : ring_scope.

End Syntax.
End Num.
Export Num.Syntax.

End orderedzmod.

End mathcomp_DOT_algebra_DOT_num_theory_DOT_orderedzmod_WRAPPED.
Module Export mathcomp.
Module Export algebra.
Module Export num_theory.
Module Export orderedzmod.
Include mathcomp_DOT_algebra_DOT_num_theory_DOT_orderedzmod_WRAPPED.orderedzmod.
End orderedzmod.

End num_theory.

End algebra.

End mathcomp.
Import HB.structures.
Import mathcomp.boot.ssrfun.
Import mathcomp.boot.ssrbool.
Import mathcomp.boot.eqtype.
Import mathcomp.boot.choice.
Import mathcomp.boot.fintype.
Import mathcomp.boot.nmodule.
Import mathcomp.order.order.
Import mathcomp.algebra.alg.algebra.
Import mathcomp.algebra.alg.divalg.
Import mathcomp.algebra.num_theory.orderedzmod.

Set Implicit Arguments.
Unset Strict Implicit.

Local Open Scope ring_scope.
Import orderedzmod.Num.

HB.mixin Record Zmodule_isSemiNormed (R : POrderZmodule.type) M
         & GRing.Zmodule M := {
  norm : M -> R;
  ler_normD : forall x y, norm (x + y) <= norm x + norm y;
  normrMn : forall x n, norm (x *+ n) = norm x *+ n;
  normrN : forall x, norm (- x) = norm x;
}.

#[short(type="semiNormedZmodType")]
HB.structure Definition SemiNormedZmodule (R : porderZmodType) :=
  { M of Zmodule_isSemiNormed R M & GRing.Zmodule M }.

HB.mixin Record SemiNormedZmodule_isPositiveDefinite
    (R : POrderZmodule.type) M & @SemiNormedZmodule R M := {
  normr0_eq0 : forall x : M, norm x = 0 -> x = 0;
}.

#[short(type="normedZmodType")]
HB.structure Definition NormedZmodule (R : porderZmodType) :=
  { M of SemiNormedZmodule_isPositiveDefinite R M & SemiNormedZmodule R M }.

HB.factory Record Zmodule_isNormed (R : porderZmodType) M
         & GRing.Zmodule M := {
  norm : M -> R;
  ler_normD : forall x y, norm (x + y) <= norm x + norm y;
  normr0_eq0 : forall x, norm x = 0 -> x = 0;
  normrMn : forall x n, norm (x *+ n) = norm x *+ n;
  normrN : forall x, norm (- x) = norm x;
}.
HB.builders Context (R : POrderZmodule.type) M & Zmodule_isNormed R M.
  HB.instance Definition _ :=
    Zmodule_isSemiNormed.Build R M ler_normD normrMn normrN.
HB.end.

HB.mixin Record NumZmod_isNumRing R & GRing.NzRing R & POrderZmodule R
  & NormedZmodule (POrderZmodule.clone R _) R := {
 addr_gt0 : forall x y : R, 0 < x -> 0 < y -> 0 < (x + y);
 ger_leVge : forall x y : R, 0 <= x -> 0 <= y -> (x <= y) || (y <= x);
 normrM : {morph (norm : R -> R) : x y / x * y};
 ler_def : forall x y : R, (x <= y) = (norm (y - x) == (y - x));
}.

#[short(type="numDomainType")]
HB.structure Definition NumDomain := { R of
     GRing.IntegralDomain R &
     NumZmodule R &
     NormedZmodule (POrderZmodule.clone R _) R &
     NumZmod_isNumRing R
  }.

HB.factory Record isNumRing R & GRing.NzRing R & POrderZmodule R
  & GRing.IntegralDomain R
  & NormedZmodule (POrderZmodule.clone R _) R := {
 addr_gt0 : forall x y : R, 0 < x -> 0 < y -> 0 < (x + y);
 ger_leVge : forall x y : R, 0 <= x -> 0 <= y -> (x <= y) || (y <= x);
 normrM : {morph (norm : R -> R) : x y / x * y};
 ler_def : forall x y : R, (x <= y) = (norm (y - x) == (y - x));
}.
HB.builders Context R & isNumRing R.

Fact ler_wD2l (x : R) : {homo +%R x : y z / y <= z}.
Admitted.

HB.instance Definition _ := Add_isHomo.Build R ler_wD2l.
HB.end.

Section NumDomainOperationTheory.

Variable R : numDomainType.

Lemma leif_AGM_scaled (I : finType) (A : {pred I}) (E : I -> R) (n := #|A|) :
    {in A, forall i, 0 <= E i *+ n} ->
  \prod_(i in A) (E i *+ n) <= (\sum_(i in A) E i) ^+ n
                            ?= iff [forall i in A, forall j in A, E i == E j].
