
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-native-compiler" "no" "-w" "-undeclared-scope" "-w" "-omega-is-deprecated" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/lib" "compcert.lib" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/common" "compcert.common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/x86_32" "compcert.x86_32" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/x86" "compcert.x86" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/backend" "compcert.backend" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/cfrontend" "compcert.cfrontend" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/driver" "compcert.driver" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/cparser" "compcert.cparser" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/export" "compcert.export" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Flocq" "Flocq" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/MenhirLib" "MenhirLib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 496 lines to 77 lines, then from 90 lines to 1459 lines, then from 1465 lines to 86 lines, then from 99 lines to 1332 lines, then from 1337 lines to 91 lines, then from 104 lines to 1764 lines, then from 1769 lines to 425 lines, then from 438 lines to 3101 lines, then from 3107 lines to 428 lines, then from 441 lines to 1100 lines, then from 1106 lines to 444 lines, then from 457 lines to 1397 lines, then from 1403 lines to 462 lines, then from 475 lines to 1478 lines, then from 1484 lines to 447 lines, then from 460 lines to 1271 lines, then from 1276 lines to 449 lines, then from 462 lines to 1255 lines, then from 1259 lines to 454 lines, then from 467 lines to 972 lines, then from 978 lines to 676 lines, then from 684 lines to 458 lines, then from 471 lines to 1655 lines, then from 1661 lines to 463 lines, then from 476 lines to 1138 lines, then from 1144 lines to 467 lines, then from 480 lines to 1180 lines, then from 1186 lines to 492 lines, then from 505 lines to 1654 lines, then from 1660 lines to 496 lines, then from 509 lines to 1135 lines, then from 1141 lines to 486 lines, then from 499 lines to 3493 lines, then from 3499 lines to 491 lines, then from 504 lines to 2326 lines, then from 2331 lines to 641 lines, then from 654 lines to 1408 lines, then from 1413 lines to 667 lines, then from 680 lines to 1210 lines, then from 1216 lines to 675 lines, then from 688 lines to 2565 lines, then from 2571 lines to 3302 lines, then from 3258 lines to 672 lines, then from 685 lines to 2398 lines, then from 2402 lines to 678 lines, then from 691 lines to 1398 lines, then from 1403 lines to 695 lines, then from 708 lines to 2755 lines, then from 2759 lines to 681 lines, then from 694 lines to 1830 lines, then from 1835 lines to 698 lines, then from 711 lines to 1791 lines, then from 1797 lines to 703 lines, then from 716 lines to 1426 lines, then from 1432 lines to 694 lines, then from 707 lines to 3182 lines, then from 3188 lines to 695 lines, then from 708 lines to 6495 lines, then from 0 lines to 6495 lines, then from 6505 lines to 929 lines, then from 940 lines to 2071 lines, then from 2077 lines to 662 lines, then from 674 lines to 644 lines, then from 657 lines to 1369 lines, then from 1368 lines to 649 lines, then from 662 lines to 1184 lines, then from 1190 lines to 654 lines, then from 667 lines to 2430 lines, then from 2436 lines to 660 lines, then from 673 lines to 1573 lines, then from 1578 lines to 664 lines, then from 677 lines to 1722 lines, then from 1727 lines to 669 lines, then from 682 lines to 1220 lines, then from 1226 lines to 672 lines, then from 685 lines to 2711 lines, then from 2717 lines to 677 lines, then from 690 lines to 1818 lines, then from 1822 lines to 681 lines, then from 694 lines to 1732 lines, then from 1738 lines to 713 lines, then from 726 lines to 1223 lines, then from 1229 lines to 711 lines, then from 724 lines to 2637 lines, then from 2643 lines to 1875 lines, then from 1841 lines to 720 lines, then from 733 lines to 1799 lines, then from 1805 lines to 718 lines, then from 731 lines to 3423 lines, then from 3428 lines to 723 lines, then from 736 lines to 1448 lines, then from 1454 lines to 726 lines, then from 739 lines to 3181 lines, then from 3187 lines to 732 lines, then from 745 lines to 1964 lines, then from 1969 lines to 732 lines, then from 745 lines to 1627 lines, then from 1632 lines to 787 lines, then from 800 lines to 2437 lines, then from 2443 lines to 883 lines, then from 896 lines to 3664 lines, then from 3669 lines to 794 lines, then from 807 lines to 1540 lines, then from 1546 lines to 795 lines, then from 808 lines to 1809 lines, then from 1814 lines to 1070 lines, then from 1048 lines to 869 lines, then from 882 lines to 1531 lines, then from 1536 lines to 998 lines, then from 1011 lines to 1265 lines, then from 1271 lines to 998 lines, then from 1011 lines to 1610 lines, then from 1616 lines to 885 lines, then from 898 lines to 1642 lines, then from 1648 lines to 908 lines, then from 921 lines to 980 lines, then from 986 lines to 918 lines, then from 931 lines to 3780 lines, then from 3785 lines to 929 lines, then from 942 lines to 2544 lines, then from 2549 lines to 1347 lines, then from 1360 lines to 2393 lines, then from 2399 lines to 1384 lines, then from 1397 lines to 2542 lines, then from 2548 lines to 1550 lines, then from 1563 lines to 5008 lines, then from 5014 lines to 2512 lines, then from 2478 lines to 1539 lines, then from 1552 lines to 2806 lines, then from 2810 lines to 1632 lines, then from 1645 lines to 4215 lines, then from 4220 lines to 1742 lines, then from 1755 lines to 3947 lines, then from 3952 lines to 1776 lines, then from 1789 lines to 4090 lines, then from 4096 lines to 1851 lines, then from 1864 lines to 2462 lines, then from 2468 lines to 1940 lines, then from 1953 lines to 4179 lines, then from 4180 lines to 3718 lines, then from 3639 lines to 1990 lines, then from 2003 lines to 6961 lines, then from 6967 lines to 3312 lines, then from 3325 lines to 4930 lines, then from 4935 lines to 2047 lines, then from 2060 lines to 3504 lines, then from 3510 lines to 2053 lines, then from 2066 lines to 5154 lines, then from 5160 lines to 2070 lines, then from 2086 lines to 2068 lines, then from 2081 lines to 2106 lines, then from 2112 lines to 2069 lines, then from 2082 lines to 4443 lines, then from 4448 lines to 2208 lines, then from 2221 lines to 3516 lines, then from 3520 lines to 2501 lines, then from 2514 lines to 3670 lines, then from 3676 lines to 2684 lines, then from 2697 lines to 4512 lines, then from 4518 lines to 2687 lines, then from 2705 lines to 2687 lines, then from 2700 lines to 8038 lines, then from 8042 lines to 2742 lines, then from 2755 lines to 3148 lines, then from 3154 lines to 2745 lines, then from 2758 lines to 3824 lines, then from 3830 lines to 2750 lines, then from 2763 lines to 6911 lines, then from 6917 lines to 4233 lines, then from 4198 lines to 2764 lines, then from 2777 lines to 5013 lines, then from 5018 lines to 2908 lines, then from 2921 lines to 3314 lines, then from 3320 lines to 2915 lines, then from 2928 lines to 4525 lines, then from 4531 lines to 2953 lines, then from 2966 lines to 3207 lines, then from 3213 lines to 2955 lines, then from 2968 lines to 4015 lines, then from 4018 lines to 3652 lines, then from 3597 lines to 2955 lines, then from 2968 lines to 3458 lines, then from 3463 lines to 2957 lines, then from 2970 lines to 3658 lines, then from 3664 lines to 2963 lines, then from 2976 lines to 4941 lines, then from 4943 lines to 3239 lines, then from 3252 lines to 3650 lines, then from 3651 lines to 3374 lines, then from 3387 lines to 3492 lines, then from 3498 lines to 3377 lines, then from 3390 lines to 3635 lines, then from 3641 lines to 3383 lines, then from 3399 lines to 3381 lines, then from 3394 lines to 3678 lines, then from 3684 lines to 3387 lines, then from 3400 lines to 3747 lines, then from 3753 lines to 3392 lines, then from 3405 lines to 3600 lines, then from 3606 lines to 3397 lines, then from 3410 lines to 3545 lines, then from 3551 lines to 3402 lines, then from 3415 lines to 3769 lines, then from 3775 lines to 3407 lines, then from 3420 lines to 3515 lines, then from 3521 lines to 3412 lines, then from 3425 lines to 3609 lines, then from 3614 lines to 3410 lines, then from 3423 lines to 3804 lines, then from 3810 lines to 3705 lines *)
(* coqc version 9.2+alpha compiled with OCaml 4.14.2
   coqtop version 9.2+alpha
   Expected coqc runtime on this file: 1.233 sec *)









Require Corelib.Init.Ltac.
Require Stdlib.Classes.DecidableClass.
Require Stdlib.Logic.HLevelsBase.
Require Stdlib.Bool.Bool.
Require Corelib.Classes.RelationClasses.
Require Stdlib.Classes.RelationClasses.
Require Corelib.Classes.Morphisms.
Require Stdlib.Classes.Morphisms.
Require Corelib.Setoids.Setoid.
Require Stdlib.Setoids.Setoid.
Require Stdlib.Structures.Equalities.
Require Corelib.Relations.Relation_Definitions.
Require Stdlib.Relations.Relation_Definitions.
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
Require Stdlib.Numbers.NatInt.NZDiv.
Require Stdlib.Numbers.NatInt.NZGcd.
Require Stdlib.Numbers.NatInt.NZBits.
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
Require Corelib.BinNums.NatDef.
Require Corelib.BinNums.PosDef.
Require Corelib.Init.Byte.
Require Corelib.Numbers.BinNums.
Require Stdlib.Logic.EqdepFacts.
Require Stdlib.BinNums.NatDef.
Require Stdlib.BinNums.PosDef.
Require Stdlib.Init.Byte.
Require Stdlib.Logic.Eqdep_dec.
Require Stdlib.Numbers.BinNums.
Require Stdlib.PArith.BinPosDef.
Require Stdlib.Arith.EqNat.
Require Stdlib.PArith.BinPos.
Require Stdlib.PArith.Pnat.
Require Stdlib.NArith.BinNatDef.
Require Stdlib.NArith.BinNat.
Require Stdlib.NArith.Nnat.
Require Stdlib.Strings.Byte.
Require Corelib.Floats.SpecFloat.

Module Export AdmitTactic.
Module Import LocalFalse.
Inductive False : Prop := .
End LocalFalse.
Axiom proof_admitted : False.
Import Coq.Init.Ltac.
Tactic Notation "admit" := abstract case proof_admitted.
End AdmitTactic.

Module Export Stdlib_DOT_Strings_DOT_Ascii_WRAPPED.
Module Export Ascii.
Import Stdlib.Bool.Bool.
Import Stdlib.PArith.BinPos.
Import Stdlib.NArith.BinNat.
Import Stdlib.Arith.PeanoNat.
Import Stdlib.NArith.Nnat.
Import Stdlib.Strings.Byte.
Import IfNotations.





Inductive ascii : Set := Ascii (_ _ _ _ _ _ _ _ : bool).

Declare Scope char_scope.
Delimit Scope char_scope with char.
Bind Scope char_scope with ascii.

Register ascii as core.ascii.type.
Register Ascii as core.ascii.ascii.

Definition zero := Ascii false false false false false false false false.

Definition one := Ascii true false false false false false false false.

Definition shift (c : bool) (a : ascii) :=
  match a with
    | Ascii a1 a2 a3 a4 a5 a6 a7 a8 => Ascii c a1 a2 a3 a4 a5 a6 a7
  end.



Definition ascii_dec : forall a b : ascii, {a = b} + {a <> b}.
Admitted.

#[local] Open Scope lazy_bool_scope.
Definition eqb (a b : ascii) : bool. exact (match a, b with
 | Ascii a0 a1 a2 a3 a4 a5 a6 a7,
   Ascii b0 b1 b2 b3 b4 b5 b6 b7 =>
    Bool.eqb a0 b0 &&& Bool.eqb a1 b1 &&& Bool.eqb a2 b2 &&& Bool.eqb a3 b3
    &&& Bool.eqb a4 b4 &&& Bool.eqb a5 b5 &&& Bool.eqb a6 b6 &&& Bool.eqb a7 b7
 end). Defined.

Infix "=?" := eqb : char_scope.

Lemma eqb_spec (a b : ascii) : reflect (a = b) (a =? b)%char.
Admitted.

#[local] Ltac t_eqb :=
  repeat first [ congruence
               | progress subst
               | apply conj
               | match goal with
                 | [ |- context[eqb ?x ?y] ] => destruct (eqb_spec x y)
                 end
               | intro ].
Lemma eqb_refl x : (x =? x)%char = true.
Admitted.
Lemma eqb_sym x y : (x =? y)%char = (y =? x)%char.
Admitted.
Lemma eqb_eq n m : (n =? m)%char = true <-> n = m.
Admitted.
Lemma eqb_neq x y : (x =? y)%char = false <-> x <> y.
Admitted.
Lemma eqb_compat: Morphisms.Proper (Morphisms.respectful eq (Morphisms.respectful eq eq)) eqb.
Admitted.
Definition ascii_of_pos : positive -> ascii. exact (let loop := fix loop n p :=
   match n with
     | O => zero
     | S n' =>
       match p with
         | xH => one
         | xI p' => shift true (loop n' p')
         | xO p' => shift false (loop n' p')
       end
   end
 in loop 8). Defined.



Definition ascii_of_N (n : N) :=
  match n with
    | N0 => zero
    | Npos p => ascii_of_pos p
  end.



Definition ascii_of_nat (a : nat) := ascii_of_N (N.of_nat a).



#[local] Open Scope list_scope.
Fixpoint N_of_digits (l:list bool) : N. exact (match l with
  | nil => 0
  | b :: l' => (if b then 1 else 0) + 2*(N_of_digits l')
 end%N). Defined.
Definition N_of_ascii (a : ascii) : N. exact (let (a0,a1,a2,a3,a4,a5,a6,a7) := a in
 N_of_digits (a0::a1::a2::a3::a4::a5::a6::a7::nil)). Defined.
Definition nat_of_ascii (a : ascii) : nat. exact (N.to_nat (N_of_ascii a)). Defined.



Theorem ascii_N_embedding :
  forall a : ascii, ascii_of_N (N_of_ascii a) = a.
Admitted.

Theorem N_ascii_embedding :
  forall n:N, (n < 256)%N -> N_of_ascii (ascii_of_N n) = n.
Admitted.

Theorem N_ascii_bounded :
  forall a : ascii, (N_of_ascii a < 256)%N.
Admitted.

Theorem ascii_nat_embedding :
  forall a : ascii, ascii_of_nat (nat_of_ascii a) = a.
Admitted.

Theorem nat_ascii_embedding :
  forall n : nat, n < 256 -> nat_of_ascii (ascii_of_nat n) = n.
Admitted.

Theorem nat_ascii_bounded :
  forall a : ascii, nat_of_ascii a < 256.
Admitted.
Definition compare (a b : ascii) : comparison. exact (N.compare (N_of_ascii a) (N_of_ascii b)). Defined.

Lemma compare_antisym (a b : ascii) :
    compare a b = CompOpp (compare b a).
Admitted.

Lemma compare_eq_iff (a b : ascii) : compare a b = Eq -> a = b.
Admitted.
Definition ltb (a b : ascii) : bool. exact (if compare a b is Lt then true else false). Defined.
Definition leb (a b : ascii) : bool. exact (if compare a b is Gt then false else true). Defined.

Lemma leb_antisym (a b : ascii) :
  leb a b = true -> leb b a = true -> a = b.
Admitted.

Lemma leb_total (a b : ascii) : leb a b = true \/ leb b a = true.
Admitted.

Infix "?="  := compare : char_scope.
Infix "<?"  := ltb : char_scope.
Infix "<=?" := leb : char_scope.
Definition ascii_of_byte (b : byte) : ascii. exact (let '(b0, (b1, (b2, (b3, (b4, (b5, (b6, b7))))))) := Byte.to_bits b in
     Ascii b0 b1 b2 b3 b4 b5 b6 b7). Defined.
Definition byte_of_ascii (a : ascii) : byte. exact (let (b0, b1, b2, b3, b4, b5, b6, b7) := a in
     Byte.of_bits (b0, (b1, (b2, (b3, (b4, (b5, (b6, b7)))))))). Defined.

Lemma ascii_of_byte_of_ascii x : ascii_of_byte (byte_of_ascii x) = x.
Admitted.

Lemma byte_of_ascii_of_byte x : byte_of_ascii (ascii_of_byte x) = x.
Admitted.

Lemma ascii_of_byte_via_N x : ascii_of_byte x = ascii_of_N (Byte.to_N x).
Admitted.

Lemma ascii_of_byte_via_nat x : ascii_of_byte x = ascii_of_nat (Byte.to_nat x).
Admitted.

Lemma byte_of_ascii_via_N x : Some (byte_of_ascii x) = Byte.of_N (N_of_ascii x).
Admitted.

Lemma byte_of_ascii_via_nat x : Some (byte_of_ascii x) = Byte.of_nat (nat_of_ascii x).
Admitted.

Module Export AsciiSyntax.
  String Notation ascii ascii_of_byte byte_of_ascii : char_scope.
End AsciiSyntax.

#[local] Open Scope char_scope.

