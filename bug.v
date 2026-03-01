
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-cannot-define-projection,-implicit-core-hint-db,-notation-overridden" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/kami-PARENT-bedrock2-PARENT-rupicola-PARENT-fiat_crypto/rupicola/bedrock2/deps/kami/Kami" "Kami" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-top" "Kami.Ex.InDepthTutorial") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 715 lines to 68 lines, then from 82 lines to 339 lines, then from 346 lines to 79 lines, then from 93 lines to 463 lines, then from 469 lines to 163 lines, then from 177 lines to 1417 lines, then from 1423 lines to 259 lines, then from 273 lines to 1395 lines, then from 1401 lines to 288 lines, then from 302 lines to 1848 lines, then from 1854 lines to 332 lines, then from 346 lines to 2539 lines, then from 2544 lines to 359 lines, then from 373 lines to 2172 lines, then from 2178 lines to 435 lines, then from 449 lines to 2689 lines, then from 2695 lines to 445 lines, then from 459 lines to 1294 lines, then from 1300 lines to 536 lines, then from 550 lines to 1869 lines, then from 1874 lines to 828 lines, then from 842 lines to 1343 lines, then from 1349 lines to 965 lines, then from 979 lines to 1319 lines, then from 1325 lines to 1066 lines, then from 1080 lines to 2623 lines, then from 2630 lines to 1416 lines, then from 1430 lines to 4533 lines, then from 4538 lines to 1481 lines, then from 1495 lines to 1858 lines, then from 1864 lines to 1509 lines, then from 1523 lines to 9047 lines, then from 9040 lines to 1528 lines, then from 1542 lines to 1969 lines, then from 1975 lines to 1561 lines, then from 1575 lines to 1793 lines, then from 1799 lines to 1580 lines, then from 1594 lines to 2031 lines, then from 2037 lines to 1665 lines, then from 1679 lines to 2368 lines, then from 2371 lines to 1896 lines, then from 1910 lines to 2404 lines, then from 2407 lines to 1940 lines, then from 1954 lines to 2089 lines, then from 2096 lines to 1954 lines, then from 1968 lines to 3993 lines, then from 3996 lines to 3113 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 1.354 sec
   Expected coqc peak memory usage on this file: 2050152.0 kb *)









Require Corelib.Init.Byte.
Require Corelib.Lists.ListDef.
Require Corelib.Setoids.Setoid.
Require Corelib.Numbers.BinNums.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Init.Ltac.
Require Corelib.BinNums.PosDef.
Require Corelib.BinNums.NatDef.
Require Corelib.Program.Basics.
Require Corelib.Classes.RelationClasses.
Require Corelib.BinNums.IntDef.
Require Corelib.Classes.Morphisms.
Require Stdlib.Classes.DecidableClass.
Require Stdlib.Logic.Decidable.
Require Stdlib.Logic.EqdepFacts.
Require Stdlib.Logic.HLevelsBase.
Require Stdlib.Sets.Relations_1.
Require Stdlib.BinNums.IntDef.
Require Stdlib.BinNums.PosDef.
Require Stdlib.BinNums.NatDef.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Init.Byte.
Require Stdlib.Lists.ListDef.
Require Stdlib.Logic.Eqdep_dec.
Require Stdlib.Numbers.BinNums.
Require Stdlib.Program.Basics.
Require Stdlib.Relations.Relation_Definitions.
Require Stdlib.Setoids.Setoid.
Require Stdlib.Bool.Bool.
Require Stdlib.Relations.Relation_Operators.
Require Stdlib.Relations.Operators_Properties.
Require Stdlib.PArith.BinPosDef.
Require Stdlib.Relations.Relations.
Require Stdlib.Numbers.NumPrelude.
Require Stdlib.Structures.Equalities.
Require Stdlib.Structures.Orders.
Require Stdlib.Structures.OrdersTac.
Require Stdlib.Structures.OrdersFacts.
Require Stdlib.Structures.GenericMinMax.
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
Require Stdlib.Numbers.Integer.Abstract.ZMulOrder.
Require Stdlib.Numbers.Natural.Abstract.NSub.
Require Stdlib.Numbers.Integer.Abstract.ZMaxMin.
Require Stdlib.Numbers.Integer.Abstract.ZParity.
Require Stdlib.Numbers.Integer.Abstract.ZSgnAbs.
Require Stdlib.Numbers.Natural.Abstract.NDiv.
Require Stdlib.Numbers.Natural.Abstract.NGcd.
Require Stdlib.Numbers.Natural.Abstract.NMaxMin.
Require Stdlib.Numbers.Natural.Abstract.NParity.
Require Stdlib.Numbers.Natural.Abstract.NSqrt.
Require Stdlib.Numbers.Integer.Abstract.ZDivFloor.
Require Stdlib.Numbers.Integer.Abstract.ZDivTrunc.
Require Stdlib.Numbers.Integer.Abstract.ZGcd.
Require Stdlib.Numbers.Natural.Abstract.NDiv0.
Require Stdlib.Numbers.Natural.Abstract.NPow.
Require Stdlib.Numbers.Integer.Abstract.ZPow.
Require Stdlib.Numbers.Natural.Abstract.NLcm.
Require Stdlib.Numbers.Natural.Abstract.NLog.
Require Stdlib.Numbers.Integer.Abstract.ZBits.
Require Stdlib.Numbers.Integer.Abstract.ZLcm.
Require Stdlib.Numbers.Natural.Abstract.NBits.
Require Stdlib.Numbers.Natural.Abstract.NLcm0.
Require Stdlib.Numbers.Integer.Abstract.ZProperties.
Require Stdlib.Numbers.Natural.Abstract.NProperties.
Require Stdlib.Arith.PeanoNat.
Require Stdlib.Arith.Between.
Require Stdlib.Arith.Compare_dec.
Require Stdlib.Arith.EqNat.
Require Stdlib.Arith.Factorial.
Require Stdlib.Arith.Wf_nat.
Require Stdlib.Arith.Peano_dec.
Require Stdlib.Lists.List.
Require Stdlib.Sorting.Sorted.
Require Stdlib.Sorting.SetoidList.
Require Stdlib.Structures.DecidableType.
Require Stdlib.Structures.OrderedType.
Require Stdlib.PArith.BinPos.
Require Stdlib.Arith.Arith_base.
Require Stdlib.FSets.FMapInterface.
Require Stdlib.PArith.Pnat.
Require Stdlib.FSets.FMapList.
Require Stdlib.Vectors.Fin.
Require Stdlib.NArith.BinNatDef.
Require Stdlib.Vectors.VectorDef.
Require Stdlib.NArith.BinNat.
Require Stdlib.NArith.Ndiv_def.
Require Stdlib.NArith.Ngcd_def.
Require Stdlib.NArith.Nsqrt_def.
Require Stdlib.NArith.Nnat.
Require Stdlib.Vectors.VectorSpec.
Require Stdlib.ZArith.BinIntDef.
Require Stdlib.Vectors.VectorEq.
Require Stdlib.Vectors.Vector.
Require Stdlib.NArith.NArith_base.
Require Stdlib.Strings.Byte.
Require Stdlib.Strings.Ascii.
Require Stdlib.Strings.String.
Require Kami.Lib.StringEq.

Module Export AdmitTactic.
Module Import LocalFalse.
Inductive False : Prop := .
End LocalFalse.
Axiom proof_admitted : False.
Import Coq.Init.Ltac.
Tactic Notation "admit" := abstract case proof_admitted.
End AdmitTactic.

Module Export Stdlib_DOT_ZArith_DOT_BinInt_WRAPPED.
Module Export BinInt.
Export Stdlib.Numbers.BinNums.
Export Stdlib.PArith.BinPos.
Export Stdlib.PArith.Pnat.
Import Stdlib.NArith.BinNat.
Import Stdlib.Bool.Bool.
Import Stdlib.Structures.Equalities.
Import Stdlib.Structures.GenericMinMax.
Import Stdlib.Structures.OrdersFacts.
Import Stdlib.Numbers.Integer.Abstract.ZAxioms.
Import Stdlib.Numbers.Integer.Abstract.ZProperties.
Import Stdlib.Classes.DecidableClass.









#[local] Open Scope Z_scope.



Module Z
 <: ZAxiomsSig
 <: UsualOrderedTypeFull
 <: UsualDecidableTypeFull
 <: TotalOrder.



Include BinIntDef.Z.

Register add as num.Z.add.
Register opp as num.Z.opp.
Register succ as num.Z.succ.
Register pred as num.Z.pred.
Register sub as num.Z.sub.
Register mul as num.Z.mul.
Register pow as num.Z.pow.
Register of_nat as num.Z.of_nat.



Set Inline Level 30.



Definition eq := @Logic.eq Z.
Definition eq_equiv := @eq_equivalence Z.

Notation "x <= y <= z" := (x <= y /\ y <= z) : Z_scope.
Notation "x <= y < z" := (x <= y /\ y < z) : Z_scope.
Notation "x < y < z" := (x < y /\ y < z) : Z_scope.
Notation "x < y <= z" := (x < y /\ y <= z) : Z_scope.

Definition divide x y := exists z, y = z*x.
Notation "( x | y )" := (divide x y) (at level 0).

Definition Even a := exists b, a = 2*b.
Definition Odd a := exists b, a = 2*b+1.

Register le as num.Z.le.
Register lt as num.Z.lt.
Register ge as num.Z.ge.
Register gt as num.Z.gt.
Register leb as num.Z.leb.
Register ltb as num.Z.ltb.
Register geb as num.Z.geb.
Register gtb as num.Z.gtb.
Register eqb as num.Z.eqb.



Definition eq_dec (x y : Z) : {x = y} + {x <> y}.
Admitted.



#[local] Obligation Tactic := simpl_relation.
Program Definition succ_wd : Proper (eq==>eq) succ. exact (_). Defined.
Program Definition pred_wd : Proper (eq==>eq) pred. exact (_). Defined.
Program Definition opp_wd : Proper (eq==>eq) opp. exact (_). Defined.
Program Definition add_wd : Proper (eq==>eq==>eq) add. exact (_). Defined.
Program Definition sub_wd : Proper (eq==>eq==>eq) sub. exact (_). Defined.
Program Definition mul_wd : Proper (eq==>eq==>eq) mul. exact (_). Defined.
Program Definition lt_wd : Proper (eq==>eq==>iff) lt. exact (_). Defined.
Program Definition div_wd : Proper (eq==>eq==>eq) div. exact (_). Defined.
Program Definition mod_wd : Proper (eq==>eq==>eq) modulo. exact (_). Defined.
Program Definition quot_wd : Proper (eq==>eq==>eq) quot. exact (_). Defined.
Program Definition rem_wd : Proper (eq==>eq==>eq) rem. exact (_). Defined.
Program Definition pow_wd : Proper (eq==>eq==>eq) pow. exact (_). Defined.
Program Definition testbit_wd : Proper (eq==>eq==>Logic.eq) testbit. exact (_). Defined.





Lemma pos_sub_spec p q :
 pos_sub p q =
 match (p ?= q)%positive with
   | Eq => 0
   | Lt => neg (q - p)
   | Gt => pos (p - q)
 end.
Admitted.

Lemma pos_sub_discr p q :
  match pos_sub p q with
  | Z0 => p = q
  | pos k => p = q + k
  | neg k => q = p + k
  end%positive.
Admitted.



Lemma pos_sub_diag p : pos_sub p p = 0.
Admitted.

Lemma pos_sub_lt p q : (p < q)%positive -> pos_sub p q = neg (q - p).
Admitted.

Lemma pos_sub_gt p q : (q < p)%positive -> pos_sub p q = pos (p - q).
Admitted.



Lemma pos_sub_opp p q : - pos_sub p q = pos_sub q p.
Admitted.



Module Import Private_BootStrap.



Lemma add_0_r n : n + 0 = n.
Admitted.

Lemma mul_0_r n : n * 0 = 0.
Admitted.

Lemma mul_1_l n : 1 * n = n.
Admitted.



Lemma add_comm n m : n + m = m + n.
Admitted.



Lemma opp_add_distr n m : - (n + m) = - n + - m.
Admitted.



Lemma opp_inj n m : -n = -m -> n = m.
Admitted.



Lemma pos_sub_add p q r :
  pos_sub (p + q) r = pos p + pos_sub q r.
Admitted.

#[local] Arguments add !x !y.

Lemma add_assoc_pos p n m : pos p + (n + m) = pos p + n + m.
Admitted.

Lemma add_assoc n m p : n + (m + p) = n + m + p.
Admitted.



Lemma add_opp_diag_r n : n + - n = 0.
Admitted.



Lemma mul_opp_r n m : n * - m = - (n * m).
Admitted.



Lemma mul_add_distr_pos (p:positive) n m :
 (n + m) * pos p = n * pos p + m * pos p.
Admitted.

Lemma mul_add_distr_r n m p : (n + m) * p = n * p + m * p.
Admitted.

End Private_BootStrap.





Lemma one_succ : 1 = succ 0.
Admitted.

Lemma two_succ : 2 = succ 1.
Admitted.



Lemma add_0_l n : 0 + n = n.
Admitted.

Lemma add_succ_l n m : succ n + m = succ (n + m).
Admitted.



Lemma opp_0 : -0 = 0.
Admitted.

Lemma opp_succ n : -(succ n) = pred (-n).
Admitted.



#[local] Arguments pos_sub : simpl nomatch.

Lemma succ_pred n : succ (pred n) = n.
Admitted.

Lemma pred_succ n : pred (succ n) = n.
Admitted.



Lemma sub_0_r n : n - 0 = n.
Admitted.

