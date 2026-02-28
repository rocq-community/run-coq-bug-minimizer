
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "+duplicate-clear" "-w" "+non-primitive-record" "-w" "+undeclared-scope" "-w" "+deprecated-hint-without-locality" "-w" "+deprecated-hint-rewrite-without-locality" "-w" "-projection-no-head-constant" "-w" "-redundant-canonical-projection" "-w" "-notation-overridden" "-w" "-ambiguous-paths" "-w" "-elpi.add-const-for-axiom-or-sectionvar" "-w" "-mathcomp-subset-itv" "-w" "+level-tolerance" "-w" "-notation-for-abbreviation" "-w" "-deprecated-native-compiler-option" "-native-compiler" "ondemand" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/mathcomp" "mathcomp" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/HB" "HB" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi" "elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_elpi" "elpi_elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_examples" "elpi_examples" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/mathcomp" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 2712 lines to 251 lines, then from 218 lines to 96 lines, then from 110 lines to 1271 lines, then from 1278 lines to 204 lines, then from 218 lines to 1752 lines, then from 1759 lines to 1577 lines, then from 1465 lines to 1176 lines, then from 1175 lines to 534 lines, then from 554 lines to 492 lines, then from 506 lines to 5041 lines, then from 5048 lines to 5520 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 63.479 sec
   Expected coqc peak memory usage on this file: 1829740.0 kb *)









Require Corelib.ssr.ssrfun.
Require Corelib.BinNums.PosDef.
Require Corelib.Init.Ltac.
Require Corelib.ssr.ssrbool.
Require Corelib.ssr.ssreflect.
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

Module Export AdmitTactic.
Module Import LocalFalse.
Inductive False : Prop := .
End LocalFalse.
Axiom proof_admitted : False.
Import Coq.Init.Ltac.
Tactic Notation "admit" := abstract case proof_admitted.
End AdmitTactic.

Module Export mathcomp_DOT_algebra_DOT_alg_DOT_algebra.
Module Export mathcomp.
Module Export algebra.
Module Export alg.
Module algebra.


Import HB.structures.
Import mathcomp.boot.ssreflect mathcomp.boot.ssrfun mathcomp.boot.ssrbool mathcomp.boot.eqtype mathcomp.boot.ssrnat mathcomp.boot.div mathcomp.boot.seq.
Import mathcomp.boot.choice mathcomp.boot.fintype mathcomp.boot.finfun mathcomp.boot.bigop mathcomp.boot.prime mathcomp.boot.binomial.
Import mathcomp.boot.nmodule.




































































































































































































































































































































































































































































































































Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Reserved Notation "+%R".
Reserved Notation "-%R".
Reserved Notation "*%R" (format " *%R").
Reserved Notation "*:%R" (format " *:%R").
Reserved Notation "n %:R" (left associativity, format "n %:R").
Reserved Notation "k %:A" (left associativity, format "k %:A").
Reserved Notation "[ 'pchar' F ]" (format "[ 'pchar'  F ]").
Reserved Notation "[ 'char' F ]" (format "[ 'char'  F ]").

Reserved Notation "x %:T" (left associativity, format "x %:T").
Reserved Notation "''X_' i" (at level 8, i at level 2, format "''X_' i").


Reserved Notation "''exists' ''X_' i , f"
  (at level 199, i at level 2, right associativity,
   format "'[hv' ''exists'  ''X_' i , '/ '  f ']'").
Reserved Notation "''forall' ''X_' i , f"
  (at level 199, i at level 2, right associativity,
   format "'[hv' ''forall'  ''X_' i , '/ '  f ']'").

Reserved Notation "x ^f" (left associativity, format "x ^f").

Reserved Notation "\0".
Reserved Notation "f \+ g" (at level 50, left associativity).
Reserved Notation "f \- g" (at level 50, left associativity).
Reserved Notation "\- f" (at level 35, f at level 35).
Reserved Notation "a \*o f" (at level 40).
Reserved Notation "a \o* f" (at level 40).
Reserved Notation "a \*: f" (at level 40).
Reserved Notation "f \* g" (at level 40, left associativity).

Reserved Notation "'{' 'additive' U '->' V '}'"
  (U at level 98, V at level 99, format "{ 'additive'  U  ->  V }").
Reserved Notation "'{' 'rmorphism' U '->' V '}'"
  (U at level 98, V at level 99, format "{ 'rmorphism'  U  ->  V }").
Reserved Notation "'{' 'lrmorphism' U '->' V '|' s '}'"
  (U at level 98, V at level 99, format "{ 'lrmorphism'  U  ->  V  |  s }").
Reserved Notation "'{' 'lrmorphism' U '->' V '}'"
  (U at level 98, V at level 99, format "{ 'lrmorphism'  U  ->  V }").
Reserved Notation "'{' 'linear' U '->' V '|' s '}'"
  (U at level 98, V at level 99, format "{ 'linear'  U  ->  V  |  s }").
Reserved Notation "'{' 'linear' U '->' V '}'"
  (U at level 98, V at level 99,
   format "{ 'linear'  U  ->  V }").
Reserved Notation "'{' 'scalar' U '}'" (format "{ 'scalar'  U }").

Reserved Notation "R ^c" (format "R ^c").
Reserved Notation "R ^o" (format "R ^o").

Module Export Dummy.
Module GRing := Algebra.
End Dummy.

Module Import GRing.


Export Algebra.

Import Monoid.Theory.

HB.mixin Record Nmodule_isPzSemiRing R & Nmodule R := {
  one : R;
  mul : R -> R -> R;
  mulrA : associative mul;
  mul1r : left_id one mul;
  mulr1 : right_id one mul;
  mulrDl : left_distributive mul +%R;
  mulrDr : right_distributive mul +%R;
  mul0r : left_zero zero mul;
  mulr0 : right_zero zero mul;
}.

#[short(type="pzSemiRingType")]
HB.structure Definition PzSemiRing :=
  { R of Nmodule_isPzSemiRing R & Nmodule R }.

HB.factory Record isPzSemiRing R & Choice R := {
  zero : R;
  add : R -> R -> R;
  one : R;
  mul : R -> R -> R;
  addrA : associative add;
  addrC : commutative add;
  add0r : left_id zero add;
  mulrA : associative mul;
  mul1r : left_id one mul;
  mulr1 : right_id one mul;
  mulrDl : left_distributive mul add;
  mulrDr : right_distributive mul add;
  mul0r : left_zero zero mul;
  mulr0 : right_zero zero mul;
}.

HB.builders Context R & isPzSemiRing R.
  HB.instance Definition _ := @isNmodule.Build R
    zero add addrA addrC add0r.
  HB.instance Definition _ := @Nmodule_isPzSemiRing.Build R
    one mul mulrA mul1r mulr1 mulrDl mulrDr mul0r mulr0.
HB.end.

Module PzSemiRingExports.
Bind Scope ring_scope with PzSemiRing.sort.
End PzSemiRingExports.
HB.export PzSemiRingExports.

HB.mixin Record PzSemiRing_isNonZero R & PzSemiRing R := {
  oner_neq0 : @one R != 0
}.

#[short(type="nzSemiRingType")]
HB.structure Definition NzSemiRing :=
  { R of PzSemiRing_isNonZero R & PzSemiRing R }.

HB.factory Record Nmodule_isNzSemiRing R & Nmodule R := {
  one : R;
  mul : R -> R -> R;
  mulrA : associative mul;
  mul1r : left_id one mul;
  mulr1 : right_id one mul;
  mulrDl : left_distributive mul +%R;
  mulrDr : right_distributive mul +%R;
  mul0r : left_zero zero mul;
  mulr0 : right_zero zero mul;
  oner_neq0 : one != 0
}.

HB.builders Context R & Nmodule_isNzSemiRing R.
  HB.instance Definition _ :=
    Nmodule_isPzSemiRing.Build R mulrA mul1r mulr1 mulrDl mulrDr mul0r mulr0.
  HB.instance Definition _ := PzSemiRing_isNonZero.Build R oner_neq0.
HB.end.

HB.factory Record isNzSemiRing R & Choice R := {
  zero : R;
  add : R -> R -> R;
  one : R;
  mul : R -> R -> R;
  addrA : associative add;
  addrC : commutative add;
  add0r : left_id zero add;
  mulrA : associative mul;
  mul1r : left_id one mul;
  mulr1 : right_id one mul;
  mulrDl : left_distributive mul add;
  mulrDr : right_distributive mul add;
  mul0r : left_zero zero mul;
  mulr0 : right_zero zero mul;
  oner_neq0 : one != zero
}.

HB.builders Context R & isNzSemiRing R.
  HB.instance Definition _ := @isNmodule.Build R
    zero add addrA addrC add0r.
  HB.instance Definition _ := @Nmodule_isNzSemiRing.Build R
    one mul mulrA mul1r mulr1 mulrDl mulrDr mul0r mulr0 oner_neq0.
HB.end.

Module NzSemiRingExports.
Bind Scope ring_scope with NzSemiRing.sort.
End NzSemiRingExports.
HB.export NzSemiRingExports.

Definition exp R x n := iterop n (@mul R) x (@one R).
Arguments exp : simpl never.
Definition comm R x y := @mul R x y = mul y x.
Definition lreg R x := injective (@mul R x).
Definition rreg R x := injective ((@mul R)^~ x).

Local Notation "1" := (@one _) : ring_scope.
Local Notation "n %:R" := (1 *+ n) : ring_scope.
Local Notation "*%R" := (@mul _) : function_scope.
Local Notation "x * y" := (mul x y) : ring_scope.
Local Notation "x ^+ n" := (exp x n) : ring_scope.

Local Notation "\prod_ ( i <- r | P ) F" := (\big[*%R/1]_(i <- r | P) F).
Local Notation "\prod_ ( i | P ) F" := (\big[*%R/1]_(i | P) F).
Local Notation "\prod_ ( i 'in' A ) F" := (\big[*%R/1]_(i in A) F).
Local Notation "\prod_ ( m <= i < n ) F" := (\big[*%R/1%R]_(m <= i < n) F%R).




Definition pchar (R : nzSemiRingType) : nat_pred :=
  [pred p | prime p & p%:R == 0 :> R].

Local Notation has_pchar0 L := (pchar L =i pred0).


Definition converse R : Type := R.
Local Notation "R ^c" := (converse R) : type_scope.

Section PzSemiRingTheory.

Variable R : pzSemiRingType.
Implicit Types x y : R.

#[export]
HB.instance Definition _ := Monoid.isLaw.Build R 1 *%R mulrA mul1r mulr1.
#[export]
HB.instance Definition _ := Monoid.isMulLaw.Build R 0 *%R mul0r mulr0.
#[export]
HB.instance Definition _ := Monoid.isAddLaw.Build R *%R +%R mulrDl mulrDr.

Lemma mulr_suml I r P (F : I -> R) x :
  (\sum_(i <- r | P i) F i) * x = \sum_(i <- r | P i) F i * x.
Proof.
exact: big_distrl.
Qed.

Lemma mulr_sumr I r P (F : I -> R) x :
  x * (\sum_(i <- r | P i) F i) = \sum_(i <- r | P i) x * F i.
Proof.
exact: big_distrr.
Qed.

Lemma mulrnAl x y n : (x *+ n) * y = (x * y) *+ n.
Proof.
by elim: n => [|n IHn]; rewrite ?mul0r // !mulrS mulrDl IHn.
Qed.

Lemma mulrnAr x y n : x * (y *+ n) = (x * y) *+ n.
Proof.
by elim: n => [|n IHn]; rewrite ?mulr0 // !mulrS mulrDr IHn.
Qed.

Lemma mulr_natl x n : n%:R * x = x *+ n.
Proof.
by rewrite mulrnAl mul1r.
Qed.

Lemma mulr_natr x n : x * n%:R = x *+ n.
Proof.
by rewrite mulrnAr mulr1.
Qed.

Lemma natrD m n : (m + n)%:R = m%:R + n%:R :> R.
Proof.
exact: mulrnDr.
Qed.
Lemma natr1 n : n%:R + 1 = n.+1%:R :> R.
Proof.
by rewrite mulrSr.
Qed.
Lemma nat1r n : 1 + n%:R = n.+1%:R :> R.
Proof.
by rewrite mulrS.
Qed.

Definition natr_sum := big_morph (natmul 1) natrD (mulr0n 1).

Lemma natrM m n : (m * n)%:R = m%:R * n%:R :> R.
Proof.
by rewrite mulrnA mulr_natr.
Qed.

Lemma expr0 x : x ^+ 0 = 1.
Proof.
by [].
Qed.
Lemma expr1 x : x ^+ 1 = x.
Proof.
by [].
Qed.
Lemma expr2 x : x ^+ 2 = x * x.
Proof.
by [].
Qed.

Lemma exprS x n : x ^+ n.+1 = x * x ^+ n.
Proof.
by case: n => //; rewrite mulr1.
Qed.

Lemma expr0n n : 0 ^+ n = (n == 0%N)%:R :> R.
Proof.
by case: n => // n; rewrite exprS mul0r.
Qed.

Lemma expr1n n : 1 ^+ n = 1 :> R.
Proof.
by elim: n => // n IHn; rewrite exprS mul1r.
Qed.

Lemma exprD x m n : x ^+ (m + n) = x ^+ m * x ^+ n.
Proof.
by elim: m => [|m IHm]; rewrite ?mul1r // !exprS -mulrA -IHm.
Qed.

Lemma exprSr x n : x ^+ n.+1 = x ^+ n * x.
Proof.
by rewrite -addn1 exprD expr1.
Qed.

Lemma expr_sum x (I : Type) (s : seq I) (P : pred I) F :
  x ^+ (\sum_(i <- s | P i) F i) = \prod_(i <- s | P i) x ^+ F i :> R.
Proof.
exact: (big_morph _ (exprD _)).
Qed.

Lemma commr_sym x y : comm x y -> comm y x.
Proof.
by [].
Qed.
Lemma commr_refl x : comm x x.
Proof.
by [].
Qed.

Lemma commr0 x : comm x 0.
Proof.
by rewrite /comm mulr0 mul0r.
Qed.

Lemma commr1 x : comm x 1.
Proof.
by rewrite /comm mulr1 mul1r.
Qed.

Lemma commrD x y z : comm x y -> comm x z -> comm x (y + z).
Proof.
by rewrite /comm mulrDl mulrDr => -> ->.
Qed.

Lemma commr_sum (I : Type) (s : seq I) (P : pred I) (F : I -> R) x :
  (forall i, P i -> comm x (F i)) -> comm x (\sum_(i <- s | P i) F i).
Proof.
move=> comm_x_F; rewrite /comm mulr_suml mulr_sumr.
by apply: eq_bigr => i /comm_x_F.
Qed.

Lemma commrMn x y n : comm x y -> comm x (y *+ n).
Proof.
rewrite /comm => com_xy.
by elim: n => [|n IHn]; rewrite ?commr0 // mulrS commrD.
Qed.

Lemma commrM x y z : comm x y -> comm x z -> comm x (y * z).
Proof.
by move=> com_xy; rewrite /comm mulrA com_xy -!mulrA => ->.
Qed.

Lemma commr_prod (I : Type) (s : seq I) (P : pred I) (F : I -> R) x :
  (forall i, P i -> comm x (F i)) -> comm x (\prod_(i <- s | P i) F i).
Proof.
exact: (big_ind _ (commr1 x) (@commrM x)).
Qed.

Lemma commr_nat x n : comm x n%:R.
Proof.
exact/commrMn/commr1.
Qed.

Lemma commrX x y n : comm x y -> comm x (y ^+ n).
Proof.
rewrite /comm => com_xy.
by elim: n => [|n IHn]; rewrite ?commr1 // exprS commrM.
Qed.

Lemma exprMn_comm x y n : comm x y -> (x * y) ^+ n = x ^+ n * y ^+ n.
Proof.
move=> com_xy; elim: n => /= [|n IHn]; first by rewrite mulr1.
by rewrite !exprS IHn !mulrA; congr (_ * _); rewrite -!mulrA -commrX.
Qed.

Lemma exprMn_n x m n : (x *+ m) ^+ n = x ^+ n *+ (m ^ n) :> R.
Proof.
elim: n => [|n IHn]; first by rewrite mulr1n.
by rewrite exprS IHn mulrnAl mulrnAr -mulrnA exprS expnSr.
Qed.

Lemma exprM x m n : x ^+ (m * n) = x ^+ m ^+ n.
Proof.
elim: m => [|m IHm]; first by rewrite expr1n.
by rewrite mulSn exprD IHm exprS exprMn_comm //; apply: commrX.
Qed.

Lemma exprAC x m n : (x ^+ m) ^+ n = (x ^+ n) ^+ m.
Proof.
by rewrite -!exprM mulnC.
Qed.

Lemma expr_mod n x i : x ^+ n = 1 -> x ^+ (i %% n) = x ^+ i.
Proof.
move=> xn1; rewrite {2}(divn_eq i n) exprD mulnC exprM xn1.
by rewrite expr1n mul1r.
Qed.

Lemma expr_dvd n x i : x ^+ n = 1 -> n %| i -> x ^+ i = 1.
Proof.
by move=> xn1 dvd_n_i; rewrite -(expr_mod i xn1) (eqnP dvd_n_i).
Qed.

Lemma natrX n k : (n ^ k)%:R = n%:R ^+ k :> R.
Proof.
by rewrite exprMn_n expr1n.
Qed.

Lemma mulrI_eq0 x y : lreg x -> (x * y == 0) = (y == 0).
Proof.
by move=> reg_x; rewrite -{1}(mulr0 x) (inj_eq reg_x).
Qed.

Lemma lreg1 : lreg (1 : R).
Proof.
by move=> x y; rewrite !mul1r.
Qed.

Lemma lregM x y : lreg x -> lreg y -> lreg (x * y).
Proof.
by move=> reg_x reg_y z t; rewrite -!mulrA => /reg_x/reg_y.
Qed.

Lemma lregMl (a b: R) : lreg (a * b) -> lreg b.
Proof.
by move=> rab c c' eq_bc; apply/rab; rewrite -!mulrA eq_bc.
Qed.

Lemma rregMr (a b: R) : rreg (a * b) -> rreg a.
Proof.
by move=> rab c c' eq_ca; apply/rab; rewrite !mulrA eq_ca.
Qed.

Lemma lregX x n : lreg x -> lreg (x ^+ n).
Proof.
by move=> reg_x; elim: n => [|n]; [apply: lreg1 | rewrite exprS; apply: lregM].
Qed.

Lemma iter_mulr n x y : iter n ( *%R x) y = x ^+ n * y.
Proof.
by elim: n => [|n ih]; rewrite ?expr0 ?mul1r //= ih exprS -mulrA.
Qed.

Lemma iter_mulr_1 n x : iter n ( *%R x) 1 = x ^+ n.
Proof.
by rewrite iter_mulr mulr1.
Qed.

Lemma prodr_const (I : finType) (A : pred I) x : \prod_(i in A) x = x ^+ #|A|.
Proof.
by rewrite big_const -iteropE.
Qed.

Lemma prodr_const_nat n m x : \prod_(n <= i < m) x = x ^+ (m - n).
Proof.
by rewrite big_const_nat -iteropE.
Qed.

Lemma prodrXr x I r P (F : I -> nat) :
  \prod_(i <- r | P i) x ^+ F i = x ^+ (\sum_(i <- r | P i) F i).
Proof.
by rewrite (big_morph _ (exprD _) (erefl _)).
Qed.

Lemma prodrM_comm {I : eqType} r (P : pred I) (F G : I -> R) :
    (forall i j, P i -> P j -> comm (F i) (G j)) ->
  \prod_(i <- r | P i) (F i * G i) =
    \prod_(i <- r | P i) F i * \prod_(i <- r | P i) G i.
Proof.
move=> FG; elim: r => [|i r IHr]; rewrite !(big_nil, big_cons) ?mulr1//.
case: ifPn => // Pi; rewrite IHr !mulrA; congr (_ * _); rewrite -!mulrA.
by rewrite commr_prod // => j Pj; apply/commr_sym/FG.
Qed.

Lemma prodrMl_comm {I : finType} (A : pred I) (x : R) F :
    (forall i, A i -> comm x (F i)) ->
  \prod_(i in A) (x * F i) = x ^+ #|A| * \prod_(i in A) F i.
Proof.
by move=> xF; rewrite prodrM_comm ?prodr_const// => i j _ /xF.
Qed.

Lemma prodrMr_comm {I : finType} (A : pred I) (x : R) F :
    (forall i, A i -> comm x (F i)) ->
  \prod_(i in A) (F i * x) = \prod_(i in A) F i * x ^+ #|A|.
Proof.
by move=> xF; rewrite prodrM_comm ?prodr_const// => i j /xF.
Qed.

Lemma prodrMn (I : Type) (s : seq I) (P : pred I) (F : I -> R) (g : I -> nat) :
  \prod_(i <- s | P i) (F i *+ g i) =
  \prod_(i <- s | P i) (F i) *+ \prod_(i <- s | P i) g i.
Proof.
by elim/big_rec3: _ => // i y1 y2 y3 _ ->; rewrite mulrnAr mulrnAl -mulrnA.
Qed.

Lemma prodrMn_const n (I : finType) (A : pred I) (F : I -> R) :
  \prod_(i in A) (F i *+ n) = \prod_(i in A) F i *+ n ^ #|A|.
Proof.
by rewrite prodrMn prod_nat_const.
Qed.

Lemma natr_prod I r P (F : I -> nat) :
  (\prod_(i <- r | P i) F i)%:R = \prod_(i <- r | P i) (F i)%:R :> R.
Proof.
exact: (big_morph _ natrM).
Qed.

Lemma exprDn_comm x y n (cxy : comm x y) :
  (x + y) ^+ n = \sum_(i < n.+1) (x ^+ (n - i) * y ^+ i) *+ 'C(n, i).