Example Space := " ".
Example DoubleQuote := """".
Example Beep := "007".

End Ascii.

End Stdlib_DOT_Strings_DOT_Ascii_WRAPPED.
Module Export Stdlib_DOT_Strings_DOT_Ascii.
Module Export Stdlib.
Module Export Strings.
Module Export Ascii.
Include Stdlib_DOT_Strings_DOT_Ascii_WRAPPED.Ascii.
End Ascii.

End Strings.

End Stdlib.

End Stdlib_DOT_Strings_DOT_Ascii.

Export Stdlib.Numbers.NatInt.NZAxioms.
Import Stdlib.Numbers.NatInt.NZDiv.

Module Type ZAxiom (Import Z : NZAxiomsSig').
End ZAxiom.

Module Type Opp (Import T:Typ).
End Opp.

Module Type OppNotation (T:Typ)(Import O : Opp T).
End OppNotation.

Module Type Opp' (T:Typ) := Opp T <+ OppNotation T.

Module Type IsOpp (Import Z : NZAxiomsSig')(Import O : Opp' Z).
End IsOpp.

Module Type OppCstNotation (Import A : NZAxiomsSig)(Import B : Opp A).
End OppCstNotation.

Module Type ZAxiomsMiniSig := NZOrdAxiomsSig <+ ZAxiom <+ Opp <+ IsOpp.
Module Type ZAxiomsMiniSig' := NZOrdAxiomsSig' <+ ZAxiom <+ Opp' <+ IsOpp
 <+ OppCstNotation.

Module Type HasAbs(Import Z : ZAxiomsMiniSig').
End HasAbs.

Module Type HasSgn (Import Z : ZAxiomsMiniSig').
End HasSgn.

Module Type ZDivSpecific (Import A:ZAxiomsMiniSig')(Import B : DivMod' A).
End ZDivSpecific.

Module Type ZDiv (Z:ZAxiomsMiniSig) := NZDiv.NZDiv Z <+ ZDivSpecific Z.

Module Type QuotRem (Import A : Typ).
End QuotRem.

Module Type QuotRemNotation (A : Typ)(Import B : QuotRem A).
End QuotRemNotation.

Module Type QuotRem' (A : Typ) := QuotRem A <+ QuotRemNotation A.

Module Type QuotRemSpec (Import A : ZAxiomsMiniSig')(Import B : QuotRem' A).
End QuotRemSpec.

Module Type ZQuot (Z:ZAxiomsMiniSig) := QuotRem Z <+ QuotRemSpec Z.

Module Type ZAxiomsSig := ZAxiomsMiniSig <+ OrderFunctions
   <+ HasAbs <+ HasSgn <+ NZParity.NZParity
   <+ NZPow.NZPow <+ NZSqrt.NZSqrt <+ NZLog.NZLog2 <+ NZGcd.NZGcd
   <+ ZDiv <+ ZQuot <+ NZBits.NZBits <+ NZSquare.
Import Stdlib.Numbers.NatInt.NZMulOrder.

Module ZBaseProp (Import Z : ZAxiomsMiniSig').
Include NZMulOrderProp Z.

End ZBaseProp.

Module ZAddProp (Import Z : ZAxiomsMiniSig').
Include ZBaseProp Z.

End ZAddProp.

Module ZMulProp (Import Z : ZAxiomsMiniSig').
Include ZAddProp Z.

End ZMulProp.

Module ZOrderProp (Import Z : ZAxiomsMiniSig').
Include ZMulProp Z.

End ZOrderProp.

Module ZAddOrderProp (Import Z : ZAxiomsMiniSig').
Include ZOrderProp Z.

End ZAddOrderProp.

Module Type ZMulOrderProp (Import Z : ZAxiomsMiniSig').
Include ZAddOrderProp Z.

End ZMulOrderProp.

Module Type ZMaxMinProp (Import Z : ZAxiomsMiniSig').
Include ZMulOrderProp Z.

End ZMaxMinProp.

Module Type ZBasicProp (Z:ZAxiomsMiniSig) := ZMaxMinProp Z.
Module Export BinIntDef.
Import Stdlib.PArith.BinPos.
Import Stdlib.NArith.BinNat.

#[local] Open Scope Z_scope.

#[local] Notation "0" := Z0.
#[local] Notation "1" := (Zpos 1).
#[local] Notation "2" := (Zpos 2).

Module Export Z.

Include BinNums.IntDef.Z.

Definition t := Z.

Notation pos := Zpos.
Notation neg := Zneg.

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

Infix "=?" := eqb (at level 70, no associativity) : Z_scope.
Infix "<=?" := leb (at level 70, no associativity) : Z_scope.
Infix "<?" := ltb (at level 70, no associativity) : Z_scope.

Definition abs z :=
  match z with
    | 0 => 0
    | pos p => pos p
    | neg p => pos p
  end.

Definition of_uint (d:Decimal.uint) := of_N (Pos.of_uint d).

Definition of_hex_uint (d:Hexadecimal.uint) := of_N (Pos.of_hex_uint d).

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

Definition to_num_int n := Number.IntDecimal (to_int n).

Infix "/" := div : Z_scope.
Infix "mod" := modulo (at level 40, no associativity) : Z_scope.

Definition odd z :=
  match z with
    | 0 => false
    | pos (xO _) => false
    | neg (xO _) => false
    | _ => true
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
Number Notation Z of_num_int to_num_int : Z_scope.

End Z.

End BinIntDef.
Export Stdlib.PArith.BinPos.
Import Stdlib.Bool.Bool.
Import Stdlib.Structures.OrdersFacts.

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
Program Definition pow_wd : Proper (eq==>eq==>eq) pow.
Admitted.
Program Definition testbit_wd : Proper (eq==>eq==>Logic.eq) testbit.
Admitted.

Lemma one_succ : 1 = succ 0.
Admitted.

Lemma two_succ : 2 = succ 1.
Admitted.

Lemma add_0_l n : 0 + n = n.
Admitted.

Lemma add_succ_l n m : succ n + m = succ (n + m).
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
Notation "( x | y )" := (Z.divide x y) (at level 0) : Z_scope.
Notation "x < y < z" := (x < y /\ y < z) : Z_scope.
Notation "x < y <= z" := (x < y /\ y <= z) : Z_scope.
Import Stdlib.Strings.Ascii.

Inductive string : Set :=
  | EmptyString : string
  | String : ascii -> string -> string.

  Definition shift_nat (n:nat) (z:positive) := nat_rect _ z (fun _ => xO) n.

  Definition two_power_nat (n:nat) := Zpos (shift_nat n 1).
Module Export Coqlib.
Export Stdlib.Lists.List.
Export Stdlib.Bool.Bool.
Definition peq: forall (x y: positive), {x = y} + {x <> y}.
Admitted.
Definition Plt: positive -> positive -> Prop.
Admitted.
Definition zeq: forall (x y: Z), {x = y} + {x <> y}.
Admitted.
Definition zlt: forall (x y: Z), {x < y} + {x >= y}.
Admitted.

Set Implicit Arguments.
Definition list_disjoint (A: Type) (l1 l2: list A) : Prop.
Admitted.

Section FORALL2.

Variable A: Type.
Variable B: Type.
Variable P: A -> B -> Prop.

Inductive list_forall2: list A -> list B -> Prop :=
  | list_forall2_nil:
      list_forall2 nil nil
  | list_forall2_cons:
      forall a1 al b1 bl,
      P a1 b1 ->
      list_forall2 al bl ->
      list_forall2 (a1 :: al) (b1 :: bl).

End FORALL2.
Definition proj_sumbool {P Q: Prop} (a: {P} + {Q}) : bool.
Admitted.

Coercion proj_sumbool: sumbool >-> bool.

End Coqlib.
Module Export Errors.

Set Implicit Arguments.
Definition errmsg: Type.
Admitted.

Inductive res (A: Type) : Type :=
| OK: A -> res A
| Error: errmsg -> res A.

End Errors.
Module Export Maps.

Set Implicit Arguments.

Module Type TREE.
  Parameter elt: Type.
  Parameter t: Type -> Type.
End TREE.

Module Type MAP.
End MAP.

Module PTree <: TREE.
  Definition elt := positive.

  Inductive tree' (A: Type) : Type :=
  | Node001: tree' A -> tree' A
  | Node010: A -> tree' A
  | Node011: A -> tree' A -> tree' A
  | Node100: tree' A -> tree' A
  | Node101: tree' A -> tree' A ->tree' A
  | Node110: tree' A -> A -> tree' A
  | Node111: tree' A -> A -> tree' A -> tree' A.

  Inductive tree (A: Type) : Type :=
  | Empty : tree A
  | Nodes: tree' A -> tree A.

  Arguments Empty {A}.

  Definition t := tree.
Definition empty (A: Type) : t A.
exact (Empty).
Defined.

  Fixpoint get' {A} (p: positive) (m: tree' A) : option A :=
    match p, m with
    | xH, Node001 _ => None
    | xH, Node010 x => Some x
    | xH, Node011 x _ => Some x
    | xH, Node100 _ => None
    | xH, Node101 _ _ => None
    | xH, Node110 _ x => Some x
    | xH, Node111 _ x _ => Some x
    | xO q, Node001 _ => None
    | xO q, Node010 _ => None
    | xO q, Node011 _ _ => None
    | xO q, Node100 m' => get' q m'
    | xO q, Node101 m' _ => get' q m'
    | xO q, Node110 m' _ => get' q m'
    | xO q, Node111 m' _ _ => get' q m'
    | xI q, Node001 m' => get' q m'
    | xI q, Node010 _ => None
    | xI q, Node011 _ m' => get' q m'
    | xI q, Node100 m' => None
    | xI q, Node101 _ m' => get' q m'
    | xI q, Node110 _ _ => None
    | xI q, Node111 _ _ m' => get' q m'
    end.
Definition get {A} (p: positive) (m: tree A) : option A.
exact (match m with
    | Empty => None
    | Nodes m' => get' p m'
    end).
Defined.

  Section TREE_REC2.

  Context {A B C: Type}
          (base: C)
          (base1: tree B -> C)
          (base2: tree A -> C)
          (nodes: forall (l1: tree A) (o1: option A) (r1: tree A)
                         (l2: tree B) (o2: option B) (r2: tree B)
                         (lrec: C) (rrec: C), C).

  Fixpoint tree_rec2' (m1: tree' A) (m2: tree' B) : C.
Admitted.
Definition tree_rec2 (a: tree A) (b: tree B) : C.
Admitted.

  End TREE_REC2.

  Section COMBINE.

  Variables A B C: Type.
  Variable f: option A -> option B -> option C.
Let combine_nonopt (m1: tree A) (m2: tree B) : tree C.
Admitted.

  Definition combine :=
    Eval cbv [combine_nonopt tree_rec2 tree_rec2'] in combine_nonopt.

  End COMBINE.
Definition elements {A} (m : t A) : list (positive * A).
Admitted.

End PTree.

Module PMap <: MAP.
Definition t (A : Type) : Type.
exact ((A * PTree.t A)%type).
Defined.

  Definition init (A : Type) (x : A) :=
    (x, PTree.empty A).

  Definition get (A : Type) (i : positive) (m : t A) :=
    match PTree.get i (snd m) with
    | Some x => x
    | None => fst m
    end.

End PMap.

Module Type INDEXED_TYPE.
  Parameter t: Type.
  Parameter index: t -> positive.
End INDEXED_TYPE.

Module IMap(X: INDEXED_TYPE).
Definition t : Type -> Type.
exact (PMap.t).
Defined.
  Definition init (A: Type) (x: A) := PMap.init x.

End IMap.

Module Export ZIndexed.
  Definition t := Z.
Definition index (z: Z): positive.
Admitted.
End ZIndexed.

Module ZMap := IMap(ZIndexed).

Module Type EQUALITY_TYPE.
  Parameter t: Type.
  Parameter eq: forall (x y: t), {x = y} + {x <> y}.
End EQUALITY_TYPE.

Module EMap(X: EQUALITY_TYPE) <: MAP.
  Definition t (A: Type) := X.t -> A.
  Definition init (A: Type) (v: A) := fun (_: X.t) => v.
  Definition set (A: Type) (x: X.t) (v: A) (m: t A) :=
    fun (y: X.t) => if X.eq y x then v else m y.
End EMap.

Module ITree(X: INDEXED_TYPE).
Definition t : Type -> Type.
Admitted.
End ITree.

Module ZTree := ITree(ZIndexed).

Module Tree_Properties(T: TREE).

Section FORALL_EXISTS.

Variable A: Type.
Definition for_all (m: T.t A) (f: T.elt -> A -> bool) : bool.
Admitted.

End FORALL_EXISTS.

End Tree_Properties.

Module PTree_Properties := Tree_Properties(PTree).

Notation "a ! b" := (PTree.get b a) (at level 1).

End Maps.

Section Binary.

Variable prec emax : Z.

Notation bounded := (SpecFloat.bounded prec emax).

Inductive binary_float :=
  | B754_zero (s : bool)
  | B754_infinity (s : bool)
  | B754_nan : binary_float
  | B754_finite (s : bool) (m : positive) (e : Z) :
    bounded m e = true -> binary_float.

End Binary.

Definition binary32 := binary_float 24 128.

Definition binary64 := binary_float 53 1024.
Module Export Archi.

Definition ptr64 := false.

Module Type WORDSIZE.
End WORDSIZE.

Module Make(WS: WORDSIZE).
Definition modulus : Z.
Admitted.

Record int: Type := mkint { intval: Z; intrange: -1 < intval < modulus }.
Definition unsigned (n: int) : Z.
Admitted.
Definition repr (x: Z) : int.
Admitted.

Definition zero := repr 0.
Definition one  := repr 1.
Definition add (x y: int) : int.
Admitted.

End Make.

Module Export Wordsize_32.
End Wordsize_32.

Module Int := Make(Wordsize_32).

Notation int := Int.int.

Module Export Wordsize_8.
End Wordsize_8.

Module Byte := Make(Wordsize_8).

Notation byte := Byte.int.

Module Export Wordsize_64.
End Wordsize_64.

Module Int64.

Include Make(Wordsize_64).

End Int64.

Notation int64 := Int64.int.

Module Export Wordsize_Ptrofs.
End Wordsize_Ptrofs.

Module Ptrofs.

Include Make(Wordsize_Ptrofs).
Definition to_int (x: int): Int.int.
Admitted.
Definition to_int64 (x: int): Int64.int.
Admitted.

End Ptrofs.

Notation ptrofs := Ptrofs.int.

Definition float := binary64.

Definition float32 := binary32.

Module Export compcert_DOT_common_DOT_AST_WRAPPED.
Module Export AST.

Set Implicit Arguments.

Definition ident := positive.

Definition ident_eq := peq.

Inductive typ : Type :=
  | Tint
  | Tfloat
  | Tlong
  | Tsingle
  | Tany32
  | Tany64.

Inductive xtype : Type :=
  | Xbool
  | Xint8signed
  | Xint8unsigned
  | Xint16signed
  | Xint16unsigned
  | Xint
  | Xfloat
  | Xlong
  | Xsingle
  | Xptr
  | Xany32
  | Xany64
  | Xvoid.

Record calling_convention : Type := mkcallconv {
  cc_vararg: option Z;
  cc_unproto: bool;
  cc_structret: bool
}.

Definition cc_default :=
  {| cc_vararg := None; cc_unproto := false; cc_structret := false |}.

Record signature : Type := mksignature {
  sig_args: list xtype;
  sig_res: xtype;
  sig_cc: calling_convention
}.

Inductive memory_chunk : Type :=
  | Mbool
  | Mint8signed
  | Mint8unsigned
  | Mint16signed
  | Mint16unsigned
  | Mint32
  | Mint64
  | Mfloat32
  | Mfloat64
  | Many32
  | Many64.

Inductive init_data: Type :=
  | Init_int8: int -> init_data
  | Init_int16: int -> init_data
  | Init_int32: int -> init_data
  | Init_int64: int64 -> init_data
  | Init_float32: float32 -> init_data
  | Init_float64: float -> init_data
  | Init_space: Z -> init_data
  | Init_addrof: ident -> ptrofs -> init_data.
Fixpoint init_data_list_size (il: list init_data) {struct il} : Z.
Admitted.

Record globvar (V: Type) : Type := mkglobvar {
  gvar_info: V;
  gvar_init: list init_data;
  gvar_readonly: bool;
  gvar_volatile: bool
}.

Inductive globdef (F V: Type) : Type :=
  | Gfun (f: F)
  | Gvar (v: globvar V).

Arguments Gfun [F V].
Arguments Gvar [F V].

Record program (F V: Type) : Type := mkprogram {
  prog_defs: list (ident * globdef F V);
  prog_public: list ident;
  prog_main: ident
}.
Definition prog_defmap (F V: Type) (p: program F V) : PTree.t (globdef F V).
Admitted.

Inductive external_function : Type :=
  | EF_external (name: string) (sg: signature)

  | EF_builtin (name: string) (sg: signature)

  | EF_runtime (name: string) (sg: signature)

  | EF_vload (chunk: memory_chunk)

  | EF_vstore (chunk: memory_chunk)

  | EF_malloc

  | EF_free

  | EF_memcpy (sz: Z) (al: Z)

  | EF_annot (kind: positive) (text: string) (targs: list typ)

  | EF_annot_val (kind: positive) (text: string) (targ: typ)

  | EF_inline_asm (text: string) (sg: signature) (clobbers: list string)

  | EF_debug (kind: positive) (text: ident) (targs: list typ).
Definition ef_sig (ef: external_function): signature.
Admitted.

Definition external_function_eq: forall (ef1 ef2: external_function), {ef1=ef2} + {ef1<>ef2}.
Admitted.

Inductive fundef (F: Type): Type :=
  | Internal: F -> fundef F
  | External: external_function -> fundef F.

Arguments External [F].

Section TRANSF_FUNDEF.

Variable A B: Type.
Variable transf: A -> B.
Definition transf_fundef (fd: fundef A): fundef B.
Admitted.

End TRANSF_FUNDEF.

Section TRANSF_PARTIAL_FUNDEF.

Variable A B: Type.
Variable transf_partial: A -> res B.
Definition transf_partial_fundef (fd: fundef A): res (fundef B).
Admitted.

End TRANSF_PARTIAL_FUNDEF.

Inductive rpair (A: Type) : Type :=
  | One (r: A)
  | Twolong (rhi rlo: A).

Inductive builtin_arg (A: Type) : Type :=
  | BA (x: A)
  | BA_int (n: int)
  | BA_long (n: int64)
  | BA_float (f: float)
  | BA_single (f: float32)
  | BA_loadstack (chunk: memory_chunk) (ofs: ptrofs)
  | BA_addrstack (ofs: ptrofs)
  | BA_loadglobal (chunk: memory_chunk) (id: ident) (ofs: ptrofs)
  | BA_addrglobal (id: ident) (ofs: ptrofs)
  | BA_splitlong (hi lo: builtin_arg A)
  | BA_addptr (a1 a2: builtin_arg A).

Inductive builtin_res (A: Type) : Type :=
  | BR (x: A)
  | BR_none
  | BR_splitlong (hi lo: builtin_res A).

End AST.
Module Export compcert.
Module Export common.
Module Export AST.
Include compcert_DOT_common_DOT_AST_WRAPPED.AST.
End AST.
Module Export Linking.

Class Linker (A: Type) := {
  link: A -> A -> option A;
  linkorder: A -> A -> Prop;
  linkorder_refl: forall x, linkorder x x;
  linkorder_trans: forall x y z, linkorder x y -> linkorder y z -> linkorder x z;
  link_linkorder: forall x y z, link x y = Some z -> linkorder x z /\ linkorder y z
}.

Definition link_fundef {F: Type} (fd1 fd2: fundef F) :=
  match fd1, fd2 with
  | Internal _, Internal _ => None
  | External ef1, External ef2 =>
      if external_function_eq ef1 ef2 then Some (External ef1) else None
  | Internal f, External ef =>
      match ef with EF_external id sg => Some (Internal f) | _ => None end
  | External ef, Internal f =>
      match ef with EF_external id sg => Some (Internal f) | _ => None end
  end.

Inductive linkorder_fundef {F: Type}: fundef F -> fundef F -> Prop :=
  | linkorder_fundef_refl: forall fd, linkorder_fundef fd fd
  | linkorder_fundef_ext_int: forall f id sg, linkorder_fundef (External (EF_external id sg)) (Internal f).

Global Program Instance Linker_fundef (F: Type): Linker (fundef F) := {
  link := link_fundef;
  linkorder := linkorder_fundef
}.

Inductive init_class : list init_data -> Type :=
  | Init_extern: init_class nil
  | Init_common: forall sz, init_class (Init_space sz :: nil)
  | Init_definitive: forall il, init_class il.
Definition classify_init (i: list init_data) : init_class i.
Admitted.

Definition link_varinit (i1 i2: list init_data) :=
  match classify_init i1, classify_init i2 with
  | Init_extern, _ => Some i2
  | _, Init_extern => Some i1
  | Init_common sz1, _ => if zeq sz1 (init_data_list_size i2) then Some i2 else None
  | _, Init_common sz2 => if zeq sz2 (init_data_list_size i1) then Some i1 else None
  | _, _ => None
  end.

Inductive linkorder_varinit: list init_data -> list init_data -> Prop :=
  | linkorder_varinit_refl: forall il, linkorder_varinit il il
  | linkorder_varinit_extern: forall il, linkorder_varinit nil il
  | linkorder_varinit_common: forall sz il,
      il <> nil -> init_data_list_size il = sz ->
      linkorder_varinit (Init_space sz :: nil) il.

Global Program Instance Linker_varinit : Linker (list init_data) := {
  link := link_varinit;
  linkorder := linkorder_varinit
}.
Admit Obligations.

Definition link_vardef {V: Type} {LV: Linker V} (v1 v2: globvar V) :=
  match link v1.(gvar_info) v2.(gvar_info) with
  | None => None
  | Some info =>
      match link v1.(gvar_init) v2.(gvar_init) with
      | None => None
      | Some init =>
          if eqb v1.(gvar_readonly) v2.(gvar_readonly)
          && eqb v1.(gvar_volatile) v2.(gvar_volatile)
          then Some {| gvar_info := info; gvar_init := init;
                       gvar_readonly := v1.(gvar_readonly);
                       gvar_volatile := v1.(gvar_volatile) |}
          else None
      end
  end.

Inductive linkorder_vardef {V: Type} {LV: Linker V}: globvar V -> globvar V -> Prop :=
  | linkorder_vardef_intro: forall info1 info2 i1 i2 ro vo,
      linkorder info1 info2 ->
      linkorder i1 i2 ->
      linkorder_vardef (mkglobvar info1 i1 ro vo) (mkglobvar info2 i2 ro vo).

Global Program Instance Linker_vardef (V: Type) {LV: Linker V}: Linker (globvar V) := {
  link := link_vardef;
  linkorder := linkorder_vardef
}.
Admit Obligations.

Global Program Instance Linker_unit: Linker unit := {
  link := fun x y => Some tt;
  linkorder := fun x y => True
}.

Definition link_def {F V: Type} {LF: Linker F} {LV: Linker V} (gd1 gd2: globdef F V) :=
  match gd1, gd2 with
  | Gfun f1, Gfun f2 =>
      match link f1 f2 with Some f => Some (Gfun f) | None => None end
  | Gvar v1, Gvar v2 =>
      match link v1 v2 with Some v => Some (Gvar v) | None => None end
  | _, _ => None
  end.

Inductive linkorder_def {F V: Type} {LF: Linker F} {LV: Linker V}: globdef F V -> globdef F V -> Prop :=
  | linkorder_def_fun: forall fd1 fd2,
      linkorder fd1 fd2 ->
      linkorder_def (Gfun fd1) (Gfun fd2)
  | linkorder_def_var: forall v1 v2,
      linkorder v1 v2 ->
      linkorder_def (Gvar v1) (Gvar v2).

Global Program Instance Linker_def (F V: Type) {LF: Linker F} {LV: Linker V}: Linker (globdef F V) := {
  link := link_def;
  linkorder := linkorder_def
}.
Admit Obligations.

Section LINKER_PROG.

Context {F V: Type} {LF: Linker F} {LV: Linker V} (p1 p2: program F V).

Let dm1 := prog_defmap p1.
Let dm2 := prog_defmap p2.

Definition link_prog_check (x: ident) (gd1: globdef F V) :=
  match dm2!x with
  | None => true
  | Some gd2 =>
      In_dec peq x p1.(prog_public)
      && In_dec peq x p2.(prog_public)
      && match link gd1 gd2 with Some _ => true | None => false end
  end.

Definition link_prog_merge (o1 o2: option (globdef F V)) :=
  match o1, o2 with
  | None, _ => o2
  | _, None => o1
  | Some gd1, Some gd2 => link gd1 gd2
  end.

Definition link_prog :=
  if ident_eq p1.(prog_main) p2.(prog_main)
  && PTree_Properties.for_all dm1 link_prog_check then
    Some {| prog_main := p1.(prog_main);
            prog_public := p1.(prog_public) ++ p2.(prog_public);
            prog_defs := PTree.elements (PTree.combine link_prog_merge dm1 dm2) |}
  else
    None.

End LINKER_PROG.

Global Program Instance Linker_prog (F V: Type) {LF: Linker F} {LV: Linker V} : Linker (program F V) := {
  link := link_prog;
  linkorder := fun p1 p2 =>
     p1.(prog_main) = p2.(prog_main)
  /\ incl p1.(prog_public) p2.(prog_public)
  /\ forall id gd1,
     (prog_defmap p1)!id = Some gd1 ->
     exists gd2,
        (prog_defmap p2)!id = Some gd2
     /\ linkorder gd1 gd2
     /\ (~In id p2.(prog_public) -> gd2 = gd1)
}.
Admit Obligations.

Section MATCH_PROGRAM_GENERIC.

Context {C F1 V1 F2 V2: Type} {LC: Linker C} {LF: Linker F1} {LV: Linker V1}.
Variable match_fundef: C -> F1 -> F2 -> Prop.
Variable match_varinfo: V1 -> V2 -> Prop.

Inductive match_globvar: globvar V1 -> globvar V2 -> Prop :=
  | match_globvar_intro: forall i1 i2 init ro vo,
      match_varinfo i1 i2 ->
      match_globvar (mkglobvar i1 init ro vo) (mkglobvar i2 init ro vo).

Inductive match_globdef (ctx: C): globdef F1 V1 -> globdef F2 V2 -> Prop :=
  | match_globdef_fun: forall ctx' f1 f2,
      linkorder ctx' ctx ->
      match_fundef ctx' f1 f2 ->
      match_globdef ctx (Gfun f1) (Gfun f2)
  | match_globdef_var: forall v1 v2,
      match_globvar v1 v2 ->
      match_globdef ctx (Gvar v1) (Gvar v2).
Definition match_ident_globdef
     (ctx: C) (ig1: ident * globdef F1 V1) (ig2: ident * globdef F2 V2) : Prop.
exact (fst ig1 = fst ig2 /\ match_globdef ctx (snd ig1) (snd ig2)).
Defined.
Definition match_program_gen (ctx: C) (p1: program F1 V1) (p2: program F2 V2) : Prop.
exact (list_forall2 (match_ident_globdef ctx) p1.(prog_defs) p2.(prog_defs)
  /\ p2.(prog_main) = p1.(prog_main)
  /\ p2.(prog_public) = p1.(prog_public)).
Defined.

End MATCH_PROGRAM_GENERIC.
Definition match_program {F1 V1 F2 V2: Type} {LF: Linker F1} {LV: Linker V1}
                         (match_fundef: program F1 V1 -> F1 -> F2 -> Prop)
                         (match_varinfo: V1 -> V2 -> Prop)
                         (p1: program F1 V1) (p2: program F2 V2) : Prop.
Admitted.

Class TransfLink {A B: Type} {LA: Linker A} {LB: Linker B} (transf: A -> B -> Prop) :=
  transf_link:
    forall (p1 p2: A) (tp1 tp2: B) (p: A),
    link p1 p2 = Some p ->
    transf p1 tp1 -> transf p2 tp2 ->
    exists tp, link tp1 tp2 = Some tp /\ transf p tp.

Global Instance TransfPartialContextualLink
           {A B C V: Type} {LV: Linker V}
           (tr_fun: C -> A -> res B)
           (ctx_for: program (fundef A) V -> C):
  TransfLink (fun (p1: program (fundef A) V) (p2: program (fundef B) V) =>
              match_program
                (fun cu f tf => AST.transf_partial_fundef (tr_fun (ctx_for cu)) f = OK tf)
                eq p1 p2).
Admitted.

Global Instance TransfPartialContextualLink2
           {A B C D V: Type} {LV: Linker V}
           (tr_fun: C -> D -> A -> res B)
           (ctx1_for: program (fundef A) V -> C)
           (ctx2_for: program (fundef A) V -> D):
  TransfLink (fun (p1: program (fundef A) V) (p2: program (fundef B) V) =>
              match_program
                (fun cu f tf => AST.transf_partial_fundef (tr_fun (ctx1_for cu) (ctx2_for cu)) f = OK tf)
                eq p1 p2).
Admitted.

Global Instance TransfPartialLink
           {A B V: Type} {LV: Linker V}
           (tr_fun: A -> res B):
  TransfLink (fun (p1: program (fundef A) V) (p2: program (fundef B) V) =>
              match_program
                (fun cu f tf => AST.transf_partial_fundef tr_fun f = OK tf)
                eq p1 p2).
Admitted.

Global Instance TransfTotallContextualLink
           {A B C V: Type} {LV: Linker V}
           (tr_fun: C -> A -> B)
           (ctx_for: program (fundef A) V -> C):
  TransfLink (fun (p1: program (fundef A) V) (p2: program (fundef B) V) =>
              match_program
                (fun cu f tf => tf = AST.transf_fundef (tr_fun (ctx_for cu)) f)
                eq p1 p2).
Admitted.

Global Instance TransfTotalLink
           {A B V: Type} {LV: Linker V}
           (tr_fun: A -> B):
  TransfLink (fun (p1: program (fundef A) V) (p2: program (fundef B) V) =>
              match_program
                (fun cu f tf => tf = AST.transf_fundef tr_fun f)
                eq p1 p2).
Admitted.

Set Implicit Arguments.

Structure Language := mklang { lang_prog :> Type; lang_link: Linker lang_prog }.
Canonical Structure Language_gen (A: Type) (L: Linker A) : Language.
exact (@mklang A L).
Defined.

Record Pass (S T: Language) := mkpass {
  pass_match :> lang_prog S -> lang_prog T -> Prop;
  pass_match_link: @TransfLink (lang_prog S) (lang_prog T) (lang_link S) (lang_link T) pass_match
}.

Arguments mkpass {S} {T} (pass_match) {pass_match_link}.

Program Definition pass_identity (l: Language): Pass l l :=
  {| pass_match := fun p1 p2 => p1 = p2;
     pass_match_link := _ |}.

Program Definition pass_compose {l1 l2 l3: Language} (pass: Pass l1 l2) (pass': Pass l2 l3) : Pass l1 l3 :=
  {| pass_match := fun p1 p3 => exists p2, pass_match pass p1 p2 /\ pass_match pass' p2 p3;
     pass_match_link := _ |}.
Admit Obligations.

Inductive Passes: Language -> Language -> Type :=
  | pass_nil: forall l, Passes l l
  | pass_cons: forall l1 l2 l3, Pass l1 l2 -> Passes l2 l3 -> Passes l1 l3.

Infix ":::" := pass_cons (at level 60, right associativity) : linking_scope.

Fixpoint compose_passes (l l': Language) (passes: Passes l l') : Pass l l' :=
  match passes in Passes l l' return Pass l l' with
  | pass_nil l => pass_identity l
  | pass_cons pass1 passes => pass_compose pass1 (compose_passes passes)
  end.

End Linking.

Module Export compcert_DOT_cfrontend_DOT_Ctypes_WRAPPED.
Module Export Ctypes.

Inductive signedness : Type :=
  | Signed: signedness
  | Unsigned: signedness.

Inductive intsize : Type :=
  | I8: intsize
  | I16: intsize
  | I32: intsize
  | IBool: intsize.

Inductive floatsize : Type :=
  | F32: floatsize
  | F64: floatsize.

Record attr : Type := mk_attr {
  attr_volatile: bool;
  attr_alignas: option N
}.

Definition noattr := {| attr_volatile := false; attr_alignas := None |}.

Inductive type : Type :=
  | Tvoid: type
  | Tint: intsize -> signedness -> attr -> type
  | Tlong: signedness -> attr -> type
  | Tfloat: floatsize -> attr -> type
  | Tpointer: type -> attr -> type
  | Tarray: type -> Z -> attr -> type
  | Tfunction: list type -> type -> calling_convention -> type
  | Tstruct: ident -> attr -> type
  | Tunion: ident -> attr -> type.
Definition bitsize_intsize (sz: intsize) : Z.
Admitted.

Inductive struct_or_union : Type := Struct | Union.
Definition members : Type.
Admitted.

Inductive composite_definition : Type :=
  Composite (id: ident) (su: struct_or_union) (m: members) (a: attr).

Record composite : Type := {
  co_su: struct_or_union;
  co_members: members;
  co_attr: attr;
  co_sizeof: Z;
  co_alignof: Z;
  co_rank: nat;
  co_sizeof_pos: co_sizeof >= 0;
  co_alignof_two_p: exists n, co_alignof = two_power_nat n;
  co_sizeof_alignof: (co_alignof | co_sizeof)
}.
Definition composite_env : Type.
exact (PTree.t composite).
Defined.

Inductive bitfield : Type :=
  | Full
  | Bits (sz: intsize) (sg: signedness) (pos: Z) (width: Z).

Definition type_int32s := Tint I32 Signed noattr.
Definition type_bool := Tint IBool Signed noattr.
Fixpoint alignof (env: composite_env) (t: type) : Z.
Admitted.
Fixpoint sizeof (env: composite_env) (t: type) : Z.
Admitted.
Definition field_offset (env: composite_env) (id: ident) (ms: members) : res (Z * bitfield).
Admitted.
Fixpoint union_field_offset (env: composite_env) (id: ident) (ms: members)
                          {struct ms} : res (Z * bitfield).
Admitted.

Inductive mode: Type :=
  | By_value: memory_chunk -> mode
  | By_reference: mode
  | By_copy: mode
  | By_nothing: mode.
Definition access_mode (ty: type) : mode.
Admitted.
Definition type_is_volatile (ty: type) : bool.
Admitted.
Fixpoint add_composite_definitions (env: composite_env) (defs: list composite_definition) : res composite_env.
Admitted.

Definition build_composite_env (defs: list composite_definition) :=
  add_composite_definitions (PTree.empty _) defs.

Set Implicit Arguments.

Section PROGRAMS.

Variable F: Type.

Inductive fundef : Type :=
  | Internal: F -> fundef
  | External: external_function -> list type -> type -> calling_convention -> fundef.

Record program : Type := {
  prog_defs: list (ident * globdef fundef type);
  prog_public: list ident;
  prog_main: ident;
  prog_types: list composite_definition;
  prog_comp_env: composite_env;
  prog_comp_env_eq: build_composite_env prog_types = OK prog_comp_env
}.
Definition program_of_program (p: program) : AST.program fundef type.
Admitted.

Coercion program_of_program: program >-> AST.program.

End PROGRAMS.

Arguments External {F} _ _ _ _.
Definition link_program {F:Type} (p1 p2: program F): option (program F).
Admitted.
Definition linkorder_program {F: Type} (p1 p2: program F) : Prop.
Admitted.

Global Program Instance Linker_program (F: Type): Linker (program F) := {
  link := link_program;
  linkorder := linkorder_program
}.
Admit Obligations.

End Ctypes.
Module Export compcert.
Module Export cfrontend.
Module Export Ctypes.
Include compcert_DOT_cfrontend_DOT_Ctypes_WRAPPED.Ctypes.
End Ctypes.

Declare ML Module "rocq-runtime.plugins.funind".
Definition block : Type.
exact (positive).
Defined.

Inductive val: Type :=
  | Vundef: val
  | Vint: int -> val
  | Vlong: int64 -> val
  | Vfloat: float -> val
  | Vsingle: float32 -> val
  | Vptr: block -> ptrofs -> val.

Definition Vnullptr :=
  if Archi.ptr64 then Vlong Int64.zero else Vint Int.zero.

Definition Vptrofs (n: ptrofs) :=
  if Archi.ptr64 then Vlong (Ptrofs.to_int64 n) else Vint (Ptrofs.to_int n).

Inductive quantity : Type := Q32 | Q64.

Inductive memval: Type :=
  | Undef: memval
  | Byte: byte -> memval
  | Fragment: val -> quantity -> nat -> memval.

Inductive permission: Type :=
  | Freeable: permission
  | Writable: permission
  | Readable: permission
  | Nonempty: permission.

Inductive perm_order: permission -> permission -> Prop :=
  | perm_refl:  forall p, perm_order p p
  | perm_F_any: forall p, perm_order Freeable p
  | perm_W_R:   perm_order Writable Readable
  | perm_any_N: forall p, perm_order p Nonempty.

Inductive perm_kind: Type :=
  | Max: perm_kind
  | Cur: perm_kind.

Module Type MEM.

End MEM.

Local Notation "a # b" := (PMap.get b a) (at level 1).

Module Mem <: MEM.

Definition perm_order'' (po1 po2: option permission) :=
  match po1, po2 with
  | Some p1, Some p2 => perm_order p1 p2
  | _, None => True
  | None, Some _ => False
 end.

Record mem' : Type := mkmem {
  mem_contents: PMap.t (ZMap.t memval);
  mem_access: PMap.t (Z -> perm_kind -> option permission);

  nextblock: block;
  access_max:
    forall b ofs, perm_order'' (mem_access#b ofs Max) (mem_access#b ofs Cur);
  nextblock_noaccess:
    forall b ofs k, ~(Plt b nextblock) -> mem_access#b ofs k = None;
  contents_default:
    forall b, fst mem_contents#b = Undef
}.

Definition mem := mem'.

Program Definition empty: mem :=
  mkmem (PMap.init (ZMap.init Undef))
        (PMap.init (fun ofs k => None))
        1%positive _ _ _.
Definition loadv (chunk: memory_chunk) (m: mem) (addr: val) : option val.
Admitted.

End Mem.

Notation mem := Mem.mem.

Inductive unary_operation : Type :=
  | Onotbool : unary_operation
  | Onotint : unary_operation
  | Oneg : unary_operation
  | Oabsfloat : unary_operation.

Inductive binary_operation : Type :=
  | Oadd : binary_operation
  | Osub : binary_operation
  | Omul : binary_operation
  | Odiv : binary_operation
  | Omod : binary_operation
  | Oand : binary_operation
  | Oor : binary_operation
  | Oxor : binary_operation
  | Oshl : binary_operation
  | Oshr : binary_operation
  | Oeq: binary_operation
  | One: binary_operation
  | Olt: binary_operation
  | Ogt: binary_operation
  | Ole: binary_operation
  | Oge: binary_operation.

Inductive incr_or_decr : Type := Incr | Decr.
Definition sem_cast (v: val) (t1 t2: type) (m: mem): option val.
Admitted.
Definition bool_val (v: val) (t: type) (m: mem) : option bool.
Admitted.
Definition sem_unary_operation
            (op: unary_operation) (v: val) (ty: type) (m: mem): option val.
Admitted.
Definition sem_binary_operation
    (cenv: composite_env)
    (op: binary_operation)
    (v1: val) (t1: type) (v2: val) (t2:type)
    (m: mem): option val.
Admitted.
Definition chunk_for_carrier (sz: intsize) : memory_chunk.
Admitted.
Definition bitsize_carrier (sz: intsize) : Z.
Admitted.
Definition bitfield_extract (sz: intsize) (sg: signedness) (pos width: Z) (c: int) : int.
Admitted.

Inductive load_bitfield: type -> intsize -> signedness -> Z -> Z -> mem -> val -> val -> Prop :=
  | load_bitfield_intro: forall sz sg1 attr sg pos width m addr c,
      0 <= pos -> 0 < width <= bitsize_intsize sz -> pos + width <= bitsize_carrier sz ->
      sg1 = (if zlt width (bitsize_intsize sz) then Signed else sg) ->
      Mem.loadv (chunk_for_carrier sz) m addr = Some (Vint c) ->
      load_bitfield (Tint sz sg1 attr) sz sg pos width m addr
                    (Vint (bitfield_extract sz sg pos width c)).

Module Export compcert_DOT_cfrontend_DOT_Csyntax_WRAPPED.
Module Export Csyntax.

Inductive expr : Type :=
  | Eval (v: val) (ty: type)
  | Evar (x: ident) (ty: type)
  | Efield (l: expr) (f: ident) (ty: type)

  | Evalof (l: expr) (ty: type)
  | Ederef (r: expr) (ty: type)
  | Eaddrof (l: expr) (ty: type)
  | Eunop (op: unary_operation) (r: expr) (ty: type)

  | Ebinop (op: binary_operation) (r1 r2: expr) (ty: type)

  | Ecast (r: expr) (ty: type)
  | Eseqand (r1 r2: expr) (ty: type)
  | Eseqor (r1 r2: expr) (ty: type)
  | Econdition (r1 r2 r3: expr) (ty: type)
  | Esizeof (ty': type) (ty: type)
  | Ealignof (ty': type) (ty: type)
  | Eassign (l: expr) (r: expr) (ty: type)
  | Eassignop (op: binary_operation) (l: expr) (r: expr) (tyres ty: type)

  | Epostincr (id: incr_or_decr) (l: expr) (ty: type)

  | Ecomma (r1 r2: expr) (ty: type)
  | Ecall (r1: expr) (rargs: exprlist) (ty: type)

  | Ebuiltin (ef: external_function) (tyargs: list type) (rargs: exprlist) (ty: type)

  | Eloc (b: block) (ofs: ptrofs) (bf: bitfield) (ty: type)

  | Eparen (r: expr) (tycast: type) (ty: type)

with exprlist : Type :=
  | Enil
  | Econs (r1: expr) (rl: exprlist).
Definition typeof (a: expr) : type.
Admitted.

Definition label := ident.

Inductive statement : Type :=
  | Sskip : statement
  | Sdo : expr -> statement
  | Ssequence : statement -> statement -> statement
  | Sifthenelse : expr  -> statement -> statement -> statement
  | Swhile : expr -> statement -> statement
  | Sdowhile : expr -> statement -> statement
  | Sfor: statement -> expr -> statement -> statement -> statement
  | Sbreak : statement
  | Scontinue : statement
  | Sreturn : option expr -> statement
  | Sswitch : expr -> labeled_statements -> statement
  | Slabel : label -> statement -> statement
  | Sgoto : label -> statement

with labeled_statements : Type :=
  | LSnil: labeled_statements
  | LScons: option Z -> statement -> labeled_statements -> labeled_statements.

Record function : Type := mkfunction {
  fn_return: type;
  fn_callconv: calling_convention;
  fn_params: list (ident * type);
  fn_vars: list (ident * type);
  fn_body: statement
}.

Definition fundef := Ctypes.fundef function.
Definition type_of_fundef (f: fundef) : type.
Admitted.

Definition program := Ctypes.program function.

End Csyntax.
Module Export compcert.
Module Export cfrontend.
Module Export Csyntax.
Include compcert_DOT_cfrontend_DOT_Csyntax_WRAPPED.Csyntax.
End Csyntax.
Import compcert.common.AST.

Set Implicit Arguments.

Module Export Senv.

Record t: Type := mksenv {

  find_symbol: ident -> option block;
  public_symbol: ident -> bool;
  invert_symbol: block -> option ident;
  block_is_volatile: block -> bool;
  nextblock: block;

  find_symbol_injective:
    forall id1 id2 b, find_symbol id1 = Some b -> find_symbol id2 = Some b -> id1 = id2;
  invert_find_symbol:
    forall id b, invert_symbol b = Some id -> find_symbol id = Some b;
  find_invert_symbol:
    forall id b, find_symbol id = Some b -> invert_symbol b = Some id;
  public_symbol_exists:
    forall id, public_symbol id = true -> exists b, find_symbol id = Some b;
  find_symbol_below:
    forall id b, find_symbol id = Some b -> Plt b nextblock;
  block_is_volatile_below:
    forall b, block_is_volatile b = true -> Plt b nextblock
}.

Module Export Genv.

Section GENV.

Variable F: Type.

Variable V: Type.

Record t: Type := mkgenv {
  genv_public: list ident;
  genv_symb: PTree.t block;
  genv_defs: PTree.t (globdef F V);
  genv_next: block;
  genv_symb_range: forall id b, PTree.get id genv_symb = Some b -> Plt b genv_next;
  genv_defs_range: forall b g, PTree.get b genv_defs = Some g -> Plt b genv_next;
  genv_vars_inj: forall id1 id2 b,
    PTree.get id1 genv_symb = Some b -> PTree.get id2 genv_symb = Some b -> id1 = id2
}.
Definition find_symbol (ge: t) (id: ident) : option block.
Admitted.
Definition symbol_address (ge: t) (id: ident) (ofs: ptrofs) : val.
Admitted.
Definition find_funct_ptr (ge: t) (b: block) : option F.
Admitted.
Definition add_globals (ge: t) (gl: list (ident * globdef F V)) : t.
Admitted.

Program Definition empty_genv (pub: list ident): t :=
  @mkgenv pub (PTree.empty _) (PTree.empty _) 1%positive _ _ _.

Definition globalenv (p: program F V) :=
  add_globals (empty_genv p.(prog_public)) p.(prog_defs).
Definition to_senv (ge: t) : Senv.t.
Admitted.

Section INITMEM.

Variable ge: t.
Fixpoint alloc_globals (m: mem) (gl: list (ident * globdef F V))
                       {struct gl} : option mem.
Admitted.

End INITMEM.

Definition init_mem (p: program F V) :=
  alloc_globals (globalenv p) Mem.empty p.(prog_defs).

End GENV.

End Genv.

Coercion Genv.to_senv: Genv.t >-> Senv.t.

Inductive eventval: Type :=
  | EVint: int -> eventval
  | EVlong: int64 -> eventval
  | EVfloat: float -> eventval
  | EVsingle: float32 -> eventval
  | EVptr_global: ident -> ptrofs -> eventval.

Inductive event: Type :=
  | Event_syscall: string -> list eventval -> eventval -> event
  | Event_vload: memory_chunk -> ident -> ptrofs -> eventval -> event
  | Event_vstore: memory_chunk -> ident -> ptrofs -> eventval -> event
  | Event_annot: string -> list eventval -> event.

Definition trace := list event.
Definition E0 : trace.
Admitted.
Definition Eapp (t1 t2: trace) : trace.
Admitted.

Infix "**" := Eapp (at level 60, right associativity).
Definition extcall_sem : Type.
exact (Senv.t -> list val -> mem -> trace -> val -> mem -> Prop).
Defined.
Definition external_call (ef: external_function): extcall_sem.
Admitted.

Section EVAL_BUILTIN_ARG.

Variable A: Type.
Variable ge: Senv.t.
Variable e: A -> val.
Variable sp: val.
Variable m: mem.
Definition eval_builtin_args (al: list (builtin_arg A)) (vl: list val) : Prop.
Admitted.

End EVAL_BUILTIN_ARG.
Module Export Smallstep.

Section CLOSURES.

Variable genv: Type.
Variable state: Type.

Variable step: genv -> state -> trace -> state -> Prop.

Inductive star (ge: genv): state -> trace -> state -> Prop :=
  | star_refl: forall s,
      star ge s E0 s
  | star_step: forall s1 t1 s2 t2 s3 t,
      step ge s1 t1 s2 -> star ge s2 t2 s3 -> t = t1 ** t2 ->
      star ge s1 t s3.

Inductive plus (ge: genv): state -> trace -> state -> Prop :=
  | plus_left: forall s1 t1 s2 t2 s3 t,
      step ge s1 t1 s2 -> star ge s2 t2 s3 -> t = t1 ** t2 ->
      plus ge s1 t s3.

End CLOSURES.

Record semantics : Type := Semantics_gen {
  state: Type;
  genvtype: Type;
  step : genvtype -> state -> trace -> state -> Prop;
  initial_state: state -> Prop;
  final_state: state -> int -> Prop;
  globalenv: genvtype;
  symbolenv: Senv.t
}.

Definition Semantics {state funtype vartype: Type}
                     (step: Genv.t funtype vartype -> state -> trace -> state -> Prop)
                     (initial_state: state -> Prop)
                     (final_state: state -> int -> Prop)
                     (globalenv: Genv.t funtype vartype) :=
  {| state := state;
     genvtype := Genv.t funtype vartype;
     step := step;
     initial_state := initial_state;
     final_state := final_state;
     globalenv := globalenv;
     symbolenv := Genv.to_senv globalenv |}.

Notation " 'Step' L " := (step L (globalenv L)) (at level 1) : smallstep_scope.
Notation " 'Star' L " := (star (step L) (globalenv L)) (at level 1) : smallstep_scope.
Notation " 'Plus' L " := (plus (step L) (globalenv L)) (at level 1) : smallstep_scope.
Open Scope smallstep_scope.

Record fsim_properties (L1 L2: semantics) (index: Type)
                       (order: index -> index -> Prop)
                       (match_states: index -> state L1 -> state L2 -> Prop) : Prop := {
    fsim_order_wf: well_founded order;
    fsim_match_initial_states:
      forall s1, initial_state L1 s1 ->
      exists i, exists s2, initial_state L2 s2 /\ match_states i s1 s2;
    fsim_match_final_states:
      forall i s1 s2 r,
      match_states i s1 s2 -> final_state L1 s1 r -> final_state L2 s2 r;
    fsim_simulation:
      forall s1 t s1', Step L1 s1 t s1' ->
      forall i s2, match_states i s1 s2 ->
      exists i', exists s2',
         (Plus L2 s2 t s2' \/ (Star L2 s2 t s2' /\ order i' i))
      /\ match_states i' s1' s2';
    fsim_public_preserved:
      forall id, Senv.public_symbol (symbolenv L2) id = Senv.public_symbol (symbolenv L1) id
  }.

Arguments fsim_properties: clear implicits.

Inductive forward_simulation (L1 L2: semantics) : Prop :=
  Forward_simulation (index: Type)
                     (order: index -> index -> Prop)
                     (match_states: index -> state L1 -> state L2 -> Prop)
                     (props: fsim_properties L1 L2 index order match_states).
Definition safe (L: semantics) (s: state L) : Prop.
Admitted.

Record bsim_properties (L1 L2: semantics) (index: Type)
                       (order: index -> index -> Prop)
                       (match_states: index -> state L1 -> state L2 -> Prop) : Prop := {
    bsim_order_wf: well_founded order;
    bsim_initial_states_exist:
      forall s1, initial_state L1 s1 -> exists s2, initial_state L2 s2;
    bsim_match_initial_states:
      forall s1 s2, initial_state L1 s1 -> initial_state L2 s2 ->
      exists i, exists s1', initial_state L1 s1' /\ match_states i s1' s2;
    bsim_match_final_states:
      forall i s1 s2 r,
      match_states i s1 s2 -> safe L1 s1 -> final_state L2 s2 r ->
      exists s1', Star L1 s1 E0 s1' /\ final_state L1 s1' r;
    bsim_progress:
      forall i s1 s2,
      match_states i s1 s2 -> safe L1 s1 ->
      (exists r, final_state L2 s2 r) \/
      (exists t, exists s2', Step L2 s2 t s2');
    bsim_simulation:
      forall s2 t s2', Step L2 s2 t s2' ->
      forall i s1, match_states i s1 s2 -> safe L1 s1 ->
      exists i', exists s1',
         (Plus L1 s1 t s1' \/ (Star L1 s1 t s1' /\ order i' i))
      /\ match_states i' s1' s2';
    bsim_public_preserved:
      forall id, Senv.public_symbol (symbolenv L2) id = Senv.public_symbol (symbolenv L1) id
  }.

Arguments bsim_properties: clear implicits.

Inductive backward_simulation (L1 L2: semantics) : Prop :=
  Backward_simulation (index: Type)
                      (order: index -> index -> Prop)
                      (match_states: index -> state L1 -> state L2 -> Prop)
                      (props: bsim_properties L1 L2 index order match_states).

Section ATOMIC.

Variable L: semantics.
Definition atomic : semantics.
Admitted.

End ATOMIC.

End Smallstep.
Import compcert.cfrontend.Ctypes.
Import compcert.cfrontend.Csyntax.

Record genv := { genv_genv :> Genv.t fundef type; genv_cenv :> composite_env }.

Definition globalenv (p: program) :=
  {| genv_genv := Genv.globalenv p; genv_cenv := p.(prog_comp_env) |}.

Definition env := PTree.t (block * type).

Section SEMANTICS.

Variable ge: genv.

Inductive cont: Type :=
  | Kstop: cont
  | Kdo: cont -> cont
  | Kseq: statement -> cont -> cont
  | Kifthenelse: statement -> statement -> cont -> cont
  | Kwhile1: expr -> statement -> cont -> cont
  | Kwhile2: expr -> statement -> cont -> cont
  | Kdowhile1: expr -> statement -> cont -> cont
  | Kdowhile2: expr -> statement -> cont -> cont
  | Kfor2: expr -> statement -> statement -> cont -> cont
  | Kfor3: expr -> statement -> statement -> cont -> cont
  | Kfor4: expr -> statement -> statement -> cont -> cont
  | Kswitch1: labeled_statements -> cont -> cont
  | Kswitch2: cont -> cont
  | Kreturn: cont -> cont
  | Kcall: function ->
           env ->
           (expr -> expr) ->
           type ->
           cont -> cont.

Inductive state: Type :=
  | State
      (f: function)
      (s: statement)
      (k: cont)
      (e: env)
      (m: mem) : state
  | ExprState
      (f: function)
      (r: expr)
      (k: cont)
      (e: env)
      (m: mem) : state
  | Callstate
      (fd: fundef)
      (args: list val)
      (k: cont)
      (m: mem) : state
  | Returnstate
      (res: val)
      (k: cont)
      (m: mem) : state
  | Stuckstate.
Definition step (S: state) (t: trace) (S': state) : Prop.
Admitted.

End SEMANTICS.

Inductive initial_state (p: program): state -> Prop :=
  | initial_state_intro: forall b f m0,
      let ge := globalenv p in
      Genv.init_mem p = Some m0 ->
      Genv.find_symbol ge p.(prog_main) = Some b ->
      Genv.find_funct_ptr ge b = Some f ->
      type_of_fundef f = Tfunction nil type_int32s cc_default ->
      initial_state p (Callstate f nil Kstop m0).

Inductive final_state: state -> int -> Prop :=
  | final_state_intro: forall r m,
      final_state (Returnstate (Vint r) Kstop m) r.
Module Export Cstrategy.

Definition semantics (p: program) :=
  let ge := globalenv p in
  Semantics_gen step (initial_state p) final_state ge ge.

Module Export compcert_DOT_cfrontend_DOT_Clight_WRAPPED.
Module Export Clight.

Inductive expr : Type :=
  | Econst_int: int -> type -> expr
  | Econst_float: float -> type -> expr
  | Econst_single: float32 -> type -> expr
  | Econst_long: int64 -> type -> expr
  | Evar: ident -> type -> expr
  | Etempvar: ident -> type -> expr
  | Ederef: expr -> type -> expr
  | Eaddrof: expr -> type -> expr
  | Eunop: unary_operation -> expr -> type -> expr
  | Ebinop: binary_operation -> expr -> expr -> type -> expr
  | Ecast: expr -> type -> expr
  | Efield: expr -> ident -> type -> expr
  | Esizeof: type -> type -> expr
  | Ealignof: type -> type -> expr.
Definition typeof (e: expr) : type.
Admitted.

Inductive statement : Type :=
  | Sskip : statement
  | Sassign : expr -> expr -> statement
  | Sset : ident -> expr -> statement
  | Scall: option ident -> expr -> list expr -> statement
  | Sbuiltin: option ident -> external_function -> list type -> list expr -> statement
  | Ssequence : statement -> statement -> statement
  | Sifthenelse : expr  -> statement -> statement -> statement
  | Sloop: statement -> statement -> statement
  | Sbreak : statement
  | Scontinue : statement
  | Sreturn : option expr -> statement
  | Sswitch : expr -> labeled_statements -> statement
  | Slabel : label -> statement -> statement
  | Sgoto : label -> statement

with labeled_statements : Type :=
  | LSnil: labeled_statements
  | LScons: option Z -> statement -> labeled_statements -> labeled_statements.

Record function : Type := mkfunction {
  fn_return: type;
  fn_callconv: calling_convention;
  fn_params: list (ident * type);
  fn_vars: list (ident * type);
  fn_temps: list (ident * type);
  fn_body: statement
}.

Definition fundef := Ctypes.fundef function.

Definition program := Ctypes.program function.

Definition temp_env := PTree.t val.

Inductive deref_loc (ty: type) (m: mem) (b: block) (ofs: ptrofs) :
                                             bitfield -> val -> Prop :=
  | deref_loc_value: forall chunk v,
      access_mode ty = By_value chunk ->
      Mem.loadv chunk m (Vptr b ofs) = Some v ->
      deref_loc ty m b ofs Full v
  | deref_loc_reference:
      access_mode ty = By_reference ->
      deref_loc ty m b ofs Full (Vptr b ofs)
  | deref_loc_copy:
      access_mode ty = By_copy ->
      deref_loc ty m b ofs Full (Vptr b ofs)
  | deref_loc_bitfield: forall sz sg pos width v,
      load_bitfield ty sz sg pos width m (Vptr b ofs) v ->
      deref_loc ty m b ofs (Bits sz sg pos width) v.

Section SEMANTICS.

Variable ge: genv.

Variable e: env.
Variable le: temp_env.
Variable m: mem.

Inductive eval_expr: expr -> val -> Prop :=
  | eval_Econst_int:   forall i ty,
      eval_expr (Econst_int i ty) (Vint i)
  | eval_Econst_float:   forall f ty,
      eval_expr (Econst_float f ty) (Vfloat f)
  | eval_Econst_single:   forall f ty,
      eval_expr (Econst_single f ty) (Vsingle f)
  | eval_Econst_long:   forall i ty,
      eval_expr (Econst_long i ty) (Vlong i)
  | eval_Etempvar:  forall id ty v,
      le!id = Some v ->
      eval_expr (Etempvar id ty) v
  | eval_Eaddrof: forall a ty loc ofs,
      eval_lvalue a loc ofs Full ->
      eval_expr (Eaddrof a ty) (Vptr loc ofs)
  | eval_Eunop:  forall op a ty v1 v,
      eval_expr a v1 ->
      sem_unary_operation op v1 (typeof a) m = Some v ->
      eval_expr (Eunop op a ty) v
  | eval_Ebinop: forall op a1 a2 ty v1 v2 v,
      eval_expr a1 v1 ->
      eval_expr a2 v2 ->
      sem_binary_operation ge op v1 (typeof a1) v2 (typeof a2) m = Some v ->
      eval_expr (Ebinop op a1 a2 ty) v
  | eval_Ecast:   forall a ty v1 v,
      eval_expr a v1 ->
      sem_cast v1 (typeof a) ty m = Some v ->
      eval_expr (Ecast a ty) v
  | eval_Esizeof: forall ty1 ty,
      eval_expr (Esizeof ty1 ty) (Vptrofs (Ptrofs.repr (sizeof ge ty1)))
  | eval_Ealignof: forall ty1 ty,
      eval_expr (Ealignof ty1 ty) (Vptrofs (Ptrofs.repr (alignof ge ty1)))
  | eval_Elvalue: forall a loc ofs bf v,
      eval_lvalue a loc ofs bf ->
      deref_loc (typeof a) m loc ofs bf v ->
      eval_expr a v

with eval_lvalue: expr -> block -> ptrofs -> bitfield -> Prop :=
  | eval_Evar_local:   forall id l ty,
      e!id = Some(l, ty) ->
      eval_lvalue (Evar id ty) l Ptrofs.zero Full
  | eval_Evar_global: forall id l ty,
      e!id = None ->
      Genv.find_symbol ge id = Some l ->
      eval_lvalue (Evar id ty) l Ptrofs.zero Full
  | eval_Ederef: forall a ty l ofs,
      eval_expr a (Vptr l ofs) ->
      eval_lvalue (Ederef a ty) l ofs Full
 | eval_Efield_struct:   forall a i ty l ofs id co att delta bf,
      eval_expr a (Vptr l ofs) ->
      typeof a = Tstruct id att ->
      ge.(genv_cenv)!id = Some co ->
      field_offset ge i (co_members co) = OK (delta, bf) ->
      eval_lvalue (Efield a i ty) l (Ptrofs.add ofs (Ptrofs.repr delta)) bf
 | eval_Efield_union:   forall a i ty l ofs id co att delta bf,
      eval_expr a (Vptr l ofs) ->
      typeof a = Tunion id att ->
      ge.(genv_cenv)!id = Some co ->
      union_field_offset ge i (co_members co) = OK (delta, bf) ->
      eval_lvalue (Efield a i ty) l (Ptrofs.add ofs (Ptrofs.repr delta)) bf.

End SEMANTICS.

End Clight.
Module Export compcert.
Module Export cfrontend.
Module Export Clight.
Include compcert_DOT_cfrontend_DOT_Clight_WRAPPED.Clight.
End Clight.
Definition makeseq (l: list statement) : statement.
Admitted.
Fixpoint eval_simpl_expr (a: expr) : option val.
Admitted.

Function makeif (a: expr) (s1 s2: statement) : statement :=
  match eval_simpl_expr a with
  | Some v =>
      match bool_val v (typeof a) Mem.empty with
      | Some b => if b then s1 else s2
      | None   => Sifthenelse a s1 s2
      end
  | None => Sifthenelse a s1 s2
  end.
Definition Ederef' (a: expr) (t: type) : expr.
Admitted.
Definition Eaddrof' (a: expr) (t: type) : expr.
Admitted.
Definition transl_incrdecr (id: incr_or_decr) (a: expr) (ty: type) : expr.
Admitted.
Definition make_set (bf: bitfield) (id: ident) (l: expr) : statement.
Admitted.
Definition make_assign (bf: bitfield) (l r: expr) : statement.
Admitted.
Definition make_assign_value (bf: bitfield) (r: expr): expr.
Admitted.

Inductive set_destination : Type :=
  | SDbase (tycast ty: type) (tmp: ident)
  | SDcons (tycast ty: type) (tmp: ident) (sd: set_destination).

Inductive destination : Type :=
  | For_val
  | For_effects
  | For_set (sd: set_destination).
Fixpoint do_set (sd: set_destination) (a: expr) : list statement.
Admitted.

Section SPEC.

Variable ce: composite_env.
Definition final (dst: destination) (a: expr) : list statement.
Admitted.
Definition tr_is_bitfield_access (l: expr) (bf: bitfield) : Prop.
Admitted.

Inductive tr_rvalof: type -> expr -> list statement -> expr -> list ident -> Prop :=
  | tr_rvalof_nonvol: forall ty a tmp,
      type_is_volatile ty = false ->
      tr_rvalof ty a nil a tmp
  | tr_rvalof_vol: forall ty a t bf tmp,
      type_is_volatile ty = true -> In t tmp ->
      tr_is_bitfield_access a bf ->
      tr_rvalof ty a (make_set bf t a :: nil) (Etempvar t ty) tmp.

Inductive tr_expr: temp_env -> destination -> Csyntax.expr -> list statement -> expr -> list ident -> Prop :=
  | tr_var: forall le dst id ty tmp,
      tr_expr le dst (Csyntax.Evar id ty)
              (final dst (Evar id ty)) (Evar id ty) tmp
  | tr_deref: forall le dst e1 ty sl1 a1 tmp,
      tr_expr le For_val e1 sl1 a1 tmp ->
      tr_expr le dst (Csyntax.Ederef e1 ty)
              (sl1 ++ final dst (Ederef' a1 ty)) (Ederef' a1 ty) tmp
  | tr_field: forall le dst e1 f ty sl1 a1 tmp,
      tr_expr le For_val e1 sl1 a1 tmp ->
      tr_expr le dst (Csyntax.Efield e1 f ty)
              (sl1 ++ final dst (Efield a1 f ty)) (Efield a1 f ty) tmp
  | tr_val_effect: forall le v ty any tmp,
      tr_expr le For_effects (Csyntax.Eval v ty) nil any tmp
  | tr_val_value: forall le v ty a tmp,
      typeof a = ty ->
      (forall tge e le' m,
         (forall id, In id tmp -> le'!id = le!id) ->
         eval_expr tge e le' m a v) ->
      tr_expr le For_val (Csyntax.Eval v ty)
                           nil a tmp
  | tr_val_set: forall le sd v ty a any tmp,
      typeof a = ty ->
      (forall tge e le' m,
         (forall id, In id tmp -> le'!id = le!id) ->
         eval_expr tge e le' m a v) ->
      tr_expr le (For_set sd) (Csyntax.Eval v ty)
                   (do_set sd a) any tmp
  | tr_sizeof: forall le dst ty' ty tmp,
      tr_expr le dst (Csyntax.Esizeof ty' ty)
                   (final dst (Esizeof ty' ty))
                   (Esizeof ty' ty) tmp
  | tr_alignof: forall le dst ty' ty tmp,
      tr_expr le dst (Csyntax.Ealignof ty' ty)
                   (final dst (Ealignof ty' ty))
                   (Ealignof ty' ty) tmp
  | tr_valof: forall le dst e1 ty tmp sl1 a1 tmp1 sl2 a2 tmp2,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_rvalof (Csyntax.typeof e1) a1 sl2 a2 tmp2 ->
      list_disjoint tmp1 tmp2 -> incl tmp1 tmp -> incl tmp2 tmp ->
      tr_expr le dst (Csyntax.Evalof e1 ty)
                    (sl1 ++ sl2 ++ final dst a2)
                    a2 tmp
  | tr_addrof: forall le dst e1 ty tmp sl1 a1,
      tr_expr le For_val e1 sl1 a1 tmp ->
      tr_expr le dst (Csyntax.Eaddrof e1 ty)
                   (sl1 ++ final dst (Eaddrof' a1 ty))
                   (Eaddrof' a1 ty) tmp
  | tr_unop: forall le dst op e1 ty tmp sl1 a1,
      tr_expr le For_val e1 sl1 a1 tmp ->
      tr_expr le dst (Csyntax.Eunop op e1 ty)
                   (sl1 ++ final dst (Eunop op a1 ty))
                   (Eunop op a1 ty) tmp
  | tr_binop: forall le dst op e1 e2 ty sl1 a1 tmp1 sl2 a2 tmp2 tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le For_val e2 sl2 a2 tmp2 ->
      list_disjoint tmp1 tmp2 -> incl tmp1 tmp -> incl tmp2 tmp ->
      tr_expr le dst (Csyntax.Ebinop op e1 e2 ty)
                   (sl1 ++ sl2 ++ final dst (Ebinop op a1 a2 ty))
                   (Ebinop op a1 a2 ty) tmp
  | tr_cast_effects: forall le e1 ty sl1 a1 any tmp,
      tr_expr le For_effects e1 sl1 a1 tmp ->
      tr_expr le For_effects (Csyntax.Ecast e1 ty)
                   sl1
                   any tmp
  | tr_cast_val: forall le dst e1 ty sl1 a1 tmp,
      tr_expr le For_val e1 sl1 a1 tmp ->
      tr_expr le dst (Csyntax.Ecast e1 ty)
                   (sl1 ++ final dst (Ecast a1 ty))
                   (Ecast a1 ty) tmp
  | tr_seqand_val: forall le e1 e2 ty sl1 a1 tmp1 t sl2 a2 tmp2 tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le (For_set (SDbase type_bool ty t)) e2 sl2 a2 tmp2 ->
      list_disjoint tmp1 tmp2 ->
      incl tmp1 tmp -> incl tmp2 tmp -> In t tmp ->
      tr_expr le For_val (Csyntax.Eseqand e1 e2 ty)
                    (sl1 ++ makeif a1 (makeseq sl2)
                                      (Sset t (Econst_int Int.zero ty)) :: nil)
                    (Etempvar t ty) tmp
  | tr_seqand_effects: forall le e1 e2 ty sl1 a1 tmp1 sl2 a2 tmp2 any tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le For_effects e2 sl2 a2 tmp2 ->
      list_disjoint tmp1 tmp2 ->
      incl tmp1 tmp -> incl tmp2 tmp ->
      tr_expr le For_effects (Csyntax.Eseqand e1 e2 ty)
                    (sl1 ++ makeif a1 (makeseq sl2) Sskip :: nil)
                    any tmp
  | tr_seqand_set: forall le sd e1 e2 ty sl1 a1 tmp1 t sl2 a2 tmp2 any tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le (For_set (SDcons type_bool ty t sd)) e2 sl2 a2 tmp2 ->
      list_disjoint tmp1 tmp2 ->
      incl tmp1 tmp -> incl tmp2 tmp -> In t tmp ->
      tr_expr le (For_set sd) (Csyntax.Eseqand e1 e2 ty)
                    (sl1 ++ makeif a1 (makeseq sl2)
                                      (makeseq (do_set sd (Econst_int Int.zero ty))) :: nil)
                    any tmp
  | tr_seqor_val: forall le e1 e2 ty sl1 a1 tmp1 t sl2 a2 tmp2 tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le (For_set (SDbase type_bool ty t)) e2 sl2 a2 tmp2 ->
      list_disjoint tmp1 tmp2 ->
      incl tmp1 tmp -> incl tmp2 tmp -> In t tmp ->
      tr_expr le For_val (Csyntax.Eseqor e1 e2 ty)
                    (sl1 ++ makeif a1 (Sset t (Econst_int Int.one ty))
                                      (makeseq sl2) :: nil)
                    (Etempvar t ty) tmp
  | tr_seqor_effects: forall le e1 e2 ty sl1 a1 tmp1 sl2 a2 tmp2 any tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le For_effects e2 sl2 a2 tmp2 ->
      list_disjoint tmp1 tmp2 ->
      incl tmp1 tmp -> incl tmp2 tmp ->
      tr_expr le For_effects (Csyntax.Eseqor e1 e2 ty)
                    (sl1 ++ makeif a1 Sskip (makeseq sl2) :: nil)
                    any tmp
  | tr_seqor_set: forall le sd e1 e2 ty sl1 a1 tmp1 t sl2 a2 tmp2 any tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le (For_set (SDcons type_bool ty t sd)) e2 sl2 a2 tmp2 ->
      list_disjoint tmp1 tmp2 ->
      incl tmp1 tmp -> incl tmp2 tmp -> In t tmp ->
      tr_expr le (For_set sd) (Csyntax.Eseqor e1 e2 ty)
                    (sl1 ++ makeif a1 (makeseq (do_set sd (Econst_int Int.one ty)))
                                      (makeseq sl2) :: nil)
                    any tmp
  | tr_condition_val: forall le e1 e2 e3 ty sl1 a1 tmp1 sl2 a2 tmp2 sl3 a3 tmp3 t tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le (For_set (SDbase ty ty t)) e2 sl2 a2 tmp2 ->
      tr_expr le (For_set (SDbase ty ty t)) e3 sl3 a3 tmp3 ->
      list_disjoint tmp1 tmp2 ->
      list_disjoint tmp1 tmp3 ->
      incl tmp1 tmp -> incl tmp2 tmp ->  incl tmp3 tmp -> In t tmp ->
      tr_expr le For_val (Csyntax.Econdition e1 e2 e3 ty)
                      (sl1 ++ makeif a1 (makeseq sl2) (makeseq sl3) :: nil)
                      (Etempvar t ty) tmp
  | tr_condition_effects: forall le e1 e2 e3 ty sl1 a1 tmp1 sl2 a2 tmp2 sl3 a3 tmp3 any tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le For_effects e2 sl2 a2 tmp2 ->
      tr_expr le For_effects e3 sl3 a3 tmp3 ->
      list_disjoint tmp1 tmp2 ->
      list_disjoint tmp1 tmp3 ->
      incl tmp1 tmp -> incl tmp2 tmp -> incl tmp3 tmp ->
      tr_expr le For_effects (Csyntax.Econdition e1 e2 e3 ty)
                       (sl1 ++ makeif a1 (makeseq sl2) (makeseq sl3) :: nil)
                       any tmp
  | tr_condition_set: forall le sd t e1 e2 e3 ty sl1 a1 tmp1 sl2 a2 tmp2 sl3 a3 tmp3 any tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le (For_set (SDcons ty ty t sd)) e2 sl2 a2 tmp2 ->
      tr_expr le (For_set (SDcons ty ty t sd)) e3 sl3 a3 tmp3 ->
      list_disjoint tmp1 tmp2 ->
      list_disjoint tmp1 tmp3 ->
      incl tmp1 tmp -> incl tmp2 tmp -> incl tmp3 tmp -> In t tmp ->
      tr_expr le (For_set sd) (Csyntax.Econdition e1 e2 e3 ty)
                       (sl1 ++ makeif a1 (makeseq sl2) (makeseq sl3) :: nil)
                       any tmp
  | tr_assign_effects: forall le e1 e2 ty sl1 a1 tmp1 sl2 a2 tmp2 bf any tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le For_val e2 sl2 a2 tmp2 ->
      list_disjoint tmp1 tmp2 ->
      incl tmp1 tmp -> incl tmp2 tmp ->
      tr_is_bitfield_access a1 bf ->
      tr_expr le For_effects (Csyntax.Eassign e1 e2 ty)
                      (sl1 ++ sl2 ++ make_assign bf a1 a2 :: nil)
                      any tmp
  | tr_assign_val: forall le dst e1 e2 ty sl1 a1 tmp1 sl2 a2 tmp2 t tmp ty1 ty2 bf,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le For_val e2 sl2 a2 tmp2 ->
      incl tmp1 tmp -> incl tmp2 tmp ->
      list_disjoint tmp1 tmp2 ->
      In t tmp -> ~In t tmp1 -> ~In t tmp2 ->
      ty1 = Csyntax.typeof e1 ->
      ty2 = Csyntax.typeof e2 ->
      tr_is_bitfield_access a1 bf ->
      tr_expr le dst (Csyntax.Eassign e1 e2 ty)
                   (sl1 ++ sl2 ++
                    Sset t (Ecast a2 ty1) ::
                    make_assign bf a1 (Etempvar t ty1) ::
                    final dst (make_assign_value bf (Etempvar t ty1)))
                   (make_assign_value bf (Etempvar t ty1)) tmp
  | tr_assignop_effects: forall le op e1 e2 tyres ty ty1 sl1 a1 tmp1 sl2 a2 tmp2 bf sl3 a3 tmp3 any tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le For_val e2 sl2 a2 tmp2 ->
      ty1 = Csyntax.typeof e1 ->
      tr_rvalof ty1 a1 sl3 a3 tmp3 ->
      list_disjoint tmp1 tmp2 -> list_disjoint tmp1 tmp3 -> list_disjoint tmp2 tmp3 ->
      incl tmp1 tmp -> incl tmp2 tmp -> incl tmp3 tmp ->
      tr_is_bitfield_access a1 bf ->
      tr_expr le For_effects (Csyntax.Eassignop op e1 e2 tyres ty)
                      (sl1 ++ sl2 ++ sl3 ++ make_assign bf a1 (Ebinop op a3 a2 tyres) :: nil)
                      any tmp
  | tr_assignop_val: forall le dst op e1 e2 tyres ty sl1 a1 tmp1 sl2 a2 tmp2 sl3 a3 tmp3 t bf tmp ty1,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le For_val e2 sl2 a2 tmp2 ->
      tr_rvalof ty1 a1 sl3 a3 tmp3 ->
      list_disjoint tmp1 tmp2 -> list_disjoint tmp1 tmp3 -> list_disjoint tmp2 tmp3 ->
      incl tmp1 tmp -> incl tmp2 tmp -> incl tmp3 tmp ->
      In t tmp -> ~In t tmp1 -> ~In t tmp2 -> ~In t tmp3 ->
      ty1 = Csyntax.typeof e1 ->
      tr_is_bitfield_access a1 bf ->
      tr_expr le dst (Csyntax.Eassignop op e1 e2 tyres ty)
                   (sl1 ++ sl2 ++ sl3 ++
                    Sset t (Ecast (Ebinop op a3 a2 tyres) ty1) ::
                    make_assign bf a1 (Etempvar t ty1) ::
                    final dst (make_assign_value bf (Etempvar t ty1)))
                   (make_assign_value bf (Etempvar t ty1)) tmp
  | tr_postincr_effects: forall le id e1 ty ty1 sl1 a1 tmp1 sl2 a2 tmp2 bf any tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_rvalof ty1 a1 sl2 a2 tmp2 ->
      ty1 = Csyntax.typeof e1 ->
      incl tmp1 tmp -> incl tmp2 tmp ->
      list_disjoint tmp1 tmp2 ->
      tr_is_bitfield_access a1 bf ->
      tr_expr le For_effects (Csyntax.Epostincr id e1 ty)
                      (sl1 ++ sl2 ++ make_assign bf a1 (transl_incrdecr id a2 ty1) :: nil)
                      any tmp
  | tr_postincr_val: forall le dst id e1 ty sl1 a1 tmp1 bf t ty1 tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      incl tmp1 tmp -> In t tmp -> ~In t tmp1 ->
      ty1 = Csyntax.typeof e1 ->
      tr_is_bitfield_access a1 bf ->
      tr_expr le dst (Csyntax.Epostincr id e1 ty)
                   (sl1 ++ make_set bf t a1 ::
                    make_assign bf a1 (transl_incrdecr id (Etempvar t ty1) ty1) ::
                    final dst (Etempvar t ty1))
                   (Etempvar t ty1) tmp
  | tr_comma: forall le dst e1 e2 ty sl1 a1 tmp1 sl2 a2 tmp2 tmp,
      tr_expr le For_effects e1 sl1 a1 tmp1 ->
      tr_expr le dst e2 sl2 a2 tmp2 ->
      list_disjoint tmp1 tmp2 ->
      incl tmp1 tmp -> incl tmp2 tmp ->
      tr_expr le dst (Csyntax.Ecomma e1 e2 ty) (sl1 ++ sl2) a2 tmp
  | tr_call_effects: forall le e1 el2 ty sl1 a1 tmp1 sl2 al2 tmp2 any tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_exprlist le el2 sl2 al2 tmp2 ->
      list_disjoint tmp1 tmp2 ->
      incl tmp1 tmp -> incl tmp2 tmp ->
      tr_expr le For_effects (Csyntax.Ecall e1 el2 ty)
                   (sl1 ++ sl2 ++ Scall None a1 al2 :: nil)
                   any tmp
  | tr_call_val: forall le dst e1 el2 ty sl1 a1 tmp1 sl2 al2 tmp2 t tmp,
      dst <> For_effects ->
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_exprlist le el2 sl2 al2 tmp2 ->
      list_disjoint tmp1 tmp2 -> In t tmp ->
      incl tmp1 tmp -> incl tmp2 tmp ->
      tr_expr le dst (Csyntax.Ecall e1 el2 ty)
                   (sl1 ++ sl2 ++ Scall (Some t) a1 al2 :: final dst (Etempvar t ty))
                   (Etempvar t ty) tmp
  | tr_builtin_effects: forall le ef tyargs el ty sl al tmp1 any tmp,
      tr_exprlist le el sl al tmp1 ->
      incl tmp1 tmp ->
      tr_expr le For_effects (Csyntax.Ebuiltin ef tyargs el ty)
                   (sl ++ Sbuiltin None ef tyargs al :: nil)
                   any tmp
  | tr_builtin_val: forall le dst ef tyargs el ty sl al tmp1 t tmp,
      dst <> For_effects ->
      tr_exprlist le el sl al tmp1 ->
      In t tmp -> incl tmp1 tmp ->
      tr_expr le dst (Csyntax.Ebuiltin ef tyargs el ty)
                   (sl ++ Sbuiltin (Some t) ef tyargs al :: final dst (Etempvar t ty))
                   (Etempvar t ty) tmp
  | tr_paren_val: forall le e1 tycast ty sl1 a1 t tmp,
      tr_expr le (For_set (SDbase tycast ty t)) e1 sl1 a1 tmp ->
      In t tmp ->
      tr_expr le For_val (Csyntax.Eparen e1 tycast ty)
                       sl1
                       (Etempvar t ty) tmp
  | tr_paren_effects: forall le e1 tycast ty sl1 a1 tmp any,
      tr_expr le For_effects e1 sl1 a1 tmp ->
      tr_expr le For_effects (Csyntax.Eparen e1 tycast ty) sl1 any tmp
  | tr_paren_set: forall le t sd e1 tycast ty sl1 a1 tmp any,
      tr_expr le (For_set (SDcons tycast ty t sd)) e1 sl1 a1 tmp ->
      In t tmp ->
      tr_expr le (For_set sd) (Csyntax.Eparen e1 tycast ty) sl1 any tmp

with tr_exprlist: temp_env -> Csyntax.exprlist -> list statement -> list expr -> list ident -> Prop :=
  | tr_nil: forall le tmp,
      tr_exprlist le Csyntax.Enil nil nil tmp
  | tr_cons: forall le e1 el2 sl1 a1 tmp1 sl2 al2 tmp2 tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_exprlist le el2 sl2 al2 tmp2 ->
      list_disjoint tmp1 tmp2 ->
      incl tmp1 tmp -> incl tmp2 tmp ->
      tr_exprlist le (Csyntax.Econs e1 el2) (sl1 ++ sl2) (a1 :: al2) tmp.

Section TR_TOP.

Variable ge: genv.
Variable e: env.
Variable le: temp_env.
Variable m: mem.

Inductive tr_top: destination -> Csyntax.expr -> list statement -> expr -> list ident -> Prop :=
  | tr_top_val_val: forall v ty a tmp,
      typeof a = ty -> eval_expr ge e le m a v ->
      tr_top For_val (Csyntax.Eval v ty) nil a tmp
  | tr_top_base: forall dst r sl a tmp,
      tr_expr le dst r sl a tmp ->
      tr_top dst r sl a tmp.

End TR_TOP.

Inductive tr_expression: Csyntax.expr -> statement -> expr -> Prop :=
  | tr_expression_intro: forall r sl a tmps,
      (forall ge e le m, tr_top ge e le m For_val r sl a tmps) ->
      tr_expression r (makeseq sl) a.

Inductive tr_expr_stmt: Csyntax.expr -> statement -> Prop :=
  | tr_expr_stmt_intro: forall r sl a tmps,
      (forall ge e le m, tr_top ge e le m For_effects r sl a tmps) ->
      tr_expr_stmt r (makeseq sl).

Inductive tr_if: Csyntax.expr -> statement -> statement -> statement -> Prop :=
  | tr_if_intro: forall r s1 s2 sl a tmps,
      (forall ge e le m, tr_top ge e le m For_val r sl a tmps) ->
      tr_if r s1 s2 (makeseq (sl ++ makeif a s1 s2 :: nil)).

Inductive tr_stmt: Csyntax.statement -> statement -> Prop :=
  | tr_skip:
      tr_stmt Csyntax.Sskip Sskip
  | tr_do: forall r s,
      tr_expr_stmt r s ->
      tr_stmt (Csyntax.Sdo r) s
  | tr_seq: forall s1 s2 ts1 ts2,
      tr_stmt s1 ts1 -> tr_stmt s2 ts2 ->
      tr_stmt (Csyntax.Ssequence s1 s2) (Ssequence ts1 ts2)
  | tr_ifthenelse_empty: forall r s' a,
      tr_expression r s' a ->
      tr_stmt (Csyntax.Sifthenelse r Csyntax.Sskip Csyntax.Sskip) (Ssequence s' Sskip)
  | tr_ifthenelse: forall r s1 s2 s' a ts1 ts2,
      tr_expression r s' a ->
      tr_stmt s1 ts1 -> tr_stmt s2 ts2 ->
      tr_stmt (Csyntax.Sifthenelse r s1 s2) (Ssequence s' (Sifthenelse a ts1 ts2))
  | tr_while: forall r s1 s' ts1,
      tr_if r Sskip Sbreak s' ->
      tr_stmt s1 ts1 ->
      tr_stmt (Csyntax.Swhile r s1)
              (Sloop (Ssequence s' ts1) Sskip)
  | tr_dowhile: forall r s1 s' ts1,
      tr_if r Sskip Sbreak s' ->
      tr_stmt s1 ts1 ->
      tr_stmt (Csyntax.Sdowhile r s1)
              (Sloop ts1 s')
  | tr_for_1: forall r s3 s4 s' ts3 ts4,
      tr_if r Sskip Sbreak s' ->
      tr_stmt s3 ts3 ->
      tr_stmt s4 ts4 ->
      tr_stmt (Csyntax.Sfor Csyntax.Sskip r s3 s4)
              (Sloop (Ssequence s' ts4) ts3)
  | tr_for_2: forall s1 r s3 s4 s' ts1 ts3 ts4,
      tr_if r Sskip Sbreak s' ->
      s1 <> Csyntax.Sskip ->
      tr_stmt s1 ts1 ->
      tr_stmt s3 ts3 ->
      tr_stmt s4 ts4 ->
      tr_stmt (Csyntax.Sfor s1 r s3 s4)
              (Ssequence ts1 (Sloop (Ssequence s' ts4) ts3))
  | tr_break:
      tr_stmt Csyntax.Sbreak Sbreak
  | tr_continue:
      tr_stmt Csyntax.Scontinue Scontinue
  | tr_return_none:
      tr_stmt (Csyntax.Sreturn None) (Sreturn None)
  | tr_return_some: forall r s' a,
      tr_expression r s' a ->
      tr_stmt (Csyntax.Sreturn (Some r)) (Ssequence s' (Sreturn (Some a)))
  | tr_switch: forall r ls s' a tls,
      tr_expression r s' a ->
      tr_lblstmts ls tls ->
      tr_stmt (Csyntax.Sswitch r ls) (Ssequence s' (Sswitch a tls))
  | tr_label: forall lbl s ts,
      tr_stmt s ts ->
      tr_stmt (Csyntax.Slabel lbl s) (Slabel lbl ts)
  | tr_goto: forall lbl,
      tr_stmt (Csyntax.Sgoto lbl) (Sgoto lbl)

with tr_lblstmts: Csyntax.labeled_statements -> labeled_statements -> Prop :=
  | tr_ls_nil:
      tr_lblstmts Csyntax.LSnil LSnil
  | tr_ls_cons: forall c s ls ts tls,
      tr_stmt s ts ->
      tr_lblstmts ls tls ->
      tr_lblstmts (Csyntax.LScons c s ls) (LScons c ts tls).

Inductive tr_function: Csyntax.function -> Clight.function -> Prop :=
  | tr_function_intro: forall f tf,
      tr_stmt f.(Csyntax.fn_body) tf.(fn_body) ->
      fn_return tf = Csyntax.fn_return f ->
      fn_callconv tf = Csyntax.fn_callconv f ->
      fn_params tf = Csyntax.fn_params f ->
      fn_vars tf = Csyntax.fn_vars f ->
      tr_function f tf.

End SPEC.

Inductive tr_fundef (p: Csyntax.program): Csyntax.fundef -> Clight.fundef -> Prop :=
  | tr_internal: forall f tf,
      tr_function p.(prog_comp_env) f tf ->
      tr_fundef p (Internal f) (Internal tf)
  | tr_external: forall ef targs tres cconv,
      tr_fundef p (External ef targs tres cconv) (External ef targs tres cconv).
Module Export SimplExprproof.

Definition match_prog (p: Csyntax.program) (tp: Clight.program) :=
    match_program_gen tr_fundef eq p p tp
 /\ prog_types tp = prog_types p.

Global Instance TransfSimplExprLink : TransfLink match_prog.
Admitted.
Module Export Compopts.

Parameter optim_tailcalls: unit -> bool.

Parameter optim_constprop: unit -> bool.

Parameter optim_CSE: unit -> bool.

Parameter optim_redundancy: unit -> bool.

Parameter debug: unit -> bool.
Import compcert.common.AST.

Inductive mreg: Type :=

  | AX | BX | CX | DX | SI | DI | BP
  | R8 | R9 | R10 | R11 | R12 | R13 | R14 | R15

  | X0 | X1 | X2 | X3 | X4 | X5 | X6 | X7
  | X8 | X9 | X10 | X11 | X12 | X13 | X14 | X15

  | FP0.

Module IndexedMreg <: INDEXED_TYPE.
Definition index (r: mreg): positive.
Admitted.
Definition destroyed_by_builtin (ef: external_function): list mreg.
Admitted.

Module Type MiniOrderedType.

  Parameter Inline t : Type.

  Parameter Inline eq : t -> t -> Prop.
  Parameter Inline lt : t -> t -> Prop.

End MiniOrderedType.

Module Type OrderedType.
  Include MiniOrderedType.

End OrderedType.

Module MOT_to_OT (Import O : MiniOrderedType) <: OrderedType.
  Include O.

End MOT_to_OT.

Module OrderedTypeFacts (Import O: OrderedType).

End OrderedTypeFacts.

Module OrderedPositive <: OrderedType.

Definition t := positive.
Definition eq (x y: t) := x = y.
Definition lt := Plt.

End OrderedPositive.

Module OrderedZ <: OrderedType.

Definition t := Z.
Definition eq (x y: t) := x = y.
Definition lt := Z.lt.

End OrderedZ.

Module OrderedInt <: OrderedType.

Definition t := int.
Definition eq (x y: t) := x = y.
Definition lt (x y: t) := Int.unsigned x < Int.unsigned y.

End OrderedInt.

Module OrderedIndexed(A: INDEXED_TYPE) <: OrderedType.

Definition t := A.t.
Definition eq (x y: t) := x = y.
Definition lt (x y: t) := Plt (A.index x) (A.index y).

End OrderedIndexed.

Module OrderedPair (A B: OrderedType) <: OrderedType.

Definition t := (A.t * B.t)%type.

Definition eq (x y: t) :=
  A.eq (fst x) (fst y) /\ B.eq (snd x) (snd y).

Definition lt (x y: t) :=
  A.lt (fst x) (fst y) \/
  (A.eq (fst x) (fst y) /\ B.lt (snd x) (snd y)).

End OrderedPair.

Inductive slot: Type :=
  | Local
  | Incoming
  | Outgoing.

Inductive loc : Type :=
  | R (r: mreg)
  | S (sl: slot) (pos: Z) (ty: typ).

Module IndexedTyp <: INDEXED_TYPE.
  Definition t := typ.
  Definition index (x: t) :=
    match x with
    | Tany32 => 1%positive
    | Tint => 2%positive
    | Tsingle => 3%positive
    | Tany64 => 4%positive
    | Tfloat => 5%positive
    | Tlong => 6%positive
    end.
End IndexedTyp.

Module OrderedTyp := OrderedIndexed(IndexedTyp).

Module IndexedSlot <: INDEXED_TYPE.
  Definition t := slot.
  Definition index (x: t) :=
    match x with Local => 1%positive | Incoming => 2%positive | Outgoing => 3%positive end.
End IndexedSlot.

Module OrderedSlot := OrderedIndexed(IndexedSlot).

Module OrderedLoc <: OrderedType.
  Definition t := loc.
  Definition eq (x y: t) := x = y.
  Definition lt (x y: t) :=
    match x, y with
    | R r1, R r2 => Plt (IndexedMreg.index r1) (IndexedMreg.index r2)
    | R _, S _ _ _ => True
    | S _ _ _, R _ => False
    | S sl1 ofs1 ty1, S sl2 ofs2 ty2 =>
        OrderedSlot.lt sl1 sl2 \/ (sl1 = sl2 /\
        (ofs1 < ofs2 \/ (ofs1 = ofs2 /\ OrderedTyp.lt ty1 ty2)))
    end.

End OrderedLoc.
Module Export SimplLocalsproof.
Import compcert.cfrontend.Clight.
Definition match_prog (p tp: program) : Prop.
Admitted.

Global Instance TransfSimplLocalsLink : TransfLink match_prog.
Admitted.

Module Export compcert_DOT_backend_DOT_Cminor_WRAPPED.
Module Export Cminor.

Inductive stmt : Type :=
  | Sskip: stmt
  | Sassign : ident -> expr -> stmt
  | Sstore : memory_chunk -> expr -> expr -> stmt
  | Scall : option ident -> signature -> expr -> list expr -> stmt
  | Stailcall: signature -> expr -> list expr -> stmt
  | Sbuiltin : option ident -> external_function -> list expr -> stmt
  | Sseq: stmt -> stmt -> stmt
  | Sifthenelse: expr -> stmt -> stmt -> stmt
  | Sloop: stmt -> stmt
  | Sblock: stmt -> stmt
  | Sexit: nat -> stmt
  | Sswitch: bool -> expr -> list (Z * nat) -> nat -> stmt
  | Sreturn: option expr -> stmt
  | Slabel: label -> stmt -> stmt
  | Sgoto: label -> stmt.

Record function : Type := mkfunction {
  fn_sig: signature;
  fn_params: list ident;
  fn_vars: list ident;
  fn_stackspace: Z;
  fn_body: stmt
}.

Definition fundef := AST.fundef function.
Definition program := AST.program fundef unit.

End Cminor.
Module Export compcert.
Module Export backend.
Module Export Cminor.
Include compcert_DOT_backend_DOT_Cminor_WRAPPED.Cminor.
End Cminor.
Module Export Csharpminor.

Record function : Type := mkfunction {
  fn_sig: signature;
  fn_params: list ident;
  fn_vars: list (ident * Z);
  fn_temps: list ident;
  fn_body: stmt
}.

Definition fundef := AST.fundef function.
Definition program : Type.
exact (AST.program fundef unit).
Defined.
Module Export Cshmgenproof.
Definition match_prog (p: Clight.program) (tp: Csharpminor.program) : Prop.
Admitted.

Global Instance TransfCshmgenLink : TransfLink match_prog.
Admitted.
Import compcert.backend.Cminor.
Definition transl_function (f: Csharpminor.function): res function.
Admitted.
Definition transl_fundef (f: Csharpminor.fundef): res fundef.
exact (transf_partial_fundef transl_function f).
Defined.
Module Export Cminorgenproof.

Definition match_prog (p: Csharpminor.program) (tp: Cminor.program) :=
  match_program (fun cu f tf => transl_fundef f = OK tf) eq p tp.
Module Export CminorSel.

Record function : Type := mkfunction {
  fn_sig: signature;
  fn_params: list ident;
  fn_vars: list ident;
  fn_stackspace: Z;
  fn_body: stmt
}.

Definition fundef := AST.fundef function.
Definition program := AST.program fundef unit.
Module Export Selectionproof.
Definition match_fundef (cunit: Cminor.program) (f: Cminor.fundef) (tf: CminorSel.fundef) : Prop.
Admitted.

Definition match_prog (p: Cminor.program) (tp: CminorSel.program) :=
  match_program match_fundef eq p tp.

Global Instance TransfSelectionLink : TransfLink match_prog.
Admitted.
Definition reg: Type.
exact (positive).
Defined.
Module Export RTL.

Definition node := positive.
Definition code: Type.
Admitted.

Record function: Type := mkfunction {
  fn_sig: signature;
  fn_params: list reg;
  fn_stacksize: Z;
  fn_code: code;
  fn_entrypoint: node
}.

Definition fundef := AST.fundef function.

Definition program := AST.program fundef unit.

Definition defmap := PTree.t (globdef fundef unit).
Definition transl_function (f: CminorSel.function) : Errors.res RTL.function.
Admitted.

Definition transl_fundef := transf_partial_fundef transl_function.
Module Export RTLgenproof.

Definition match_prog (p: CminorSel.program) (tp: RTL.program) :=
  match_program (fun cu f tf => transl_fundef f = Errors.OK tf) eq p tp.
Definition transf_function (f: function) : function.
Admitted.
Definition transf_fundef (fd: fundef) : fundef.
exact (AST.transf_fundef transf_function fd).
Defined.
Module Export Tailcallproof.

Definition match_prog (p tp: RTL.program) :=
  match_program (fun cu f tf => tf = transf_fundef f) eq p tp.
Definition funenv : Type.
Admitted.
Definition funenv_program (p: program) : funenv.
Admitted.
Definition transf_function (fenv: funenv) (f: function) : Errors.res function.
Admitted.
Definition transf_fundef (fenv: funenv) (fd: fundef) : Errors.res fundef.
exact (AST.transf_partial_fundef (transf_function fenv) fd).
Defined.
Module Export Inliningproof.

Definition match_prog (prog tprog: program) :=
  match_program (fun cunit f tf => transf_fundef (funenv_program cunit) f = OK tf) eq prog tprog.
Definition transf_function (f: function) : function.
Admitted.
Definition transf_fundef (fd: fundef) : fundef.
exact (AST.transf_fundef transf_function fd).
Defined.
Module Export Renumberproof.

Definition match_prog (p tp: RTL.program) :=
  match_program (fun ctx f tf => tf = transf_fundef f) eq p tp.

Inductive aptr : Type :=
  | Pbot
  | Gl (id: ident) (ofs: ptrofs)
  | Glo (id: ident)
  | Glob
  | Stk (ofs: ptrofs)
  | Stack
  | Nonstack
  | Ptop.

Inductive aval : Type :=
  | Vbot
  | I (n: int)
  | IU (n: int)
  | Uns (p: aptr) (n: Z)
  | Sgn (p: aptr) (n: Z)
  | L (n: int64)
  | F (f: float)
  | FS (f: float32)
  | Num (p: aptr)
  | Ptr (p: aptr)
  | Ifptr (p: aptr).

Inductive acontent : Type :=
 | ACval (chunk: memory_chunk) (av: aval).

Record ablock : Type := ABlock {
  ab_contents: ZTree.t acontent;
  ab_summary: aptr
}.

Definition romem := PTree.t ablock.
Definition romem_for (p: program) : romem.
Admitted.
Definition transf_function (rm: romem) (f: function) : function.
Admitted.
Definition transf_fundef (rm: romem) (fd: fundef) : fundef.
exact (AST.transf_fundef (transf_function rm) fd).
Defined.
Module Export Constpropproof.

Definition match_prog (prog tprog: program) :=
  match_program (fun cu f tf => tf = transf_fundef (romem_for cu) f) eq prog tprog.
Definition transf_function (dm: defmap) (rm: romem) (f: function) : res function.
Admitted.
Definition transf_fundef (dm: defmap) (rm: romem) (f: fundef) : res fundef.
exact (AST.transf_partial_fundef (transf_function dm rm) f).
Defined.
Module Export CSEproof.

Definition match_prog (prog tprog: RTL.program) :=
  match_program (fun cu f tf => transf_fundef (prog_defmap cu) (romem_for cu) f = OK tf) eq prog tprog.
Module Export Deadcodeproof.

Definition match_prog (prog tprog: RTL.program) :=
  match_program (fun cu f tf => transf_fundef (prog_defmap cu) (romem_for cu) f = OK tf) eq prog tprog.
Module Export Unusedglobproof.
Definition match_prog (p tp: program) : Prop.
Admitted.
Global Instance TransfSelectionLink : TransfLink match_prog.
Admitted.

Module Export compcert_DOT_backend_DOT_LTL_WRAPPED.
Module Export LTL.

Record function: Type := mkfunction {
  fn_sig: signature;
  fn_stacksize: Z;
  fn_code: code;
  fn_entrypoint: node
}.

Definition fundef := AST.fundef function.

Definition program := AST.program fundef unit.

End LTL.
Module Export compcert.
Module Export backend.
Module Export LTL.
Include compcert_DOT_backend_DOT_LTL_WRAPPED.LTL.
End LTL.

Inductive equation_kind : Type := Full | Low | High.

Record equation := Eq {
  ekind: equation_kind;
  ereg: reg;
  eloc: loc
}.

Module IndexedEqKind <: INDEXED_TYPE.
  Definition t := equation_kind.
  Definition index (x: t) :=
    match x with Full => 1%positive | Low => 2%positive | High => 3%positive end.
End IndexedEqKind.

Module OrderedEqKind := OrderedIndexed(IndexedEqKind).

Module OrderedEquation <: OrderedType.
  Definition t := equation.
  Definition eq (x y: t) := x = y.
  Definition lt (x y: t) :=
    Plt (ereg x) (ereg y) \/ (ereg x = ereg y /\
    (OrderedLoc.lt (eloc x) (eloc y) \/ (eloc x = eloc y /\
    OrderedEqKind.lt (ekind x) (ekind y)))).
End OrderedEquation.

Module OrderedEquation' <: OrderedType.
  Definition t := equation.
  Definition eq (x y: t) := x = y.
  Definition lt (x y: t) :=
    OrderedLoc.lt (eloc x) (eloc y) \/ (eloc x = eloc y /\
    (Plt (ereg x) (ereg y) \/ (ereg x = ereg y /\
    OrderedEqKind.lt (ekind x) (ekind y)))).
End OrderedEquation'.
Definition transf_function (f: RTL.function) : res LTL.function.
Admitted.
Definition transf_fundef (fd: RTL.fundef) : res LTL.fundef.
exact (AST.transf_partial_fundef transf_function fd).
Defined.
Module Export Allocproof.

Definition match_prog (p: RTL.program) (tp: LTL.program) :=
  match_program (fun _ f tf => transf_fundef f = OK tf) eq p tp.
Import compcert.common.AST.
Import compcert.backend.LTL.
Definition tunnel_function (f: LTL.function) : LTL.function.
Admitted.
Definition tunnel_fundef (f: LTL.fundef) : LTL.fundef.
exact (transf_fundef tunnel_function f).
Defined.
Module Export Tunnelingproof.

Definition match_prog (p tp: program) :=
  match_program (fun ctx f tf => tf = tunnel_fundef f) eq p tp.
Module Export Linear.

Record function: Type := mkfunction {
  fn_sig: signature;
  fn_stacksize: Z;
  fn_code: code
}.

Definition fundef := AST.fundef function.

Definition program := AST.program fundef unit.
Definition transf_function (f: LTL.function) : res Linear.function.
Admitted.
Definition transf_fundef (f: LTL.fundef) : res Linear.fundef.
exact (AST.transf_partial_fundef transf_function f).
Defined.
Module Export Linearizeproof.

Definition match_prog (p: LTL.program) (tp: Linear.program) :=
  match_program (fun ctx f tf => transf_fundef f = OK tf) eq p tp.
Definition transf_function (f: function) : function.
Admitted.
Definition transf_fundef (f: fundef) : fundef.
exact (AST.transf_fundef transf_function f).
Defined.
Module Export CleanupLabelsproof.

Definition match_prog (p tp: Linear.program) :=
  match_program (fun ctx f tf => tf = transf_fundef f) eq p tp.
Definition transf_function (f: function) : res function.
Admitted.
Definition transf_fundef (fd: fundef) : res fundef.
exact (AST.transf_partial_fundef transf_function fd).
Defined.
Module Export Debugvarproof.

Definition match_prog (p tp: program) :=
  match_program (fun _ f tf => transf_fundef f = OK tf) eq p tp.
Module Export Mach.

Record function: Type := mkfunction
  { fn_sig: signature;
    fn_code: code;
    fn_stacksize: Z;
    fn_link_ofs: ptrofs;
    fn_retaddr_ofs: ptrofs }.

Definition fundef := AST.fundef function.

Definition program := AST.program fundef unit.
Definition transf_function (f: Linear.function) : res Mach.function.
Admitted.
Definition transf_fundef (f: Linear.fundef) : res Mach.fundef.
exact (AST.transf_partial_fundef transf_function f).
Defined.
Module Export Stackingproof.

Definition match_prog (p: Linear.program) (tp: Mach.program) :=
  match_program (fun _ f tf => transf_fundef f = OK tf) eq p tp.
Module Export Asm.

Inductive ireg: Type :=
  | RAX | RBX | RCX | RDX | RSI | RDI | RBP | RSP
  | R8  | R9  | R10 | R11 | R12 | R13 | R14 | R15.

Inductive freg: Type :=
  | XMM0  | XMM1  | XMM2  | XMM3  | XMM4  | XMM5  | XMM6  | XMM7
  | XMM8  | XMM9  | XMM10 | XMM11 | XMM12 | XMM13 | XMM14 | XMM15.

Inductive crbit: Type :=
  | ZF | CF | PF | SF | OF.

Inductive preg: Type :=
  | PC: preg
  | IR: ireg -> preg
  | FR: freg -> preg
  | ST0: preg
  | CR: crbit -> preg
  | RA: preg.

Coercion IR: ireg >-> preg.

Inductive addrmode: Type :=
  | Addrmode (base: option ireg)
             (ofs: option (ireg * Z))
             (const: Z + ident * ptrofs).

Inductive testcond: Type :=
  | Cond_e | Cond_ne
  | Cond_b | Cond_be | Cond_ae | Cond_a
  | Cond_l | Cond_le | Cond_ge | Cond_g
  | Cond_p | Cond_np.

Inductive instruction: Type :=

  | Pmov_rr (rd: ireg) (r1: ireg)
  | Pmovl_ri (rd: ireg) (n: int)
  | Pmovq_ri (rd: ireg) (n: int64)
  | Pmov_rs (rd: ireg) (id: ident)
  | Pmovl_rm (rd: ireg) (a: addrmode)
  | Pmovq_rm (rd: ireg) (a: addrmode)
  | Pmovl_mr (a: addrmode) (rs: ireg)
  | Pmovq_mr (a: addrmode) (rs: ireg)
  | Pmovsd_ff (rd: freg) (r1: freg)
  | Pmovsd_fi (rd: freg) (n: float)
  | Pmovsd_fm (rd: freg) (a: addrmode)
  | Pmovsd_mf (a: addrmode) (r1: freg)
  | Pmovss_fi (rd: freg) (n: float32)
  | Pmovss_fm (rd: freg) (a: addrmode)
  | Pmovss_mf (a: addrmode) (r1: freg)
  | Pfldl_m (a: addrmode)
  | Pfstpl_m (a: addrmode)
  | Pflds_m (a: addrmode)
  | Pfstps_m (a: addrmode)

  | Pmovb_mr (a: addrmode) (rs: ireg)
  | Pmovw_mr (a: addrmode) (rs: ireg)
  | Pmovzb_rr (rd: ireg) (rs: ireg)
  | Pmovzb_rm (rd: ireg) (a: addrmode)
  | Pmovsb_rr (rd: ireg) (rs: ireg)
  | Pmovsb_rm (rd: ireg) (a: addrmode)
  | Pmovzw_rr (rd: ireg) (rs: ireg)
  | Pmovzw_rm (rd: ireg) (a: addrmode)
  | Pmovsw_rr (rd: ireg) (rs: ireg)
  | Pmovsw_rm (rd: ireg) (a: addrmode)
  | Pmovzl_rr (rd: ireg) (rs: ireg)
  | Pmovsl_rr (rd: ireg) (rs: ireg)
  | Pmovls_rr (rd: ireg)
  | Pcvtsd2ss_ff (rd: freg) (r1: freg)
  | Pcvtss2sd_ff (rd: freg) (r1: freg)
  | Pcvttsd2si_rf (rd: ireg) (r1: freg)
  | Pcvtsi2sd_fr (rd: freg) (r1: ireg)
  | Pcvttss2si_rf (rd: ireg) (r1: freg)
  | Pcvtsi2ss_fr (rd: freg) (r1: ireg)
  | Pcvttsd2sl_rf (rd: ireg) (r1: freg)
  | Pcvtsl2sd_fr (rd: freg) (r1: ireg)
  | Pcvttss2sl_rf (rd: ireg) (r1: freg)
  | Pcvtsl2ss_fr (rd: freg) (r1: ireg)

  | Pleal (rd: ireg) (a: addrmode)
  | Pleaq (rd: ireg) (a: addrmode)
  | Pnegl (rd: ireg)
  | Pnegq (rd: ireg)
  | Paddl_ri (rd: ireg) (n: int)
  | Paddq_ri (rd: ireg) (n: int64)
  | Psubl_rr (rd: ireg) (r1: ireg)
  | Psubq_rr (rd: ireg) (r1: ireg)
  | Pimull_rr (rd: ireg) (r1: ireg)
  | Pimulq_rr (rd: ireg) (r1: ireg)
  | Pimull_ri (rd: ireg) (n: int)
  | Pimulq_ri (rd: ireg) (n: int64)
  | Pimull_r (r1: ireg)
  | Pimulq_r (r1: ireg)
  | Pmull_r (r1: ireg)
  | Pmulq_r (r1: ireg)
  | Pcltd
  | Pcqto
  | Pdivl (r1: ireg)
  | Pdivq (r1: ireg)
  | Pidivl (r1: ireg)
  | Pidivq (r1: ireg)
  | Pandl_rr (rd: ireg) (r1: ireg)
  | Pandq_rr (rd: ireg) (r1: ireg)
  | Pandl_ri (rd: ireg) (n: int)
  | Pandq_ri (rd: ireg) (n: int64)
  | Porl_rr (rd: ireg) (r1: ireg)
  | Porq_rr (rd: ireg) (r1: ireg)
  | Porl_ri (rd: ireg) (n: int)
  | Porq_ri (rd: ireg) (n: int64)
  | Pxorl_r (rd: ireg)
  | Pxorq_r (rd: ireg)
  | Pxorl_rr (rd: ireg) (r1: ireg)
  | Pxorq_rr (rd: ireg) (r1: ireg)
  | Pxorl_ri (rd: ireg) (n: int)
  | Pxorq_ri (rd: ireg) (n: int64)
  | Pnotl (rd: ireg)
  | Pnotq (rd: ireg)
  | Psall_rcl (rd: ireg)
  | Psalq_rcl (rd: ireg)
  | Psall_ri (rd: ireg) (n: int)
  | Psalq_ri (rd: ireg) (n: int)
  | Pshrl_rcl (rd: ireg)
  | Pshrq_rcl (rd: ireg)
  | Pshrl_ri (rd: ireg) (n: int)
  | Pshrq_ri (rd: ireg) (n: int)
  | Psarl_rcl (rd: ireg)
  | Psarq_rcl (rd: ireg)
  | Psarl_ri (rd: ireg) (n: int)
  | Psarq_ri (rd: ireg) (n: int)
  | Pshld_ri (rd: ireg) (r1: ireg) (n: int)
  | Prorl_ri (rd: ireg) (n: int)
  | Prorq_ri (rd: ireg) (n: int)
  | Pcmpl_rr (r1 r2: ireg)
  | Pcmpq_rr (r1 r2: ireg)
  | Pcmpl_ri (r1: ireg) (n: int)
  | Pcmpq_ri (r1: ireg) (n: int64)
  | Ptestl_rr (r1 r2: ireg)
  | Ptestq_rr (r1 r2: ireg)
  | Ptestl_ri (r1: ireg) (n: int)
  | Ptestq_ri (r1: ireg) (n: int64)
  | Pcmov (c: testcond) (rd: ireg) (r1: ireg)
  | Psetcc (c: testcond) (rd: ireg)

  | Paddd_ff (rd: freg) (r1: freg)
  | Psubd_ff (rd: freg) (r1: freg)
  | Pmuld_ff (rd: freg) (r1: freg)
  | Pdivd_ff (rd: freg) (r1: freg)
  | Pnegd (rd: freg)
  | Pabsd (rd: freg)
  | Pcomisd_ff (r1 r2: freg)
  | Pxorpd_f (rd: freg)
  | Padds_ff (rd: freg) (r1: freg)
  | Psubs_ff (rd: freg) (r1: freg)
  | Pmuls_ff (rd: freg) (r1: freg)
  | Pdivs_ff (rd: freg) (r1: freg)
  | Pnegs (rd: freg)
  | Pabss (rd: freg)
  | Pcomiss_ff (r1 r2: freg)
  | Pxorps_f (rd: freg)

  | Pjmp_l (l: label)
  | Pjmp_s (symb: ident) (sg: signature)
  | Pjmp_r (r: ireg) (sg: signature)
  | Pjcc (c: testcond)(l: label)
  | Pjcc2 (c1 c2: testcond)(l: label)
  | Pjmptbl (r: ireg) (tbl: list label)
  | Pcall_s (symb: ident) (sg: signature)
  | Pcall_r (r: ireg) (sg: signature)
  | Pret

  | Pmov_rm_a (rd: ireg) (a: addrmode)
  | Pmov_mr_a (a: addrmode) (rs: ireg)
  | Pmovsd_fm_a (rd: freg) (a: addrmode)
  | Pmovsd_mf_a (a: addrmode) (r1: freg)

  | Plabel(l: label)
  | Pallocframe(sz: Z)(ofs_ra ofs_link: ptrofs)
  | Pfreeframe(sz: Z)(ofs_ra ofs_link: ptrofs)
  | Pbuiltin(ef: external_function)(args: list (builtin_arg preg))(res: builtin_res preg)

  | Padcl_ri (rd: ireg) (n: int)
  | Padcl_rr (rd: ireg) (r2: ireg)
  | Paddl_mi (a: addrmode) (n: int)
  | Paddl_rr (rd: ireg) (r2: ireg)
  | Pbsfl (rd: ireg) (r1: ireg)
  | Pbsfq (rd: ireg) (r1: ireg)
  | Pbsrl (rd: ireg) (r1: ireg)
  | Pbsrq (rd: ireg) (r1: ireg)
  | Pbswap64 (rd: ireg)
  | Pbswap32 (rd: ireg)
  | Pbswap16 (rd: ireg)
  | Pcfi_adjust (n: int)
  | Pfmadd132 (rd: freg) (r2: freg) (r3: freg)
  | Pfmadd213 (rd: freg) (r2: freg) (r3: freg)
  | Pfmadd231 (rd: freg) (r2: freg) (r3: freg)
  | Pfmsub132 (rd: freg) (r2: freg) (r3: freg)
  | Pfmsub213 (rd: freg) (r2: freg) (r3: freg)
  | Pfmsub231 (rd: freg) (r2: freg) (r3: freg)
  | Pfnmadd132 (rd: freg) (r2: freg) (r3: freg)
  | Pfnmadd213 (rd: freg) (r2: freg) (r3: freg)
  | Pfnmadd231 (rd: freg) (r2: freg) (r3: freg)
  | Pfnmsub132 (rd: freg) (r2: freg) (r3: freg)
  | Pfnmsub213 (rd: freg) (r2: freg) (r3: freg)
  | Pfnmsub231 (rd: freg) (r2: freg) (r3: freg)
  | Pmaxsd (rd: freg) (r2: freg)
  | Pminsd (rd: freg) (r2: freg)
  | Pmovb_rm (rd: ireg) (a: addrmode)
  | Pmovq_rf (rd: ireg) (r1: freg)
  | Pmovsq_mr  (a: addrmode) (rs: freg)
  | Pmovsq_rm (rd: freg) (a: addrmode)
  | Pmovsb
  | Pmovsw
  | Pmovw_rm (rd: ireg) (ad: addrmode)
  | Pnop
  | Prep_movsl
  | Psbbl_rr (rd: ireg) (r2: ireg)
  | Psqrtsd (rd: freg) (r1: freg)
  | Psubl_ri (rd: ireg) (n: int)
  | Psubq_ri (rd: ireg) (n: int64).
Record function : Type := mkfunction { fn_sig: signature; fn_code: code }.
Definition fundef := AST.fundef function.
Definition program := AST.program fundef unit.

Lemma preg_eq: forall (x y: preg), {x=y} + {x<>y}.
Admitted.

Module PregEq.
  Definition t := preg.
  Definition eq := preg_eq.
End PregEq.

Module Pregmap := EMap(PregEq).

Definition regset := Pregmap.t val.
Definition genv := Genv.t fundef unit.
Notation "a # b" := (a b) (at level 1, only parsing) : asm.
Notation "a # b <- c" := (Pregmap.set b c a) (at level 1, b at next level) : asm.

Open Scope asm.
Fixpoint undef_regs (l: list preg) (rs: regset) : regset.
Admitted.
Definition set_pair (p: rpair preg) (v: val) (rs: regset) : regset.
Admitted.
Fixpoint set_res (res: builtin_res preg) (v: val) (rs: regset) : regset.
Admitted.

Section RELSEM.
Fixpoint find_instr (pos: Z) (c: code) {struct c} : option instruction.
Admitted.

Variable ge: genv.

Inductive outcome: Type :=
  | Next: regset -> mem -> outcome
  | Stuck: outcome.
Definition nextinstr_nf (rs: regset) : regset.
Admitted.
Definition exec_instr (f: function) (i: instruction) (rs: regset) (m: mem) : outcome.
Admitted.
Definition preg_of (r: mreg) : preg.
Admitted.
Definition undef_caller_save_regs (rs: regset) : regset.
Admitted.
Definition extcall_arguments
    (rs: regset) (m: mem) (sg: signature) (args: list val) : Prop.
Admitted.
Definition loc_external_result (sg: signature) : rpair preg.
Admitted.

Inductive state: Type :=
  | State: regset -> mem -> state.

Inductive step: state -> trace -> state -> Prop :=
  | exec_step_internal:
      forall b ofs f i rs m rs' m',
      rs PC = Vptr b ofs ->
      Genv.find_funct_ptr ge b = Some (Internal f) ->
      find_instr (Ptrofs.unsigned ofs) f.(fn_code) = Some i ->
      exec_instr f i rs m = Next rs' m' ->
      step (State rs m) E0 (State rs' m')
  | exec_step_builtin:
      forall b ofs f ef args res rs m vargs t vres rs' m',
      rs PC = Vptr b ofs ->
      Genv.find_funct_ptr ge b = Some (Internal f) ->
      find_instr (Ptrofs.unsigned ofs) f.(fn_code) = Some (Pbuiltin ef args res) ->
      eval_builtin_args ge rs (rs RSP) m args vargs ->
      external_call ef ge vargs m t vres m' ->
      rs' = nextinstr_nf
             (set_res res vres
               (undef_regs (map preg_of (destroyed_by_builtin ef)) rs)) ->
      step (State rs m) t (State rs' m')
  | exec_step_external:
      forall b ef args res rs m t rs' m',
      rs PC = Vptr b Ptrofs.zero ->
      Genv.find_funct_ptr ge b = Some (External ef) ->
      extcall_arguments rs m (ef_sig ef) args ->
      external_call ef ge args m t res m' ->
      rs' = (set_pair (loc_external_result (ef_sig ef)) res (undef_caller_save_regs rs)) #PC <- (rs RA) ->
      step (State rs m) t (State rs' m').

End RELSEM.

Inductive initial_state (p: program): state -> Prop :=
  | initial_state_intro: forall m0,
      Genv.init_mem p = Some m0 ->
      let ge := Genv.globalenv p in
      let rs0 :=
        (Pregmap.init Vundef)
        # PC <- (Genv.symbol_address ge p.(prog_main) Ptrofs.zero)
        # RA <- Vnullptr
        # RSP <- Vnullptr in
      initial_state p (State rs0 m0).

Inductive final_state: state -> int -> Prop :=
  | final_state_intro: forall rs m r,
      rs#PC = Vnullptr ->
      rs#RAX = Vint r ->
      final_state (State rs m) r.

Definition semantics (p: program) :=
  Semantics step (initial_state p) final_state (Genv.globalenv p).
Definition transf_function (f: Mach.function) : res Asm.function.
Admitted.
Definition transf_fundef (f: Mach.fundef) : res Asm.fundef.
exact (transf_partial_fundef transf_function f).
Defined.
Module Export Asmgenproof.

Definition match_prog (p: Mach.program) (tp: Asm.program) :=
  match_program (fun _ f tf => transf_fundef f = OK tf) eq p tp.

End Asmgenproof.
Definition match_if {A: Type} (flag: unit -> bool) (R: A -> A -> Prop): A -> A -> Prop.
Admitted.

Global Instance TransfIfLink {A: Type} {LA: Linker A}
                      (flag: unit -> bool) (transf: A -> A -> Prop) (TL: TransfLink transf)
                      : TransfLink (match_if flag transf).
Admitted.

Local Open Scope linking_scope.

Definition CompCert's_passes :=
      mkpass SimplExprproof.match_prog
  ::: mkpass SimplLocalsproof.match_prog
  ::: mkpass Cshmgenproof.match_prog
  ::: mkpass Cminorgenproof.match_prog
  ::: mkpass Selectionproof.match_prog
  ::: mkpass RTLgenproof.match_prog
  ::: mkpass (match_if Compopts.optim_tailcalls Tailcallproof.match_prog)
  ::: mkpass Inliningproof.match_prog
  ::: mkpass Renumberproof.match_prog
  ::: mkpass (match_if Compopts.optim_constprop Constpropproof.match_prog)
  ::: mkpass (match_if Compopts.optim_constprop Renumberproof.match_prog)
  ::: mkpass (match_if Compopts.optim_CSE CSEproof.match_prog)
  ::: mkpass (match_if Compopts.optim_redundancy Deadcodeproof.match_prog)
  ::: mkpass Unusedglobproof.match_prog
  ::: mkpass Allocproof.match_prog
  ::: mkpass Tunnelingproof.match_prog
  ::: mkpass Linearizeproof.match_prog
  ::: mkpass CleanupLabelsproof.match_prog
  ::: mkpass (match_if Compopts.debug Debugvarproof.match_prog)
  ::: mkpass Stackingproof.match_prog
  ::: mkpass Asmgenproof.match_prog
  ::: pass_nil _.
Definition match_prog: Csyntax.program -> Asm.program -> Prop.
exact (pass_match (compose_passes CompCert's_passes)).
Defined.

Theorem cstrategy_semantic_preservation:
  forall p tp,
  match_prog p tp ->
  forward_simulation (Cstrategy.semantics p) (Asm.semantics tp)
  /\ backward_simulation (atomic (Cstrategy.semantics p)) (Asm.semantics tp).
Proof.
  intros p tp M.
unfold match_prog, pass_match in M; simpl in M.
Ltac DestructM :=
  match goal with
    [ H: exists p, _ /\ _ |- _ ] =>
      let p := fresh "p" in let M := fresh "M" in let MM := fresh "MM" in
      destruct H as (p & M & MM); clear H
  end.
  repeat DestructM.
subst tp.