Lemma sub_succ_r n m : n - succ m = pred (n - m).
Admitted.



Lemma mul_0_l n : 0 * n = 0.
Admitted.

Lemma mul_succ_l n m : succ n * m = n * m + m.
Admitted.



Lemma eqb_eq n m : (n =? m) = true <-> n = m.
Admitted.

#[global]
Instance Decidable_eq_Z : forall (x y : Z), Decidable (eq x y) := {
  Decidable_spec := Z.eqb_eq x y
}.

Lemma ltb_lt n m : (n <? m) = true <-> n < m.
Admitted.

#[global]
Instance Decidable_lt_Z : forall (x y : Z), DecidableClass.Decidable (x < y)%Z := {
  Decidable_spec := Z.ltb_lt x y
}.

Lemma leb_le n m : (n <=? m) = true <-> n <= m.
Admitted.

#[global]
Instance Decidable_le_Z : forall (x y : Z), DecidableClass.Decidable (x <= y)%Z := {
  Decidable_spec := Z.leb_le x y
}.

Lemma gtb_gt n m : (n >? m) = true <-> n > m.
Admitted.

#[global]
Instance Decidable_gt_Z : forall (x y : Z), DecidableClass.Decidable (x > y)%Z := {
  Decidable_spec := Z.gtb_gt x y
}.

Lemma geb_ge n m : (n >=? m) = true <-> n >= m.
Admitted.

#[global]
Instance Decidable_ge_Z : forall (x y : Z), DecidableClass.Decidable (x >= y)%Z := {
  Decidable_spec := Z.geb_ge x y
}.

Lemma compare_eq_iff n m : (n ?= m) = Eq <-> n = m.
Admitted.

Lemma compare_sub n m : (n ?= m) = (n - m ?= 0).
Admitted.

Lemma compare_antisym n m : (m ?= n) = CompOpp (n ?= m).
Admitted.

Lemma compare_lt_iff n m : (n ?= m) = Lt <-> n < m.
Admitted.

Lemma compare_le_iff n m : (n ?= m) <> Gt <-> n <= m.
Admitted.



Include BoolOrderFacts.



Lemma lt_succ_r n m : n < succ m <-> n<=m.
Admitted.



Lemma max_l n m : m<=n -> max n m = n.
Admitted.

Lemma max_r n m :  n<=m -> max n m = m.
Admitted.

Lemma min_l n m : n<=m -> min n m = n.
Admitted.

Lemma min_r n m : m<=n -> min n m = m.
Admitted.



Lemma peano_ind (P : Z -> Prop) :
  P 0 ->
  (forall x, P x -> P (succ x)) ->
  (forall x, P x -> P (pred x)) ->
  forall z, P z.
Admitted.

Lemma bi_induction (P : Z -> Prop) :
  Proper (eq ==> iff) P ->
  P 0 ->
  (forall x, P x <-> P (succ x)) ->
  forall z, P z.
Admitted.



Include ZBasicProp <+ UsualMinMaxLogicalProperties <+ UsualMinMaxDecProperties.

Register eq_decidable as num.Z.eq_decidable.
Register le_decidable as num.Z.le_decidable.
Register lt_decidable as num.Z.lt_decidable.



Lemma abs_eq n : 0 <= n -> abs n = n.
Admitted.

Lemma abs_neq n : n <= 0 -> abs n = - n.
Admitted.



Lemma sgn_null n : n = 0 -> sgn n = 0.
Admitted.

Lemma sgn_pos n : 0 < n -> sgn n = 1.
Admitted.

Lemma sgn_neg n : n < 0 -> sgn n = -1.
Admitted.



Lemma pow_0_r n : n^0 = 1.
Admitted.

Lemma pow_succ_r n m : 0<=m -> n^(succ m) = n * n^m.
Admitted.

Lemma pow_neg_r n m : m<0 -> n^m = 0.
Admitted.



Lemma pow_pos_fold n p : pow_pos n p = n ^ (pos p).
Admitted.



Lemma square_spec n : square n = n * n.
Admitted.



Lemma sqrtrem_spec n : 0<=n ->
 let (s,r) := sqrtrem n in n = s*s + r /\ 0 <= r <= 2*s.
Admitted.

Lemma sqrt_spec n : 0<=n ->
 let s := sqrt n in s*s <= n < (succ s)*(succ s).
Admitted.

Lemma sqrt_neg n : n<0 -> sqrt n = 0.
Admitted.

Lemma sqrtrem_sqrt n : fst (sqrtrem n) = sqrt n.
Admitted.



Lemma log2_spec n : 0 < n -> 2^(log2 n) <= n < 2^(succ (log2 n)).
Admitted.

Lemma log2_nonpos n : n<=0 -> log2 n = 0.
Admitted.



Lemma even_spec n : even n = true <-> Even n.
Admitted.

Lemma odd_spec n : odd n = true <-> Odd n.
Admitted.



Lemma double_spec n : double n = 2*n.
Admitted.

Lemma succ_double_spec n : succ_double n = 2*n + 1.
Admitted.

Lemma pred_double_spec n : pred_double n = 2*n - 1.
Admitted.



Lemma div_eucl_0_r a : Z.div_eucl a 0 = (0, a).
Admitted.

Lemma mod_0_r a : a mod 0 = a.
Admitted.

Lemma div_0_r a : a/0 = 0.
Admitted.

Lemma pos_div_eucl_eq a b : 0 < b ->
  let (q, r) := pos_div_eucl a b in pos a = q * b + r.
Admitted.

Lemma div_eucl_eq a b : b<>0 ->
 let (q, r) := div_eucl a b in a = b * q + r.
Admitted.

Lemma div_mod a b : b<>0 -> a = b*(a/b) + (a mod b).
Admitted.

Lemma pos_div_eucl_bound a b : 0<b -> 0 <= snd (pos_div_eucl a b) < b.
Admitted.

Lemma mod_pos_bound a b : 0 < b -> 0 <= a mod b < b.
Admitted.

Definition mod_bound_pos a b (_:0<=a) := mod_pos_bound a b.

Lemma mod_neg_bound a b : b < 0 -> b < a mod b <= 0.
Admitted.



Theorem quotrem_eq a b : let (q,r) := quotrem a b in a = q * b + r.
Admitted.

Lemma quot_rem' a b : a = b*(a÷b) + rem a b.
Admitted.

Lemma quot_rem a b : b<>0 -> a = b*(a÷b) + rem a b.
Admitted.

Lemma rem_bound_pos a b : 0<=a -> 0<b -> 0 <= rem a b < b.
Admitted.

Lemma rem_opp_l' a b : rem (-a) b = - (rem a b).
Admitted.

Lemma rem_opp_r' a b : rem a (-b) = rem a b.
Admitted.

Lemma rem_opp_l a b : b<>0 -> rem (-a) b = - (rem a b).
Admitted.

Lemma rem_opp_r a b : b<>0 -> rem a (-b) = rem a b.
Admitted.



Lemma divide_Zpos p q : (pos p|pos q) <-> (p|q)%positive.
Admitted.

Lemma divide_Zpos_Zneg_r n p : (n|pos p) <-> (n|neg p).
Admitted.

Lemma divide_Zpos_Zneg_l n p : (pos p|n) <-> (neg p|n).
Admitted.



Lemma ggcd_gcd a b : fst (ggcd a b) = gcd a b.
Admitted.

Lemma ggcd_correct_divisors a b :
  let '(g,(aa,bb)) := ggcd a b in
  a = g*aa /\ b = g*bb.
Admitted.

Lemma gcd_divide_l a b : (gcd a b | a).
Admitted.

Lemma gcd_divide_r a b : (gcd a b | b).
Admitted.

Lemma gcd_greatest a b c : (c|a) -> (c|b) -> (c | gcd a b).
Admitted.

Lemma gcd_nonneg a b : 0 <= gcd a b.
Admitted.



