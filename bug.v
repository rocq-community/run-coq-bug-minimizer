
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/corn" "CoRN" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Bignums" "Bignums" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/HB" "HB" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/MathClasses" "MathClasses" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi" "elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_elpi" "elpi_elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_examples" "elpi_examples" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 1186 lines to 28 lines, then from 42 lines to 568 lines, then from 575 lines to 37 lines, then from 51 lines to 614 lines, then from 620 lines to 656 lines, then from 660 lines to 656 lines, then from 660 lines to 656 lines, then from 660 lines to 656 lines, then from 660 lines to 656 lines, then from 660 lines to 656 lines *)
(* coqc version 9.4+alpha compiled with OCaml 4.14.2
   coqtop version 9.4+alpha
   Expected coqc runtime on this file: 1.448 sec
   Expected coqc peak memory usage on this file: 523040.0 kb *)










Require Coq.Init.Ltac.
Module Export AdmitTactic.
Module Import LocalFalse.
Inductive False : Prop := .
End LocalFalse.
Axiom proof_admitted : False.
Import Coq.Init.Ltac.
Tactic Notation "admit" := abstract case proof_admitted.
End AdmitTactic.

Require CoRN.algebra.RSetoid.
Import CoRN.algebra.RSetoid.
Require MathClasses.orders.minmax.
Require CoRN.reals.fast.CRpower.
Require CoRN.metric2.MetricMorphisms.
Import CoRN.model.metric2.Qmetric.
Import CoRN.metric2.MetricMorphisms.
Import CoRN.reals.fast.CRArith.
Import MathClasses.orders.minmax.
Require Corelib.BinNums.IntDef.
Require Corelib.BinNums.NatDef.
Require Corelib.BinNums.PosDef.
Require Corelib.Classes.Equivalence.
Require Corelib.Classes.Morphisms.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Classes.RelationClasses.
Require Corelib.Init.Logic.
Require Corelib.Init.Sumbool.
Require Corelib.Init.Wf.
Require Corelib.Lists.ListDef.
Require Corelib.Numbers.BinNums.
Require Corelib.Program.Basics.
Require Corelib.Program.Tactics.
Require Corelib.Program.Utils.
Require Corelib.Program.Wf.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Setoids.Setoid.
Require MathClasses.misc.workaround_tactics.
Require MathClasses.theory.CoqStreams.
Require Stdlib.Classes.DecidableClass.
Require Stdlib.Logic.Decidable.
Require Stdlib.Logic.EqdepFacts.
Require Stdlib.Logic.FunctionalExtensionality.
Require Stdlib.Logic.HLevelsBase.
Require Stdlib.Logic.Hurkens.
Require Stdlib.Logic.PropExtensionalityFacts.
Require Stdlib.Program.Syntax.
Require Stdlib.Unicode.Utf8_core.
Require Stdlib.micromega.ZifyClasses.
Require Stdlib.setoid_ring.Algebra_syntax.
Require Stdlib.BinNums.IntDef.
Require Stdlib.BinNums.NatDef.
Require Stdlib.BinNums.PosDef.
Require Stdlib.Classes.Equivalence.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Init.Logic.
Require Stdlib.Init.Sumbool.
Require Stdlib.Init.Wf.
Require Stdlib.Lists.ListDef.
Require Stdlib.Logic.Eqdep.
Require Stdlib.Logic.Eqdep_dec.
Require Stdlib.Logic.ProofIrrelevanceFacts.
Require Stdlib.Numbers.BinNums.
Require Stdlib.Program.Basics.
Require Stdlib.Program.Tactics.
Require Stdlib.Program.Utils.
Require Stdlib.Program.Wf.
Require Stdlib.Relations.Relation_Definitions.
Require Stdlib.Setoids.Setoid.
Require Stdlib.Unicode.Utf8.
Require Stdlib.Bool.Bool.
Require Stdlib.Logic.JMeq.
Require Stdlib.Logic.ProofIrrelevance.
Require Stdlib.Relations.Relation_Operators.
Require Stdlib.Program.Combinators.
Require Stdlib.Relations.Operators_Properties.
Require Stdlib.PArith.BinPosDef.
Require Stdlib.Relations.Relations.
Require Stdlib.Program.Equality.
Require Stdlib.Numbers.NumPrelude.
Require Stdlib.Program.WfExtensionality.
Require MathClasses.misc.stdlib_hints.
Require Stdlib.Structures.Equalities.
Require Stdlib.Program.Subset.
Require Stdlib.Structures.Orders.
Require Stdlib.Structures.OrdersTac.
Require Stdlib.Structures.OrdersFacts.
Require Stdlib.Structures.GenericMinMax.
Require Stdlib.Program.Program.
Require Stdlib.Numbers.NatInt.NZAxioms.
Require Stdlib.Numbers.NatInt.NZBase.
Require Stdlib.Numbers.NatInt.NZAdd.
Require Stdlib.Numbers.NatInt.NZMul.
Require Stdlib.Numbers.NatInt.NZOrder.
Require Stdlib.Numbers.NatInt.NZAddOrder.
Require Stdlib.Numbers.NatInt.NZMulOrder.
Require MathClasses.interfaces.canonical_names.
Require Stdlib.Numbers.NatInt.NZDiv.
Require Stdlib.Numbers.NatInt.NZGcd.
Require Stdlib.Numbers.NatInt.NZParity.
Require Stdlib.Numbers.NatInt.NZPow.
Require Stdlib.Numbers.NatInt.NZSqrt.
Require MathClasses.misc.propholds.
Require MathClasses.misc.setoid_tactics.
Require MathClasses.misc.util.
Require Stdlib.Numbers.NatInt.NZLog.
Require MathClasses.misc.workarounds.
Require Stdlib.Numbers.NatInt.NZBits.
Require MathClasses.misc.decision.
Require Stdlib.Numbers.Integer.Abstract.ZAxioms.
Require Stdlib.Numbers.Natural.Abstract.NAxioms.
Require Stdlib.Numbers.Integer.Abstract.ZBase.
Require Stdlib.Numbers.Natural.Abstract.NBase.
Require Stdlib.Numbers.Integer.Abstract.ZAdd.
Require Stdlib.Numbers.Natural.Abstract.NAdd.
Require Stdlib.Numbers.Integer.Abstract.ZMul.
Require Stdlib.Numbers.Natural.Abstract.NOrder.
Require MathClasses.interfaces.abstract_algebra.
Require Stdlib.Numbers.Integer.Abstract.ZLt.
Require Stdlib.Numbers.Natural.Abstract.NAddOrder.
Require MathClasses.interfaces.additional_operations.
Require MathClasses.interfaces.orders.
Require MathClasses.theory.products.
Require Stdlib.Numbers.Integer.Abstract.ZAddOrder.
Require Stdlib.Numbers.Natural.Abstract.NMulOrder.
Require CoRN.algebra.RSetoid.
Require MathClasses.interfaces.vectorspace.
Require MathClasses.theory.setoids.
Require Stdlib.Numbers.Integer.Abstract.ZMulOrder.
Require Stdlib.Numbers.Natural.Abstract.NSub.
Require CoRN.order.PartialOrder.
Require MathClasses.interfaces.functors.
Require MathClasses.theory.groups.
Require MathClasses.theory.jections.
Require Stdlib.Numbers.Integer.Abstract.ZMaxMin.
Require Stdlib.Numbers.Integer.Abstract.ZParity.
Require Stdlib.Numbers.Integer.Abstract.ZSgnAbs.
Require Stdlib.Numbers.Natural.Abstract.NDiv.
Require Stdlib.Numbers.Natural.Abstract.NGcd.
Require Stdlib.Numbers.Natural.Abstract.NMaxMin.
Require Stdlib.Numbers.Natural.Abstract.NParity.
Require Stdlib.Numbers.Natural.Abstract.NSqrt.
Require CoRN.order.SemiLattice.
Require MathClasses.theory.strong_setoids.
Require Stdlib.Numbers.Integer.Abstract.ZDivFloor.
Require Stdlib.Numbers.Integer.Abstract.ZDivTrunc.
Require Stdlib.Numbers.Integer.Abstract.ZGcd.
Require Stdlib.Numbers.Natural.Abstract.NDiv0.
Require Stdlib.Numbers.Natural.Abstract.NPow.
Require CoRN.order.Lattice.
Require MathClasses.theory.categories.
Require Stdlib.Numbers.Integer.Abstract.ZPow.
Require Stdlib.Numbers.Natural.Abstract.NLcm.
Require Stdlib.Numbers.Natural.Abstract.NLog.
Require CoRN.order.TotalOrder.
Require MathClasses.categories.categories.
Require MathClasses.categories.setoids.
Require MathClasses.orders.orders.
Require MathClasses.orders.maps.
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
Require Stdlib.Lists.ListDec.
Require Stdlib.micromega.Refl.
Require Stdlib.Lists.Finite.
Require Stdlib.Logic.ClassicalFacts.
Require Stdlib.micromega.Tauto.
Require CoRN.stdlib_omissions.Pair.
Require Stdlib.Lists.ListTactics.
Require Stdlib.Sorting.Permutation.
Require Stdlib.Logic.ChoiceFacts.
Require Stdlib.PArith.BinPos.
Require Stdlib.Arith.Arith_base.
Require Stdlib.PArith.POrderedType.
Require Stdlib.PArith.Pnat.
Require MathClasses.implementations.ne_list.
Require Stdlib.NArith.BinNatDef.
Require Stdlib.PArith.PArith.
Require Stdlib.NArith.BinNat.
Require Stdlib.setoid_ring.BinList.
Require Stdlib.NArith.Ndiv_def.
Require Stdlib.NArith.Ngcd_def.
Require Stdlib.NArith.Nsqrt_def.
Require Stdlib.setoid_ring.Ring_theory.
Require Stdlib.NArith.Nnat.
Require Stdlib.ZArith.BinIntDef.
Require Stdlib.NArith.NArith_base.
Require Stdlib.ZArith.BinInt.
Require Stdlib.Numbers.Integer.Binary.ZBinary.
Require Stdlib.ZArith.Zcompare.
Require Stdlib.ZArith.Zeven.
Require Stdlib.ZArith.auxiliary.
Require Stdlib.ZArith.Zpow_def.
Require Stdlib.setoid_ring.Ncring.
Require Stdlib.micromega.Env.
Require Stdlib.micromega.VarMap.
Require Stdlib.micromega.EnvRing.
Require Stdlib.setoid_ring.Ring_polynom.
Require Stdlib.setoid_ring.InitialRing.
Require MathClasses.interfaces.ua_basic.
Require Stdlib.ZArith.Znat.
Require Stdlib.ZArith.Zorder.
Require Stdlib.setoid_ring.Ncring_polynom.
Require Stdlib.setoid_ring.Ring_tac.
Require Stdlib.ZArith.Zmax.
Require Stdlib.ZArith.Zmin.
Require Stdlib.ZArith.Zminmax.
Require Stdlib.ZArith.Zmisc.
Require Stdlib.omega.OmegaLemmas.
Require Stdlib.setoid_ring.Ncring_initial.
Require Stdlib.setoid_ring.Ring_base.
Require Stdlib.micromega.ZifyInst.
Require Stdlib.setoid_ring.Field_theory.
Require Stdlib.setoid_ring.Ncring_tac.
Require Stdlib.setoid_ring.Ring.
Require MathClasses.interfaces.universal_algebra.
Require Stdlib.ZArith.ZArith_dec.
Require Stdlib.micromega.OrderedRing.
Require Stdlib.micromega.Zify.
Require Stdlib.setoid_ring.Field_tac.
Require Stdlib.setoid_ring.NArithRing.
Require Stdlib.setoid_ring.ZArithRing.
Require MathClasses.theory.ua_homomorphisms.
Require MathClasses.theory.ua_mapped_operations.
Require Stdlib.ZArith.Wf_Z.
Require Stdlib.omega.PreOmega.
Require Stdlib.setoid_ring.ArithRing.
Require Stdlib.setoid_ring.Cring.
Require Stdlib.setoid_ring.Field.
Require MathClasses.categories.product.
Require MathClasses.categories.varieties.
Require Stdlib.ZArith.Zbool.
Require Stdlib.setoid_ring.Integral_domain.
Require Stdlib.ZArith.Zabs.
Require Stdlib.nsatz.NsatzTactic.
Require MathClasses.theory.ua_transference.
Require Stdlib.NArith.NArith.
Require Stdlib.micromega.RingMicromega.
Require Stdlib.ZArith.Zhints.
Require Stdlib.Arith.Arith.
Require Stdlib.micromega.ZMicromega.
Require Stdlib.QArith.QArith_base.
Require Stdlib.ZArith.ZArith_base.
Require CoRN.stdlib_omissions.P.
Require MathClasses.categories.algebras.
Require Stdlib.QArith.Qreduction.
Require MathClasses.theory.forget_algebra.
Require CoRN.stdlib_omissions.List.
Require MathClasses.theory.forget_variety.
Require Stdlib.QArith.Qfield.
Require MathClasses.varieties.monoids.
Require MathClasses.varieties.semigroups.
Require Stdlib.QArith.Qring.
Require Stdlib.ZArith.Zcomplements.
Require Stdlib.QArith.Qpower.
Require Stdlib.ZArith.Zdiv.
Require Stdlib.ZArith.Zpower.
Require MathClasses.theory.lattices.
Require Stdlib.micromega.Lia.
Require Stdlib.QArith.QNsatz.
Require Stdlib.QArith.Qround.
Require Stdlib.btauto.Algebra.
Require Stdlib.btauto.Reflect.
Require MathClasses.orders.lattices.
Require Stdlib.btauto.Btauto.
Require MathClasses.orders.minmax.
Require Stdlib.QArith.QArith.
Require Stdlib.ZArith.ZNsatz.
Require Stdlib.QArith.Qabs.
Require Stdlib.ZArith.Zbitwise.
Require Stdlib.micromega.ZArith_hints.
Require Stdlib.ZArith.Zdivisibility.
Require Stdlib.ZArith.Zcong.
Require Stdlib.ZArith.Zdiv_facts.
Require Stdlib.ZArith.ZModOffset.
Require Stdlib.ZArith.Znumtheory.
Require CoRN.model.totalorder.QMinMax.
Require MathClasses.theory.rings.
Require MathClasses.theory.fields.
Require MathClasses.varieties.rings.
Require MathClasses.varieties.semirings.
Require MathClasses.interfaces.naturals.
Require CoRN.metric2.Metric.
Require Stdlib.ZArith.ZArith.
Require MathClasses.interfaces.integers.
Require MathClasses.orders.semirings.
Require CoRN.stdlib_omissions.Z.
Require MathClasses.implementations.nonneg_semiring_elements.
Require MathClasses.orders.rings.
Require MathClasses.implementations.semiring_pairs.
Require MathClasses.theory.abs.
Require MathClasses.theory.dec_fields.
Require MathClasses.implementations.field_of_fractions.
Require MathClasses.orders.dec_fields.
Require MathClasses.implementations.peano_naturals.
Require MathClasses.theory.naturals.
Require MathClasses.orders.nat_int.
Require MathClasses.theory.nat_pow.
Require CoRN.model.totalorder.QposMinMax.
Require MathClasses.orders.naturals.
Require CoRN.model.structures.QposInf.
Require MathClasses.theory.nat_distance.
Require CoRN.metric2.Classification.
Require MathClasses.implementations.natpair_integers.
Require MathClasses.implementations.stdlib_binary_naturals.
Require MathClasses.theory.integers.
Require MathClasses.theory.int_abs.
Require MathClasses.orders.integers.
Require MathClasses.implementations.nonneg_integers_naturals.
Require CoRN.metric2.UniformContinuity.
Require CoRN.metric2.Complete.
Require CoRN.stdlib_omissions.Q.
Require MathClasses.interfaces.rationals.
Require MathClasses.theory.rationals.
Require MathClasses.theory.shiftl.
Require MathClasses.theory.int_pow.
Require MathClasses.implementations.positive_semiring_elements.
Require MathClasses.orders.rationals.
Require CoRN.metric2.Prelength.
Require CoRN.metric2.MetricMorphisms.
Require MathClasses.implementations.stdlib_binary_integers.
Require MathClasses.implementations.stdlib_rationals.
Require CoRN.classes.Qclasses.
Require CoRN.util.Qdlog.
Require CoRN.model.metric2.Qmetric.

