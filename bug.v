
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-quiet" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/utils/theories" "MetaRocq.Utils" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/common/theories" "MetaRocq.Common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/pcuic/theories" "MetaRocq.PCUIC" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq/theories" "MetaRocq.Template" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/safechecker-plugin/theories" "MetaRocq.SafeCheckerPlugin" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-pcuic/theories" "MetaRocq.TemplatePCUIC" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/safechecker/theories" "MetaRocq.SafeChecker" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/erasure/theories" "MetaRocq.Erasure" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/erasure-plugin/theories" "MetaRocq.ErasurePlugin" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/test-suite" "MetaRocq.TestSuite" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Equations" "Equations" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/ExtLib" "ExtLib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/erasure-plugin/src" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/safechecker-plugin/src" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 126 lines to 7 lines, then from 21 lines to 439 lines, then from 446 lines to 9 lines, then from 23 lines to 734 lines, then from 738 lines to 133 lines, then from 147 lines to 666 lines, then from 671 lines to 195 lines, then from 209 lines to 850 lines, then from 856 lines to 266 lines, then from 280 lines to 740 lines, then from 746 lines to 286 lines, then from 300 lines to 1536 lines, then from 1541 lines to 605 lines, then from 619 lines to 2320 lines, then from 2325 lines to 719 lines, then from 733 lines to 3851 lines, then from 3817 lines to 1078 lines, then from 1092 lines to 2288 lines, then from 2291 lines to 1623 lines, then from 1614 lines to 828 lines, then from 842 lines to 1693 lines, then from 1700 lines to 861 lines, then from 875 lines to 1247 lines, then from 1254 lines to 868 lines, then from 882 lines to 1416 lines, then from 1422 lines to 885 lines, then from 899 lines to 1378 lines, then from 1382 lines to 905 lines, then from 919 lines to 1621 lines, then from 1628 lines to 997 lines, then from 1011 lines to 1325 lines, then from 1332 lines to 1007 lines, then from 1021 lines to 1258 lines, then from 1265 lines to 1017 lines, then from 1031 lines to 2381 lines, then from 2387 lines to 1036 lines, then from 1050 lines to 2221 lines, then from 2212 lines to 1301 lines, then from 1315 lines to 2614 lines, then from 2613 lines to 1615 lines, then from 1629 lines to 1997 lines, then from 2003 lines to 1701 lines, then from 1715 lines to 2054 lines, then from 2058 lines to 1741 lines, then from 1755 lines to 1904 lines, then from 1911 lines to 1746 lines, then from 1760 lines to 1906 lines, then from 1913 lines to 1752 lines, then from 1766 lines to 1945 lines, then from 1952 lines to 1762 lines, then from 1776 lines to 3044 lines, then from 3046 lines to 1772 lines, then from 1786 lines to 2353 lines, then from 2357 lines to 1863 lines, then from 1877 lines to 3902 lines, then from 3905 lines to 2215 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 1.100 sec
   Expected coqc peak memory usage on this file: 671936.0 kb *)
Require Corelib.Floats.FloatOps.
Require Corelib.Strings.PrimStringAxioms.
Require MetaRocq.TestSuite.hott_example.
Require Equations.Prop.Classes.
Require MetaRocq.Utils.MRProd.
Require ExtLib.Structures.Monads.
Require Stdlib.Numbers.Integer.Abstract.ZProperties.
Require Stdlib.Structures.OrderedType.
Require Stdlib.Arith.Arith_base.
Require Stdlib.MSets.MSetList.
Require Stdlib.ZArith.BinIntDef.
Require MetaRocq.Utils.ByteCompare.
Export Stdlib.PArith.BinPos.
Import Stdlib.Bool.Bool.
Import Stdlib.Structures.OrdersFacts.
Import Stdlib.Numbers.Integer.Abstract.ZProperties.









#[local] Open Scope Z_scope.



Module Z
 <: ZAxiomsSig
 <: UsualOrderedTypeFull
 <: UsualDecidableTypeFull
 <: TotalOrder.



Include BinIntDef.Z.



Definition eq := @Logic.eq Z.
Definition eq_equiv := @eq_equivalence Z.
Notation "x <= y < z" := (x <= y /\ y < z) : Z_scope.
Notation "x < y <= z" := (x < y /\ y <= z) : Z_scope.

Definition divide x y := exists z, y = z*x.
Notation "( x | y )" := (divide x y) (at level 0).

Definition Even a := exists b, a = 2*b.
Definition Odd a := exists b, a = 2*b+1.



Definition eq_dec (x y : Z) : {x = y} + {x <> y}.
Admitted.
Program Definition succ_wd : Proper (eq==>eq) succ := _.
Program Definition pred_wd : Proper (eq==>eq) pred := _.
Program Definition opp_wd : Proper (eq==>eq) opp := _.
Program Definition add_wd : Proper (eq==>eq==>eq) add := _.
Program Definition sub_wd : Proper (eq==>eq==>eq) sub := _.
Program Definition mul_wd : Proper (eq==>eq==>eq) mul := _.
Program Definition lt_wd : Proper (eq==>eq==>iff) lt := _.
Program Definition div_wd : Proper (eq==>eq==>eq) div := _.
Program Definition mod_wd : Proper (eq==>eq==>eq) modulo := _.
Program Definition quot_wd : Proper (eq==>eq==>eq) quot := _.
Program Definition rem_wd : Proper (eq==>eq==>eq) rem := _.
Program Definition pow_wd : Proper (eq==>eq==>eq) pow := _.
Program Definition testbit_wd : Proper (eq==>eq==>Logic.eq) testbit := _.



Module Import Private_BootStrap.

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

Lemma ltb_lt n m : (n <? m) = true <-> n < m.
Admitted.

Lemma leb_le n m : (n <=? m) = true <-> n <= m.
Admitted.

Lemma compare_eq_iff n m : (n ?= m) = Eq <-> n = m.
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

Lemma bi_induction (P : Z -> Prop) :
  Proper (eq ==> iff) P ->
  P 0 ->
  (forall x, P x <-> P (succ x)) ->
  forall z, P z.
Admitted.



Include ZBasicProp <+ UsualMinMaxLogicalProperties <+ UsualMinMaxDecProperties.



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



Lemma square_spec n : square n = n * n.
Admitted.

Lemma sqrt_spec n : 0<=n ->
 let s := sqrt n in s*s <= n < (succ s)*(succ s).
Admitted.

Lemma sqrt_neg n : n<0 -> sqrt n = 0.
Admitted.



Lemma log2_spec n : 0 < n -> 2^(log2 n) <= n < 2^(succ (log2 n)).
Admitted.

Lemma log2_nonpos n : n<=0 -> log2 n = 0.
Admitted.



Lemma even_spec n : even n = true <-> Even n.
Admitted.

Lemma odd_spec n : odd n = true <-> Odd n.
Admitted.

Lemma div_mod a b : b<>0 -> a = b*(a/b) + (a mod b).
Admitted.

Lemma mod_pos_bound a b : 0 < b -> 0 <= a mod b < b.
Admitted.

Definition mod_bound_pos a b (_:0<=a) := mod_pos_bound a b.

Lemma mod_neg_bound a b : b < 0 -> b < a mod b <= 0.
Admitted.

Lemma quot_rem a b : b<>0 -> a = b*(a÷b) + rem a b.
Admitted.

Lemma rem_bound_pos a b : 0<=a -> 0<b -> 0 <= rem a b < b.
Admitted.

Lemma rem_opp_l a b : b<>0 -> rem (-a) b = - (rem a b).
Admitted.

Lemma rem_opp_r a b : b<>0 -> rem a (-b) = rem a b.
Admitted.

Lemma gcd_divide_l a b : (gcd a b | a).
Admitted.

Lemma gcd_divide_r a b : (gcd a b | b).
Admitted.

Lemma gcd_greatest a b c : (c|a) -> (c|b) -> (c | gcd a b).
Admitted.

Lemma gcd_nonneg a b : 0 <= gcd a b.
Admitted.



Lemma div2_spec a : div2 a = shiftr a 1.
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

End Z.



Number Notation Z Z.of_num_int Z.to_num_int : Z_scope.

