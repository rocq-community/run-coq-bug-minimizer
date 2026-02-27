
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "+duplicate-clear" "-w" "+non-primitive-record" "-w" "+undeclared-scope" "-w" "+deprecated-hint-without-locality" "-w" "+deprecated-hint-rewrite-without-locality" "-w" "-projection-no-head-constant" "-w" "-redundant-canonical-projection" "-w" "-notation-overridden" "-w" "-ambiguous-paths" "-w" "-elpi.add-const-for-axiom-or-sectionvar" "-w" "-mathcomp-subset-itv" "-w" "+level-tolerance" "-w" "-notation-for-abbreviation" "-w" "-deprecated-native-compiler-option" "-native-compiler" "ondemand" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/mathcomp" "mathcomp" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/HB" "HB" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi" "elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_elpi" "elpi_elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_examples" "elpi_examples" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/mathcomp" "-top" "mathcomp.algebra.num_theory.numdomain") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 2712 lines to 251 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 13.314 sec
   Expected coqc peak memory usage on this file: 1015924.0 kb *)











Require Corelib.ssr.ssreflect.
Require Corelib.BinNums.PosDef.
Require Corelib.ssr.ssrfun.
Require Corelib.ssr.ssrbool.
Require Corelib.Init.Ltac.
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
Require mathcomp.fingroup.fingroup.
Require mathcomp.order.order.
Require mathcomp.algebra.alg.algebra.
Require mathcomp.algebra.alg.divalg.
Require mathcomp.algebra.interval.
Require mathcomp.algebra.alg.decfield.
Require mathcomp.algebra.alg.ssralg.
Require mathcomp.algebra.num_theory.orderedzmod.
Require mathcomp.algebra.countalg.
Require mathcomp.algebra.poly.

Module Export AdmitTactic.
Module Import LocalFalse.
Inductive False : Prop := .
End LocalFalse.
Axiom proof_admitted : False.
Import Coq.Init.Ltac.
Tactic Notation "admit" := abstract case proof_admitted.
End AdmitTactic.
Import HB.structures.
Import mathcomp.boot.ssreflect.
Import mathcomp.boot.ssrfun.
Import mathcomp.boot.ssrbool.
Import mathcomp.boot.eqtype.
Import mathcomp.boot.ssrnat.
Import mathcomp.boot.seq.
Import mathcomp.boot.choice.
Import mathcomp.boot.fintype.
Import mathcomp.boot.bigop.
Import mathcomp.boot.finset.
Import mathcomp.fingroup.fingroup.
Import mathcomp.boot.nmodule.
Import mathcomp.order.order.
Import mathcomp.algebra.interval.
Import mathcomp.algebra.alg.algebra.
Import mathcomp.algebra.alg.divalg.
Import mathcomp.algebra.poly.
Import mathcomp.algebra.num_theory.orderedzmod.



































Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Import Order.TTheory.
Import GRing.Theory.
Import orderedzmod.Num.

Module Export Num.

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
Arguments norm {R M} x : rename.

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
  HB.instance Definition _ :=
    SemiNormedZmodule_isPositiveDefinite.Build R M normr0_eq0.
HB.end.

Module Export NormedZmoduleExports.
Bind Scope ring_scope with NormedZmodule.sort.

End NormedZmoduleExports.
HB.export NormedZmoduleExports.

HB.structure Definition POrderSemiNormedZmodule (R : porderZmodType) :=
  { M of POrderZmodule M & Zmodule_isSemiNormed R M}.

HB.structure Definition POrderNormedZmodule (R : porderZmodType) :=
  { M of POrderZmodule M & Zmodule_isNormed R M}.

HB.structure Definition POrderedSemiNormedZmodule (R : porderZmodType) :=
  { M of POrderedZmodule M & Zmodule_isSemiNormed R M}.

HB.structure Definition POrderedNormedZmodule (R : porderZmodType) :=
  { M of POrderedZmodule M & Zmodule_isNormed R M}.

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
Arguments addr_gt0 {_} [x y] : rename.
Arguments ger_leVge {_} [x y] : rename.

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

Section NumDomainDef.

End NumDomainDef.

Section ExtensionAxioms.

End ExtensionAxioms.

Section NumDomain.

End NumDomain.

Section NumIntegralDomainTheory.

Section SemiNormedZmoduleTheory.

End SemiNormedZmoduleTheory.

Section NormedZmoduleTheory.

End NormedZmoduleTheory.

End NumIntegralDomainTheory.

Section NumDomainOperationTheory.

Variable R : numDomainType.

Section RealDomainArgExtremum.

End RealDomainArgExtremum.

Lemma leif_AGM_scaled (I : finType) (A : {pred I}) (E : I -> R) (n := #|A|) :
    {in A, forall i, 0 <= E i *+ n} ->
  \prod_(i in A) (E i *+ n) <= (\sum_(i in A) E i) ^+ n
                            ?= iff [forall i in A, forall j in A, E i == E j].