Module CoRN_DOT_reals_DOT_faster_DOT_ApproximateRationals_WRAPPED.
Module ApproximateRationals.
Import CoRN.algebra.RSetoid.
Import CoRN.metric2.Metric.
Import CoRN.metric2.UniformContinuity.
Import Stdlib.Program.Program.
Import CoRN.model.totalorder.QposMinMax
  MathClasses.misc.workaround_tactics
  CoRN.stdlib_omissions.Q CoRN.util.Qdlog CoRN.model.metric2.Qmetric.
Import Stdlib.QArith.Qabs.
Import CoRN.classes.Qclasses CoRN.model.totalorder.QMinMax
  CoRN.algebra.RSetoid CoRN.metric2.MetricMorphisms
  MathClasses.orders.minmax MathClasses.orders.dec_fields MathClasses.theory.abs MathClasses.theory.shiftl MathClasses.theory.int_pow.
Export
  MathClasses.interfaces.abstract_algebra MathClasses.interfaces.additional_operations MathClasses.interfaces.orders.

Class AppDiv AQ := app_div : AQ → AQ → Z → AQ.
Class AppApprox AQ := app_approx : AQ → Z → AQ.

Class AppRationals AQ {e plus mult zero one inv} `{Apart AQ} `{Le AQ} `{Lt AQ}
     {AQtoQ : Cast AQ Q_as_MetricSpace}
    `{!AppInverse AQtoQ} {ZtoAQ : Cast Z AQ} `{!AppDiv AQ} `{!AppApprox AQ}
    `{!Abs AQ} `{!Pow AQ N} `{!ShiftL AQ Z}
    `{∀ x y : AQ, Decision (x = y)} `{∀ x y : AQ, Decision (x ≤ y)} : Prop := {
  aq_ring :: @Ring AQ e plus mult zero one inv ;
  aq_trivial_apart :: TrivialApart AQ ;
  aq_order_embed :: OrderEmbedding AQtoQ ;
  aq_strict_order_embed :: StrictOrderEmbedding AQtoQ ;
  aq_ring_morphism :: SemiRing_Morphism AQtoQ ;
  aq_dense_embedding :: DenseEmbedding AQtoQ ;
  aq_div : ∀ x y k, ball (2 ^ k) ('app_div x y k) ('x / 'y) ;
  aq_compress : ∀ x k, ball (2 ^ k) ('app_approx x k) ('x) ;
  aq_shift :: ShiftLSpec AQ Z (≪) ;
  aq_nat_pow :: NatPowSpec AQ N (^) ;
  aq_ints_mor :: SemiRing_Morphism ZtoAQ
}.

Lemma order_embedding_iff `{OrderEmbedding A B f} x y :
  x ≤ y ↔ f x ≤ f y.