Infix "+" := Z.add : Z_scope.
Notation "- x" := (Z.opp x) : Z_scope.
Infix "-" := Z.sub : Z_scope.
Infix "*" := Z.mul : Z_scope.
Infix "<=" := Z.le : Z_scope.
Infix "<" := Z.lt : Z_scope.
Infix ">=" := Z.ge : Z_scope.
Infix ">" := Z.gt : Z_scope.



Module Pos2Z.

End Pos2Z.

Module Z2Pos.

End Z2Pos.

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
Declare Scope Int_scope.
#[local] Open Scope Int_scope.

Module Type Int.

  Parameter t : Set.

  Parameter _0 : t.
  Parameter _1 : t.
  Parameter _2 : t.
  Parameter add : t -> t -> t.
  Parameter max : t -> t -> t.

  Notation "0" := _0 : Int_scope.
  Notation "1" := _1 : Int_scope.
  Notation "2" := _2 : Int_scope.
  Infix "+" := add : Int_scope.
  Axiom ltb : t -> t -> bool.
  Axiom leb : t -> t -> bool.
  Infix "<?" := ltb.
  Infix "<=?" := leb.

End Int.

Module MoreInt (Import I:Int).

End MoreInt.

Module Z_as_Int <: Int.
  #[local] Open Scope Z_scope.
  Definition t := Z.
  Definition _0 := 0.
  Definition _1 := 1.
  Definition _2 := 2.
  Definition _3 := 3.
  Definition add := Z.add.
  Definition opp := Z.opp.
  Definition sub := Z.sub.
  Definition mul := Z.mul.
  Definition max := Z.max.
  Definition eqb := Z.eqb.
  Definition ltb := Z.ltb.
  Definition leb := Z.leb.

  Definition eq_dec := Z.eq_dec.
  Definition gt_le_dec i j : {i > j} + { i <= j }.
Admitted.
  Definition ge_lt_dec i j : {i >= j} + { i < j }.
Admitted.

  Definition i2z : t -> Z := fun n => n.
  Lemma i2z_eq n p : i2z n = i2z p -> n = p.
Admitted.
  Lemma i2z_0 : i2z _0 = 0.
Admitted.
  Lemma i2z_1 : i2z _1 = 1.
Admitted.
  Lemma i2z_2 : i2z _2 = 2.
Admitted.
  Lemma i2z_3 : i2z _3 = 3.
Admitted.
  Lemma i2z_add n p : i2z (n + p) = i2z n + i2z p.
Admitted.
  Lemma i2z_opp n : i2z (- n) = - i2z n.
Admitted.
  Lemma i2z_sub n p : i2z (n - p) = i2z n - i2z p.
Admitted.
  Lemma i2z_mul n p : i2z (n * p) = i2z n * i2z p.
Admitted.
  Lemma i2z_max n p : i2z (max n p) = Z.max (i2z n) (i2z p).
Admitted.
  Lemma i2z_eqb n p : eqb n p = Z.eqb (i2z n) (i2z p).
Admitted.
  Lemma i2z_leb n p : leb n p = Z.leb (i2z n) (i2z p).
Admitted.
  Lemma i2z_ltb n p : ltb n p = Z.ltb (i2z n) (i2z p).
Admitted.
End Z_as_Int.
Module Export Stdlib_DOT_ZArith_DOT_Int.
Module Export Stdlib.
Module Export ZArith.
Module Export Int.
End Int.

End ZArith.

End Stdlib.

End Stdlib_DOT_ZArith_DOT_Int.

Export Stdlib.Arith.Arith_base.
Module Export Stdlib.
Module Export ZArith.
Module Export Znat.
End Znat.

End ZArith.

End Stdlib.

Module Export Equations_DOT_Prop_DOT_EqDecInstances_WRAPPED.
Module Export EqDecInstances.
Import Equations.Prop.Classes.

#[export]
Polymorphic Instance prod_eqdec {A B} `(EqDec A) `(EqDec B) : EqDec (prod A B).
Admitted.

End EqDecInstances.

Module Export Equations_DOT_Prop_DOT_Loader_WRAPPED.
Module Export Loader.
Export Equations.Prop.Classes.
Export Equations_DOT_Prop_DOT_EqDecInstances_WRAPPED.EqDecInstances.
End Loader.

Module Export Equations_DOT_Prop_DOT_Equations_WRAPPED.
Module Export Equations.

Export Equations_DOT_Prop_DOT_Loader_WRAPPED.Loader.
End Equations.
Module Export ReflectEq.

Inductive reflectProp (P : Prop) : bool -> Prop :=
 | reflectP : P -> reflectProp P true
 | reflectF : ~ P -> reflectProp P false.

Lemma reflect_reflectProp_2 {A B} {P : A -> B -> Prop} {b} : (forall x y, reflect (P x y) (b x y)) -> (forall x y, reflectProp (P x y) (b x y)).
Admitted.

Class ReflectEq A := {
  eqb : A -> A -> bool ;
  eqb_spec : forall x y : A, reflectProp (x = y) (eqb x y)
}.

#[global, program] Instance ReflectEq_EqDec {A} (R : ReflectEq A) : EqDec A := {
  eq_dec := fun x y =>
    match eqb x y with
    | true => left _
    | false => right _
    end }.
Admit Obligations.

Section eq_list.
End eq_list.

#[global] Instance reflect_nat : ReflectEq nat := {
  eqb_spec := reflect_reflectProp_2 PeanoNat.Nat.eqb_spec
}.
Module Export MetaRocq_DOT_Utils_DOT_ReflectEq.
Module Export MetaRocq.
Module Export Utils.
Module Export ReflectEq.
End ReflectEq.

End Utils.

End MetaRocq.

End MetaRocq_DOT_Utils_DOT_ReflectEq.
Import Stdlib.Structures.OrderedType.
Import Stdlib.Structures.Orders.
Import Equations_DOT_Prop_DOT_Equations_WRAPPED.Equations.

Definition compare_cont (c : comparison) (d : comparison) : comparison :=
  match c with
  | Datatypes.Lt => Datatypes.Lt
  | Datatypes.Eq => d
  | Datatypes.Gt => Datatypes.Gt
  end.

Module BoolOT <: UsualOrderedType.
  Definition t := bool.

  Definition compare (x y : bool) : comparison :=
    if x then if y then Eq else Gt else if y then Lt else Eq.

  Definition lt (x y : bool) :=
    if x then False else y = true.

  Definition compare_spec (x y : bool) : CompareSpec (x = y) (lt x y) (lt y x) (compare x y).
Admitted.

  Definition eq : t -> t -> Prop := eq.
  Definition eq_equiv : Equivalence eq := _.

  Definition eq_dec (l1 l2 : t) : {l1 = l2}+{l1 <> l2}.
Admitted.

  Definition lt_strorder : StrictOrder lt.
Admitted.

  Definition lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.

End BoolOT.

Module ListOrderedType (A : UsualOrderedType) <: UsualOrderedType.
  Definition t := list A.t.