Proof.
elim: n => [|n IHn]; rewrite big_ord_recl mulr1 ?big_ord0 ?addr0 //=.
rewrite exprS {}IHn /= mulrDl !big_distrr /= big_ord_recl mulr1 subn0.
rewrite !big_ord_recr /= !binn !subnn !mul1r !subn0 bin0 !exprS -addrA.
congr (_ + _); rewrite addrA -big_split /=; congr (_ + _).
apply: eq_bigr => i _; rewrite !mulrnAr !mulrA -exprS -subSn ?(valP i) //.
by rewrite subSS (commrX _ (commr_sym cxy)) -mulrA -exprS -mulrnDr.
Qed.

Lemma exprD1n x n : (x + 1) ^+ n = \sum_(i < n.+1) x ^+ i *+ 'C(n, i).
Proof.
rewrite addrC (exprDn_comm n (commr_sym (commr1 x))).
by apply: eq_bigr => i _; rewrite expr1n mul1r.
Qed.

Lemma sqrrD1 x : (x + 1) ^+ 2 = x ^+ 2 + x *+ 2 + 1.
Proof.
rewrite exprD1n !big_ord_recr big_ord0 /= add0r.
by rewrite addrC addrA addrAC.
Qed.

Section ClosedPredicates.

Variable S : {pred R}.

Definition mulr_2closed := {in S &, forall u v, u * v \in S}.
Definition mulr_closed := 1 \in S /\ mulr_2closed.
Definition semiring_closed := nmod_closed S /\ mulr_closed.

Lemma semiring_closedD : semiring_closed -> nmod_closed S.
Proof.
by case.
Qed.

Lemma semiring_closedM : semiring_closed -> mulr_closed.
Proof.
by case.
Qed.

End ClosedPredicates.

End PzSemiRingTheory.

Section NzSemiRingTheory.

Variable R : nzSemiRingType.
Implicit Types x y : R.

Lemma oner_eq0 : (1 == 0 :> R) = false.
Proof.
exact: negbTE oner_neq0.
Qed.

Lemma lastr_eq0 (s : seq R) x : x != 0 -> (last x s == 0) = (last 1 s == 0).
Proof.
by case: s => [|y s] /negPf // ->; rewrite oner_eq0.
Qed.

Lemma lreg_neq0 x : lreg x -> x != 0.
Proof.
by move=> reg_x; rewrite -[x]mulr1 mulrI_eq0 ?oner_eq0.
Qed.

Definition pFrobenius_aut p & p \in pchar R := fun x => x ^+ p.


Section FrobeniusAutomorphism.

Variable p : nat.
Hypothesis pcharFp : p \in pchar R.

Lemma pcharf0 : p%:R = 0 :> R.
Proof.
by apply/eqP; case/andP: pcharFp.
Qed.

Lemma pcharf_prime : prime p.
Proof.
by case/andP: pcharFp.
Qed.
Hint Resolve pcharf_prime : core.

Lemma mulrn_pchar x : x *+ p = 0.
Proof.
by rewrite -mulr_natl pcharf0 mul0r.
Qed.

Lemma natr_mod_pchar n : (n %% p)%:R = n%:R :> R.
Proof.
by rewrite {2}(divn_eq n p) natrD mulrnA mulrn_pchar add0r.
Qed.