Theorem ggcd_opp a b :
  ggcd (-a) b = (let '(g,(aa,bb)) := ggcd a b in (g,(-aa,bb))).
Admitted.



Lemma testbit_of_N a n :
 testbit (of_N a) (of_N n) = N.testbit a n.
Admitted.

Lemma testbit_of_N' a n : 0<=n ->
 testbit (of_N a) n = N.testbit a (to_N n).
Admitted.

Lemma testbit_Zpos a n : 0<=n ->
 testbit (pos a) n = N.testbit (N.pos a) (to_N n).
Admitted.

Lemma testbit_Zneg a n : 0<=n ->
 testbit (neg a) n = negb (N.testbit (Pos.pred_N a) (to_N n)).
Admitted.



Lemma div2_spec a : div2 a = shiftr a 1.
Admitted.

Lemma testbit_0_l n : testbit 0 n = false.
Admitted.

Lemma testbit_neg_r a n : n<0 -> testbit a n = false.
Admitted.

Lemma testbit_odd_0 a : testbit (2*a+1) 0 = true.
Admitted.

Lemma testbit_even_0 a : testbit (2*a) 0 = false.
Admitted.

Lemma testbit_odd_succ a n : 0<=n ->
 testbit (2*a+1) (succ n) = testbit a n.
Admitted.

Lemma testbit_even_succ a n : 0<=n ->
 testbit (2*a) (succ n) = testbit a n.
Admitted.



Lemma shiftr_spec_aux a n m : 0<=n -> 0<=m ->
                              testbit (shiftr a n) m = testbit a (m+n).
Admitted.

Lemma shiftl_spec_low a n m : m<n ->
                              testbit (shiftl a n) m = false.
Admitted.

Lemma shiftl_spec_high a n m : 0<=m -> n<=m ->
                               testbit (shiftl a n) m = testbit a (m-n).
Admitted.

Lemma shiftr_spec a n m : 0<=m ->
 testbit (shiftr a n) m = testbit a (m+n).
Admitted.



Lemma lor_spec a b n :
 testbit (lor a b) n = testbit a n || testbit b n.
Admitted.

Lemma land_spec a b n :
 testbit (land a b) n = testbit a n && testbit b n.
Admitted.

Lemma ldiff_spec a b n :
 testbit (ldiff a b) n = testbit a n && negb (testbit b n).
Admitted.

Lemma lxor_spec a b n :
 testbit (lxor a b) n = xorb (testbit a n) (testbit b n).
Admitted.



Include ZExtraProp.

Theorem mod_bound_pos_le a b : 0 <= a -> 0 < b -> 0 <= a mod b <= a.
Admitted.



Lemma gt_lt_iff n m : n > m <-> m < n.
Admitted.

Lemma gt_lt n m : n > m -> m < n.
Admitted.

Lemma lt_gt n m : n < m -> m > n.
Admitted.

Lemma ge_le_iff n m : n >= m <-> m <= n.
Admitted.

Lemma ge_le n m : n >= m -> m <= n.
Admitted.

Lemma le_ge n m : n <= m -> m >= n.
Admitted.



Lemma gtb_ltb n m : (n >? m) = (m <? n).
Admitted.

Lemma geb_leb n m : (n >=? m) = (m <=? n).
Admitted.

Lemma gtb_lt n m : (n >? m) = true <-> m < n.
Admitted.

Lemma geb_le n m : (n >=? m) = true <-> m <= n.
Admitted.

Lemma gtb_spec n m : BoolSpec (m<n) (n<=m) (n >? m).
Admitted.

Lemma geb_spec n m : BoolSpec (m<=n) (n<m) (n >=? m).
Admitted.



Lemma add_reg_l n m p : n + m = n + p -> m = p.
Admitted.

Lemma opp_eq_mul_m1 n : - n = n * -1.
Admitted.

Lemma add_diag n : n + n = 2 * n.
Admitted.



Lemma compare_opp n m : (- n ?= - m) = (m ?= n).
Admitted.



Lemma add_compare_mono_l n m p : (n + m ?= n + p) = (m ?= p).
Admitted.



Lemma testbit_mod_pow2 a n i (H : 0 <= n)
  : testbit (a mod 2 ^ n) i = ((i <? n) && testbit a i)%bool.
Admitted.

Lemma testbit_ones n i (H : 0 <= n)
  : testbit (ones n) i = ((0 <=? i) && (i <? n))%bool.
Admitted.

Lemma testbit_ones_nonneg n i (Hn : 0 <= n) (Hi: 0 <= i)
  : testbit (ones n) i = (i <? n).
Admitted.

End Z.

Bind Scope Z_scope with Z.t Z.



Number Notation Z Z.of_num_int Z.to_num_int : Z_scope.

Infix "+" := Z.add : Z_scope.
Notation "- x" := (Z.opp x) : Z_scope.
Infix "-" := Z.sub : Z_scope.
Infix "*" := Z.mul : Z_scope.
Infix "^" := Z.pow : Z_scope.
Infix "/" := Z.div : Z_scope.
Infix "mod" := Z.modulo (at level 40, no associativity) : Z_scope.
Infix "÷" := Z.quot (at level 40, left associativity) : Z_scope.
Infix "?=" := Z.compare (at level 70, no associativity) : Z_scope.
Infix "=?" := Z.eqb (at level 70, no associativity) : Z_scope.
Infix "<=?" := Z.leb (at level 70, no associativity) : Z_scope.
Infix "<?" := Z.ltb (at level 70, no associativity) : Z_scope.
Infix ">=?" := Z.geb (at level 70, no associativity) : Z_scope.
Infix ">?" := Z.gtb (at level 70, no associativity) : Z_scope.
Notation "( x | y )" := (Z.divide x y) (at level 0) : Z_scope.
Infix "<=" := Z.le : Z_scope.
Infix "<" := Z.lt : Z_scope.
Infix ">=" := Z.ge : Z_scope.
Infix ">" := Z.gt : Z_scope.
Notation "x <= y <= z" := (x <= y /\ y <= z) : Z_scope.
Notation "x <= y < z" := (x <= y /\ y < z) : Z_scope.
Notation "x < y < z" := (x < y /\ y < z) : Z_scope.
Notation "x < y <= z" := (x < y /\ y <= z) : Z_scope.



Module Pos2Z.

Lemma id p : Z.to_pos (Z.pos p) = p.
Admitted.

Lemma inj p q : Z.pos p = Z.pos q -> p = q.
Admitted.

Lemma inj_iff p q : Z.pos p = Z.pos q <-> p = q.
Admitted.

Lemma is_pos p : 0 < Z.pos p.
Admitted.

Lemma is_nonneg p : 0 <= Z.pos p.
Admitted.

Lemma inj_1 : Z.pos 1 = 1.
Admitted.

Lemma inj_xO p : Z.pos p~0 = 2 * Z.pos p.
Admitted.

Lemma inj_xI p : Z.pos p~1 = 2 * Z.pos p + 1.
Admitted.

Lemma inj_succ p : Z.pos (Pos.succ p) = Z.succ (Z.pos p).
Admitted.

Lemma inj_add p q : Z.pos (p+q) = Z.pos p + Z.pos q.
Admitted.

Lemma inj_sub p q : (p < q)%positive ->
 Z.pos (q-p) = Z.pos q - Z.pos p.
Admitted.

Lemma inj_sub_max p q : Z.pos (p - q) = Z.max 1 (Z.pos p - Z.pos q).
Admitted.

Lemma inj_pred p : p <> 1%positive ->
 Z.pos (Pos.pred p) = Z.pred (Z.pos p).
Admitted.

Lemma inj_mul p q : Z.pos (p*q) = Z.pos p * Z.pos q.
Admitted.

Lemma inj_pow_pos p q : Z.pos (p^q) = Z.pow_pos (Z.pos p) q.
Admitted.

Lemma inj_pow p q : Z.pos (p^q) = (Z.pos p)^(Z.pos q).
Admitted.

Lemma inj_square p : Z.pos (Pos.square p) = Z.square (Z.pos p).
Admitted.

Lemma inj_compare p q : (p ?= q)%positive = (Z.pos p ?= Z.pos q).
Admitted.

Lemma inj_leb p q : (p <=? q)%positive = (Z.pos p <=? Z.pos q).
Admitted.

Lemma inj_ltb p q : (p <? q)%positive = (Z.pos p <? Z.pos q).
Admitted.

Lemma inj_eqb p q : (p =? q)%positive = (Z.pos p =? Z.pos q).
Admitted.

Lemma inj_max p q : Z.pos (Pos.max p q) = Z.max (Z.pos p) (Z.pos q).
Admitted.

Lemma inj_min p q : Z.pos (Pos.min p q) = Z.min (Z.pos p) (Z.pos q).
Admitted.

Lemma inj_sqrt p : Z.pos (Pos.sqrt p) = Z.sqrt (Z.pos p).
Admitted.

Lemma inj_gcd p q : Z.pos (Pos.gcd p q) = Z.gcd (Z.pos p) (Z.pos q).
Admitted.

Lemma inj_divide p q : (Z.pos p|Z.pos q) <-> (p|q)%positive.
Admitted.

Lemma inj_testbit a n : 0<=n ->
 Z.testbit (Z.pos a) n = N.testbit (N.pos a) (Z.to_N n).
Admitted.



Lemma inj_neg p q : Z.neg p = Z.neg q -> p = q.
Admitted.

Lemma inj_neg_iff p q : Z.neg p = Z.neg q <-> p = q.
Admitted.

Lemma inj_pos p q : Z.pos p = Z.pos q -> p = q.
Admitted.

Lemma inj_pos_iff p q : Z.pos p = Z.pos q <-> p = q.
Admitted.

Lemma neg_is_neg p : Z.neg p < 0.
Admitted.

Lemma neg_is_nonpos p : Z.neg p <= 0.
Admitted.

Lemma pos_is_pos p : 0 < Z.pos p.
Admitted.

Lemma pos_is_nonneg p : 0 <= Z.pos p.
Admitted.

Lemma neg_le_pos p q : Zneg p <= Zpos q.
Admitted.

Lemma neg_lt_pos p q : Zneg p < Zpos q.
Admitted.

Lemma neg_le_neg p q : (q <= p)%positive -> Zneg p <= Zneg q.
Admitted.

Lemma neg_lt_neg p q : (q < p)%positive -> Zneg p < Zneg q.
Admitted.

Lemma pos_le_pos p q : (p <= q)%positive -> Zpos p <= Zpos q.
Admitted.

Lemma pos_lt_pos p q : (p < q)%positive -> Zpos p < Zpos q.
Admitted.

Lemma neg_xO p : Z.neg p~0 = 2 * Z.neg p.
Admitted.

Lemma neg_xI p : Z.neg p~1 = 2 * Z.neg p - 1.
Admitted.

Lemma pos_xO p : Z.pos p~0 = 2 * Z.pos p.
Admitted.

Lemma pos_xI p : Z.pos p~1 = 2 * Z.pos p + 1.
Admitted.

Lemma opp_neg p : - Z.neg p = Z.pos p.
Admitted.

Lemma opp_pos p : - Z.pos p = Z.neg p.
Admitted.

Lemma add_neg_neg p q : Z.neg p + Z.neg q = Z.neg (p+q).
Admitted.

Lemma add_pos_neg p q : Z.pos p + Z.neg q = Z.pos_sub p q.
Admitted.

Lemma add_neg_pos p q : Z.neg p + Z.pos q = Z.pos_sub q p.
Admitted.

Lemma add_pos_pos p q : Z.pos p + Z.pos q = Z.pos (p+q).
Admitted.

Lemma divide_pos_neg_r n p : (n|Z.pos p) <-> (n|Z.neg p).
Admitted.

Lemma divide_pos_neg_l n p : (Z.pos p|n) <-> (Z.neg p|n).
Admitted.

Lemma testbit_neg a n : 0<=n ->
 Z.testbit (Z.neg a) n = negb (N.testbit (Pos.pred_N a) (Z.to_N n)).
Admitted.

Lemma testbit_pos a n : 0<=n ->
 Z.testbit (Z.pos a) n = N.testbit (N.pos a) (Z.to_N n).
Admitted.

End Pos2Z.

Module Z2Pos.

Lemma id x : 0 < x -> Z.pos (Z.to_pos x) = x.
Admitted.

Lemma inj x y : 0 < x -> 0 < y -> Z.to_pos x = Z.to_pos y -> x = y.
Admitted.

Lemma inj_iff x y : 0 < x -> 0 < y -> (Z.to_pos x = Z.to_pos y <-> x = y).
Admitted.

Lemma to_pos_nonpos x : x <= 0 -> Z.to_pos x = 1%positive.
Admitted.

Lemma inj_1 : Z.to_pos 1 = 1%positive.
Admitted.

Lemma inj_double x : 0 < x ->
 Z.to_pos (Z.double x) = (Z.to_pos x)~0%positive.
Admitted.

Lemma inj_succ_double x : 0 < x ->
 Z.to_pos (Z.succ_double x) = (Z.to_pos x)~1%positive.
Admitted.

Lemma inj_succ x : 0 < x -> Z.to_pos (Z.succ x) = Pos.succ (Z.to_pos x).
Admitted.

Lemma inj_add x y : 0 < x -> 0 < y ->
 Z.to_pos (x+y) = (Z.to_pos x + Z.to_pos y)%positive.
Admitted.

Lemma inj_sub x y : 0 < x < y ->
 Z.to_pos (y-x) = (Z.to_pos y - Z.to_pos x)%positive.
Admitted.

Lemma inj_pred x : 1 < x -> Z.to_pos (Z.pred x) = Pos.pred (Z.to_pos x).
Admitted.

Lemma inj_mul x y : 0 < x -> 0 < y ->
 Z.to_pos (x*y) = (Z.to_pos x * Z.to_pos y)%positive.
Admitted.

Lemma inj_pow x y : 0 < x -> 0 < y ->
 Z.to_pos (x^y) = (Z.to_pos x ^ Z.to_pos y)%positive.
Admitted.

Lemma inj_pow_pos x p : 0 < x ->
 Z.to_pos (Z.pow_pos x p) = ((Z.to_pos x)^p)%positive.
Admitted.

Lemma inj_compare x y : 0 < x -> 0 < y ->
 (x ?= y) = (Z.to_pos x ?= Z.to_pos y)%positive.
Admitted.

Lemma inj_leb x y : 0 < x -> 0 < y ->
 (x <=? y) = (Z.to_pos x <=? Z.to_pos y)%positive.
Admitted.

Lemma inj_ltb x y : 0 < x -> 0 < y ->
 (x <? y) = (Z.to_pos x <? Z.to_pos y)%positive.
Admitted.

Lemma inj_eqb x y : 0 < x -> 0 < y ->
 (x =? y) = (Z.to_pos x =? Z.to_pos y)%positive.
Admitted.

Lemma inj_max x y :
 Z.to_pos (Z.max x y) = Pos.max (Z.to_pos x) (Z.to_pos y).
Admitted.

Lemma inj_min x y :
 Z.to_pos (Z.min x y) = Pos.min (Z.to_pos x) (Z.to_pos y).
Admitted.

Lemma inj_sqrt x : Z.to_pos (Z.sqrt x) = Pos.sqrt (Z.to_pos x).
Admitted.

Lemma inj_gcd x y : 0 < x -> 0 < y ->
 Z.to_pos (Z.gcd x y) = Pos.gcd (Z.to_pos x) (Z.to_pos y).
Admitted.

End Z2Pos.



Notation Zdouble_plus_one := Z.succ_double (only parsing).
Notation Zdouble_minus_one := Z.pred_double (only parsing).
Notation ZPminus := Z.pos_sub (only parsing).
Notation Zplus := Z.add (only parsing).

Notation Zminus := Z.sub (only parsing).
Notation Zmult := Z.mul (only parsing).
Notation Z_of_nat := Z.of_nat (only parsing).
Notation Z_of_N := Z.of_N (only parsing).

Notation Zind := Z.peano_ind (only parsing).

Section LocalNotations.

End LocalNotations.
Module Export Stdlib_DOT_ZArith_DOT_BinInt.
Module Export Stdlib.
Module Export ZArith.
Module Export BinInt.
End BinInt.

End ZArith.

End Stdlib.

End Stdlib_DOT_ZArith_DOT_BinInt.

Export Stdlib.NArith.NArith_base.
Module Export Stdlib_DOT_NArith_DOT_NArith.
Module Export Stdlib.
Module Export NArith.
Module Export NArith.
End NArith.

End NArith.

End Stdlib.

End Stdlib_DOT_NArith_DOT_NArith.
Set Implicit Arguments.
Section ilist.

  Import Vector.VectorNotations.

  Variable A : Type.

  Variable B : A -> Type.

  Inductive ilist: forall n, Vector.t A n -> Type :=
  | inil: ilist (Vector.nil A)
  | icons t n (vs: Vector.t A n) (v: B t) (ils: ilist vs): ilist (t :: vs).

End ilist.

Section ilist_map.

End ilist_map.

Section ilist_imap.

End ilist_imap.

Section ilist_replace.

End ilist_replace.

Section ListToFunction.
End ListToFunction.

Section ListToFunctionFun.
End ListToFunctionFun.
Unset Universe Polymorphism.
Module Export Kami_DOT_Lib_DOT_ilist.
Module Export Kami.
Module Export Lib.
Module Export ilist.
End ilist.

End Lib.

End Kami.

End Kami_DOT_Lib_DOT_ilist.
Module Export OrderedTypeEx.

Import Stdlib.Structures.OrderedType.
Import Stdlib.ZArith.BinInt.
Import Stdlib.Arith.Peano_dec.
Import Stdlib.Strings.Ascii.
Import Stdlib.Strings.String.
Import Stdlib.NArith.NArith.

Module Type UsualOrderedType.
 Parameter Inline t : Type.
 Definition eq := @eq t.
 Parameter Inline lt : t -> t -> Prop.
 Definition eq_refl := @eq_refl t.
 Definition eq_sym := @eq_sym t.
 Definition eq_trans := @eq_trans t.
 Axiom lt_trans : forall x y z : t, lt x y -> lt y z -> lt x z.
 Axiom lt_not_eq : forall x y : t, lt x y -> ~ eq x y.
 Parameter compare : forall x y : t, Compare lt eq x y.
 Parameter eq_dec : forall x y : t, { eq x y } + { ~ eq x y }.
End UsualOrderedType.

Module UOT_to_OT (U:UsualOrderedType) <: OrderedType := U.

Module Nat_as_OT <: UsualOrderedType.

  Definition t := nat.

  Definition eq := @eq nat.
  Definition eq_refl := @eq_refl t.
  Definition eq_sym := @eq_sym t.
  Definition eq_trans := @eq_trans t.

  Definition lt := lt.

  Lemma lt_trans : forall x y z : t, lt x y -> lt y z -> lt x z.
Admitted.

  Lemma lt_not_eq : forall x y : t, lt x y -> ~ eq x y.
Admitted.

  Definition compare x y : Compare lt eq x y.
Admitted.

  Definition eq_dec := eq_nat_dec.

End Nat_as_OT.

#[local] Open Scope Z_scope.

Module Z_as_OT <: UsualOrderedType.

  Definition t := Z.
  Definition eq := @eq Z.
  Definition eq_refl := @eq_refl t.
  Definition eq_sym := @eq_sym t.
  Definition eq_trans := @eq_trans t.

  Definition lt (x y:Z) := (x<y).

  Lemma lt_trans : forall x y z, x<y -> y<z -> x<z.
Admitted.

  Lemma lt_not_eq : forall x y, x<y -> ~ x=y.
Admitted.

  Definition compare x y : Compare lt eq x y.
Admitted.

  Definition eq_dec := Z.eq_dec.

End Z_as_OT.

Module Positive_as_OT <: UsualOrderedType.
  Definition t:=positive.
  Definition eq:=@eq positive.
  Definition eq_refl := @eq_refl t.
  Definition eq_sym := @eq_sym t.
  Definition eq_trans := @eq_trans t.

  Definition lt := Pos.lt.

  Definition lt_trans := Pos.lt_trans.

  Lemma lt_not_eq : forall x y : t, lt x y -> ~ eq x y.
Admitted.

  Definition compare x y : Compare lt eq x y.
Admitted.

  Definition eq_dec := Pos.eq_dec.

End Positive_as_OT.

Module N_as_OT <: UsualOrderedType.
  Definition t:=N.
  Definition eq:=@eq N.
  Definition eq_refl := @eq_refl t.
  Definition eq_sym := @eq_sym t.
  Definition eq_trans := @eq_trans t.

  Definition lt := N.lt.
  Definition lt_trans := N.lt_trans.
  Definition lt_not_eq := N.lt_neq.

  Definition compare x y : Compare lt eq x y.
Admitted.

  Definition eq_dec := N.eq_dec.

End N_as_OT.

Module PairOrderedType(O1 O2:OrderedType) <: OrderedType.

 Definition t := prod O1.t O2.t.

 Definition eq x y := O1.eq (fst x) (fst y) /\ O2.eq (snd x) (snd y).

 Definition lt x y :=
    O1.lt (fst x) (fst y) \/
    (O1.eq (fst x) (fst y) /\ O2.lt (snd x) (snd y)).

 Lemma eq_refl : forall x : t, eq x x.
Admitted.

 Lemma eq_sym : forall x y : t, eq x y -> eq y x.
Admitted.

 Lemma eq_trans : forall x y z : t, eq x y -> eq y z -> eq x z.
Admitted.

 Lemma lt_trans : forall x y z : t, lt x y -> lt y z -> lt x z.
Admitted.

 Lemma lt_not_eq : forall x y : t, lt x y -> ~ eq x y.
Admitted.

 Definition compare : forall x y : t, Compare lt eq x y.
Admitted.

 Definition eq_dec : forall x y : t, {eq x y} + {~ eq x y}.
Admitted.

End PairOrderedType.

Module PositiveOrderedTypeBits <: UsualOrderedType.
  Definition t:=positive.
  Definition eq:=@eq positive.
  Definition eq_refl := @eq_refl t.
  Definition eq_sym := @eq_sym t.
  Definition eq_trans := @eq_trans t.
Fixpoint bits_lt (p q:positive) : Prop.
Admitted.

  Definition lt:=bits_lt.

  Lemma lt_trans : forall x y z : t, lt x y -> lt y z -> lt x z.
Admitted.

  Lemma lt_not_eq : forall x y : t, lt x y -> ~ eq x y.
Admitted.

  Definition compare : forall x y : t, Compare lt eq x y.
Admitted.

  Lemma eq_dec (x y: positive): {x = y} + {x <> y}.
Admitted.

End PositiveOrderedTypeBits.

Module Ascii_as_OT <: UsualOrderedType.
  Definition t := ascii.

  Definition eq := @eq ascii.
  Definition eq_refl := @eq_refl t.
  Definition eq_sym := @eq_sym t.
  Definition eq_trans := @eq_trans t.

  Definition lt (x y : ascii) := (N_of_ascii x < N_of_ascii y)%N.

  Lemma lt_trans (x y z : ascii):
    lt x y -> lt y z -> lt x z.
Admitted.

  Lemma lt_not_eq (x y : ascii):
     lt x y -> x <> y.
Admitted.
Definition compare (a b : ascii) : Compare lt eq a b.
Admitted.
Definition eq_dec (x y : ascii): {x = y} + { ~ (x = y)}.
Admitted.
End Ascii_as_OT.

Module String_as_OT <: UsualOrderedType.

  Definition t := string.

  Definition eq := @eq string.
  Definition eq_refl := @eq_refl t.
  Definition eq_sym := @eq_sym t.
  Definition eq_trans := @eq_trans t.

  Inductive lts : string -> string -> Prop :=
    | lts_empty : forall a s, lts EmptyString (String a s)
    | lts_tail : forall a s1 s2, lts s1 s2 -> lts (String a s1) (String a s2)
    | lts_head : forall (a b : ascii) s1 s2,
        lt (nat_of_ascii a) (nat_of_ascii b) ->
        lts (String a s1) (String b s2).

  Definition lt := lts.

  Lemma lt_trans : forall x y z : t, lt x y -> lt y z -> lt x z.
Admitted.

  Lemma lt_not_eq : forall x y : t, lt x y -> ~ eq x y.
Admitted.
Definition compare (a b : string) : Compare lt eq a b.
Admitted.
Definition eq_dec (x y : string): {x = y} + { ~ (x = y)}.
Admitted.
End String_as_OT.

End OrderedTypeEx.
Module Export Stdlib.
Module Export Structures.
Module Export OrderedTypeEx.
End OrderedTypeEx.

End Structures.

End Stdlib.

Ltac unfold_head m :=
  match m with
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ _ =>
    unfold hdef
  | ?hdef _ _ _ =>
    unfold hdef
  | ?hdef _ _ =>
    unfold hdef
  | ?hdef _ =>
    unfold hdef
  | ?hdef =>
    unfold hdef
  end.
Module Export Kami.
Module Export Lib.
Module Export CommonTactics.
End CommonTactics.

End Lib.

End Kami.

Module Export Kami_DOT_Lib_DOT_Reflection_WRAPPED.
Module Export Reflection.
Import Stdlib.Strings.String.
Import Stdlib.Lists.List.

Fixpoint noDupStr (l: list string) :=
  match l with
  | nil => true
  | h :: t =>
    if in_dec string_dec h t then false else noDupStr t
  end.

Lemma noDupStr_NoDup:
  forall l, noDupStr l = true -> NoDup l.
Admitted.

End Reflection.
Include Kami_DOT_Lib_DOT_Reflection_WRAPPED.Reflection.
Import Stdlib.Strings.String.

Fixpoint string_of_nat (n: nat) :=
  match n with
    | O => "a"%string
    | S n' => append "a"%string (string_of_nat n')
  end.