Proof.
firstorder.
Qed.

Lemma strict_order_embedding_iff `{StrictOrderEmbedding A B f} x y :
  x < y ↔ f x < f y.
Proof.
firstorder.
Qed.

Section approximate_rationals_more.
  Context `{AppRationals AQ}.

  Lemma AQtoQ_ZtoAQ (x : Z) : cast AQ Q (cast Z AQ x) = cast Z Q x.
  Proof.
now apply (integers.to_ring_twice _ _ _).
Qed.

  Global Instance: Injective (cast AQ Q).
  Proof.
    destruct dense_injective.
    split.
2: apply _.
    intros.
apply (injective x y).
    unfold equiv.
simpl.
    rewrite H5.
reflexivity.
  Qed.

  Global Instance: StrongSetoid AQ.
  Proof strong_setoids.dec_strong_setoid.

  Global Instance: StrongSetoid_Morphism (cast AQ Q).
  Proof strong_setoids.dec_strong_morphism (cast AQ Q).

  Global Instance: StrongInjective (cast AQ Q).
  Proof strong_setoids.dec_strong_injective (cast AQ Q).

  Global Instance: Injective (cast Z AQ).
  Proof.
    split; try apply _.
    intros x y E.
    apply (injective (cast Z Q)).
    rewrite <-2!AQtoQ_ZtoAQ.
    now rewrite E.
  Qed.

  Global Instance: FullPseudoSemiRingOrder (_ : Le AQ) (_ : Lt AQ).
  Proof.
    apply (projected_full_pseudo_ring_order (cast AQ Q)).
     apply order_embedding_iff.
    apply strict_order_embedding_iff.
  Qed.

  Lemma aq_opp : forall (x : AQ), '(-x) = -'x.
  Proof.
    intro x.
    apply (Qplus_inj_l _ _ ('x)).
    rewrite Qplus_opp_r.
    assert ('zero0 = 0%Q) by (apply rings.preserves_0).
    rewrite <- H5.
    destruct aq_ring_morphism.
    destruct semiringmor_plus_mor.
    destruct monmor_sgmor.
    rewrite <- preserves_sg_op.
    destruct sgmor_setmor.
    apply sm_proper.
    unfold equiv.
    destruct aq_ring, ring_group.
    destruct abgroup_group.
    apply negate_r.
  Qed.

  Lemma aq_shift_correct (x : AQ) (k : Z) :  '(x ≪ k) = 'x * 2 ^ k.
  Proof.
rewrite preserves_shiftl.
apply shiftl_int_pow.
Qed.

  Lemma aq_shift_1_correct (k : Z) :  '((1:AQ) ≪ k) = 2 ^ k.
  Proof.
now rewrite aq_shift_correct, rings.preserves_1, rings.mult_1_l.
Qed.

  Lemma aq_shift_opp_1 (x : AQ) : '(x ≪ (-1 : Z)) = 'x / 2.
  Proof.
now rewrite aq_shift_correct.
Qed.

  Lemma aq_shift_opp_2 (x : AQ) : '(x ≪ (-2 : Z)) = 'x / 4.
  Proof.
now rewrite aq_shift_correct.
Qed.

  Lemma aq_div_dlog2 (x y : AQ) (ε : Q₊) :
    ball (proj1_sig ε) ('app_div x y (Qdlog2 ('ε))) ('x / 'y).
  Proof.
    eapply ball_weak_le.
     now apply Qpos_dlog2_spec.
    now apply aq_div.
  Qed.

  Lemma aq_approx_dlog2 (x : AQ) (ε : Q₊) :
    ball (proj1_sig ε) ('app_approx x (Qdlog2 ('ε))) ('x).
  Proof.
    eapply ball_weak_le.
     now apply Qpos_dlog2_spec.
    now apply aq_compress.
  Qed.

  Definition app_div_above (x y : AQ) (k : Z) : AQ := app_div x y k + 1 ≪ k.

  Lemma aq_div_above (x y : AQ) (k : Z) : ('x / 'y : Q) ≤ 'app_div_above x y k.
  Proof.
    unfold app_div_above.
    pose proof (aq_div x y k) as P.
    apply in_Qball in P.
destruct P as [_ P].
    rewrite rings.preserves_plus.
    rewrite aq_shift_correct.
    now rewrite rings.preserves_1, left_identity.
  Qed.

  Global Instance: IntegralDomain AQ.
  Proof.
    split; try apply _.
     intros E.
     destruct (rings.is_ne_0 (1%mc:Q)).
     rewrite <-(rings.preserves_1 (f:=cast AQ Q)).
     rewrite <-(rings.preserves_0 (f:=cast AQ Q)).
     now rewrite E.
    intros x [? [y [? E]]].
    destruct (no_zero_divisors ('x : Q)).
split.
     now apply rings.injective_ne_0.
    exists ('y : Q).
split.
     now apply rings.injective_ne_0.
    rewrite <-rings.preserves_mult, E.
    apply rings.preserves_0.
  Qed.

  Lemma aq_lt_mid (x y : Q) : (x < y)%Q → { z : AQ | (x < 'z ∧ 'z < y)%Q }.
  Proof with auto with qarith.
    intros E.
    destruct (Qpos_sub _ _ E) as [γ Eγ].

    exists (app_inverse (cast AQ Q) ((1#2) * (x + y)) ((1#3) * γ)%Qpos)%Q.
    split.
     apply Qlt_le_trans with (x + (1#6) * proj1_sig γ)%Q.
      rewrite <-(rings.plus_0_r x) at 1.
      apply Qplus_lt_r...
      assert (Qeq (x + (1 # 6) * ` γ)
                  ((1 # 2) * (x + y) - proj1_sig ((1 # 3) * γ)%Qpos)%Q).
      { rewrite Eγ.
simpl.
ring.
}
      rewrite H5.
clear H5.
     simpl.
      apply (in_Qball (proj1_sig ((1#3)*γ)%Qpos)), ball_sym, dense_inverse.
    apply Qle_lt_trans with (y - (1#6) * proj1_sig γ)%Q.
    assert (Qeq (y - (1 # 6) * ` γ)
                ((1 # 2) * (x + y) + proj1_sig ((1 # 3) * γ)%Qpos)).
    { rewrite Eγ.
simpl.
ring.
}
    rewrite H5.
clear H5.
simpl.
      apply (in_Qball (proj1_sig ((1#3)*γ)%Qpos)), ball_sym, dense_inverse.
      apply (Qlt_le_trans _ (y-0)).
    apply Qplus_lt_r.
    apply Qopp_Qlt_0_r...
    unfold Qminus.
rewrite Qplus_0_r.
apply Qle_refl.
  Defined.

  Instance: MeetSemiLattice_Morphism (cast AQ Q).
  Proof.
    split; try apply _; apply lattices.order_preserving_meet_sl_mor.
  Qed.

  Instance: JoinSemiLattice_Morphism (cast AQ Q).
  Proof.
    split; try apply _; apply lattices.order_preserving_join_sl_mor.
  Qed.

  Lemma aq_preserves_min x y : '(x ⊓ y) = Qmin ('x) ('y).
  Proof.
    rewrite lattices.preserves_meet; symmetry; apply Qmin_coincides.
  Qed.

  Lemma aq_preserves_max x y : '(x ⊔ y) = Qmax ('x) ('y).
  Proof.
    rewrite lattices.preserves_join; symmetry; apply Qmax_coincides.
  Qed.

  Global Program Instance AQposAsQ: Cast (AQ₊) Q := cast AQ Q ∘ cast (AQ₊) AQ.

  Global Program Instance AQposAsQpos: Cast (AQ₊) (Q₊) := λ x, ('x : Q).
  Next Obligation.
    destruct x as [x Ex].
simpl.
    posed_rewrite <-(rings.preserves_0 (f:=cast AQ Q)).
    now apply (strictly_order_preserving (cast AQ Q)).
  Qed.

  Lemma AQposAsQpos_preserves_1 : cast (AQ₊) (Q₊) 1 = 1.
  Proof.
change (cast AQ Q 1 = 1).
apply rings.preserves_1.
Qed.

  Lemma AQposAsQpos_preserves_4 : cast (AQ₊) (Q₊) 4 = 4.
  Proof.
change (cast AQ Q 4 = 4).
apply rings.preserves_4.
Qed.
End approximate_rationals_more.

End ApproximateRationals.

End CoRN_DOT_reals_DOT_faster_DOT_ApproximateRationals_WRAPPED.
Module Export CoRN_DOT_reals_DOT_faster_DOT_ApproximateRationals.
Module Export CoRN.
Module Export reals.
Module Export faster.
Module ApproximateRationals.
Include CoRN_DOT_reals_DOT_faster_DOT_ApproximateRationals_WRAPPED.ApproximateRationals.
End ApproximateRationals.

End faster.

End reals.

End CoRN.

End CoRN_DOT_reals_DOT_faster_DOT_ApproximateRationals.
Export
  CoRN.reals.faster.ApproximateRationals.

Section AQmetric.
Context `{AppRationals AQ}.

Existing Instance strong_setoids.Setoid_instance_0.
Definition AQ_as_MetricSpace := Emetric (cast AQ Q_as_MetricSpace).
Definition AQPrelengthSpace := EPrelengthSpace QPrelengthSpace (cast AQ Q_as_MetricSpace).

Definition AR := Complete AQ_as_MetricSpace.
End AQmetric.

Section ARarith.
Context `{AppRationals AQ}.

Local Open Scope uc_scope.

Program Definition AQtranslate_uc (x : AQ_as_MetricSpace) := unary_uc
  (cast AQ Q_as_MetricSpace)
  ((x +) : AQ_as_MetricSpace → AQ_as_MetricSpace) (Qtranslate_uc ('x)) _.
Admit Obligations.
Definition ARtranslate (x : AQ_as_MetricSpace) : AR --> AR.
exact (Cmap AQPrelengthSpace (AQtranslate_uc x)).
