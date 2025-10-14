
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/utils/theories" "MetaRocq.Utils" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/common/theories" "MetaRocq.Common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/pcuic/theories" "MetaRocq.PCUIC" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Equations" "Equations" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 636 lines to 192 lines, then from 205 lines to 2743 lines, then from 2743 lines to 327 lines, then from 340 lines to 1321 lines, then from 1319 lines to 345 lines, then from 358 lines to 2067 lines, then from 2073 lines to 792 lines, then from 805 lines to 1941 lines, then from 1946 lines to 963 lines, then from 976 lines to 3039 lines, then from 3039 lines to 985 lines, then from 998 lines to 3458 lines, then from 3459 lines to 1057 lines, then from 1070 lines to 2319 lines, then from 2315 lines to 1348 lines, then from 1357 lines to 983 lines, then from 996 lines to 1517 lines, then from 1523 lines to 1019 lines, then from 1032 lines to 2095 lines, then from 2101 lines to 1021 lines, then from 1034 lines to 1867 lines, then from 1871 lines to 1172 lines, then from 1185 lines to 2703 lines, then from 2703 lines to 1204 lines, then from 1217 lines to 1666 lines, then from 1672 lines to 1206 lines, then from 1219 lines to 3081 lines, then from 3083 lines to 1535 lines, then from 1548 lines to 2204 lines, then from 2209 lines to 1612 lines, then from 1625 lines to 2435 lines, then from 2438 lines to 2287 lines, then from 2285 lines to 1529 lines, then from 1539 lines to 4355 lines, then from 4353 lines to 1784 lines, then from 1795 lines to 3480 lines, then from 3484 lines to 2031 lines, then from 2041 lines to 2329 lines, then from 2335 lines to 2039 lines, then from 2049 lines to 5154 lines, then from 5119 lines to 4245 lines *)
(* coqc version 9.2+alpha compiled with OCaml 4.14.2
   coqtop version 9.2+alpha
   Expected coqc runtime on this file: 4.804 sec *)










Require MetaRocq.Common.BasicAst.
Require MetaRocq.Common.Kernames.
Require MetaRocq.Utils.MRFSets.
Require MetaRocq.Utils.utils.
Require MetaRocq.Utils.MRUtils.
Require MetaRocq.Utils.Show.
Require MetaRocq.Utils.MRMSets.
Require MetaRocq.Utils.MRString.
Require MetaRocq.Utils.monad_utils.
Require MetaRocq.Utils.All_Forall.
Require MetaRocq.Utils.MROption.
Require MetaRocq.Utils.MRList.
Require MetaRocq.Utils.MRReflect.
Require MetaRocq.Utils.MRPrelude.
Require MetaRocq.Utils.bytestring.
Require MetaRocq.Utils.ByteCompareSpec.
Require Stdlib.FSets.FMapFullAVL.
Require Stdlib.Strings.PString.
Require Stdlib.Numbers.Cyclic.Int63.Sint63.
Require Stdlib.Numbers.Cyclic.Int63.Ring63.
Require Stdlib.micromega.ZifyUint63.
Require Stdlib.Numbers.Cyclic.Int63.Cyclic63.
Require Stdlib.Numbers.Cyclic.Int63.Uint63.
Require Stdlib.FSets.FMapAVL.
Require Stdlib.Numbers.Cyclic.Abstract.CyclicAxioms.
Require MetaRocq.Utils.MRArith.
Require Stdlib.ZArith.ZArith.
Require Stdlib.ZArith.Zpow_facts.
Require Stdlib.ZArith.Zgcd_alt.
Require Stdlib.ZArith.Znumtheory.
Require MetaRocq.Common.config.
Require Stdlib.ZArith.ZNsatz.
Require Stdlib.ZArith.Zbitwise.
Require Stdlib.btauto.Btauto.
Require Stdlib.micromega.ZArith_hints.
Require Stdlib.btauto.Reflect.
Require Stdlib.btauto.Algebra.
Require Stdlib.ZArith.Zcong.
Require Stdlib.ZArith.ZModOffset.
Require Stdlib.ZArith.Zdivisibility.
Require Stdlib.ZArith.Zdiv_facts.
Require Stdlib.micromega.Lia.
Require Stdlib.MSets.MSetProperties.
Require Stdlib.MSets.MSetDecide.
Require Stdlib.MSets.MSetFacts.
Require Stdlib.FSets.FMapFacts.
Require Stdlib.micromega.ZMicromega.
Require Stdlib.Structures.DecidableTypeEx.
Require Stdlib.Structures.OrderedTypeEx.
Require Stdlib.ZArith.Zdiv.
Require Stdlib.ZArith.Zpower.
Require Stdlib.ZArith.Zcomplements.
Require Stdlib.Numbers.DecimalString.
Require Stdlib.MSets.MSetAVL.
Require MetaRocq.Utils.MRCompare.
Require Stdlib.omega.PreOmega.
Require Stdlib.micromega.ZifyBool.
Require Stdlib.MSets.MSetGenTree.
Require Stdlib.micromega.Zify.
Require Stdlib.Strings.String.
Require MetaRocq.Utils.ReflectEq.
Require Stdlib.micromega.ZifyInst.
Require Stdlib.ZArith.ZArith_base.
Require Stdlib.Arith.Arith.
Require Equations.Prop.Equations.
Require Stdlib.micromega.ZCoeff.
Require Stdlib.ZArith.Zhints.
Require Equations.Prop.Telescopes.
Require Equations.Prop.Loader.
Require Stdlib.NArith.NArith.
Require Equations.Prop.EqDecInstances.
Require Stdlib.nsatz.NsatzTactic.
Require Stdlib.micromega.RingMicromega.
Require Equations.Prop.NoConfusion.
Require Stdlib.ZArith.Zabs.
Require Stdlib.setoid_ring.Integral_domain.
Require Stdlib.ZArith.Zbool.
Require Stdlib.setoid_ring.ZArithRing.
Require Stdlib.setoid_ring.Cring.
Require Stdlib.setoid_ring.ArithRing.
Require Stdlib.ZArith.Wf_Z.
Require Stdlib.setoid_ring.NArithRing.
Require Stdlib.micromega.OrderedRing.
Require Stdlib.ZArith.ZArith_dec.
Require Stdlib.setoid_ring.Ring.
Require Stdlib.setoid_ring.Ncring_tac.
Require Stdlib.setoid_ring.Ring_base.
Require Stdlib.setoid_ring.Ncring_initial.
Require Stdlib.omega.OmegaLemmas.
Require Stdlib.ZArith.auxiliary.
Require Stdlib.ZArith.Zmisc.
Require Stdlib.ZArith.Zminmax.
Require Stdlib.ZArith.Zmin.
Require Stdlib.ZArith.Zmax.
Require Stdlib.setoid_ring.Ring_tac.
Require Stdlib.setoid_ring.Ncring_polynom.
Require Stdlib.ZArith.Zorder.
Require Stdlib.ZArith.Znat.
Require Stdlib.setoid_ring.InitialRing.
Require Stdlib.setoid_ring.Ring_polynom.
Require Stdlib.micromega.EnvRing.
Require Stdlib.micromega.VarMap.
Require Stdlib.micromega.Env.
Require Stdlib.Numbers.Cyclic.Abstract.DoubleType.
Require Stdlib.setoid_ring.Ncring.
Require Stdlib.ZArith.Zpow_def.
Require Equations.Prop.Tactics.
Require Stdlib.ZArith.Zeven.
Require Stdlib.ZArith.Zcompare.
Require Stdlib.ZArith.Int.
Require Stdlib.ZArith.BinInt.
Require Equations.Prop.Subterm.
Require Stdlib.NArith.Ndec.
Require Stdlib.Vectors.Bvector.
Require Stdlib.micromega.DeclConstantZ.
Require Stdlib.Strings.Ascii.
Require MetaRocq.Utils.ByteCompare.
Require Stdlib.Strings.Byte.
Require Stdlib.NArith.NArith_base.
Require Stdlib.Vectors.Vector.
Require Stdlib.Vectors.VectorEq.
Require Stdlib.ZArith.BinIntDef.
Require Stdlib.Vectors.VectorSpec.
Require Stdlib.Wellfounded.Wellfounded.
Require Stdlib.NArith.Nnat.
Require Stdlib.setoid_ring.Ring_theory.
Require Stdlib.NArith.Nsqrt_def.
Require Stdlib.NArith.Ngcd_def.
Require Stdlib.NArith.Ndiv_def.
Require Stdlib.MSets.MSetList.
Require Stdlib.setoid_ring.BinList.
Require Stdlib.NArith.BinNat.
Require Stdlib.Vectors.VectorDef.
Require Stdlib.PArith.PArith.
Require Stdlib.NArith.BinNatDef.
Require Stdlib.Vectors.Fin.
Require Stdlib.FSets.FMapList.
Require Stdlib.Structures.OrdersLists.
Require Stdlib.PArith.Pnat.
Require Stdlib.PArith.POrderedType.
Require Stdlib.FSets.FMapInterface.
Require Stdlib.Arith.Arith_base.
Require Stdlib.Structures.OrdersAlt.
Require Stdlib.Structures.OrderedTypeAlt.
Require Stdlib.Structures.EqualitiesFacts.
Require Stdlib.PArith.BinPos.
Require Stdlib.MSets.MSetInterface.
Require Stdlib.Wellfounded.Lexicographic_Exponentiation.
Require Stdlib.Structures.OrderedType.
Require Stdlib.Structures.DecidableType.
Require Stdlib.Sorting.SetoidList.
Require Stdlib.Lists.ListTactics.
Require Stdlib.micromega.Tauto.
Require Stdlib.Sorting.Sorted.
Require Stdlib.micromega.Refl.
Require Stdlib.Wellfounded.List_Extension.
Require Stdlib.Lists.List.
Require Stdlib.Arith.Peano_dec.
Require Stdlib.Arith.Wf_nat.
Require Stdlib.Arith.Factorial.
Require Stdlib.Arith.EqNat.
Require Stdlib.Arith.Compare_dec.
Require Stdlib.Arith.Between.
Require Stdlib.Arith.PeanoNat.
Require Stdlib.Numbers.Natural.Abstract.NProperties.
Require Stdlib.Numbers.Integer.Abstract.ZProperties.
Require Stdlib.Numbers.Natural.Abstract.NLcm0.
Require Stdlib.Numbers.Natural.Abstract.NBits.
Require Stdlib.Numbers.Integer.Abstract.ZLcm.
Require Stdlib.Numbers.Integer.Abstract.ZBits.
Require Stdlib.Numbers.Natural.Abstract.NLog.
Require Stdlib.Numbers.Natural.Abstract.NLcm.
Require Stdlib.Numbers.Integer.Abstract.ZPow.
Require Stdlib.Numbers.Natural.Abstract.NPow.
Require Stdlib.Numbers.Natural.Abstract.NDiv0.
Require Stdlib.Numbers.Integer.Abstract.ZGcd.
Require Stdlib.Numbers.Integer.Abstract.ZDivTrunc.
Require Stdlib.Numbers.Integer.Abstract.ZDivFloor.
Require Stdlib.Numbers.Natural.Abstract.NSqrt.
Require Stdlib.Numbers.Natural.Abstract.NParity.
Require Stdlib.Numbers.Natural.Abstract.NMaxMin.
Require Stdlib.Numbers.Natural.Abstract.NGcd.
Require Stdlib.Numbers.Natural.Abstract.NDiv.
Require Stdlib.Numbers.Integer.Abstract.ZSgnAbs.
Require Stdlib.Numbers.Integer.Abstract.ZParity.
Require Stdlib.Numbers.Integer.Abstract.ZMaxMin.
Require Stdlib.Numbers.Natural.Abstract.NSub.
Require Stdlib.Numbers.Integer.Abstract.ZMulOrder.
Require Stdlib.Numbers.Natural.Abstract.NMulOrder.
Require Stdlib.Numbers.Integer.Abstract.ZAddOrder.
Require Stdlib.Numbers.Natural.Abstract.NAddOrder.
Require Stdlib.Numbers.Integer.Abstract.ZLt.
Require Stdlib.Numbers.Natural.Abstract.NOrder.
Require Stdlib.Numbers.Integer.Abstract.ZMul.
Require Stdlib.Numbers.Natural.Abstract.NAdd.
Require Stdlib.Numbers.Integer.Abstract.ZAdd.
Require Stdlib.Numbers.Natural.Abstract.NBase.
Require Stdlib.Numbers.Integer.Abstract.ZBase.
Require Stdlib.Numbers.Natural.Abstract.NAxioms.
Require Stdlib.Numbers.Integer.Abstract.ZAxioms.
Require Stdlib.Numbers.NatInt.NZBits.
Require Stdlib.Numbers.NatInt.NZLog.
Require Stdlib.Numbers.NatInt.NZSqrt.
Require Stdlib.Numbers.NatInt.NZPow.
Require Stdlib.Numbers.NatInt.NZParity.
Require Stdlib.Numbers.NatInt.NZGcd.
Require Stdlib.Numbers.NatInt.NZDiv.
Require Stdlib.Numbers.NatInt.NZMulOrder.
Require Stdlib.Numbers.NatInt.NZAddOrder.
Require Stdlib.Numbers.NatInt.NZOrder.
Require Stdlib.Numbers.NatInt.NZMul.
Require Stdlib.Numbers.NatInt.NZAdd.
Require Stdlib.Numbers.NatInt.NZBase.
Require Stdlib.Numbers.NatInt.NZAxioms.
Require Stdlib.Program.Program.
Require Stdlib.Structures.GenericMinMax.
Require Stdlib.Structures.OrdersFacts.
Require Stdlib.Structures.OrdersTac.
Require Equations.Prop.Constants.
Require Stdlib.Structures.Orders.
Require Equations.Prop.FunctionalInduction.
Require Equations.Prop.DepElim.
Require MetaRocq.Utils.MRRelations.
Require Equations.Prop.EqDec.
Require Stdlib.Program.Subset.
Require Equations.Prop.Classes.
Require Stdlib.Structures.Equalities.
Require MetaRocq.Utils.MRProd.
Require Equations.Type.Relation_Properties.
Require Stdlib.Wellfounded.Lexicographic_Product.
Require Stdlib.Program.WfExtensionality.
Require Stdlib.Classes.RelationPairs.
Require MetaRocq.Utils.MRTactics.SpecializeUnderBindersBy.
Require MetaRocq.Utils.MRTactics.InHypUnderBindersDo.
Require Equations.Type.Relation.
Require Equations.Prop.Logic.
Require Stdlib.Numbers.NumPrelude.
Require Equations.Type.Logic.
Require Stdlib.Program.Equality.
Require Ltac2.Ltac1.
Require Stdlib.Wellfounded.Union.
Require Stdlib.Relations.Relations.
Require Stdlib.PArith.BinPosDef.
Require Equations.CoreTactics.
Require Stdlib.Wellfounded.Transitive_Closure.
Require Stdlib.Wellfounded.Disjoint_Union.
Require Stdlib.Relations.Operators_Properties.
Require Stdlib.Program.Combinators.
Require MetaRocq.Utils.MRTactics.GeneralizeOverHoles.
Require Ltac2.Control.
Require Equations.Signature.
Require Equations.Prop.SigmaNotations.
Require Stdlib.Wellfounded.Inclusion.
Require Stdlib.Relations.Relation_Operators.
Require Stdlib.Logic.ProofIrrelevance.
Require Stdlib.Logic.JMeq.
Require Stdlib.Bool.Bool.
Require MetaRocq.Utils.MRTactics.SpecializeAllWays.
Require MetaRocq.Utils.MRTactics.DestructHead.
Require Ltac2.Std.
Require Ltac2.Message.
Require Equations.Init.
Require Stdlib.ssr.ssreflect.
Require Stdlib.ssr.ssrbool.
Require Stdlib.extraction.Extraction.
Require Stdlib.Wellfounded.Well_Ordering.
Require Stdlib.Unicode.Utf8.
Require Stdlib.Strings.PrimStringAxioms.
Require Stdlib.Strings.PrimString.
Require Stdlib.Setoids.Setoid.
Require Stdlib.Relations.Relation_Definitions.
Require Stdlib.Program.Wf.
Require Stdlib.Program.Utils.
Require Stdlib.Program.Tactics.
Require Stdlib.Program.Basics.
Require Stdlib.Numbers.Cyclic.Int63.Uint63Axioms.
Require Stdlib.Numbers.Cyclic.Int63.Sint63Axioms.
Require Stdlib.Numbers.Cyclic.Int63.PrimInt63.
Require Stdlib.Numbers.Cyclic.Int63.CarryType.
Require Stdlib.Numbers.BinNums.
Require Stdlib.Logic.ProofIrrelevanceFacts.
Require Stdlib.Logic.Eqdep_dec.
Require Stdlib.Logic.Eqdep.
Require Stdlib.Lists.ListDef.
Require Stdlib.Init.Byte.
Require Stdlib.Init.Wf.
Require Stdlib.Init.Sumbool.
Require Stdlib.Init.Decimal.
Require Stdlib.Init.Nat.
Require Stdlib.Floats.SpecFloat.
Require Stdlib.Floats.PrimFloat.
Require Stdlib.Floats.FloatOps.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.CRelationClasses.
Require Stdlib.BinNums.NatDef.
Require Stdlib.BinNums.IntDef.
Require Stdlib.BinNums.PosDef.
Require MetaRocq.Utils.MRTactics.UniquePose.
Require Ltac2.Init.
Require Stdlib.setoid_ring.Algebra_syntax.
Require Stdlib.micromega.ZifyClasses.
Require Stdlib.Wellfounded.Inverse_Image.
Require Stdlib.Unicode.Utf8_core.
Require Stdlib.Sets.Relations_1.
Require Stdlib.Program.Syntax.
Require Stdlib.Logic.HLevelsBase.
Require Stdlib.Logic.FunctionalExtensionality.
Require Stdlib.Logic.EqdepFacts.
Require Stdlib.Logic.Decidable.
Require Stdlib.Classes.DecidableClass.
Require MetaRocq.Utils.MRTactics.Zeta1.
Require MetaRocq.Utils.MRTactics.SplitInContext.
Require MetaRocq.Utils.MRTactics.SpecializeBy.
Require MetaRocq.Utils.MRTactics.Head.
Require MetaRocq.Utils.MRTactics.FindHyp.
Require MetaRocq.Utils.MRTactics.DestructHyps.
Require MetaRocq.Utils.MRSquash.
Require MetaRocq.Utils.MREquality.
Require Corelib.extraction.Extraction.
Require Corelib.Numbers.Cyclic.Int63.CarryType.
Require Corelib.Program.Tactics.
Require Corelib.Classes.Morphisms.
Require Corelib.Numbers.Cyclic.Int63.Uint63Axioms.
Require Corelib.BinNums.PosDef.
Require Corelib.Numbers.Cyclic.Int63.Sint63Axioms.
Require Corelib.Floats.SpecFloat.
Require Corelib.ssr.ssrbool.
Require Corelib.Floats.FloatOps.
Require Corelib.Classes.RelationClasses.
Require Corelib.ssr.ssreflect.
Require Corelib.Init.Wf.
Require Corelib.Numbers.BinNums.
Require Corelib.Classes.CRelationClasses.
Require Corelib.Program.Wf.
Require Corelib.Lists.ListDef.
Require Corelib.Init.Byte.
Require Corelib.Strings.PrimStringAxioms.
Require Corelib.BinNums.IntDef.
Require Corelib.Init.Ltac.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Program.Basics.
Require Corelib.Init.Nat.
Require Corelib.Setoids.Setoid.
Require Corelib.Init.Decimal.
Require Corelib.Numbers.Cyclic.Int63.PrimInt63.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Strings.PrimString.
Require Corelib.Program.Utils.
Require Corelib.Init.Sumbool.
Require Corelib.BinNums.NatDef.

Module Export AdmitTactic.
Module Import LocalFalse.
Inductive False : Prop := .
End LocalFalse.
Axiom proof_admitted : False.
Import Coq.Init.Ltac.
Tactic Notation "admit" := abstract case proof_admitted.
End AdmitTactic.

Module Export MetaRocq_DOT_Common_DOT_Universes_WRAPPED.
Module Export Universes.
Import Stdlib.Structures.OrdersAlt.
Import Stdlib.MSets.MSetList.
Import Stdlib.MSets.MSetAVL.
Import Stdlib.MSets.MSetFacts.
Import Stdlib.MSets.MSetProperties.
Import Stdlib.MSets.MSetDecide.
Import Stdlib.FSets.FMapAVL.
Import Equations.Prop.Equations.
Import MetaRocq.Utils.utils.
Import MetaRocq.Utils.MRMSets.
Import MetaRocq.Utils.MRFSets.
Import MetaRocq.Common.BasicAst.
Import MetaRocq.Common.config.
Import Stdlib.ssr.ssreflect.

Local Open Scope nat_scope.
Local Open Scope string_scope2.

Implicit Types (cf : checker_flags).

Ltac absurd :=
  match goal with
  | [H: ~ True |- _] => elim (H I)
  | [H : False |- _] => elim H
  | H: is_true false |- _ => discriminate H
  | |- False -> _ => let H := fresh in intro H; elim H
  | |- _ -> False -> _ => let H := fresh in intros ? H; elim H
  | |- is_true false -> _ => let H := fresh in intro H; discriminate H
  | |- _ -> is_true false -> _ => let H := fresh in intros ? H; discriminate H
  end.
#[global]
Hint Extern 10 => absurd : core.




Record valuation :=
  { valuation_mono : string -> positive ;
    valuation_poly : nat -> nat }.

Class Evaluable (A : Type) := val : valuation -> A -> nat.


Module Level.
  Inductive t_ : Set :=
  | lzero
  | level (_ : string)
  | lvar (_ : nat) .
  Derive NoConfusion for t_.

  Definition t := t_.

  Definition is_set (x : t) :=
    match x with
    | lzero => true
    | _ => false
    end.

  Definition is_var (l : t) :=
    match l with
    | lvar _ => true
    | _ => false
    end.

  Global Instance Evaluable : Evaluable t
    := fun v l => match l with
               | lzero =>  (0%nat)
               | level s => (Pos.to_nat (v.(valuation_mono) s))
               | lvar x => (v.(valuation_poly) x)
               end.

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
  Derive Signature for lt_.

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

  Global Instance eqb_refl : @Reflexive Level.t eqb.