Definition indexSymbol: string.
Admitted.
Definition prefixSymbol: string.
exact ("."%string).
Defined.

Definition addIndexToStr {A} strA (i: A) s := append s (append indexSymbol (strA i)).

Definition withIndex str idx :=
  addIndexToStr string_of_nat idx str.
Definition withPrefix pre str :=
  append str (append prefixSymbol pre).

Notation "str '__' idx" := (withIndex str idx) (at level 0).
Notation "pre '--' str" := (withPrefix pre str) (at level 0).
Module Export Kami_DOT_Lib_DOT_Indexer.
Module Export Kami.
Module Export Lib.
Module Export Indexer.
End Indexer.

End Lib.

End Kami.

End Kami_DOT_Lib_DOT_Indexer.

Inductive word : nat -> Set :=
| WO : word O
| WS : bool -> forall n, word n -> word (S n).
Fixpoint natToWord (sz n : nat) : word sz.
Admitted.

Section ZScope.
End ZScope.
Module Export Kami_DOT_Lib_DOT_Word.
Module Export Kami.
Module Export Lib.
Module Export Word.
End Word.

End Lib.

End Kami.

End Kami_DOT_Lib_DOT_Word.
Import Stdlib.Strings.String.
Import Stdlib.Lists.List.
Import Kami.Lib.StringEq.

Set Implicit Arguments.

Record Attribute (A : Type) := { attrName: string; attrType: A }.

Section Attribute.
  Variable A: Type.

  Fixpoint getAttribute (n: string) (attrs: list (Attribute A)) :=
    match attrs with
      | nil => None
      | attr :: attrs' =>
        if string_eq n (attrName attr) then Some attr
        else getAttribute n attrs'
    end.

  Definition namesOf (attrs: list (Attribute A)) := map (@attrName _) attrs.
End Attribute.

Section MapAttr.
End MapAttr.
Module Export Kami.
Module Export Lib.
Module Export Struct.
End Struct.
Import Stdlib.Structures.OrderedTypeEx.
Import Stdlib.FSets.FMapInterface.

Section Lists.

End Lists.

Module FMapListEq (UOT : UsualOrderedType) <: FMapInterface.S with Module E := UOT.

  Module OT := UOT_to_OT UOT.
  Module M := FMapList.Make(OT).
  Include M.

End FMapListEq.

Module Type LT_IRREL (Import T : OrderedType).
End LT_IRREL.

Module Type UsualOrderedTypeLTI := UsualOrderedType <+ LT_IRREL.

Module Type MapLeibniz.
  Declare Module E : UsualOrderedType.
  Include Sfun E.
End MapLeibniz.

