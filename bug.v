
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "+duplicate-clear" "-w" "+non-primitive-record" "-w" "+undeclared-scope" "-w" "+deprecated-hint-without-locality" "-w" "+deprecated-hint-rewrite-without-locality" "-w" "-projection-no-head-constant" "-w" "-redundant-canonical-projection" "-w" "-notation-overridden" "-w" "-ambiguous-paths" "-w" "-elpi.add-const-for-axiom-or-sectionvar" "-w" "-mathcomp-subset-itv" "-w" "+level-tolerance" "-w" "-notation-for-abbreviation" "-w" "-deprecated-native-compiler-option" "-native-compiler" "ondemand" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/mathcomp" "mathcomp" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/HB" "HB" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi" "elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_elpi" "elpi_elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_examples" "elpi_examples" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/mathcomp" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 2712 lines to 251 lines, then from 218 lines to 96 lines, then from 110 lines to 1271 lines, then from 1278 lines to 204 lines, then from 218 lines to 1752 lines, then from 1759 lines to 1577 lines, then from 1465 lines to 1176 lines, then from 1175 lines to 534 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 24.974 sec
   Expected coqc peak memory usage on this file: 1299628.0 kb *)
Require mathcomp.order.order.
Require mathcomp.algebra.alg.algebra.
Module mathcomp_DOT_algebra_DOT_alg_DOT_divalg_WRAPPED.
Module Export divalg.

Import HB.structures.
Import mathcomp.boot.ssreflect.
Import mathcomp.boot.ssrfun.
Import mathcomp.boot.ssrbool.
Import mathcomp.boot.eqtype.
Import mathcomp.boot.choice.
Import mathcomp.algebra.alg.algebra.

Set Implicit Arguments.
Unset Strict Implicit.

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
End UnitRingExports.

Definition unit_pred {R : unitRingType} :=
  Eval cbv [ unit_subdef NzRing_hasMulInverse.unit_subdef ] in
    (fun u : R => unit_subdef u).
Definition unit {R : unitRingType} := [qualify a u : R | unit_pred u].

Local Notation "x ^-1" := (inv x).
Local Notation "x / y" := (x * y^-1).

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

Lemma divring_closedBM : divring_closed -> subring_closed S.
Admitted.

Lemma divring_closed_div : divring_closed -> sdivr_closed.
Admitted.

End UnitRingClosedPredicates.

#[short(type="comUnitRingType")]
HB.structure Definition ComUnitRing := {R of ComNzRing R & UnitRing R}.

Module Export ComUnitRingExports.
End ComUnitRingExports.

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
End UnitAlgebraExports.

Module Export ComUnitAlgebraExports.
End ComUnitAlgebraExports.

Section UnitAlgebraTheory.

Variable (R : comUnitRingType) (A : unitAlgType R).

Variables S : {pred A}.

Definition divalg_closed := [/\ 1 \in S, linear_closed S & divr_2closed S].

Lemma divalg_closedBdiv : divalg_closed -> divring_closed S.
Admitted.

End UnitAlgebraTheory.

Module Export ClosedExports.

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
End IntegralDomainExports.

Definition field_axiom (R : unitRingType) := forall x : R, x != 0 -> x \in unit.

HB.mixin Record UnitRing_isField R & UnitRing R := {
  fieldP : field_axiom R;
}.

#[mathcomp(axiom="field_axiom"), short(type="fieldType")]
HB.structure Definition Field := { R of IntegralDomain R & UnitRing_isField R }.

Module Export FieldExports.
End FieldExports.

Lemma IdomainMixin (R : unitRingType): Field.axiom R -> IntegralDomain.axiom R.
Admitted.

HB.factory Record ComUnitRing_isField R & ComUnitRing R := {
  fieldP : field_axiom R;
}.
HB.builders Context R & ComUnitRing_isField R.
HB.instance Definition _ :=
  ComUnitRing_isIntegral.Build R (IdomainMixin fieldP).
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

HB.end.

HB.mixin Record isInvClosed (R : unitRingType) (S : {pred R}) := {
  rpredVr : invr_closed S
}.

#[short(type="divClosed")]
HB.structure Definition DivClosed (R : unitRingType) :=
  {S of MulClosed R S & isInvClosed R S}.

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
HB.end.

HB.factory Record isDivringClosed (R : unitRingType) (S : R -> bool) := {
  divring_closed_subproof : divring_closed S
}.

HB.builders Context R S & isDivringClosed R S.
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
HB.end.

Section ModuleTheory.

End ModuleTheory.

Section Predicates.

End Predicates.

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
HB.end.

HB.factory Record SubChoice_isSubComUnitRing (R : comUnitRingType) S U
    & SubChoice R S U := {
  divring_closed_subproof : divring_closed S
}.

HB.builders Context R S U & SubChoice_isSubComUnitRing R S U.
HB.instance Definition _ := SubChoice_isSubComNzRing.Build R S U
  (divring_closedBM divring_closed_subproof).
HB.end.

HB.factory Record SubChoice_isSubIntegralDomain (R : idomainType) S U
    & SubChoice R S U := {
  divring_closed_subproof : divring_closed S
}.

HB.builders Context R S U & SubChoice_isSubIntegralDomain R S U.
HB.instance Definition _ := SubChoice_isSubComUnitRing.Build R S U
  divring_closed_subproof.
HB.end.

Module Export SubExports.

End SubExports.

Module Export Theory.

End Theory.

Module Export AllExports.
HB.reexport.
End AllExports.

End GRing.

Export AllExports.

Section PairUnitRing.

End PairUnitRing.

End divalg.

End mathcomp_DOT_algebra_DOT_alg_DOT_divalg_WRAPPED.
Include mathcomp_DOT_algebra_DOT_alg_DOT_divalg_WRAPPED.divalg.

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
Include mathcomp_DOT_algebra_DOT_num_theory_DOT_orderedzmod_WRAPPED.orderedzmod.
Import HB.structures.
Import mathcomp.boot.ssrfun.
Import mathcomp.boot.ssrbool.
Import mathcomp.boot.eqtype.
Import mathcomp.boot.choice.
Import mathcomp.boot.fintype.
Import mathcomp.boot.nmodule.
Import mathcomp.order.order.
Import mathcomp.algebra.alg.algebra.

Set Implicit Arguments.
Unset Strict Implicit.

Local Open Scope ring_scope.

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