Lemma dvdn_pcharf n : (p %| n)%N = (n%:R == 0 :> R).
Proof.
apply/idP/eqP=> [/dvdnP[n' ->]|n0]; first by rewrite natrM pcharf0 mulr0.
apply/idPn; rewrite -prime_coprime // => /eqnP pn1.
have [a _ /dvdnP[b]] := Bezoutl n (prime_gt0 pcharf_prime).
move/(congr1 (fun m => m%:R : R))/eqP.
by rewrite natrD !natrM pcharf0 n0 !mulr0 pn1 addr0 oner_eq0.
Qed.

Lemma pcharf_eq : pchar R =i (p : nat_pred).
Proof.
move=> q; apply/andP/eqP=> [[q_pr q0] | ->]; last by rewrite pcharf0.
by apply/eqP; rewrite eq_sym -dvdn_prime2 // dvdn_pcharf.
Qed.

Lemma bin_lt_pcharf_0 k : 0 < k < p -> 'C(p, k)%:R = 0 :> R.
Proof.
by move=> lt0kp; apply/eqP; rewrite -dvdn_pcharf prime_dvd_bin.
Qed.

Local Notation "x ^f" := (pFrobenius_aut pcharFp x).

Lemma pFrobenius_autE x : x^f = x ^+ p.
Proof.
by [].
Qed.
Local Notation f'E := pFrobenius_autE.

Lemma pFrobenius_aut0 : 0^f = 0.
Proof.
by rewrite f'E -(prednK (prime_gt0 pcharf_prime)) exprS mul0r.
Qed.

Lemma pFrobenius_aut1 : 1^f = 1.
Proof.
by rewrite f'E expr1n.
Qed.

Lemma pFrobenius_autD_comm x y (cxy : comm x y) : (x + y)^f = x^f + y^f.
Proof.
have defp := prednK (prime_gt0 pcharf_prime).
rewrite !f'E exprDn_comm // big_ord_recr subnn -defp big_ord_recl /= defp.
rewrite subn0 mulr1 mul1r bin0 binn big1 ?addr0 // => i _.
by rewrite -mulr_natl bin_lt_pcharf_0 ?mul0r //= -{2}defp ltnS (valP i).
Qed.

Lemma pFrobenius_autMn x n : (x *+ n)^f = x^f *+ n.
Proof.
elim: n => [|n IHn]; first exact: pFrobenius_aut0.
by rewrite !mulrS pFrobenius_autD_comm ?IHn //; apply: commrMn.
Qed.

Lemma pFrobenius_aut_nat n : (n%:R)^f = n%:R.
Proof.
by rewrite pFrobenius_autMn pFrobenius_aut1.
Qed.

Lemma pFrobenius_autM_comm x y : comm x y -> (x * y)^f = x^f * y^f.
Proof.
exact: exprMn_comm.
Qed.

Lemma pFrobenius_autX x n : (x ^+ n)^f = x^f ^+ n.
Proof.
by rewrite !f'E -!exprM mulnC.
Qed.

End FrobeniusAutomorphism.

Section Char2.

Hypothesis pcharR2 : 2 \in pchar R.

Lemma addrr_pchar2 x : x + x = 0.
Proof.
by rewrite -mulr2n mulrn_pchar.
Qed.

End Char2.

End NzSemiRingTheory.

#[short(type="pzRingType")]
HB.structure Definition PzRing := { R of PzSemiRing R & Zmodule R }.

HB.factory Record Zmodule_isPzRing R & Zmodule R := {
  one : R;
  mul : R -> R -> R;
  mulrA : associative mul;
  mul1r : left_id one mul;
  mulr1 : right_id one mul;
  mulrDl : left_distributive mul +%R;
  mulrDr : right_distributive mul +%R;
}.

HB.builders Context R & Zmodule_isPzRing R.
  Local Notation "1" := one.
  Local Notation "x * y" := (mul x y).
  Lemma mul0r : @left_zero R R 0 mul.
  Proof.
by move=> x; apply: (addIr (1 * x)); rewrite -mulrDl !add0r mul1r.
Qed.
  Lemma mulr0 : @right_zero R R 0 mul.
  Proof.
by move=> x; apply: (addIr (x * 1)); rewrite -mulrDr !add0r mulr1.
Qed.
  HB.instance Definition _ := Nmodule_isPzSemiRing.Build R
    mulrA mul1r mulr1 mulrDl mulrDr mul0r mulr0.
HB.end.

HB.factory Record isPzRing R & Choice R := {
  zero : R;
  opp : R -> R;
  add : R -> R -> R;
  one : R;
  mul : R -> R -> R;
  addrA : associative add;
  addrC : commutative add;
  add0r : left_id zero add;
  addNr : left_inverse zero opp add;
  mulrA : associative mul;
  mul1r : left_id one mul;
  mulr1 : right_id one mul;
  mulrDl : left_distributive mul add;
  mulrDr : right_distributive mul add;
}.

HB.builders Context R & isPzRing R.
  HB.instance Definition _ := @isZmodule.Build R
    zero opp add addrA addrC add0r addNr.
  HB.instance Definition _ := @Zmodule_isPzRing.Build R
    one mul mulrA mul1r mulr1 mulrDl mulrDr.
HB.end.

Module PzRingExports.
Bind Scope ring_scope with PzRing.sort.
End PzRingExports.
HB.export PzRingExports.

#[short(type="nzRingType")]
HB.structure Definition NzRing := { R of NzSemiRing R & Zmodule R }.

HB.factory Record Zmodule_isNzRing R & Zmodule R := {
  one : R;
  mul : R -> R -> R;
  mulrA : associative mul;
  mul1r : left_id one mul;
  mulr1 : right_id one mul;
  mulrDl : left_distributive mul +%R;
  mulrDr : right_distributive mul +%R;
  oner_neq0 : one != 0
}.

HB.builders Context R & Zmodule_isNzRing R.
  HB.instance Definition _ := Zmodule_isPzRing.Build R
    mulrA mul1r mulr1 mulrDl mulrDr.
  HB.instance Definition _ := PzSemiRing_isNonZero.Build R oner_neq0.
HB.end.

HB.factory Record isNzRing R & Choice R := {
  zero : R;
  opp : R -> R;
  add : R -> R -> R;
  one : R;
  mul : R -> R -> R;
  addrA : associative add;
  addrC : commutative add;
  add0r : left_id zero add;
  addNr : left_inverse zero opp add;
  mulrA : associative mul;
  mul1r : left_id one mul;
  mulr1 : right_id one mul;
  mulrDl : left_distributive mul add;
  mulrDr : right_distributive mul add;
  oner_neq0 : one != zero
}.

HB.builders Context R & isNzRing R.
  HB.instance Definition _ := @isZmodule.Build R
    zero opp add addrA addrC add0r addNr.
  HB.instance Definition _ := @Zmodule_isNzRing.Build R
    one mul mulrA mul1r mulr1 mulrDl mulrDr oner_neq0.
HB.end.

Module NzRingExports.
Bind Scope ring_scope with NzRing.sort.
End NzRingExports.
HB.export NzRingExports.

Notation sign R b := (exp (- @one R) (nat_of_bool b)) (only parsing).

Local Notation "- 1" := (- (1)) : ring_scope.

Section PzRingTheory.

Variable R : pzRingType.
Implicit Types x y : R.

Lemma mulrN x y : x * (- y) = - (x * y).
Proof.
by apply: (addrI (x * y)); rewrite -mulrDr !subrr mulr0.
Qed.
Lemma mulNr x y : (- x) * y = - (x * y).
Proof.
by apply: (addrI (x * y)); rewrite -mulrDl !subrr mul0r.
Qed.
Lemma mulrNN x y : (- x) * (- y) = x * y.
Proof.
by rewrite mulrN mulNr opprK.
Qed.
Lemma mulN1r x : -1 * x = - x.
Proof.
by rewrite mulNr mul1r.
Qed.
Lemma mulrN1 x : x * -1 = - x.
Proof.
by rewrite mulrN mulr1.
Qed.

Lemma mulrBl x y z : (y - z) * x = y * x - z * x.
Proof.
by rewrite mulrDl mulNr.
Qed.

Lemma mulrBr x y z : x * (y - z) = x * y - x * z.
Proof.
by rewrite mulrDr mulrN.
Qed.

Lemma natrB m n : n <= m -> (m - n)%:R = m%:R - n%:R :> R.
Proof.
exact: mulrnBr.
Qed.

Lemma commrN x y : comm x y -> comm x (- y).
Proof.
by move=> com_xy; rewrite /comm mulrN com_xy mulNr.
Qed.

Lemma commrN1 x : comm x (-1).
Proof.
exact/commrN/commr1.
Qed.

Lemma commrB x y z : comm x y -> comm x z -> comm x (y - z).
Proof.
by move=> com_xy com_xz; apply: commrD => //; apply: commrN.
Qed.

Lemma commr_sign x n : comm x ((-1) ^+ n).
Proof.
exact: (commrX n (commrN1 x)).
Qed.

Lemma signr_odd n : (-1) ^+ (odd n) = (-1) ^+ n :> R.
Proof.
elim: n => //= n IHn; rewrite exprS -{}IHn.
by case/odd: n; rewrite !mulN1r ?opprK.
Qed.

Lemma mulr_sign (b : bool) x : (-1) ^+ b * x = (if b then - x else x).
Proof.
by case: b; rewrite ?mulNr mul1r.
Qed.

Lemma signr_addb b1 b2 : (-1) ^+ (b1 (+) b2) = (-1) ^+ b1 * (-1) ^+ b2 :> R.
Proof.
by rewrite mulr_sign; case: b1 b2 => [] []; rewrite ?opprK.
Qed.

Lemma signrE (b : bool) : (-1) ^+ b = 1 - b.*2%:R :> R.
Proof.
by case: b; rewrite ?subr0 // opprD addNKr.
Qed.

Lemma signrN b : (-1) ^+ (~~ b) = - (-1) ^+ b :> R.
Proof.
by case: b; rewrite ?opprK.
Qed.

Lemma mulr_signM (b1 b2 : bool) x1 x2 :
  ((-1) ^+ b1 * x1) * ((-1) ^+ b2 * x2) = (-1) ^+ (b1 (+) b2) * (x1 * x2).
Proof.
by rewrite signr_addb -!mulrA; congr (_ * _); rewrite !mulrA commr_sign.
Qed.

Lemma exprNn x n : (- x) ^+ n = (-1) ^+ n * x ^+ n :> R.
Proof.
by rewrite -mulN1r exprMn_comm // /comm mulN1r mulrN mulr1.
Qed.

Lemma sqrrN x : (- x) ^+ 2 = x ^+ 2.
Proof.
exact: mulrNN.
Qed.

Lemma sqrr_sign n : ((-1) ^+ n) ^+ 2 = 1 :> R.
Proof.
by rewrite exprAC sqrrN !expr1n.
Qed.

Lemma signrMK n : @involutive R ( *%R ((-1) ^+ n)).
Proof.
by move=> x; rewrite mulrA -expr2 sqrr_sign mul1r.
Qed.

Lemma mulrI0_lreg x : (forall y, x * y = 0 -> y = 0) -> lreg x.
Proof.
move=> reg_x y z eq_xy_xz; apply/eqP; rewrite -subr_eq0 [y - z]reg_x //.
by rewrite mulrBr eq_xy_xz subrr.
Qed.

Lemma lregN x : lreg x -> lreg (- x).
Proof.
by move=> reg_x y z; rewrite !mulNr => /oppr_inj/reg_x.
Qed.

Lemma lreg_sign n : lreg ((-1) ^+ n : R).
Proof.
exact/lregX/lregN/lreg1.
Qed.

Lemma prodrN (I : finType) (A : pred I) (F : I -> R) :
  \prod_(i in A) - F i = (- 1) ^+ #|A| * \prod_(i in A) F i.
Proof.
rewrite -sum1_card; elim/big_rec3: _ => [|i x n _ _ ->]; first by rewrite mulr1.
by rewrite exprS !mulrA mulN1r !mulNr commrX //; apply: commrN1.
Qed.

Lemma exprBn_comm x y n (cxy : comm x y) :
  (x - y) ^+ n =
    \sum_(i < n.+1) ((-1) ^+ i * x ^+ (n - i) * y ^+ i) *+ 'C(n, i).
Proof.
rewrite exprDn_comm; last exact: commrN.
by apply: eq_bigr => i _; congr (_ *+ _); rewrite -commr_sign -mulrA -exprNn.
Qed.

Lemma subrXX_comm x y n (cxy : comm x y) :
  x ^+ n - y ^+ n = (x - y) * (\sum_(i < n) x ^+ (n.-1 - i) * y ^+ i).
Proof.
case: n => [|n]; first by rewrite big_ord0 mulr0 subrr.
rewrite mulrBl !big_distrr big_ord_recl big_ord_recr /= subnn mulr1 mul1r.
rewrite subn0 -!exprS opprD -!addrA; congr (_ + _); rewrite addrA -sumrB.
rewrite big1 ?add0r // => i _; rewrite !mulrA -exprS -subSn ?(valP i) //.
by rewrite subSS (commrX _ (commr_sym cxy)) -mulrA -exprS subrr.
Qed.

Lemma subrX1 x n : x ^+ n - 1 = (x - 1) * (\sum_(i < n) x ^+ i).
Proof.
rewrite -!(opprB 1) mulNr -{1}(expr1n _ n).
rewrite (subrXX_comm _ (commr_sym (commr1 x))); congr (- (_ * _)).
by apply: eq_bigr => i _; rewrite expr1n mul1r.
Qed.

Lemma sqrrB1 x : (x - 1) ^+ 2 = x ^+ 2 - x *+ 2 + 1.
Proof.
by rewrite -sqrrN opprB addrC sqrrD1 sqrrN mulNrn.
Qed.

Lemma subr_sqr_1 x : x ^+ 2 - 1 = (x - 1) * (x + 1).
Proof.
by rewrite subrX1 !big_ord_recr big_ord0 /= addrAC add0r.
Qed.

Section ClosedPredicates.

Variable S : {pred R}.

Definition smulr_closed := -1 \in S /\ mulr_2closed S.
Definition subring_closed := [/\ 1 \in S, subr_closed S & mulr_2closed S].

Lemma smulr_closedM : smulr_closed -> mulr_closed S.
Proof.
by case=> SN1 SM; split=> //; rewrite -[1]mulr1 -mulrNN SM.
Qed.

Lemma smulr_closedN : smulr_closed -> oppr_closed S.
Proof.
by case=> SN1 SM x Sx; rewrite -mulN1r SM.
Qed.

Lemma subring_closedB : subring_closed -> zmod_closed S.
Proof.
by case=> S1 SB _; split; rewrite // -(subrr 1) SB.
Qed.

Lemma subring_closedM : subring_closed -> smulr_closed.
Proof.
by case=> S1 SB SM; split; rewrite ?(zmod_closedN (subring_closedB _)).
Qed.

Lemma subring_closed_semi : subring_closed -> semiring_closed S.
Proof.
by move=> ringS; split; [apply/zmod_closed0D/subring_closedB | case: ringS].
Qed.

End ClosedPredicates.

End PzRingTheory.

Section NzRingTheory.

Variable R : nzRingType.
Implicit Types x y : R.

Lemma signr_eq0 n : ((-1) ^+ n == 0 :> R) = false.
Proof.
by rewrite -signr_odd; case: odd; rewrite ?oppr_eq0 oner_eq0.
Qed.


Section FrobeniusAutomorphism.

Variable p : nat.
Hypothesis pcharFp : p \in pchar R.

Hint Resolve pcharf_prime : core.

Local Notation "x ^f" := (pFrobenius_aut pcharFp x).

Lemma pFrobenius_autN x : (- x)^f = - x^f.
Proof.
apply/eqP; rewrite -subr_eq0 opprK addrC.
by rewrite -(pFrobenius_autD_comm _ (commrN _)) // subrr pFrobenius_aut0.
Qed.

Lemma pFrobenius_autB_comm x y : comm x y -> (x - y)^f = x^f - y^f.
Proof.
by move/commrN/pFrobenius_autD_comm->; rewrite pFrobenius_autN.
Qed.

End FrobeniusAutomorphism.

Lemma exprNn_pchar x n : (pchar R).-nat n -> (- x) ^+ n = - (x ^+ n).
Proof.
pose p := pdiv n; have [|n_gt1 pcharRn] := leqP n 1; first by case: (n) => [|[]].
have pcharRp: p \in pchar R by rewrite (pnatPpi pcharRn) // pi_pdiv.
have /p_natP[e ->]: p.-nat n by rewrite -(eq_pnat _ (pcharf_eq pcharRp)).
elim: e => // e IHe; rewrite expnSr !exprM {}IHe.
by rewrite -pFrobenius_autE pFrobenius_autN.
Qed.

Section Char2.

Hypothesis pcharR2 : 2 \in pchar R.

Lemma oppr_pchar2 x : - x = x.
Proof.
by apply/esym/eqP; rewrite -addr_eq0 addrr_pchar2.
Qed.

Lemma subr_pchar2 x y : x - y = x + y.
Proof.
by rewrite oppr_pchar2.
Qed.

Lemma addrK_pchar2 x : involutive (+%R^~ x).
Proof.
by move=> y; rewrite /= -subr_pchar2 addrK.
Qed.

Lemma addKr_pchar2 x : involutive (+%R x).
Proof.
by move=> y; rewrite -{1}[x]oppr_pchar2 addKr.
Qed.

End Char2.

End NzRingTheory.

Section ConverseRing.
#[export]
HB.instance Definition _ (T : eqType) := Equality.on T^c.
#[export]
HB.instance Definition _ (T : choiceType) := Choice.on T^c.
#[export]
HB.instance Definition _ (U : nmodType) := Nmodule.on U^c.
#[export]
HB.instance Definition _ (U : zmodType) := Zmodule.on U^c.
#[export]
HB.instance Definition _ (R : pzSemiRingType) :=
  let mul' (x y : R) := y * x in
  let mulrA' x y z := esym (mulrA z y x) in
  let mulrDl' x y z := mulrDr z x y in
  let mulrDr' x y z := mulrDl y z x in
  Nmodule_isPzSemiRing.Build R^c
    mulrA' mulr1 mul1r mulrDl' mulrDr' mulr0 mul0r.
#[export]
HB.instance Definition _ (R : pzRingType) := PzSemiRing.on R^c.
#[export]
HB.instance Definition _ (R : nzSemiRingType) :=
  PzSemiRing_isNonZero.Build R^c oner_neq0.
#[export]
HB.instance Definition _ (R : nzRingType) := NzSemiRing.on R^c.
End ConverseRing.

Lemma rev_prodr (R : pzSemiRingType)
  (I : Type) (r : seq I) (P : pred I) (E : I -> R) :
  \prod_(i <- r | P i) (E i : R^c) = \prod_(i <- rev r | P i) E i.
Proof.
by rewrite rev_big_rev.
Qed.

Section SemiRightRegular.

Variable R : pzSemiRingType.
Implicit Types x y : R.

Lemma mulIr_eq0 x y : rreg x -> (y * x == 0) = (y == 0).
Proof.
exact: (@mulrI_eq0 R^c).
Qed.

Lemma rreg1 : rreg (1 : R).
Proof.
exact: (@lreg1 R^c).
Qed.

Lemma rregM x y : rreg x -> rreg y -> rreg (x * y).
Proof.
by move=> reg_x reg_y; apply: (@lregM R^c).
Qed.

Lemma revrX x n : (x : R^c) ^+ n = (x : R) ^+ n.
Proof.
by elim: n => // n IHn; rewrite exprS exprSr IHn.
Qed.

Lemma rregX x n : rreg x -> rreg (x ^+ n).
Proof.
by move/(@lregX R^c x n); rewrite revrX.
Qed.

End SemiRightRegular.

Lemma rreg_neq0 (R : nzSemiRingType) (x : R) : rreg x -> x != 0.
Proof.
exact: (@lreg_neq0 R^c).
Qed.

Section RightRegular.

Variable R : pzRingType.
Implicit Types x y : R.

Lemma mulIr0_rreg x : (forall y, y * x = 0 -> y = 0) -> rreg x.
Proof.
exact: (@mulrI0_lreg R^c).
Qed.

Lemma rregN x : rreg x -> rreg (- x).
Proof.
exact: (@lregN R^c).
Qed.

End RightRegular.

HB.mixin Record Nmodule_isLSemiModule (R : pzSemiRingType) V & Nmodule V := {
  scale : R -> V -> V;
  scalerA : forall a b v, scale a (scale b v) = scale (a * b) v;
  scale0r : forall v, scale 0 v = 0;
  scale1r : left_id 1 scale;
  scalerDr : right_distributive scale +%R;
  scalerDl : forall v, {morph scale^~ v: a b / a + b}
}.
#[short(type="lSemiModType")]
HB.structure Definition LSemiModule (R : pzSemiRingType) :=
  {M of Nmodule M & Nmodule_isLSemiModule R M}.

Module LSemiModExports.
Bind Scope ring_scope with LSemiModule.sort.
End LSemiModExports.
HB.export LSemiModExports.

Local Notation "*:%R" := (@scale _ _) : function_scope.
Local Notation "a *: v" := (scale a v) : ring_scope.

#[short(type="lmodType")]
HB.structure Definition Lmodule (R : pzRingType) :=
  {M of Zmodule M & Nmodule_isLSemiModule R M}.


Arguments scalerA [R s] (a b)%_ring_scope v.

Module LmodExports.
Bind Scope ring_scope with Lmodule.sort.
End LmodExports.
HB.export LmodExports.

HB.factory Record Zmodule_isLmodule (R : pzRingType) V & Zmodule V := {
  scale : R -> V -> V;
  scalerA : forall a b v, scale a (scale b v) = scale (a * b) v;
  scale1r : left_id 1 scale;
  scalerDr : right_distributive scale +%R;
  scalerDl : forall v, {morph scale^~ v: a b / a + b}
}.

HB.builders Context R V & Zmodule_isLmodule R V.

Lemma scale0r v : scale 0 v = 0.
Proof.
by apply: (addIr (scale 1 v)); rewrite -scalerDl !add0r.
Qed.

HB.instance Definition _ :=
  Nmodule_isLSemiModule.Build R V scalerA scale0r scale1r scalerDr scalerDl.

HB.end.

HB.factory Record LSemiModule_isLmodule (R : pzRingType) V
  & LSemiModule R V := {}.

HB.builders Context R V & LSemiModule_isLmodule R V.

Definition opp : V -> V := scale (- 1).

Lemma addNr : left_inverse 0 opp +%R.
Proof.
move=> v; suff : scale (-1 + 1) v = 0 by rewrite scalerDl scale1r.
by rewrite addNr scale0r.
Qed.

HB.instance Definition _ := Nmodule_isZmodule.Build V addNr.

HB.end.

Section LSemiModuleTheory.

Variables (R : pzSemiRingType) (V : lSemiModType R).
Implicit Types (a b c : R) (u v : V).

Lemma scaler0 a : a *: 0 = 0 :> V.
Proof.
by rewrite -[0 in LHS](scale0r 0) scalerA mulr0 scale0r.
Qed.

Lemma scaler_nat n v : n%:R *: v = v *+ n.
Proof.
elim: n => /= [|n]; first by rewrite scale0r.
by rewrite !mulrS scalerDl ?scale1r => ->.
Qed.

Lemma scalerMnl a v n : a *: v *+ n = (a *+ n) *: v.
Proof.
elim: n => [|n IHn]; first by rewrite !mulr0n scale0r.
by rewrite !mulrSr IHn scalerDl.
Qed.

Lemma scalerMnr a v n : a *: v *+ n = a *: (v *+ n).
Proof.
elim: n => [|n IHn]; first by rewrite !mulr0n scaler0.
by rewrite !mulrSr IHn scalerDr.
Qed.

Lemma scaler_suml v I r (P : pred I) F :
  (\sum_(i <- r | P i) F i) *: v = \sum_(i <- r | P i) F i *: v.
Proof.
exact: (big_morph _ (scalerDl v) (scale0r v)).
Qed.

Lemma scaler_sumr a I r (P : pred I) (F : I -> V) :
  a *: (\sum_(i <- r | P i) F i) = \sum_(i <- r | P i) a *: F i.
Proof.
exact: big_endo (scalerDr a) (scaler0 a) I r P F.
Qed.

Section ClosedPredicates.

Variable S : {pred V}.

Definition scaler_closed := forall a, {in S, forall v, a *: v \in S}.
Definition subsemimod_closed := nmod_closed S /\ scaler_closed.

Lemma subsemimod_closedD : subsemimod_closed -> nmod_closed S.
Proof.
by case.
Qed.

Lemma subsemimod_closedZ : subsemimod_closed -> scaler_closed.
Proof.
by case.
Qed.

End ClosedPredicates.

End LSemiModuleTheory.

Section LmoduleTheory.

Variables (R : pzRingType) (V : lmodType R).
Implicit Types (a b c : R) (u v : V).

Lemma scaleNr a v : - a *: v = - (a *: v).
Proof.
by apply: (addIr (a *: v)); rewrite -scalerDl !addNr scale0r.
Qed.

Lemma scaleN1r v : - 1 *: v = - v.
Proof.
by rewrite scaleNr scale1r.
Qed.

Lemma scalerN a v : a *: - v = - (a *: v).
Proof.
by apply: (addIr (a *: v)); rewrite -scalerDr !addNr scaler0.
Qed.

Lemma scalerBl a b v : (a - b) *: v = a *: v - b *: v.
Proof.
by rewrite scalerDl scaleNr.
Qed.

Lemma scalerBr a u v : a *: (u - v) = a *: u - a *: v.
Proof.
by rewrite scalerDr scalerN.
Qed.

Lemma scaler_sign (b : bool) v : (-1) ^+ b *: v = (if b then - v else v).
Proof.
by case: b; rewrite ?scaleNr scale1r.
Qed.

Lemma signrZK n : @involutive V ( *:%R ((-1) ^+ n)).
Proof.
by move=> u; rewrite scalerA -expr2 sqrr_sign scale1r.
Qed.

Section ClosedPredicates.

Variable S : {pred V}.

Definition linear_closed := forall a, {in S &, forall u v, a *: u + v \in S}.
Definition submod_closed := 0 \in S /\ linear_closed.

Lemma linear_closedB : linear_closed -> subr_closed S.
Proof.
by move=> Slin u v Su Sv; rewrite addrC -scaleN1r Slin.
Qed.

Lemma submod_closedB : submod_closed -> zmod_closed S.
Proof.
by case=> S0 /linear_closedB.
Qed.

Lemma submod_closed_semi : submod_closed -> subsemimod_closed S.
Proof.
move=> /[dup] /submod_closedB /zmod_closed0D SD [S0 Slin]; split => // a v Sv.
by rewrite -[a *: v]addr0 Slin.
Qed.

Lemma subsemimod_closed_submod : subsemimod_closed S -> submod_closed.
Proof.
by case=> [[S0 SD] SZ]; split => // a u v Su Sv; apply/SD/Sv/SZ.
Qed.

Lemma subsemimod_closedB : subsemimod_closed S -> zmod_closed S.
Proof.
by move/subsemimod_closed_submod/submod_closedB.
Qed.

End ClosedPredicates.

End LmoduleTheory.

HB.mixin Record LSemiModule_isLSemiAlgebra R V
  & PzSemiRing V & LSemiModule R V := {
  scalerAl : forall (a : R) (u v : V), a *: (u * v) = (a *: u) * v
}.

#[short(type="pzLSemiAlgType")]
HB.structure Definition PzLSemiAlgebra R :=
  {A of LSemiModule R A & PzSemiRing A & LSemiModule_isLSemiAlgebra R A}.

Module PzLSemiAlgExports.
Bind Scope ring_scope with PzLSemiAlgebra.sort.
End PzLSemiAlgExports.
HB.export PzLSemiAlgExports.

#[short(type="nzLSemiAlgType")]
HB.structure Definition NzLSemiAlgebra (R : nzSemiRingType) :=
  {A of LSemiModule R A & NzSemiRing A & LSemiModule_isLSemiAlgebra R A}.

Module NzLSemiAlgExports.
Bind Scope ring_scope with NzLSemiAlgebra.sort.
End NzLSemiAlgExports.
HB.export NzLSemiAlgExports.


Local Notation "k %:A" := (k *: 1) : ring_scope.

#[short(type="pzLalgType")]
HB.structure Definition PzLalgebra R :=
  {A of Lmodule R A & PzRing A & LSemiModule_isLSemiAlgebra R A}.

Module PzLalgExports.
Bind Scope ring_scope with PzLalgebra.sort.
End PzLalgExports.
HB.export PzLalgExports.

#[short(type="nzLalgType")]
HB.structure Definition NzLalgebra (R : nzRingType) :=
  {A of Lmodule R A & NzRing A & LSemiModule_isLSemiAlgebra R A}.

Module NzLalgExports.
Bind Scope ring_scope with NzLalgebra.sort.
End NzLalgExports.
HB.export NzLalgExports.


Definition regular R : Type := R.
Local Notation "R ^o" := (regular R) : type_scope.

Section RegularAlgebra.
#[export]
HB.instance Definition _ (V : nmodType) := Nmodule.on V^o.
#[export]
HB.instance Definition _ (V : zmodType) := Zmodule.on V^o.
#[export]
HB.instance Definition _ (R : pzSemiRingType) := PzSemiRing.on R^o.
#[export]
HB.instance Definition _ (R : nzSemiRingType) := NzSemiRing.on R^o.
#[export]
HB.instance Definition _ (R : pzSemiRingType) :=
  @Nmodule_isLSemiModule.Build R R^o
    mul mulrA mul0r mul1r mulrDr (fun v a b => mulrDl a b v).
#[export]
HB.instance Definition _ (R : pzSemiRingType) :=
  LSemiModule_isLSemiAlgebra.Build R R^o mulrA.
#[export]
HB.instance Definition _ (R : nzSemiRingType) := NzSemiRing.on R^o.
#[export]
HB.instance Definition _ (R : pzRingType) := PzRing.on R^o.
#[export]
HB.instance Definition _ (R : nzRingType) := NzRing.on R^o.
End RegularAlgebra.

Section LSemiAlgebraTheory.

Variables (R : pzSemiRingType) (A : pzLSemiAlgType R).

Lemma mulr_algl (a : R) (x : A) : (a *: 1) * x = a *: x.
Proof.
by rewrite -scalerAl mul1r.
Qed.

Section ClosedPredicates.

Variable S : {pred A}.

Definition subsemialg_closed :=
  [/\ 1 \in S, nmod_closed S, scaler_closed S & mulr_2closed S].

Lemma subsemialg_closedZ : subsemialg_closed -> subsemimod_closed S.
Proof.
by case.
Qed.

Lemma subsemialg_closedM : subsemialg_closed -> semiring_closed S.
Proof.
by case.
Qed.

End ClosedPredicates.

End LSemiAlgebraTheory.

Section LalgebraTheory.

Variables (R : pzRingType) (A : pzLalgType R).

Section ClosedPredicates.

Variable S : {pred A}.

Definition subalg_closed := [/\ 1 \in S, linear_closed S & mulr_2closed S].

Lemma subalg_closedZ : subalg_closed -> submod_closed S.
Proof.
by case=> S1 Slin _; split; rewrite // -(subrr 1) linear_closedB.
Qed.

Lemma subalg_closedBM : subalg_closed -> subring_closed S.
Proof.
by case=> S1 Slin SM; split=> //; apply: linear_closedB.
Qed.

Lemma subalg_closed_semi : subalg_closed -> subsemialg_closed S.
Proof.
move=> /[dup] /subalg_closedZ /submod_closedB /zmod_closed0D.
by move=> [S0 SD] [S1 Slin SM]; split => // a u Su; rewrite -[a *: u]addr0 Slin.
Qed.

Lemma subsemialg_closed_subalg : subsemialg_closed S -> subalg_closed.
Proof.
by case=> S1 [S0 SD] SZ SM; split => // a u v Su Sv; apply/SD/Sv/SZ.
Qed.

Lemma subsemialg_closedBM : subsemialg_closed S -> subring_closed S.
Proof.
by move/subsemialg_closed_subalg/subalg_closedBM.
Qed.

End ClosedPredicates.

End LalgebraTheory.




Section LiftedSemiRing.
Variables (R : pzSemiRingType) (T : Type).
Implicit Type f : T -> R.
Definition mull_fun a f x := a * f x.
Definition mulr_fun a f x := f x * a.
Definition mul_fun f g x := f x * g x.
End LiftedSemiRing.


Section LiftedScale.
Variables (R : pzSemiRingType) (U : Type).
Variables (V : lSemiModType R) (A : pzLSemiAlgType R).
Definition scale_fun a (f : U -> V) x := a *: f x.
Definition in_alg k : A := k%:A.
End LiftedScale.

Local Notation "\0" := (null_fun _) : function_scope.
Local Notation "f \+ g" := (add_fun f g) : function_scope.
Local Notation "f \- g" := (sub_fun f g) : function_scope.
Local Notation "\- f" := (opp_fun f) : function_scope.
Local Notation "a \*: f" := (scale_fun a f) : function_scope.
Local Notation "x \*o f" := (mull_fun x f) : function_scope.
Local Notation "x \o* f" := (mulr_fun x f) : function_scope.
Local Notation "f \* g" := (mul_fun f g) : function_scope.

Arguments in_alg  {_} A _ /.
Arguments mull_fun {_ _}  a f _ /.
Arguments mulr_fun {_ _} a f _ /.
Arguments scale_fun {_ _ _} a f _ /.
Arguments mul_fun {_ _} f g _ /.

Section AdditiveTheory.

Section SemiRingProperties.

Variables (R S : pzSemiRingType) (f : {additive R -> S}).

Lemma raddfMnat n x : f (n%:R * x) = n%:R * f x.
Proof.
by rewrite !mulr_natl raddfMn.
Qed.

Variables (U : lSemiModType R) (V : lSemiModType S) (h : {additive U -> V}).

Lemma raddfZnat n u : h (n%:R *: u) = n%:R *: h u.
Proof.
by rewrite !scaler_nat raddfMn.
Qed.

End SemiRingProperties.

Section MulFun.

Variables (R : pzSemiRingType) (U : nmodType) (a : R) (f : {additive U -> R}).

Fact mull_fun_is_nmod_morphism : nmod_morphism (a \*o f).
Proof.
by split=> [|x y]; rewrite /= ?raddf0 ?mulr0// raddfD mulrDr.
Qed.
#[export]
HB.instance Definition _ := isNmodMorphism.Build U R (a \*o f)
  mull_fun_is_nmod_morphism.

Fact mulr_fun_is_nmod_morphism : nmod_morphism (a \o* f).
Proof.
by split=> [|x y]; rewrite /= ?raddf0 ?mul0r// raddfD mulrDl.
Qed.
#[export]
HB.instance Definition _ := isNmodMorphism.Build U R (a \o* f)
  mulr_fun_is_nmod_morphism.

End MulFun.

Section Properties.

Variables (U V : zmodType) (f : {additive U -> V}).

Lemma raddfN : {morph f : x / - x}.
Proof.
exact: raddfN.
Qed.
Lemma raddfB : {morph f : x y / x - y}.
Proof.
exact: raddfB.
Qed.

Lemma raddf_inj : (forall x, f x = 0 -> x = 0) -> injective f.
Proof.
exact: raddf_inj.
Qed.

Lemma raddfMNn n : {morph f : x / x *- n}.
Proof.
exact: raddfMNn.
Qed.

End Properties.

Section RingProperties.

Variables (R S : pzRingType) (f : {additive R -> S}).

Lemma raddfMsign n x : f ((-1) ^+ n * x) = (-1) ^+ n * f x.
Proof.
by rewrite !(mulr_sign, =^~ signr_odd) (fun_if f) raddfN.
Qed.

Variables (U : lmodType R) (V : lmodType S) (h : {additive U -> V}).

Lemma raddfZsign n u : h ((-1) ^+ n *: u) = (-1) ^+ n *: h u.
Proof.
by rewrite !(scaler_sign, =^~ signr_odd) (fun_if h) raddfN.
Qed.

End RingProperties.

Section ScaleFun.

Variables (R : pzSemiRingType) (U : nmodType) (V : lSemiModType R).
Variables (a : R) (f : {additive U -> V}).

#[export]
HB.instance Definition _ :=
  isNmodMorphism.Build V V ( *:%R a) (conj (scaler0 _ a) (scalerDr a)).
#[export]
HB.instance Definition _ := Additive.copy (a \*: f) (f \; *:%R a).

End ScaleFun.

End AdditiveTheory.


Definition monoid_morphism (R S : pzSemiRingType) (f : R -> S) : Prop :=
   (f 1 = 1) * {morph f : x y / x * y}%R.

HB.mixin Record isMonoidMorphism (R S : pzSemiRingType) (f : R -> S) := {
  monoid_morphism_subproof : monoid_morphism f
}.

HB.structure Definition RMorphism (R S : pzSemiRingType) :=
  {f of @isNmodMorphism R S f & isMonoidMorphism R S f}.


Module RMorphismExports.
Notation "{ 'rmorphism' U -> V }" := (RMorphism.type U%type V%type)
  : type_scope.
End RMorphismExports.
HB.export RMorphismExports.

Section RmorphismTheory.

Section Properties.

Variables (R S : pzSemiRingType) (f : {rmorphism R -> S}).

Lemma rmorph0 : f 0 = 0.
Proof.
exact: raddf0.
Qed.
Lemma rmorphD : {morph f : x y / x + y}.
Proof.
exact: raddfD.
Qed.
Lemma rmorphMn n : {morph f : x / x *+ n}.
Proof.
exact: raddfMn.
Qed.
Lemma rmorph_sum I r (P : pred I) E :
  f (\sum_(i <- r | P i) E i) = \sum_(i <- r | P i) f (E i).
Proof.
exact: raddf_sum.
Qed.

Lemma rmorphism_monoidP : monoid_morphism f.
Proof.
exact: monoid_morphism_subproof.
Qed.

Lemma rmorph1 : f 1 = 1.
Proof.
by case: rmorphism_monoidP.
Qed.
Lemma rmorphM : {morph f: x y  / x * y}.
Proof.
by case: rmorphism_monoidP.
Qed.

Lemma rmorph_prod I r (P : pred I) E :
  f (\prod_(i <- r | P i) E i) = \prod_(i <- r | P i) f (E i).
Proof.
exact: (big_morph f rmorphM rmorph1).
Qed.

Lemma rmorphXn n : {morph f : x / x ^+ n}.
Proof.
by elim: n => [|n IHn] x; rewrite ?rmorph1 // !exprS rmorphM IHn.
Qed.

Lemma rmorph_nat n : f n%:R = n%:R.
Proof.
by rewrite rmorphMn rmorph1.
Qed.

Lemma rmorph_eq_nat x n : injective f -> (f x == n%:R) = (x == n%:R).
Proof.
by move/inj_eq <-; rewrite rmorph_nat.
Qed.

Lemma rmorph_eq1 x : injective f -> (f x == 1) = (x == 1).
Proof.
exact: rmorph_eq_nat 1%N.
Qed.

Lemma can2_monoid_morphism f' : cancel f f' -> cancel f' f -> monoid_morphism f'.
Proof.
move=> fK f'K.
by split=> [|x y]; apply: (canLR fK); rewrite /= (rmorph1, rmorphM) ?f'K.
Qed.
#[deprecated(since="mathcomp 2.5.0", use=can2_monoid_morphism)]
Definition can2_rmorphism f' (cff' : cancel f f') :=
  (fun p => (p.2, p.1)) \o (can2_monoid_morphism cff').

End Properties.

Lemma rmorph_pchar (R S : nzSemiRingType) (f : {rmorphism R -> S}) p :
  p \in pchar R -> p \in pchar S.
Proof.
by rewrite !inE -(rmorph_nat f) => /andP[-> /= /eqP->]; rewrite rmorph0.
Qed.

Section Projections.

Variables (R S T : pzSemiRingType).
Variables (f : {rmorphism S -> T}) (g : {rmorphism R -> S}).

Fact idfun_is_monoid_morphism : monoid_morphism (@idfun R).
Proof.
by [].
Qed.
#[export]
HB.instance Definition _ := isMonoidMorphism.Build R R idfun
  idfun_is_monoid_morphism.

Fact comp_is_monoid_morphism : monoid_morphism (f \o g).
Proof.
by split=> [|x y] /=; rewrite ?rmorph1 ?rmorphM.
Qed.
#[export]
HB.instance Definition _ := isMonoidMorphism.Build R T (f \o g)
  comp_is_monoid_morphism.

End Projections.

Section Properties.

Variables (R S : pzRingType) (f : {rmorphism R -> S}).

Lemma rmorphN : {morph f : x / - x}.
Proof.
exact: raddfN.
Qed.
Lemma rmorphB : {morph f: x y / x - y}.
Proof.
exact: raddfB.
Qed.
Lemma rmorphMNn n : {morph f : x / x *- n}.
Proof.
exact: raddfMNn.
Qed.
Lemma rmorphMsign n : {morph f : x / (- 1) ^+ n * x}.
Proof.
exact: raddfMsign.
Qed.

Lemma rmorphN1 : f (- 1) = (- 1).
Proof.
by rewrite rmorphN rmorph1.
Qed.

Lemma rmorph_sign n : f ((- 1) ^+ n) = (- 1) ^+ n.
Proof.
by rewrite rmorphXn /= rmorphN1.
Qed.

End Properties.

Section InSemiAlgebra.

Variables (R : pzSemiRingType) (A : pzLSemiAlgType R).

Fact in_alg_is_nmod_morphism : nmod_morphism (in_alg A).
Proof.
by split; [exact: scale0r | exact: scalerDl].
Qed.

#[export]
HB.instance Definition _ :=
  isNmodMorphism.Build R A (in_alg A) in_alg_is_nmod_morphism.

Fact in_alg_is_monoid_morphism : monoid_morphism (in_alg A).
Proof.
by split=> [|x y]; rewrite /= ?scale1r // mulr_algl scalerA.
Qed.
#[export]
HB.instance Definition _ := isMonoidMorphism.Build R A (in_alg A)
  in_alg_is_monoid_morphism.

Lemma in_algE a : in_alg A a = a%:A.
Proof.
by [].
Qed.

End InSemiAlgebra.

End RmorphismTheory.

Module Scale.

HB.mixin Record isPreLaw
    (R : pzSemiRingType) (V : nmodType) (op : R -> V -> V) := {
  op_nmod_morphism : forall a, nmod_morphism (op a);
}.

#[export]
HB.structure Definition PreLaw R V := {op of isPreLaw R V op}.
Definition preLaw := PreLaw.type.

HB.mixin Record isSemiLaw
    (R : pzSemiRingType) (V : nmodType) (op : R -> V -> V) := {
  op0v : forall v, op 0 v = 0;
  op1v : op 1 =1 id;
  opA : forall a b v, op a (op b v) = op (a * b) v;
}.

#[export]
HB.structure Definition SemiLaw R V :=
  {op of isPreLaw R V op & isSemiLaw R V op}.
Definition semiLaw := SemiLaw.type.

HB.mixin Record isLaw (R : pzRingType) (V : zmodType) (op : R -> V -> V) :=
  { N1op : op (-1) =1 -%R }.

#[export]
HB.structure Definition Law (R : pzRingType) (V : zmodType) :=
  {op of isPreLaw R V op & isLaw R V op}.
Definition law := Law.type.

Section CompSemiLaw.

Context (R : pzSemiRingType) (V : nmodType) (s : semiLaw R V).
Context (aR : pzSemiRingType) (nu : {rmorphism aR -> R}).

Fact comp_op0v v : (nu \; s) 0 v = 0.
Proof.
by rewrite /= rmorph0 op0v.
Qed.

Fact comp_op1v : (nu \; s) 1 =1 id.
Proof.
by move=> v; rewrite /= rmorph1 op1v.
Qed.

Fact comp_opA a b v : (nu \; s) a ((nu \; s) b v) = (nu \; s) (a * b) v.
Proof.
by rewrite /= opA rmorphM.
Qed.

End CompSemiLaw.

Fact compN1op
  (R : pzRingType) (V : zmodType) (s : law R V)
  (aR : pzRingType) (nu : {rmorphism aR -> R}) : (nu \; s) (-1) =1 -%R.
Proof.
by move=> v; rewrite /= rmorphN1 N1op.
Qed.

Module Exports.
HB.reexport.
End Exports.

End Scale.
Export Scale.Exports.

#[export]
HB.instance Definition _ (R : pzSemiRingType) :=
  Scale.isPreLaw.Build R R *%R (fun => mull_fun_is_nmod_morphism _ idfun).

#[export]
HB.instance Definition _ (R : pzSemiRingType) :=
  Scale.isSemiLaw.Build R R *%R mul0r mul1r mulrA.

#[export]
HB.instance Definition _ (R : pzRingType) :=
  Scale.isLaw.Build R R *%R (@mulN1r R).

#[export]
HB.instance Definition _ (R : pzSemiRingType) (V : lSemiModType R) :=
  Scale.isPreLaw.Build R V *:%R (fun => (scaler0 _ _, scalerDr _)).

#[export]
HB.instance Definition _ (R : pzSemiRingType) (V : lSemiModType R) :=
  Scale.isSemiLaw.Build R V *:%R scale0r scale1r (@scalerA _ _).

#[export]
HB.instance Definition _ (R : pzRingType) (U : lmodType R) :=
  Scale.isLaw.Build R U *:%R (@scaleN1r R U).

#[export]
HB.instance Definition _
    (R : pzSemiRingType) (V : nmodType) (s : Scale.preLaw R V)
    (aR : pzSemiRingType) (nu : {rmorphism aR -> R}) :=
  Scale.isPreLaw.Build aR V (nu \; s) (fun => Scale.op_nmod_morphism _).

#[export]
HB.instance Definition _
    (R : pzSemiRingType) (V : nmodType) (s : Scale.semiLaw R V)
    (aR : pzSemiRingType) (nu : {rmorphism aR -> R}) :=
  Scale.isSemiLaw.Build aR V (nu \; s)
    (Scale.comp_op0v s nu) (Scale.comp_op1v s nu) (Scale.comp_opA s nu).

#[export]
HB.instance Definition _
    (R : pzRingType) (V : zmodType) (s : Scale.law R V)
    (aR : pzRingType) (nu : {rmorphism aR -> R}) :=
  Scale.isLaw.Build aR V (nu \; s) (Scale.compN1op s nu).

#[export, non_forgetful_inheritance]
HB.instance Definition _
  (R : pzSemiRingType) (V : nmodType) (s : Scale.preLaw R V) a :=
  isNmodMorphism.Build V V (s a) (Scale.op_nmod_morphism a).

Definition scalable_for (R : pzSemiRingType) (U : lSemiModType R) (V : nmodType)
    (s : R -> V -> V) (f : U -> V) :=
  forall a, {morph f : u / a *: u >-> s a u}.

HB.mixin Record isScalable (R : pzSemiRingType) (U : lSemiModType R)
    (V : nmodType) (s : R -> V -> V) (f : U -> V) := {
  semi_linear_subproof : scalable_for s f;
}.

HB.structure Definition Linear (R : pzSemiRingType)
    (U : lSemiModType R) (V : nmodType) (s : R -> V -> V) :=
  {f of @isNmodMorphism U V f & isScalable R U V s f}.

Definition semilinear_for (R : pzSemiRingType)
    (U : lSemiModType R) (V : nmodType) (s : R -> V -> V) (f : U -> V) : Type :=
  scalable_for s f * {morph f : x y / x + y}.

Lemma nmod_morphism_semilinear (R : pzSemiRingType)
    (U : lSemiModType R) (V : nmodType) (s : Scale.semiLaw R V) (f : U -> V) :
  semilinear_for s f -> nmod_morphism f.
Proof.
by case=> sf Df; split => //; rewrite -[0 in LHS](scale0r 0) sf Scale.op0v.
Qed.
Definition additive_semilinear := nmod_morphism_semilinear.

Lemma scalable_semilinear (R : pzSemiRingType)
    (U : lSemiModType R) (V : nmodType) (s : Scale.preLaw R V) (f : U -> V) :
  semilinear_for s f -> scalable_for s f.
Proof.
by case.
Qed.

HB.factory Record isSemilinear (R : pzSemiRingType) (U : lSemiModType R)
    (V : nmodType) (s : Scale.semiLaw R V) (f : U -> V) := {
  linear_subproof : semilinear_for s f;
}.
HB.builders Context R U V s f & isSemilinear R U V s f.
HB.instance Definition _ := isNmodMorphism.Build U V f
  (additive_semilinear linear_subproof).

HB.instance Definition _ :=
  isScalable.Build R U V s f (scalable_semilinear linear_subproof).
HB.end.

Definition linear_for (R : pzSemiRingType) (U : lSemiModType R) (V : nmodType)
    (s : R -> V -> V) (f : U -> V) :=
  forall a, {morph f : u v / a *: u + v >-> s a u + v}.

Lemma zmod_morphism_linear (R : pzRingType) (U : lmodType R) V
  (s : Scale.law R V) (f : U -> V) : linear_for s f -> zmod_morphism f.
Proof.
by move=> Lsf x y; rewrite -scaleN1r addrC Lsf Scale.N1op addrC.
Qed.

Lemma scalable_linear (R : pzRingType) (U : lmodType R) V
  (s : Scale.law R V) (f : U -> V) : linear_for s f -> scalable_for s f.
Proof.
by move=> Lsf a v; rewrite -[a *:v](addrK v) (zmod_morphism_linear Lsf) Lsf addrK.
Qed.

Lemma semilinear_linear (R : pzRingType) (U : lmodType R) V
  (s : Scale.law R V) (f : U -> V) : linear_for s f -> semilinear_for s f.
Proof.
move=> Lsf; split=> [a x|x y]; first exact: (scalable_linear Lsf).
have f0: f 0 = 0 by rewrite -[0 in LHS]subr0 (zmod_morphism_linear Lsf) subrr.
by rewrite -[y in LHS]opprK -[- y]add0r !(zmod_morphism_linear Lsf) f0 sub0r opprK.
Qed.

HB.factory Record isLinear (R : pzRingType) (U : lmodType R) (V : zmodType)
    (s : Scale.law R V) (f : U -> V) := {
  linear_subproof : linear_for s f;
}.
HB.builders Context R U V s f & isLinear R U V s f.
HB.instance Definition _ := isZmodMorphism.Build U V f
  (zmod_morphism_linear linear_subproof).
HB.instance Definition _ := isScalable.Build R U V s f
  (scalable_linear linear_subproof).
HB.end.

Module LinearExports.
Notation scalable f := (scalable_for *:%R f).
Notation semilinear f := (semilinear_for *:%R f).
Notation semiscalar f := (semilinear_for *%R f).
Notation linear f := (linear_for *:%R f).
Notation scalar f := (linear_for *%R f).
Module Linear.
Section Linear.
Variables (R : pzSemiRingType) (U : lSemiModType R) (V : nmodType).
Variables (s : R -> V -> V).

Local Notation mapUV := (@Linear.type R U V s).
Definition map_class := mapUV.
Definition map_at (a : R) := mapUV.
Structure map_for a s_a := MapFor {map_for_map : mapUV; _ : s a = s_a}.
Definition unify_map_at a (g : map_at a) := MapFor g (erefl (s a)).
Structure wrapped := Wrap {unwrap : mapUV}.
Definition wrap (f : map_class) := Wrap f.
End Linear.
End Linear.
Notation "{ 'linear' U -> V | s }" := (@Linear.type _ U V s) : type_scope.
Notation "{ 'linear' U -> V }" := {linear U -> V | *:%R} : type_scope.
Notation "{ 'scalar' U }" := {linear U -> _ | *%R}
  (format "{ 'scalar'  U }") : type_scope.

Coercion Linear.map_for_map : Linear.map_for >-> Linear.type.
Coercion Linear.unify_map_at : Linear.map_at >-> Linear.map_for.
Canonical Linear.unify_map_at.
Coercion Linear.unwrap : Linear.wrapped >-> Linear.type.
Coercion Linear.wrap : Linear.map_class >-> Linear.wrapped.
Canonical Linear.wrap.
End LinearExports.
HB.export LinearExports.

Section LinearTheory.

Section GenericProperties.

Variables (R : pzSemiRingType) (U : lSemiModType R) (V : nmodType).
Variables (s : R -> V -> V) (f : {linear U -> V | s}).

Lemma linear0 : f 0 = 0.
Proof.
exact: raddf0.
Qed.
Lemma linearD : {morph f : x y / x + y}.
Proof.
exact: raddfD.
Qed.
Lemma linearMn n : {morph f : x / x *+ n}.
Proof.
exact: raddfMn.
Qed.
Lemma linear_sum I r (P : pred I) E :
  f (\sum_(i <- r | P i) E i) = \sum_(i <- r | P i) f (E i).
Proof.
exact: raddf_sum.
Qed.

Lemma linearZ_LR : scalable_for s f.
Proof.
exact: semi_linear_subproof.
Qed.
Lemma semilinearP : semilinear_for s f.
Proof.
split; [exact: linearZ_LR | exact: linearD].
Qed.
Lemma linearP : linear_for s f.
Proof.
by move=> a u v /=; rewrite !semilinearP.
Qed.

End GenericProperties.

Section GenericProperties.

Variables (R : pzRingType) (U : lmodType R) (V : zmodType) (s : R -> V -> V).
Variables (f : {linear U -> V | s}).

Lemma linearN : {morph f : x / - x}.
Proof.
exact: raddfN.
Qed.
Lemma linearB : {morph f : x y / x - y}.
Proof.
exact: raddfB.
Qed.
Lemma linearMNn n : {morph f : x / x *- n}.
Proof.
exact: raddfMNn.
Qed.

End GenericProperties.

Section BidirectionalLinearZ.



























Lemma linearZ (R : pzSemiRingType) (U : lSemiModType R) (V : nmodType)
  (s : R -> V -> V) (S : pzSemiRingType) (h : Scale.preLaw S V)
  (c : S) (a : R) (h_c := h c) (f : Linear.map_for U s a h_c) (u : U) :
  f (a *: u) = h_c (Linear.wrap f u).
Proof.
by rewrite linearZ_LR; case: f => f /= ->.
Qed.

End BidirectionalLinearZ.

Section LmodProperties.

Variables (R : pzSemiRingType) (U V : lSemiModType R) (f : {linear U -> V}).

Lemma linearZZ : scalable f.
Proof.
exact: linearZ_LR.
Qed.
Lemma semilinearPZ : semilinear f.
Proof.
exact: semilinearP.
Qed.
Lemma linearPZ : linear f.
Proof.
exact: linearP.
Qed.

Lemma can2_scalable f' : cancel f f' -> cancel f' f -> scalable f'.
Proof.
by move=> fK f'K a x; apply: (canLR fK); rewrite linearZZ f'K.
Qed.

Lemma can2_semilinear f' : cancel f f' -> cancel f' f -> semilinear f'.
Proof.
by move=> fK f'K; split=> ? ?; apply: (canLR fK); rewrite semilinearPZ !f'K.
Qed.

Lemma can2_linear f' : cancel f f' -> cancel f' f -> linear f'.
Proof.
by move=> fK f'K a x y /=; apply: (canLR fK); rewrite linearP !f'K.
Qed.

End LmodProperties.

Section ScalarProperties.

Variable (R : pzSemiRingType) (U : lSemiModType R) (f : {scalar U}).

Lemma scalarZ : scalable_for *%R f.
Proof.
exact: linearZ_LR.
Qed.
Lemma semiscalarP : semiscalar f.
Proof.
exact: semilinearP.
Qed.
Lemma scalarP : scalar f.
Proof.
exact: linearP.
Qed.

End ScalarProperties.

Section LinearLSemiMod.

Section Idfun.

Variables (R : pzSemiRingType) (U : lSemiModType R).

Lemma idfun_is_scalable : scalable (@idfun U).
Proof.
by [].
Qed.
#[export]
HB.instance Definition _ := isScalable.Build R U U *:%R idfun idfun_is_scalable.

End Idfun.

Section Plain.

Variables (R : pzSemiRingType) (W U : lSemiModType R) (V : nmodType).
Variables (s : R -> V -> V) (f : {linear U -> V | s}) (g : {linear W -> U}).

Lemma comp_is_scalable : scalable_for s (f \o g).
Proof.
by move=> a v /=; rewrite !linearZ_LR.
Qed.

#[export]
HB.instance Definition _ := isScalable.Build R W V s (f \o g) comp_is_scalable.

End Plain.

Section SemiScale.

Variables (R : pzSemiRingType) (U : lSemiModType R) (V : nmodType).
Variables (s : Scale.preLaw R V) (f g : {linear U -> V | s}).

Lemma null_fun_is_scalable : scalable_for s (\0 : U -> V).
Proof.
by move=> a v /=; rewrite raddf0.
Qed.
#[export]
HB.instance Definition _ :=
  isScalable.Build R U V s \0 null_fun_is_scalable.

Lemma add_fun_is_scalable : scalable_for s (add_fun f g).
Proof.
by move=> a u; rewrite /= !linearZ_LR raddfD.
Qed.
#[export]
HB.instance Definition _ :=
  isScalable.Build R U V s (f \+ g) add_fun_is_scalable.

End SemiScale.

End LinearLSemiMod.

Section LinearLmod.

Variables (R : pzRingType) (U : lmodType R).

Lemma opp_is_scalable : scalable (-%R : U -> U).
Proof.
by move=> a v /=; rewrite scalerN.
Qed.
#[export]
HB.instance Definition _ := isScalable.Build R U U *:%R -%R opp_is_scalable.

End LinearLmod.

Section Scale.

Variables (R : pzRingType) (U : lmodType R) (V : zmodType).
Variables (s : Scale.preLaw R V) (f g : {linear U -> V | s}).

Lemma sub_fun_is_scalable : scalable_for s (f \- g).
Proof.
by move=> a u; rewrite /= !linearZ_LR raddfB.
Qed.
#[export]
HB.instance Definition _ :=
  isScalable.Build R U V s (f \- g) sub_fun_is_scalable.

Lemma opp_fun_is_scalable : scalable_for s (\- f).
Proof.
by move=> a u; rewrite /= linearZ_LR raddfN.
Qed.
#[export]
HB.instance Definition _ := isScalable.Build R U V s (\- f) opp_fun_is_scalable.

End Scale.

Section LinearLSemiAlg.

Variables (R : pzSemiRingType) (A : pzLSemiAlgType R) (U : lSemiModType R).
Variables (a : A) (f : {linear U -> A}).

Fact mulr_fun_is_scalable : scalable (a \o* f).
Proof.
by move=> k x /=; rewrite linearZ scalerAl.
Qed.
#[export]
HB.instance Definition _ :=
  isScalable.Build R U A *:%R (a \o* f) mulr_fun_is_scalable.

End LinearLSemiAlg.

End LinearTheory.

HB.structure Definition LRMorphism (R : pzSemiRingType) (A : pzLSemiAlgType R)
    (B : pzSemiRingType) (s : R -> B -> B) :=
  {f of @RMorphism A B f & isScalable R A B s f}.


Module LRMorphismExports.
Notation "{ 'lrmorphism' A -> B | s }" := (@LRMorphism.type _ A%type B%type s)
  : type_scope.
Notation "{ 'lrmorphism' A -> B }" := {lrmorphism A%type -> B%type | *:%R}
  : type_scope.
End LRMorphismExports.
HB.export LRMorphismExports.

Section LRMorphismTheory.

Variables (R : pzSemiRingType) (A B : pzLSemiAlgType R) (C : pzSemiRingType).
Variables (s : R -> C -> C).
Variables (f : {lrmorphism A -> B}) (g : {lrmorphism B -> C | s}).

#[export] HB.instance Definition _ := RMorphism.on (@idfun A).
#[export] HB.instance Definition _ := RMorphism.on (g \o f).

Lemma rmorph_alg a : f a%:A = a%:A.
Proof.
by rewrite linearZ /= rmorph1.
Qed.

End LRMorphismTheory.

HB.mixin Record SemiRing_hasCommutativeMul R & PzSemiRing R := {
  mulrC : commutative (@mul R)
}.

#[short(type="comPzSemiRingType")]
HB.structure Definition ComPzSemiRing :=
  {R of PzSemiRing R & SemiRing_hasCommutativeMul R}.

Module ComPzSemiRingExports.
Bind Scope ring_scope with ComPzSemiRing.sort.
End ComPzSemiRingExports.
HB.export ComPzSemiRingExports.

HB.factory Record Nmodule_isComPzSemiRing R & Nmodule R := {
  one : R;
  mul : R -> R -> R;
  mulrA : associative mul;
  mulrC : commutative mul;
  mul1r : left_id one mul;
  mulrDl : left_distributive mul add;
  mul0r : left_zero zero mul;
}.

HB.builders Context R & Nmodule_isComPzSemiRing R.
  Definition mulr1 := Monoid.mulC_id mulrC mul1r.
  Definition mulrDr := Monoid.mulC_dist mulrC mulrDl.
  Lemma mulr0 : right_zero zero mul.
  Proof.
by move=> x; rewrite mulrC mul0r.
Qed.
  HB.instance Definition _ := Nmodule_isPzSemiRing.Build R
    mulrA mul1r mulr1 mulrDl mulrDr mul0r mulr0.
  HB.instance Definition _ := SemiRing_hasCommutativeMul.Build R mulrC.
HB.end.

#[short(type="comNzSemiRingType")]
HB.structure Definition ComNzSemiRing :=
  {R of NzSemiRing R & SemiRing_hasCommutativeMul R}.

Module ComNzSemiRingExports.
Bind Scope ring_scope with ComNzSemiRing.sort.
End ComNzSemiRingExports.
HB.export ComNzSemiRingExports.

HB.factory Record Nmodule_isComNzSemiRing R & Nmodule R := {
  one : R;
  mul : R -> R -> R;
  mulrA : associative mul;
  mulrC : commutative mul;
  mul1r : left_id one mul;
  mulrDl : left_distributive mul add;
  mul0r : left_zero zero mul;
  oner_neq0 : one != zero
}.

HB.builders Context R & Nmodule_isComNzSemiRing R.
  HB.instance Definition _ := Nmodule_isComPzSemiRing.Build R
    mulrA mulrC mul1r mulrDl mul0r.
  HB.instance Definition _ := PzSemiRing_isNonZero.Build R oner_neq0.
HB.end.

Section ComSemiRingTheory.

Variable R : comPzSemiRingType.
Implicit Types x y : R.

#[export]
HB.instance Definition _ := SemiGroup.isCommutativeLaw.Build R *%R mulrC.
Lemma mulrCA : @left_commutative R R *%R.
Proof.
exact: mulmCA.
Qed.
Lemma mulrAC : @right_commutative R R *%R.
Proof.
exact: mulmAC.
Qed.
Lemma mulrACA : @interchange R *%R *%R.
Proof.
exact: mulmACA.
Qed.

Lemma exprMn n : {morph (fun x => x ^+ n) : x y / x * y}.
Proof.
by move=> x y; exact/exprMn_comm/mulrC.
Qed.

Lemma prodrXl n I r (P : pred I) (F : I -> R) :
  \prod_(i <- r | P i) F i ^+ n = (\prod_(i <- r | P i) F i) ^+ n.
Proof.
by rewrite (big_morph _ (exprMn n) (expr1n _ n)).
Qed.

Lemma prodr_undup_exp_count (I : eqType) r (P : pred I) (F : I -> R) :
  \prod_(i <- undup r | P i) F i ^+ count_mem i r = \prod_(i <- r | P i) F i.
Proof.
exact: big_undup_iterop_count.
 Qed.

Lemma prodrMl {I : finType} (A : pred I) (x : R) F :
  \prod_(i in A) (x * F i) = x ^+ #|A| * \prod_(i in A) F i.
Proof.
by rewrite big_split ?prodr_const.
Qed.

Lemma prodrMr {I : finType} (A : pred I) (x : R) F :
  \prod_(i in A) (F i * x) = \prod_(i in A) F i * x ^+ #|A|.
Proof.
by rewrite big_split ?prodr_const.
Qed.

Lemma exprDn x y n :
  (x + y) ^+ n = \sum_(i < n.+1) (x ^+ (n - i) * y ^+ i) *+ 'C(n, i).
Proof.
by rewrite exprDn_comm //; apply: mulrC.
Qed.

Lemma sqrrD x y : (x + y) ^+ 2 = x ^+ 2 + x * y *+ 2 + y ^+ 2.
Proof.
by rewrite exprDn !big_ord_recr big_ord0 /= add0r mulr1 mul1r.
Qed.

Lemma rmorph_comm (S : pzSemiRingType) (f : {rmorphism R -> S}) x y :
  comm (f x) (f y).
Proof.
by red; rewrite -!rmorphM mulrC.
Qed.

Section ScaleLinear.

Variables (U V : lSemiModType R) (b : R) (f : {linear U -> V}).

Lemma scale_is_scalable : scalable ( *:%R b : V -> V).
Proof.
by move=> a v /=; rewrite !scalerA mulrC.
Qed.
#[export]
HB.instance Definition _ :=
  isScalable.Build R V V *:%R ( *:%R b) scale_is_scalable.

Lemma scale_fun_is_scalable : scalable (b \*: f).
Proof.
by move=> a v /=; rewrite !linearZ.
Qed.
#[export]
HB.instance Definition _ :=
  isScalable.Build R U V *:%R (b \*: f) scale_fun_is_scalable.

End ScaleLinear.

End ComSemiRingTheory.


Section ComNzSemiRingTheory.

Variable R : comNzSemiRingType.
Implicit Types x y : R.

Section FrobeniusAutomorphism.

Variables (p : nat) (pcharRp : p \in pchar R).

Lemma pFrobenius_aut_is_nmod_morphism : nmod_morphism (pFrobenius_aut pcharRp).
Proof.
by split=> [|x y]; [exact: pFrobenius_aut0 | exact/pFrobenius_autD_comm/mulrC].
Qed.

Lemma pFrobenius_aut_is_monoid_morphism : monoid_morphism (pFrobenius_aut pcharRp).
Proof.
by split=> [|x y]; [exact: pFrobenius_aut1 | exact/pFrobenius_autM_comm/mulrC].
Qed.

#[export]
HB.instance Definition _ := isNmodMorphism.Build R R (pFrobenius_aut pcharRp)
  pFrobenius_aut_is_nmod_morphism.
#[export]
HB.instance Definition _ := isMonoidMorphism.Build R R (pFrobenius_aut pcharRp)
  pFrobenius_aut_is_monoid_morphism.

End FrobeniusAutomorphism.

Lemma exprDn_pchar x y n : (pchar R).-nat n -> (x + y) ^+ n = x ^+ n + y ^+ n.
Proof.
pose p := pdiv n; have [|n_gt1 pcharRn] := leqP n 1; first by case: (n) => [|[]].
have pcharRp: p \in pchar R by rewrite (pnatPpi pcharRn) ?pi_pdiv.
have{pcharRn} /p_natP[e ->]: p.-nat n by rewrite -(eq_pnat _ (pcharf_eq pcharRp)).
by elim: e => // e IHe; rewrite !expnSr !exprM IHe -pFrobenius_autE rmorphD.
Qed.

End ComNzSemiRingTheory.

#[short(type="comPzRingType")]
HB.structure Definition ComPzRing := {R of PzRing R & ComPzSemiRing R}.

HB.factory Record Zmodule_isComPzRing R & Zmodule R := {
  one : R;
  mul : R -> R -> R;
  mulrA : associative mul;
  mulrC : commutative mul;
  mul1r : left_id one mul;
  mulrDl : left_distributive mul add;
}.

HB.builders Context R & Zmodule_isComPzRing R.
  Definition mulr1 := Monoid.mulC_id mulrC mul1r.
  Definition mulrDr := Monoid.mulC_dist mulrC mulrDl.
  HB.instance Definition _ := Zmodule_isPzRing.Build R
    mulrA mul1r mulr1 mulrDl mulrDr.
  HB.instance Definition _ := SemiRing_hasCommutativeMul.Build R mulrC.
HB.end.

Module ComPzRingExports.
Bind Scope ring_scope with ComPzRing.sort.
End ComPzRingExports.
HB.export ComPzRingExports.

#[short(type="comNzRingType")]
HB.structure Definition ComNzRing := {R of NzRing R & ComNzSemiRing R}.

HB.factory Record Zmodule_isComNzRing R & Zmodule R := {
  one : R;
  mul : R -> R -> R;
  mulrA : associative mul;
  mulrC : commutative mul;
  mul1r : left_id one mul;
  mulrDl : left_distributive mul add;
  oner_neq0 : one != zero
}.

HB.builders Context R & Zmodule_isComNzRing R.
  HB.instance Definition _ := Zmodule_isComPzRing.Build R
    mulrA mulrC mul1r mulrDl.
  HB.instance Definition _ := PzSemiRing_isNonZero.Build R oner_neq0.
HB.end.

Module ComNzRingExports.
Bind Scope ring_scope with ComNzRing.sort.
End ComNzRingExports.
HB.export ComNzRingExports.

Section ComPzRingTheory.

Variable R : comPzRingType.
Implicit Types x y : R.

Lemma exprBn x y n :
  (x - y) ^+ n =
     \sum_(i < n.+1) ((-1) ^+ i * x ^+ (n - i) * y ^+ i) *+ 'C(n, i).
Proof.
by rewrite exprBn_comm //; apply: mulrC.
Qed.

Lemma subrXX x y n :
  x ^+ n - y ^+ n = (x - y) * (\sum_(i < n) x ^+ (n.-1 - i) * y ^+ i).
Proof.
by rewrite -subrXX_comm //; apply: mulrC.
Qed.

Lemma sqrrB x y : (x - y) ^+ 2 = x ^+ 2 - x * y *+ 2 + y ^+ 2.
Proof.
by rewrite sqrrD mulrN mulNrn sqrrN.
Qed.

Lemma subr_sqr x y : x ^+ 2 - y ^+ 2 = (x - y) * (x + y).
Proof.
by rewrite subrXX !big_ord_recr big_ord0 /= add0r mulr1 mul1r.
Qed.

Lemma subr_sqrDB x y : (x + y) ^+ 2 - (x - y) ^+ 2 = x * y *+ 4.
Admitted.

End ComPzRingTheory.

HB.mixin Record LSemiAlgebra_isSemiAlgebra R V & PzLSemiAlgebra R V := {
  scalerAr : forall k (x y : V), k *: (x * y) = x * (k *: y);
}.

#[short(type="pzSemiAlgType")]
HB.structure Definition PzSemiAlgebra (R : pzSemiRingType) :=
  {A of LSemiAlgebra_isSemiAlgebra R A & PzLSemiAlgebra R A}.

Module PzSemiAlgExports.
Bind Scope ring_scope with PzSemiAlgebra.sort.
End PzSemiAlgExports.

#[short(type="nzSemiAlgType")]
HB.structure Definition NzSemiAlgebra (R : nzSemiRingType) :=
  {A of LSemiAlgebra_isSemiAlgebra R A & NzLSemiAlgebra R A}.

Module NzSemiAlgExports.
Bind Scope ring_scope with NzSemiAlgebra.sort.
End NzSemiAlgExports.

HB.factory Record LSemiAlgebra_isComSemiAlgebra R V
  & ComPzSemiRing V & PzLSemiAlgebra R V := {}.

HB.builders Context R V & LSemiAlgebra_isComSemiAlgebra R V.

Lemma scalarAr k (x y : V) : k *: (x * y) = x * (k *: y).
Admitted.

HB.instance Definition _ := LSemiAlgebra_isSemiAlgebra.Build R V scalarAr.

HB.end.

HB.factory Record LSemiModule_isComSemiAlgebra R V
  & ComPzSemiRing V & LSemiModule R V := {
  scalerAl : forall (a : R) (u v : V), a *: (u * v) = (a *: u) * v
}.
HB.builders Context R V & LSemiModule_isComSemiAlgebra R V.
HB.instance Definition _ := LSemiModule_isLSemiAlgebra.Build R V scalerAl.
HB.instance Definition _ := LSemiAlgebra_isComSemiAlgebra.Build R V.
HB.end.

#[short(type="pzAlgType")]
HB.structure Definition PzAlgebra (R : pzRingType) :=
  {A of LSemiAlgebra_isSemiAlgebra R A & PzLalgebra R A}.

Module PzAlgExports.
Bind Scope ring_scope with PzAlgebra.sort.
End PzAlgExports.
HB.export PzAlgExports.

#[short(type="nzAlgType")]
HB.structure Definition NzAlgebra (R : nzRingType) :=
  {A of LSemiAlgebra_isSemiAlgebra R A & NzLalgebra R A}.

Module NzAlgExports.
Bind Scope ring_scope with NzAlgebra.sort.
End NzAlgExports.
HB.export NzAlgExports.

#[short(type="comPzSemiAlgType")]
HB.structure Definition ComPzSemiAlgebra (R : pzSemiRingType) :=
  {V of ComPzSemiRing V & PzSemiAlgebra R V}.

Module ComPzSemiAlgExports.
Bind Scope ring_scope with ComPzSemiAlgebra.sort.
End ComPzSemiAlgExports.
HB.export ComPzSemiAlgExports.

#[short(type="comNzSemiAlgType")]
HB.structure Definition ComNzSemiAlgebra (R : nzSemiRingType) :=
  {V of ComNzSemiRing V & NzSemiAlgebra R V}.

Module ComNzSemiAlgExports.
Bind Scope ring_scope with ComNzSemiAlgebra.sort.
End ComNzSemiAlgExports.
HB.export ComNzSemiAlgExports.

Section SemiAlgebraTheory.
#[export]
HB.instance Definition _ (R : comPzSemiRingType) :=
  SemiRing_hasCommutativeMul.Build R^c (fun _ _ => mulrC _ _).
#[export]
HB.instance Definition _ (R : comPzSemiRingType) := ComPzSemiRing.on R^o.
#[export]
HB.instance Definition _ (R : comPzSemiRingType) :=
  LSemiAlgebra_isComSemiAlgebra.Build R R^o.
#[export]
HB.instance Definition _ (R : comNzSemiRingType) := ComNzSemiRing.on R^c.
#[export]
HB.instance Definition _ (R : comNzSemiRingType) := ComNzSemiRing.on R^o.
End SemiAlgebraTheory.

#[short(type="comPzAlgType")]
HB.structure Definition ComPzAlgebra (R : pzRingType) :=
  {V of ComPzRing V & PzAlgebra R V}.

Module ComPzAlgExports.
Bind Scope ring_scope with ComPzAlgebra.sort.
End ComPzAlgExports.
HB.export ComPzAlgExports.

#[short(type="comNzAlgType")]
HB.structure Definition ComNzAlgebra (R : nzRingType) :=
  {V of ComNzRing V & NzAlgebra R V}.

Module ComNzAlgExports.
Bind Scope ring_scope with ComNzAlgebra.sort.
End ComNzAlgExports.
HB.export ComNzAlgExports.

Section AlgebraTheory.
#[export]
HB.instance Definition _ (R : comPzRingType) := ComPzRing.on R^c.
#[export]
HB.instance Definition _ (R : comPzRingType) := ComPzRing.on R^o.
#[export]
HB.instance Definition _ (R : comNzRingType) := ComNzRing.on R^c.
#[export]
HB.instance Definition _ (R : comNzRingType) := ComNzRing.on R^o.
End AlgebraTheory.

Section SemiAlgebraTheory.

Variables (R : pzSemiRingType) (A : pzSemiAlgType R).
Implicit Types (k : R) (x y : A).

Lemma scalerCA k x y : k *: x * y = x * (k *: y).
Admitted.

Lemma mulr_algr a x : x * a%:A = a *: x.
Admitted.

Lemma comm_alg a x : comm a%:A x.
Admitted.

Lemma exprZn k x n : (k *: x) ^+ n = k ^+ n *: x ^+ n.
Admitted.

Lemma scaler_prod I r (P : pred I) (F : I -> R) (G : I -> A) :
  \prod_(i <- r | P i) (F i *: G i) =
    \prod_(i <- r | P i) F i *: \prod_(i <- r | P i) G i.
Admitted.

Lemma scaler_prodl (I : finType) (S : pred I) (F : I -> A) k :
  \prod_(i in S) (k *: F i)  = k ^+ #|S| *: \prod_(i in S) F i.
Admitted.

Lemma scaler_prodr (I : finType) (S : pred I) (F : I -> R) x :
  \prod_(i in S) (F i *: x)  = \prod_(i in S) F i *: x ^+ #|S|.
Admitted.

End SemiAlgebraTheory.

Section AlgebraTheory.

Variables (R : pzSemiRingType) (A : pzSemiAlgType R).
Variables (U : lSemiModType R) (a : A) (f : {linear U -> A}).

Lemma mull_fun_is_scalable : scalable (a \*o f).
Admitted.
#[export]
HB.instance Definition _ := isScalable.Build R U A *:%R (a \*o f)
  mull_fun_is_scalable.

End AlgebraTheory.

Module ClosedExports.

Notation addr_closed := nmod_closed.
Notation oppr_closed := oppr_closed.
Notation zmod_closed := zmod_closed.
Notation mulr_closed := mulr_closed.
Notation semiring_closed := semiring_closed.
Notation smulr_closed := smulr_closed.
Notation subring_closed := subring_closed.
Notation scaler_closed := scaler_closed.
Notation subsemimod_closed := subsemimod_closed.
Notation linear_closed := linear_closed.
Notation submod_closed := submod_closed.
Notation subalg_closed := subalg_closed.

Coercion zmod_closed0D : zmod_closed >-> nmod_closed.
Coercion zmod_closedN : zmod_closed >-> oppr_closed.
Coercion semiring_closedD : semiring_closed >-> addr_closed.
Coercion semiring_closedM : semiring_closed >-> mulr_closed.
Coercion smulr_closedM : smulr_closed >-> mulr_closed.
Coercion smulr_closedN : smulr_closed >-> oppr_closed.
Coercion subring_closedB : subring_closed >-> zmod_closed.
Coercion subring_closedM : subring_closed >-> smulr_closed.
Coercion subring_closed_semi : subring_closed >-> semiring_closed.
Coercion subsemimod_closedD : subsemimod_closed >-> addr_closed.
Coercion subsemimod_closedZ : subsemimod_closed >-> scaler_closed.
Coercion linear_closedB : linear_closed >-> subr_closed.
Coercion submod_closedB : submod_closed >-> zmod_closed.
Coercion submod_closed_semi : submod_closed >-> subsemimod_closed.
Coercion subsemialg_closedZ : subsemialg_closed >-> subsemimod_closed.
Coercion subsemialg_closedM : subsemialg_closed >-> semiring_closed.
Coercion subalg_closedZ : subalg_closed >-> submod_closed.
Coercion subalg_closedBM : subalg_closed >-> subring_closed.
Coercion subalg_closed_semi : subalg_closed >-> subsemialg_closed.

End ClosedExports.



HB.mixin Record isMul2Closed (R : pzSemiRingType) (S : {pred R}) := {
  rpredM : mulr_2closed S
}.

HB.mixin Record isMul1Closed (R : pzSemiRingType) (S : {pred R}) := {
  rpred1 : 1 \in S
}.

HB.mixin Record isScaleClosed (R : pzSemiRingType) (V : lSemiModType R)
    (S : {pred V}) := {
  rpredZ : scaler_closed S
}.



Local Notation addrClosed := addrClosed.
Local Notation opprClosed := opprClosed.

#[short(type="mulr2Closed")]
HB.structure Definition Mul2Closed (R : pzSemiRingType) :=
  {S of isMul2Closed R S}.

#[short(type="mulrClosed")]
HB.structure Definition MulClosed (R : pzSemiRingType) :=
  {S of Mul2Closed R S & isMul1Closed R S}.

#[short(type="semiring2Closed")]
HB.structure Definition Semiring2Closed (R : pzSemiRingType) :=
  {S of AddClosed R S & Mul2Closed R S}.

#[short(type="semiringClosed")]
HB.structure Definition SemiringClosed (R : pzSemiRingType) :=
  {S of AddClosed R S & MulClosed R S}.

#[short(type="smulClosed")]
HB.structure Definition SmulClosed (R : pzRingType) :=
  {S of OppClosed R S & MulClosed R S}.

#[short(type="subringClosed")]
HB.structure Definition SubringClosed (R : pzRingType) :=
  {S of ZmodClosed R S & MulClosed R S}.

#[short(type="submodClosed")]
HB.structure Definition SubmodClosed (R : pzSemiRingType) (V : lSemiModType R)
  := {S of AddClosed V S & isScaleClosed R V S}.

#[short(type="subalgClosed")]
HB.structure Definition SubalgClosed (R : pzSemiRingType) (A : pzLSemiAlgType R)
  := {S of SemiringClosed A S & isScaleClosed R A S}.



HB.factory Record isMulClosed (R : pzSemiRingType) (S : {pred R}) := {
  rpred1M : mulr_closed S
}.

HB.builders Context R S & isMulClosed R S.
HB.instance Definition _ := isMul2Closed.Build R S (proj2 rpred1M).
HB.instance Definition _ := isMul1Closed.Build R S (proj1 rpred1M).
HB.end.

HB.factory Record isSmulClosed (R : pzRingType) (S : R -> bool) := {
  smulr_closed_subproof : smulr_closed S
}.

HB.builders Context R S & isSmulClosed R S.
HB.instance Definition _ := isMulClosed.Build R S
  (smulr_closedM smulr_closed_subproof).
HB.instance Definition _ := isOppClosed.Build R S
  (smulr_closedN smulr_closed_subproof).
HB.end.

HB.factory Record isSemiringClosed (R : pzSemiRingType) (S : R -> bool) := {
  semiring_closed_subproof : semiring_closed S
}.

HB.builders Context R S & isSemiringClosed R S.
HB.instance Definition _ := isAddClosed.Build R S
  (semiring_closedD semiring_closed_subproof).
HB.instance Definition _ := isMulClosed.Build R S
  (semiring_closedM semiring_closed_subproof).
HB.end.

HB.factory Record isSubringClosed (R : pzRingType) (S : R -> bool) := {
  subring_closed_subproof : subring_closed S
}.

HB.builders Context R S & isSubringClosed R S.
HB.instance Definition _ := isZmodClosed.Build R S
  (subring_closedB subring_closed_subproof).
HB.instance Definition _ := isSmulClosed.Build R S
  (subring_closedM subring_closed_subproof).
HB.end.

HB.factory Record isSubSemiModClosed (R : pzSemiRingType) (V : lSemiModType R)
    (S : V -> bool) := {
  subsemimod_closed_subproof : subsemimod_closed S
}.

HB.builders Context R V S & isSubSemiModClosed R V S.
HB.instance Definition _ := isAddClosed.Build V S
  (subsemimod_closedD subsemimod_closed_subproof).
HB.instance Definition _ := isScaleClosed.Build R V S
  (subsemimod_closedZ subsemimod_closed_subproof).
HB.end.

HB.factory Record isSubmodClosed (R : pzRingType) (V : lmodType R)
    (S : V -> bool) := {
  subsemimod_closed_subproof : subsemimod_closed S
}.

HB.builders Context R V S & isSubmodClosed R V S.
HB.instance Definition _ := isZmodClosed.Build V S
  (subsemimod_closedB subsemimod_closed_subproof).
HB.instance Definition _ := isScaleClosed.Build R V S
  (subsemimod_closedZ subsemimod_closed_subproof).
HB.end.

HB.factory Record isSubSemiAlgClosed (R : pzSemiRingType) (A : pzLSemiAlgType R)
    (S : A -> bool) := {
  subsemialg_closed_subproof : subsemialg_closed S
}.

HB.builders Context R A S & isSubSemiAlgClosed R A S.
HB.instance Definition _ := isSubSemiModClosed.Build R A S
  (subsemialg_closedZ subsemialg_closed_subproof).
HB.instance Definition _ := isSemiringClosed.Build A S
  (subsemialg_closedM subsemialg_closed_subproof).
HB.end.

HB.factory Record isSubalgClosed (R : pzRingType) (A : pzLalgType R)
    (S : A -> bool) := {
  subsemialg_closed_subproof : subsemialg_closed S
}.

HB.builders Context R A S & isSubalgClosed R A S.
HB.instance Definition _ := isSubmodClosed.Build R A S
  (subsemialg_closedZ subsemialg_closed_subproof).
HB.instance Definition _ := isSemiringClosed.Build A S
  (subsemialg_closedM subsemialg_closed_subproof).
HB.end.

Section SemiRingPred.

Variables (R : pzSemiRingType).

Section Mul.

Variable S : mulrClosed R.

Lemma rpred1M : mulr_closed S.
Admitted.

Lemma rpred_prod I r (P : pred I) F :
  (forall i, P i -> F i \in S) -> \prod_(i <- r | P i) F i \in S.
Admitted.

Lemma rpredX n : {in S, forall u, u ^+ n \in S}.
Admitted.

End Mul.

Lemma rpred_nat (S : semiringClosed R) n : n%:R \in S.
Admitted.

Lemma semiringClosedP (rngS : semiringClosed R) : semiring_closed rngS.
Admitted.

End SemiRingPred.

Section RingPred.

Variables (R : pzRingType).

Lemma rpredMsign (S : opprClosed R) n x : ((-1) ^+ n * x \in S) = (x \in S).
Admitted.

Lemma rpredN1 (S : smulClosed R) : -1 \in S.
Admitted.

Lemma rpred_sign (S : smulClosed R) n : (-1) ^+ n \in S.
Admitted.

Lemma subringClosedP (rngS : subringClosed R) : subring_closed rngS.
Admitted.

End RingPred.

Section LmodPred.

Variables (R : pzSemiRingType) (V : lSemiModType R).

Lemma rpredZnat (S : addrClosed V) n : {in S, forall u, n%:R *: u \in S}.
Admitted.

Lemma subsemimodClosedP (modS : submodClosed V) : subsemimod_closed modS.
Admitted.

End LmodPred.

Section LmodPred.

Variables (R : pzRingType) (V : lmodType R).

Lemma rpredZsign (S : opprClosed V) n u : ((-1) ^+ n *: u \in S) = (u \in S).
Admitted.

Lemma submodClosedP (modS : submodClosed V) : submod_closed modS.
Admitted.

End LmodPred.

Section LalgPred.

Variables (R : pzSemiRingType) (A : pzLSemiAlgType R).

Lemma subsemialgClosedP (algS : subalgClosed A) : subsemialg_closed algS.
Admitted.

End LalgPred.

Section LalgPred.

Variables (R : pzRingType) (A : pzLalgType R).

Lemma subalgClosedP (algS : subalgClosed A) : subalg_closed algS.
Admitted.

End LalgPred.

HB.mixin Record isSubPzSemiRing (R : pzSemiRingType) (S : pred R) U
    & SubNmodule R S U & PzSemiRing U := {
  valM_subproof : monoid_morphism (val : U -> R);
}.

#[short(type="subPzSemiRingType")]
HB.structure Definition SubPzSemiRing (R : pzSemiRingType) (S : pred R) :=
  { U of SubNmodule R S U & PzSemiRing U & isSubPzSemiRing R S U }.

#[short(type="subNzSemiRingType")]
HB.structure Definition SubNzSemiRing (R : nzSemiRingType) (S : pred R) :=
  { U of SubNmodule R S U & NzSemiRing U & isSubPzSemiRing R S U }.

Section multiplicative.
Context (R : pzSemiRingType) (S : pred R) (U : SubPzSemiRing.type S).
Notation val := (val : U -> R).
#[export]
HB.instance Definition _ := isMonoidMorphism.Build U R val valM_subproof.
Lemma val1 : val 1 = 1.
Admitted.
Lemma valM : {morph val : x y / x * y}.
Admitted.
Lemma valM1 : monoid_morphism val.
Admitted.
End multiplicative.

HB.factory Record SubNmodule_isSubPzSemiRing (R : pzSemiRingType) S U
    & SubNmodule R S U := {
  mulr_closed_subproof : mulr_closed S
}.

HB.builders Context R S U & SubNmodule_isSubPzSemiRing R S U.

HB.instance Definition _ := isMulClosed.Build R S mulr_closed_subproof.

Let inU v Sv : U := Sub v Sv.
Let oneU : U := inU (@rpred1 _ (MulClosed.clone R S _)).
Let mulU (u1 u2 : U) := inU (rpredM _ _ (valP u1) (valP u2)).

Lemma mulrA : associative mulU.
Admitted.
Lemma mul1r : left_id oneU mulU.
Admitted.
Lemma mulr1 : right_id oneU mulU.
Admitted.
Lemma mulrDl : left_distributive mulU +%R.
Admitted.
Lemma mulrDr : right_distributive mulU +%R.
Admitted.
Lemma mul0r : left_zero 0%R mulU.
Admitted.
Lemma mulr0 : right_zero 0%R mulU.
Admitted.
HB.instance Definition _ := Nmodule_isPzSemiRing.Build U
  mulrA mul1r mulr1 mulrDl mulrDr mul0r mulr0.

Lemma valM : monoid_morphism (val : U -> R).
Admitted.
HB.instance Definition _ := isSubPzSemiRing.Build R S U valM.
HB.end.

HB.factory Record SubPzSemiRing_isNonZero (R : nzSemiRingType) S U
  & SubPzSemiRing R S U := {}.

HB.builders Context R S U & SubPzSemiRing_isNonZero R S U.
Lemma oner_neq0 : (1 : U) != 0.
Admitted.
HB.instance Definition _ := PzSemiRing_isNonZero.Build U oner_neq0.
HB.end.

HB.factory Record SubNmodule_isSubNzSemiRing (R : nzSemiRingType) S U
    & SubNmodule R S U := {
  mulr_closed_subproof : mulr_closed S
}.

HB.builders Context R S U & SubNmodule_isSubNzSemiRing R S U.
HB.instance Definition _ := SubNmodule_isSubPzSemiRing.Build R S U
  mulr_closed_subproof.
HB.instance Definition _ := SubPzSemiRing_isNonZero.Build R S U.
HB.end.

#[short(type="subComPzSemiRingType")]
HB.structure Definition SubComPzSemiRing (R : pzSemiRingType) S :=
  {U of SubPzSemiRing R S U & ComPzSemiRing U}.


HB.factory Record SubSemiRing_isSubComSemiRing (R : comPzSemiRingType) S U
    & SubPzSemiRing R S U := {}.

HB.builders Context R S U & SubSemiRing_isSubComSemiRing R S U.
Lemma mulrC : @commutative U U *%R.
Admitted.
HB.instance Definition _ := SemiRing_hasCommutativeMul.Build U mulrC.
HB.end.

#[short(type="subComNzSemiRingType")]
HB.structure Definition SubComNzSemiRing (R : nzSemiRingType) S :=
  {U of SubNzSemiRing R S U & ComNzSemiRing U}.

#[short(type="subPzRingType")]
HB.structure Definition SubPzRing (R : pzRingType) (S : pred R) :=
  { U of SubPzSemiRing R S U & PzRing U & isSubZmodule R S U }.

HB.factory Record SubZmodule_isSubPzRing (R : pzRingType) S U
    & SubZmodule R S U := {
  subring_closed_subproof : subring_closed S
}.

HB.builders Context R S U & SubZmodule_isSubPzRing R S U.
HB.instance Definition _ := SubNmodule_isSubPzSemiRing.Build R S U
  (smulr_closedM (subring_closedM subring_closed_subproof)).
HB.end.

#[short(type="subNzRingType")]
HB.structure Definition SubNzRing (R : nzRingType) (S : pred R) :=
  { U of SubNzSemiRing R S U & NzRing U & isSubBaseAddUMagma R S U }.

HB.factory Record SubZmodule_isSubNzRing (R : nzRingType) S U
    & SubZmodule R S U := {
  subring_closed_subproof : subring_closed S
}.

HB.builders Context R S U & SubZmodule_isSubNzRing R S U.
HB.instance Definition _ := SubNmodule_isSubNzSemiRing.Build R S U
  (smulr_closedM (subring_closedM subring_closed_subproof)).
HB.end.

#[short(type="subComPzRingType")]
HB.structure Definition SubComPzRing (R : pzRingType) S :=
  {U of SubPzRing R S U & ComPzRing U}.

#[short(type="subComNzRingType")]
HB.structure Definition SubComNzRing (R : nzRingType) S :=
  {U of SubNzRing R S U & ComNzRing U}.

HB.mixin Record isSubLSemiModule (R : pzSemiRingType) (V : lSemiModType R)
  (S : pred V) W & SubNmodule V S W & LSemiModule R W := {
  valZ : scalable (val : W -> V);
}.

#[short(type="subLSemiModType")]
HB.structure Definition SubLSemiModule (R : pzSemiRingType) (V : lSemiModType R)
    (S : pred V) :=
  { W of SubNmodule V S W &
         Nmodule_isLSemiModule R W & isSubLSemiModule R V S W}.

#[short(type="subLmodType")]
HB.structure Definition SubLmodule (R : pzRingType) (V : lmodType R)
    (S : pred V) :=
  { W of SubZmodule V S W &
         Nmodule_isLSemiModule R W & isSubLSemiModule R V S W}.

Section linear.
Context (R : pzSemiRingType) (V : lSemiModType R).
Context (S : pred V) (W : subLSemiModType S).
Notation val := (val : W -> V).
#[export]
HB.instance Definition _ := isScalable.Build R W V *:%R val valZ.
End linear.

HB.factory Record isSubLmodule (R : pzRingType) (V : lmodType R) (S : pred V)
   W & SubZmodule V S W & Lmodule R W := {
 valZ : scalable (val : W -> V);
}.

HB.builders Context R V S W & isSubLmodule R V S W.
HB.instance Definition _ := isSubLSemiModule.Build R V S W valZ.
HB.end.

HB.factory Record SubNmodule_isSubLSemiModule
    (R : pzSemiRingType) (V : lSemiModType R) S W & SubNmodule V S W := {
  subsemimod_closed_subproof : subsemimod_closed S
}.

HB.builders Context R V S W & SubNmodule_isSubLSemiModule R V S W.

HB.instance Definition _ :=
  isSubSemiModClosed.Build R V S subsemimod_closed_subproof.

Let inW v Sv : W := Sub v Sv.
Let scaleW a (w : W) := inW (rpredZ a _ (valP w)).

Lemma scalerA' a b v : scaleW a (scaleW b v) = scaleW (a * b) v.
Admitted.
Lemma scale0r v : scaleW 0 v = 0.
Admitted.
Lemma scale1r : left_id 1 scaleW.
Admitted.
Lemma scalerDr : right_distributive scaleW +%R.
Admitted.
Lemma scalerDl v : {morph scaleW^~ v : a b / a + b}.
Admitted.
HB.instance Definition _ := Nmodule_isLSemiModule.Build R W
  scalerA' scale0r scale1r scalerDr scalerDl.

Fact valZ : scalable (val : W -> _).
Admitted.
HB.instance Definition _ := isSubLSemiModule.Build R V S W valZ.
HB.end.

#[short(type="subPzLSemiAlgType")]
HB.structure Definition SubPzLSemiAlgebra
    (R : pzSemiRingType) (V : pzLSemiAlgType R) S :=
  {W of SubPzSemiRing V S W & @SubLSemiModule R V S W & PzLSemiAlgebra R W}.

#[short(type="subNzLSemiAlgType")]
HB.structure Definition SubNzLSemiAlgebra
    (R : nzSemiRingType) (V : nzLSemiAlgType R) S :=
  {W of SubNzSemiRing V S W & @SubLSemiModule R V S W & NzLSemiAlgebra R W}.

#[short(type="subPzLalgType")]
HB.structure Definition SubPzLalgebra (R : pzRingType) (V : pzLalgType R) S :=
  {W of SubPzRing V S W & @SubLmodule R V S W & PzLalgebra R W}.

#[short(type="subNzLalgType")]
HB.structure Definition SubNzLalgebra (R : nzRingType) (V : nzLalgType R) S :=
  {W of SubNzRing V S W & @SubLmodule R V S W & NzLalgebra R W}.

HB.factory Record SubSemiRing_SubLSemiModule_isSubLSemiAlgebra
  (R : pzSemiRingType) (V : pzLSemiAlgType R) S W
  & SubPzSemiRing V S W & @SubLSemiModule R V S W := {}.

HB.builders Context R V S W
  & SubSemiRing_SubLSemiModule_isSubLSemiAlgebra R V S W.
Lemma scalerAl (a : R) (u v : W) : a *: (u * v) = a *: u * v.
Admitted.
HB.instance Definition _ := LSemiModule_isLSemiAlgebra.Build R W scalerAl.
HB.end.

HB.factory Record SubRing_SubLmodule_isSubLalgebra (R : pzRingType)
    (V : pzLalgType R) S W & SubPzRing V S W & @SubLmodule R V S W := {}.

HB.builders Context R V S W & SubRing_SubLmodule_isSubLalgebra R V S W.
HB.instance Definition _ :=
  SubSemiRing_SubLSemiModule_isSubLSemiAlgebra.Build R V S W.
HB.end.

#[short(type="subPzSemiAlgType")]
HB.structure Definition SubPzSemiAlgebra
    (R : pzSemiRingType) (V : pzSemiAlgType R) S :=
  {W of @SubPzLSemiAlgebra R V S W & PzSemiAlgebra R W}.

#[short(type="subNzSemiAlgType")]
HB.structure Definition SubNzSemiAlgebra
    (R : nzSemiRingType) (V : nzSemiAlgType R) S :=
  {W of @SubNzLSemiAlgebra R V S W & NzSemiAlgebra R W}.

#[short(type="subPzAlgType")]
HB.structure Definition SubPzAlgebra (R : pzRingType) (V : pzAlgType R) S :=
  {W of @SubPzLalgebra R V S W & PzAlgebra R W}.

#[short(type="subNzAlgType")]
HB.structure Definition SubNzAlgebra (R : nzRingType) (V : nzAlgType R) S :=
  {W of @SubNzLalgebra R V S W & NzAlgebra R W}.

HB.factory Record SubLSemiAlgebra_isSubSemiAlgebra (R : pzSemiRingType)
    (V : pzSemiAlgType R) S W & @SubPzLSemiAlgebra R V S W := {}.

HB.builders Context R V S W & SubLSemiAlgebra_isSubSemiAlgebra R V S W.
Lemma scalerAr (k : R) (x y : W) : k *: (x * y) = x * (k *: y).
Admitted.
HB.instance Definition _ := LSemiAlgebra_isSemiAlgebra.Build R W scalerAr.
HB.end.

HB.factory Record SubChoice_isSubPzSemiRing (R : pzSemiRingType) S U
    & SubChoice R S U := {
  semiring_closed_subproof : semiring_closed S
}.

HB.builders Context R S U & SubChoice_isSubPzSemiRing R S U.
HB.instance Definition _ := SubChoice_isSubNmodule.Build R S U
  (semiring_closedD semiring_closed_subproof).
HB.instance Definition _ := SubNmodule_isSubPzSemiRing.Build R S U
  (semiring_closedM semiring_closed_subproof).
HB.end.

HB.factory Record SubChoice_isSubNzSemiRing (R : nzSemiRingType) S U
    & SubChoice R S U := {
  semiring_closed_subproof : semiring_closed S
}.

HB.builders Context R S U & SubChoice_isSubNzSemiRing R S U.
HB.instance Definition _ := SubChoice_isSubPzSemiRing.Build R S U
  semiring_closed_subproof.
HB.instance Definition _ := SubPzSemiRing_isNonZero.Build R S U.
HB.end.

HB.factory Record SubChoice_isSubComPzSemiRing (R : comPzSemiRingType) S U
    & SubChoice R S U := {
  semiring_closed_subproof : semiring_closed S
}.

HB.builders Context R S U & SubChoice_isSubComPzSemiRing R S U.
HB.instance Definition _ := SubChoice_isSubPzSemiRing.Build R S U
  semiring_closed_subproof.
HB.instance Definition _ := SubSemiRing_isSubComSemiRing.Build R S U.
HB.end.

HB.factory Record SubChoice_isSubComNzSemiRing (R : comNzSemiRingType) S U
    & SubChoice R S U := {
  semiring_closed_subproof : semiring_closed S
}.

HB.builders Context R S U & SubChoice_isSubComNzSemiRing R S U.
HB.instance Definition _ := SubChoice_isSubComPzSemiRing.Build R S U
  semiring_closed_subproof.
HB.instance Definition _ := SubPzSemiRing_isNonZero.Build R S U.
HB.end.

HB.factory Record SubChoice_isSubPzRing (R : pzRingType) S U
    & SubChoice R S U := {
  subring_closed_subproof : subring_closed S
}.

HB.builders Context R S U & SubChoice_isSubPzRing R S U.
HB.instance Definition _ := SubChoice_isSubZmodule.Build R S U
  (subring_closedB subring_closed_subproof).
HB.instance Definition _ := SubZmodule_isSubPzRing.Build R S U
  subring_closed_subproof.
HB.end.

HB.factory Record SubChoice_isSubNzRing (R : nzRingType) S U
    & SubChoice R S U := {
  subring_closed_subproof : subring_closed S
}.

HB.builders Context R S U & SubChoice_isSubNzRing R S U.
HB.instance Definition _ := SubChoice_isSubPzRing.Build R S U
  subring_closed_subproof.
HB.instance Definition _ := SubPzSemiRing_isNonZero.Build R S U.
HB.end.

HB.factory Record SubChoice_isSubComPzRing (R : comPzRingType) S U
    & SubChoice R S U := {
  subring_closed_subproof : subring_closed S
}.

HB.builders Context R S U & SubChoice_isSubComPzRing R S U.
HB.instance Definition _ := SubChoice_isSubPzRing.Build R S U
  subring_closed_subproof.
HB.instance Definition _ := SubSemiRing_isSubComSemiRing.Build R S U.
HB.end.

HB.factory Record SubChoice_isSubComNzRing (R : comNzRingType) S U
    & SubChoice R S U := {
  subring_closed_subproof : subring_closed S
}.

HB.builders Context R S U & SubChoice_isSubComNzRing R S U.
HB.instance Definition _ := SubChoice_isSubComPzRing.Build R S U
  subring_closed_subproof.
HB.instance Definition _ := SubPzSemiRing_isNonZero.Build R S U.
HB.end.

HB.factory Record SubChoice_isSubLSemiModule
    (R : pzSemiRingType) (V : lSemiModType R) S W & SubChoice V S W := {
  subsemimod_closed_subproof : subsemimod_closed S
}.

HB.builders Context R V S W & SubChoice_isSubLSemiModule R V S W.
HB.instance Definition _ := SubChoice_isSubNmodule.Build V S W
  (subsemimod_closedD subsemimod_closed_subproof).
HB.instance Definition _ := SubNmodule_isSubLSemiModule.Build R V S W
  subsemimod_closed_subproof.
HB.end.

HB.factory Record SubChoice_isSubLmodule (R : pzRingType) (V : lmodType R) S W
    & SubChoice V S W := {
  subsemimod_closed_subproof : subsemimod_closed S
}.

HB.builders Context R V S W & SubChoice_isSubLmodule R V S W.
HB.instance Definition _ := SubChoice_isSubZmodule.Build V S W
  (subsemimod_closedB subsemimod_closed_subproof).
HB.instance Definition _ := SubNmodule_isSubLSemiModule.Build R V S W
  subsemimod_closed_subproof.
HB.end.

HB.factory Record SubChoice_isSubPzLSemiAlgebra
    (R : pzSemiRingType) (A : pzLSemiAlgType R) S W & SubChoice A S W := {
  subsemialg_closed_subproof : subsemialg_closed S
}.

HB.builders Context R A S W & SubChoice_isSubPzLSemiAlgebra R A S W.
HB.instance Definition _ := SubChoice_isSubPzSemiRing.Build A S W
  (subsemialg_closedM subsemialg_closed_subproof).
HB.instance Definition _ := SubNmodule_isSubLSemiModule.Build R A S W
  (subsemialg_closedZ subsemialg_closed_subproof).
HB.instance Definition _ :=
  SubSemiRing_SubLSemiModule_isSubLSemiAlgebra.Build R A S W.
HB.end.

HB.factory Record SubChoice_isSubNzLSemiAlgebra
    (R : nzSemiRingType) (A : nzLSemiAlgType R) S W & SubChoice A S W := {
  subsemialg_closed_subproof : subsemialg_closed S
}.

HB.builders Context R A S W & SubChoice_isSubNzLSemiAlgebra R A S W.
HB.instance Definition _ := SubChoice_isSubPzLSemiAlgebra.Build R A S W
  subsemialg_closed_subproof.
HB.instance Definition _ := SubPzSemiRing_isNonZero.Build A S W.
HB.end.

HB.factory Record SubChoice_isSubPzLalgebra
    (R : pzRingType) (A : pzLalgType R) S W & SubChoice A S W := {
  subsemialg_closed_subproof : subsemialg_closed S
}.

HB.builders Context R A S W & SubChoice_isSubPzLalgebra R A S W.
HB.instance Definition _ := SubChoice_isSubPzRing.Build A S W
  (subsemialg_closedBM subsemialg_closed_subproof).
HB.instance Definition _ := SubNmodule_isSubLSemiModule.Build R A S W
  (subsemialg_closedZ subsemialg_closed_subproof).
HB.instance Definition _ := SubRing_SubLmodule_isSubLalgebra.Build R A S W.
HB.end.

HB.factory Record SubChoice_isSubNzLalgebra
    (R : nzRingType) (A : nzLalgType R) S W & SubChoice A S W := {
  subsemialg_closed_subproof : subsemialg_closed S
}.

HB.builders Context R A S W & SubChoice_isSubNzLalgebra R A S W.
HB.instance Definition _ := SubChoice_isSubPzLalgebra.Build R A S W
  subsemialg_closed_subproof.
HB.instance Definition _ := SubPzSemiRing_isNonZero.Build A S W.
HB.end.

HB.factory Record SubChoice_isSubPzSemiAlgebra
    (R : pzSemiRingType) (A : pzSemiAlgType R) S W & SubChoice A S W := {
  subsemialg_closed_subproof : subsemialg_closed S
}.

HB.builders Context R A S W & SubChoice_isSubPzSemiAlgebra R A S W.
HB.instance Definition _ := SubChoice_isSubPzLSemiAlgebra.Build R A S W
  subsemialg_closed_subproof.
HB.instance Definition _ := SubLSemiAlgebra_isSubSemiAlgebra.Build R A S W.
HB.end.

HB.factory Record SubChoice_isSubNzSemiAlgebra
    (R : nzSemiRingType) (A : nzSemiAlgType R) S W & SubChoice A S W := {
  subsemialg_closed_subproof : subsemialg_closed S
}.

HB.builders Context R A S W & SubChoice_isSubNzSemiAlgebra R A S W.
HB.instance Definition _ := SubChoice_isSubPzSemiAlgebra.Build R A S W
  subsemialg_closed_subproof.
HB.instance Definition _ := SubPzSemiRing_isNonZero.Build A S W.
HB.end.

HB.factory Record SubChoice_isSubPzAlgebra
    (R : pzRingType) (A : pzAlgType R) S W & SubChoice A S W := {
  subsemialg_closed_subproof : subsemialg_closed S
}.

HB.builders Context R A S W & SubChoice_isSubPzAlgebra R A S W.
HB.instance Definition _ := SubChoice_isSubPzLalgebra.Build R A S W
  subsemialg_closed_subproof.
HB.instance Definition _ := SubLSemiAlgebra_isSubSemiAlgebra.Build R A S W.
HB.end.

HB.factory Record SubChoice_isSubNzAlgebra
    (R : nzRingType) (A : nzAlgType R) S W & SubChoice A S W := {
  subsemialg_closed_subproof : subsemialg_closed S
}.

HB.builders Context R A S W & SubChoice_isSubNzAlgebra R A S W.
HB.instance Definition _ := SubChoice_isSubPzAlgebra.Build R A S W
  subsemialg_closed_subproof.
HB.instance Definition _ := SubPzSemiRing_isNonZero.Build A S W.
HB.end.

Module SubExports.

Notation "[ 'SubNmodule_isSubNzSemiRing' 'of' U 'by' <: ]" :=
  (SubNmodule_isSubNzSemiRing.Build _ _ U (@rpred1M _ _))
  (format "[ 'SubNmodule_isSubNzSemiRing'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubChoice_isSubNzSemiRing' 'of' U 'by' <: ]" :=
  (SubChoice_isSubNzSemiRing.Build _ _ U (semiringClosedP _))
  (format "[ 'SubChoice_isSubNzSemiRing'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubSemiRing_isSubComSemiRing' 'of' U 'by' <: ]" :=
  (SubSemiRing_isSubComSemiRing.Build _ _ U)
  (format "[ 'SubSemiRing_isSubComSemiRing'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubChoice_isSubComNzSemiRing' 'of' U 'by' <: ]" :=
  (SubChoice_isSubComNzSemiRing.Build _ _ U (semiringClosedP _))
  (format "[ 'SubChoice_isSubComNzSemiRing'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubZmodule_isSubNzRing' 'of' U 'by' <: ]" :=
  (SubZmodule_isSubNzRing.Build _ _ U (subringClosedP _))
  (format "[ 'SubZmodule_isSubNzRing'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubChoice_isSubNzRing' 'of' U 'by' <: ]" :=
  (SubChoice_isSubNzRing.Build _ _ U (subringClosedP _))
  (format "[ 'SubChoice_isSubNzRing'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubChoice_isSubComNzRing' 'of' U 'by' <: ]" :=
  (SubChoice_isSubComNzRing.Build _ _ U (subringClosedP _))
  (format "[ 'SubChoice_isSubComNzRing'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubNmodule_isSubLSemiModule' 'of' U 'by' <: ]" :=
  (SubNmodule_isSubLSemiModule.Build _ _ _ U (subsemimodClosedP _))
  (format "[ 'SubNmodule_isSubLSemiModule'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubChoice_isSubLSemiModule' 'of' U 'by' <: ]" :=
  (SubChoice_isSubLSemiModule.Build _ _ _ U (subsemimodClosedP _))
  (format "[ 'SubChoice_isSubLSemiModule'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubChoice_isSubLmodule' 'of' U 'by' <: ]" :=
  (SubChoice_isSubLmodule.Build _ _ _ U (subsemimodClosedP _))
  (format "[ 'SubChoice_isSubLmodule'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubSemiRing_SubLSemiModule_isSubLSemiAlgebra' 'of' U 'by' <: ]" :=
  (SubSemiRing_SubLSemiModule_isSubLSemiAlgebra.Build _ _ _ U)
  (format "[ 'SubSemiRing_SubLSemiModule_isSubLSemiAlgebra'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubRing_SubLmodule_isSubLalgebra' 'of' U 'by' <: ]" :=
  (SubRing_SubLmodule_isSubLalgebra.Build _ _ _ U)
  (format "[ 'SubRing_SubLmodule_isSubLalgebra'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubLSemiAlgebra_isSubSemiAlgebra' 'of' U 'by' <: ]" :=
  (SubLSemiAlgebra_isSubSemiAlgebra.Build _ _ _ U)
  (format "[ 'SubLSemiAlgebra_isSubSemiAlgebra'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubChoice_isSubPzLSemiAlgebra' 'of' U 'by' <: ]" :=
  (SubChoice_isSubPzLSemiAlgebra.Build _ _ _ U (subsemialgClosedP _))
  (format "[ 'SubChoice_isSubPzLSemiAlgebra'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubChoice_isSubNzLSemiAlgebra' 'of' U 'by' <: ]" :=
  (SubChoice_isSubNzLSemiAlgebra.Build _ _ _ U (subsemialgClosedP _))
  (format "[ 'SubChoice_isSubNzLSemiAlgebra'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubChoice_isSubPzLalgebra' 'of' U 'by' <: ]" :=
  (SubChoice_isSubPzLalgebra.Build _ _ _ U (subsemialgClosedP _))
  (format "[ 'SubChoice_isSubPzLalgebra'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubChoice_isSubNzLalgebra' 'of' U 'by' <: ]" :=
  (SubChoice_isSubNzLalgebra.Build _ _ _ U (subsemialgClosedP _))
  (format "[ 'SubChoice_isSubNzLalgebra'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubChoice_isSubPzSemiAlgebra' 'of' U 'by' <: ]" :=
  (SubChoice_isSubPzSemiAlgebra.Build _ _ _ U (subsemialgClosedP _))
  (format "[ 'SubChoice_isSubPzSemiAlgebra'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubChoice_isSubNzSemiAlgebra' 'of' U 'by' <: ]" :=
  (SubChoice_isSubNzSemiAlgebra.Build _ _ _ U (subsemialgClosedP _))
  (format "[ 'SubChoice_isSubNzSemiAlgebra'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubChoice_isSubPzAlgebra' 'of' U 'by' <: ]" :=
  (SubChoice_isSubPzAlgebra.Build _ _ _ U (subsemialgClosedP _))
  (format "[ 'SubChoice_isSubPzAlgebra'  'of'  U  'by'  <: ]")
  : form_scope.
Notation "[ 'SubChoice_isSubNzAlgebra' 'of' U 'by' <: ]" :=
  (SubChoice_isSubNzAlgebra.Build _ _ _ U (subsemialgClosedP _))
  (format "[ 'SubChoice_isSubNzAlgebra'  'of'  U  'by'  <: ]")
  : form_scope.

End SubExports.
HB.export SubExports.

Module Theory.

Definition addrA := @addrA.
Definition addrC := @addrC.
Definition add0r := @add0r.
Definition addNr := @addNr.
Definition addr0 := addr0.
Definition addrN := addrN.
Definition subrr := subrr.
Definition addrCA := addrCA.
Definition addrAC := addrAC.
Definition addrACA := addrACA.
Definition addKr := addKr.
Definition addNKr := addNKr.
Definition addrK := addrK.
Definition addrNK := addrNK.
Definition subrK := subrK.
Definition subrKC := subrKC.
Definition subKr := subKr.
Definition addrI := @addrI.
Definition addIr := @addIr.
Definition subrI := @subrI.
Definition subIr := @subIr.
Arguments addrI {V} y [x1 x2].
Arguments addIr {V} x [x1 x2].
Arguments subrI {V} y [x1 x2].
Arguments subIr {V} x [x1 x2].
Definition opprK := @opprK.
Arguments opprK {V}.
Definition oppr_inj := @oppr_inj.
Arguments oppr_inj {V} [x1 x2].
Definition oppr0 := oppr0.
Definition oppr_eq0 := oppr_eq0.
Definition opprD := opprD.
Definition opprB := opprB.
Definition addrKA := addrKA.
Definition subrKA := subrKA.
Definition subr0 := subr0.
Definition sub0r := sub0r.
Definition subr_eq := subr_eq.
Definition addr0_eq := addr0_eq.
Definition subr0_eq := subr0_eq.
Definition subr_eq0 := subr_eq0.
Definition addr_eq0 := addr_eq0.
Definition eqr_opp := eqr_opp.
Definition eqr_oppLR := eqr_oppLR.
Definition sumrN := sumrN.
Definition sumrB := sumrB.
Definition sumrMnl := sumrMnl.
Definition sumrMnr := sumrMnr.
Definition sumr_const := sumr_const.
Definition sumr_const_nat := sumr_const_nat.
Definition telescope_sumr := telescope_sumr.
Definition telescope_sumr_eq := @telescope_sumr_eq.
Arguments telescope_sumr_eq {V n m} f u.
Definition mulr0n := mulr0n.
Definition mulr1n := mulr1n.
Definition mulr2n := mulr2n.
Definition mulrS := mulrS.
Definition mulrSr := mulrSr.
Definition mulrb := mulrb.
Definition mul0rn := mul0rn.
Definition mulNrn := mulNrn.
Definition mulrnDl := mulrnDl.
Definition mulrnDr := mulrnDr.
Definition mulrnBl := mulrnBl.
Definition mulrnBr := mulrnBr.
Definition mulrnA := mulrnA.
Definition mulrnAC := mulrnAC.
Definition iter_addr := iter_addr.
Definition iter_addr_0 := iter_addr_0.
Definition mulrA := @mulrA.
Definition mul1r := @mul1r.
Definition mulr1 := @mulr1.
Definition mulrDl := @mulrDl.
Definition mulrDr := @mulrDr.
Definition oner_neq0 := @oner_neq0.
Definition oner_eq0 := oner_eq0.
Definition mul0r := @mul0r.
Definition mulr0 := @mulr0.
Definition mulrN := mulrN.
Definition mulNr := mulNr.
Definition mulrNN := mulrNN.
Definition mulN1r := mulN1r.
Definition mulrN1 := mulrN1.
Definition mulr_suml := mulr_suml.
Definition mulr_sumr := mulr_sumr.
Definition mulrBl := mulrBl.
Definition mulrBr := mulrBr.
Definition mulrnAl := mulrnAl.
Definition mulrnAr := mulrnAr.
Definition mulr_natl := mulr_natl.
Definition mulr_natr := mulr_natr.
Definition natrD := natrD.
Definition nat1r := nat1r.
Definition natr1 := natr1.
Arguments natr1 {R} n.
Arguments nat1r {R} n.
Definition natrB := natrB.
Definition natr_sum := natr_sum.
Definition natrM := natrM.
Definition natrX := natrX.
Definition expr0 := expr0.
Definition exprS := exprS.
Definition expr1 := expr1.
Definition expr2 := expr2.
Definition expr0n := expr0n.
Definition expr1n := expr1n.
Definition exprD := exprD.
Definition exprSr := exprSr.
Definition expr_sum := expr_sum.
Definition commr_sym := commr_sym.
Definition commr_refl := commr_refl.
Definition commr0 := commr0.
Definition commr1 := commr1.
Definition commrN := commrN.
Definition commrN1 := commrN1.
Definition commrD := commrD.
Definition commrB := commrB.
Definition commr_sum := commr_sum.
Definition commr_prod := commr_prod.
Definition commrMn := commrMn.
Definition commrM := commrM.
Definition commr_nat := commr_nat.
Definition commrX := commrX.
Definition exprMn_comm := exprMn_comm.
Definition commr_sign := commr_sign.
Definition exprMn_n := exprMn_n.
Definition exprM := exprM.
Definition exprAC := exprAC.
Definition expr_mod := expr_mod.
Definition expr_dvd := expr_dvd.
Definition signr_odd := signr_odd.
Definition signr_eq0 := signr_eq0.
Definition mulr_sign := mulr_sign.
Definition signr_addb := signr_addb.
Definition signrN := signrN.
Definition signrE := signrE.
Definition mulr_signM := mulr_signM.
Definition exprNn := exprNn.
Definition sqrrN := sqrrN.
Definition sqrr_sign := sqrr_sign.
Definition signrMK := signrMK.
Definition mulrI_eq0 := mulrI_eq0.
Definition lreg_neq0 := lreg_neq0.
Definition mulrI0_lreg := mulrI0_lreg.
Definition lregN := lregN.
Definition lreg1 := lreg1.
Definition lregM := lregM.
Definition lregX := lregX.
Definition lreg_sign := lreg_sign.
Definition mulIr_eq0 := mulIr_eq0.
Definition mulIr0_rreg := mulIr0_rreg.
Definition rreg_neq0 := rreg_neq0.
Definition rregN := rregN.
Definition rreg1 := rreg1.
Definition rregM := rregM.
Definition revrX := revrX.
Definition rregX := rregX.
Definition exprDn_comm := exprDn_comm.
Definition exprBn_comm := exprBn_comm.
Definition subrXX_comm := subrXX_comm.
Definition exprD1n := exprD1n.
Definition subrX1 := subrX1.
Definition sqrrD1 := sqrrD1.
Definition sqrrB1 := sqrrB1.
Definition subr_sqr_1 := subr_sqr_1.
Definition pcharf0 := pcharf0.
Definition pcharf_prime := pcharf_prime.
Definition mulrn_pchar := mulrn_pchar.
Definition dvdn_pcharf := dvdn_pcharf.
Definition pcharf_eq := pcharf_eq.
Definition bin_lt_pcharf_0 := bin_lt_pcharf_0.
Definition pFrobenius_autE := pFrobenius_autE.
Definition pFrobenius_aut0 := pFrobenius_aut0.
Definition pFrobenius_aut1 := pFrobenius_aut1.
Definition pFrobenius_autD_comm := pFrobenius_autD_comm.
Definition pFrobenius_autMn := pFrobenius_autMn.
Definition pFrobenius_aut_nat := pFrobenius_aut_nat.
Definition pFrobenius_autM_comm := pFrobenius_autM_comm.
Definition pFrobenius_autX := pFrobenius_autX.
Definition pFrobenius_autN := pFrobenius_autN.
Definition pFrobenius_autB_comm := pFrobenius_autB_comm.
Definition exprNn_pchar := exprNn_pchar.
Definition addrr_pchar2 := addrr_pchar2.
Definition oppr_pchar2 := oppr_pchar2.
Definition addrK_pchar2 := addrK_pchar2.
Definition addKr_pchar2 := addKr_pchar2.
Definition iter_mulr := iter_mulr.
Definition iter_mulr_1 := iter_mulr_1.
Definition prodr_const := prodr_const.
Definition prodr_const_nat := prodr_const_nat.
Definition mulrC := @mulrC.
Definition mulrCA := mulrCA.
Definition mulrAC := mulrAC.
Definition mulrACA := mulrACA.
Definition exprMn := exprMn.
Definition prodrXl := prodrXl.
Definition prodrXr := prodrXr.
Definition prodrN := prodrN.
Definition prodrMn_const := prodrMn_const.
Definition prodrM_comm := prodrM_comm.
Definition prodrMl_comm := prodrMl_comm.
Definition prodrMr_comm := prodrMr_comm.
Definition prodrMl := prodrMl.
Definition prodrMr := prodrMr.
Definition prodrMn := prodrMn.
Definition rev_prodr := rev_prodr.
Definition natr_prod := natr_prod.
Definition prodr_undup_exp_count := prodr_undup_exp_count.
Definition exprDn := exprDn.
Definition exprBn := exprBn.
Definition subrXX := subrXX.
Definition sqrrD := sqrrD.
Definition sqrrB := sqrrB.
Definition subr_sqr := subr_sqr.
Definition subr_sqrDB := subr_sqrDB.
Definition exprDn_pchar := exprDn_pchar.
Definition rpred0D := @rpred0D.
Definition rpred0 := rpred0.
Definition rpredD := rpredD.
Definition rpredNr := @rpredNr.
Definition rpred_sum := rpred_sum.
Definition rpredMn := rpredMn.
Definition rpredN := rpredN.
Definition rpredB := rpredB.
Definition rpredBC := rpredBC.
Definition rpredMNn := rpredMNn.
Definition rpredDr := rpredDr.
Definition rpredDl := rpredDl.
Definition rpredBr := rpredBr.
Definition rpredBl := rpredBl.
Definition zmodClosedP := zmodClosedP.
Definition rpredMsign := rpredMsign.
Definition rpred1M := @rpred1M.
Definition rpred1 := @rpred1.
Definition rpredM := @rpredM.
Definition rpred_prod := rpred_prod.
Definition rpredX := rpredX.
Definition rpred_nat := rpred_nat.
Definition rpredN1 := rpredN1.
Definition rpred_sign := rpred_sign.
Definition semiringClosedP := semiringClosedP.
Definition subringClosedP := subringClosedP.
Definition rpredZsign := rpredZsign.
Definition rpredZnat := rpredZnat.
Definition submodClosedP := submodClosedP.
Definition subalgClosedP := subalgClosedP.
Definition rpredZ := @rpredZ.
Definition nmod_morphism := nmod_morphism.
Definition zmod_morphism := zmod_morphism.
Definition raddf0 := raddf0.
Definition raddf_eq0 := raddf_eq0.
Definition raddf_inj := raddf_inj.
Definition raddfN := raddfN.
Definition raddfD := raddfD.
Definition raddfB := raddfB.
Definition raddf_sum := raddf_sum.
Definition raddfMn := raddfMn.
Definition raddfMNn := raddfMNn.
Definition raddfMnat := raddfMnat.
Definition raddfMsign := raddfMsign.
Definition can2_nmod_morphism := can2_nmod_morphism.
Definition can2_zmod_morphism := can2_zmod_morphism.
Definition monoid_morphism := monoid_morphism.
Definition rmorph0 := rmorph0.
Definition rmorphN := rmorphN.
Definition rmorphD := rmorphD.
Definition rmorphB := rmorphB.
Definition rmorph_sum := rmorph_sum.
Definition rmorphMn := rmorphMn.
Definition rmorphMNn := rmorphMNn.
Definition rmorphism_monoidP := rmorphism_monoidP.
Definition rmorph1 := rmorph1.
Definition rmorph_eq1 := rmorph_eq1.
Definition rmorphM := rmorphM.
Definition rmorphMsign := rmorphMsign.
Definition rmorph_nat := rmorph_nat.
Definition rmorph_eq_nat := rmorph_eq_nat.
Definition rmorph_prod := rmorph_prod.
Definition rmorphXn := rmorphXn.
Definition rmorphN1 := rmorphN1.
Definition rmorph_sign := rmorph_sign.
Definition rmorph_pchar := rmorph_pchar.
Definition can2_monoid_morphism := can2_monoid_morphism.
Definition rmorph_comm := rmorph_comm.
Definition scalerA := scalerA.
Definition scale1r := @scale1r.
Definition scalerDr := @scalerDr.
Definition scalerDl := @scalerDl.
Definition scaler0 := scaler0.
Definition scale0r := @scale0r.
Definition scaleNr := scaleNr.
Definition scaleN1r := scaleN1r.
Definition scalerN := scalerN.
Definition scalerBl := scalerBl.
Definition scalerBr := scalerBr.
Definition scaler_nat := scaler_nat.
Definition scalerMnl := scalerMnl.
Definition scalerMnr := scalerMnr.
Definition scaler_suml := scaler_suml.
Definition scaler_sumr := scaler_sumr.
Definition scalerAl := @scalerAl.
Definition mulr_algl := mulr_algl.
Definition scaler_sign := scaler_sign.
Definition signrZK := signrZK.
Definition scalerCA := scalerCA.
Definition scalerAr := @scalerAr.
Definition mulr_algr := mulr_algr.
Definition comm_alg := comm_alg.
Definition exprZn := exprZn.
Definition scaler_prodl := scaler_prodl.
Definition scaler_prodr := scaler_prodr.
Definition scaler_prod := scaler_prod.
Definition raddfZnat := raddfZnat.
Definition raddfZsign := raddfZsign.
Definition in_algE := in_algE.
Definition scalable_for := scalable_for.
Definition semilinear_for := semilinear_for.
Definition linear_for := linear_for.
Definition nmod_morphism_semilinear := nmod_morphism_semilinear.
Definition zmod_morphism_linear := zmod_morphism_linear.
Definition scalable_semilinear := scalable_semilinear.
Definition scalable_linear := scalable_linear.
Definition linear0 := linear0.
Definition linearN := linearN.
Definition linearD := linearD.
Definition linearB := linearB.
Definition linear_sum := linear_sum.
Definition linearMn := linearMn.
Definition linearMNn := linearMNn.
Definition semilinearP := semilinearP.
Definition linearP := linearP.
Definition linearZ_LR := linearZ_LR.
Definition linearZ := linearZ.
Definition semilinearPZ := semilinearPZ.
Definition linearPZ := linearPZ.
Definition linearZZ := linearZZ.
Definition semiscalarP := semiscalarP.
Definition scalarP := scalarP.
Definition scalarZ := scalarZ.
Definition can2_scalable := can2_scalable.
Definition can2_linear := can2_linear.
Definition can2_semilinear := can2_semilinear.
Definition rmorph_alg := rmorph_alg.

Definition raddf := (raddf0, raddfN, raddfD, raddfMn).

Definition rmorphE :=
  (rmorphD, rmorph0, rmorphB, rmorphN, rmorphMNn, rmorphMn, rmorph1, rmorphXn).

Definition linearE :=
  (linearD, linear0, linearB, linearMNn, linearMn, linearZ).

Notation null_fun V := (null_fun V) (only parsing).
Notation in_alg A := (in_alg A) (only parsing).

End Theory.

Module AllExports.
HB.reexport.
End AllExports.

End GRing.

Export AllExports.
Export Scale.Exports.
Export ClosedExports.

Variant Ione := IOne : Ione.
Inductive Inatmul :=
  | INatmul : Ione -> nat -> Inatmul
  | IOpp : Inatmul -> Inatmul.
Variant Idummy_placeholder :=.

Definition parse (x : Number.int) : Inatmul :=
  match x with
  | Number.IntDecimal (Decimal.Pos u) => INatmul IOne (Nat.of_uint u)
  | Number.IntDecimal (Decimal.Neg u) => IOpp (INatmul IOne (Nat.of_uint u))
  | Number.IntHexadecimal (Hexadecimal.Pos u) =>
      INatmul IOne (Nat.of_hex_uint u)
  | Number.IntHexadecimal (Hexadecimal.Neg u) =>
      IOpp (INatmul IOne (Nat.of_hex_uint u))
  end.

Definition print (x : Inatmul) : option Number.int :=
  match x with
  | INatmul IOne n =>
      Some (Number.IntDecimal (Decimal.Pos (Nat.to_uint n)))
  | IOpp (INatmul IOne n) =>
      Some (Number.IntDecimal (Decimal.Neg (Nat.to_uint n)))
  | _ => None
  end.

Arguments GRing.one {_}.
Set Warnings "-via-type-remapping,-via-type-mismatch".
Number Notation Idummy_placeholder parse print (via Inatmul
  mapping [[natmul] => INatmul, [opp] => IOpp, [one] => IOne])
  : ring_scope.
Set Warnings "via-type-remapping,via-type-mismatch".
Arguments GRing.one : clear implicits.

Notation "0" := (@zero _) : ring_scope.
Notation "-%R" := (@opp _) : ring_scope.
Notation "- x" := (opp x) : ring_scope.
Notation "+%R" := (@add _) : function_scope.
Notation "x + y" := (add x y) : ring_scope.
Notation "x - y" := (add x (- y)) : ring_scope.
Arguments natmul : simpl never.
Notation "x *+ n" := (natmul x n) : ring_scope.
Notation "x *- n" := (opp (x *+ n)) : ring_scope.
Notation "s `_ i" := (seq.nth 0%R s%R i) : ring_scope.
Notation support := 0.-support.

Notation "1" := (@one _) : ring_scope.
Notation "- 1" := (opp 1) : ring_scope.

Notation "n %:R" := (natmul 1 n) : ring_scope.
Arguments GRing.pchar R%_type.
Notation "[ 'pchar' R ]" := (GRing.pchar R) : ring_scope.
Notation has_pchar0 R := (GRing.pchar R =i pred0).
Notation pFrobenius_aut chRp := (pFrobenius_aut chRp).
Notation "*%R" := (@mul _) : function_scope.
Notation "x * y" := (mul x y) : ring_scope.
Arguments exp : simpl never.
Notation "x ^+ n" := (exp x n) : ring_scope.

Notation "*:%R" := (@scale _ _) : function_scope.
Notation "a *: m" := (scale a m) : ring_scope.
Notation "k %:A" := (scale k 1) : ring_scope.
Notation "\0" := (null_fun _) : ring_scope.
Notation "f \+ g" := (add_fun f g) : ring_scope.
Notation "f \- g" := (sub_fun f g) : ring_scope.
Notation "\- f" := (opp_fun f) : ring_scope.
Notation "a \*: f" := (scale_fun a f) : ring_scope.
Notation "x \*o f" := (mull_fun x f) : ring_scope.
Notation "x \o* f" := (mulr_fun x f) : ring_scope.
Notation "f \* g" := (mul_fun f g) : ring_scope.

Arguments mull_fun {_ _}  a f _ /.
Arguments mulr_fun {_ _} a f _ /.
Arguments scale_fun {_ _ _} a f _ /.
Arguments mul_fun {_ _} f g _ /.

Notation "\sum_ ( i <- r | P ) F" :=
  (\big[+%R/0%R]_(i <- r | P%B) F%R) : ring_scope.
Notation "\sum_ ( i <- r ) F" :=
  (\big[+%R/0%R]_(i <- r) F%R) : ring_scope.
Notation "\sum_ ( m <= i < n | P ) F" :=
  (\big[+%R/0%R]_(m <= i < n | P%B) F%R) : ring_scope.
Notation "\sum_ ( m <= i < n ) F" :=
  (\big[+%R/0%R]_(m <= i < n) F%R) : ring_scope.
Notation "\sum_ ( i | P ) F" :=
  (\big[+%R/0%R]_(i | P%B) F%R) : ring_scope.
Notation "\sum_ i F" :=
  (\big[+%R/0%R]_i F%R) : ring_scope.
Notation "\sum_ ( i : t | P ) F" :=
  (\big[+%R/0%R]_(i : t | P%B) F%R) (only parsing) : ring_scope.
Notation "\sum_ ( i : t ) F" :=
  (\big[+%R/0%R]_(i : t) F%R) (only parsing) : ring_scope.
Notation "\sum_ ( i < n | P ) F" :=
  (\big[+%R/0%R]_(i < n | P%B) F%R) : ring_scope.
Notation "\sum_ ( i < n ) F" :=
  (\big[+%R/0%R]_(i < n) F%R) : ring_scope.
Notation "\sum_ ( i 'in' A | P ) F" :=
  (\big[+%R/0%R]_(i in A | P%B) F%R) : ring_scope.
Notation "\sum_ ( i 'in' A ) F" :=
  (\big[+%R/0%R]_(i in A) F%R) : ring_scope.

Notation "\prod_ ( i <- r | P ) F" :=
  (\big[*%R/1%R]_(i <- r | P%B) F%R) : ring_scope.
Notation "\prod_ ( i <- r ) F" :=
  (\big[*%R/1%R]_(i <- r) F%R) : ring_scope.
Notation "\prod_ ( m <= i < n | P ) F" :=
  (\big[*%R/1%R]_(m <= i < n | P%B) F%R) : ring_scope.
Notation "\prod_ ( m <= i < n ) F" :=
  (\big[*%R/1%R]_(m <= i < n) F%R) : ring_scope.
Notation "\prod_ ( i | P ) F" :=
  (\big[*%R/1%R]_(i | P%B) F%R) : ring_scope.
Notation "\prod_ i F" :=
  (\big[*%R/1%R]_i F%R) : ring_scope.
Notation "\prod_ ( i : t | P ) F" :=
  (\big[*%R/1%R]_(i : t | P%B) F%R) (only parsing) : ring_scope.
Notation "\prod_ ( i : t ) F" :=
  (\big[*%R/1%R]_(i : t) F%R) (only parsing) : ring_scope.
Notation "\prod_ ( i < n | P ) F" :=
  (\big[*%R/1%R]_(i < n | P%B) F%R) : ring_scope.
Notation "\prod_ ( i < n ) F" :=
  (\big[*%R/1%R]_(i < n) F%R) : ring_scope.
Notation "\prod_ ( i 'in' A | P ) F" :=
  (\big[*%R/1%R]_(i in A | P%B) F%R) : ring_scope.
Notation "\prod_ ( i 'in' A ) F" :=
  (\big[*%R/1%R]_(i in A) F%R) : ring_scope.

Notation "R ^c" := (converse R) : type_scope.
Notation "R ^o" := (regular R) : type_scope.



Section Sum.

Variables (aT : finType) (rT : nmodType).
Variables (I : Type) (r : seq I) (P : pred I) (F : I -> {ffun aT -> rT}).

Lemma sum_ffunE x : (\sum_(i <- r | P i) F i) x = \sum_(i <- r | P i) F i x.
Admitted.

Lemma sum_ffun :
  \sum_(i <- r | P i) F i = [ffun x => \sum_(i <- r | P i) F i x].
Admitted.

End Sum.

Section FinFunSemiRing.




Variable (aT : finType) (R : pzSemiRingType).

Definition ffun_one : {ffun aT -> R} := [ffun => 1].
Definition ffun_mul (f g : {ffun aT -> R}) := [ffun x => f x * g x].

Fact ffun_mulA : associative ffun_mul.
Admitted.
Fact ffun_mul_1l : left_id ffun_one ffun_mul.
Admitted.
Fact ffun_mul_1r : right_id ffun_one ffun_mul.
Admitted.
Fact ffun_mul_addl :  left_distributive ffun_mul (@ffun_add _ _).
Admitted.
Fact ffun_mul_addr :  right_distributive ffun_mul (@ffun_add _ _).
Admitted.
Fact ffun_mul_0l :  left_zero (@ffun_zero _ _) ffun_mul.
Admitted.
Fact ffun_mul_0r :  right_zero (@ffun_zero _ _) ffun_mul.
Admitted.

#[export]
HB.instance Definition _ := Nmodule_isPzSemiRing.Build {ffun aT -> R}
  ffun_mulA ffun_mul_1l ffun_mul_1r ffun_mul_addl ffun_mul_addr
  ffun_mul_0l ffun_mul_0r.
Definition ffun_semiring : pzSemiRingType := {ffun aT -> R}.
End FinFunSemiRing.

Section FinFunSemiRing.

Variable (aT : finType) (R : nzSemiRingType) (a : aT).

Fact ffun1_nonzero : ffun_one aT R != 0.
Admitted.



End FinFunSemiRing.

HB.instance Definition _ (aT : finType) (R : pzRingType) :=
  Zmodule_isPzRing.Build {ffun aT -> R}
  (@ffun_mulA _ _) (@ffun_mul_1l _ _) (@ffun_mul_1r _ _)
  (@ffun_mul_addl _ _) (@ffun_mul_addr _ _).




Section FinFunRing.

Variable (aT : finType) (R : nzRingType) (a : aT).


HB.instance Definition _ :=
  PzSemiRing_isNonZero.Build {ffun aT -> R} (@ffun1_nonzero _ _ a).

Definition ffun_ring : nzRingType := {ffun aT -> R}.

End FinFunRing.


Section FinFunComRing.

Variable (aT : finType) (R : comPzRingType) (a : aT).

Fact ffun_mulC : commutative (@ffun_mul aT R).
Admitted.



End FinFunComRing.

Section FinFunLSemiMod.

Variable (R : pzSemiRingType) (aT : finType) (rT : lSemiModType R).

Implicit Types f g : {ffun aT -> rT}.

Definition ffun_scale k f := [ffun a => k *: f a].

Fact ffun_scaleA k1 k2 f :
  ffun_scale k1 (ffun_scale k2 f) = ffun_scale (k1 * k2) f.
Admitted.
Fact ffun_scale0r f : ffun_scale 0 f = 0.
Admitted.
Fact ffun_scale1 : left_id 1 ffun_scale.
Admitted.
Fact ffun_scale_addr k : {morph (ffun_scale k) : x y / x + y}.
Admitted.
Fact ffun_scale_addl u : {morph (ffun_scale)^~ u : k1 k2 / k1 + k2}.
Admitted.

#[export]
HB.instance Definition _ := Nmodule_isLSemiModule.Build R {ffun aT -> rT}
  ffun_scaleA ffun_scale0r ffun_scale1 ffun_scale_addr ffun_scale_addl.

End FinFunLSemiMod.

#[export]
HB.instance Definition _ (R : pzRingType) (aT : finType) (rT : lmodType R) :=
  LSemiModule.on {ffun aT -> rT}.





Section PairSemiRing.

Variables R1 R2 : pzSemiRingType.

Definition mul_pair (x y : R1 * R2) := (x.1 * y.1, x.2 * y.2).

Fact pair_mulA : associative mul_pair.
Admitted.

Fact pair_mul1l : left_id (1, 1) mul_pair.
Admitted.

Fact pair_mul1r : right_id (1, 1) mul_pair.
Admitted.

Fact pair_mulDl : left_distributive mul_pair +%R.
Admitted.

Fact pair_mulDr : right_distributive mul_pair +%R.
Admitted.

Fact pair_mul0r : left_zero 0 mul_pair.
Admitted.

Fact pair_mulr0 : right_zero 0 mul_pair.
Admitted.

#[export]
HB.instance Definition _ := Nmodule_isPzSemiRing.Build (R1 * R2)%type
  pair_mulA pair_mul1l pair_mul1r pair_mulDl pair_mulDr pair_mul0r pair_mulr0.

Fact fst_is_monoid_morphism : monoid_morphism fst.
Admitted.
#[export]
HB.instance Definition _ := isMonoidMorphism.Build (R1 * R2)%type R1 fst
  fst_is_monoid_morphism.
Fact snd_is_monoid_morphism : monoid_morphism snd.
Admitted.
#[export]
HB.instance Definition _ := isMonoidMorphism.Build (R1 * R2)%type R2 snd
  snd_is_monoid_morphism.

End PairSemiRing.

Section PairSemiRing.

Variables R1 R2 : nzSemiRingType.

Fact pair_one_neq0 : 1 != 0 :> R1 * R2.
Admitted.

#[export]
HB.instance Definition _ := PzSemiRing_isNonZero.Build (R1 * R2)%type
  pair_one_neq0.

End PairSemiRing.

Section PairComSemiRing.

Variables R1 R2 : comPzSemiRingType.

Fact pair_mulC : commutative (@mul_pair R1 R2).
Admitted.

#[export]
HB.instance Definition _ := SemiRing_hasCommutativeMul.Build (R1 * R2)%type
  pair_mulC.

End PairComSemiRing.


#[export]
HB.instance Definition _ (R1 R2 : comNzSemiRingType) :=
  NzSemiRing.on (R1 * R2)%type.
#[export]
HB.instance Definition _ (R1 R2 : pzRingType) := PzSemiRing.on (R1 * R2)%type.
#[export]
HB.instance Definition _ (R1 R2 : nzRingType) := NzSemiRing.on (R1 * R2)%type.
#[export]
HB.instance Definition _ (R1 R2 : comPzRingType) := PzRing.on (R1 * R2)%type.
#[export]
HB.instance Definition _ (R1 R2 : comNzRingType) := NzRing.on (R1 * R2)%type.


Section PairLSemiMod.

Variables (R : pzSemiRingType) (V1 V2 : lSemiModType R).

Definition scale_pair a (v : V1 * V2) : V1 * V2 := (a *: v.1, a *: v.2).

Fact pair_scaleA a b u : scale_pair a (scale_pair b u) = scale_pair (a * b) u.
Admitted.

Fact pair_scale0 u : scale_pair 0 u = 0.
Admitted.

Fact pair_scale1 u : scale_pair 1 u = u.
Admitted.

Fact pair_scaleDr : right_distributive scale_pair +%R.
Admitted.

Fact pair_scaleDl u : {morph scale_pair^~ u: a b / a + b}.
Admitted.

#[export]
HB.instance Definition _ := Nmodule_isLSemiModule.Build R (V1 * V2)%type
  pair_scaleA pair_scale0 pair_scale1 pair_scaleDr pair_scaleDl.

Fact fst_is_scalable : scalable fst.
Admitted.
#[export]
HB.instance Definition _ :=
  isScalable.Build R (V1 * V2)%type V1 *:%R fst fst_is_scalable.
Fact snd_is_scalable : scalable snd.
Admitted.
#[export]
HB.instance Definition _ :=
  isScalable.Build R (V1 * V2)%type V2 *:%R snd snd_is_scalable.

End PairLSemiMod.

Section PairLSemiAlg.

Variables (R : pzSemiRingType) (A1 A2 : pzLSemiAlgType R).

Fact pair_scaleAl a (u v : A1 * A2) : a *: (u * v) = (a *: u) * v.
Admitted.

#[export]
HB.instance Definition _ := LSemiModule_isLSemiAlgebra.Build R (A1 * A2)%type
  pair_scaleAl.


#[export]
HB.instance Definition _ := RMorphism.on (@fst A1 A2).
#[export]
HB.instance Definition _ := RMorphism.on (@snd A1 A2).


End PairLSemiAlg.

Section PairSemiAlg.

Variables (R : pzSemiRingType) (A1 A2 : pzSemiAlgType R).

Fact pair_scaleAr a (u v : A1 * A2) : a *: (u * v) = u * (a *: v).
Admitted.

#[export]
HB.instance Definition _ := LSemiAlgebra_isSemiAlgebra.Build R (A1 * A2)%type
  pair_scaleAr.

End PairSemiAlg.


#[export]
HB.instance Definition _ (R : pzSemiRingType) (A1 A2 : comPzSemiAlgType R) :=
  PzSemiAlgebra.on (A1 * A2)%type.
#[export]
HB.instance Definition _ (R : nzSemiRingType) (A1 A2 : nzLSemiAlgType R) :=
  PzLSemiAlgebra.on (A1 * A2)%type.
#[export]
HB.instance Definition _ (R : nzSemiRingType) (A1 A2 : nzSemiAlgType R) :=
  PzSemiAlgebra.on (A1 * A2)%type.
#[export]
HB.instance Definition _ (R : pzRingType) (V1 V2 : lmodType R) :=
  LSemiModule.on (V1 * V2)%type.
#[export]
HB.instance Definition _ (R : pzRingType) (A1 A2 : pzLalgType R) :=
  PzLSemiAlgebra.on (A1 * A2)%type.
#[export]
HB.instance Definition _ (R : nzRingType) (A1 A2 : nzLalgType R) :=
  NzLSemiAlgebra.on (A1 * A2)%type.
#[export]
HB.instance Definition _ (R : pzRingType) (A1 A2 : pzAlgType R) :=
  PzSemiAlgebra.on (A1 * A2)%type.
#[export]
HB.instance Definition _ (R : nzRingType) (A1 A2 : nzAlgType R) :=
  NzSemiAlgebra.on (A1 * A2)%type.
#[export]
HB.instance Definition _ (R : pzRingType) (A1 A2 : comPzAlgType R) :=
  PzAlgebra.on (A1 * A2)%type.
#[export]
HB.instance Definition _ (R : nzRingType) (A1 A2 : comNzAlgType R) :=
  NzAlgebra.on (A1 * A2)%type.


Lemma pairMnE (M1 M2 : zmodType) (x : M1 * M2) n :
  x *+ n = (x.1 *+ n, x.2 *+ n).
Admitted.



HB.instance Definition _ := Zmodule_isComNzRing.Build bool
  andbA andbC andTb andb_addl isT.



HB.instance Definition _ := Nmodule_isComNzSemiRing.Build nat
  mulnA mulnC mul1n mulnDl mul0n erefl.

HB.instance Definition _ (R : pzSemiRingType) :=
  isMonoidMorphism.Build nat R (natmul 1) (mulr1n 1, natrM R).

Lemma natr0E : 0 = 0%N.
Admitted.
Lemma natr1E : 1 = 1%N.
Admitted.
Lemma natn n : n%:R = n.
Admitted.
Lemma natrDE n m : n + m = (n + m)%N.
Admitted.
Lemma natrME n m : n * m = (n * m)%N.
Admitted.
Lemma natrXE n m : n ^+ m = (n ^ m)%N.
Admitted.
Definition natrE := (natr0E, natr1E, natn, natrDE, natrME, natrXE).

End algebra.

End alg.

End algebra.

End mathcomp.

End mathcomp_DOT_algebra_DOT_alg_DOT_algebra.
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

Section UnitAlgebraTheory.

Variable (R : comUnitRingType) (A : unitAlgType R).

Variables S : {pred A}.

Definition divalg_closed := [/\ 1 \in S, linear_closed S & divr_2closed S].

Lemma divalg_closedBdiv : divalg_closed -> divring_closed S.
Admitted.

End UnitAlgebraTheory.

Definition integral_domain_axiom (R : pzRingType) :=
  forall x y : R, x * y = 0 -> (x == 0) || (y == 0).

HB.mixin Record ComUnitRing_isIntegral R & ComUnitRing R := {
  mulf_eq0_subproof : integral_domain_axiom R;
}.

#[mathcomp(axiom="integral_domain_axiom"), short(type="idomainType")]
HB.structure Definition IntegralDomain :=
  {R of ComUnitRing_isIntegral R & ComUnitRing R}.

Definition field_axiom (R : unitRingType) := forall x : R, x != 0 -> x \in unit.

HB.mixin Record UnitRing_isField R & UnitRing R := {
  fieldP : field_axiom R;
}.

#[mathcomp(axiom="field_axiom"), short(type="fieldType")]
HB.structure Definition Field := { R of IntegralDomain R & UnitRing_isField R }.

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

Module Export AllExports.
HB.reexport.
End AllExports.

End GRing.

Export AllExports.

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
