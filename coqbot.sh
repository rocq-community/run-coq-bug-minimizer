#!/usr/bin/env bash
cat > bug.v <<_EOF
(* -*- mode: coq; coq-prog-args: ("-emacs" "-coqlib" "/home/rocq/.opam/4.14.2+flambda/lib/coq/" "-w" "-deprecated-native-compiler-option,-native-compiler-disabled" "-native-compiler" "ondemand" "-Q" "/github/workspace/cwd" "Top" "-Q" "/home/rocq/.opam/4.14.2+flambda/lib/coq//user-contrib/Bignums" "Bignums" "-Q" "/home/rocq/.opam/4.14.2+flambda/lib/coq//user-contrib/Coqprime" "Coqprime" "-Q" "/home/rocq/.opam/4.14.2+flambda/lib/coq//user-contrib/Crypto" "Crypto" "-Q" "/home/rocq/.opam/4.14.2+flambda/lib/coq//user-contrib/Ltac2" "Ltac2" "-Q" "/home/rocq/.opam/4.14.2+flambda/lib/coq//user-contrib/Rewriter" "Rewriter" "-Q" "/home/rocq/.opam/4.14.2+flambda/lib/coq//user-contrib/Stdlib" "Stdlib" "-Q" "/home/rocq/.opam/4.14.2+flambda/lib/coq//user-contrib/coqutil" "coqutil" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 141 lines to 132 lines, then from 144 lines to 697 lines, then from 704 lines to 137 lines, then from 149 lines to 1556 lines, then from 1563 lines to 191 lines, then from 203 lines to 656 lines, then from 663 lines to 214 lines, then from 225 lines to 1778 lines, then from 1785 lines to 258 lines, then from 270 lines to 3991 lines, then from 3992 lines to 263 lines, then from 274 lines to 655 lines, then from 662 lines to 278 lines, then from 290 lines to 530 lines, then from 537 lines to 288 lines, then from 300 lines to 437 lines, then from 444 lines to 290 lines, then from 302 lines to 2318 lines, then from 2321 lines to 597 lines, then from 609 lines to 1006 lines, then from 1008 lines to 1014 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 3.448 sec
   Expected coqc peak memory usage on this file: 450912.0 kb *)









Require Corelib.Init.Ltac.
Require Corelib.ssr.ssreflect.
Require Stdlib.ssr.ssreflect.
Require Corelib.Classes.Morphisms.
Require Stdlib.Classes.Morphisms.
Require Corelib.Relations.Relation_Definitions.
Require Stdlib.Relations.Relation_Definitions.
Require Corelib.Classes.RelationClasses.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Classes.DecidableClass.
Require Stdlib.Logic.HLevelsBase.
Require Stdlib.Bool.Bool.
Require Corelib.Setoids.Setoid.
Require Stdlib.Setoids.Setoid.
Require Stdlib.Structures.Equalities.
Require Stdlib.Relations.Relation_Operators.
Require Stdlib.Relations.Operators_Properties.
Require Stdlib.Relations.Relations.
Require Stdlib.Structures.Orders.
Require Corelib.Classes.Morphisms_Prop.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Numbers.NumPrelude.
Require Corelib.Program.Basics.
Require Stdlib.Program.Basics.
Require Stdlib.Structures.OrdersTac.
Require Stdlib.Structures.OrdersFacts.
Require Stdlib.Structures.GenericMinMax.
Require Stdlib.Numbers.NatInt.NZAxioms.
Require Stdlib.Numbers.NatInt.NZBase.
Require Stdlib.Numbers.NatInt.NZAdd.
Require Stdlib.Numbers.NatInt.NZMul.
Require Stdlib.Logic.Decidable.
Require Stdlib.Numbers.NatInt.NZOrder.
Require Stdlib.Numbers.NatInt.NZAddOrder.
Require Stdlib.Numbers.NatInt.NZMulOrder.
Require Stdlib.Numbers.NatInt.NZParity.
Require Stdlib.Numbers.NatInt.NZPow.
Require Stdlib.Numbers.NatInt.NZSqrt.
Require Stdlib.Numbers.NatInt.NZLog.
Require Stdlib.Numbers.NatInt.NZGcd.
Require Stdlib.Numbers.NatInt.NZDiv.
Require Stdlib.Numbers.NatInt.NZBits.
Require Stdlib.Numbers.Integer.Abstract.ZAxioms.
Require Stdlib.Numbers.Integer.Abstract.ZBase.
Require Stdlib.Numbers.Integer.Abstract.ZAdd.
Require Stdlib.Numbers.Integer.Abstract.ZMul.
Require Stdlib.Numbers.Integer.Abstract.ZLt.
Require Stdlib.Numbers.Integer.Abstract.ZAddOrder.
Require Stdlib.Numbers.Integer.Abstract.ZMulOrder.
Require Stdlib.Numbers.Integer.Abstract.ZMaxMin.
Require Stdlib.Numbers.Integer.Abstract.ZSgnAbs.
Require Stdlib.Numbers.Integer.Abstract.ZParity.
Require Stdlib.Numbers.Integer.Abstract.ZPow.
Require Stdlib.Numbers.Integer.Abstract.ZDivTrunc.
Require Stdlib.Numbers.Integer.Abstract.ZDivFloor.
Require Stdlib.Numbers.Integer.Abstract.ZGcd.
Require Stdlib.Numbers.Integer.Abstract.ZLcm.
Require Stdlib.Numbers.Integer.Abstract.ZBits.
Require Stdlib.Numbers.Integer.Abstract.ZProperties.
Require Stdlib.Numbers.Natural.Abstract.NAxioms.
Require Stdlib.Numbers.Natural.Abstract.NBase.
Require Stdlib.Numbers.Natural.Abstract.NAdd.
Require Stdlib.Numbers.Natural.Abstract.NOrder.
Require Stdlib.Numbers.Natural.Abstract.NAddOrder.
Require Stdlib.Numbers.Natural.Abstract.NMulOrder.
Require Stdlib.Numbers.Natural.Abstract.NSub.
Require Stdlib.Numbers.Natural.Abstract.NMaxMin.
Require Stdlib.Numbers.Natural.Abstract.NParity.
Require Stdlib.Numbers.Natural.Abstract.NPow.
Require Stdlib.Numbers.Natural.Abstract.NSqrt.
Require Stdlib.Numbers.Natural.Abstract.NLog.
Require Stdlib.Numbers.Natural.Abstract.NDiv.
Require Stdlib.Numbers.Natural.Abstract.NDiv0.
Require Stdlib.Numbers.Natural.Abstract.NGcd.
Require Stdlib.Numbers.Natural.Abstract.NLcm.
Require Stdlib.Numbers.Natural.Abstract.NLcm0.
Require Stdlib.Numbers.Natural.Abstract.NBits.
Require Stdlib.Numbers.Natural.Abstract.NProperties.
Require Stdlib.Arith.PeanoNat.
Require Corelib.Lists.ListDef.
Require Stdlib.Lists.ListDef.
Require Stdlib.Lists.List.
Require Corelib.BinNums.IntDef.
Require Corelib.BinNums.NatDef.
Require Corelib.BinNums.PosDef.
Require Corelib.Numbers.BinNums.
Require Stdlib.Logic.EqdepFacts.
Require Stdlib.BinNums.IntDef.
Require Stdlib.BinNums.NatDef.
Require Stdlib.BinNums.PosDef.
Require Stdlib.Logic.Eqdep_dec.
Require Stdlib.Numbers.BinNums.
Require Stdlib.PArith.BinPosDef.
Require Stdlib.PArith.BinPos.
Require Stdlib.NArith.BinNatDef.
Require Stdlib.NArith.BinNat.
Require Crypto.Util.GlobalSettings.
Require Crypto.Util.FixCoqMistakes.
Require Crypto.Util.Tactics.GetGoal.
Require Crypto.Util.Notations.
Require Rewriter.Util.GlobalSettings.
Require Rewriter.Util.FixCoqMistakes.
Require Rewriter.Util.Tactics.GetGoal.
Require Rewriter.Util.Notations.
Require Rewriter.Util.LetIn.
Require Crypto.Util.LetIn.

Module Export AdmitTactic.
Module Import LocalFalse.
Inductive False : Prop := .
End LocalFalse.
Axiom proof_admitted : False.
Import Coq.Init.Ltac.
Tactic Notation "admit" := abstract case proof_admitted.
End AdmitTactic.

Module Export Stdlib_DOT_ZArith_DOT_BinIntDef_WRAPPED.
Module Export BinIntDef.









Export Stdlib.Numbers.BinNums.
Import Stdlib.PArith.BinPos.
Import Stdlib.NArith.BinNat.
Export Stdlib.BinNums.IntDef.

#[local] Open Scope Z_scope.

#[local] Notation "0" := Z0.
#[local] Notation "1" := (Zpos 1).
#[local] Notation "2" := (Zpos 2).







Module Export Z.

Include BinNums.IntDef.Z.

Definition t := Z.



#[global] Notation pos := Zpos.
#[global] Notation neg := Zneg.



Definition zero := 0.
Definition one := 1.
Definition two := 2.



Definition succ x := x + 1.



Definition pred x := x + neg 1.



Definition square x :=
  match x with
    | 0 => 0
    | pos p => pos (Pos.square p)
    | neg p => pos (Pos.square p)
  end.



Definition sgn z :=
  match z with
    | 0 => 0
    | pos p => 1
    | neg p => neg 1
  end.





Definition geb x y :=
  match x ?= y with
    | Lt => false
    | _ => true
  end.

Definition gtb x y :=
  match x ?= y with
    | Gt => true
    | _ => false
  end.

Infix "=?" := eqb (at level 70, no associativity) : Z_scope.
Infix "<=?" := leb (at level 70, no associativity) : Z_scope.
Infix "<?" := ltb (at level 70, no associativity) : Z_scope.
Infix ">=?" := geb (at level 70, no associativity) : Z_scope.
Infix ">?" := gtb (at level 70, no associativity) : Z_scope.



Definition abs z :=
  match z with
    | 0 => 0
    | pos p => pos p
    | neg p => pos p
  end.
Definition abs_nat (z:Z) : nat. exact (match z with
    | 0 => 0%nat
    | pos p => Pos.to_nat p
    | neg p => Pos.to_nat p
  end). Defined.
Definition abs_N (z:Z) : N. exact (match z with
    | 0 => 0%N
    | pos p => N.pos p
    | neg p => N.pos p
  end). Defined.
Definition to_N (z:Z) : N. exact (match z with
    | pos p => N.pos p
    | _ => 0%N
  end). Defined.



Definition of_uint (d:Decimal.uint) := of_N (Pos.of_uint d).

Definition of_hex_uint (d:Hexadecimal.uint) := of_N (Pos.of_hex_uint d).

Definition of_num_uint (d:Number.uint) :=
  match d with
  | Number.UIntDecimal d => of_uint d
  | Number.UIntHexadecimal d => of_hex_uint d
  end.

Definition of_int (d:Decimal.int) :=
  match d with
  | Decimal.Pos d => of_uint d
  | Decimal.Neg d => opp (of_uint d)
  end.

Definition of_hex_int (d:Hexadecimal.int) :=
  match d with
  | Hexadecimal.Pos d => of_hex_uint d
  | Hexadecimal.Neg d => opp (of_hex_uint d)
  end.

Definition of_num_int (d:Number.int) :=
  match d with
  | Number.IntDecimal d => of_int d
  | Number.IntHexadecimal d => of_hex_int d
  end.

Definition to_int n :=
  match n with
  | 0 => Decimal.Pos Decimal.zero
  | pos p => Decimal.Pos (Pos.to_uint p)
  | neg p => Decimal.Neg (Pos.to_uint p)
  end.

Definition to_hex_int n :=
  match n with
  | 0 => Hexadecimal.Pos Hexadecimal.zero
  | pos p => Hexadecimal.Pos (Pos.to_hex_uint p)
  | neg p => Hexadecimal.Neg (Pos.to_hex_uint p)
  end.

Definition to_num_int n := Number.IntDecimal (to_int n).

Definition to_num_hex_int n := Number.IntHexadecimal (to_hex_int n).



Definition iter (n:Z) {A} (f:A -> A) (x:A) :=
  match n with
    | pos p => Pos.iter f x p
    | _ => x
  end.

Infix "/" := div : Z_scope.
Infix "mod" := modulo (at level 40, no associativity) : Z_scope.



Definition odd z :=
  match z with
    | 0 => false
    | pos (xO _) => false
    | neg (xO _) => false
    | _ => true
  end.





Definition quot2 (z:Z) :=
  match z with
    | 0 => 0
    | pos 1 => 0
    | pos p => pos (Pos.div2 p)
    | neg 1 => 0
    | neg p => neg (Pos.div2 p)
  end.





Definition log2 z :=
  match z with
    | pos (p~1) => pos (Pos.size p)
    | pos (p~0) => pos (Pos.size p)
    | _ => 0
  end.



Definition sqrt n :=
 match n with
  | pos p => pos (Pos.sqrt p)
  | _ => 0
 end.



Definition gcd a b :=
  match a,b with
    | 0, _ => abs b
    | _, 0 => abs a
    | pos a, pos b => pos (Pos.gcd a b)
    | pos a, neg b => pos (Pos.gcd a b)
    | neg a, pos b => pos (Pos.gcd a b)
    | neg a, neg b => pos (Pos.gcd a b)
  end.



Definition ggcd a b : Z*(Z*Z) :=
  match a,b with
    | 0, _ => (abs b,(0, sgn b))
    | _, 0 => (abs a,(sgn a, 0))
    | pos a, pos b =>
       let '(g,(aa,bb)) := Pos.ggcd a b in (pos g, (pos aa, pos bb))
    | pos a, neg b =>
       let '(g,(aa,bb)) := Pos.ggcd a b in (pos g, (pos aa, neg bb))
    | neg a, pos b =>
       let '(g,(aa,bb)) := Pos.ggcd a b in (pos g, (neg aa, pos bb))
    | neg a, neg b =>
       let '(g,(aa,bb)) := Pos.ggcd a b in (pos g, (neg aa, neg bb))
  end.







Definition testbit a n :=
 match n with
   | 0 => odd a
   | pos p =>
     match a with
       | 0 => false
       | pos a => Pos.testbit a (N.pos p)
       | neg a => negb (N.testbit (Pos.pred_N a) (N.pos p))
     end
   | neg _ => false
 end.



Definition ldiff a b :=
 match a, b with
   | 0, _ => 0
   | _, 0 => a
   | pos a, pos b => of_N (Pos.ldiff a b)
   | neg a, pos b => neg (N.succ_pos (N.lor (Pos.pred_N a) (N.pos b)))
   | pos a, neg b => of_N (N.land (N.pos a) (Pos.pred_N b))
   | neg a, neg b => of_N (N.ldiff (Pos.pred_N b) (Pos.pred_N a))
 end.

Number Notation Z of_num_int to_num_hex_int : hex_Z_scope.
Number Notation Z of_num_int to_num_int : Z_scope.

End Z.


Number Notation Z Z.of_num_int Z.to_num_hex_int : hex_Z_scope.
Number Notation Z Z.of_num_int Z.to_num_int : Z_scope.

End BinIntDef.

End Stdlib_DOT_ZArith_DOT_BinIntDef_WRAPPED.
Module Export Stdlib_DOT_ZArith_DOT_BinIntDef.
Module Export Stdlib.
Module Export ZArith.
Module Export BinIntDef.
Include Stdlib_DOT_ZArith_DOT_BinIntDef_WRAPPED.BinIntDef.
End BinIntDef.

End ZArith.

End Stdlib.

End Stdlib_DOT_ZArith_DOT_BinIntDef.
Module Export BinInt.
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
Program Definition succ_wd : Proper (eq==>eq) succ.
Admitted.
Program Definition pred_wd : Proper (eq==>eq) pred.
Admitted.
Program Definition opp_wd : Proper (eq==>eq) opp.
Admitted.
Program Definition add_wd : Proper (eq==>eq==>eq) add.
Admitted.
Program Definition sub_wd : Proper (eq==>eq==>eq) sub.
Admitted.
Program Definition mul_wd : Proper (eq==>eq==>eq) mul.
Admitted.
Program Definition lt_wd : Proper (eq==>eq==>iff) lt.
Admitted.
Program Definition div_wd : Proper (eq==>eq==>eq) div.
Admitted.
Program Definition mod_wd : Proper (eq==>eq==>eq) modulo.
Admitted.
Program Definition quot_wd : Proper (eq==>eq==>eq) quot.
Admitted.
Program Definition rem_wd : Proper (eq==>eq==>eq) rem.
Admitted.
Program Definition pow_wd : Proper (eq==>eq==>eq) pow.
Admitted.
Program Definition testbit_wd : Proper (eq==>eq==>Logic.eq) testbit.
Admitted.

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
Infix "*" := Z.mul : Z_scope.
Infix "^" := Z.pow : Z_scope.
Infix "/" := Z.div : Z_scope.
Infix "mod" := Z.modulo (at level 40, no associativity) : Z_scope.
Infix "=?" := Z.eqb (at level 70, no associativity) : Z_scope.
Infix "<=" := Z.le : Z_scope.
Infix "<" := Z.lt : Z_scope.
Notation "x <= y < z" := (x <= y /\ y < z) : Z_scope.

Lemma inj_pred x : 1 < x -> Z.to_pos (Z.pred x) = Pos.pred (Z.to_pos x).
Admitted.

Section LocalNotations.

End LocalNotations.

End BinInt.
Module Export Stdlib_DOT_ZArith_DOT_BinInt.
Module Export Stdlib.
Module Export ZArith.
Module Export BinInt.
End BinInt.

End ZArith.

End Stdlib.

End Stdlib_DOT_ZArith_DOT_BinInt.
Module Export Zminmax.
End Zminmax.
Export Stdlib.ZArith.BinInt.
Module Export Stdlib.
Module Export ZArith.
Module Export ZArith.
End ZArith.

End ZArith.

End Stdlib.
Import Stdlib.ZArith.ZArith.
Local Open Scope Z_scope.

Module Export Z.

  Definition zselect (cond zero_case nonzero_case : Z) :=
    if cond =? 0 then zero_case else nonzero_case.
Definition add_with_get_carry_full (bound : Z) (c x y : Z) : Z * Z.
Admitted.
Definition mul_split (s x y : Z) : Z * Z.
Admitted.
Module Export Crypto.
Module Export Util.
Module Export ZUtil.
Module Export Definitions.
End Definitions.
  Section map2.
  End map2.
Module Export ListUtil.
End ListUtil.
Import Stdlib.ZArith.ZArith.
Import Stdlib.Lists.List.
Import Crypto.Util.ZUtil.Definitions.
Local Open Scope Z_scope.

Module Export Associational.
Definition eval (p:list (Z*Z)) : Z.
exact (fold_right (fun x y => x + y) 0%Z (map (fun t => fst t * snd t) p)).
Defined.

Module Export Positional.
  Section Positional.
  Context (weight : nat -> Z)
          (weight_0 : weight 0%nat = 1)
          (weight_nz : forall i, weight i <> 0).
Definition to_associational (n:nat) (xs:list Z) : list (Z*Z).
exact (combine (map weight (List.seq 0 n)) xs).
Defined.
  Definition eval n x := Associational.eval (@to_associational n x).
  Definition zeros n : list Z := repeat 0 n.
Definition extend_to_length (n_in n_out : nat) (p:list Z) : list Z.
admit.
Defined.
Definition drop_high_to_length (n : nat) (p:list Z) : list Z.
exact (firstn n p).
Defined.

    Definition select (cond:Z) (if_zero if_nonzero:list Z) :=
      List.map (fun '(p, q) => Z.zselect cond p q) (List.combine if_zero if_nonzero).
End Positional.
Section Positional_nonuniform.
End Positional_nonuniform.

Record weight_properties {weight : nat -> Z} :=
  {
    weight_0 : weight 0%nat = 1;
    weight_positive : forall i, 0 < weight i;
    weight_multiples : forall i, weight (S i) mod weight i = 0;
    weight_divides : forall i : nat, 0 < weight (S i) / weight i;
  }.
Module Export Crypto.
Module Export Arithmetic.
Module Export Core.
End Core.
Module Export Crypto_DOT_Arithmetic_DOT_Partition_WRAPPED.
Module Export Partition.
Import Stdlib.ZArith.ZArith.
Import Stdlib.Lists.List.
Local Open Scope Z_scope.

Module Export Partition.
  Definition partition (weight : nat -> Z) n x :=
    map (fun i => (x mod weight (S i)) / weight i) (seq 0 n).
End Partition.

End Partition.
Module Export Crypto_DOT_Arithmetic_DOT_Partition.
Module Export Crypto.
Module Export Arithmetic.
Include Crypto_DOT_Arithmetic_DOT_Partition_WRAPPED.Partition.

End Arithmetic.

End Crypto.

End Crypto_DOT_Arithmetic_DOT_Partition.
Import Stdlib.ZArith.ZArith.
Import Stdlib.Lists.List.
Import Crypto.Arithmetic.Core.
Import Crypto.Util.LetIn.
Import Crypto.Util.ZUtil.Definitions.
Import ListNotations.
Local Open Scope Z_scope.
  Section Columns.
  End Columns.

Module Export Rows.
  Section Rows.
    Context weight {wprops : @weight_properties weight}.
    Local Notation rows := (list (list Z)) (only parsing).
      Local Notation fw := (fun i => weight (S i) / weight i) (only parsing).
        Definition sum_rows' start_state (row1 row2 : list Z) : list Z * Z * nat :=
          fold_right (fun next (state : list Z * Z * nat) =>
                        let i := snd state in
                        let low_high' :=
                            let low_high := fst state in
                            let low := fst low_high in
                            let high := snd low_high in
                          dlet_nd sum_carry := Z.add_with_get_carry_full (fw i) high (fst next) (snd next) in
                          (low ++ [fst sum_carry], snd sum_carry) in
                     (low_high', S i)) start_state (rev (combine row1 row2)).
        Definition sum_rows row1 row2 := fst (sum_rows' (nil, 0, 0%nat) row1 row2).
Definition flatten' (start_state : list Z * Z) (inp : rows) : list Z * Z.
exact (fold_right (fun next_row (state : list Z * Z)=>
                      let out_carry := sum_rows (fst state) next_row in
                      (fst out_carry, snd state + snd out_carry)) start_state inp).
Defined.

      Definition flatten n (inp : rows) : list Z * Z :=
        let default := Positional.zeros n in
        flatten' (hd default inp, 0) (hd default (tl inp) :: tl (tl inp)).

      Definition sub n p q := flatten n [p; map (fun x => dlet y := x in Z.opp y) q].

      Definition conditional_sub n (p q:list Z) :=
        let '(v, c) := sub n p q in
        Positional.select (-c) v p.
  End Rows.
End Rows.
Module Export Crypto_DOT_Arithmetic_DOT_Saturated.
Module Export Crypto.
Module Export Arithmetic.
Module Export Saturated.
End Saturated.

End Arithmetic.

End Crypto.

End Crypto_DOT_Arithmetic_DOT_Saturated.
Import Stdlib.ZArith.ZArith.
Definition uweight (lgr : Z) : nat -> Z.
Admitted.
Module Export Crypto.
Module Export Arithmetic.
Module Export UniformWeight.
End UniformWeight.

End Arithmetic.

End Crypto.
Import Stdlib.ZArith.ZArith.
Import Crypto.Arithmetic.Core.
Import Crypto.Arithmetic.Partition.
Import Crypto.Arithmetic.Saturated.
Import Crypto.Arithmetic.UniformWeight.
Import Crypto.Util.ZUtil.Definitions.
Import Crypto.Util.LetIn.
Local Open Scope Z_scope.
  Section with_args.
    Context (lgr : Z)
            (m : Z).
    Local Notation weight := (uweight lgr).
    Let T (n : nat) := list Z.
    Let r := (2^lgr).
Definition eval {n} : T n -> Z.
exact (Positional.eval weight n).
Defined.
Let zero {n} : T n.
admit.
Defined.
Let divmod {n} : T (S n) -> T n * Z.
admit.
Defined.
Let scmul {n} (c : Z) (p : T n) : T (S n).
admit.
Defined.
Let addT {n} (p q : T n) : T (S n).
admit.
Defined.
Let drop_high_addT' {n} (p : T (S n)) (q : T n) : T (S n).
admit.
Defined.
Let conditional_sub {n} (arg : T (S n)) (N : T n) : T n.
exact (Positional.drop_high_to_length n (Rows.conditional_sub weight (S n) arg (Positional.extend_to_length n (S n) N))).
Defined.
    Context (R_numlimbs : nat)
            (N : T R_numlimbs).
    Section Iteration.
      Context (pred_A_numlimbs : nat)
              (B : T R_numlimbs) (k : Z)
              (A : T (S pred_A_numlimbs))
              (S : T (S R_numlimbs)).
      Local Definition A'_S3
        := dlet A_a := @divmod _ A in
           dlet A' := fst A_a in
           dlet a := snd A_a in
           dlet S1 := @addT _ S (@scmul _ a B) in
           dlet s := snd (@divmod _ S1) in
           dlet q := fst (Z.mul_split r s k) in
           dlet S2 := @drop_high_addT' _ S1 (@scmul _ q N) in
           dlet S3 := fst (@divmod _ S2) in
                          (A', S3).
    End Iteration.
      Context (A_numlimbs : nat)
              (A : T A_numlimbs)
              (B : T R_numlimbs)
              (k : Z)
              (S' : T (S R_numlimbs)).
Definition redc_body {pred_A_numlimbs} : T (S pred_A_numlimbs) * T (S R_numlimbs)
                                               -> T pred_A_numlimbs * T (S R_numlimbs).
exact (fun '(A, S') => A'_S3 _ B k A S').
Defined.
Definition redc_loop (count : nat) : T count * T (S R_numlimbs) -> T O * T (S R_numlimbs).
exact (nat_rect
             (fun count => T count * _ -> _)
             (fun A_S => A_S)
             (fun count' redc_loop_count' A_S
              => redc_loop_count' (redc_body A_S))
             count).
Defined.
Definition pre_redc : T (S R_numlimbs).
exact (snd (redc_loop A_numlimbs (A, @zero (1 + R_numlimbs)%nat))).
Defined.
Definition redc : T R_numlimbs.
exact (conditional_sub pre_redc N).
Defined.
Definition small {n} (v : T n) : Prop.
exact (v = Partition.partition weight n (eval v)).
Defined.
  End with_args.
  Section modops.
    Context (bitwidth : Z)
            (n : nat)
            (m : Z).
    Let r := 2^bitwidth.
    Local Notation weight := (uweight bitwidth).
    Local Notation eval := (@eval bitwidth n).
    Let m_enc := Partition.partition weight n m.
    Local Coercion Z.of_nat : nat >-> Z.
    Context (r' : Z)
            (m' : Z)
            (r'_correct : (r * r') mod m = 1)
            (m'_correct : (m * m') mod r = (-1) mod r)
            (bitwidth_big : 0 < bitwidth)
            (m_big : 1 < m)
            (n_nz : n <> 0%nat)
            (m_small : m < r^n).
    Local Notation small := (@small bitwidth n).
Definition mulmod (a b : list Z) : list Z.
exact (@redc bitwidth n m_enc n a b m').
Defined.
    Definition valid (a : list Z) := small a /\ 0 <= eval a < m.
Definition onemod : list Z.
Admitted.
Definition R2mod : list Z.
Admitted.
Definition from_montgomerymod (v : list Z) : list Z.
exact (mulmod v onemod).
Defined.
    Lemma eval_mulmod
      : (forall a (_ : valid a) b (_ : valid b),
            eval (from_montgomerymod (mulmod a b)) mod m
            = (eval (from_montgomerymod a) * eval (from_montgomerymod b)) mod m).
    Admitted.
Goal forall v, eval (from_montgomerymod v) mod m * (eval (from_montgomerymod R2mod) mod m) mod m = eval v mod m.
Proof.
  intros.
  assert_fails rewrite eval_mulmod.
Import Stdlib.ssr.ssreflect.
  timeout 3 try rewrite eval_mulmod.
_EOF
echo testing
cat bug.v
echo end test
opam install -y coq-fiat-crypto
coqc bug.v