Admitted.

  Definition eqb := eq_level.

  Lemma eqb_spec l l' : reflect (eq l l') (eqb l l').
Admitted.

  Definition eq_leibniz (x y : t) : eq x y -> x = y := id.

  Definition eq_dec : forall (l1 l2 : t), {l1 = l2}+{l1 <> l2} := Classes.eq_dec.

End Level.

Module LevelSet := MSetAVL.Make Level.
Module LevelSetFact := WFactsOn Level LevelSet.
Module LevelSetOrdProp := MSetProperties.OrdProperties LevelSet.
Module LevelSetProp := LevelSetOrdProp.P.
Module LevelSetDecide := LevelSetProp.Dec.
Module LevelSetExtraOrdProp := MSets.ExtraOrdProperties LevelSet LevelSetOrdProp.
Module LevelSetExtraDecide := MSetAVL.Decide Level LevelSet.
Module LS := LevelSet.
Notation "(=_lset)" := LevelSet.Equal (at level 0).
Infix "=_lset" := LevelSet.Equal (at level 30).
Notation "(==_lset)" := LevelSet.equal (at level 0).
Infix "==_lset" := LevelSet.equal (at level 30).

Section LevelSetMoreFacts.

  Definition LevelSet_pair x y
    := LevelSet.add y (LevelSet.singleton x).

  Lemma LevelSet_pair_In x y z :
    LevelSet.In x (LevelSet_pair y z) -> x = y \/ x = z.
Admitted.

  Definition LevelSet_mem_union (s s' : LevelSet.t) x :
    LevelSet.mem x (LevelSet.union s s') <-> LevelSet.mem x s \/ LevelSet.mem x s'.
Admitted.

  Lemma LevelSet_In_fold_right_add x l :
    In x l <-> LevelSet.In x (fold_right LevelSet.add LevelSet.empty l).
Admitted.

  Lemma LevelSet_union_empty s : LevelSet.Equal (LevelSet.union LevelSet.empty s) s.
Admitted.
End LevelSetMoreFacts.


Module PropLevel.

  Inductive t := lSProp | lProp.
  Derive NoConfusion EqDec for t.
  

  Definition compare (l1 l2 : t) : comparison :=
    match l1, l2 with
    | lSProp, lSProp  => Eq
    | lProp, lProp  => Eq
    | lProp, lSProp => Gt
    | lSProp, lProp => Lt
    end.

  Inductive lt_ : t -> t -> Prop :=
    ltSPropProp : lt_ lSProp lProp.

  Definition lt := lt_.

  Global Instance lt_strorder : StrictOrder lt.
Admitted.

End PropLevel.

Module LevelExpr.
  Definition t := (Level.t * nat)%type.

  Global Instance Evaluable : Evaluable t
    := fun v l => (snd l + val v (fst l)).

  Definition succ (l : t) := (fst l, S (snd l)).

  Definition get_level (e : t) : Level.t := fst e.

  Definition get_noprop (e : LevelExpr.t) := Some (fst e).

  Definition is_level (e : t) : bool :=
    match e with
    | (_, 0%nat) => true
    | _  => false
    end.

  Definition make (l : Level.t) : t := (l, 0%nat).

  Definition set : t := (Level.lzero, 0%nat).
  Definition type1 : t := (Level.lzero, 1%nat).

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

  Global Instance reflect_t : ReflectEq t := reflect_prod _ _ .

  Definition eq_dec : forall (l1 l2 : t), {l1 = l2} + {l1 <> l2} := Classes.eq_dec.

  Definition eq_leibniz (x y : t) : eq x y -> x = y := id.

  Lemma val_make v l
    : val v (LevelExpr.make l) = val v l.
Admitted.

  Lemma val_make_npl v (l : Level.t)
    : val v (LevelExpr.make l) = val v l.
Admitted.

End LevelExpr.

Module LevelExprSet := MSetList.MakeWithLeibniz LevelExpr.
Module LevelExprSetFact := WFactsOn LevelExpr LevelExprSet.
Module LevelExprSetOrdProp := MSetProperties.OrdProperties LevelExprSet.
Module LevelExprSetProp := LevelExprSetOrdProp.P.
Module LevelExprSetDecide := LevelExprSetProp.Dec.
Module LevelExprSetExtraOrdProp := MSets.ExtraOrdProperties LevelExprSet LevelExprSetOrdProp.


#[global, program] Instance levelexprset_reflect : ReflectEq LevelExprSet.t :=
  { eqb := LevelExprSet.equal }.
Admit Obligations.

#[global] Instance levelexprset_eq_dec : Classes.EqDec LevelExprSet.t := Classes.eq_dec.

Record nonEmptyLevelExprSet
  := { t_set : LevelExprSet.t ;
       t_ne  : LevelExprSet.is_empty t_set = false }.

Derive NoConfusion for nonEmptyLevelExprSet.


Coercion t_set : nonEmptyLevelExprSet >-> LevelExprSet.t.

Module NonEmptySetFacts.
  Definition singleton (e : LevelExpr.t) : nonEmptyLevelExprSet
    := {| t_set := LevelExprSet.singleton e;
          t_ne := eq_refl |}.

  Lemma not_Empty_is_empty s :
    ~ LevelExprSet.Empty s -> LevelExprSet.is_empty s = false.
Admitted.

  Program Definition add (e : LevelExpr.t) (u : nonEmptyLevelExprSet) : nonEmptyLevelExprSet
    := {| t_set := LevelExprSet.add e u |}.
Admit Obligations.

  Lemma add_spec e u e' :
    LevelExprSet.In e' (add e u) <-> e' = e \/ LevelExprSet.In e' u.
Admitted.

  Definition add_list : list LevelExpr.t -> nonEmptyLevelExprSet -> nonEmptyLevelExprSet
    := List.fold_left (fun u e => add e u).

  Lemma add_list_spec l u e :
    LevelExprSet.In e (add_list l u) <-> In e l \/ LevelExprSet.In e u.
Admitted.

  Program Definition to_nonempty_list (u : nonEmptyLevelExprSet) : LevelExpr.t * list LevelExpr.t
    := match LevelExprSet.elements u with
       | [] => False_rect _ _
       | e :: l => (e, l)
       end.
Admit Obligations.

  Lemma singleton_to_nonempty_list e : to_nonempty_list (singleton e) = (e, []).
Admitted.

  Lemma to_nonempty_list_spec u :
    let '(e, u') := to_nonempty_list u in
    e :: u' = LevelExprSet.elements u.
Admitted.

  Lemma to_nonempty_list_spec' u :
    (to_nonempty_list u).1 :: (to_nonempty_list u).2 = LevelExprSet.elements u.
Admitted.

  Lemma In_to_nonempty_list (u : nonEmptyLevelExprSet) (e : LevelExpr.t) :
    LevelExprSet.In e u
    <-> e = (to_nonempty_list u).1 \/ In e (to_nonempty_list u).2.
Admitted.

  Lemma In_to_nonempty_list_rev (u : nonEmptyLevelExprSet) (e : LevelExpr.t) :
    LevelExprSet.In e u
    <-> e = (to_nonempty_list u).1 \/ In e (List.rev (to_nonempty_list u).2).
Admitted.

  Definition map (f : LevelExpr.t -> LevelExpr.t) (u : nonEmptyLevelExprSet) : nonEmptyLevelExprSet :=
    let '(e, l) := to_nonempty_list u in
    add_list (List.map f l) (singleton (f e)).

  Lemma map_spec f u e :
    LevelExprSet.In e (map f u) <-> exists e0, LevelExprSet.In e0 u /\ e = (f e0).
Admitted.

  Program Definition non_empty_union (u v : nonEmptyLevelExprSet) : nonEmptyLevelExprSet :=
    {| t_set := LevelExprSet.union u v |}.
Admit Obligations.

  Lemma elements_not_empty (u : nonEmptyLevelExprSet) : LevelExprSet.elements u <> [].
Admitted.

  Lemma eq_univ (u v : nonEmptyLevelExprSet) :
    u = v :> LevelExprSet.t -> u = v.
Admitted.

  Lemma eq_univ' (u v : nonEmptyLevelExprSet) :
    LevelExprSet.Equal u v -> u = v.
Admitted.

  Lemma eq_univ'' (u v : nonEmptyLevelExprSet) :
    LevelExprSet.elements u = LevelExprSet.elements v -> u = v.
Admitted.

  Lemma univ_expr_eqb_true_iff (u v : nonEmptyLevelExprSet) :
    LevelExprSet.equal u v <-> u = v.
Admitted.

  Lemma univ_expr_eqb_comm (u v : nonEmptyLevelExprSet) :
    LevelExprSet.equal u v <-> LevelExprSet.equal v u.
Admitted.

  Lemma LevelExprSet_for_all_false f u :
    LevelExprSet.for_all f u = false -> LevelExprSet.exists_ (negb ∘ f) u.
Admitted.

  Lemma LevelExprSet_For_all_exprs (P : LevelExpr.t -> Prop) (u : nonEmptyLevelExprSet)
    : LevelExprSet.For_all P u
      <-> P (to_nonempty_list u).1 /\ Forall P (to_nonempty_list u).2.
Admitted.

End NonEmptySetFacts.
Import NonEmptySetFacts.

Module Universe.
  

  Definition t := nonEmptyLevelExprSet.

  
  #[global, program] Instance levelexprset_reflect : ReflectEq t :=
    { eqb x y := eqb x.(t_set) y.(t_set) }.
Admit Obligations.

  #[global] Instance eq_dec_univ0 : EqDec t := eq_dec.

  Definition make (e: LevelExpr.t) : t := singleton e.
  Definition make' (l: Level.t) : t := singleton (LevelExpr.make l).

  Lemma make'_inj l l' : make' l = make' l' -> l = l'.
Admitted.

  
  Definition exprs : t -> LevelExpr.t * list LevelExpr.t := to_nonempty_list.

  Global Instance Evaluable : Evaluable Universe.t
    := fun v u =>
      let '(e, u) := Universe.exprs u in
      List.fold_left (fun n e => Nat.max (val v e) n) u (val v e).

  
  Definition is_levels (u : t) : bool :=
    LevelExprSet.for_all LevelExpr.is_level u.

  
  Definition is_level (u : t) : bool :=
    (LevelExprSet.cardinal u =? 1)%nat && is_levels u.

  
  Definition from_kernel_repr (e : Level.t * nat) (es : list (Level.t * nat)) : t
    := add_list es (Universe.make e).

  Definition succ : t -> t := map LevelExpr.succ.

  
  Definition sup : t -> t -> t := non_empty_union.

  Definition get_is_level (u : t) : option Level.t :=
    match LevelExprSet.elements u with
    | [(l, 0%nat)] => Some l
    | _ => None
    end.

  Lemma val_make v e : val v (make e) = val v e.
Admitted.

  Lemma val_make' v l
    : val v (make' l) = val v l.
Admitted.

  Definition lt : t -> t -> Prop := LevelExprSet.lt.
  Definition lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.
  #[global] Instance lt_strorder : StrictOrder lt.
Admitted.
End Universe.

Ltac u :=
  change LevelSet.elt with Level.t in *;
  change LevelExprSet.elt with LevelExpr.t in *.
  

Lemma val_fold_right (u : Universe.t) v :
  val v u = fold_right (fun e x => Nat.max (val v e) x) (val v (Universe.exprs u).1)
                       (List.rev (Universe.exprs u).2).
Admitted.

Lemma val_In_le (u : Universe.t) v e :
  LevelExprSet.In e u -> val v e <= val v u.
Admitted.

Lemma val_In_max (u : Universe.t) v :
  exists e, LevelExprSet.In e u /\ val v e = val v u.
Admitted.

Lemma val_ge_caract (u : Universe.t) v k :
  (forall e, LevelExprSet.In e u -> val v e <= k) <-> val v u <= k.
Admitted.

Lemma val_le_caract (u : Universe.t) v k :
  (exists e, LevelExprSet.In e u /\ k <= val v e) <-> k <= val v u.
Admitted.

Lemma val_caract (u : Universe.t) v k :
  val v u = k
  <-> (forall e, LevelExprSet.In e u -> val v e <= k)
    /\ exists e, LevelExprSet.In e u /\ val v e = k.
Admitted.

Lemma val_add v e (s: Universe.t)
  : val v (add e s) = Nat.max (val v e) (val v s).
Admitted.

Lemma val_sup v s1 s2 :
  val v (Universe.sup s1 s2) = Nat.max (val v s1) (val v s2).
Admitted.

Lemma for_all_elements (P : LevelExpr.t -> bool) u :
  LevelExprSet.for_all P u = forallb P (LevelExprSet.elements u).
Admitted.

Lemma universe_get_is_level_correct u l :
  Universe.get_is_level u = Some l -> u = Universe.make' l.
Admitted.

Lemma sup0_comm x1 x2 :
  Universe.sup x1 x2 = Universe.sup x2 x1.
Admitted.



Module ConstraintType.
  Inductive t_ : Set := Le (z : Z) | Eq.
  Derive NoConfusion EqDec for t_.

  Definition t := t_.
  Definition eq : t -> t -> Prop := eq.
  Definition eq_equiv : Equivalence eq := _.

  Definition Le0 := Le 0.
  Definition Lt := Le 1.

  Inductive lt_ : t -> t -> Prop :=
  | LeLe n m : (n < m)%Z -> lt_ (Le n) (Le m)
  | LeEq n : lt_ (Le n) Eq.
  Derive Signature for lt_.
  Definition lt := lt_.

  Global Instance lt_strorder : StrictOrder lt.
Admitted.

  Global Instance lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.

  Definition compare (x y : t) : comparison :=
    match x, y with
    | Le n, Le m => Z.compare n m
    | Le _, Eq => Datatypes.Lt
    | Eq, Eq => Datatypes.Eq
    | Eq, _  => Datatypes.Gt
    end.

  Lemma compare_spec x y : CompareSpec (eq x y) (lt x y) (lt y x) (compare x y).
Admitted.

  Lemma eq_dec x y : {eq x y} + {~ eq x y}.
Admitted.
End ConstraintType.

Module UnivConstraint.
  Definition t : Set := Level.t * ConstraintType.t * Level.t.
Definition eq : t -> t -> Prop. exact (eq). Defined.
Definition eq_equiv : Equivalence eq. exact (_). Defined.

  Definition make l1 ct l2 : t := (l1, ct, l2).

  Inductive lt_ : t -> t -> Prop :=
  | lt_Level2 l1 t l2 l2' : Level.lt l2 l2' -> lt_ (l1, t, l2) (l1, t, l2')
  | lt_Cstr l1 t t' l2 l2' : ConstraintType.lt t t' -> lt_ (l1, t, l2) (l1, t', l2')
  | lt_Level1 l1 l1' t t' l2 l2' : Level.lt l1 l1' -> lt_ (l1, t, l2) (l1', t', l2').
  Definition lt := lt_.

  Lemma lt_strorder : StrictOrder lt.
Admitted.

  Lemma lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.
Definition compare : t -> t -> comparison. exact (fun '(l1, t, l2) '(l1', t', l2') =>
      compare_cont (Level.compare l1 l1')
        (compare_cont (ConstraintType.compare t t')
                    (Level.compare l2 l2'))). Defined.

  Lemma compare_spec x y
    : CompareSpec (eq x y) (lt x y) (lt y x) (compare x y).
Admitted.

  Lemma eq_dec x y : {eq x y} + {~ eq x y}.
Admitted.
Definition eq_leibniz (x y : t) : eq x y -> x = y. exact (id). Defined.
End UnivConstraint.

Module ConstraintSet := MSetAVL.Make UnivConstraint.
Module ConstraintSetFact := WFactsOn UnivConstraint ConstraintSet.
Module ConstraintSetOrdProp := MSetProperties.OrdProperties ConstraintSet.
Module ConstraintSetProp := ConstraintSetOrdProp.P.
Module CS := ConstraintSet.
Module ConstraintSetDecide := ConstraintSetProp.Dec.
Module ConstraintSetExtraOrdProp := MSets.ExtraOrdProperties ConstraintSet ConstraintSetOrdProp.
Module ConstraintSetExtraDecide := MSetAVL.Decide UnivConstraint ConstraintSet.

Notation "(=_cset)" := ConstraintSet.Equal (at level 0).
Infix "=_cset" := ConstraintSet.Equal (at level 30).
Notation "(==_cset)" := ConstraintSet.equal (at level 0).
Infix "==_cset" := ConstraintSet.equal (at level 30).

Definition declared_cstr_levels levels (cstr : UnivConstraint.t) :=
  let '(l1,_,l2) := cstr in
  LevelSet.In l1 levels /\ LevelSet.In l2 levels.

Definition is_declared_cstr_levels levels (cstr : UnivConstraint.t) : bool :=
  let '(l1,_,l2) := cstr in
  LevelSet.mem l1 levels && LevelSet.mem l2 levels.

Lemma CS_union_empty s : ConstraintSet.union ConstraintSet.empty s =_cset s.
Admitted.

Lemma CS_For_all_union f cst cst' : ConstraintSet.For_all f (ConstraintSet.union cst cst') ->
  ConstraintSet.For_all f cst.
Admitted.

Lemma CS_For_all_add P x s : CS.For_all P (CS.add x s) -> P x /\ CS.For_all P s.
Admitted.

#[global] Instance CS_For_all_proper P : Morphisms.Proper ((=_cset) ==> iff)%signature (ConstraintSet.For_all P).
Admitted.



Module Instance.
Definition t : Set. exact (list Level.t). Defined.
Definition empty : t. exact ([]). Defined.
Definition is_empty (i : t) : bool. exact (match i with
    | [] => true
    | _ => false
    end). Defined.

  Definition eqb (i j : t) :=
    forallb2 Level.eqb i j.

  Definition equal_upto (f : Level.t -> Level.t -> bool) (i j : t) :=
    forallb2 f i j.
End Instance.

Module UContext.
  Definition t := list name × (Instance.t × ConstraintSet.t).
Definition make' : Instance.t -> ConstraintSet.t -> Instance.t × ConstraintSet.t. exact (pair). Defined.
Definition make (ids : list name) (inst_ctrs : Instance.t × ConstraintSet.t) : t. exact ((ids, inst_ctrs)). Defined.
Definition empty : t. exact (([], (Instance.empty, ConstraintSet.empty))). Defined.
Definition instance : t -> Instance.t. exact (fun x => fst (snd x)). Defined.
Definition constraints : t -> ConstraintSet.t. exact (fun x => snd (snd x)). Defined.
Definition dest : t -> list name * (Instance.t * ConstraintSet.t). exact (fun x => x). Defined.
End UContext.

Module AUContext.
  Definition t := list name × ConstraintSet.t.
Definition make (ids : list name) (ctrs : ConstraintSet.t) : t. exact ((ids, ctrs)). Defined.
Definition repr (x : t) : UContext.t. exact (let (u, cst) := x in
    (u, (mapi (fun i _ => Level.lvar i) u, cst))). Defined.
Definition levels (uctx : t) : LevelSet.t. exact (LevelSetProp.of_list (fst (snd (repr uctx)))). Defined.

  #[local]
  Existing Instance EqDec_ReflectEq.
Definition inter (au av : AUContext.t) : AUContext.t. exact (let prefix := (split_prefix au.1 av.1).1.1 in
    let lvls := fold_left_i (fun s i _ => LevelSet.add (Level.lvar i) s) prefix LevelSet.empty in
    let filter := ConstraintSet.filter (is_declared_cstr_levels lvls) in
    make prefix (ConstraintSet.union (filter au.2) (filter av.2))). Defined.
End AUContext.

Module ContextSet.
  Definition t := LevelSet.t × ConstraintSet.t.
Definition levels : t -> LevelSet.t. exact (fst). Defined.
Definition constraints : t -> ConstraintSet.t. exact (snd). Defined.
Definition empty : t. exact ((LevelSet.empty, ConstraintSet.empty)). Defined.

  Definition is_empty (uctx : t)
    := LevelSet.is_empty (fst uctx) && ConstraintSet.is_empty (snd uctx).
Definition Equal (x y : t) : Prop. exact (x.1 =_lset y.1 /\ x.2 =_cset y.2). Defined.
Definition equal (x y : t) : bool. exact (x.1 ==_lset y.1 && x.2 ==_cset y.2). Defined.
Definition Subset (x y : t) : Prop. exact (LevelSet.Subset (levels x) (levels y) /\
    ConstraintSet.Subset (constraints x) (constraints y)). Defined.
Definition subset (x y : t) : bool. exact (LevelSet.subset (levels x) (levels y) &&
    ConstraintSet.subset (constraints x) (constraints y)). Defined.
Definition inter (x y : t) : t. exact ((LevelSet.inter (levels x) (levels y),
      ConstraintSet.inter (constraints x) (constraints y))). Defined.

  Definition inter_spec (x y : t) :
    Subset (inter x y) x /\
      Subset (inter x y) y /\
      forall z, Subset z x -> Subset z y -> Subset z (inter x y).
Admitted.
Definition union (x y : t) : t. exact ((LevelSet.union (levels x) (levels y), ConstraintSet.union (constraints x) (constraints y))). Defined.

  Definition union_spec (x y : t) :
    Subset x (union x y) /\
      Subset y (union x y) /\
      forall z, Subset x z -> Subset y z -> Subset (union x y) z.
Admitted.

  Lemma equal_spec s s' : equal s s' <-> Equal s s'.
Admitted.

  Lemma subset_spec s s' : subset s s' <-> Subset s s'.
Admitted.

  Lemma subsetP s s' : reflect (Subset s s') (subset s s').
Admitted.
End ContextSet.

Export (hints) ContextSet.

Notation "(=_cs)" := ContextSet.Equal (at level 0).
Notation "(⊂_cs)" := ContextSet.Subset (at level 0).
Infix "=_cs" := ContextSet.Equal (at level 30).
Infix "⊂_cs" := ContextSet.Subset (at level 30).
Notation "(==_cs)" := ContextSet.equal (at level 0).
Notation "(⊂?_cs)" := ContextSet.subset (at level 0).
Infix "==_cs" := ContextSet.equal (at level 30).
Infix "⊂?_cs" := ContextSet.subset (at level 30).

Lemma incl_cs_refl cs : cs ⊂_cs cs.
Admitted.

Lemma incl_cs_trans cs1 cs2 cs3 : cs1 ⊂_cs cs2 -> cs2 ⊂_cs cs3 -> cs1 ⊂_cs cs3.
Admitted.

Lemma empty_contextset_subset u : ContextSet.empty ⊂_cs u.
Admitted.


Module Variance.
  
  Inductive t :=
  | Irrelevant : t
  | Covariant : t
  | Invariant : t.
  Derive NoConfusion EqDec for t.

  
  
End Variance.


Variant opt_variance :=
  AllEqual | AllIrrelevant | Variance of list Variance.t.

Inductive universes_decl : Type :=
| Monomorphic_ctx
| Polymorphic_ctx (cst : AUContext.t).

Derive NoConfusion for universes_decl.

Definition levels_of_udecl u :=
  match u with
  | Monomorphic_ctx => LevelSet.empty
  | Polymorphic_ctx ctx => AUContext.levels ctx
  end.

Definition constraints_of_udecl u :=
  match u with
  | Monomorphic_ctx => ConstraintSet.empty
  | Polymorphic_ctx ctx => snd (snd (AUContext.repr ctx))
  end.

Declare Scope univ_scope.
Delimit Scope univ_scope with u.

Inductive satisfies0 (v : valuation) : UnivConstraint.t -> Prop :=
| satisfies0_Lt (l l' : Level.t) (z : Z) : (Z.of_nat (val v l) <= Z.of_nat (val v l') - z)%Z
                        -> satisfies0 v (l, ConstraintType.Le z, l')
| satisfies0_Eq (l l' : Level.t) : val v l = val v l'
                        -> satisfies0 v (l, ConstraintType.Eq, l').

Definition satisfies v : ConstraintSet.t -> Prop :=
  ConstraintSet.For_all (satisfies0 v).

Lemma satisfies_union v φ1 φ2 :
  satisfies v (CS.union φ1 φ2)
  <-> (satisfies v φ1 /\ satisfies v φ2).
Admitted.

Lemma satisfies_subset φ φ' val :
  ConstraintSet.Subset φ φ' ->
  satisfies val φ' ->
  satisfies val φ.
Admitted.

Definition consistent ctrs := exists v, satisfies v ctrs.

Definition consistent_extension_on cs cstr :=
  forall v, satisfies v (ContextSet.constraints cs) -> exists v',
      satisfies v' cstr /\
        LevelSet.For_all (fun l => val v l = val v' l) (ContextSet.levels cs).

Lemma consistent_extension_on_empty Σ :
  consistent_extension_on Σ CS.empty.
Admitted.

Lemma consistent_extension_on_union X cstrs
  (wfX : forall c, CS.In c X.2 -> LS.In c.1.1 X.1 /\ LS.In c.2 X.1) :
  consistent_extension_on X cstrs <->
  consistent_extension_on X (CS.union cstrs X.2).
Admitted.

Definition leq0_universe_n n φ (u u' : Universe.t) :=
  forall v, satisfies v φ -> (Z.of_nat (val v u) <= Z.of_nat (val v u') - n)%Z.

Definition leq_universe_n {cf} n φ (u u' : Universe.t) :=
  if check_univs then leq0_universe_n n φ u u' else True.

Definition lt_universe {cf} := leq_universe_n 1.
Definition leq_universe {cf} := leq_universe_n 0.

Definition eq0_universe φ (u u' : Universe.t) :=
  forall v, satisfies v φ -> val v u = val v u'.

Definition eq_universe {cf} φ (u u' : Universe.t) :=
  if check_univs then eq0_universe φ u u' else True.



Definition valid_constraints0 φ ctrs
  := forall v, satisfies v φ -> satisfies v ctrs.

Definition valid_constraints {cf} φ ctrs
  := if check_univs then valid_constraints0 φ ctrs else True.

Definition compare_universe {cf} φ (pb : conv_pb) :=
  match pb with
  | Conv => eq_universe φ
  | Cumul => leq_universe φ
  end.

Ltac unfold_univ_rel0 :=
  unfold eq0_universe, leq0_universe_n, valid_constraints0 in *;
  try (
    match goal with |- forall v : valuation, _ -> _ => idtac end;
    intros v Hv;
    repeat match goal with H : forall v : valuation, _ -> _ |- _ => specialize (H v Hv) end;
    cbnr
  ).

Ltac unfold_univ_rel :=
  unfold eq_universe, leq_universe, lt_universe, leq_universe_n, valid_constraints in *;
  destruct check_univs; [unfold_univ_rel0 | trivial].

Section Univ.
  Context {cf}.

  Lemma valid_subset φ φ' ctrs
    : ConstraintSet.Subset φ φ' -> valid_constraints φ ctrs
      ->  valid_constraints φ' ctrs.
Admitted.

  Lemma switch_minus (x y z : Z) : (x <= y - z <-> x + z <= y)%Z.
Admitted.

  

  Global Instance eq_universe_refl φ : Reflexive (eq_universe φ).
Admitted.

  Global Instance leq_universe_refl φ : Reflexive (leq_universe φ).
Admitted.

  Global Instance eq_universe_sym φ : Symmetric (eq_universe φ).
Admitted.

  Global Instance eq_universe_trans φ : Transitive (eq_universe φ).
Admitted.

  Global Instance leq_universe_n_trans n φ : Transitive (leq_universe_n (Z.of_nat n) φ).
Admitted.

  Global Instance leq_universe_trans φ : Transitive (leq_universe φ).
Admitted.

  Global Instance lt_universe_trans φ : Transitive (lt_universe φ).
Admitted.

  Lemma eq0_leq0_universe φ u u' :
    eq0_universe φ u u' <-> leq0_universe_n 0 φ u u' /\ leq0_universe_n 0 φ u' u.
Admitted.

  Lemma eq_universe_leq_universe φ u u' :
    eq_universe φ u u' <-> leq_universe φ u u' /\ leq_universe φ u' u.
Admitted.

  Lemma leq_universe_sup_l φ u1 u2 : leq_universe φ u1 (Universe.sup u1 u2).
Admitted.

  Lemma leq_universe_sup_r φ u1 u2 : leq_universe φ u2 (Universe.sup u1 u2).
Admitted.

  Lemma leq_universe_sup_mon φ u1 u1' u2 u2' : leq_universe φ u1 u1' -> leq_universe φ u2 u2' ->
    leq_universe φ (Universe.sup u1 u2) (Universe.sup u1' u2').
Admitted.

  Global Instance eq_leq_universe φ : subrelation (eq_universe φ) (leq_universe φ).
Admitted.
Global Instance eq_universe_equivalence φ : Equivalence (eq_universe φ). exact (Build_Equivalence _ _ _ _). Defined.
Global Instance leq_universe_preorder φ : PreOrder (leq_universe φ). exact (Build_PreOrder _ _ _). Defined.

  Global Instance lt_universe_irrefl {c: check_univs} φ (H: consistent φ) : Irreflexive (lt_universe φ).
Admitted.

  Global Instance lt_universe_str_order {c: check_univs} φ (H: consistent φ) : StrictOrder (lt_universe φ).
Admitted.

  Global Instance leq_universe_antisym φ : Antisymmetric _ (eq_universe φ) (leq_universe φ).
Admitted.

  Global Instance leq_universe_partial_order φ
    : PartialOrder (eq_universe φ) (leq_universe φ).
Admitted.

  Global Instance compare_universe_subrel φ pb : subrelation (eq_universe φ) (compare_universe φ pb).
Admitted.

  Global Instance compare_universe_refl φ pb : Reflexive (compare_universe φ pb).
Admitted.

  Global Instance compare_universe_trans φ pb : Transitive (compare_universe φ pb).
Admitted.

  Global Instance compare_universe_preorder φ pb : PreOrder (compare_universe φ pb).
Admitted.

  Definition eq_leq_universe' φ u u'
    := @eq_leq_universe φ u u'.
  Definition leq_universe_refl' φ u
    := @leq_universe_refl φ u.

  Hint Resolve eq_leq_universe' leq_universe_refl' : core.

  Lemma cmp_universe_subset φ φ' pb t u :
    ConstraintSet.Subset φ φ' -> compare_universe φ pb t u -> compare_universe φ' pb t u.
Admitted.

  Lemma eq_universe_subset φ φ' t u
    : ConstraintSet.Subset φ φ'
      -> eq_universe φ t u -> eq_universe φ' t u.
Admitted.

  Lemma leq_universe_subset φ φ' t u
    : ConstraintSet.Subset φ φ'
      -> leq_universe φ t u -> leq_universe φ' t u.
Admitted.

End Univ.

Module Sort.
  Inductive t_ {univ} :=
    sProp | sSProp | sType (_ : univ).
  Derive NoConfusion for t_.
  Arguments t_ : clear implicits.

  Definition t := t_ Universe.t.

  Inductive family : Set :=
  | fSProp
  | fProp
  | fType.
  Derive NoConfusion EqDec for family.
Definition eqb {univ} `{ReflectEq univ} (u1 u2 : t_ univ) : bool. exact (match u1, u2 with
    | sSProp, sSProp => true
    | sProp, sProp => true
    | sType e1, sType e2 => eqb e1 e2
    | _, _ => false
    end). Defined.

  #[global, program] Instance reflect_eq_sort {univ} `{ReflectEq univ} : ReflectEq (t_ univ) :=
    { eqb := eqb }.
Admit Obligations.
#[global] Instance eq_dec_sort {univ} `{EqDec univ} : EqDec (t_ univ). exact (ltac:(intros s s'; decide equality)). Defined.

  Definition map {u u'} (f : u -> u') s :=
    match s with
    | sType u => sType (f u)
    | sProp => sProp
    | sSProp => sSProp
    end.

  Definition on_sort {univ} {T} (P: univ -> T) (def: T) (s : t_ univ) :=
    match s with
    | sProp | sSProp => def
    | sType l => P l
    end.
Definition is_levels (s : t) : bool. exact (match s with
    | sSProp | sProp => true
    | sType l => Universe.is_levels l
    end). Defined.
Definition is_level (s : t) : bool. exact (match s with
    | sSProp | sProp => true
    | sType l => Universe.is_level l
    end). Defined.
Definition is_sprop {univ} (s : t_ univ) : bool. exact (match s with
      | sSProp => true
      | _ => false
    end). Defined.
Definition is_prop {univ} (s : t_ univ) : bool. exact (match s with
      | sProp => true
      | _ => false
    end). Defined.
Definition is_propositional {univ} (s : t_ univ) : bool. exact (match s with
      | sProp | sSProp => true
      | _ => false
    end). Defined.

  Lemma is_prop_propositional {univ} (s : t_ univ) :
    is_prop s -> is_propositional s.
Admitted.
  Lemma is_sprop_propositional {univ} (s : t_ univ) :
    is_sprop s -> is_propositional s.
Admitted.
Definition is_type_sort {univ} (s : t_ univ) : bool. exact (match s with
      | sType _ => true
      | _ => false
    end). Defined.
Definition type0 : t. exact (sType (Universe.make LevelExpr.set)). Defined.
Definition type1 : t. exact (sType (Universe.make LevelExpr.type1)). Defined.
Definition of_levels (l : PropLevel.t + Level.t) : t. exact (match l with
    | inl PropLevel.lSProp => sSProp
    | inl PropLevel.lProp => sProp
    | inr l => sType (Universe.make' l)
    end). Defined.

  

  Definition super_ {univ} type1 univ_succ (s : t_ univ) : t_ univ :=
    match s with
    | sSProp | sProp => sType type1
    | sType l => sType (univ_succ l)
    end.
Definition super : t -> t. exact (super_ (Universe.make LevelExpr.type1) Universe.succ). Defined.
  Definition csuper := super_ 1 S.

  Definition sup_ {univ} univ_sup (s s' : t_ univ) : t_ univ :=
    match s, s' with
    | sSProp, s' => s'
    | sProp, sSProp => sProp
    | sProp, s' => s'
    | sType u1, sType u2 => sType (univ_sup u1 u2)
    | sType _ as s, _ => s
    end.
Definition sup : t -> t -> t. exact (sup_ Universe.sup). Defined.
  Definition csup := sup_ Nat.max.

  
  Definition sort_of_product_ {univ} univ_sup (domsort rangsort : t_ univ) : t_ univ :=
    match rangsort with
    | sSProp | sProp => rangsort
    
    | _ => Sort.sup_ univ_sup domsort rangsort
    end.
Definition sort_of_product : t -> t -> t. exact (sort_of_product_ Universe.sup). Defined.
  Definition csort_of_product := sort_of_product_ Nat.max.
Definition get_is_level (s : t) : option Level.t. exact (match s with
    | sSProp => None
    | sProp => None
    | sType l => Universe.get_is_level l
    end). Defined.

  Definition to_family {univ} (s : t_ univ) :=
    match s with
    | sSProp => fSProp
    | sProp => fProp
    | sType _ => fType
    end.

  Definition to_csort v s :=
    match s with
    | sSProp => sSProp
    | sProp => sProp
    | sType u => sType (val v u)
    end.

  Lemma to_family_to_csort s v :
    to_family (to_csort v s) = to_family s.
Admitted.

  Lemma sType_super_ {univ type1 univ_succ} (s : t_ univ) :
    to_family (super_ type1 univ_succ s) = fType.
Admitted.

  Lemma sType_super (s : t) :
    to_family (super s) = fType.
Admitted.

  Inductive lt_ {univ univ_lt} : t_ univ -> t_ univ -> Prop :=
  | ltPropSProp : lt_ sProp sSProp
  | ltPropType s : lt_ sProp (sType s)
  | ltSPropType s : lt_ sSProp (sType s)
  | ltTypeType s1 s2 : univ_lt s1 s2 -> lt_ (sType s1) (sType s2).
  Derive Signature for lt_.
  Arguments lt_ {univ} univ_lt.

  Definition lt := lt_ Universe.lt.
  Definition clt := lt_ Nat.lt.

  Module OT <: OrderedType.
    Definition t := t.
#[local] Definition eq : t -> t -> Prop. exact (eq). Defined.
#[local] Definition eq_equiv : Equivalence eq. exact (_). Defined.
    Definition lt := lt.
    #[local] Instance lt_strorder : StrictOrder lt.
Admitted.

    Definition lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.
Definition compare (x y : t) : comparison. exact (match x, y with
          | sProp, sProp => Eq
          | sProp, _ => Lt
          | _, sProp => Gt
          | sSProp, sSProp => Eq
          | sSProp, _ => Lt
          | _, sSProp => Gt
          | sType x, sType y => LevelExprSet.compare x y
          end). Defined.
    Lemma compare_spec x y : CompareSpec (eq x y) (lt x y) (lt y x) (compare x y).
Admitted.
    Definition eq_dec (x y : t) : {x = y} + {x <> y}.
Admitted.
  End OT.
  Module OTOrig <: OrderedTypeOrig := Backport_OT OT.
End Sort.

Module SortMap := FMapAVL.Make Sort.OTOrig.
Module SortMapFact := FMapFacts.WProperties SortMap.
Module SortMapExtraFact := FSets.WFactsExtra_fun Sort.OTOrig SortMap SortMapFact.F.
Module SortMapDecide := FMapAVL.Decide Sort.OTOrig SortMap.

Notation sProp := Sort.sProp.
Notation sSProp := Sort.sSProp.
Notation sType := Sort.sType.
Notation sort := Sort.t.

Notation "⟦ u ⟧_ v" := (Sort.to_csort v u) (at level 0, format "⟦ u ⟧_ v", v name) : univ_scope.

Lemma val_sort_sup v s1 s2 :
  Sort.to_csort v (Sort.sup s1 s2) = Sort.csup (Sort.to_csort v s1) (Sort.to_csort v s2).
Admitted.

Lemma is_prop_val s :
  Sort.is_prop s -> forall v, Sort.to_csort v s = Sort.sProp.
Admitted.

Lemma is_sprop_val s :
  Sort.is_sprop s -> forall v, Sort.to_csort v s = Sort.sSProp.
Admitted.

Lemma val_is_prop s v :
  Sort.to_csort v s = sProp <-> Sort.is_prop s.
Admitted.

Lemma val_is_sprop s v :
  Sort.to_csort v s = sSProp <-> Sort.is_sprop s.
Admitted.

Lemma is_prop_and_is_sprop_val_false s :
  Sort.is_prop s = false -> Sort.is_sprop s = false ->
  forall v, ∑ n, Sort.to_csort v s = sType n.
Admitted.

Lemma val_is_prop_false s v n :
  Sort.to_csort v s = sType n -> Sort.is_prop s = false.
Admitted.

Lemma get_is_level_correct s l :
  Sort.get_is_level s = Some l -> s = sType (Universe.make' l).
Admitted.

Lemma eqb_true_iff (s s' : sort) :
  eqb s s' <-> s = s'.
Admitted.

Lemma sup_comm x1 x2 :
  Sort.sup x1 x2 = Sort.sup x2 x1.
Admitted.

Lemma is_not_prop_and_is_not_sprop {univ} (s : Sort.t_ univ) :
  Sort.is_prop s = false -> Sort.is_sprop s = false ->
  ∑ s', s = sType s'.
Admitted.

Lemma is_prop_sort_sup x1 x2 :
  Sort.is_prop (Sort.sup x1 x2)
  -> Sort.is_prop x2 \/ Sort.is_sprop x2 .
Admitted.

Lemma is_prop_sort_sup' x1 x2 :
  Sort.is_prop (Sort.sup x1 x2)
  -> Sort.is_prop x1 \/ Sort.is_sprop x1 .
Admitted.

Lemma is_prop_or_sprop_sort_sup x1 x2 :
  Sort.is_sprop (Sort.sup x1 x2) -> Sort.is_sprop x2.
Admitted.

Lemma is_prop_sort_sup_prop x1 x2 :
  Sort.is_prop x1 && Sort.is_prop x2 ->
  Sort.is_prop (Sort.sup x1 x2).
Admitted.

Lemma is_prop_or_sprop_sort_sup_prop x1 x2 :
  Sort.is_sprop x1 && Sort.is_sprop x2 ->
  Sort.is_sprop (Sort.sup x1 x2).
Admitted.

Lemma is_prop_sup s s' :
  Sort.is_prop (Sort.sup s s') ->
  Sort.is_propositional s /\ Sort.is_propositional s'.
Admitted.

Lemma is_sprop_sup_iff s s' :
  Sort.is_sprop (Sort.sup s s') <->
  (Sort.is_sprop s /\ Sort.is_sprop s').
Admitted.

Lemma is_type_sup_r s1 s2 :
  Sort.is_type_sort s2 ->
  Sort.is_type_sort (Sort.sup s1 s2).
Admitted.

Lemma is_prop_sort_prod x2 x3 :
  Sort.is_prop (Sort.sort_of_product x2 x3)
  -> Sort.is_prop x3.
Admitted.

Lemma is_sprop_sort_prod x2 x3 :
  Sort.is_sprop (Sort.sort_of_product x2 x3)
  -> Sort.is_sprop x3.
Admitted.

Section SortCompare.
  Context {cf}.
  Definition leq_sort_n_ {univ} (leq_universe_n : Z -> univ -> univ -> Prop) n s s' : Prop :=
    match s, s' with
    | sProp,   sProp
    | sSProp,  sSProp => (n = 0)%Z
    | sType u, sType u' => leq_universe_n n u u'
    | sProp,   sType u => prop_sub_type
    | _, _ => False
    end.

  Definition leq_sort_n n φ := leq_sort_n_ (fun n => leq_universe_n n φ) n.
  Definition lt_sort := leq_sort_n 1.
  Definition leq_sort := leq_sort_n 0.

  Definition leqb_sort_n_ {univ} (leqb_universe_n : bool -> univ -> univ -> bool) b s s' : bool :=
    match s, s' with
    | sProp,   sProp
    | sSProp,  sSProp => negb b
    | sType u, sType u' => leqb_universe_n b u u'
    | sProp,   sType u => prop_sub_type
    | _, _ => false
    end.

  Definition eq_sort_ {univ} (eq_universe : univ -> univ -> Prop) s s' : Prop :=
    match s, s' with
    | sProp,   sProp
    | sSProp,  sSProp => True
    | sType u, sType u' => eq_universe u u'
    | _, _ => False
    end.

  Definition eq_sort φ := eq_sort_ (eq_universe φ).

  Definition eqb_sort_ {univ} (eqb_universe : univ -> univ -> bool) s s' : bool :=
    match s, s' with
    | sProp,   sProp
    | sSProp,  sSProp => true
    | sType u, sType u' => eqb_universe u u'
    | _, _ => false
    end.

  Definition compare_sort φ (pb : conv_pb) :=
    match pb with
    | Conv => eq_sort φ
    | Cumul => leq_sort φ
    end.

  Lemma leq_sort_leq_sort_n (φ : ConstraintSet.t) s s' :
    leq_sort φ s s' <-> leq_sort_n 0 φ s s'.
Admitted.

  Lemma compare_sort_type φ pb u u' :
    compare_sort φ pb (sType u) (sType u') = compare_universe φ pb u u'.
Admitted.

  Section GeneralLemmas.
    Context {univ} {leq_universe_n : Z -> univ -> univ -> Prop} {eq_universe : univ -> univ -> Prop}.

    Let leq_sort_n := leq_sort_n_ leq_universe_n.
    Let lt_sort := leq_sort_n_ leq_universe_n 1.
    Let leq_sort := leq_sort_n_ leq_universe_n 0.
    Let eq_sort := eq_sort_ eq_universe.
    Notation "x <_ n  y" := (leq_sort_n n x y) (at level 10, n name).
    Notation "x < y" := (lt_sort x y).
    Notation "x <= y" := (leq_sort x y).

    Lemma sort_le_prop_inv s : s <= sProp -> s = sProp.
Admitted.

    Lemma sort_le_sprop_inv s : s <= sSProp -> s = sSProp.
Admitted.

    Lemma sort_prop_le_inv s : sProp <= s ->
      (s = sProp \/ (prop_sub_type /\ exists n, s = sType n)).
Admitted.

    Lemma sort_sprop_le_inv s : sSProp <= s -> s = sSProp.
Admitted.

    Global Instance leq_sort_refl `{Reflexive univ (leq_universe_n 0)} : Reflexive leq_sort.
Admitted.

    Global Instance eq_sort_refl `{Reflexive univ eq_universe} : Reflexive eq_sort.
Admitted.

    Global Instance eq_sort_sym `{Symmetric univ eq_universe} : Symmetric eq_sort.
Admitted.

    Global Instance leq_sort_n_trans n `{Transitive univ (leq_universe_n n)} : Transitive (leq_sort_n n).
Admitted.

    Global Instance leq_sort_trans `{Transitive univ (leq_universe_n 0)} : Transitive leq_sort.
Admitted.

    Global Instance lt_sort_trans `{Transitive univ (leq_universe_n 1)} : Transitive lt_sort.
Admitted.

    Global Instance eq_sort_trans `{Transitive univ eq_universe} : Transitive eq_sort.
Admitted.
Global Instance leq_sort_preorder `{PreOrder univ (leq_universe_n 0)} : PreOrder leq_sort. exact (Build_PreOrder _ _ _). Defined.

    
    Lemma lt_sort_irrefl : Irreflexive (leq_universe_n 1) -> Irreflexive lt_sort.
Admitted.
Global Instance lt_sort_str_order `{StrictOrder univ (leq_universe_n 1)} : StrictOrder lt_sort. exact (Build_StrictOrder _ (lt_sort_irrefl _) _). Defined.

    Global Instance eq_leq_sort `{subrelation univ eq_universe (leq_universe_n 0)}: subrelation eq_sort leq_sort.
Admitted.
Global Instance eq_sort_equivalence `{Equivalence univ eq_universe} : Equivalence eq_sort. exact (Build_Equivalence _ _ _ _). Defined.

    Global Instance leq_sort_antisym `{Antisymmetric _ eq_universe (leq_universe_n 0)} : Antisymmetric _ eq_sort leq_sort.
Admitted.

    Global Instance leq_sort_partial_order `{PartialOrder _ eq_universe (leq_universe_n 0)}: PartialOrder eq_sort leq_sort.
Admitted.

  End GeneralLemmas.

  
  Definition concrete_sort := Sort.t_ nat.
Definition leq_csort_n : Z -> concrete_sort -> concrete_sort -> Prop. exact (leq_sort_n_ (fun n u u' => (Z.of_nat u <= Z.of_nat u' - n)%Z)). Defined.

  Definition leq_csort := leq_csort_n 0.
  Definition lt_csort := leq_csort_n 1.

  Notation "x <_ n  y" := (leq_csort_n n x y) (at level 10, n name) : univ_scope.
  Notation "x < y" := (lt_csort x y) : univ_scope.
  Notation "x <= y" := (leq_csort x y) : univ_scope.

  Definition is_propositional_or_set s := match s with sSProp | sProp | sType 0 => true | _ => false end.

  Lemma csort_sup_comm s s' : Sort.csup s s' = Sort.csup s' s.
Admitted.

  Lemma csort_sup_not_uproplevel s s' :
    ~ Sort.is_propositional s -> ∑ n, Sort.csup s s' = sType n.
Admitted.

  Lemma csort_sup_mon s s' v v' : (s <= s')%u -> (sType v <= sType v')%u ->
    (Sort.csup s (sType v) <= Sort.csup s' (sType v'))%u.
Admitted.

  Lemma leq_csort_of_product_mon u u' v v' :
    (u <= u')%u ->
    (v <= v')%u ->
    (Sort.csort_of_product u v <= Sort.csort_of_product u' v')%u.
Admitted.

  Lemma impredicative_csort_product {univ} {univ_sup} {l u} :
    Sort.is_propositional u ->
    Sort.sort_of_product_ (univ := univ) univ_sup l u = u.
Admitted.

  Lemma leq_sort_sup_l φ u1 s2 :
    let s1 := sType u1 in
    leq_sort φ s1 (Sort.sup s1 s2).
Admitted.

  Lemma leq_sort_sup_r φ s1 u2 :
    let s2 := sType u2 in
    leq_sort φ s2 (Sort.sup s1 s2).
Admitted.

  Lemma leq_sort_product φ (s1 s2 : Sort.t)
    : leq_sort φ s2 (Sort.sort_of_product s1 s2).
Admitted.
  

  Global Instance lt_sort_irrefl' {c: check_univs} φ (H: consistent φ) : Irreflexive (lt_sort φ).
Admitted.

  Global Instance lt_sort_str_order' {c: check_univs} φ (H: consistent φ) : StrictOrder (lt_sort φ).
Admitted.

  Global Instance compare_sort_subrel φ pb : subrelation (eq_sort φ) (compare_sort φ pb).
Admitted.

  Global Instance compare_sort_refl φ pb : Reflexive (compare_sort φ pb).
Admitted.

  Global Instance compare_sort_trans φ pb : Transitive (compare_sort φ pb).
Admitted.

  Global Instance compare_sort_preorder φ pb : PreOrder (compare_sort φ pb).
Admitted.

  Definition eq_leq_sort' φ leq_universe eq_universe Hsub u u'
    := @eq_leq_sort φ leq_universe eq_universe Hsub u u'.
  Definition leq_sort_refl' φ leq_universe leq_refl u
    := @leq_sort_refl φ leq_universe leq_refl u.

  Hint Resolve eq_leq_universe' leq_universe_refl' : core.

  Lemma cmp_sort_subset φ φ' pb t u
    : ConstraintSet.Subset φ φ'
      -> compare_sort φ pb t u -> compare_sort φ' pb t u.
Admitted.

  Lemma eq_sort_subset ctrs ctrs' t u
    : ConstraintSet.Subset ctrs ctrs'
      -> eq_sort ctrs t u -> eq_sort ctrs' t u.
Admitted.

  Lemma leq_sort_subset ctrs ctrs' t u
    : ConstraintSet.Subset ctrs ctrs'
      -> leq_sort ctrs t u -> leq_sort ctrs' t u.
Admitted.
End SortCompare.

Definition relevance_of_family (s : Sort.family) :=
  match s with
  | Sort.fSProp => Irrelevant
  | _ => Relevant
  end.

#[global] Opaque relevance_of_family.

Notation rel_of_Type := (relevance_of_family Sort.fType).
Notation relevance_of_sort s := (relevance_of_family (Sort.to_family s)).

Notation isSortRel s rel := (relevance_of_sort s = rel).
Notation isSortRelOpt s relopt :=
  (option_default (fun rel => isSortRel s rel) relopt True).




Inductive allowed_eliminations : Set :=
  | IntoSProp
  | IntoPropSProp
  | IntoSetPropSProp
  | IntoAny.
Derive NoConfusion EqDec for allowed_eliminations.
Definition is_allowed_elimination_cuniv (allowed : allowed_eliminations) : concrete_sort -> bool. exact (match allowed with
  | IntoSProp => Sort.is_sprop
  | IntoPropSProp => Sort.is_propositional
  | IntoSetPropSProp => is_propositional_or_set
  | IntoAny => fun _ => true
  end). Defined.

Definition is_lSet {cf} φ s := eq_sort φ s Sort.type0.
  

Definition is_allowed_elimination {cf} φ allowed : Sort.t -> Prop :=
  match allowed with
  | IntoSProp => Sort.is_sprop
  | IntoPropSProp => Sort.is_propositional
  | IntoSetPropSProp => fun s => Sort.is_propositional s \/ is_lSet φ s
  | IntoAny => fun s => true
  end.
Definition allowed_eliminations_subset (a a' : allowed_eliminations) : bool. exact (match a, a' with
  | IntoSProp, _
  | IntoPropSProp, (IntoPropSProp | IntoSetPropSProp | IntoAny)
  | IntoSetPropSProp, (IntoSetPropSProp | IntoAny)
  | IntoAny, IntoAny => true
  | _, _ => false
  end). Defined.

Lemma allowed_eliminations_subset_impl {cf} φ a a' s
  : allowed_eliminations_subset a a' ->
    is_allowed_elimination φ a s -> is_allowed_elimination φ a' s.
Admitted.

Lemma is_allowed_elimination_monotone `{cf : checker_flags} Σ s1 s2 a :
  leq_sort Σ s1 s2 -> is_allowed_elimination Σ a s2 -> is_allowed_elimination Σ a s1.
Admitted.

Section UnivCF2.
  Context {cf1 cf2 : checker_flags}.

  Lemma valid_config_impl φ ctrs
    : config.impl cf1 cf2 -> @valid_constraints cf1 φ ctrs
      -> @valid_constraints cf2 φ ctrs.
Admitted.

  Lemma cmp_universe_config_impl ctrs pb t u
    : config.impl cf1 cf2
      -> @compare_universe cf1 ctrs pb t u -> @compare_universe cf2 ctrs pb t u.
Admitted.

  Lemma eq_universe_config_impl ctrs t u
    : config.impl cf1 cf2
      -> @eq_universe cf1 ctrs t u -> @eq_universe cf2 ctrs t u.
Admitted.

  Lemma leq_universe_config_impl ctrs t u
    : config.impl cf1 cf2
      -> @leq_universe cf1 ctrs t u -> @leq_universe cf2 ctrs t u.
Admitted.

  Lemma cmp_sort_config_impl ctrs pb t u
    : config.impl cf1 cf2
      -> @compare_sort cf1 ctrs pb t u -> @compare_sort cf2 ctrs pb t u.
Admitted.

  Lemma eq_sort_config_impl ctrs t u
    : config.impl cf1 cf2
      -> @eq_sort cf1 ctrs t u -> @eq_sort cf2 ctrs t u.
Admitted.

  Lemma leq_sort_config_impl ctrs t u
    : config.impl cf1 cf2
      -> @leq_sort cf1 ctrs t u -> @leq_sort cf2 ctrs t u.
Admitted.

  

  Lemma allowed_eliminations_config_impl φ a s
    : config.impl cf1 cf2 ->
      @is_allowed_elimination cf1 φ a s -> @is_allowed_elimination cf2 φ a s.
Admitted.

End UnivCF2.

Ltac unfold_univ_rel ::=
  unfold is_allowed_elimination, is_lSet, valid_constraints,
  compare_sort, eq_sort, leq_sort, lt_sort, leq_sort_n, leq_sort_n_, eq_sort_, leqb_sort_n_, eqb_sort_,
  compare_universe, leq_universe, eq_universe, leq_universe_n in *;
  destruct check_univs; [unfold_univ_rel0 | trivial].

Tactic Notation "unfold_univ_rel" "eqn" ":"ident(H) :=
  unfold is_allowed_elimination, is_lSet, valid_constraints,
  compare_sort, eq_sort, leq_sort, lt_sort, leq_sort_n, leq_sort_n_, eq_sort_, leqb_sort_n_, eqb_sort_,
  compare_universe, leq_universe, eq_universe, leq_universe_n in *;
  destruct check_univs eqn:H; [unfold_univ_rel0 | trivial].

Lemma leq_relevance_eq {cf φ} {s s'} :
  leq_sort φ s s' -> relevance_of_sort s = relevance_of_sort s'.
Admitted.

Lemma leq_relevance_opt {cf φ} {s s' rel} :
  leq_sort φ s s' -> isSortRelOpt s rel -> isSortRelOpt s' rel.
Admitted.

Lemma leq_relevance {cf φ} {s s' rel} :
  leq_sort φ s s' -> isSortRel s rel -> isSortRel s' rel.
Admitted.

Lemma geq_relevance {cf φ} {s s' rel} :
  leq_sort φ s' s -> isSortRel s rel -> isSortRel s' rel.
Admitted.

Lemma relevance_super s : relevance_of_sort (Sort.super s) = rel_of_Type.
Admitted.

Lemma leq_sort_product_mon {cf} ϕ s1 s1' s2 s2' :
  leq_sort ϕ s1 s1' ->
  leq_sort ϕ s2 s2' ->
  leq_sort ϕ (Sort.sort_of_product s1 s2) (Sort.sort_of_product s1' s2').
Admitted.

Lemma impredicative_product {cf} {ϕ l u} :
  Sort.is_propositional u ->
  leq_sort ϕ (Sort.sort_of_product l u) u.
Admitted.

Section UniverseLemmas.
  Context {cf: checker_flags}.

  Lemma univ_sup_idem s : Universe.sup s s = s.
Admitted.

  Lemma sup_idem s : Sort.sup s s = s.
Admitted.

  Lemma sort_of_product_idem s
    : Sort.sort_of_product s s = s.
Admitted.

  Lemma univ_sup_assoc s1 s2 s3 :
    Universe.sup s1 (Universe.sup s2 s3) = Universe.sup (Universe.sup s1 s2) s3.
Admitted.

  Instance proper_univ_sup_eq_univ φ :
    Proper (eq_universe φ ==> eq_universe φ ==> eq_universe φ) Universe.sup.
Admitted.

  Instance proper_sort_sup_eq_sort φ :
    Proper (eq_sort φ ==> eq_sort φ ==> eq_sort φ) Sort.sup.
Admitted.

  Lemma sort_of_product_twice u s :
    Sort.sort_of_product u (Sort.sort_of_product u s)
    = Sort.sort_of_product u s.
Admitted.
End UniverseLemmas.

Section no_prop_leq_type.
  Context {cf: checker_flags}.
  Context (ϕ : ConstraintSet.t).

  Lemma succ_inj x y : LevelExpr.succ x = LevelExpr.succ y -> x = y.
Admitted.

  Lemma spec_map_succ l x :
    LevelExprSet.In x (Universe.succ l) <->
    exists x', LevelExprSet.In x' l /\ x = LevelExpr.succ x'.
Admitted.

  Lemma val_succ v l : val v (LevelExpr.succ l) = val v l + 1.
Admitted.

  Lemma val_map_succ v l : val v (Universe.succ l) = val v l + 1.
Admitted.

  Lemma leq_sort_super s s' :
    leq_sort ϕ s s' ->
    leq_sort ϕ (Sort.super s) (Sort.super s').
Admitted.

  Lemma leq_sort_prop_no_prop_sub_type s1 s2 :
    prop_sub_type = false ->
    leq_sort ϕ s1 s2 ->
    Sort.is_prop s1 -> Sort.is_prop s2.
Admitted.

  Hint Resolve leq_sort_prop_no_prop_sub_type : univ_lemmas.

  Lemma leq_prop_is_propositonal {s1 s2} :
    prop_sub_type = false ->
    leq_sort ϕ s1 s2 ->
    Sort.is_propositional s1 <-> Sort.is_propositional s2.
Admitted.

End no_prop_leq_type.
Definition fresh_level : Level.t. exact (Level.level     "__metarocq_fresh_level__"). Defined.
Definition fresh_universe : Universe.t. exact (Universe.make' fresh_level). Defined.





Class UnivSubst A := subst_instance : Instance.t -> A -> A.

Notation "x @[ u ]" := (subst_instance u x) (at level 3,
  format "x @[ u ]").
#[global] Instance subst_instance_level : UnivSubst Level.t. exact (fun u l => match l with
            Level.lzero | Level.level     _ => l
          | Level.lvar n => List.nth n u Level.lzero
          end). Defined.
#[global] Instance subst_instance_cstr : UnivSubst UnivConstraint.t. exact (fun u c => (subst_instance_level u c.1.1, c.1.2, subst_instance_level u c.2)). Defined.
#[global] Instance subst_instance_cstrs : UnivSubst ConstraintSet.t. exact (fun u ctrs => ConstraintSet.fold (fun c => ConstraintSet.add (subst_instance_cstr u c))
                                ctrs ConstraintSet.empty). Defined.
#[global] Instance subst_instance_level_expr : UnivSubst LevelExpr.t. exact (fun u e => match e with
          | (Level.lzero, _)
          | (Level.level     _, _) => e
          | (Level.lvar n, b) =>
            match nth_error u n with
            | Some l => (l,b)
            | None => (Level.lzero, b)
            end
          end). Defined.
#[global] Instance subst_instance_universe : UnivSubst Universe.t. exact (fun u => map (subst_instance_level_expr u)). Defined.
#[global] Instance subst_instance_sort : UnivSubst Sort.t. exact (fun u e => match e with
          | sProp | sSProp => e
          | sType u' => sType (subst_instance u u')
          end). Defined.

Lemma subst_instance_to_family s u :
  Sort.to_family s@[u] = Sort.to_family s.
Admitted.
#[global] Instance subst_instance_instance : UnivSubst Instance.t. exact (fun u u' => List.map (subst_instance_level u) u'). Defined.

Theorem relevance_subst_eq u s : relevance_of_sort (subst_instance_sort u s) = relevance_of_sort s.
Admitted.

Theorem relevance_subst_opt u rel s :
  isSortRelOpt s rel -> isSortRelOpt (subst_instance_sort u s) rel.
Admitted.

Theorem relevance_subst u rel s :
  isSortRel s rel -> isSortRel (subst_instance_sort u s) rel.
Admitted.


Section Closedu.
  Context (k : nat).

  Definition closedu_level (l : Level.t) :=
    match l with
    | Level.lvar n => (n <? k)%nat
    | _ => true
    end.

  Definition closedu_level_expr (s : LevelExpr.t) :=
    closedu_level (LevelExpr.get_level s).

  Definition closedu_universe (u : Universe.t) :=
    LevelExprSet.for_all closedu_level_expr u.

  Definition closedu_sort (u : Sort.t) :=
    match u with
    | sSProp | sProp => true
    | sType l => closedu_universe l
    end.

  Definition closedu_instance (u : Instance.t) :=
    forallb closedu_level u.
End Closedu.


Section UniverseClosedSubst.
  Lemma closedu_subst_instance_level u l
  : closedu_level 0 l -> subst_instance_level u l = l.
Admitted.

  Lemma closedu_subst_instance_level_expr u e
    : closedu_level_expr 0 e -> subst_instance_level_expr u e = e.
Admitted.

  Lemma closedu_subst_instance_univ u s
    : closedu_sort 0 s -> subst_instance_sort u s = s.
Admitted.

  Lemma closedu_subst_instance u t
    : closedu_instance 0 t -> subst_instance u t = t.
Admitted.

End UniverseClosedSubst.

#[global]
Hint Resolve closedu_subst_instance_level closedu_subst_instance_level_expr
     closedu_subst_instance_univ closedu_subst_instance : substu.


Section SubstInstanceClosed.
  Context (u : Instance.t) (Hcl : closedu_instance 0 u).

  Lemma subst_instance_level_closedu l
    : closedu_level #|u| l -> closedu_level 0 (subst_instance_level u l).
Admitted.

  Lemma subst_instance_level_expr_closedu e :
    closedu_level_expr #|u| e -> closedu_level_expr 0 (subst_instance_level_expr u e).
Admitted.

  Lemma subst_instance_univ_closedu s
    : closedu_sort #|u| s -> closedu_sort 0 (subst_instance_sort u s).
Admitted.

  Lemma subst_instance_closedu t :
    closedu_instance #|u| t -> closedu_instance 0 (subst_instance u t).
Admitted.
End SubstInstanceClosed.

#[global]
Hint Resolve subst_instance_level_closedu subst_instance_level_expr_closedu
     subst_instance_univ_closedu subst_instance_closedu : substu.
Definition string_of_level (l : Level.t) : string. exact (match l with
  | Level.lzero => "Set"
  | Level.level     s => s
  | Level.lvar n => "lvar" ^ string_of_nat n
  end). Defined.
Definition string_of_level_expr (e : LevelExpr.t) : string. exact (let '(l, n) := e in string_of_level l ^ (if n is 0 then "" else "+" ^ string_of_nat n)). Defined.

Definition string_of_sort (u : Sort.t) :=
  match u with
  | sSProp => "SProp"
  | sProp => "Prop"
  | sType l => "Type(" ^ string_of_list string_of_level_expr (LevelExprSet.elements l) ^ ")"
  end.

Definition string_of_universe_instance u :=
  string_of_list string_of_level u.

Inductive universes_entry :=
| Monomorphic_entry (ctx : ContextSet.t)
| Polymorphic_entry (ctx : UContext.t).
Derive NoConfusion for universes_entry.
Definition universes_entry_of_decl (u : universes_decl) : universes_entry. exact (match u with
  | Polymorphic_ctx ctx => Polymorphic_entry (Universes.AUContext.repr ctx)
  | Monomorphic_ctx => Monomorphic_entry ContextSet.empty
  end). Defined.

Definition polymorphic_instance uctx :=
  match uctx with
  | Monomorphic_ctx => Instance.empty
  | Polymorphic_ctx c => fst (snd (AUContext.repr c))
  end.

Definition abstract_instance decl :=
  match decl with
  | Monomorphic_ctx => Instance.empty
  | Polymorphic_ctx auctx => UContext.instance (AUContext.repr auctx)
  end.

Definition print_universe_instance u :=
  match u with
  | [] => ""
  | _ => "@{" ^ print_list string_of_level " " u ^ "}"
  end.

Definition print_lset t :=
  print_list string_of_level " " (LevelSet.elements t).

Definition print_constraint_type d :=
  match d with
  | ConstraintType.Le n =>
    if (n =? 0)%Z then "<=" else
    if (n =? 1)%Z then "<" else
    if (n <? 0)%Z then "<=" ^ string_of_nat (Z.to_nat (Z.abs n)) ^ " + "
    else " + " ^ string_of_nat (Z.to_nat n) ^ " <= "
  | ConstraintType.Eq => "="
  end.

Definition print_constraint_set t :=
  print_list (fun '(l1, d, l2) => string_of_level l1 ^ " " ^
                         print_constraint_type d ^ " " ^ string_of_level l2)
             " /\ " (ConstraintSet.elements t).

End Universes.

End MetaRocq_DOT_Common_DOT_Universes_WRAPPED.
Module Export MetaRocq_DOT_Common_DOT_Universes.
Module Export MetaRocq.
Module Export Common.
Module Export Universes.
Include MetaRocq_DOT_Common_DOT_Universes_WRAPPED.Universes.
End Universes.

End Common.

End MetaRocq.

End MetaRocq_DOT_Common_DOT_Universes.
Variant prim_tag :=
  | primInt
  | primFloat
  | primString
  | primArray.
Derive NoConfusion EqDec for prim_tag.
Module Export MetaRocq.
Module Export Common.
Module Export Primitive.
End Primitive.
Module Export MetaRocq_DOT_Common_DOT_Environment_WRAPPED.
Module Export Environment.
Import Stdlib.ssr.ssrbool.
Import MetaRocq.Utils.utils.
Import MetaRocq.Common.BasicAst.
Import MetaRocq.Common.Universes.

Module Type Term.

  Parameter Inline term : Type.

  Parameter Inline tRel : nat -> term.
  Parameter Inline tSort : Sort.t -> term.
  Parameter Inline tLambda : aname -> term -> term -> term.
  Parameter Inline tLetIn : aname -> term -> term -> term -> term.

  Parameter Inline lift : nat -> nat -> term -> term.
  Parameter Inline subst : list term -> nat -> term -> term.
  Parameter Inline subst_instance_constr : UnivSubst term.

  Notation lift0 n := (lift n 0).
End Term.

Module Type TermDecide (Import T : Term).
End TermDecide.

Module TermDecideReflectInstances (Import T : Term) (Import TDec : TermDecide T).
End TermDecideReflectInstances.

Module Retroknowledge.

  Record t := mk_retroknowledge {
    retro_int63 : option kername;
    retro_float64 : option kername;
    retro_string : option kername;
    retro_array : option kername;
  }.

End Retroknowledge.

Module Environment (T : Term).

  Import T.
  #[global] Existing Instance subst_instance_constr.

  Definition judgment := judgment_ Sort.t term.

  Notation context_decl := (context_decl term).

  Definition vass x A : context_decl :=
    {| decl_name := x ; decl_body := None ; decl_type := A |}.

  Definition vdef x t A : context_decl :=
    {| decl_name := x ; decl_body := Some t ; decl_type := A |}.

  Definition context := list context_decl.

  Definition lift_context n k (Γ : context) : context :=
    fold_context_k (fun k' => lift n (k' + k)) Γ.

  Definition subst_context s k (Γ : context) : context :=
    fold_context_k (fun k' => subst s (k' + k)) Γ.

  Definition subst_telescope s k (Γ : context) : context :=
    mapi (fun k' decl => map_decl (subst s (k' + k)) decl) Γ.
Global Instance subst_instance_context : UnivSubst context.
exact (map_context ∘ subst_instance).
Defined.
Definition set_binder_name (na : aname) (x : context_decl) : context_decl.
Admitted.
Fixpoint context_assumptions (Γ : context) : nat.
Admitted.
Fixpoint smash_context (Γ Γ' : context) : context.
Admitted.

  Fixpoint extended_subst (Γ : context) (n : nat)
   :=
  match Γ with
  | nil => nil
  | cons d vs =>
    match decl_body d with
    | Some b =>

      let s := extended_subst vs n in

      let b' := lift (context_assumptions vs + n) #|s| b in

      let b' := subst s 0 b' in

      b' :: s
    | None => tRel n :: extended_subst vs (S n)
    end
  end.

  Definition expand_lets_k Γ k t :=
    (subst (extended_subst Γ 0) k (lift (context_assumptions Γ) (k + #|Γ|) t)).

  Definition expand_lets Γ t := expand_lets_k Γ 0 t.

  Definition expand_lets_k_ctx Γ k Δ :=
    (subst_context (extended_subst Γ 0) k (lift_context (context_assumptions Γ) (k + #|Γ|) Δ)).

  Definition expand_lets_ctx Γ Δ := expand_lets_k_ctx Γ 0 Δ.
Definition fix_context (m : mfixpoint term) : context.
Admitted.

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
Fixpoint lookup_global (Σ : global_declarations) (kn : kername) : option global_decl.
Admitted.

  Definition lookup_env (Σ : global_env) (kn : kername) := lookup_global Σ.(declarations) kn.
Definition primitive_constant (Σ : global_env) (p : prim_tag) : option kername.
Admitted.
Definition tImpl (dom codom : term) : term.
Admitted.

  Definition array_uctx := ([nAnon], ConstraintSet.empty).

  Definition primitive_invariants (p : prim_tag) (cdecl : constant_body) :=
    match p with
    | primInt | primFloat | primString =>
     [/\ cdecl.(cst_type) = tSort Sort.type0, cdecl.(cst_body) = None &
          cdecl.(cst_universes) = Monomorphic_ctx]
    | primArray =>
      let s := sType (Universe.make' (Level.lvar 0)) in
      [/\ cdecl.(cst_type) = tImpl (tSort s) (tSort s), cdecl.(cst_body) = None &
        cdecl.(cst_universes) = Polymorphic_ctx array_uctx]
    end.
Definition global_env_ext : Type.
exact (global_env * universes_decl).
Defined.
Definition fst_ctx : global_env_ext -> global_env.
exact (fst).
Defined.
  Coercion fst_ctx : global_env_ext >-> global_env.

  Definition mkLambda_or_LetIn d t :=
    match d.(decl_body) with
    | None => tLambda d.(decl_name) d.(decl_type) t
    | Some b => tLetIn d.(decl_name) b d.(decl_type) t
    end.

  Definition it_mkLambda_or_LetIn (l : context) (t : term) :=
    List.fold_left (fun acc d => mkLambda_or_LetIn d acc) l t.
Fixpoint reln (l : list term) (p : nat) (Γ0 : list context_decl) {struct Γ0} : list term.
Admitted.

  Definition to_extended_list_k Γ k := reln [] k Γ.
  Definition to_extended_list Γ := to_extended_list_k Γ 0.

End Environment.

Module Type EnvironmentSig (T : Term).
 Include Environment T.
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
End Environment.
Module Export EnvironmentTyping.
Import MetaRocq.Utils.utils.
Import MetaRocq.Common.config.
Import MetaRocq.Common.BasicAst.
Import MetaRocq.Common.Universes.

Module Lookup (T : Term) (E : EnvironmentSig T).
Import E.

  Definition declared_constant (Σ : global_env) id decl := In (id,ConstantDecl decl) (declarations Σ).

  Definition declared_minductive Σ mind decl := In (mind,InductiveDecl decl) (declarations Σ).

  Definition declared_inductive Σ ind mdecl decl :=
    declared_minductive Σ (inductive_mind ind) mdecl /\
    List.nth_error mdecl.(ind_bodies) (inductive_ind ind) = Some decl.

  Definition declared_constructor Σ cstr mdecl idecl cdecl :=
    declared_inductive Σ (fst cstr) mdecl idecl /\
    List.nth_error idecl.(ind_ctors) (snd cstr) = Some cdecl.

  Definition declared_projection Σ (proj : projection) mdecl idecl cdecl pdecl
  : Prop :=
    declared_constructor Σ (proj.(proj_ind), 0) mdecl idecl cdecl /\
    List.nth_error idecl.(ind_projs) proj.(proj_arg) = Some pdecl /\
    mdecl.(ind_npars) = proj.(proj_npars).

  Definition lookup_minductive_gen (lookup : kername -> option global_decl) mind :=
    match lookup mind with
    | Some (InductiveDecl decl) => Some decl
    | _ => None
    end.

  Definition lookup_inductive_gen lookup ind :=
    match lookup_minductive_gen lookup (inductive_mind ind) with
    | Some mdecl =>
      match nth_error mdecl.(ind_bodies) (inductive_ind ind) with
      | Some idecl => Some (mdecl, idecl)
      | None => None
      end
    | None => None
    end.

  Definition lookup_constructor_gen lookup ind k :=
    match lookup_inductive_gen lookup ind with
    | Some (mdecl, idecl) =>
      match nth_error idecl.(ind_ctors) k with
      | Some cdecl => Some (mdecl, idecl, cdecl)
      | None => None
      end
    | _ => None
    end.
Definition global_levels (univs : ContextSet.t) : LevelSet.t.
Admitted.
Definition global_constraints (Σ : global_env) : ConstraintSet.t.
Admitted.
Definition global_ext_levels (Σ : global_env_ext) : LevelSet.t.
admit.
Defined.
Definition global_ext_constraints (Σ : global_env_ext) : ConstraintSet.t.
exact (ConstraintSet.union
      (constraints_of_udecl (snd Σ))
      (global_constraints Σ.1)).
Defined.

  Coercion global_ext_constraints : global_env_ext >-> ConstraintSet.t.

  Definition consistent_instance `{checker_flags} (lvs : LevelSet.t) (φ : ConstraintSet.t) uctx (u : Instance.t) :=
    match uctx with
    | Monomorphic_ctx => List.length u = 0
    | Polymorphic_ctx c =>

      forallb (fun l => LevelSet.mem l lvs) u /\
      List.length u = List.length c.1 /\
      valid_constraints φ (subst_instance_cstrs u c.2)
    end.

  Definition consistent_instance_ext `{checker_flags} Σ :=
    consistent_instance (global_ext_levels Σ) (global_ext_constraints Σ).

  Definition wf_universe Σ (u : Universe.t) : Prop :=
    forall l, LevelExprSet.In l u -> LevelSet.In (LevelExpr.get_level l) (global_ext_levels Σ).

  Definition wf_sort Σ (s : sort) : Prop :=
    Sort.on_sort (wf_universe Σ) True s.

End Lookup.

Module Type LookupSig (T : Term) (E : EnvironmentSig T).
End LookupSig.

Module EnvTyping (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E).
Import T.
Import E.

  Notation on_local_decl P Γ d :=
    (P Γ (j_decl d)) (only parsing).

  Definition on_def_type (P : context -> judgment -> Type) Γ d :=
    P Γ (TypRel d.(dtype) d.(dname).(binder_relevance)).

  Definition on_def_body (P : context -> judgment -> Type) types Γ d :=
    P (Γ ,,, types) (TermTypRel d.(dbody) (lift0 #|types| d.(dtype)) d.(dname).(binder_relevance)).

  Definition lift_sorting checking sorting : judgment -> Type :=
    fun j => option_default (fun tm => checking tm (j_typ j)) (j_term j) (unit : Type) ×
                                ∑ s, sorting (j_typ j) s ×
                                  option_default (fun u => u = s) (j_univ j) True /\
                                  isSortRelOpt s (j_rel j).

  Notation lift_sorting1 checking sorting := (fun Γ => lift_sorting (checking Γ) (sorting Γ)).

  Notation typing_sort typing := (fun T s => typing T (tSort s)).
  Notation typing_sort1 typing := (fun Γ T s => typing Γ T (tSort s)).

  Definition lift_typing0 typing := lift_sorting typing (typing_sort typing).
  Notation lift_typing1 typing := (fun Γ => lift_typing0 (typing Γ)).
  Notation lift_typing typing := (fun Σ Γ => lift_typing0 (typing Σ Γ)).

  Notation Prop_local_conj P Q := (fun Γ t T => P Γ t T × Q Γ t T).
  Notation Prop_conj P Q := (fun Σ Γ t T => P Σ Γ t T × Q Σ Γ t T).

  Definition lift_typing_conj (P Q : context -> _) := lift_typing1 (Prop_local_conj P Q).

  Lemma lift_typing_mapu {P} f fu {tm ty u r} :
    lift_typing0 (fun t T => P (f t) (f T)) (Judge tm ty u r) ->
    (forall u, f (tSort u) = tSort (fu u)) ->
    (forall r s, isSortRelOpt s r -> isSortRelOpt (fu s) r) ->
    lift_typing0 P (Judge (option_map f tm) (f ty) (option_map fu u) r).
Admitted.

  Lemma lift_typing_impl {P Q j} :
    lift_typing0 P j ->
    (forall t T, P t T -> Q t T) ->
    lift_typing0 Q j.
Admitted.

  Section TypeLocal.
    Context (typing : forall (Γ : context), judgment -> Type).

    Inductive All_local_env : context -> Type :=
    | localenv_nil :
        All_local_env []

    | localenv_cons_abs Γ na t :
        All_local_env Γ ->
        typing Γ (j_vass na t) ->
        All_local_env (Γ ,, vass na t)

    | localenv_cons_def Γ na b t :
        All_local_env Γ ->
        typing Γ (j_vdef na b t) ->
        All_local_env (Γ ,, vdef na b t).
  End TypeLocal.

  Arguments localenv_nil {_}.
  Arguments localenv_cons_def {_ _ _ _ _} _ _.
  Arguments localenv_cons_abs {_ _ _ _} _ _.
Definition All_local_env_snoc {P Γ decl} : All_local_env P Γ -> on_local_decl P Γ decl -> All_local_env P (Γ ,, decl).
Admitted.

  Lemma All_local_env_ind1 typing P :
    P [] ->
    (forall Γ decl, P Γ -> on_local_decl typing Γ decl -> P (Γ ,, decl)) ->
    forall Γ, All_local_env typing Γ -> P Γ.
Admitted.

  Section TypeLocalOver.
    Context (checking : context -> term -> term -> Type).
    Context (sorting : context -> term -> sort -> Type).
    Context (cproperty : forall (Γ : context),
                All_local_env (lift_sorting1 checking sorting) Γ ->
                forall (t T : term), checking Γ t T -> Type).
    Context (sproperty : forall (Γ : context),
                All_local_env (lift_sorting1 checking sorting) Γ ->
                forall (t : term) (u : sort), sorting Γ t u -> Type).

    Inductive All_local_env_over_sorting :
        forall (Γ : context), All_local_env (lift_sorting1 checking sorting) Γ -> Type :=
    | localenv_over_nil :
        All_local_env_over_sorting [] localenv_nil

    | localenv_over_cons_abs Γ na t
        (all : All_local_env (lift_sorting1 checking sorting) Γ) :
        All_local_env_over_sorting Γ all ->
        forall (tu : lift_sorting1 checking sorting Γ (j_vass na t))
          (Hs: sproperty Γ all _ _ tu.2.π2.1),
          All_local_env_over_sorting (Γ ,, vass na t)
                              (localenv_cons_abs all tu)

    | localenv_over_cons_def Γ na b t
        (all : All_local_env (lift_sorting1 checking sorting) Γ) :
        All_local_env_over_sorting Γ all ->
        forall (tu : lift_sorting1 checking sorting Γ (j_vdef na b t))
          (Hc: cproperty Γ all _ _ tu.1)
          (Hs: sproperty Γ all _ _ tu.2.π2.1),
          All_local_env_over_sorting (Γ ,, vdef na b t)
                              (localenv_cons_def all tu).

  End TypeLocalOver.

  Definition All_local_env_over typing property :=
    (All_local_env_over_sorting typing (typing_sort1 typing) property (fun Γ H t u tu => property _ H _ _ tu)).

  Section TypeCtxInst.
    Context (typing : forall (Γ : context), term -> term -> Type).

    Inductive ctx_inst (Γ : context) : list term -> context -> Type :=
    | ctx_inst_nil : ctx_inst Γ [] []
    | ctx_inst_ass na t i inst Δ :
        typing Γ i t ->
        ctx_inst Γ inst (subst_telescope [i] 0 Δ) ->
        ctx_inst Γ (i :: inst) (vass na t :: Δ)
    | ctx_inst_def na b t inst Δ :
        ctx_inst Γ inst (subst_telescope [b] 0 Δ) ->
        ctx_inst Γ inst (vdef na b t :: Δ).
  End TypeCtxInst.

  End EnvTyping.

Module Type EnvTypingSig (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E).
End EnvTypingSig.

Module Conversion (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E) (ET : EnvTypingSig T E TU).

  End Conversion.

Module Type ConversionSig (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E) (ET : EnvTypingSig T E TU).
End ConversionSig.

Module GlobalMaps (T: Term) (E: EnvironmentSig T) (TU : TermUtils T E) (ET: EnvTypingSig T E TU) (C: ConversionSig T E TU ET) (L: LookupSig T E).
Import T.
Import E.

  Section GlobalMaps.
    Context (Pcmp: global_env_ext -> context -> conv_pb -> term -> term -> Type).
    Context (P : global_env_ext -> context -> judgment -> Type).
Definition on_global_env (g : global_env) : Type.
Admitted.

  End GlobalMaps.

End GlobalMaps.

Module Type GlobalMapsSig (T: Term) (E: EnvironmentSig T) (TU : TermUtils T E) (ET: EnvTypingSig T E TU) (C: ConversionSig T E TU ET) (L: LookupSig T E).
End GlobalMapsSig.

Module Type ConversionParSig (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E) (ET : EnvTypingSig T E TU).

End ConversionParSig.

Module Type Typing (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E) (ET : EnvTypingSig T E TU)
  (CT : ConversionSig T E TU ET) (CS : ConversionParSig T E TU ET).

End Typing.

Module DeclarationTyping (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E)
  (ET : EnvTypingSig T E TU) (CT : ConversionSig T E TU ET)
  (CS : ConversionParSig T E TU ET) (Ty : Typing T E TU ET CT CS)
  (L : LookupSig T E) (GM : GlobalMapsSig T E TU ET CT L).

  End DeclarationTyping.
Import MetaRocq.Utils.utils.
Import MetaRocq.Common.BasicAst.

#[global] Instance reflect_recursivity_kind : ReflectEq recursivity_kind.
Admitted.
Module Export PCUICPrimitive.
Import MetaRocq.Common.Universes.
Import MetaRocq.Common.Primitive.

Record array_model {term : Type} :=
  { array_level : Level.t;
    array_type : term;
    array_default : term;
    array_value : list term }.

Arguments array_model : clear implicits.

Inductive prim_model (term : Type) : prim_tag -> Type :=
| primIntModel (i : PrimInt63.int) : prim_model term primInt
| primFloatModel (f : PrimFloat.float) : prim_model term primFloat
| primStringModel (s : PrimString.string) : prim_model term primString
| primArrayModel (a : array_model term) : prim_model term primArray.

Arguments primIntModel {term}.
Arguments primFloatModel {term}.
Arguments primStringModel {term}.
Arguments primArrayModel {term}.

Definition prim_val term := ∑ t : prim_tag, prim_model term t.
Definition prim_val_tag {term} (s : prim_val term) := s.π1.

Inductive onPrims {term} (eq_term : term -> term -> Type) Re : prim_val term -> prim_val term -> Type :=
  | onPrimsInt i : onPrims eq_term Re (primInt; primIntModel i) (primInt; primIntModel i)
  | onPrimsFloat f : onPrims eq_term Re (primFloat; primFloatModel f) (primFloat; primFloatModel f)
  | onPrimsString s : onPrims eq_term Re (primString; primStringModel s) (primString; primStringModel s)
  | onPrimsArray a a' :
    Re (Universe.make' a.(array_level)) (Universe.make' a'.(array_level)) ->
    eq_term a.(array_default) a'.(array_default) ->
    eq_term a.(array_type) a'.(array_type) ->
    All2 eq_term a.(array_value) a'.(array_value) ->
    onPrims eq_term Re (primArray; primArrayModel a) (primArray; primArrayModel a').
Definition mapu_array_model {term term'} (fl : Level.t -> Level.t) (f : term -> term')
  (ar : array_model term) : array_model term'.
admit.
Defined.

Equations mapu_prim {term term'} (f : Level.t -> Level.t) (g : term -> term')
  (p : PCUICPrimitive.prim_val term) : PCUICPrimitive.prim_val term' :=
| _, _, (primInt; primIntModel i) => (primInt; primIntModel i)
| _, _, (primFloat; primFloatModel fl) => (primFloat; primFloatModel fl)
| _, _, (primString; primStringModel s) => (primString; primStringModel s)
| f, g, (primArray; primArrayModel ar) =>
  (primArray; primArrayModel (mapu_array_model f g ar)).
Notation map_prim := (mapu_prim id).

Equations test_prim {term} (p : term -> bool) (p : prim_val term) : bool :=
| p, (primInt; _) => true
| p, (primFloat; _) => true
| p, (primString; _) => true
| p, (primArray; primArrayModel ar) =>
  List.forallb p ar.(array_value) && p ar.(array_default) && p ar.(array_type).
Export MetaRocq.Common.Environment.

Record predicate {term} := mk_predicate {
  pparams : list term;
  puinst : Instance.t;
  pcontext : list (context_decl term);

  preturn : term;  }.
Arguments predicate : clear implicits.

Section map_predicate.
  Context {term term' : Type}.
  Context (uf : Instance.t -> Instance.t).
  Context (paramf preturnf : term -> term').
  Context (pcontextf : list (context_decl term) -> list (context_decl term')).

  Definition map_predicate (p : predicate term) :=
    {| pparams := map paramf p.(pparams);
        puinst := uf p.(puinst);
        pcontext := pcontextf p.(pcontext);
        preturn := preturnf p.(preturn) |}.

End map_predicate.

Section map_predicate_k.
  Context {term : Type}.
  Context (uf : Instance.t -> Instance.t).
  Context (f : nat -> term -> term).

  Definition map_predicate_k k (p : predicate term) :=
    {| pparams := map (f k) p.(pparams);
        puinst := uf p.(puinst);
        pcontext := p.(pcontext);
        preturn := f (#|p.(pcontext)| + k) p.(preturn) |}.

  Definition test_predicate_k (instp : Instance.t -> bool)
    (p : nat -> term -> bool) k (pred : predicate term) :=
    instp pred.(puinst) && forallb (p k) pred.(pparams) &&
    test_context_k p #|pred.(pparams)| pred.(pcontext) &&
    p (#|pred.(pcontext)| + k) pred.(preturn).

End map_predicate_k.

Section Branch.
  Context {term : Type}.

  Record branch := mk_branch {
    bcontext : list (context_decl term);

    bbody : term;  }.

  Definition test_branch_k (pred : predicate term) (p : nat -> term -> bool) k (b : branch) :=
    test_context_k p #|pred.(pparams)| b.(bcontext) && p (#|b.(bcontext)| + k) b.(bbody).

End Branch.
Arguments branch : clear implicits.

Section map_branch.
  Context {term term' : Type}.
  Context (f : term -> term').
  Context (g : list (BasicAst.context_decl term) -> list (BasicAst.context_decl term')).

  Definition map_branch (b : branch term) :=
  {| bcontext := g b.(bcontext);
      bbody := f b.(bbody) |}.
End map_branch.

Section map_branch_k.
  Context {term term' : Type}.
  Context (f : nat -> term -> term').
  Context (g : list (BasicAst.context_decl term) -> list (BasicAst.context_decl term')).
  Definition map_branch_k k (b : branch term) :=
  {| bcontext := g b.(bcontext);
     bbody := f (#|b.(bcontext)| + k) b.(bbody) |}.
End map_branch_k.

Notation map_branches_k f h k brs :=
  (List.map (map_branch_k f h k) brs).

Notation test_branches_k p test k brs :=
  (List.forallb (test_branch_k p test k) brs).

Inductive term :=
| tRel (n : nat)
| tVar (i : ident)
| tEvar (n : nat) (l : list term)
| tSort (u : sort)
| tProd (na : aname) (A B : term)
| tLambda (na : aname) (A t : term)
| tLetIn (na : aname) (b B t : term)
| tApp (u v : term)
| tConst (k : kername) (ui : Instance.t)
| tInd (ind : inductive) (ui : Instance.t)
| tConstruct (ind : inductive) (n : nat) (ui : Instance.t)
| tCase (indn : case_info) (p : predicate term) (c : term) (brs : list (branch term))
| tProj (p : projection) (c : term)
| tFix (mfix : mfixpoint term) (idx : nat)
| tCoFix (mfix : mfixpoint term) (idx : nat)
| tPrim (prim : prim_val term).

Fixpoint mkApps t us :=
  match us with
  | nil => t
  | u :: us => mkApps (tApp t u) us
  end.

Definition isLambda t :=
  match t with
  | tLambda _ _ _ => true
  | _ => false
  end.

Fixpoint lift n k t : term :=
  match t with
  | tRel i => tRel (if Nat.leb k i then (n + i) else i)
  | tEvar ev args => tEvar ev (List.map (lift n k) args)
  | tLambda na T M => tLambda na (lift n k T) (lift n (S k) M)
  | tApp u v => tApp (lift n k u) (lift n k v)
  | tProd na A B => tProd na (lift n k A) (lift n (S k) B)
  | tLetIn na b t b' => tLetIn na (lift n k b) (lift n k t) (lift n (S k) b')
  | tCase ind p c brs =>
    let p' := map_predicate_k id (lift n) k p in
    let brs' := map_branches_k (lift n) id k brs in
    tCase ind p' (lift n k c) brs'
  | tProj p c => tProj p (lift n k c)
  | tFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (lift n k) (lift n k')) mfix in
    tFix mfix' idx
  | tCoFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (lift n k) (lift n k')) mfix in
    tCoFix mfix' idx
  | tPrim p => tPrim (map_prim (lift n k) p)
  | x => x
  end.

Notation lift0 n := (lift n 0).

Fixpoint subst s k u :=
  match u with
  | tRel n =>
    if Nat.leb k n then
      match nth_error s (n - k) with
      | Some b => lift0 k b
      | None => tRel (n - List.length s)
      end
    else tRel n
  | tEvar ev args => tEvar ev (List.map (subst s k) args)
  | tLambda na T M => tLambda na (subst s k T) (subst s (S k) M)
  | tApp u v => tApp (subst s k u) (subst s k v)
  | tProd na A B => tProd na (subst s k A) (subst s (S k) B)
  | tLetIn na b ty b' => tLetIn na (subst s k b) (subst s k ty) (subst s (S k) b')
  | tCase ind p c brs =>
    let p' := map_predicate_k id (subst s) k p in
    let brs' := map_branches_k (subst s) id k brs in
    tCase ind p' (subst s k c) brs'
  | tProj p c => tProj p (subst s k c)
  | tFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (subst s k) (subst s k')) mfix in
    tFix mfix' idx
  | tCoFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (subst s k) (subst s k')) mfix in
    tCoFix mfix' idx
  | tPrim p => tPrim (map_prim (subst s k) p)
  | x => x
  end.

Notation subst0 t := (subst t 0).
Definition subst1 t k u := subst [t] k u.
Notation "M { j := N }" := (subst1 N j M) (at level 10, right associativity).

Fixpoint closedn k (t : term) : bool :=
  match t with
  | tRel i => Nat.ltb i k
  | tEvar ev args => List.forallb (closedn k) args
  | tLambda _ T M | tProd _ T M => closedn k T && closedn (S k) M
  | tApp u v => closedn k u && closedn k v
  | tLetIn na b t b' => closedn k b && closedn k t && closedn (S k) b'
  | tCase ind p c brs =>
    let p' := test_predicate_k (fun _ => true) closedn k p in
    let brs' := test_branches_k p closedn k brs in
    p' && closedn k c && brs'
  | tProj p c => closedn k c
  | tFix mfix idx =>
    let k' := List.length mfix + k in
    List.forallb (test_def (closedn k) (closedn k')) mfix
  | tCoFix mfix idx =>
    let k' := List.length mfix + k in
    List.forallb (test_def (closedn k) (closedn k')) mfix
  | tPrim p => test_prim (closedn k) p
  | _ => true
  end.

Fixpoint noccur_between k n (t : term) : bool :=
  match t with
  | tRel i => Nat.ltb i k || Nat.leb (k + n) i
  | tEvar ev args => List.forallb (noccur_between k n) args
  | tLambda _ T M | tProd _ T M => noccur_between k n T && noccur_between (S k) n M
  | tApp u v => noccur_between k n u && noccur_between k n v
  | tLetIn na b t b' => noccur_between k n b && noccur_between k n t && noccur_between (S k) n b'
  | tCase ind p c brs =>
    let p' := test_predicate_k (fun _ => true) (fun k' => noccur_between k' n) k p in
    let brs' := test_branches_k p (fun k => noccur_between k n) k brs in
    p' && noccur_between k n c && brs'
  | tProj p c => noccur_between k n c
  | tFix mfix idx =>
    let k' := List.length mfix + k in
    List.forallb (test_def (noccur_between k n) (noccur_between k' n)) mfix
  | tCoFix mfix idx =>
    let k' := List.length mfix + k in
    List.forallb (test_def (noccur_between k n) (noccur_between k' n)) mfix
  | tPrim p => test_prim (noccur_between k n) p
  | _ => true
  end.
#[global]
Instance subst_instance_constr : UnivSubst term.
exact (fix subst_instance_constr u c {struct c} : term :=
  match c with
  | tRel _ | tVar _ => c
  | tEvar ev args => tEvar ev (List.map (subst_instance_constr u) args)
  | tSort s => tSort (subst_instance_sort u s)
  | tConst c u' => tConst c (subst_instance_instance u u')
  | tInd i u' => tInd i (subst_instance_instance u u')
  | tConstruct ind k u' => tConstruct ind k (subst_instance_instance u u')
  | tLambda na T M => tLambda na (subst_instance_constr u T) (subst_instance_constr u M)
  | tApp f v => tApp (subst_instance_constr u f) (subst_instance_constr u v)
  | tProd na A B => tProd na (subst_instance_constr u A) (subst_instance_constr u B)
  | tLetIn na b ty b' => tLetIn na (subst_instance_constr u b) (subst_instance_constr u ty)
                                (subst_instance_constr u b')
  | tCase ind p c brs =>
    let p' := map_predicate (subst_instance_instance u) (subst_instance_constr u) (subst_instance_constr u) id p in
    let brs' := List.map (map_branch (subst_instance_constr u) id) brs in
    tCase ind p' (subst_instance_constr u c) brs'
  | tProj p c => tProj p (subst_instance_constr u c)
  | tFix mfix idx =>
    let mfix' := List.map (map_def (subst_instance_constr u) (subst_instance_constr u)) mfix in
    tFix mfix' idx
  | tCoFix mfix idx =>
    let mfix' := List.map (map_def (subst_instance_constr u) (subst_instance_constr u)) mfix in
    tCoFix mfix' idx
  | tPrim p => tPrim (mapu_prim (subst_instance_level u) (subst_instance_constr u) p)
  end).
Defined.

Module PCUICTerm <: Term.

  Definition term := term.

  Definition tRel := tRel.
  Definition tSort := tSort.
  Definition tProd := tProd.
  Definition tLambda := tLambda.
  Definition tLetIn := tLetIn.
  Definition tInd := tInd.
  Definition tProj := tProj.
  Definition mkApps := mkApps.

  Definition lift := lift.
  Definition subst := subst.
  Definition closedn := closedn.
  Definition noccur_between := noccur_between.
  Definition subst_instance_constr := subst_instance.
End PCUICTerm.

Module PCUICEnvironment := Environment PCUICTerm.
Export PCUICEnvironment.

Fixpoint destArity Γ (t : term) :=
  match t with
  | tProd na t b => destArity (Γ ,, vass na t) b
  | tLetIn na b b_ty b' => destArity (Γ ,, vdef na b b_ty) b'
  | tSort s => Some (Γ, s)
  | _ => None
  end.

Definition inds ind u (l : list one_inductive_body) :=
  let fix aux n :=
      match n with
      | 0 => []
      | S n => tInd (mkInd ind n) u :: aux n
      end
  in aux (List.length l).

Module PCUICTermUtils <: TermUtils PCUICTerm PCUICEnvironment.

Definition destArity := destArity.
Definition inds := inds.

End PCUICTermUtils.

Module PCUICEnvTyping := EnvironmentTyping.EnvTyping PCUICTerm PCUICEnvironment PCUICTermUtils.

Module PCUICConversion := EnvironmentTyping.Conversion PCUICTerm PCUICEnvironment PCUICTermUtils PCUICEnvTyping.

Module PCUICLookup := EnvironmentTyping.Lookup PCUICTerm PCUICEnvironment.
Include PCUICLookup.

Module PCUICGlobalMaps := EnvironmentTyping.GlobalMaps
  PCUICTerm
  PCUICEnvironment
  PCUICTermUtils
  PCUICEnvTyping
  PCUICConversion
  PCUICLookup
.
Include PCUICGlobalMaps.

Fixpoint decompose_app_rec (t : term) l :=
  match t with
  | tApp f a => decompose_app_rec f (a :: l)
  | _ => (t, l)
  end.

Definition decompose_app t := decompose_app_rec t [].

Definition isConstruct_app t :=
  match fst (decompose_app t) with
  | tConstruct _ _ _ => true
  | _ => false
  end.
Fixpoint decompose_prod_assum (Γ : context) (t : term) : context * term.
Admitted.

Coercion ci_ind : case_info >-> inductive.

Definition ind_predicate_context ind mdecl idecl : context :=
  let ictx := (expand_lets_ctx mdecl.(ind_params) idecl.(ind_indices)) in
  let indty := mkApps (tInd ind (abstract_instance mdecl.(ind_universes)))
    (to_extended_list (smash_context [] mdecl.(ind_params) ,,, ictx)) in
  let inddecl :=
    {| decl_name :=
      {| binder_name := nNamed (ind_name idecl); binder_relevance := idecl.(ind_relevance) |};
       decl_body := None;
       decl_type := indty |}
  in (inddecl :: ictx).

Definition inst_case_context params puinst (pctx : context) :=
  subst_context (List.rev params) 0 (subst_instance puinst pctx).

Definition inst_case_predicate_context (p : predicate term) :=
  inst_case_context p.(pparams) p.(puinst) p.(pcontext).

Definition inst_case_branch_context (p : predicate term) (br : branch term) :=
  inst_case_context p.(pparams) p.(puinst) br.(bcontext).

Definition iota_red npar p args br :=
  subst (List.rev (List.skipn npar args)) 0
    (expand_lets (inst_case_branch_context p br) (bbody br)).

Definition pre_case_predicate_context_gen ind mdecl idecl params puinst : context :=
  inst_case_context params puinst (ind_predicate_context ind mdecl idecl).

Definition case_predicate_context_gen ind mdecl idecl params puinst pctx :=
  map2 set_binder_name pctx (pre_case_predicate_context_gen ind mdecl idecl params puinst).

Definition case_predicate_context ind mdecl idecl p : context :=
  case_predicate_context_gen ind mdecl idecl p.(pparams) p.(puinst) (forget_types p.(pcontext)).

Definition cstr_branch_context ind mdecl cdecl : context :=
  expand_lets_ctx mdecl.(ind_params)
    (subst_context (inds (inductive_mind ind) (abstract_instance mdecl.(ind_universes))
       mdecl.(ind_bodies)) #|mdecl.(ind_params)|
      cdecl.(cstr_args)).

Definition pre_case_branch_context_gen ind mdecl cdecl params puinst : context :=
  inst_case_context params puinst (cstr_branch_context ind mdecl cdecl).

Definition case_branch_context_gen ind mdecl params puinst pctx cdecl :=
  map2 set_binder_name pctx (pre_case_branch_context_gen ind mdecl cdecl params puinst).

Definition case_branch_context ind mdecl p bctx cdecl : context :=
  case_branch_context_gen ind mdecl p.(pparams) p.(puinst) bctx cdecl.

Definition case_branch_type_gen ind mdecl (idecl : one_inductive_body) params puinst bctx ptm i cdecl : context * term :=
  let cstr := tConstruct ind i puinst in
  let args := to_extended_list cdecl.(cstr_args) in
  let cstrapp := mkApps cstr (map (lift0 #|cdecl.(cstr_args)|) params ++ args) in
  let brctx := case_branch_context_gen ind mdecl params puinst bctx cdecl in
  let upars := subst_instance puinst mdecl.(ind_params) in
  let indices :=
    (map (subst (List.rev params) #|cdecl.(cstr_args)|)
      (map (expand_lets_k upars #|cdecl.(cstr_args)|)
        (map (subst (inds (inductive_mind ind) puinst mdecl.(ind_bodies))
                    (#|mdecl.(ind_params)| + #|cdecl.(cstr_args)|))
          (map (subst_instance puinst) cdecl.(cstr_indices))))) in
  let ty := mkApps (lift0 #|cdecl.(cstr_args)| ptm) (indices ++ [cstrapp]) in
  (brctx, ty).

Definition case_branch_type ind mdecl idecl p (b : branch term) ptm i cdecl : context * term :=
  case_branch_type_gen ind mdecl idecl p.(pparams) p.(puinst) (forget_types b.(bcontext)) ptm i cdecl.
Arguments case_branch_type _ _ _ _ _ _ _ !_.

Lemma case_branch_type_fst ci mdecl idecl p br ptm c cdecl :
  (case_branch_type ci mdecl idecl p br ptm c cdecl).1 =
  (case_branch_context ci mdecl p (forget_types br.(bcontext)) cdecl).
Admitted.

Definition idecl_binder idecl :=
  {| decl_name :=
    {| binder_name := nNamed idecl.(ind_name);
        binder_relevance := idecl.(ind_relevance) |};
     decl_body := None;
     decl_type := idecl.(ind_type) |}.

Definition wf_predicate_gen mdecl idecl (pparams : list term) (pcontext : list aname) : Prop :=
  let decl := idecl_binder idecl in
  (#|pparams| = mdecl.(ind_npars)) /\
  (Forall2 (fun na decl => eq_binder_annot na decl.(decl_name))
    pcontext (decl :: idecl.(ind_indices))).

Definition wf_predicate mdecl idecl (p : predicate term) : Prop :=
  wf_predicate_gen mdecl idecl p.(pparams) (forget_types p.(pcontext)).

Definition wf_branch_gen cdecl (bctx : list aname) : Prop :=
  (Forall2 (fun na decl => eq_binder_annot na decl.(decl_name))
    bctx cdecl.(cstr_args)).

Definition wf_branch cdecl (b : branch term) : Prop :=
  wf_branch_gen cdecl (forget_types b.(bcontext)).

Definition wf_branches idecl (brs : list (branch term)) : Prop :=
  Forall2 wf_branch idecl.(ind_ctors) brs.

Definition fix_subst (l : mfixpoint term) :=
  let fix aux n :=
      match n with
      | 0 => []
      | S n => tFix l n :: aux n
      end
  in aux (List.length l).

Definition unfold_fix (mfix : mfixpoint term) (idx : nat) :=
  match List.nth_error mfix idx with
  | Some d => Some (d.(rarg), subst0 (fix_subst mfix) d.(dbody))
  | None => None
  end.

Definition cofix_subst (l : mfixpoint term) :=
  let fix aux n :=
      match n with
      | 0 => []
      | S n => tCoFix l n :: aux n
      end
  in aux (List.length l).

Definition unfold_cofix (mfix : mfixpoint term) (idx : nat) :=
  match List.nth_error mfix idx with
  | Some d => Some (d.(rarg), subst0 (cofix_subst mfix) d.(dbody))
  | None => None
  end.

Definition is_constructor n ts :=
  match List.nth_error ts n with
  | Some a => isConstruct_app a
  | None => false
  end.
#[global]
Instance subst_instance_list A `{UnivSubst A} : UnivSubst (list A).
exact (fun u => List.map (subst_instance u)).
Defined.

Lemma subst_instance_lift u c n k :
  subst_instance u (lift n k c) = lift n k (subst_instance u c).
Admitted.

Lemma subst_instance_mkApps u f a :
  subst_instance u (mkApps f a) =
  mkApps (subst_instance u f) (map (subst_instance u) a).
Admitted.

Lemma subst_instance_it_mkLambda_or_LetIn u ctx t :
  subst_instance u (it_mkLambda_or_LetIn ctx t) =
  it_mkLambda_or_LetIn (subst_instance u ctx) (subst_instance u t).
Admitted.

Lemma subst_instance_subst u c (s : list term) k :
  subst_instance u (subst s k c) = subst (subst_instance u s) k (subst_instance u c).
Admitted.
Definition cmp_universe_instance (cmp_univ : Universe.t -> Universe.t -> Prop) : Instance.t -> Instance.t -> Prop.
Admitted.

Definition cmp_universe_variance (cmp_univ : conv_pb -> Universe.t -> Universe.t -> Prop) pb v u u' :=
  match v with
  | Variance.Irrelevant => True
  | Variance.Covariant => on_rel (cmp_univ pb) Universe.make' u u'
  | Variance.Invariant => on_rel (cmp_univ Conv) Universe.make' u u'
  end.

Definition cmp_universe_instance_variance cmp_univ pb v u u' :=
  Forall3 (cmp_universe_variance cmp_univ pb) v u u'.

Definition global_variance_gen lookup gr napp :=
  match gr with
  | IndRef ind =>
    match lookup_inductive_gen lookup ind with
    | Some (mdecl, idecl) =>
      match destArity [] idecl.(ind_type) with
      | Some (ctx, _) => if (context_assumptions ctx) <=? napp then
          match mdecl.(ind_variance) with
          | Some var => Variance var
          | None => AllEqual
          end
        else AllEqual
      | None => AllEqual
      end
    | None => AllEqual
    end
  | ConstructRef ind k =>
    match lookup_constructor_gen lookup ind k with
    | Some (mdecl, idecl, cdecl) =>
      if (cdecl.(cstr_arity) + mdecl.(ind_npars))%nat <=? napp then

        AllIrrelevant
      else AllEqual
    | _ => AllEqual
    end
  | _ => AllEqual
  end.

Definition cmp_opt_variance cmp_univ pb v :=
  match v with
  | AllEqual => cmp_universe_instance (cmp_univ Conv)
  | AllIrrelevant => fun l l' => #|l| = #|l'|
  | Variance v => fun u u' => cmp_universe_instance (cmp_univ Conv) u u' \/ cmp_universe_instance_variance cmp_univ pb v u u'
  end.

Definition cmp_global_instance_gen Σ cmp_universe pb gr napp :=
  cmp_opt_variance cmp_universe pb (global_variance_gen Σ gr napp).

Notation cmp_global_instance Σ := (cmp_global_instance_gen (lookup_env Σ)).

Inductive eq_decl_upto_names : context_decl -> context_decl -> Type :=
  | compare_vass {na na' T} :
    eq_binder_annot na na' -> eq_decl_upto_names (vass na T) (vass na' T)
  | compare_vdef {na na' b T} :
    eq_binder_annot na na' -> eq_decl_upto_names (vdef na b T) (vdef na' b T).

Notation eq_context_upto_names := (All2 eq_decl_upto_names).
Import Stdlib.ssr.ssrbool.

Definition shiftnP k p i :=
  (i <? k) || p (i - k).
Fixpoint on_free_vars (p : nat -> bool) (t : term) : bool.
Admitted.

Definition on_free_vars_decl P d :=
  test_decl (on_free_vars P) d.

Definition on_free_vars_ctx P ctx :=
  alli (fun k => (on_free_vars_decl (shiftnP k P))) 0 (List.rev ctx).

Notation is_open_term Γ := (on_free_vars (shiftnP #|Γ| xpred0)).
Notation is_closed_context := (on_free_vars_ctx xpred0).
Module Export PCUICCumulativitySpec.
Import MetaRocq.Common.config.

Implicit Types (cf : checker_flags).

Definition cumul_predicate (cumul : context -> term -> term -> Type) cumul_universe Γ p p' :=
  All2 (cumul Γ) p.(pparams) p'.(pparams) ×
  cmp_universe_instance cumul_universe p.(puinst) p'.(puinst) ×
  eq_context_upto_names p.(pcontext) p'.(pcontext) ×
  cumul (Γ ,,, inst_case_predicate_context p) p.(preturn) p'.(preturn).

Definition cumul_branch (cumul_term : context -> term -> term -> Type) Γ p br br' :=
  eq_context_upto_names br.(bcontext) br'.(bcontext) ×
  cumul_term (Γ ,,, inst_case_branch_context p br) br.(bbody) br'.(bbody).

Definition cumul_branches cumul_term Γ p brs brs' := All2 (cumul_branch cumul_term Γ p) brs brs'.

Definition cumul_mfixpoint (cumul_term : context -> term -> term -> Type) Γ mfix mfix' :=
  All2 (fun d d' =>
    cumul_term Γ d.(dtype) d'.(dtype) ×
    cumul_term (Γ ,,, fix_context mfix) d.(dbody) d'.(dbody) ×
    d.(rarg) = d'.(rarg) ×
    eq_binder_annot d.(dname) d'.(dname)
  ) mfix mfix'.

Reserved Notation " Σ ;;; Γ ⊢ t ≤s[ pb ] u" (at level 50, Γ, t, u at next level,
  format "Σ  ;;;  Γ  ⊢  t  ≤s[ pb ]  u").

Definition cumul_Ind_univ {cf} (Σ : global_env_ext) pb i napp :=
  cmp_global_instance Σ (compare_universe Σ) pb (IndRef i) napp.

Definition cumul_Construct_univ {cf} (Σ : global_env_ext) pb  i k napp :=
  cmp_global_instance Σ (compare_universe Σ) pb (ConstructRef i k) napp.
Inductive cumulSpec0 {cf : checker_flags} (Σ : global_env_ext) Γ (pb : conv_pb) : term -> term -> Type :=

| cumul_Trans : forall t u v,
    is_closed_context Γ -> is_open_term Γ u ->
    Σ ;;; Γ ⊢ t ≤s[pb] u ->
    Σ ;;; Γ ⊢ u ≤s[pb] v ->
    Σ ;;; Γ ⊢ t ≤s[pb] v

| cumul_Sym : forall t u,
    Σ ;;; Γ ⊢ t ≤s[Conv] u ->
    Σ ;;; Γ ⊢ u ≤s[pb] t

| cumul_Refl : forall t,
    Σ ;;; Γ ⊢ t ≤s[pb] t

| cumul_Ind : forall i u u' args args',
    cumul_Ind_univ Σ pb i #|args| u u' ->
    All2 (fun t u => Σ ;;; Γ ⊢ t ≤s[Conv] u) args args' ->
    Σ ;;; Γ ⊢ mkApps (tInd i u) args ≤s[pb] mkApps (tInd i u') args'

| cumul_Construct : forall i k u u' args args',
    cumul_Construct_univ Σ pb i k #|args| u u' ->
    All2 (fun t u => Σ ;;; Γ ⊢ t ≤s[Conv] u) args args' ->
    Σ ;;; Γ ⊢ mkApps (tConstruct i k u) args ≤s[pb] mkApps (tConstruct i k u') args'

| cumul_Sort : forall s s',
    compare_sort Σ pb s s' ->
    Σ ;;; Γ ⊢ tSort s ≤s[pb] tSort s'

| cumul_Const : forall c u u',
    cmp_universe_instance (compare_universe Σ Conv) u u' ->
    Σ ;;; Γ ⊢ tConst c u ≤s[pb] tConst c u'

| cumul_Evar : forall e args args',
    All2 (fun t u => Σ ;;; Γ ⊢ t ≤s[Conv] u) args args' ->
    Σ ;;; Γ ⊢ tEvar e args ≤s[pb] tEvar e args'

| cumul_App : forall t t' u u',
    Σ ;;; Γ ⊢ t ≤s[pb] t' ->
    Σ ;;; Γ ⊢ u ≤s[Conv] u' ->
    Σ ;;; Γ ⊢ tApp t u ≤s[pb] tApp t' u'

| cumul_Lambda : forall na na' ty ty' t t',
    eq_binder_annot na na' ->
    Σ ;;; Γ ⊢ ty ≤s[Conv] ty' ->
    Σ ;;; Γ ,, vass na ty ⊢ t ≤s[Conv] t' ->
    Σ ;;; Γ ⊢ tLambda na ty t ≤s[pb] tLambda na' ty' t'

| cumul_Prod : forall na na' a a' b b',
    eq_binder_annot na na' ->
    Σ ;;; Γ ⊢ a ≤s[Conv] a' ->
    Σ ;;; Γ ,, vass na a ⊢ b ≤s[pb] b' ->
    Σ ;;; Γ ⊢ tProd na a b ≤s[pb] tProd na' a' b'

| cumul_LetIn : forall na na' t t' ty ty' u u',
    eq_binder_annot na na' ->
    Σ ;;; Γ ⊢ t ≤s[Conv] t' ->
    Σ ;;; Γ ⊢ ty ≤s[Conv] ty' ->
    Σ ;;; Γ ,, vdef na t ty ⊢ u ≤s[Conv] u' ->
    Σ ;;; Γ ⊢ tLetIn na t ty u ≤s[pb] tLetIn na' t' ty' u'

| cumul_Case indn : forall p p' c c' brs brs',
    cumul_predicate (fun Γ t u => Σ ;;; Γ ⊢ t ≤s[Conv] u) (compare_universe Σ Conv) Γ p p' ->
    Σ ;;; Γ ⊢ c ≤s[Conv] c' ->
    cumul_branches (fun Γ t u => Σ ;;; Γ ⊢ t ≤s[Conv] u) Γ p brs brs' ->
    Σ ;;; Γ ⊢ tCase indn p c brs ≤s[pb] tCase indn p' c' brs'

| cumul_Proj : forall p c c',
    Σ ;;; Γ ⊢ c ≤s[Conv] c' ->
    Σ ;;; Γ ⊢ tProj p c ≤s[pb] tProj p c'

| cumul_Fix : forall mfix mfix' idx,
    cumul_mfixpoint (fun Γ t u => Σ ;;; Γ ⊢ t ≤s[Conv] u) Γ mfix mfix' ->
    Σ ;;; Γ ⊢ tFix mfix idx ≤s[pb] tFix mfix' idx

| cumul_CoFix : forall mfix mfix' idx,
    cumul_mfixpoint (fun Γ t u => Σ ;;; Γ ⊢ t ≤s[Conv] u) Γ mfix mfix' ->
    Σ ;;; Γ ⊢ tCoFix mfix idx ≤s[pb] tCoFix mfix' idx

| cumul_Prim p p' :
  onPrims (fun x y => Σ ;;; Γ ⊢ x ≤s[Conv] y) (compare_universe Σ Conv) p p' ->
  Σ ;;; Γ ⊢ tPrim p ≤s[pb] tPrim p'

| cumul_beta : forall na t b a,
    Σ ;;; Γ ⊢ tApp (tLambda na t b) a ≤s[pb] b {0 := a}

| cumul_zeta : forall na b t b',
    Σ ;;; Γ ⊢ tLetIn na b t b' ≤s[pb] b' {0 := b}

| cumul_rel i body :
    option_map decl_body (nth_error Γ i) = Some (Some body) ->
    Σ ;;; Γ ⊢ tRel i ≤s[pb] lift0 (S i) body

| cumul_iota : forall ci c u args p brs br,
    nth_error brs c = Some br ->
    #|args| = (ci.(ci_npar) + context_assumptions br.(bcontext))%nat ->
    Σ ;;; Γ ⊢ tCase ci p (mkApps (tConstruct ci.(ci_ind) c u) args) brs  ≤s[pb] iota_red ci.(ci_npar) p args br

| cumul_fix : forall mfix idx args narg fn,
    unfold_fix mfix idx = Some (narg, fn) ->
    is_constructor narg args = true ->
    Σ ;;; Γ ⊢ mkApps (tFix mfix idx) args ≤s[pb] mkApps fn args

| cumul_cofix_case : forall ip p mfix idx args narg fn brs,
    unfold_cofix mfix idx = Some (narg, fn) ->
    Σ ;;; Γ ⊢ tCase ip p (mkApps (tCoFix mfix idx) args) brs ≤s[pb] tCase ip p (mkApps fn args) brs

| cumul_cofix_proj : forall p mfix idx args narg fn,
    unfold_cofix mfix idx = Some (narg, fn) ->
    Σ ;;; Γ ⊢ tProj p (mkApps (tCoFix mfix idx) args) ≤s[pb] tProj p (mkApps fn args)

| cumul_delta : forall c decl body (isdecl : declared_constant Σ c decl) u,
    decl.(cst_body) = Some body ->
    Σ ;;; Γ ⊢ tConst c u ≤s[pb] body@[u]

| cumul_proj : forall p args u arg,
    nth_error args (p.(proj_npars) + p.(proj_arg)) = Some arg ->
    Σ ;;; Γ ⊢ tProj p (mkApps (tConstruct p.(proj_ind) 0 u) args) ≤s[pb] arg

where " Σ ;;; Γ ⊢ t ≤s[ pb ] u " := (@cumulSpec0 _ Σ Γ pb t u) : type_scope.
Definition cumulSpec `{checker_flags} (Σ : global_env_ext) Γ := cumulSpec0 Σ Γ Cumul.

Notation " Σ ;;; Γ |- t <=s u " := (@cumulSpec _ Σ Γ t u) (at level 50, Γ, t, u at next level).

Module PCUICConversionParSpec <: EnvironmentTyping.ConversionParSig PCUICTerm PCUICEnvironment PCUICTermUtils PCUICEnvTyping.
  Definition cumul_gen := @cumulSpec0.
End PCUICConversionParSpec.

End PCUICCumulativitySpec.
Module Export PCUICTyping.
Import MetaRocq.Common.config.

Implicit Types (cf : checker_flags) (Σ : global_env_ext).

Definition type_of_constructor mdecl (cdecl : constructor_body) (c : inductive * nat) (u : list Level.t) :=
  let mind := inductive_mind (fst c) in
  subst0 (inds mind u mdecl.(ind_bodies)) (subst_instance u (cstr_type cdecl)).

Include PCUICEnvTyping.

Inductive FixCoFix : Type := Fix | CoFix.

Class GuardChecker :=
{
  guard : FixCoFix -> global_env_ext -> context -> mfixpoint term -> Prop ;
}.

Axiom guard_checking : GuardChecker.
#[global]
Existing Instance guard_checking.

Definition fix_guard := guard Fix.
Definition cofix_guard := guard CoFix.

Definition destInd (t : term) :=
  match t with
  | tInd ind u => Some (ind, u)
  | _ => None
  end.

Definition isCoFinite (r : recursivity_kind) :=
  match r with
  | CoFinite => true
  | _ => false
  end.

Definition check_recursivity_kind
  (lookup: kername -> option global_decl) ind r :=
  match lookup ind with
  | Some (InductiveDecl mib) => ReflectEq.eqb mib.(ind_finite) r
  | _ => false
  end.

Definition check_one_fix d :=
  let '{| dname := na;
         dtype := ty;
         dbody := b;
         rarg := arg |} := d in
  let '(ctx, ty) := decompose_prod_assum [] ty in
  match nth_error (List.rev (smash_context [] ctx)) arg with
  | Some argd =>
    let (hd, args) := decompose_app argd.(decl_type) in
    match destInd hd with
    | Some (mkInd mind _, u) => Some mind
    | None => None
    end
  | None => None
  end.

Definition wf_fixpoint_gen
  (lookup: kername -> option global_decl) mfix :=
  forallb (isLambda ∘ dbody) mfix &&
  let checks := map check_one_fix mfix in
  match map_option_out checks with
  | Some (ind :: inds) =>

    forallb (eqb ind) inds &&
    check_recursivity_kind lookup ind Finite
  | _ => false
  end.

Definition wf_fixpoint (Σ : global_env) := wf_fixpoint_gen (lookup_env Σ).

Definition check_one_cofix d :=
  let '{| dname := na;
         dtype := ty;
         dbody := b;
         rarg := arg |} := d in
  let '(ctx, ty) := decompose_prod_assum [] ty in
  let (hd, args) := decompose_app ty in
  match destInd hd with
  | Some (mkInd ind _, u) => Some ind
  | None => None
  end.

Definition wf_cofixpoint_gen
  (lookup: kername -> option global_decl) mfix :=
  let checks := map check_one_cofix mfix in
  match map_option_out checks with
  | Some (ind :: inds) =>

    forallb (eqb ind) inds &&
    check_recursivity_kind lookup ind CoFinite
  | _ => false
  end.

Definition wf_cofixpoint (Σ : global_env) := wf_cofixpoint_gen (lookup_env Σ).

Reserved Notation "'wf_local' Σ Γ " (at level 9, Σ, Γ at next level).

Reserved Notation " Σ ;;; Γ |- t : T " (at level 50, Γ, t, T at next level).

Variant case_side_conditions `{checker_flags} wf_local_fun typing Σ Γ ci p ps mdecl idecl indices predctx :=
| case_side_info
    (eq_npars : mdecl.(ind_npars) = ci.(ci_npar))
    (wf_pred : wf_predicate mdecl idecl p)
    (cons : consistent_instance_ext Σ (ind_universes mdecl) p.(puinst))
    (wf_pctx : wf_local_fun Σ (Γ ,,, predctx))

    (conv_pctx : eq_context_upto_names p.(pcontext) (ind_predicate_context ci.(ci_ind) mdecl idecl))
    (allowed_elim : is_allowed_elimination Σ idecl.(ind_kelim) ps)
    (elim_relevance : isSortRel ps ci.(ci_relevance))
    (ind_inst : ctx_inst (typing Σ) Γ (p.(pparams) ++ indices)
                         (List.rev (subst_instance p.(puinst)
                                                   (ind_params mdecl ,,, ind_indices idecl : context))))
    (not_cofinite : isCoFinite mdecl.(ind_finite) = false).

Variant case_branch_typing `{checker_flags} wf_local_fun typing Σ Γ (ci:case_info) p ps mdecl idecl ptm  brs :=
| case_branch_info
    (wf_brs : wf_branches idecl brs)
    (brs_ty :
       All2i (fun i cdecl br =>

                eq_context_upto_names br.(bcontext) (cstr_branch_context ci mdecl cdecl) ×
                let brctxty := case_branch_type ci.(ci_ind) mdecl idecl p br ptm i cdecl in
                (wf_local_fun Σ (Γ ,,, brctxty.1) ×
                ((typing Σ (Γ ,,, brctxty.1) br.(bbody) (brctxty.2)) ×
                (typing Σ (Γ ,,, brctxty.1) brctxty.2 (tSort ps)))))
             0 idecl.(ind_ctors) brs).

Variant primitive_typing_hyps `{checker_flags}
  (typing : forall (Σ : global_env_ext) (Γ : context), term -> term -> Type)
  Σ Γ : prim_val term -> Type :=
| prim_int_hyps i : primitive_typing_hyps typing Σ Γ (primInt; primIntModel i)
| prim_float_hyps f : primitive_typing_hyps typing Σ Γ (primFloat; primFloatModel f)
| prim_string_hyps s : primitive_typing_hyps typing Σ Γ (primString; primStringModel s)
| prim_array_hyps a
  (wfl : wf_universe Σ (Universe.make' a.(array_level)))
  (hty : typing Σ Γ a.(array_type) (tSort (sType (Universe.make' a.(array_level)))))
  (hdef : typing Σ Γ a.(array_default) a.(array_type))
  (hvalue : All (fun x => typing Σ Γ x a.(array_type)) a.(array_value)) :
  primitive_typing_hyps typing Σ Γ (primArray; primArrayModel a).

Equations prim_type (p : prim_val term) (cst : kername) : term :=
prim_type (primInt; _) cst := tConst cst [];
prim_type (primFloat; _) cst := tConst cst [];
prim_type (primString; _) cst := tConst cst [];
prim_type (primArray; primArrayModel a) cst := tApp (tConst cst [a.(array_level)]) a.(array_type).

Inductive typing `{checker_flags} (Σ : global_env_ext) (Γ : context) : term -> term -> Type :=
| type_Rel : forall n decl,
    wf_local Σ Γ ->
    nth_error Γ n = Some decl ->
    Σ ;;; Γ |- tRel n : lift0 (S n) decl.(decl_type)

| type_Sort : forall s,
    wf_local Σ Γ ->
    wf_sort Σ s ->
    Σ ;;; Γ |- tSort s : tSort (Sort.super s)

| type_Prod : forall na A B s1 s2,
    lift_typing typing Σ Γ (j_vass_s na A s1) ->
    Σ ;;; Γ ,, vass na A |- B : tSort s2 ->
    Σ ;;; Γ |- tProd na A B : tSort (Sort.sort_of_product s1 s2)

| type_Lambda : forall na A t B,
    lift_typing typing Σ Γ (j_vass na A) ->
    Σ ;;; Γ ,, vass na A |- t : B ->
    Σ ;;; Γ |- tLambda na A t : tProd na A B

| type_LetIn : forall na b B t A,
    lift_typing typing Σ Γ (j_vdef na b B) ->
    Σ ;;; Γ ,, vdef na b B |- t : A ->
    Σ ;;; Γ |- tLetIn na b B t : tLetIn na b B A

| type_App : forall t na A B s u,

    Σ ;;; Γ |- tProd na A B : tSort s ->
    Σ ;;; Γ |- t : tProd na A B ->
    Σ ;;; Γ |- u : A ->
    Σ ;;; Γ |- tApp t u : B{0 := u}

| type_Const : forall cst u decl,
    wf_local Σ Γ ->
    declared_constant Σ cst decl ->
    consistent_instance_ext Σ decl.(cst_universes) u ->
    Σ ;;; Γ |- tConst cst u : decl.(cst_type)@[u]

| type_Ind : forall ind u mdecl idecl,
    wf_local Σ Γ ->
    declared_inductive Σ ind mdecl idecl ->
    consistent_instance_ext Σ mdecl.(ind_universes) u ->
    Σ ;;; Γ |- tInd ind u : idecl.(ind_type)@[u]

| type_Construct : forall ind i u mdecl idecl cdecl,
    wf_local Σ Γ ->
    declared_constructor Σ (ind, i) mdecl idecl cdecl ->
    consistent_instance_ext Σ mdecl.(ind_universes) u ->
    Σ ;;; Γ |- tConstruct ind i u : type_of_constructor mdecl cdecl (ind, i) u

| type_Case : forall ci p c brs indices ps mdecl idecl,
    let predctx := case_predicate_context ci.(ci_ind) mdecl idecl p in
    let ptm := it_mkLambda_or_LetIn predctx p.(preturn) in
    declared_inductive Σ ci.(ci_ind) mdecl idecl ->
    Σ ;;; Γ ,,, predctx |- p.(preturn) : tSort ps ->
    Σ ;;; Γ |- c : mkApps (tInd ci.(ci_ind) p.(puinst)) (p.(pparams) ++ indices) ->
    case_side_conditions (fun Σ Γ => wf_local Σ Γ) typing Σ Γ ci p ps
                         mdecl idecl indices predctx  ->
    case_branch_typing (fun Σ Γ => wf_local Σ Γ) typing Σ Γ ci p ps
                        mdecl idecl ptm brs ->
    Σ ;;; Γ |- tCase ci p c brs : mkApps ptm (indices ++ [c])

| type_Proj : forall p c u mdecl idecl cdecl pdecl args,
    declared_projection Σ p mdecl idecl cdecl pdecl ->
    Σ ;;; Γ |- c : mkApps (tInd p.(proj_ind) u) args ->
    #|args| = ind_npars mdecl ->
    Σ ;;; Γ |- tProj p c : subst0 (c :: List.rev args) pdecl.(proj_type)@[u]

| type_Fix : forall mfix n decl,
    wf_local Σ Γ ->
    fix_guard Σ Γ mfix ->
    nth_error mfix n = Some decl ->
    All (on_def_type (lift_typing1 (typing Σ)) Γ) mfix ->
    All (on_def_body (lift_typing1 (typing Σ)) (fix_context mfix) Γ) mfix ->
    wf_fixpoint Σ mfix ->
    Σ ;;; Γ |- tFix mfix n : decl.(dtype)

| type_CoFix : forall mfix n decl,
    wf_local Σ Γ ->
    cofix_guard Σ Γ mfix ->
    nth_error mfix n = Some decl ->
    All (on_def_type (lift_typing1 (typing Σ)) Γ) mfix ->
    All (on_def_body (lift_typing1 (typing Σ)) (fix_context mfix) Γ) mfix ->
    wf_cofixpoint Σ mfix ->
    Σ ;;; Γ |- tCoFix mfix n : decl.(dtype)

| type_Prim p prim_ty cdecl :
    wf_local Σ Γ ->
    primitive_constant Σ (prim_val_tag p) = Some prim_ty ->
    declared_constant Σ prim_ty cdecl ->
    primitive_invariants (prim_val_tag p) cdecl ->
    primitive_typing_hyps typing Σ Γ p ->
    Σ ;;; Γ |- tPrim p : prim_type p prim_ty

| type_Cumul : forall t A B s,
    Σ ;;; Γ |- t : A ->
    Σ ;;; Γ |- B : tSort s ->
    Σ ;;; Γ |- A <=s B ->
    Σ ;;; Γ |- t : B

where " Σ ;;; Γ |- t : T " := (typing Σ Γ t T)
and "'wf_local' Σ Γ " := (All_local_env (lift_typing1 (typing Σ)) Γ).

Lemma meta_conv {cf} {Σ Γ t A B} :
    Σ ;;; Γ |- t : A ->
    A = B ->
    Σ ;;; Γ |- t : B.
Admitted.

Module PCUICTypingDef <: EnvironmentTyping.Typing PCUICTerm PCUICEnvironment PCUICTermUtils PCUICEnvTyping PCUICConversion PCUICConversionParSpec.

  Definition typing := @typing.

End PCUICTypingDef.

Definition wf `{checker_flags} := on_global_env cumulSpec0 (lift_typing typing).
Existing Class wf.

Definition env_prop `{checker_flags} (P : forall Σ Γ t T, Type) (Pj : forall Σ Γ j, Type) (PΓ : forall Σ Γ, Type) :=
  forall Σ (wfΣ : wf Σ.1) Γ t T (ty : Σ ;;; Γ |- t : T),
  on_global_env cumulSpec0 Pj Σ.1 * (PΓ Σ Γ * P Σ Γ t T).

Lemma typing_ind_env `{cf : checker_flags} :
  forall (P : global_env_ext -> context -> term -> term -> Type)
         (Pj : global_env_ext -> context -> judgment -> Type)
         (Pdecl := fun Σ Γ wfΓ t T tyT => P Σ Γ t T)
         (PΓ : global_env_ext -> context -> Type),

    (forall Σ (wfΣ : wf Σ) (Γ : context)  j,
         lift_typing_conj (typing Σ) (P Σ) Γ j -> Pj Σ Γ j) ->

    (forall Σ (wfΣ : wf Σ.1)  (Γ : context) (wfΓ : wf_local Σ Γ),
         All_local_env_over (typing Σ) (Pdecl Σ) Γ wfΓ -> All_local_env (Pj Σ) Γ -> PΓ Σ Γ) ->

    (forall Σ (wfΣ : wf Σ.1) (Γ : context) (wfΓ : wf_local Σ Γ) (n : nat) decl,
        nth_error Γ n = Some decl ->
        PΓ Σ Γ ->
        P Σ Γ (tRel n) (lift0 (S n) decl.(decl_type))) ->

    (forall Σ (wfΣ : wf Σ.1) (Γ : context) (wfΓ : wf_local Σ Γ) (u : sort),
        PΓ Σ Γ ->
        wf_sort Σ u ->
        P Σ Γ (tSort u) (tSort (Sort.super u))) ->

    (forall Σ (wfΣ : wf Σ.1) (Γ : context) (wfΓ : wf_local Σ Γ) (na : aname) (t b : term) (s1 s2 : sort),
        PΓ Σ Γ ->
        lift_typing typing Σ Γ (j_vass_s na t s1) ->
        Pj Σ Γ (j_vass_s na t s1) ->
        Σ ;;; Γ,, vass na t |- b : tSort s2 ->
        P Σ (Γ,, vass na t) b (tSort s2) -> P Σ Γ (tProd na t b) (tSort (Sort.sort_of_product s1 s2))) ->

    (forall Σ (wfΣ : wf Σ.1) (Γ : context) (wfΓ : wf_local Σ Γ) (na : aname) (t b bty : term),
        PΓ Σ Γ ->
        lift_typing typing Σ Γ (j_vass na t) ->
        Pj Σ Γ (j_vass na t) ->
        Σ ;;; Γ,, vass na t |- b : bty -> P Σ (Γ,, vass na t) b bty -> P Σ Γ (tLambda na t b) (tProd na t bty)) ->

    (forall Σ (wfΣ : wf Σ.1) (Γ : context) (wfΓ : wf_local Σ Γ) (na : aname) (b b_ty b' b'_ty : term),
        PΓ Σ Γ ->
        lift_typing typing Σ Γ (j_vdef na b b_ty) ->
        Pj Σ Γ (j_vdef na b b_ty) ->
        Σ ;;; Γ,, vdef na b b_ty |- b' : b'_ty ->
        P Σ (Γ,, vdef na b b_ty) b' b'_ty -> P Σ Γ (tLetIn na b b_ty b') (tLetIn na b b_ty b'_ty)) ->

    (forall Σ (wfΣ : wf Σ.1) (Γ : context) (wfΓ : wf_local Σ Γ) (t : term) na A B u s,
        PΓ Σ Γ ->
        Σ ;;; Γ |- tProd na A B : tSort s -> P Σ Γ (tProd na A B) (tSort s) ->
        Σ ;;; Γ |- t : tProd na A B -> P Σ Γ t (tProd na A B) ->
        Σ ;;; Γ |- u : A -> P Σ Γ u A ->
        P Σ Γ (tApp t u) (B{0 := u})) ->

    (forall Σ (wfΣ : wf Σ.1) (Γ : context) (wfΓ : wf_local Σ Γ) cst u (decl : constant_body),
        on_global_env cumulSpec0 Pj Σ.1 ->
        PΓ Σ Γ ->
        declared_constant Σ.1 cst decl ->
        consistent_instance_ext Σ decl.(cst_universes) u ->
        P Σ Γ (tConst cst u) (subst_instance u (cst_type decl))) ->

    (forall Σ (wfΣ : wf Σ.1) (Γ : context) (wfΓ : wf_local Σ Γ) (ind : inductive) u
          mdecl idecl (isdecl : declared_inductive Σ.1 ind mdecl idecl),
        on_global_env cumulSpec0 Pj Σ.1 ->
        PΓ Σ Γ ->
        consistent_instance_ext Σ mdecl.(ind_universes) u ->
        P Σ Γ (tInd ind u) (subst_instance u (ind_type idecl))) ->

    (forall Σ (wfΣ : wf Σ.1) (Γ : context) (wfΓ : wf_local Σ Γ) (ind : inductive) (i : nat) u
            mdecl idecl cdecl (isdecl : declared_constructor Σ.1 (ind, i) mdecl idecl cdecl),
        on_global_env cumulSpec0 Pj Σ.1 ->
        PΓ Σ Γ ->
        consistent_instance_ext Σ mdecl.(ind_universes) u ->
        P Σ Γ (tConstruct ind i u) (type_of_constructor mdecl cdecl (ind, i) u)) ->

    (forall (Σ : global_env_ext) (wfΣ : wf Σ) (Γ : context) (wfΓ : wf_local Σ Γ),
    forall (ci : case_info) p c brs indices ps mdecl idecl
      (isdecl : declared_inductive Σ.1 ci.(ci_ind) mdecl idecl),
      on_global_env cumulSpec0 Pj Σ.1 ->
      PΓ Σ Γ ->
      mdecl.(ind_npars) = ci.(ci_npar) ->
      eq_context_upto_names p.(pcontext) (ind_predicate_context ci.(ci_ind) mdecl idecl) ->
      let predctx := case_predicate_context ci.(ci_ind) mdecl idecl p in
      wf_predicate mdecl idecl p ->
      consistent_instance_ext Σ (ind_universes mdecl) p.(puinst) ->
      wf_local Σ (Γ ,,, predctx) ->
      forall pret : Σ ;;; Γ ,,, predctx |- p.(preturn) : tSort ps,
      P Σ (Γ ,,, predctx) p.(preturn) (tSort ps) ->
      PΓ Σ (Γ ,,, predctx) ->
      is_allowed_elimination Σ idecl.(ind_kelim) ps ->
      isSortRel ps ci.(ci_relevance) ->
      ctx_inst (Prop_conj typing P Σ) Γ (p.(pparams) ++ indices)
        (List.rev (subst_instance p.(puinst) (mdecl.(ind_params) ,,, idecl.(ind_indices) : context))) ->
      Σ ;;; Γ |- c : mkApps (tInd ci.(ci_ind) p.(puinst)) (p.(pparams) ++ indices) ->
      P Σ Γ c (mkApps (tInd ci.(ci_ind) p.(puinst)) (p.(pparams) ++ indices)) ->
      isCoFinite mdecl.(ind_finite) = false ->
      let ptm := it_mkLambda_or_LetIn predctx p.(preturn) in
      wf_branches idecl brs ->
      All2i (fun i cdecl br =>
        (eq_context_upto_names br.(bcontext) (cstr_branch_context ci mdecl cdecl)) ×
        let brctxty := case_branch_type ci.(ci_ind) mdecl idecl p br ptm i cdecl in
        (PΓ Σ (Γ ,,, brctxty.1) ×
          Prop_conj typing P Σ (Γ ,,, brctxty.1) br.(bbody) brctxty.2 ×
          Prop_conj typing P Σ (Γ ,,, brctxty.1) brctxty.2 (tSort ps))) 0 idecl.(ind_ctors) brs ->
      P Σ Γ (tCase ci p c brs) (mkApps ptm (indices ++ [c]))) ->

    (forall Σ (wfΣ : wf Σ.1) (Γ : context) (wfΓ : wf_local Σ Γ) (p : projection) (c : term) u
          mdecl idecl cdecl pdecl (isdecl : declared_projection Σ.1 p mdecl idecl cdecl pdecl) args,
        on_global_env cumulSpec0 Pj Σ.1 -> PΓ Σ Γ ->
        Σ ;;; Γ |- c : mkApps (tInd p.(proj_ind) u) args ->
        P Σ Γ c (mkApps (tInd p.(proj_ind) u) args) ->
        #|args| = ind_npars mdecl ->
        P Σ Γ (tProj p c) (subst0 (c :: List.rev args) (subst_instance u pdecl.(proj_type)))) ->

    (forall Σ (wfΣ : wf Σ.1) (Γ : context) (wfΓ : wf_local Σ Γ) (mfix : list (def term)) (n : nat) decl,
        let types := fix_context mfix in
        fix_guard Σ Γ mfix ->
        nth_error mfix n = Some decl ->
        PΓ Σ (Γ ,,, types) ->
        All (on_def_type (lift_typing typing Σ) Γ) mfix ->
        All (on_def_type (Pj Σ) Γ) mfix ->
        All (on_def_body (lift_typing typing Σ) types Γ) mfix ->
        All (on_def_body (Pj Σ) types Γ) mfix ->
        wf_fixpoint Σ mfix ->
        P Σ Γ (tFix mfix n) decl.(dtype)) ->

    (forall Σ (wfΣ : wf Σ.1) (Γ : context) (wfΓ : wf_local Σ Γ) (mfix : list (def term)) (n : nat) decl,
        let types := fix_context mfix in
        cofix_guard Σ Γ mfix ->
        nth_error mfix n = Some decl ->
        PΓ Σ (Γ ,,, types) ->
        All (on_def_type (lift_typing typing Σ) Γ) mfix ->
        All (on_def_type (Pj Σ) Γ) mfix ->
        All (on_def_body (lift_typing typing Σ) types Γ) mfix ->
        All (on_def_body (Pj Σ) types Γ) mfix ->
        wf_cofixpoint Σ mfix ->
        P Σ Γ (tCoFix mfix n) decl.(dtype)) ->

    (forall Σ (wfΣ : wf Σ.1) (Γ : context) (wfΓ : wf_local Σ Γ) (p : prim_val term) prim_ty cdecl,
        PΓ Σ Γ ->
        primitive_constant Σ (prim_val_tag p) = Some prim_ty ->
        declared_constant Σ prim_ty cdecl ->
        primitive_invariants (prim_val_tag p) cdecl ->
        primitive_typing_hyps typing Σ Γ p ->
        primitive_typing_hyps P Σ Γ p ->
        P Σ Γ (tPrim p) (prim_type p prim_ty)) ->

    (forall Σ (wfΣ : wf Σ.1) (Γ : context) (wfΓ : wf_local Σ Γ) (t A B : term) s,
        PΓ Σ Γ ->
        Σ ;;; Γ |- t : A ->
        P Σ Γ t A ->
        Σ ;;; Γ |- B : tSort s ->
        P Σ Γ B (tSort s) ->
        Σ ;;; Γ |- A <=s B ->
        P Σ Γ t B) ->

       env_prop P Pj PΓ.
Admitted.

End PCUICTyping.

Definition on_udecl_prop (Σ : global_env) (udecl : universes_decl)
  := let levels := levels_of_udecl udecl in
     let global_levels := global_levels Σ.(universes) in
     let all_levels := LevelSet.union levels global_levels in
     ConstraintSet.For_all (declared_cstr_levels all_levels) (constraints_of_udecl udecl).
Import MetaRocq.Common.config.

Create HintDb univ_subst.

Lemma subst_instance_two u1 u2 (t : term) :
  subst_instance u1 (subst_instance u2 t)
  = subst_instance (subst_instance u1 u2) t.
Admitted.

Lemma subst_instance_two_context u1 u2 (Γ : context) :
  subst_instance u1 (subst_instance u2 Γ)
  = subst_instance (subst_instance u1 u2) Γ.
Admitted.

Definition wf_ext_wk {cf : checker_flags} (Σ : global_env_ext)
  := wf Σ.1 × on_udecl_prop Σ.1 Σ.2.

Lemma consistent_ext_trans {cf : checker_flags} Σ φ φ' udecl inst inst' :
  wf_ext_wk (Σ, φ) ->
  consistent_instance_ext (Σ, φ) udecl inst ->
  consistent_instance_ext (Σ, φ') φ inst' ->
  consistent_instance_ext (Σ, φ') udecl (subst_instance inst' inst).
Admitted.

#[global] Hint Resolve consistent_ext_trans : univ_subst.

Lemma consistent_instance_valid_constraints {cf : checker_flags} Σ φ u univs :
  wf_ext_wk (Σ, φ) ->
  consistent_instance_ext (Σ, univs) φ u ->
  valid_constraints (global_ext_constraints (Σ, univs))
                    (subst_instance_cstrs u (global_ext_constraints (Σ, φ))).
Admitted.

#[global] Hint Resolve consistent_instance_valid_constraints : univ_subst.

Lemma subst_instance_univ_super l u
  : subst_instance_sort u (Sort.super l) = Sort.super (subst_instance u l).
Admitted.

Lemma product_subst_instance u s1 s2
 : subst_instance_sort u (Sort.sort_of_product s1 s2)
   = Sort.sort_of_product (subst_instance_sort u s1) (subst_instance_sort u s2).
Admitted.
Global Instance subst_instance_predicate : UnivSubst (predicate term).
exact (fun u => map_predicate (subst_instance u) (subst_instance u) (subst_instance u) id).
Defined.

Lemma subst_instance_app {A} {au : UnivSubst A} u (L1 L2 : list A) :
  subst_instance u (L1 ++ L2)
  = subst_instance u L1 ++ subst_instance u L2.
Admitted.

Lemma subst_instance_app_ctx u (L1 L2 : context) :
  subst_instance u (L1 ,,, L2)
  = subst_instance u L1 ,,, subst_instance u L2.
Admitted.

Lemma subst_instance_subst_telescope u s k ctx :
  subst_instance u (subst_telescope s k ctx) =
  subst_telescope (subst_instance u s) k (subst_instance u ctx).
Admitted.

Lemma subst_instance_case_branch_context ind mdecl u p bctx cdecl :
  subst_instance u (case_branch_context ind mdecl p bctx cdecl) =
  case_branch_context ind mdecl (subst_instance u p) bctx cdecl.
Admitted.

Lemma subst_instance_case_predicate_context ind mdecl idecl p u :
  subst_instance u (case_predicate_context ind mdecl idecl p) =
  case_predicate_context ind mdecl idecl (subst_instance u p).
Admitted.

Lemma subst_instance_case_branch_type {cf : checker_flags} {Σ} {wfΣ : wf Σ} u (ci : case_info) mdecl idecl p predctx br i cdecl :
  let ptm :=
    it_mkLambda_or_LetIn predctx (preturn p)
  in
  let p' := subst_instance u p in
  let ptm' :=
    it_mkLambda_or_LetIn
      (subst_instance u predctx)
      (preturn p') in
  case_branch_type ci mdecl idecl
     (subst_instance u p)
     (map_branch (subst_instance u) id br)
     ptm' i cdecl =
  map_pair (subst_instance u) (subst_instance u)
  (case_branch_type ci mdecl idecl p br ptm i cdecl).
Admitted.

Lemma subst_instance_wf_predicate u mdecl idecl p :
  wf_predicate mdecl idecl p ->
  wf_predicate mdecl idecl (subst_instance u p).
Admitted.

Lemma subst_instance_wf_branch u cdecl br :
  wf_branch cdecl br ->
  wf_branch cdecl (map_branch (subst_instance u) id br).
Admitted.

Lemma subst_instance_wf_branches cdecl u brs :
  wf_branches cdecl brs ->
  wf_branches cdecl (List.map (map_branch (subst_instance u) id) brs).
Admitted.
#[global] Hint Resolve subst_instance_wf_predicate
  subst_instance_wf_branch subst_instance_wf_branches : pcuic.

Lemma is_allowed_elimination_subst_instance {cf : checker_flags} (Σ : global_env_ext) univs inst u al :
  valid_constraints (global_ext_constraints (Σ.1, univs))
                    (subst_instance_cstrs inst Σ) ->
  is_allowed_elimination Σ al u ->
  is_allowed_elimination (global_ext_constraints (Σ.1, univs)) al (subst_instance_sort inst u).
Admitted.

Lemma wf_sort_subst_instance {cf : checker_flags} (Σ : global_env_ext) univs ui s :
   wf Σ ->
   wf_sort Σ s ->
   consistent_instance_ext (Σ.1, univs) Σ.2 ui ->
   wf_sort (Σ.1, univs) (subst_instance ui s).
Admitted.
Import Stdlib.ssr.ssreflect.

Local Ltac aa := rdest; eauto with univ_subst.

Section SubstIdentity.
  Context `{cf:checker_flags}.

Lemma typing_subst_instance :
  env_prop (fun Σ Γ t T => forall u univs,
                wf_ext_wk Σ ->
                consistent_instance_ext (Σ.1, univs) Σ.2 u ->
                (Σ.1,univs) ;;; subst_instance u Γ
                |- subst_instance u t : subst_instance u T)
          (fun Σ Γ j => forall u univs,
            wf_ext_wk Σ ->
            consistent_instance_ext (Σ.1, univs) Σ.2 u ->
            lift_typing (fun Σ Γ t T =>
            (Σ.1,univs) ;;; Γ@[u] |- t@[u] : T@[u]) Σ Γ j)
          (fun Σ Γ => forall u univs,
          wf_ext_wk Σ ->
          consistent_instance_ext (Σ.1, univs) Σ.2 u ->
          wf_local(Σ.1,univs) (subst_instance u Γ)).
Proof using Type.
  apply typing_ind_env; intros Σ wfΣ Γ wfΓ; cbn  -[Universe.make] in *.
  -
 intros X ????.
    apply lift_typing_impl with (1 := X) => t T [_ IH].
    now eapply IH.
  -
 rewrite /subst_instance /=.
    intros _; clear wfΓ.
    induction 1 using All_local_env_ind1.
1: constructor.
    intros.
simpl.
    apply All_local_env_snoc.
1: now apply IHX.
    eapply lift_typing_mapu with (u := None) => //; auto using relevance_subst_opt.

  -
 intros n decl eq X u univs wfΣ' H.
rewrite subst_instance_lift.
    rewrite map_decl_type.
econstructor; aa.
    unfold subst_instance, map_context.
    now rewrite nth_error_map eq.
  -
 intros l X Hl u univs wfΣ' H.
    rewrite subst_instance_univ_super.
    +
 econstructor.
      *
 aa.
      *
 now apply wf_sort_subst_instance.
  -
 intros n t0 b s1 s2 X X0 X1 X2 X3 u univs wfΣ' H.
    rewrite product_subst_instance; aa.
econstructor.
    +
 eapply lift_typing_mapu with (tm := None) (u := Some _) => //;
      auto using relevance_subst_opt.
    +
 eapply X3; eauto.
  -
 intros n t0 b bty X X0 X1 X2 X3 u univs wfΣ' H.
    econstructor.
    +
 eapply lift_typing_mapu with (tm := None) (u := None) => //;
      auto using relevance_subst_opt.
    +
 eapply X3; aa.
  -
 intros n b b_ty b' b'_ty X X0 X1 X2 X3 u univs wfΣ' H.
    econstructor; eauto.
    +
 eapply lift_typing_mapu with (tm := Some _) (u := None) => //;
      auto using relevance_subst_opt.
    +
 eapply X3; aa.
  -
 intros t0 na A B s u X X0 X1 X2 X3 X4 X5 u0 univs wfΣ' H.
    rewrite subst_instance_subst.
cbn.
econstructor.
    +
 eapply X1; eauto.
    +
 eapply X3; eauto.
    +
 eapply X5; eauto.
  -
 intros.
rewrite subst_instance_two.
econstructor; [aa|aa|].
    clear X X0; cbn in *.
    eapply consistent_ext_trans; eauto.
  -
 intros.
rewrite subst_instance_two.
econstructor; [aa|aa|].
    clear X X0; cbn in *.
    eapply consistent_ext_trans; eauto.
  -
 intros.
eapply meta_conv.
1: econstructor; aa.
    clear.
    unfold type_of_constructor; cbn.
    rewrite subst_instance_subst.
f_equal.
    +
 unfold inds.
induction #|ind_bodies mdecl|.
1: reflexivity.
      cbn.
now rewrite IHn.
    +
 symmetry; apply subst_instance_two.

  -
 intros ci p c brs args u mdecl idecl isdecl hΣ hΓ indnp eqpctx wfp cup
      wfpctx pty Hpty Hcpc kelim hrel
      IHctxi Hc IHc notCoFinite wfbrs hbrs i univs wfext cu.
    rewrite subst_instance_mkApps subst_instance_it_mkLambda_or_LetIn map_app.
    cbn.
    change (subst_instance i (preturn p)) with (preturn (subst_instance i p)).
    change (subst_instance i (pcontext p)) with (pcontext (subst_instance i p)).
    change (map_predicate _ _ _ _ _) with (subst_instance i p).
    rewrite subst_instance_case_predicate_context.
    eapply type_Case with (p:=subst_instance i p)
                          (ps:=subst_instance_sort i u); eauto with pcuic.
    3,4: constructor; eauto with pcuic.
    +
 rewrite -subst_instance_case_predicate_context - !subst_instance_app_ctx.
      eapply Hpty; eauto.
    +
 eapply IHc in cu => //.
      now rewrite subst_instance_mkApps map_app in cu.
    +
 simpl.
eapply consistent_ext_trans; tea.
    +
 now rewrite -subst_instance_case_predicate_context -subst_instance_app_ctx.
    +
 cbn in *.
      eapply is_allowed_elimination_subst_instance; aa.
    +
 now apply relevance_subst.
    +
 move: IHctxi.
simpl.
      rewrite -subst_instance_app.
      rewrite -subst_instance_two_context.
      rewrite -[List.rev (subst_instance i _)]map_rev.
      clear -wfext cu.
induction 1; try destruct t0; cbn; constructor; simpl; eauto.
      all:now rewrite -(subst_instance_subst_telescope i [_]).
    +
 rewrite -{1}(map_id (ind_ctors idecl)).
      eapply All2i_map.
eapply All2i_impl; eauto.
      cbn -[case_branch_type case_branch_context subst_instance].
      intros k cdecl br (hctx & hcbctx & (hbod & ihbod) & hbty & ihbty).
      rewrite case_branch_type_fst.
      rewrite - !subst_instance_case_branch_context - !subst_instance_app_ctx.
      rewrite -subst_instance_case_predicate_context subst_instance_case_branch_type.
      repeat split; [auto..| |].
      *
 specialize (ihbod i univs wfext cu).
        cbn.
eapply ihbod.
      *
 specialize (ihbty i univs wfext cu).
        cbn.
eapply ihbty.
  -
 intros p c u mdecl idecl cdecl pdecl isdecl args X X0 X1 X2 H u0 univs wfΣ' H0.
    rewrite subst_instance_subst.
cbn.
    rewrite !subst_instance_two.
    rewrite {4}/subst_instance /subst_instance_list /=.
    rewrite map_rev.