Import ListNotations.

  Fixpoint compare (l1 l2 : t) : comparison :=
    match l1, l2 with
    | [], [] => Eq
    | hd :: tl, hd' :: tl' => compare_cont (A.compare hd hd') (compare tl tl')
    | [], _ :: _ => Lt
    | _, [] => Gt
    end.

  Definition eq : t -> t -> Prop := eq.
  Definition eq_equiv : Equivalence eq := _.

  Inductive lt_ : t -> t -> Prop :=
  | lt_nil_cons hd tl : lt_ [] (hd :: tl)
  | lt_cons_cons_hd hd tl hd' tl' : A.lt hd hd' -> lt_ (hd :: tl) (hd' :: tl')
  | lt_cons_cons_tl hd tl tl' : lt_ tl tl' -> lt_ (hd :: tl) (hd :: tl').

  Definition lt := lt_.

  Global Instance lt_strorder : StrictOrder lt.
Admitted.

  Global Instance lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.

  Definition compare_spec :
    forall x y : t, CompareSpec (x = y) (lt x y) (lt y x) (compare x y).
Admitted.

  Definition eqb (l1 l2 : t) : bool
    := match compare l1 l2 with Eq => true | _ => false end.

  Program Definition eqb_dec (x y : t) : { x = y } + { x <> y } :=
    match eqb x y with
    | true => left _
    | false => right _
    end.
Admit Obligations.

  Global Instance eq_dec : EqDec t := { eq_dec := eqb_dec }.

End ListOrderedType.
Module Export MetaRocq.
Module Export Utils.
Module Export MRCompare.
End MRCompare.
Module Export MSetGenTree.
Import Stdlib.MSets.MSetInterface.
#[local] Open Scope lazy_bool_scope.

Module Type InfoTyp.
 Parameter t : Set.
End InfoTyp.

Module Type Ops (X:OrderedType)(Info:InfoTyp).

Definition elt := X.t.

Inductive tree  : Type :=
| Leaf : tree
| Node : Info.t -> tree -> X.t -> tree -> tree.

Definition empty := Leaf.

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

Fixpoint min_elt (t : tree) : option elt :=
 match t with
 | Leaf => None
 | Node _ Leaf x r => Some x
 | Node _ l x r => min_elt l
 end.

Fixpoint max_elt (t : tree) : option elt :=
  match t with
  | Leaf => None
  | Node _ l x Leaf => Some x
  | Node _ l x r => max_elt r
  end.

Definition choose := min_elt.

Fixpoint fold {A: Type} (f: elt -> A -> A) (t: tree) (base: A) : A :=
  match t with
  | Leaf => base
  | Node _ l x r => fold f r (f x (fold f l base))
 end.

Fixpoint elements_aux acc s :=
  match s with
   | Leaf => acc
   | Node _ l x r => elements_aux (x :: elements_aux acc r) l
  end.

Definition elements := elements_aux nil.

Fixpoint cardinal (s : tree) : nat :=
  match s with
   | Leaf => 0
   | Node _ l _ r => S (cardinal l + cardinal r)
  end.

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

Module Type Props (X:OrderedType)(Info:InfoTyp)(Import M:Ops X Info).

Inductive InT (x : elt) : tree -> Prop :=
  | IsRoot : forall c l r y, X.eq x y -> InT x (Node c l y r)
  | InLeft : forall c l r y, InT x l -> InT x (Node c l y r)
  | InRight : forall c l r y, InT x r -> InT x (Node c l y r).

Definition In := InT.

Definition Equal s s' := forall a : elt, InT a s <-> InT a s'.
Definition Subset s s' := forall a : elt, InT a s -> InT a s'.
Definition Empty s := forall a : elt, ~ InT a s.
Definition For_all (P : elt -> Prop) s := forall x, InT x s -> P x.
Definition Exists (P : elt -> Prop) s := exists x, InT x s /\ P x.

Definition lt_tree x s := forall y, InT y s -> X.lt y x.
Definition gt_tree x s := forall y, InT y s -> X.lt x y.

Inductive bst : tree -> Prop :=
  | BSLeaf : bst Leaf
  | BSNode : forall c x l r, bst l -> bst r ->
     lt_tree x l -> gt_tree x r -> bst (Node c l x r).

Definition IsOk := bst.

Class Ok (s:tree) : Prop := ok : bst s.

Fixpoint ltb_tree x s :=
 match s with
  | Leaf => true
  | Node _ l y r =>
     match X.compare x y with
      | Gt => ltb_tree x l && ltb_tree x r
      | _ => false
     end
 end.

Fixpoint gtb_tree x s :=
 match s with
  | Leaf => true
  | Node _ l y r =>
     match X.compare x y with
      | Lt => gtb_tree x l && gtb_tree x r
      | _ => false
     end
 end.

Fixpoint isok s :=
 match s with
  | Leaf => true
  | Node _  l x r => isok l && isok r && ltb_tree x l && gtb_tree x r
 end.

#[global]
Instance isok_Ok s : isok s = true -> Ok s | 10.
Admitted.

#[global]
Instance In_compat : Proper (X.eq==>eq==>iff) InT.
Admitted.

Lemma empty_spec : Empty empty.
Admitted.

#[global]
Instance empty_ok : Ok empty.
Admitted.

Lemma is_empty_spec : forall s, is_empty s = true <-> Empty s.
Admitted.

Lemma mem_spec : forall s x `{Ok s}, mem x s = true <-> InT x s.
Admitted.

Lemma min_elt_spec1 s x : min_elt s = Some x -> InT x s.
Admitted.

Lemma min_elt_spec2 s x y `{Ok s} :
 min_elt s = Some x -> InT y s -> ~ X.lt y x.
Admitted.

Lemma min_elt_spec3 s : min_elt s = None -> Empty s.
Admitted.

Lemma max_elt_spec1 s x : max_elt s = Some x -> InT x s.
Admitted.

Lemma max_elt_spec2 s x y `{Ok s} :
 max_elt s = Some x -> InT y s -> ~ X.lt x y.
Admitted.

Lemma max_elt_spec3 s : max_elt s = None -> Empty s.
Admitted.

Lemma choose_spec1 : forall s x, choose s = Some x -> InT x s.
Admitted.

Lemma choose_spec2 : forall s, choose s = None -> Empty s.
Admitted.

Lemma choose_spec3 : forall s s' x x' `{Ok s, Ok s'},
  choose s = Some x -> choose s' = Some x' ->
  Equal s s' -> X.eq x x'.
Admitted.

Lemma elements_spec1 : forall s x, InA X.eq x (elements s) <-> InT x s.
Admitted.

Lemma elements_spec2 : forall s `(Ok s), sort X.lt (elements s).
Admitted.

Lemma elements_spec2w : forall s `(Ok s), NoDupA X.eq (elements s).
Admitted.

Lemma elements_cardinal : forall s : tree, cardinal s = length (elements s).
Admitted.

Definition cardinal_spec (s:tree)(Hs:Ok s) := elements_cardinal s.

Lemma for_all_spec s f : Proper (X.eq==>eq) f ->
 (for_all f s = true <-> For_all (fun x => f x = true) s).
Admitted.

Lemma exists_spec s f : Proper (X.eq==>eq) f ->
 (exists_ f s = true <-> Exists (fun x => f x = true) s).
Admitted.

Lemma fold_spec (s:tree) {A} (i : A) (f : elt -> A -> A) :
 fold f s i = fold_left (flip f) (elements s) i.
Admitted.

Lemma subset_spec : forall s1 s2 `{Ok s1, Ok s2},
 (subset s1 s2 = true <-> Subset s1 s2).
Admitted.

Module L := MSetInterface.MakeListOrdering X.

Definition eq := Equal.
#[global]
Instance eq_equiv : Equivalence eq.
Admitted.

Definition lt (s1 s2 : tree) : Prop :=
 exists s1' s2', Ok s1' /\ Ok s2' /\ eq s1 s1' /\ eq s2 s2'
   /\ L.lt (elements s1') (elements s2').

#[global]
Instance lt_strorder : StrictOrder lt.
Admitted.

#[global]
Instance lt_compat : Proper (eq==>eq==>iff) lt.
Admitted.

Lemma compare_spec : forall s1 s2 `{Ok s1, Ok s2},
 CompSpec eq lt s1 s2 (compare s1 s2).
Admitted.

Lemma equal_spec : forall s1 s2 `{Ok s1, Ok s2},
 equal s1 s2 = true <-> eq s1 s2.
Admitted.

End Props.
Module Export MSetProperties.

Export Stdlib.MSets.MSetInterface.

Module WPropertiesOn (Import E : DecidableType)(M : WSetsOn E).
  Import M.

  Definition of_list (l : list elt) := List.fold_right add empty l.

End WPropertiesOn.

Module WProperties (M:WSets) := WPropertiesOn M.E M.
Module Properties := WProperties.

Module OrdProperties (M:Sets).
  Module Import P := Properties M.

End OrdProperties.
Module Export MSetAVL.
Import Stdlib.ZArith.Int.

Module Ops (Import I:Int)(X:OrderedType) <: MSetInterface.Ops X.
#[local] Notation int := I.t.

Include MSetGenTree.Ops X I.

Definition t := tree.

Definition height (s : t) : int :=
  match s with
  | Leaf => 0
  | Node h _ _ _ => h
  end.

Definition singleton x := Node 1 Leaf x Leaf.

Definition create l x r :=
   Node (max (height l) (height r) + 1) l x r.

Definition assert_false := create.

Definition bal l x r :=
  let hl := height l in
  let hr := height r in
  if (hr+2) <? hl then
    match l with
     | Leaf => assert_false l x r
     | Node _ ll lx lr =>
       if (height lr) <=? (height ll) then
         create ll lx (create lr x r)
       else
         match lr with
          | Leaf => assert_false l x r
          | Node _ lrl lrx lrr =>
              create (create ll lx lrl) lrx (create lrr x r)
         end
    end
  else
    if (hl+2) <? hr then
      match r with
       | Leaf => assert_false l x r
       | Node _ rl rx rr =>
         if (height rl) <=? (height rr) then
            create (create l x rl) rx rr
         else
           match rl with
            | Leaf => assert_false l x r
            | Node _ rll rlx rlr =>
                create (create l x rll) rlx (create rlr rx rr)
           end
      end
    else
      create l x r.

Fixpoint add x s := match s with
   | Leaf => Node 1 Leaf x Leaf
   | Node h l y r =>
      match X.compare x y with
         | Lt => bal (add x l) y r
         | Eq => Node h l y r
         | Gt => bal l y (add x r)
      end
  end.

Fixpoint join l : elt -> t -> t :=
  match l with
    | Leaf => add
    | Node lh ll lx lr => fun x =>
       fix join_aux (r:t) : t := match r with
          | Leaf => add x l
          | Node rh rl rx rr =>
               if (rh+2) <? lh then bal ll lx (join lr x r)
               else if (lh+2) <? rh then bal (join_aux rl) rx rr
               else create l x r
          end
  end.

Fixpoint remove_min l x r : t*elt :=
  match l with
    | Leaf => (r,x)
    | Node lh ll lx lr =>
       let (l',m) := remove_min ll lx lr in (bal l' x r, m)
  end.

Definition merge s1 s2 :=  match s1,s2 with
  | Leaf, _ => s2
  | _, Leaf => s1
  | _, Node _ l2 x2 r2 =>
        let (s2',m) := remove_min l2 x2 r2 in bal s1 m s2'
end.

Fixpoint remove x s := match s with
  | Leaf => Leaf
  | Node _ l y r =>
      match X.compare x y with
         | Lt => bal (remove x l) y r
         | Eq => merge l r
         | Gt => bal l y (remove x r)
      end
   end.

Definition concat s1 s2 :=
   match s1, s2 with
      | Leaf, _ => s2
      | _, Leaf => s1
      | _, Node _ l2 x2 r2 =>
            let (s2',m) := remove_min l2 x2 r2 in
            join s1 m s2'
   end.

Record triple := mktriple { t_left:t; t_in:bool; t_right:t }.
Notation "<< l , b , r >>" := (mktriple l b r) (at level 0).

Fixpoint split x s : triple := match s with
  | Leaf => << Leaf, false, Leaf >>
  | Node _ l y r =>
     match X.compare x y with
      | Lt => let (ll,b,rl) := split x l in << ll, b, join rl y r >>
      | Eq => << l, true, r >>
      | Gt => let (rl,b,rr) := split x r in << join l y rl, b, rr >>
     end
 end.

Fixpoint inter s1 s2 := match s1, s2 with
    | Leaf, _ => Leaf
    | _, Leaf => Leaf
    | Node _ l1 x1 r1, _ =>
            let (l2',pres,r2') := split x1 s2 in
            if pres then join (inter l1 l2') x1 (inter r1 r2')
            else concat (inter l1 l2') (inter r1 r2')
    end.

Fixpoint diff s1 s2 := match s1, s2 with
 | Leaf, _ => Leaf
 | _, Leaf => s1
 | Node _ l1 x1 r1, _ =>
    let (l2',pres,r2') := split x1 s2 in
    if pres then concat (diff l1 l2') (diff r1 r2')
    else join (diff l1 l2') x1 (diff r1 r2')
end.

Fixpoint union s1 s2 :=
 match s1, s2 with
  | Leaf, _ => s2
  | _, Leaf => s1
  | Node _ l1 x1 r1, _ =>
     let (l2',_,r2') := split x1 s2 in
     join (union l1 l2') x1 (union r1 r2')
 end.

Fixpoint filter (f:elt->bool) s := match s with
  | Leaf => Leaf
  | Node _ l x r =>
    let l' := filter f l in
    let r' := filter f r in
    if f x then join l' x r' else concat l' r'
 end.

Fixpoint partition (f:elt->bool)(s : t) : t*t :=
  match s with
   | Leaf => (Leaf, Leaf)
   | Node _ l x r =>
      let (l1,l2) := partition f l in
      let (r1,r2) := partition f r in
      if f x then (join l1 x r1, concat l2 r2)
      else (concat l1 r1, join l2 x r2)
  end.

End Ops.

Module MakeRaw (Import I:Int)(X:OrderedType) <: RawSets X.
Include Ops I X.

Include MSetGenTree.Props X I.

Notation "s #1" := (fst s) (at level 1, format "s '#1'") : pair_scope.
Notation "s #2" := (snd s) (at level 1, format "s '#2'") : pair_scope.

#[local] Open Scope pair_scope.

Lemma singleton_spec : forall x y, InT y (singleton x) <-> X.eq y x.
Admitted.

#[global]
Instance singleton_ok x : Ok (singleton x).
Admitted.

Lemma add_spec : forall s x y `{Ok s},
 InT y (add x s) <-> X.eq y x \/ InT y s.
Admitted.

#[global]
Instance add_ok s x `(Ok s) : Ok (add x s).
Admitted.

Lemma remove_spec : forall s x y `{Ok s},
 (InT y (remove x s) <-> InT y s /\ ~ X.eq y x).
Admitted.

#[global]
Instance remove_ok s x `(Ok s) : Ok (remove x s).
Admitted.

Lemma inter_spec : forall s1 s2 y `{Ok s1, Ok s2},
 (InT y (inter s1 s2) <-> InT y s1 /\ InT y s2).
Admitted.

#[global]
Instance inter_ok s1 s2 `(Ok s1, Ok s2) : Ok (inter s1 s2).
Admitted.

Lemma diff_spec : forall s1 s2 y `{Ok s1, Ok s2},
 (InT y (diff s1 s2) <-> InT y s1 /\ ~InT y s2).
Admitted.

#[global]
Instance diff_ok s1 s2 `(Ok s1, Ok s2) : Ok (diff s1 s2).
Admitted.

Lemma union_spec : forall s1 s2 y `{Ok s1, Ok s2},
 (InT y (union s1 s2) <-> InT y s1 \/ InT y s2).
Admitted.

#[global]
Instance union_ok s1 s2 : forall `(Ok s1, Ok s2), Ok (union s1 s2).
Admitted.

Lemma filter_spec : forall s x f,
 Proper (X.eq==>Logic.eq) f ->
 (InT x (filter f s) <-> InT x s /\ f x = true).
Admitted.

#[global]
Instance filter_ok s f `(H : Ok s) : Ok (filter f s).
Admitted.

Lemma partition_spec1 s f :
 Proper (X.eq==>Logic.eq) f ->
 Equal (partition f s)#1 (filter f s).
Admitted.

Lemma partition_spec2 s f :
 Proper (X.eq==>Logic.eq) f ->
 Equal (partition f s)#2 (filter (fun x => negb (f x)) s).
Admitted.

#[global]
Instance partition_ok1 s f `(Ok s) : Ok (partition f s)#1.
Admitted.

#[global]
Instance partition_ok2 s f `(Ok s) : Ok (partition f s)#2.
Admitted.

End MakeRaw.

Module IntMake (I:Int)(X: OrderedType) <: S with Module E := X.
 Module Raw := MakeRaw I X.
 Include Raw2Sets X Raw.
End IntMake.

Module Make (X: OrderedType) <: S with Module E := X
 :=IntMake(Z_as_Int)(X).
End MSetAVL.
Export Stdlib.ZArith.BinInt.
Export Stdlib.ZArith.Znat.
Module Export Stdlib.
Module Export ZArith.
Module Export ZArith.
End ZArith.

End ZArith.

End Stdlib.
Import Stdlib.Strings.Byte.
Import MetaRocq.Utils.ReflectEq.
Import MetaRocq.Utils.ByteCompare.
Admit Obligations.

Global Program Instance byte_reflect_eq : ReflectEq byte :=
  {| ReflectEq.eqb := eqb |}.
Admit Obligations.
Module Export bytestring.
Import MetaRocq.Utils.ReflectEq.

Module Export String.
  Inductive t : Set :=
  | EmptyString
  | String (_ : Byte.byte) (_ : t).

  Fixpoint eqb (a b : t) : bool :=
    match a , b with
    | EmptyString , EmptyString => true
    | String x xs , String y ys =>
      if ByteCompare.eqb x y then eqb xs ys else false
    | _ , _ => false
    end.

  Fixpoint compare (xs ys : t) : comparison :=
    match xs , ys with
    | EmptyString , EmptyString => Eq
    | EmptyString , _ => Lt
    | _ , EmptyString => Gt
    | String x xs , String y ys =>
      match ByteCompare.compare x y with
      | Eq => compare xs ys
      | x => x
      end
    end.
Abbreviation string := String.t.
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

  Definition eq_dec : forall x y : t, {eq x y} + {not (eq x y)} := Classes.eq_dec.
End OT_byte.

Module StringOT <: UsualOrderedType.
  Definition t := string.

  Definition eq : t -> t -> Prop := eq.
  Definition eq_equiv : Equivalence eq := _.

  Definition compare := String.compare.
  Definition lt x y : Prop := compare x y = Lt.

  Theorem compare_spec : forall x y, CompareSpec (x = y) (lt x y) (lt y x) (compare x y).
Admitted.

  #[global] Program Instance reflect_eq_string : ReflectEq t := {
    eqb := eqb
  }.
Admit Obligations.

  Definition eq_dec : forall x y : t, {eq x y} + {not (eq x y)} := Classes.eq_dec.

  Global Instance lt_strorder : StrictOrder lt.
Admitted.

  Definition lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.

End StringOT.

Abbreviation string_compare := StringOT.compare.

Module Export Tree.

End Tree.
Module Export MetaRocq_DOT_Utils_DOT_bytestring.
Module Export MetaRocq.
Module Export Utils.
Module Export bytestring.
End bytestring.

End Utils.

End MetaRocq.

End MetaRocq_DOT_Utils_DOT_bytestring.
Export ExtLib.Structures.Monads.

Import MonadNotation.

Open Scope monad.
Admit Obligations.
Module Export MetaRocq_DOT_Utils_DOT_monad_utils.
Module Export MetaRocq.
Module Export Utils.
Module Export monad_utils.
End monad_utils.

End Utils.

End MetaRocq.

End MetaRocq_DOT_Utils_DOT_monad_utils.
Export MetaRocq.Utils.MRCompare.
Export MetaRocq.Utils.MRProd.
Export MetaRocq.Utils.ReflectEq.
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
Export MetaRocq.Utils.MRUtils.
Export MetaRocq.Utils.monad_utils.
Module Export MetaRocq.
Module Export Utils.
Module Export utils.
End utils.

Module Export MetaRocq_DOT_Common_DOT_Kernames_WRAPPED.
Module Export Kernames.

Definition ident   := string.

Definition qualid  := string.

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

Inductive global_reference :=
| VarRef : ident -> global_reference
| ConstRef : kername -> global_reference
| IndRef : inductive -> global_reference
| ConstructRef : inductive -> nat -> global_reference.

End Kernames.
Module Export MetaRocq.
Module Export Common.
Module Export Kernames.
Include MetaRocq_DOT_Common_DOT_Kernames_WRAPPED.Kernames.
Module Export MetaRocq_DOT_Common_DOT_BasicAst_WRAPPED.
Module Export BasicAst.

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

End BasicAst.
Module Export MetaRocq.
Module Export Common.
Module Export BasicAst.
Include MetaRocq_DOT_Common_DOT_BasicAst_WRAPPED.BasicAst.

Module Export MetaRocq_DOT_Common_DOT_Universes_WRAPPED.
Module Export Universes.
Import Stdlib.MSets.MSetList.
Import MetaRocq.Utils.utils.

Module Level.
  Inductive t_ : Set :=
  | lzero
  | level (_ : string)
  | lvar (_ : nat) .

  Definition t := t_.

  Definition compare (l1 l2 : t) : comparison :=
    match l1, l2 with
    | lzero, lzero => Eq
    | lzero, _ => Lt
    | _, lzero => Gt
    | level s1, level s2 => string_compare s1 s2
    | level _, _ => Lt
    | _, level _ => Gt
    | lvar n, lvar m => Nat.compare n m
    end.

  Definition eq : t -> t -> Prop := eq.
  Definition eq_equiv : Equivalence eq := _.

  Inductive lt_ : t -> t -> Prop :=
  | ltSetLevel s : lt_ lzero (level s)
  | ltSetlvar n : lt_ lzero (lvar n)
  | ltLevelLevel s s' : StringOT.lt s s' -> lt_ (level s) (level s')
  | ltLevellvar s n : lt_ (level s) (lvar n)
  | ltlvarlvar n n' : Nat.lt n n' -> lt_ (lvar n) (lvar n').

  Definition lt := lt_.

  Definition lt_strorder : StrictOrder lt.
Admitted.

  Definition lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.

  Definition compare_spec :
    forall x y : t, CompareSpec (x = y) (lt x y) (lt y x) (compare x y).
Admitted.

  Definition eq_level l1 l2 :=
    match l1, l2 with
    | Level.lzero, Level.lzero => true
    | Level.level     s1, Level.level     s2 => ReflectEq.eqb s1 s2
    | Level.lvar n1, Level.lvar n2 => ReflectEq.eqb n1 n2
    | _, _ => false
    end.

  #[global, program] Instance reflect_level : ReflectEq Level.t := {
    eqb := eq_level
  }.
Admit Obligations.

  Definition eq_dec : forall (l1 l2 : t), {l1 = l2}+{l1 <> l2} := Classes.eq_dec.

End Level.

Module LevelSet := MSetAVL.Make Level.
Module LevelSetOrdProp := MSetProperties.OrdProperties LevelSet.
Module LevelSetProp := LevelSetOrdProp.P.

Module LevelExpr.
  Definition t := (Level.t * nat)%type.

  Definition make (l : Level.t) : t := (l, 0%nat).

  Definition eq : t -> t -> Prop := eq.

  Definition eq_equiv : Equivalence eq := _.

  Inductive lt_ : t -> t -> Prop :=
  | ltLevelExpr1 l n n' : (n < n')%nat -> lt_ (l, n) (l, n')
  | ltLevelExpr2 l l' b b' : Level.lt l l' -> lt_ (l, b) (l', b').

  Definition lt := lt_.

  Global Instance lt_strorder : StrictOrder lt.
Admitted.

  Definition lt_compat : Proper (Logic.eq ==> Logic.eq ==> iff) lt.
Admitted.

  Definition compare (x y : t) : comparison :=
    match x, y with
    | (l1, b1), (l2, b2) =>
      match Level.compare l1 l2 with
      | Eq => Nat.compare b1 b2
      | x => x
      end
    end.

  Definition compare_spec :
    forall x y : t, CompareSpec (x = y) (lt x y) (lt y x) (compare x y).
Admitted.

  Definition eq_dec : forall (l1 l2 : t), {l1 = l2} + {l1 <> l2} := Classes.eq_dec.

  Definition eq_leibniz (x y : t) : eq x y -> x = y := id.

End LevelExpr.

Module LevelExprSet := MSetList.MakeWithLeibniz LevelExpr.

Record nonEmptyLevelExprSet
  := { t_set : LevelExprSet.t ;
       t_ne  : LevelExprSet.is_empty t_set = false }.

Coercion t_set : nonEmptyLevelExprSet >-> LevelExprSet.t.
  Definition singleton (e : LevelExpr.t) : nonEmptyLevelExprSet
    := {| t_set := LevelExprSet.singleton e;
          t_ne := eq_refl |}.

  Program Definition add (e : LevelExpr.t) (u : nonEmptyLevelExprSet) : nonEmptyLevelExprSet
    := {| t_set := LevelExprSet.add e u |}.
Admit Obligations.

  Definition add_list : list LevelExpr.t -> nonEmptyLevelExprSet -> nonEmptyLevelExprSet
    := List.fold_left (fun u e => add e u).

Module Export Universe.

  Definition t := nonEmptyLevelExprSet.

  Definition make (e: LevelExpr.t) : t := singleton e.
  Definition make' (l: Level.t) : t := singleton (LevelExpr.make l).

  Definition from_kernel_repr (e : Level.t * nat) (es : list (Level.t * nat)) : t
    := add_list es (Universe.make e).

  Definition lt : t -> t -> Prop := LevelExprSet.lt.
End Universe.

Module ConstraintType.
  Inductive t_ : Set := Le (z : Z) | Eq.

  Definition t := t_.

  Inductive lt_ : t -> t -> Prop :=
  | LeLe n m : (n < m)%Z -> lt_ (Le n) (Le m)
  | LeEq n : lt_ (Le n) Eq.
  Definition lt := lt_.

  Definition compare (x y : t) : comparison :=
    match x, y with
    | Le n, Le m => Z.compare n m
    | Le _, Eq => Datatypes.Lt
    | Eq, Eq => Datatypes.Eq
    | Eq, _  => Datatypes.Gt
    end.
End ConstraintType.

Module UnivConstraint.
  Definition t : Set := Level.t * ConstraintType.t * Level.t.

  Definition eq : t -> t -> Prop := eq.
  Definition eq_equiv : Equivalence eq := _.

  Inductive lt_ : t -> t -> Prop :=
  | lt_Level2 l1 t l2 l2' : Level.lt l2 l2' -> lt_ (l1, t, l2) (l1, t, l2')
  | lt_Cstr l1 t t' l2 l2' : ConstraintType.lt t t' -> lt_ (l1, t, l2) (l1, t', l2')
  | lt_Level1 l1 l1' t t' l2 l2' : Level.lt l1 l1' -> lt_ (l1, t, l2) (l1', t', l2').
  Definition lt := lt_.

  Lemma lt_strorder : StrictOrder lt.
Admitted.

  Lemma lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.

  Definition compare : t -> t -> comparison :=
    fun '(l1, t, l2) '(l1', t', l2') =>
      compare_cont (Level.compare l1 l1')
        (compare_cont (ConstraintType.compare t t')
                    (Level.compare l2 l2')).

  Lemma compare_spec x y
    : CompareSpec (eq x y) (lt x y) (lt y x) (compare x y).
Admitted.

  Lemma eq_dec x y : {eq x y} + {~ eq x y}.
Admitted.
End UnivConstraint.

Module ConstraintSet := MSetAVL.Make UnivConstraint.

Module Export Instance.

  Definition t : Set := list Level.t.
End Instance.

Module Export UContext.
  Definition t := list name × (Instance.t × ConstraintSet.t).
End UContext.

Module Export AUContext.
  Definition t := list name × ConstraintSet.t.

  Definition make (ids : list name) (ctrs : ConstraintSet.t) : t := (ids, ctrs).
End AUContext.

Module Export ContextSet.
  Definition t := LevelSet.t × ConstraintSet.t.
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
    #[local] Definition eq : t -> t -> Prop := eq.
    #[local] Definition eq_equiv : Equivalence eq := _.
    Definition lt := lt.
    #[local] Instance lt_strorder : StrictOrder lt.
Admitted.

    Definition lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.
    Definition compare (x y : t) : comparison
      := match x, y with
          | sProp, sProp => Eq
          | sProp, _ => Lt
          | _, sProp => Gt
          | sSProp, sSProp => Eq
          | sSProp, _ => Lt
          | _, sSProp => Gt
          | sType x, sType y => LevelExprSet.compare x y
          end.
    Lemma compare_spec x y : CompareSpec (eq x y) (lt x y) (lt y x) (compare x y).
Admitted.
    Definition eq_dec (x y : t) : {x = y} + {x <> y}.
Admitted.
  End OT.
End Sort.
Abbreviation sort := Sort.t.

  Inductive allowed_eliminations : Set :=
  | IntoSProp
  | IntoPropSProp
  | IntoSetPropSProp
  | IntoAny.

Inductive universes_entry :=
| Monomorphic_entry
| Polymorphic_entry (ctx : UContext.t).

End Universes.
Module Export MetaRocq.
Module Export Common.
Module Export Universes.
Include MetaRocq_DOT_Common_DOT_Universes_WRAPPED.Universes.

Module Export MetaRocq_DOT_Common_DOT_Environment_WRAPPED.
Module Export Environment.

Module Type Term.

  Parameter Inline term : Type.
End Term.

Module Type TermDecide (Import T : Term).
End TermDecide.

Module TermDecideReflectInstances (Import T : Term) (Import TDec : TermDecide T).
End TermDecideReflectInstances.

Module Export Retroknowledge.

  Record t := mk_retroknowledge {
    retro_int63 : option kername;
    retro_float64 : option kername;
    retro_string : option kername;
    retro_array : option kername;
  }.

End Retroknowledge.

Module Environment (T : Term).

  Import T.

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

  Record constant_body := {

    cst_type : term;

    cst_body : option term;

    cst_universes : universes_decl;

    cst_relevance : relevance }.

  Inductive global_decl :=
  | ConstantDecl : constant_body -> global_decl
  | InductiveDecl : mutual_inductive_body -> global_decl.

  Definition global_declarations := list (kername * global_decl).

  Record global_env := mk_global_env
    { universes : ContextSet.t;
      declarations : global_declarations;
      retroknowledge : Retroknowledge.t }.

  Definition program : Type := global_env * term.

End Environment.

Module Type EnvironmentSig (T : Term).
End EnvironmentSig.

Module Type EnvironmentDecide (T : Term) (Import E : EnvironmentSig T).
End EnvironmentDecide.

Module EnvironmentDecideReflectInstances (T : Term) (Import E : EnvironmentSig T) (Import EDec : EnvironmentDecide T E).
End EnvironmentDecideReflectInstances.

Module Type TermUtils (T: Term) (E: EnvironmentSig T).

End TermUtils.

End Environment.
Module Export MetaRocq.
Module Export Common.
Module Export Environment.
Include MetaRocq_DOT_Common_DOT_Environment_WRAPPED.Environment.

Module Export MetaRocq_DOT_Template_DOT_Ast_WRAPPED.
Module Export Ast.

Record predicate {term} := mk_predicate {
  puinst : Instance.t;
  pparams : list term;
  pcontext : list aname;
  preturn : term;  }.

Arguments predicate : clear implicits.

Section Branch.
  Context {term : Type}.

  Record branch := mk_branch {
    bcontext : list aname;
    bbody : term;  }.
End Branch.
Arguments branch : clear implicits.

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

Module TemplateTerm <: Term.

Definition term := term.

End TemplateTerm.

Module Env := Environment TemplateTerm.
Export Env.

Module TemplateTermUtils <: TermUtils TemplateTerm Env.

End TemplateTermUtils.

Record one_inductive_entry := {
  mind_entry_typename : ident;
  mind_entry_arity : term;
  mind_entry_consnames : list ident;
  mind_entry_lc : list term  }.

Record mutual_inductive_entry := {
  mind_entry_record    : option (option ident);

  mind_entry_finite    : recursivity_kind;
  mind_entry_params    : context;
  mind_entry_inds      : list one_inductive_entry;
  mind_entry_universes : universes_entry;
  mind_entry_template : bool;
  mind_entry_variance  : option (list (option Universes.Variance.t));
  mind_entry_private   : option bool
   }.

End Ast.
Module Export MetaRocq.
Module Export Template.
Module Export Ast.
Include MetaRocq_DOT_Template_DOT_Ast_WRAPPED.Ast.

Local Set Universe Polymorphism.

Monomorphic Variant reductionStrategy : Set :=
  cbv | cbn | hnf | all | lazy | unfold (i : kername).

Monomorphic Variant hint_locality : Set :=
  local | export | global.

Record typed_term : Type := existT_typed_term
{ my_projT1 : Type
; my_projT2 : my_projT1
}.

Inductive option_instance (A : Type) : Type := my_Some : A -> option_instance A | my_None : option_instance A.

Module Export MetaRocq_DOT_Template_DOT_TemplateMonad_DOT_Core_WRAPPED.
Module Export Core.

Import MetaRocq.Utils.utils.
Import MonadNotation.

Cumulative Inductive TemplateMonad@{t u} : Type@{t} -> Prop :=

| tmReturn : forall {A:Type@{t}}, A -> TemplateMonad A
| tmBind : forall {A B : Type@{t}}, TemplateMonad A -> (A -> TemplateMonad B)
                               -> TemplateMonad B

| tmPrint : forall {A:Type@{t}}, A -> TemplateMonad unit
| tmMsg   : string -> TemplateMonad unit
| tmFail : forall {A:Type@{t}}, string -> TemplateMonad A
| tmEval : reductionStrategy -> forall {A:Type@{t}}, A -> TemplateMonad A

| tmLemma : ident -> forall A : Type@{t}, TemplateMonad A
| tmDefinitionRed_ : forall (opaque : bool), ident -> option reductionStrategy -> forall {A:Type@{t}}, A -> TemplateMonad A
| tmAxiomRed : ident -> option reductionStrategy -> forall A : Type@{t}, TemplateMonad A
| tmVariable : ident -> Type@{t} -> TemplateMonad unit

| tmFreshName : ident -> TemplateMonad ident

| tmLocate : qualid -> TemplateMonad (list global_reference)
| tmLocateModule : qualid -> TemplateMonad (list modpath)
| tmLocateModType : qualid -> TemplateMonad (list modpath)
| tmCurrentModPath : unit -> TemplateMonad modpath

| tmQuote : forall {A:Type@{t}}, A  -> TemplateMonad Ast.term

| tmQuoteRecTransp : forall {A:Type@{t}}, A -> bool -> TemplateMonad program

| tmQuoteInductive : kername -> TemplateMonad mutual_inductive_body
| tmQuoteUniverses : TemplateMonad ConstraintSet.t
| tmQuoteConstant : kername -> bool  -> TemplateMonad constant_body
| tmQuoteModule : qualid -> TemplateMonad (list global_reference)
| tmQuoteModFunctor : qualid -> TemplateMonad (list global_reference)
| tmQuoteModType : qualid -> TemplateMonad (list global_reference)

| tmMkInductive : bool -> mutual_inductive_entry -> TemplateMonad unit
| tmUnquote : Ast.term  -> TemplateMonad typed_term@{u}
| tmUnquoteTyped : forall A : Type@{t}, Ast.term -> TemplateMonad A

| tmExistingInstance : hint_locality -> global_reference -> TemplateMonad unit
| tmInferInstance : option reductionStrategy -> forall A : Type@{t}, TemplateMonad (option_instance A)
.

Definition TemplateMonad_UnoptimizedMonad@{t u} : Monad@{t u} TemplateMonad@{t u} :=
  {| ret := @tmReturn ; bind := @tmBind |}.

Definition TemplateMonad_Monad@{t u} : Monad@{t u} TemplateMonad@{t u} :=
  Eval hnf in TemplateMonad_UnoptimizedMonad.
Global Existing Instance TemplateMonad_Monad.
Definition tmDefinition id {A} t := @tmDefinitionRed_ false id None A t.

Definition tmQuoteRec {A} (a : A) := tmQuoteRecTransp a true.
Definition tmQuoteRecDefinition id {A} (t : A)
  := tmQuoteRec t >>= tmDefinition id.

End Core.
Module Export MetaRocq.
Module Export Template.
Module Export TemplateMonad.
Module Export Core.
Include MetaRocq_DOT_Template_DOT_TemplateMonad_DOT_Core_WRAPPED.Core.

Module Export MetaRocq_DOT_Template_DOT_TemplateMonad_DOT_Extractable_WRAPPED.
Module Export Extractable.

Import MetaRocq.Utils.utils.

Cumulative Inductive TM@{t} : Type@{t} -> Type :=

| tmReturn {A:Type@{t}}
  : A -> TM A
| tmBind {A B : Type@{t}}
  : TM A -> (A -> TM B) -> TM B

| tmPrint : Ast.term -> TM unit
| tmMsg  : string -> TM unit
| tmFail : forall {A:Type@{t}}, string -> TM A
| tmEval (red : reductionStrategy) (tm : Ast.term)
  : TM Ast.term

| tmDefinition_ (opaque : bool)
               (nm : ident)
               (type : option Ast.term) (term : Ast.term)
  : TM kername
| tmAxiom (nm : ident)
          (type : Ast.term)
  : TM kername
| tmLemma (nm : ident)
          (type : Ast.term)
  : TM kername

| tmFreshName : ident -> TM ident

| tmLocate : qualid -> TM (list global_reference)
| tmLocateModule : qualid -> TM (list modpath)
| tmLocateModType : qualid -> TM (list modpath)
| tmCurrentModPath : TM modpath

| tmQuoteInductive (nm : kername)
  : TM mutual_inductive_body
| tmQuoteConstant (nm : kername) (bypass_opacity : bool)
  : TM constant_body
| tmQuoteUniverses : TM ConstraintSet.t
| tmQuoteModule : qualid -> TM (list global_reference)
| tmQuoteModFunctor : qualid -> TM (list global_reference)
| tmQuoteModType : qualid -> TM (list global_reference)

| tmInductive : bool -> mutual_inductive_entry -> TM unit

| tmExistingInstance : hint_locality -> global_reference -> TM unit
| tmInferInstance (type : Ast.term)
  : TM (option Ast.term)
.

End Extractable.
Module Export MetaRocq.
Module Export Template.
Module Export TemplateMonad.
Module Export Extractable.
Include MetaRocq_DOT_Template_DOT_TemplateMonad_DOT_Extractable_WRAPPED.Extractable.
Register bytestring.String.EmptyString as metarocq.string.nil.
Register bytestring.String.String as metarocq.string.cons.

Register Corelib.Init.Byte.byte as metarocq.byte.type.

Register Corelib.Init.Datatypes.nat as metarocq.nat.type.
Register Corelib.Init.Datatypes.O as metarocq.nat.zero.
Register Corelib.Init.Datatypes.S as metarocq.nat.succ.
Register Corelib.Init.Datatypes.true as metarocq.bool.true.
Register Corelib.Init.Datatypes.false as metarocq.bool.false.
Register Corelib.Init.Datatypes.None as metarocq.option.none.
Register Corelib.Init.Datatypes.Some as metarocq.option.some.

Register Corelib.Init.Datatypes.list as metarocq.list.type.
Register Corelib.Init.Datatypes.nil as metarocq.list.nil.
Register Corelib.Init.Datatypes.cons as metarocq.list.cons.

Register Corelib.Init.Datatypes.prod as metarocq.prod.type.
Register Corelib.Init.Datatypes.pair as metarocq.prod.intro.
Register MetaRocq.Common.BasicAst.Relevant as metarocq.ast.Relevant.
Register MetaRocq.Common.BasicAst.mkBindAnn as metarocq.ast.mkBindAnn.
Register MetaRocq.Common.BasicAst.aname as metarocq.ast.aname.

Register MetaRocq.Common.BasicAst.nAnon as metarocq.ast.nAnon.
Register MetaRocq.Common.BasicAst.nNamed as metarocq.ast.nNamed.
Register MetaRocq.Common.Kernames.ident as metarocq.ast.ident.
Register MetaRocq.Common.Kernames.kername as metarocq.ast.kername.
Register MetaRocq.Common.Kernames.modpath as metarocq.ast.modpath.
Register MetaRocq.Common.Kernames.MPfile as metarocq.ast.MPfile.
Register MetaRocq.Common.Kernames.mkInd as metarocq.ast.mkInd.

Register MetaRocq.Common.BasicAst.name as metarocq.ast.name.
Register MetaRocq.Common.BasicAst.mk_case_info as metarocq.ast.mk_case_info.
Register MetaRocq.Common.BasicAst.Cast as metarocq.ast.Cast.
Register MetaRocq.Common.BasicAst.Finite as metarocq.ast.Finite.
Register MetaRocq.Common.BasicAst.BiFinite as metarocq.ast.BiFinite.
Register MetaRocq.Common.Universes.IntoAny as metarocq.ast.IntoAny.
Register MetaRocq.Common.Universes.Universe.t as metarocq.ast.universe.t.
Register MetaRocq.Common.Universes.Universe.make' as metarocq.ast.universe.make_of_level.
Register MetaRocq.Common.Universes.Universe.from_kernel_repr as metarocq.ast.universe.from_kernel_repr.
Register MetaRocq.Common.Universes.LevelSetProp.of_list as metarocq.ast.universe.of_list.
Register MetaRocq.Common.Universes.Level.t as metarocq.ast.level.t.
Register MetaRocq.Common.Universes.Level.level as metarocq.ast.level.Level.
Register MetaRocq.Common.Universes.Level.lzero as metarocq.ast.level.lzero.
Register MetaRocq.Common.Universes.Level.lvar as metarocq.ast.level.Var.
Register MetaRocq.Common.Universes.Sort.sType as metarocq.ast.sort.type.

Register MetaRocq.Common.Universes.Variance.t as metarocq.ast.variance.t.
Register MetaRocq.Common.Universes.Polymorphic_ctx as metarocq.ast.Polymorphic_ctx.

Register MetaRocq.Common.Universes.ConstraintSet.t_ as metarocq.ast.ConstraintSet.t_.
Register MetaRocq.Common.Universes.ConstraintSet.empty as metarocq.ast.ConstraintSet.empty.
Register MetaRocq.Common.Universes.AUContext.make as metarocq.ast.AUContext.make.

Register MetaRocq.Common.Universes.LevelSet.t_ as metarocq.ast.LevelSet.t.
Register MetaRocq.Template.Ast.mk_predicate as metarocq.ast.mk_predicate.
Register MetaRocq.Template.Ast.branch as metarocq.ast.branch.
Register MetaRocq.Template.Ast.mk_branch as metarocq.ast.mk_branch.

Register MetaRocq.Template.Ast.term as metarocq.ast.term.
Register MetaRocq.Template.Ast.tRel as metarocq.ast.tRel.
Register MetaRocq.Template.Ast.tSort as metarocq.ast.tSort.
Register MetaRocq.Template.Ast.tCast as metarocq.ast.tCast.
Register MetaRocq.Template.Ast.tProd as metarocq.ast.tProd.
Register MetaRocq.Template.Ast.tLambda as metarocq.ast.tLambda.
Register MetaRocq.Template.Ast.tLetIn as metarocq.ast.tLetIn.
Register MetaRocq.Template.Ast.tApp as metarocq.ast.tApp.
Register MetaRocq.Template.Ast.tConst as metarocq.ast.tConst.
Register MetaRocq.Template.Ast.tInd as metarocq.ast.tInd.
Register MetaRocq.Template.Ast.tConstruct as metarocq.ast.tConstruct.
Register MetaRocq.Template.Ast.tCase as metarocq.ast.tCase.

Register MetaRocq.Common.BasicAst.context_decl as metarocq.ast.context_decl.
Register MetaRocq.Common.BasicAst.mkdecl as metarocq.ast.mkdecl.

Register MetaRocq.Template.Ast.Env.constructor_body as metarocq.ast.constructor_body.
Register MetaRocq.Template.Ast.Env.Build_constructor_body as metarocq.ast.Build_constructor_body.
Register MetaRocq.Template.Ast.Env.projection_body as metarocq.ast.projection_body.
Register MetaRocq.Template.Ast.Env.one_inductive_body as metarocq.ast.one_inductive_body.
Register MetaRocq.Template.Ast.Env.Build_one_inductive_body as metarocq.ast.Build_one_inductive_body.
Register MetaRocq.Template.Ast.Env.Build_mutual_inductive_body as metarocq.ast.Build_mutual_inductive_body.
Register MetaRocq.Template.Ast.Env.Build_constant_body as metarocq.ast.Build_constant_body.

Register MetaRocq.Template.Ast.Env.global_decl as metarocq.ast.global_decl.
Register MetaRocq.Template.Ast.Env.ConstantDecl as metarocq.ast.ConstantDecl.
Register MetaRocq.Template.Ast.Env.InductiveDecl as metarocq.ast.InductiveDecl.
Register MetaRocq.Common.Environment.Retroknowledge.mk_retroknowledge as metarocq.ast.mk_retroknowledge.
Register MetaRocq.Template.Ast.Env.mk_global_env as metarocq.ast.Build_global_env.
Register MetaRocq.Template.Ast.Env.global_env as metarocq.ast.global_env.

Register MetaRocq.Template.TemplateMonad.Core.tmReturn as metarocq.templatemonad.prop.tmReturn.
Register MetaRocq.Template.TemplateMonad.Core.tmBind as metarocq.templatemonad.prop.tmBind.
Register MetaRocq.Template.TemplateMonad.Core.tmPrint as metarocq.templatemonad.prop.tmPrint.
Register MetaRocq.Template.TemplateMonad.Core.tmMsg as metarocq.templatemonad.prop.tmMsg.
Register MetaRocq.Template.TemplateMonad.Core.tmFail as metarocq.templatemonad.prop.tmFail.
Register MetaRocq.Template.TemplateMonad.Core.tmEval as metarocq.templatemonad.prop.tmEval.
Register MetaRocq.Template.TemplateMonad.Core.tmLemma as metarocq.templatemonad.prop.tmLemma.
Register MetaRocq.Template.TemplateMonad.Core.tmDefinitionRed_ as metarocq.templatemonad.prop.tmDefinitionRed_.
Register MetaRocq.Template.TemplateMonad.Core.tmAxiomRed as metarocq.templatemonad.prop.tmAxiomRed.
Register MetaRocq.Template.TemplateMonad.Core.tmFreshName as metarocq.templatemonad.prop.tmFreshName.
Register MetaRocq.Template.TemplateMonad.Core.tmLocate as metarocq.templatemonad.prop.tmLocate.
Register MetaRocq.Template.TemplateMonad.Core.tmLocateModule as metarocq.templatemonad.prop.tmLocateModule.
Register MetaRocq.Template.TemplateMonad.Core.tmLocateModType as metarocq.templatemonad.prop.tmLocateModType.
Register MetaRocq.Template.TemplateMonad.Core.tmCurrentModPath as metarocq.templatemonad.prop.tmCurrentModPath.

Register MetaRocq.Template.TemplateMonad.Core.tmQuote as metarocq.templatemonad.prop.tmQuote.
Register MetaRocq.Template.TemplateMonad.Core.tmQuoteRecTransp as metarocq.templatemonad.prop.tmQuoteRecTransp.
Register MetaRocq.Template.TemplateMonad.Core.tmQuoteRecDefinition as metarocq.templatemonad.prop.tmQuoteRecDefinition.

Register MetaRocq.Template.TemplateMonad.Extractable.tmReturn as metarocq.templatemonad.type.tmReturn.
Register MetaRocq.Template.TemplateMonad.Extractable.tmBind as metarocq.templatemonad.type.tmBind.
Register MetaRocq.Template.TemplateMonad.Extractable.tmPrint as metarocq.templatemonad.type.tmPrint.
Register MetaRocq.Template.TemplateMonad.Extractable.tmMsg as metarocq.templatemonad.type.tmMsg.
Register MetaRocq.Template.TemplateMonad.Extractable.tmFail as metarocq.templatemonad.type.tmFail.
Register MetaRocq.Template.TemplateMonad.Extractable.tmEval as metarocq.templatemonad.type.tmEval.
Register MetaRocq.Template.TemplateMonad.Extractable.tmDefinition_ as metarocq.templatemonad.type.tmDefinition_.
Register MetaRocq.Template.TemplateMonad.Extractable.tmAxiom as metarocq.templatemonad.type.tmAxiom.
Register MetaRocq.Template.TemplateMonad.Extractable.tmLemma as metarocq.templatemonad.type.tmLemma.
Register MetaRocq.Template.TemplateMonad.Extractable.tmFreshName as metarocq.templatemonad.type.tmFreshName.
Register MetaRocq.Template.TemplateMonad.Extractable.tmLocate as metarocq.templatemonad.type.tmLocate.
Register MetaRocq.Template.TemplateMonad.Extractable.tmLocateModule as metarocq.templatemonad.type.tmLocateModule.
Register MetaRocq.Template.TemplateMonad.Extractable.tmLocateModType as metarocq.templatemonad.type.tmLocateModType.
Register MetaRocq.Template.TemplateMonad.Extractable.tmCurrentModPath as metarocq.templatemonad.type.tmCurrentModPath.

Declare ML Module "rocq-metarocq-template-rocq.plugin".

MetaRocq Quote Recursively Definition foo :=
  @hott_example.isequiv_adjointify.
