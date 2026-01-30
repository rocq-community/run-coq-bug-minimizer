#!/usr/bin/env bash
cat > bug.v <<_EOF
(* depends on a few files of fiat-crypto *)
Module Export AdmitTactic.
Module Import LocalFalse.
Inductive False : Prop := .
End LocalFalse.
Axiom proof_admitted : False.
Import Coq.Init.Ltac.
Tactic Notation "admit" := abstract case proof_admitted.
End AdmitTactic.
Require Stdlib.Structures.Orders.
Require Crypto.Arithmetic.Saturated.
Require Stdlib.ssr.ssreflect.
Import Stdlib.ZArith.ZArith.
Import Crypto.Arithmetic.Core.
Import Crypto.Arithmetic.Partition.
Import Crypto.Arithmetic.Saturated.
Require Import Crypto.Arithmetic.UniformWeight.
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