Module LeibnizFacts (M : MapLeibniz).
  Import M.

  Definition unionL {A} (m m' : t A) := fold (@add A) m m'.
  Definition union {A} := @unionL A.
Definition subtractKV {A}
             (deceqA : forall x y : A, sumbool (x = y) (x <> y))
             (m1 m2 : t A) : t A.
Admitted.

  Definition Disj {A} (m m' : t A) := forall k, ~ In k m \/ ~ In k m'.
  Definition KeysDisj {A} (m: t A) (d: list E.t) := forall k, List.In k d -> ~ In k m.

End LeibnizFacts.

Module FMapListLeib (UOT : UsualOrderedTypeLTI) <: MapLeibniz.
  Include (FMapListEq UOT).
End FMapListLeib.

Module String_as_OT' <: UsualOrderedTypeLTI.
  Include String_as_OT.
End String_as_OT'.

Module Export M.
  Module Map := FMapListLeib String_as_OT'.
  Include Map.
  Include (LeibnizFacts Map).

Section MakeMap.
End MakeMap.

Section FMapRawReflection.

End FMapRawReflection.
Module Export Kami.
Module Export Lib.
Module Export FMap.
End FMap.

Module Export Kami_DOT_Syntax_WRAPPED.
Module Export Syntax.
Import Stdlib.Bool.Bool.
Import Stdlib.Lists.List.
Import Stdlib.Strings.String.
Import Kami.Lib.StringEq.
Import Kami.Lib.Word.
Import Kami.Lib.ilist.
Import Kami.Lib.Struct.

Set Implicit Arguments.
Set Asymmetric Patterns.

Inductive Vec (A: Type): nat -> Type :=
| Vec0: A -> Vec A 0
| VecNext n: Vec A n -> Vec A n -> Vec A (S n).

Inductive Kind :=
| Bool    : Kind
| Bit     : nat -> Kind
| Vector  : Kind -> nat -> Kind
| Struct  : forall n, Vector.t (Attribute Kind) n -> Kind
| Array   : Kind -> nat -> Kind.
Fixpoint type (t: Kind): Type.
exact (match t with
  | Bool => bool
  | Bit n => word n
  | Vector nt n => word n -> type nt
  | Struct n ks =>
    forall i: Fin.t n,
      Vector.nth (Vector.map (fun p => type (attrType p)) ks) i
  | Array nt n => Fin.t n -> type nt
  end).
Defined.

Inductive FullKind: Type :=
| SyntaxKind: Kind -> FullKind
| NativeKind (t: Type) (c: t) : FullKind.

Inductive ConstT: Kind -> Type :=
| ConstBool: bool -> ConstT Bool
| ConstBit n: word n -> ConstT (Bit n)
| ConstVector k n: Vec (ConstT k) n -> ConstT (Vector k n)
| ConstStruct n (ls: Vector.t _ n): ilist (fun a => ConstT (attrType a)) ls -> ConstT (Struct ls)
| ConstArray k n: Vector.t (ConstT k) n -> ConstT (Array k n).

Inductive ConstFullT: FullKind -> Type :=
| SyntaxConst k: ConstT k -> ConstFullT (SyntaxKind k)
| NativeConst t (c c': t): ConstFullT (NativeKind c).
Coercion ConstBit : word >-> ConstT.
Fixpoint getDefaultConst (k: Kind): ConstT k.
Admitted.

Record SignatureT :=
  { arg: Kind;
    ret: Kind
  }.

Definition SignatureT_dec: forall (s1 s2: SignatureT), {s1 = s2} + {s1 <> s2}.
Admitted.

Lemma signature_eq: forall sig, SignatureT_dec sig sig = left eq_refl.
Admitted.

Inductive UniBoolOp: Set :=
| NegB: UniBoolOp.

Inductive BinBoolOp: Set :=
| AndB: BinBoolOp
| OrB: BinBoolOp.

Inductive UniBitOp: nat -> nat -> Set :=
| Inv n: UniBitOp n n
| Neg n: UniBitOp n n
| ConstExtract n1 n2 n3: UniBitOp (n1 + n2 + n3) n2
| Trunc n1 n2: UniBitOp (n1 + n2) n1
| ZeroExtendTrunc n1 n2: UniBitOp n1 n2
| SignExtendTrunc n1 n2: UniBitOp n1 n2
| TruncLsb n1 n2 : UniBitOp (n1 + n2) n2.

Inductive BinSign := SignSS | SignSU | SignUU.

Inductive BinBitOp: nat -> nat -> nat -> Set :=
| Add n: BinBitOp n n n
| Sub n: BinBitOp n n n
| Mul n: BinSign -> BinBitOp n n n
| Div n: bool -> BinBitOp n n n
| Rem n: bool -> BinBitOp n n n
| Band n: BinBitOp n n n
| Bor n: BinBitOp n n n
| Bxor n: BinBitOp n n n
| Sll n m: BinBitOp n m n
| Srl n m: BinBitOp n m n
| Sra n m: BinBitOp n m n
| Concat n1 n2: BinBitOp n1 n2 (n2 + n1).

Inductive BinBitBoolOp: nat -> nat -> Set :=
| Lt n: BinBitBoolOp n n
| Slt n: BinBitBoolOp n n.

Section Phoas.
  Variable ty: Kind -> Type.
  Definition fullType k := match k with
                           | SyntaxKind k' => ty k'
                           | NativeKind k' _ => k'
                           end.

  Definition FieldKind {n} (ls: Vector.t (Attribute Kind) n)
             (i: Fin.t n) :=
    Vector.nth (Vector.map (@attrType _) ls) i.

  Inductive Expr: FullKind -> Type :=
  | Var k: fullType k -> Expr k
  | Const k: ConstT k -> Expr (SyntaxKind k)
  | UniBool: UniBoolOp -> Expr (SyntaxKind Bool) -> Expr (SyntaxKind Bool)
  | BinBool: BinBoolOp -> Expr (SyntaxKind Bool) -> Expr (SyntaxKind Bool) -> Expr (SyntaxKind Bool)
  | UniBit n1 n2: UniBitOp n1 n2 -> Expr (SyntaxKind (Bit n1)) -> Expr (SyntaxKind (Bit n2))
  | BinBit n1 n2 n3: BinBitOp n1 n2 n3 ->
                     Expr (SyntaxKind (Bit n1)) -> Expr (SyntaxKind (Bit n2)) ->
                     Expr (SyntaxKind (Bit n3))
  | BinBitBool n1 n2: BinBitBoolOp n1 n2 ->
                      Expr (SyntaxKind (Bit n1)) -> Expr (SyntaxKind (Bit n2)) ->
                      Expr (SyntaxKind Bool)
  | ITE k: Expr (SyntaxKind Bool) -> Expr k -> Expr k -> Expr k
  | Eq k: Expr (SyntaxKind k) -> Expr (SyntaxKind k) -> Expr (SyntaxKind Bool)
  | ReadIndex i k: Expr (SyntaxKind (Bit i)) ->
                   Expr (SyntaxKind (Vector k i)) -> Expr (SyntaxKind k)
  | ReadField n (ls: Vector.t _ n) (i: Fin.t n):
      Expr (SyntaxKind (Struct ls)) -> Expr (SyntaxKind (FieldKind ls i))
  | BuildVector n k: Vec (Expr (SyntaxKind n)) k -> Expr (SyntaxKind (Vector n k))
  | BuildStruct n (attrs: Vector.t _ n):
      ilist (fun a => Expr (SyntaxKind (attrType a))) attrs -> Expr (SyntaxKind (Struct attrs))
  | UpdateVector i k: Expr (SyntaxKind (Vector k i)) ->
                      Expr (SyntaxKind (Bit i)) -> Expr (SyntaxKind k) ->
                      Expr (SyntaxKind (Vector k i))
  | ReadArrayIndex i k sz: Expr (SyntaxKind (Bit i)) ->
                           Expr (SyntaxKind (Array k (S sz))) ->
                           Expr (SyntaxKind k)
  | BuildArray n k:
      Vector.t (Expr (SyntaxKind n)) k -> Expr (SyntaxKind (Array n k))
  | UpdateArray k sz i: Expr (SyntaxKind (Array k (S sz))) ->
                        Expr (SyntaxKind (Bit i)) ->
                        Expr (SyntaxKind k) ->
                        Expr (SyntaxKind (Array k (S sz))).

  Inductive BitFormat :=
  | Binary
  | Decimal
  | Hex.

  Definition FullBitFormat := (nat * BitFormat)%type.

  Inductive Disp: Type :=
  | DispBool: FullBitFormat -> Expr (SyntaxKind Bool) -> Disp
  | DispBit: FullBitFormat -> forall n, Expr (SyntaxKind (Bit n)) -> Disp
  | DispStruct n: (Vector.t FullBitFormat n) ->
                  forall ls, Expr (SyntaxKind (@Struct n ls)) -> Disp
  | DispArray: FullBitFormat -> forall n k, Expr (SyntaxKind (Array n k)) -> Disp.

  Inductive ActionT (lretT: Kind) : Type :=
  | MCall (meth: string) s:
      Expr (SyntaxKind (arg s)) ->
      (ty (ret s) -> ActionT lretT) ->
      ActionT lretT
  | Let_ lretT': Expr lretT' -> (fullType lretT' -> ActionT lretT) -> ActionT lretT
  | ReadNondet:
      forall k, (fullType k -> ActionT lretT) -> ActionT lretT
  | ReadReg (r: string):
      forall k, (fullType k -> ActionT lretT) -> ActionT lretT
  | WriteReg (r: string) k:
      Expr k -> ActionT lretT -> ActionT lretT
  | IfElse: Expr (SyntaxKind Bool) -> forall k,
                                        ActionT k ->
                                        ActionT k ->
                                        (ty k -> ActionT lretT) ->
                                        ActionT lretT
  | Assert_: Expr (SyntaxKind Bool) -> ActionT lretT -> ActionT lretT
  | Displ: list Disp -> ActionT lretT -> ActionT lretT
  | Return: Expr (SyntaxKind lretT) -> ActionT lretT.

End Phoas.

Definition Action (retTy : Kind) := forall ty, ActionT ty retTy.
Definition MethodT (sig : SignatureT) := forall ty, ty (arg sig) -> ActionT ty (ret sig).

Inductive RegInitValue :=
| RegInitCustom: sigT ConstFullT -> RegInitValue
| RegInitDefault: FullKind -> RegInitValue.

Definition RegInitT := Attribute RegInitValue.
Definition DefMethT := Attribute (sigT MethodT).

Definition filterDms (dms: list DefMethT) (filt: list string) :=
  filter (fun dm => if string_in (attrName dm) filt then false else true) dms.

Definition Void := Bit 0.

Record PrimitiveModule :=
  { pm_name: string;
    pm_regInits: list RegInitT;
    pm_rules: list (Attribute (Action Void));
    pm_methods: list DefMethT }.

Inductive Modules: Type :=
| PrimMod (prim: PrimitiveModule): Modules
| Mod (regs: list RegInitT)
      (rules: list (Attribute (Action Void)))
      (dms: list DefMethT): Modules
| ConcatMod (m1 m2: Modules): Modules.

Fixpoint getRules m :=
  match m with
  | PrimMod prim => prim.(pm_rules)
  | Mod _ rules _ => rules
  | ConcatMod m1 m2 => getRules m1 ++ getRules m2
  end.

Fixpoint getRegInits m :=
  match m with
  | PrimMod prim => prim.(pm_regInits)
  | Mod regs _ _ => regs
  | ConcatMod m1 m2 => getRegInits m1 ++ getRegInits m2
  end.
Fixpoint getDefsBodies (m: Modules): list DefMethT.
exact (match m with
  | PrimMod prim => prim.(pm_methods)
  | Mod _ _ meths => meths
  | ConcatMod m1 m2 => (getDefsBodies m1) ++ (getDefsBodies m2)
  end).
Defined.

Definition getDefs m: list string := namesOf (getDefsBodies m).

Section AppendAction.
  Variable ty: Kind -> Type.

  Fixpoint appendAction {retT1 retT2} (a1: ActionT ty retT1)
           (a2: ty retT1 -> ActionT ty retT2): ActionT ty retT2 :=
    match a1 with
      | MCall name sig ar cont => MCall name sig ar (fun a => appendAction (cont a) a2)
      | Let_ _ ar cont => Let_ ar (fun a => appendAction (cont a) a2)
      | ReadNondet k cont => ReadNondet k (fun a => appendAction (cont a) a2)
      | ReadReg reg k cont => ReadReg reg k (fun a => appendAction (cont a) a2)
      | WriteReg reg _ e cont => WriteReg reg e (appendAction cont a2)
      | IfElse ce _ ta fa cont => IfElse ce ta fa (fun a => appendAction (cont a) a2)
      | Assert_ ae cont => Assert_ ae (appendAction cont a2)
      | Displ ls cont => Displ ls (appendAction cont a2)
      | Return e => Let_ e a2
    end.

End AppendAction.
Definition typeUT (k: Kind): Type.
exact (unit).
Defined.
  Definition fullTypeUT := fullType typeUT.
Definition getUT (k: FullKind): fullTypeUT k.
Admitted.

  Fixpoint getCallsA {k} (a: ActionT typeUT k): list string :=
    match a with
      | MCall m _ _ c => m :: (getCallsA (c tt))
      | Let_ fk e c => getCallsA
                         (c match fk as fk' return fullType typeUT fk' with
                              | SyntaxKind _ => tt
                              | NativeKind _ c' => c'
                            end)
      | ReadNondet fk c => getCallsA
                            (c match fk as fk' return fullType typeUT fk' with
                                 | SyntaxKind _ => tt
                                 | NativeKind _ c' => c'
                               end)
      | ReadReg _ fk c => getCallsA
                            (c match fk as fk' return fullType typeUT fk' with
                                 | SyntaxKind _ => tt
                                 | NativeKind _ c' => c'
                               end)
      | WriteReg _ _ _ c => getCallsA c
      | IfElse _ _ aT aF c =>
        (getCallsA aT) ++ (getCallsA aF)
                       ++ (getCallsA (c tt))
      | Assert_ _ c => getCallsA c
      | Displ ls c => getCallsA c
      | Return _ => nil
    end.
Fixpoint getCallsR (rl: list (Attribute (Action (Bit 0))))
  : list string.
Admitted.
Fixpoint getCallsM (ms: list DefMethT): list string.
Admitted.

  Definition getCalls m := getCallsR (getRules m) ++ getCallsM (getDefsBodies m).
  Fixpoint isLeaf {retT} (a: ActionT typeUT retT) (cs: list string) :=
    match a with
    | MCall name _ _ cont => (negb (string_in name cs)) && (isLeaf (cont tt) cs)
    | Let_ _ ar cont => isLeaf (cont (getUT _)) cs
    | ReadNondet k cont => isLeaf (cont (getUT _)) cs
    | ReadReg reg k cont => isLeaf (cont (getUT _)) cs
    | WriteReg reg _ e cont => isLeaf cont cs
    | IfElse ce _ ta fa cont => (isLeaf ta cs) && (isLeaf fa cs) && (isLeaf (cont tt) cs)
    | Assert_ ae cont => isLeaf cont cs
    | Displ ls cont => isLeaf cont cs
    | Return e => true
    end.

  Definition noCallDm (dm: DefMethT) (tgt: DefMethT) :=
    isLeaf (projT2 (attrType dm) typeUT tt) (attrName tgt :: nil).

  Fixpoint noCallsDms (dms: list DefMethT) (calls: list string) :=
    match dms with
    | nil => true
    | dm :: dms' =>
      if isLeaf (projT2 (attrType dm) typeUT tt) calls
      then noCallsDms dms' calls
      else false
    end.

  Fixpoint noCallsRules (rules: list (Attribute (Action Void)))
           (calls: list string) :=
    match rules with
    | nil => true
    | r :: rules' =>
      if isLeaf (attrType r typeUT) calls
      then noCallsRules rules' calls
      else false
    end.

  Definition noCalls (m: Modules) (calls: list string) :=
    (noCallsRules (getRules m) calls)
      && (noCallsDms (getDefsBodies m) calls).

  Definition noInternalCalls (m: Modules) :=
    noCalls m (getDefs m).
Notation "name :: ty" := {| attrName := name; attrType := ty |} : kami_struct_scope.
Delimit Scope kami_struct_scope with struct.
Notation "m1 ++ m2" := (ConcatMod m1 m2) : kami_scope.
Delimit Scope kami_scope with kami.

End Syntax.
Module Export Kami_DOT_Syntax.
Module Export Kami.
Module Export Syntax.
Include Kami_DOT_Syntax_WRAPPED.Syntax.
End Syntax.

End Kami.

End Kami_DOT_Syntax.
Import Stdlib.Bool.Bool.
Import Stdlib.Lists.List.
Import Stdlib.Strings.String.
Import Kami.Lib.Struct.
Import Kami.Lib.StringEq.
Import Kami.Syntax.

Set Implicit Arguments.
Set Asymmetric Patterns.

Section Base.
  Variable type: Kind -> Type.
Definition inlineArg {argT retT} (a: Expr type (SyntaxKind argT))
             (m: type argT -> ActionT type retT): ActionT type retT.
exact (Let_ a m).
Defined.
Definition getBody (n: string) (dm: DefMethT) (sig: SignatureT):
    option (sigT (fun x: DefMethT => projT1 (attrType x) = sig)).
exact (if string_eq n (attrName dm) then
      match SignatureT_dec (projT1 (attrType dm)) sig with
        | left e => Some (existT _ dm e)
        | right _ => None
      end
    else None).
Defined.

  Fixpoint inlineDm {retT} (a: ActionT type retT) (dm: DefMethT): ActionT type retT :=
    match a with
      | MCall name sig ar cont =>
        match getBody name dm sig with
          | Some (existT dm e) =>
            appendAction (inlineArg ar ((eq_rect _ _ (projT2 (attrType dm)) _ e)
                                          type))
                         (fun ak => inlineDm (cont ak) dm)
          | None => MCall name sig ar (fun ak => inlineDm (cont ak) dm)
        end
      | Let_ _ ar cont => Let_ ar (fun a => inlineDm (cont a) dm)
      | ReadNondet k cont => ReadNondet k (fun a => inlineDm (cont a) dm)
      | ReadReg reg k cont => ReadReg reg k (fun a => inlineDm (cont a) dm)
      | WriteReg reg _ e cont => WriteReg reg e (inlineDm cont dm)
      | IfElse ce _ ta fa cont => IfElse ce (inlineDm ta dm) (inlineDm fa dm)
                                         (fun a => inlineDm (cont a) dm)
      | Assert_ ae cont => Assert_ ae (inlineDm cont dm)
      | Displ ls cont => Displ ls (inlineDm cont dm)
      | Return e => Return e
    end.

End Base.
Definition inlineDmToRule (r: Attribute (Action Void)) (leaf: DefMethT)
  : Attribute (Action Void).
exact ({| attrName := attrName r;
       attrType := fun type => inlineDm (attrType r type) leaf |}).
Defined.

  Definition inlineDmToRules (rules: list (Attribute (Action Void))) (leaf: DefMethT) :=
    map (fun r => inlineDmToRule r leaf) rules.

  Definition inlineDmToDm (dm leaf: DefMethT): DefMethT.
    refine {| attrName := attrName dm;
              attrType := existT _ (projT1 (attrType dm))
                                 _ |}.
    unfold MethodT; intros.
    exact (inlineDm (projT2 (attrType dm) ty X) leaf).
  Defined.

  Definition inlineDmToDms (dms: list DefMethT) (leaf: DefMethT) :=
    map (fun d => inlineDmToDm d leaf) dms.

  Definition inlineDmToMod (m: Modules) (leaf: string) :=
    match getAttribute leaf (getDefsBodies m) with
      | Some dm =>
        (Mod (getRegInits m) (inlineDmToRules (getRules m) dm)
             (inlineDmToDms (getDefsBodies m) dm), noCallDm dm dm)
      | None => (m, false)
    end.

  Fixpoint inlineDms' (m: Modules) (dms: list string) :=
    match dms with
      | nil => (Mod (getRegInits m) (getRules m) (getDefsBodies m), true)
      | dm :: dms' =>
        let (im, ib) := inlineDmToMod m dm in
        let (im', ib') := inlineDms' im dms' in
        (im', ib && ib')
    end.

  Definition inlineDms (m: Modules) := inlineDms' m (namesOf (getDefsBodies m)).

  Definition inline (m: Modules) := inlineDms m.

  Definition inlineF (m: Modules) :=
    let (im, ib) := inline m in
    (Mod (getRegInits im) (getRules im)
         (filterDms (getDefsBodies im) (getCalls m)), noInternalCalls im && ib).
Module Export Kami_DOT_Inline.
Module Export Kami.
Module Export Inline.
End Inline.

End Kami.

End Kami_DOT_Inline.
Import Stdlib.Lists.List.
Import Stdlib.Strings.String.
Import Kami.Lib.Struct.
Import Kami.Lib.Word.
Import Kami.Syntax.

Notation Default := (getDefaultConst _).

Notation "'MethodSig' name () : retT" :=
  (Build_Attribute name {| arg := Void; ret := retT |})
  (at level 0, name at level 0, retT at level 200).
Notation "'MethodSig' name ( argT ) : retT" :=
  (Build_Attribute name {| arg := argT; ret := retT |})
  (at level 0, name at level 0, argT at level 200, retT at level 200).

Notation "# v" := (Var _ (SyntaxKind _) v) (at level 5, format "# v") : kami_expr_scope.
Notation "!" := (UniBool NegB) (at level 15) : kami_expr_scope.

Infix "+" := (BinBit (Add _)) : kami_expr_scope.
Infix "*" := (BinBit (Mul _ SignUU)) : kami_expr_scope.

Delimit Scope kami_expr_scope with kami_expr.
Notation "$ n" := (Const _ (natToWord _ n)) (at level 1) : kami_expr_scope.
Notation "$$ e" := (Const _ e) (at level 5) : kami_expr_scope.

Notation "k @ var" := (Expr var (SyntaxKind k)) (at level 0).

Notation "'Call' meth ( arg ) ; cont " :=
  (MCall (attrName meth) (attrType meth) arg%kami_expr (fun _ => cont))
    (at level 12, right associativity, meth at level 0) : kami_action_scope.
Notation "'Call' name <- meth () ; cont " :=
  (MCall (attrName meth) (attrType meth) (Const _ Default) (fun name => cont))
    (at level 12, right associativity, name at level 0, meth at level 0) : kami_action_scope.

Notation "'CallM' meth ( a : argT ) ; cont " :=
  (MCall meth%string {| arg := argT; ret := Void |} a%kami_expr (fun _ => cont))
    (at level 12, right associativity, meth at level 0, a at level 99) : kami_action_scope.
Notation "'CallM' name : retT <- meth () ; cont " :=
  (MCall meth%string {| arg := Void; ret := retT |} (Const _ Default) (fun name => cont))
    (at level 12, right associativity, name at level 0, meth at level 0) : kami_action_scope.
Notation "'LET' name <- expr ; cont " :=
  (Let_ expr%kami_expr (fun name => cont))
    (at level 12, right associativity, name at level 0) : kami_action_scope.
Notation "'LET' name : t <- expr ; cont " :=
  (Let_ (lretT' := SyntaxKind t) expr%kami_expr (fun name => cont))
    (at level 12, right associativity, name at level 0) : kami_action_scope.
Notation "'Nondet' name : kind ; cont" :=
  (ReadNondet kind (fun name => cont))
    (at level 12, right associativity, name at level 0) : kami_action_scope.
Notation "'ReadN' name : kind <- reg ; cont " :=
  (ReadReg reg kind (fun name => cont))
    (at level 12, right associativity, name at level 0) : kami_action_scope.
Notation "'Read' name <- reg ; cont" :=
  (ReadReg reg _ (fun name => cont))
    (at level 12, right associativity, name at level 0) : kami_action_scope.
Notation "'WriteN' reg : kind <- expr ; cont " :=
  (@WriteReg _ _ reg kind expr%kami_expr cont)
    (at level 12, right associativity, reg at level 0) : kami_action_scope.
Notation "'Write' reg <- expr ; cont " :=
  (WriteReg reg expr%kami_expr cont)
    (at level 12, right associativity, reg at level 0) : kami_action_scope.
Notation "'Write' reg : kind <- expr ; cont " :=
  (@WriteReg _ _ reg (SyntaxKind kind) expr%kami_expr cont)
    (at level 12, right associativity, reg at level 0) : kami_action_scope.
Notation "'If' cexpr 'then' tact 'else' fact 'as' name ; cont " :=
  (IfElse cexpr%kami_expr tact fact (fun name => cont))
    (at level 13, right associativity, name at level 0, cexpr at level 0, tact at next level, fact at next level) : kami_action_scope.
Notation "'Assert' expr ; cont " :=
  (Assert_ expr%kami_expr cont)
    (at level 12, right associativity) : kami_action_scope.
Notation "'Ret' expr" :=
  (Return expr%kami_expr) (at level 12) : kami_action_scope.
Notation "'Retv'" := (Return (Const _ (k := Void) Default)) : kami_action_scope.

Delimit Scope kami_action_scope with kami_action.

Inductive ModuleElt :=
| MERegister (_ : RegInitT)
| MERule (_ : Attribute (Action Void))
| MEMeth (_ : DefMethT).

Inductive InModule :=
| NilInModule
| ConsInModule (_ : ModuleElt) (_ : InModule).

Fixpoint makeModule' (im : InModule) :=
  match im with
  | NilInModule => (nil, nil, nil)
  | ConsInModule e i =>
    let '(iregs, irules, imeths) := makeModule' i in
    match e with
    | MERegister mreg => (mreg :: iregs, irules, imeths)
    | MERule mrule => (iregs, mrule :: irules, imeths)
    | MEMeth mmeth => (iregs, irules, mmeth :: imeths)
    end
  end.

Definition makeModule (im : InModule) :=
  let '(regs, rules, meths) := makeModule' im in
  Mod regs rules meths.

Notation "'RegisterN' name : type <- init" :=
  (MERegister (Build_Attribute name (RegInitCustom (existT ConstFullT type init))))
    (at level 0, name at level 0, type at level 0, init at level 0) : kami_scope.

Notation "'Register' name : type <- 'Default'" :=
  (MERegister (Build_Attribute name (RegInitDefault (SyntaxKind type))))
    (at level 0, name at level 0, type at level 0) : kami_scope.

Notation "'Method' name () : retT := c" :=
  (MEMeth (Build_Attribute name
                           (existT MethodT {| arg := Void; ret := retT |}
                                   (fun ty => fun _ : ty Void =>
                                                (c)%kami_action : ActionT ty retT))))
    (at level 0, name at level 0) : kami_scope.

Notation "'Method' name ( param : dom ) : retT := c" :=
  (MEMeth (Build_Attribute name
                           (existT MethodT {| arg := dom; ret := retT |}
                                   (fun ty => fun param : ty dom =>
                                                (c)%kami_action : ActionT ty retT))))
    (at level 0, name at level 0, param at level 0, dom at level 0) : kami_scope.

Notation "'Rule' name := c" :=
  (MERule (Build_Attribute name (fun ty => c%kami_action : ActionT ty Void)))
    (at level 0, name at level 0) : kami_scope.

Notation "'MODULE' { m1 'with' .. 'with' mN }" :=
  (makeModule (ConsInModule m1%kami .. (ConsInModule mN%kami NilInModule) ..))
    (at level 0, only parsing).
Module Export Kami_DOT_Notations.
Module Export Kami.
Module Export Notations.
End Notations.

End Kami.

End Kami_DOT_Notations.
Import Stdlib.Lists.List.
Import Stdlib.Strings.String.
Import Kami.Lib.Word.
Import Kami.Lib.FMap.
Import Kami.Lib.Struct.
Import Kami.Syntax.

Set Implicit Arguments.

Section VecFunc.
End VecFunc.

Section WordFunc.
End WordFunc.

Section FinFunc.
End FinFunc.

Definition RegsT := M.t (sigT (fullType type)).

Definition SignT k := (type (arg k) * type (ret k))%type.

Definition MethsT := M.t (sigT SignT).

Section Semantics.
Fixpoint evalExpr exprT (e: Expr type exprT): fullType type exprT.
Admitted.

  Variable oldRegs: RegsT.
  Definition UpdatesT := RegsT.

  Inductive SemAction:
    forall k, ActionT type k -> UpdatesT -> MethsT -> type k -> Prop :=
  | SemMCall
      meth s (marg: Expr type (SyntaxKind (arg s)))
      (mret: type (ret s))
      retK (fret: type retK)
      (cont: type (ret s) -> ActionT type retK)
      newRegs (calls: MethsT) acalls
      (HDisjCalls: M.find meth calls = None)
      (HAcalls: acalls = M.add meth (existT _ _ (evalExpr marg, mret)) calls)
      (HSemAction: SemAction (cont mret) newRegs calls fret):
      SemAction (MCall meth s marg cont) newRegs acalls fret
  | SemLet
      k (e: Expr type k) retK (fret: type retK)
      (cont: fullType type k -> ActionT type retK) newRegs calls
      (HSemAction: SemAction (cont (evalExpr e)) newRegs calls fret):
      SemAction (Let_ e cont) newRegs calls fret
  | SemReadNondet
      valueT (valueV: fullType type valueT)
      retK (fret: type retK) (cont: fullType type valueT -> ActionT type retK)
      newRegs calls
      (HSemAction: SemAction (cont valueV) newRegs calls fret):
      SemAction (ReadNondet _ cont) newRegs calls fret
  | SemReadReg
      (r: string) regT (regV: fullType type regT)
      retK (fret: type retK) (cont: fullType type regT -> ActionT type retK)
      newRegs calls
      (HRegVal: M.find r oldRegs = Some (existT _ regT regV))
      (HSemAction: SemAction (cont regV) newRegs calls fret):
      SemAction (ReadReg r _ cont) newRegs calls fret
  | SemWriteReg
      (r: string) k
      (e: Expr type k)
      retK (fret: type retK)
      (cont: ActionT type retK) newRegs calls anewRegs
      (HDisjRegs: M.find r newRegs = None)
      (HANewRegs: anewRegs = M.add r (existT _ _ (evalExpr e)) newRegs)
      (HSemAction: SemAction cont newRegs calls fret):
      SemAction (WriteReg r e cont) anewRegs calls fret
  | SemIfElseTrue
      (p: Expr type (SyntaxKind Bool)) k1
      (a: ActionT type k1)
      (a': ActionT type k1)
      (r1: type k1)
      k2 (cont: type k1 -> ActionT type k2)
      newRegs1 newRegs2 calls1 calls2 (r2: type k2)
      (HDisjRegs: M.Disj newRegs1 newRegs2)
      (HDisjCalls: M.Disj calls1 calls2)
      (HTrue: evalExpr p = true)
      (HAction: SemAction a newRegs1 calls1 r1)
      (HSemAction: SemAction (cont r1) newRegs2 calls2 r2)
      unewRegs ucalls
      (HUNewRegs: unewRegs = M.union newRegs1 newRegs2)
      (HUCalls: ucalls = M.union calls1 calls2):
      SemAction (IfElse p a a' cont) unewRegs ucalls r2
  | SemIfElseFalse
      (p: Expr type (SyntaxKind Bool)) k1
      (a: ActionT type k1)
      (a': ActionT type k1)
      (r1: type k1)
      k2 (cont: type k1 -> ActionT type k2)
      newRegs1 newRegs2 calls1 calls2 (r2: type k2)
      (HDisjRegs: M.Disj newRegs1 newRegs2)
      (HDisjCalls: M.Disj calls1 calls2)
      (HFalse: evalExpr p = false)
      (HAction: SemAction a' newRegs1 calls1 r1)
      (HSemAction: SemAction (cont r1) newRegs2 calls2 r2)
      unewRegs ucalls
      (HUNewRegs: unewRegs = M.union newRegs1 newRegs2)
      (HUCalls: ucalls = M.union calls1 calls2):
      SemAction (IfElse p a a' cont) unewRegs ucalls r2
  | SemAssertTrue
      (p: Expr type (SyntaxKind Bool)) k2
      (cont: ActionT type k2) newRegs2 calls2 (r2: type k2)
      (HTrue: evalExpr p = true)
      (HSemAction: SemAction cont newRegs2 calls2 r2):
      SemAction (Assert_ p cont) newRegs2 calls2 r2
  | SemDispl ls k2 cont newRegs2 calls2 (r2: type k2)
             (HSemAction: SemAction cont newRegs2 calls2 r2):
      SemAction (Displ ls cont) newRegs2 calls2 r2
  | SemReturn
      k (e: Expr type (SyntaxKind k)) evale
      (HEvalE: evale = evalExpr e):
      SemAction (Return e) (M.empty _) (M.empty _) evale.
End Semantics.

Section AppendAction.

End AppendAction.

Inductive UnitLabel :=
| Rle: option string -> UnitLabel
| Meth: option (Attribute (sigT SignT)) -> UnitLabel.

Record LabelT := { annot: option (option string);
                   defs: MethsT;
                   calls: MethsT }.

Section GivenModule.
  Variable m: Modules.

  Section GivenOldregs.
    Variable o: RegsT.

    Inductive Substep: UpdatesT -> UnitLabel -> MethsT -> Prop :=
    | EmptyRule:
        Substep (M.empty _) (Rle None) (M.empty _)
    | EmptyMeth:
        Substep (M.empty _) (Meth None) (M.empty _)
    | SingleRule k (a: Action Void)
                 (HInRules: List.In {| attrName := k; attrType := a |} (getRules m))
                 u cs (HAction: SemAction o (a type) u cs WO):
        Substep u (Rle (Some k)) cs
    | SingleMeth (f: DefMethT)
                 (HIn: In f (getDefsBodies m))
                 u cs argV retV
                 (HAction: SemAction o ((projT2 (attrType f)) type argV) u cs retV)
                 sig (Hsig: sig = {| attrName := attrName f;
                                     attrType := (existT _ _ (argV, retV)) |}):
        Substep u (Meth (Some sig)) cs.

    Record SubstepRec :=
      { upd: UpdatesT;
        unitAnnot: UnitLabel;
        cms: MethsT;
        substep: Substep upd unitAnnot cms }.

    Definition Substeps := list SubstepRec.

    Definition canCombine (s1 s2: SubstepRec) :=
      M.Disj (upd s1) (upd s2) /\
      (forall x y, unitAnnot s1 = Meth (Some x) ->
                   unitAnnot s2 = Meth (Some y) -> attrName x <> attrName y) /\
      (exists x, unitAnnot s1 = Meth x \/ unitAnnot s2 = Meth x) /\
      M.Disj (cms s1) (cms s2).

    Inductive substepsComb: Substeps -> Prop :=
    | NilSubsteps: substepsComb nil
    | AddSubstep (s: SubstepRec) (ss: Substeps):
        substepsComb ss -> (forall s', In s' ss -> canCombine s s') ->
        substepsComb (s :: ss).

    Fixpoint foldSSUpds (ss: Substeps) :=
      match ss with
        | x :: xs => M.union (foldSSUpds xs) (upd x)
        | nil => M.empty _
      end.

    Definition getLabel (a: UnitLabel) (cs: MethsT) :=
      {| annot :=
           match a with
             | Rle x => Some x
             | Meth _ => None
           end;
         defs :=
           match a with
             | Meth (Some {| attrName := n; attrType := t |}) =>
               M.add n t (M.empty _)
             | _ => M.empty _
           end;
         calls := cs |}.

    Definition getSLabel (s: SubstepRec) := getLabel (unitAnnot s) (cms s).

    Definition mergeLabel lnew lold :=
      match lnew, lold with
        | {| annot := a'; defs := d'; calls := c' |},
          {| annot := a; defs := d; calls := c |} =>
          {| annot := match a', a with
                        | None, x => x
                        | x, None => x
                        | x, y => x
                      end; defs := M.union d' d; calls := M.union c' c |}
      end.

    Definition addLabelLeft lold s := mergeLabel (getSLabel s) lold.

    Fixpoint foldSSLabel (ss: Substeps) :=
      match ss with
        | x :: xs => addLabelLeft (foldSSLabel xs) x
        | nil => {| annot := None; defs := M.empty _; calls := M.empty _ |}
      end.

    Theorem signIsEq :
      forall (l1 l2 : sigT SignT), {l1 = l2} + {l1 <> l2}.
Admitted.

    Definition hide (l: LabelT) :=
      Build_LabelT (annot l) (M.subtractKV signIsEq (defs l) (calls l))
                   (M.subtractKV signIsEq (calls l) (defs l)).

    Definition wellHidden (l: LabelT) := M.KeysDisj (defs l) (getCalls m) /\
                                         M.KeysDisj (calls l) (getDefs m).

    Inductive Step: UpdatesT -> LabelT -> Prop :=
      StepIntro ss (HSubsteps: substepsComb ss)
                (HWellHidden: wellHidden (hide (foldSSLabel ss))) :
        Step (foldSSUpds ss) (hide (foldSSLabel ss)).

  End GivenOldregs.

  Inductive Multistep: RegsT -> RegsT -> list LabelT -> Prop :=
  | NilMultistep o1 o2: o1 = o2 -> Multistep o1 o2 nil
  | Multi o a n (HMultistep: Multistep o n a)
          u l (HStep: Step n u l):
      Multistep o (M.union u n) (l :: a).
Definition initRegs (init: list RegInitT): RegsT.
Admitted.

  Definition LabelSeqT := list LabelT.

  Inductive Behavior: RegsT -> LabelSeqT -> Prop :=
  | BehaviorIntro a n (HMultistepBeh: Multistep (initRegs (getRegInits m)) n a):
      Behavior n a.
End GivenModule.

Definition equivalentLabel p l1 l2 :=
  p (defs l1) = defs l2 /\
  p (calls l1) = calls l2 /\
  match annot l1, annot l2 with
    | Some _, Some _ => True
    | None, None => True
    | _, _ => False
  end.

Inductive equivalentLabelSeq p: LabelSeqT -> LabelSeqT -> Prop :=
| NilEquivalentSeq: equivalentLabelSeq p nil nil
| EquivalentSeq x xs y ys: equivalentLabel p x y -> equivalentLabelSeq p xs ys ->
                           equivalentLabelSeq p (x :: xs) (y :: ys).

Definition traceRefines p m1 m2 :=
  forall s1 sig1, Behavior m1 s1 sig1 ->
                  exists s2 sig2, Behavior m2 s2 sig2 /\
                             equivalentLabelSeq p sig1 sig2.

Section MapSet.
  Variable A: Type.
  Variable p: M.key -> A -> option A.

  Definition rmModify k v m := match p k v with
                                 | None => m
                                 | Some v' => M.add k v' m
                               end.
  Definition liftToMap1 s :=
    M.fold rmModify s (M.empty _).

End MapSet.

Definition idElementwise A (k: M.key) (v: A) := Some v.

Notation "ma '<<=[' p ']' mb" :=
  (traceRefines (liftToMap1 p) ma mb) (at level 100, format "ma  <<=[  p  ]  mb").
Notation "ma '<<==' mb" :=
  (ma <<=[@idElementwise _] mb) (at level 100, format "ma  <<==  mb").
Module Export Kami_DOT_Semantics.
Module Export Kami.
Module Export Semantics.
End Semantics.

End Kami.

End Kami_DOT_Semantics.
Import Kami.Lib.Struct.
Import Kami.Syntax.

Section Equiv.
  Variable t1 t2: Kind -> Type.

  Definition ft1 := fullType t1.
  Definition ft2 := fullType t2.

  Inductive ActionEquiv: forall {k}, ActionT t1 k -> ActionT t2 k -> Prop :=
  | AEMCall: forall {k} n s (e1: Expr t1 (SyntaxKind (arg s)))
                    (e2: Expr t2 (SyntaxKind (arg s)))
                    (cont1: t1 (ret s) -> ActionT t1 k)
                    (cont2: t2 (ret s) -> ActionT t2 k),
      (forall (v1: ft1 (SyntaxKind (ret s)))
              (v2: ft2 (SyntaxKind (ret s))),
          ActionEquiv (cont1 v1) (cont2 v2)) ->
      ActionEquiv (MCall n s e1 cont1) (MCall n s e2 cont2)
  | AELet: forall {k k1' k2'} (e1: Expr t1 k1') (e2: Expr t2 k2')
                  (cont1: fullType t1 k1' -> ActionT t1 k)
                  (cont2: fullType t2 k2' -> ActionT t2 k),
      (forall (v1: ft1 k1') (v2: ft2 k2'),
          ActionEquiv (cont1 v1) (cont2 v2)) ->
      ActionEquiv (Let_ e1 cont1) (Let_ e2 cont2)
  | AEReadNondet: forall {k k1' k2'}
                         (cont1: fullType t1 k1' -> ActionT t1 k)
                         (cont2: fullType t2 k2' -> ActionT t2 k),
      (forall (v1: ft1 k1') (v2: ft2 k2'),
          ActionEquiv (cont1 v1) (cont2 v2)) ->
      ActionEquiv (ReadNondet _ cont1) (ReadNondet _ cont2)
  | AEReadReg: forall {k k1' k2'} rn
                      (cont1: fullType t1 k1' -> ActionT t1 k)
                      (cont2: fullType t2 k2' -> ActionT t2 k),
      (forall (v1: ft1 k1') (v2: ft2 k2'),
          ActionEquiv (cont1 v1) (cont2 v2)) ->
      ActionEquiv (ReadReg rn _ cont1) (ReadReg rn _ cont2)
  | AEWriteReg: forall {k k1' k2'} rn (e1: Expr t1 k1') (e2: Expr t2 k2')
                       (cont1: ActionT t1 k) (cont2: ActionT t2 k),
      ActionEquiv cont1 cont2 ->
      ActionEquiv (WriteReg rn e1 cont1) (WriteReg rn e2 cont2)
  | AEIfElse: forall {k k'} (e1: Expr t1 (SyntaxKind Bool)) (e2: Expr t2 (SyntaxKind Bool))
                     (ta1 fa1: ActionT t1 k') (ta2 fa2: ActionT t2 k')
                     (cont1: t1 k' -> ActionT t1 k) (cont2: t2 k' -> ActionT t2 k),
      ActionEquiv ta1 ta2 -> ActionEquiv fa1 fa2 ->
      (forall (v1: ft1 (SyntaxKind k')) (v2: ft2 (SyntaxKind k')),
          ActionEquiv (cont1 v1) (cont2 v2)) ->
      ActionEquiv (IfElse e1 ta1 fa1 cont1) (IfElse e2 ta2 fa2 cont2)
  | AEAssert: forall {k} (e1: Expr t1 (SyntaxKind Bool)) (e2: Expr t2 (SyntaxKind Bool))
                     (cont1: ActionT t1 k) (cont2: ActionT t2 k),
      ActionEquiv cont1 cont2 ->
      ActionEquiv (Assert_ e1 cont1) (Assert_ e2 cont2)
  | AERet: forall {k} (e1: Expr t1 (SyntaxKind k))
                  (e2: Expr t2 (SyntaxKind k)),
      ActionEquiv (Return e1) (Return e2).
Definition RuleEquiv (r: Attribute (Action Void)) : Prop.
Admitted.

  Inductive RulesEquiv: list (Attribute (Action Void)) -> Prop :=
  | RulesEquivNil: RulesEquiv nil
  | RulesEquivCons:
      forall r,
        RuleEquiv r ->
        forall rules,
          RulesEquiv rules -> RulesEquiv (r :: rules).
Definition MethEquiv (dm: DefMethT) : Prop.
Admitted.

  Inductive MethsEquiv: list DefMethT -> Prop :=
  | MethsEquivNil: MethsEquiv nil
  | MethsEquivCons:
      forall dm, MethEquiv dm ->
                 forall meths,
                   MethsEquiv meths -> MethsEquiv (dm :: meths).
Definition ModEquiv (m: Modules): Prop.
Admitted.

End Equiv.

Notation "'ModPhoasWf' m" := (forall ty1 ty2, ModEquiv ty1 ty2 m) (at level 0).

  Lemma ModEquiv_modular:
    forall t1 t2 m1 m2,
      ModEquiv t1 t2 m1 ->
      ModEquiv t1 t2 m2 ->
      ModEquiv t1 t2 (ConcatMod m1 m2).
Admitted.
Module Export Kami.
Module Export Wf.
End Wf.

End Kami.

Module Export Kami_DOT_SemFacts_WRAPPED.
Module Export SemFacts.
Import Kami.Semantics.

Lemma idElementwiseId A: liftToMap1 (@idElementwise A) = id.
Admitted.

End SemFacts.
Include Kami_DOT_SemFacts_WRAPPED.SemFacts.
Import Kami.Lib.Struct.
Import Kami.Syntax.
Import Stdlib.Strings.String.
Import Stdlib.Lists.List.

Set Implicit Arguments.
Set Asymmetric Patterns.

Section Rename.
  Variable rename: string -> string.

  Definition renameAttr A a := {| attrName := rename (@attrName A a); attrType := attrType a |}.

  Definition renameListAttr A (ls: list (Attribute A)) :=
    map (@renameAttr _) ls.

  Fixpoint renameAction k t (a: ActionT t k) :=
    match a with
    | MCall meth s e cont => MCall (rename meth) s e (fun v => renameAction (cont v))
    | Let_ lret' e cont => Let_ e (fun v => renameAction (cont v))
    | ReadNondet k cont => ReadNondet k (fun v => renameAction (cont v))
    | ReadReg r k cont => ReadReg (rename r) k (fun v => renameAction (cont v))
    | WriteReg r k e cont => WriteReg (rename r) e (renameAction cont)
    | IfElse e k t f cont => IfElse e (renameAction t) (renameAction f)
                                   (fun v => renameAction (cont v))
    | Assert_ e cont => Assert_ e (renameAction cont)
    | Displ ls cont => Displ ls (renameAction cont)
    | Return e => Return e
    end.

  Definition renameRules (rules: list (Attribute (Action Void))) :=
                              map (fun x => match x with
                                         | {| attrName := r;
                                              attrType := a |} =>
                                           {| attrName := rename r;
                                              attrType := fun ty => renameAction (a ty) |}
                                            end) rules.
Definition renameMeths (meths: list DefMethT): list DefMethT.
Admitted.

  Fixpoint renameModules (m: Modules) :=
    match m with
    | PrimMod prim =>
      PrimMod {| pm_name := prim.(pm_name);
                 pm_regInits := renameListAttr prim.(pm_regInits);
                 pm_rules := renameRules prim.(pm_rules);
                 pm_methods := renameMeths prim.(pm_methods)
              |}
    | Mod regs rules dms => Mod (renameListAttr regs) (renameRules rules) (renameMeths dms)
    | ConcatMod m1 m2 => ConcatMod (renameModules m1) (renameModules m2)
    end.
End Rename.

Section RenameInv.
End RenameInv.

Section RenameRefinement.

End RenameRefinement.

Fixpoint bijective dom img s :=
  match dom, img with
  | d :: dt, i :: it =>
    if string_dec s d then i
    else if string_dec s i then d
         else bijective dt it s
  | _, _ => s
  end.
Module Export Kami_DOT_Renaming.
Module Export Kami.
Module Export Renaming.
End Renaming.

End Kami.

End Kami_DOT_Renaming.
Import Stdlib.Lists.List.
Import Kami.Lib.Struct.
Import Kami.Syntax.
Import Kami.Semantics.
Import Kami.Wf.
Import Kami.Inline.

Set Implicit Arguments.

Theorem inlineF_refines:
  forall m (Hequiv: ModEquiv type typeUT m)
         (Hdms: NoDup (namesOf (getDefsBodies m))),
    let im := inlineF m in
    snd im = true -> traceRefines id m (fst im).
Admitted.

Section Partial.

End Partial.
Module Export Kami_DOT_InlineFacts.
Module Export Kami.
Module Export InlineFacts.
End InlineFacts.

End Kami.

End Kami_DOT_InlineFacts.
Import Stdlib.Strings.String.
Import Stdlib.Lists.List.
Import Kami.Lib.Struct.
Import Kami.Lib.Indexer.
Import Kami.Lib.StringEq.
Import Kami.Syntax.
Import Kami.Renaming.

Section SpecializeModule.
  Variable m: Modules.
  Variable i: nat.

  Fixpoint makeNoDup (l: list string) :=
    match l with
    | nil => nil
    | h :: t => let nt := makeNoDup t in
                if string_in h nt then nt else h :: nt
    end.

  Definition spDom := makeNoDup ((namesOf (getRegInits m))
                                   ++ (namesOf (getRules m))
                                   ++ (namesOf (getDefsBodies m))
                                   ++ (getCalls m)).

  Definition spf := fun e => e __ i.

  Definition spImg := map spf spDom.

  Definition specializer := bijective spDom spImg.
  Definition specializeMod := renameModules specializer m.

End SpecializeModule.

Section SpRefinement.

End SpRefinement.
Module Export Kami_DOT_Specialize.
Module Export Kami.
Module Export Specialize.
End Specialize.

End Kami.

End Kami_DOT_Specialize.
Import Kami.Syntax.
Import Kami.Wf.
Import Kami.Specialize.

Section Duplicate.
  Variable m: nat -> Modules.

  Fixpoint duplicate n :=
    match n with
    | O => specializeMod (m O) O
    | S n' => ConcatMod (specializeMod (m n) n) (duplicate n')
    end.

End Duplicate.

Section DuplicateFacts.
  Variable m: nat -> Modules.

  Lemma duplicate_ModEquiv:
    forall ty1 ty2 n,
      (forall iv, ModEquiv ty1 ty2 (m iv)) ->
      ModEquiv ty1 ty2 (duplicate m n).
Admitted.

End DuplicateFacts.
Module Export Kami_DOT_Duplicate.
Module Export Duplicate.
End Duplicate.

End Kami_DOT_Duplicate.
Import Stdlib.Strings.String.
Import Stdlib.Lists.List.
Import Kami.Lib.CommonTactics.
Import Kami.Lib.Struct.
Import Kami.Lib.Indexer.
Import Kami.Lib.StringEq.
Import Kami.Syntax.
Import Kami.Semantics.
Import Kami.Wf.
Import Kami.Notations.
Import Kami.Inline.
Import Kami.InlineFacts.

Ltac kequiv_red :=
  eauto;
  match goal with
  | [ |- ModEquiv _ _ _ ] => apply duplicate_ModEquiv; intros
  | [ |- ModEquiv _ _ _ ] => apply ModEquiv_modular
  | [ |- ModEquiv _ _ ?m ] => unfold_head m
  end.

Ltac kequiv_unit :=
  match goal with
  | [ |- ModEquiv _ _ _ ] => constructor; intros
  | [ |- RuleEquiv _ _ _ ] => unfold RuleEquiv; intros
  | [ |- MethEquiv _ _ _ ] => unfold MethEquiv; intros
  | [ |- RulesEquiv _ _ _ ] => constructor; intros
  | [ |- MethsEquiv _ _ _ ] => constructor; intros
  | [ |- ActionEquiv _ _ ] => constructor; intros
  | [ |- In _ _] => simpl; tauto
  end.

Ltac kequiv :=
  intros;
  repeat kequiv_red;
  repeat kequiv_unit.

Ltac kstring_simpl :=
  repeat autounfold with NameDefs in *;
  cbv [withPrefix prefixSymbol append] in *.

Ltac kinline_compute_in H :=
  repeat autounfold with ModuleDefs in H;
  repeat autounfold with MethDefs in H;
  cbv [inlineF inline inlineDms inlineDms'
               inlineDmToMod inlineDmToRules inlineDmToRule
               inlineDmToDms inlineDmToDm inlineDm
               filterDms filter
               noInternalCalls noCalls
               noCallsRules noCallsDms noCallDm isLeaf
               getBody inlineArg
               appendAction getAttribute
               makeModule makeModule' max plus
               pm_name pm_regInits pm_rules pm_methods
               getRegInits getDefs getDefsBodies getRules namesOf
               map app attrName attrType
               getCalls getCallsR getCallsM getCallsA
               ret arg fst snd projT1 projT2
               string_in string_eq ascii_eq
               Bool.eqb existsb andb orb negb] in H;
  kstring_simpl;
  repeat
    match type of H with
    | context[SignatureT_dec ?s ?s] =>
      rewrite (signature_eq s) in H; unfold eq_rect in H
    end.

Ltac kinline_refine m :=

  let Hequiv := fresh "Hequiv" in
  assert (ModEquiv type typeUT m) as Hequiv by kequiv;

  let Hin := fresh "Hin" in
  pose proof (inlineF_refines
                Hequiv (Reflection.noDupStr_NoDup (namesOf (getDefsBodies m)) eq_refl))
    as Hin;
  unfold MethsT in Hin; rewrite <-SemFacts.idElementwiseId in Hin;

  let origm := fresh "origm" in
  set m as origm in Hin at 2;
  kinline_compute_in Hin;
  subst origm;
  specialize (Hin eq_refl);
  exact (existT _ _ Hin).
Module Export Kami_DOT_Tactics.
Module Export Kami.
Module Export Tactics.
End Tactics.

End Kami.

End Kami_DOT_Tactics.
Import Stdlib.Strings.String.
Import Stdlib.Lists.List.
Import Kami.Lib.Indexer.
Import Kami.Syntax.
Import Kami.Notations.

Import ListNotations.

Set Implicit Arguments.

Section NativeFifo.
  Variable fifoName: string.

  Variable dType: Kind.
  Variable default: ConstT dType.

  Local Notation "^ s" := (fifoName -- s) (at level 0).

  Definition listEltT ty := list (ty dType).
  Definition listEltK ty := @NativeKind (listEltT ty) nil.
  Definition listElt ty := (^"elt" :: (@NativeConst (listEltT ty) nil nil))%struct.

  Definition listIsEmpty {ty} (l: fullType ty (listEltK ty)) :=
    match l with
    | nil => ConstBool true
    | _ => ConstBool false
    end.
  Definition listEnq {ty} (a: ty dType) (l: fullType ty (listEltK ty)) :=
    l ++ [a].
  Definition listDeq {ty} (l: fullType ty (listEltK ty)) :=
    match l with
    | nil => nil
    | h :: t => t
    end.
Definition listFirstElt {ty} (l: fullType ty (listEltK ty)): Expr ty (SyntaxKind dType).
exact (match l with
    | nil => ($$default)%kami_expr
    | h :: t => (#h)%kami_expr
    end).
Defined.
Definition nativeEnq {ty} : forall (d: ty dType), ActionT ty Void.
exact (fun d =>
    (ReadN eltT : listEltK ty <- ^"elt";
     Write ^"elt" <- (Var _ (listEltK ty) (listEnq d eltT));
     Retv)%kami_action).
Defined.
Definition nativeDeq {ty} : ActionT ty dType.
exact ((ReadN eltT : listEltK ty <- ^"elt";
     Assert !$$(listIsEmpty eltT);
     Write ^"elt" <- (Var _ (listEltK ty) (listDeq eltT));
     Ret (listFirstElt eltT))%kami_action).
Defined.
Definition nativeFirstElt {ty} : ActionT ty dType.
Admitted.

  Definition nativeFifo := MODULE {
    RegisterN ^"elt" : listEltK type <- (NativeConst nil nil)

    with Method ^"enq"(d : dType) : Void := (nativeEnq d)
    with Method ^"deq"() : dType := nativeDeq
    with Method ^"firstElt"() : dType := nativeFirstElt
  }.

  Definition nativeSimpleFifo := MODULE {
    RegisterN ^"elt" : listEltK type <- (NativeConst nil nil)

    with Method ^"enq"(d : dType) : Void := (nativeEnq d)
    with Method ^"deq"() : dType := nativeDeq
  }.

End NativeFifo.

#[global] Hint Unfold nativeFifo nativeSimpleFifo : ModuleDefs.
#[global] Hint Unfold listEltT listEltK listElt

     nativeEnq nativeDeq nativeFirstElt: MethDefs.
Module Export Kami.
Module Export Ex.
Module Export NativeFifo.
End NativeFifo.

End Ex.

End Kami.
Export Stdlib.Strings.String.
Export Stdlib.Lists.List.
Export Kami.Lib.Indexer.
Export Kami.Lib.FMap.
Export Kami.Lib.Word.
Export Kami.Lib.Struct.
Export Kami.Syntax.
Export Kami.Semantics.
Export Kami.Wf.
Export Kami.Notations.
Export Kami.Inline.
Export Kami.InlineFacts.
Export Kami.Tactics.
Import Kami.Ex.NativeFifo.

Import ListNotations.
Set Asymmetric Patterns.

Open Scope string.

Section DataSizeAbs.

Variable dataSize: nat.

Definition enq1 :=
  MethodSig ("fifo1" -- "enq") (Bit dataSize): Void.

Definition stage1 :=
  MODULE {
    Register "data" : Bit dataSize <- Default

    with Rule "produce" :=
      Read data <- "data";
      Call enq1(#data);
      Write "data" <- #data + $1;
      Retv
  }.

#[local] Hint Unfold enq1 : MethDefs.
#[local] Hint Unfold stage1 : ModuleDefs.

Definition deq1 :=
  MethodSig ("fifo1" -- "deq") (): Bit dataSize.
Definition enq2 :=
  MethodSig ("fifo2" -- "enq") (Bit dataSize): Void.

Definition stage2 :=
  MODULE {
    Rule "doDouble" :=
      Call data <- deq1();
      LET doubled <- $2 * #data;
      Call enq2(#doubled);
      Retv
  }.

#[local] Hint Unfold deq1 enq2 : MethDefs.
#[local] Hint Unfold stage2 : ModuleDefs.

Definition nfifo1 :=
  @nativeSimpleFifo "fifo1" (Bit dataSize) Default.
Definition nfifo2 :=
  @nativeSimpleFifo "fifo2" (Bit dataSize) Default.

#[local] Hint Unfold nfifo1 nfifo2 : ModuleDefs.

Definition impl12 := (stage1 ++ nfifo1 ++ stage2)%kami.

#[local] Hint Unfold impl12 : ModuleDefs.
Lemma impl12_PhoasWf: ModPhoasWf impl12.
Admitted.
#[local] Hint Resolve impl12_PhoasWf.

Definition impl12Inl: {m: Modules & impl12 <<== m}.
Proof.
  kinline_refine impl12.
Defined.
