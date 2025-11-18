
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/utils/theories" "MetaRocq.Utils" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/common/theories" "MetaRocq.Common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/pcuic/theories" "MetaRocq.PCUIC" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/safechecker-plugin/theories" "MetaRocq.SafeCheckerPlugin" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-pcuic/theories" "MetaRocq.TemplatePCUIC" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq/theories" "MetaRocq.Template" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/safechecker/theories" "MetaRocq.SafeChecker" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/erasure/theories" "MetaRocq.Erasure" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Equations" "Equations" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq" "-top" "MetaRocq.Erasure.EWcbvEval") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 2155 lines to 516 lines, then from 530 lines to 1482 lines, then from 1487 lines to 517 lines, then from 531 lines to 1202 lines, then from 1208 lines to 611 lines, then from 625 lines to 1214 lines, then from 1217 lines to 672 lines, then from 686 lines to 1728 lines, then from 1733 lines to 780 lines, then from 794 lines to 1587 lines, then from 1593 lines to 789 lines, then from 803 lines to 1613 lines, then from 1619 lines to 845 lines, then from 859 lines to 1466 lines, then from 1469 lines to 945 lines, then from 959 lines to 1859 lines, then from 1865 lines to 1022 lines, then from 1036 lines to 3851 lines, then from 3850 lines to 2939 lines *)
(* coqc version 9.2+alpha compiled with OCaml 4.14.2
   coqtop version 9.2+alpha
   Expected coqc runtime on this file: 4.878 sec
   Expected coqc peak memory usage on this file: 748960.0 kb *)










Require MetaRocq.Common.Environment.
Require MetaRocq.Common.Universes.
Require MetaRocq.Common.BasicAst.
Require MetaRocq.Common.Kernames.
Require MetaRocq.Utils.MRFSets.
Require MetaRocq.Utils.utils.
Require MetaRocq.Utils.MRUtils.
Require MetaRocq.Utils.Show.
Require MetaRocq.Common.Primitive.
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
Require Stdlib.Numbers.HexadecimalString.
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
Require Stdlib.ssr.ssrfun.
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
Require Stdlib.Init.Sumbool.
Require Stdlib.Init.Nat.
Require Stdlib.Init.Byte.
Require Stdlib.Init.Decimal.
Require Stdlib.Init.Wf.
Require Stdlib.Init.Hexadecimal.
Require Stdlib.Floats.FloatOps.
Require Stdlib.Floats.SpecFloat.
Require Stdlib.Floats.PrimFloat.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.CRelationClasses.
Require Stdlib.Classes.CMorphisms.
Require Stdlib.BinNums.IntDef.
Require Stdlib.BinNums.PosDef.
Require Stdlib.BinNums.NatDef.
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
Require Corelib.Numbers.BinNums.
Require Corelib.Strings.PrimStringAxioms.
Require Corelib.Classes.Morphisms.
Require Corelib.Classes.CMorphisms.
Require Corelib.Init.Sumbool.
Require Corelib.Strings.PrimString.
Require Corelib.Program.Wf.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Init.Ltac.
Require Corelib.Program.Tactics.
Require Corelib.Program.Utils.
Require Corelib.Classes.RelationClasses.
Require Corelib.Lists.ListDef.
Require Corelib.ssr.ssrfun.
Require Corelib.Init.Byte.
Require Corelib.BinNums.NatDef.
Require Corelib.Init.Nat.
Require Corelib.ssr.ssreflect.
Require Corelib.BinNums.PosDef.
Require Corelib.Init.Decimal.
Require Corelib.Numbers.Cyclic.Int63.PrimInt63.
Require Corelib.ssr.ssrbool.
Require Corelib.Floats.PrimFloat.
Require Corelib.Classes.CRelationClasses.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Setoids.Setoid.
Require Corelib.Program.Basics.
Require Corelib.Numbers.Cyclic.Int63.Sint63Axioms.
Require Corelib.Init.Wf.
Require Corelib.Numbers.Cyclic.Int63.CarryType.
Require Corelib.BinNums.IntDef.
Require Corelib.Init.Hexadecimal.
Require Corelib.Floats.FloatOps.
Require Corelib.Numbers.Cyclic.Int63.Uint63Axioms.

Module Export AdmitTactic.
Module Import LocalFalse.
Inductive False : Prop := .
End LocalFalse.
Axiom proof_admitted : False.
Import Coq.Init.Ltac.
Tactic Notation "admit" := abstract case proof_admitted.
End AdmitTactic.

Module Export MetaRocq_DOT_Common_DOT_EnvironmentTyping_WRAPPED.
Module Export EnvironmentTyping.
Import Stdlib.ssr.ssreflect.
Import Stdlib.ssr.ssrbool.
Import MetaRocq.Utils.utils.
Import MetaRocq.Common.config.
Import MetaRocq.Common.BasicAst.
Import MetaRocq.Common.Universes.
Import MetaRocq.Common.Environment.
Import MetaRocq.Common.Primitive.
Import Equations.Prop.Equations.

Module Lookup (T : Term) (E : EnvironmentSig T).
Import T.
Import E.

  

  Definition declared_constant_gen (lookup : kername -> option global_decl) (id : kername) decl : Prop :=
    lookup id = Some (ConstantDecl decl).

  Definition declared_constant (Σ : global_env) id decl := In (id,ConstantDecl decl) (declarations Σ).

  Definition declared_minductive_gen (lookup : kername -> option global_decl) mind decl :=
    lookup mind = Some (InductiveDecl decl).

  Definition declared_minductive Σ mind decl := In (mind,InductiveDecl decl) (declarations Σ).

  Definition declared_inductive_gen lookup ind mdecl decl :=
    declared_minductive_gen lookup (inductive_mind ind) mdecl /\
    List.nth_error mdecl.(ind_bodies) (inductive_ind ind) = Some decl.

  Definition declared_inductive Σ ind mdecl decl :=
    declared_minductive Σ (inductive_mind ind) mdecl /\
    List.nth_error mdecl.(ind_bodies) (inductive_ind ind) = Some decl.

  Definition declared_constructor_gen lookup cstr mdecl idecl cdecl : Prop :=
    declared_inductive_gen lookup (fst cstr) mdecl idecl /\
    List.nth_error idecl.(ind_ctors) (snd cstr) = Some cdecl.

  Definition declared_constructor Σ cstr mdecl idecl cdecl :=
    declared_inductive Σ (fst cstr) mdecl idecl /\
    List.nth_error idecl.(ind_ctors) (snd cstr) = Some cdecl.

  Definition declared_projection_gen lookup (proj : projection) mdecl idecl cdecl pdecl
  : Prop :=
    declared_constructor_gen lookup (proj.(proj_ind), 0) mdecl idecl cdecl /\
    List.nth_error idecl.(ind_projs) proj.(proj_arg) = Some pdecl /\
    mdecl.(ind_npars) = proj.(proj_npars).

  Definition declared_projection Σ (proj : projection) mdecl idecl cdecl pdecl
  : Prop :=
    declared_constructor Σ (proj.(proj_ind), 0) mdecl idecl cdecl /\
    List.nth_error idecl.(ind_projs) proj.(proj_arg) = Some pdecl /\
    mdecl.(ind_npars) = proj.(proj_npars).

  Definition lookup_constant_gen (lookup : kername -> option global_decl) kn :=
    match lookup kn with
    | Some (ConstantDecl d) => Some d
    | _ => None
    end.

  Definition lookup_constant Σ := lookup_constant_gen (lookup_env Σ).

  Definition lookup_minductive_gen (lookup : kername -> option global_decl) mind :=
    match lookup mind with
    | Some (InductiveDecl decl) => Some decl
    | _ => None
    end.

  Definition lookup_minductive Σ := lookup_minductive_gen (lookup_env Σ).

  Definition lookup_inductive_gen lookup ind :=
    match lookup_minductive_gen lookup (inductive_mind ind) with
    | Some mdecl =>
      match nth_error mdecl.(ind_bodies) (inductive_ind ind) with
      | Some idecl => Some (mdecl, idecl)
      | None => None
      end
    | None => None
    end.

  Definition lookup_inductive Σ := lookup_inductive_gen (lookup_env Σ).

  Definition lookup_constructor_gen lookup ind k :=
    match lookup_inductive_gen lookup ind with
    | Some (mdecl, idecl) =>
      match nth_error idecl.(ind_ctors) k with
      | Some cdecl => Some (mdecl, idecl, cdecl)
      | None => None
      end
    | _ => None
    end.

  Definition lookup_constructor Σ := lookup_constructor_gen (lookup_env Σ).

  Definition lookup_projection_gen lookup p :=
    match lookup_constructor_gen lookup p.(proj_ind) 0 with
    | Some (mdecl, idecl, cdecl) =>
      match nth_error idecl.(ind_projs) p.(proj_arg) with
      | Some pdecl => Some (mdecl, idecl, cdecl, pdecl)
      | None => None
      end
    | _ => None
    end.

  Definition lookup_projection Σ := lookup_projection_gen (lookup_env Σ).

  Lemma declared_constant_lookup_gen {lookup kn cdecl} :
    declared_constant_gen lookup kn cdecl ->
    lookup_constant_gen lookup kn = Some cdecl.
Admitted.

  Lemma lookup_constant_declared_gen {lookup kn cdecl} :
    lookup_constant_gen lookup kn = Some cdecl ->
    declared_constant_gen lookup kn cdecl.
Admitted.

  Lemma declared_minductive_lookup_gen {lookup ind mdecl} :
    declared_minductive_gen lookup ind mdecl ->
    lookup_minductive_gen lookup ind = Some mdecl.
Admitted.

  Lemma lookup_minductive_declared_gen {lookup ind mdecl} :
    lookup_minductive_gen lookup ind = Some mdecl ->
    declared_minductive_gen lookup ind mdecl.
Admitted.

  Lemma declared_inductive_lookup_gen {lookup ind mdecl idecl} :
    declared_inductive_gen lookup ind mdecl idecl ->
    lookup_inductive_gen lookup ind = Some (mdecl, idecl).
Admitted.

  Lemma lookup_inductive_declared_gen {lookup ind mdecl idecl} :
    lookup_inductive_gen lookup ind = Some (mdecl, idecl) ->
    declared_inductive_gen lookup ind mdecl idecl.
Admitted.

  Lemma declared_constructor_lookup_gen {lookup id mdecl idecl cdecl} :
    declared_constructor_gen lookup id mdecl idecl cdecl ->
    lookup_constructor_gen lookup id.1 id.2 = Some (mdecl, idecl, cdecl).
Admitted.

  Lemma lookup_constructor_declared_gen {lookup id mdecl idecl cdecl} :
    lookup_constructor_gen lookup id.1 id.2 = Some (mdecl, idecl, cdecl) ->
    declared_constructor_gen lookup id mdecl idecl cdecl.
Admitted.

  Lemma declared_projection_lookup_gen {lookup p mdecl idecl cdecl pdecl} :
    declared_projection_gen lookup p mdecl idecl cdecl pdecl ->
    lookup_projection_gen lookup p = Some (mdecl, idecl, cdecl, pdecl).
Admitted.

  Lemma lookup_projection_declared_gen {lookup p mdecl idecl cdecl pdecl} :
    ind_npars mdecl = p.(proj_npars) ->
    lookup_projection_gen lookup p = Some (mdecl, idecl, cdecl, pdecl) ->
    declared_projection_gen lookup p mdecl idecl cdecl pdecl.
Admitted.

  Definition on_udecl_decl {A} (F : universes_decl -> A) d : A :=
  match d with
  | ConstantDecl cb => F cb.(cst_universes)
  | InductiveDecl mb => F mb.(ind_universes)
  end.

  Definition universes_decl_of_decl := on_udecl_decl (fun x => x).
Definition global_levels (univs : ContextSet.t) : LevelSet.t. exact (LevelSet.union (ContextSet.levels univs) (LevelSet.singleton (Level.lzero))). Defined.

  Lemma global_levels_InSet Σ :
    LevelSet.In Level.lzero (global_levels Σ).
Admitted.

  Lemma global_levels_memSet univs :
    LevelSet.mem Level.lzero (global_levels univs) = true.
Admitted.
Definition global_constraints (Σ : global_env) : ConstraintSet.t. exact (snd Σ.(universes)). Defined.
Definition global_uctx (Σ : global_env) : ContextSet.t. exact ((global_levels Σ.(universes), global_constraints Σ)). Defined.
Definition global_ext_levels (Σ : global_env_ext) : LevelSet.t. exact (LevelSet.union (levels_of_udecl (snd Σ)) (global_levels Σ.1.(universes))). Defined.
Definition global_ext_constraints (Σ : global_env_ext) : ConstraintSet.t. exact (ConstraintSet.union
      (constraints_of_udecl (snd Σ))
      (global_constraints Σ.1)). Defined.

  Coercion global_ext_constraints : global_env_ext >-> ConstraintSet.t.
Definition global_ext_uctx (Σ : global_env_ext) : ContextSet.t. exact ((global_ext_levels Σ, global_ext_constraints Σ)). Defined.

  Lemma global_ext_levels_InSet Σ :
    LevelSet.In Level.lzero (global_ext_levels Σ).
Admitted.

  

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

  Lemma consistent_instance_length {cf : checker_flags} {Σ : global_env_ext} {univs u} :
    consistent_instance_ext Σ univs u ->
    #|u| = #|abstract_instance univs|.
Admitted.

  Definition wf_universe Σ (u : Universe.t) : Prop :=
    forall l, LevelExprSet.In l u -> LevelSet.In (LevelExpr.get_level l) (global_ext_levels Σ).

  Definition wf_sort Σ (s : sort) : Prop :=
    Sort.on_sort (wf_universe Σ) True s.

  Definition wf_universe_dec Σ u : {wf_universe Σ u} + {~wf_universe Σ u}.
Admitted.

  Definition wf_sort_dec Σ s : {@wf_sort Σ s} + {~@wf_sort Σ s}.
Admitted.

  Lemma declared_ind_declared_constructors `{cf : checker_flags} {Σ ind mib oib} :
    declared_inductive Σ ind mib oib ->
    Alli (fun i => declared_constructor Σ (ind, i) mib oib) 0 (ind_ctors oib).
Admitted.

End Lookup.

Module Type LookupSig (T : Term) (E : EnvironmentSig T).
  Include Lookup T E.
End LookupSig.

Module EnvTyping (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E).
Import T.
Import E.
Import TU.

  

  Notation on_local_decl P Γ d :=
    (P Γ (j_decl d)) (only parsing).

  Definition on_def_type (P : context -> judgment -> Type) Γ d :=
    P Γ (TypRel d.(dtype) d.(dname).(binder_relevance)).

  Definition on_def_body (P : context -> judgment -> Type) types Γ d :=
    P (Γ ,,, types) (TermTypRel d.(dbody) (lift0 #|types| d.(dtype)) d.(dname).(binder_relevance)).

  

  Definition lift_wf_term wf_term (j : judgment) := option_default wf_term (j_term j) (unit : Type) × wf_term (j_typ j).
  Notation lift_wf_term1 wf_term := (fun (Γ : context) => lift_wf_term (wf_term Γ)).

  Definition lift_wfu_term wf_term wf_univ (j : judgment) := option_default wf_term (j_term j) (unit : Type) × wf_term (j_typ j) × option_default wf_univ (j_univ j) (unit : Type).

  Definition lift_wfb_term wfb_term (j : judgment) := option_default wfb_term (j_term j) true && wfb_term (j_typ j).
  Notation lift_wfb_term1 wfb_term := (fun (Γ : context) => lift_wfb_term (wfb_term Γ)).

  Definition lift_wfbu_term wfb_term wfb_univ (j : judgment) := option_default wfb_term (j_term j) true && wfb_term (j_typ j) && option_default wfb_univ (j_univ j) true.

  Definition lift_sorting checking sorting : judgment -> Type :=
    fun j => option_default (fun tm => checking tm (j_typ j)) (j_term j) (unit : Type) ×
                                ∑ s, sorting (j_typ j) s ×
                                  option_default (fun u => u = s) (j_univ j) True /\
                                  isSortRelOpt s (j_rel j).

  Notation lift_sorting1 checking sorting := (fun Γ => lift_sorting (checking Γ) (sorting Γ)).
  Notation lift_sorting2 checking sorting := (fun Σ Γ => lift_sorting (checking Σ Γ) (sorting Σ Γ)).

  Notation typing_sort typing := (fun T s => typing T (tSort s)).
  Notation typing_sort1 typing := (fun Γ T s => typing Γ T (tSort s)).
  Notation typing_sort2 typing := (fun Σ Γ T s => typing Σ Γ T (tSort s)).

  Definition lift_typing0 typing := lift_sorting typing (typing_sort typing).
  Notation lift_typing1 typing := (fun Γ => lift_typing0 (typing Γ)).
  Notation lift_typing typing := (fun Σ Γ => lift_typing0 (typing Σ Γ)).

  Notation Prop_local_conj P Q := (fun Γ t T => P Γ t T × Q Γ t T).
  Notation Prop_conj P Q := (fun Σ Γ t T => P Σ Γ t T × Q Σ Γ t T).

  Definition lift_typing_conj (P Q : context -> _) := lift_typing1 (Prop_local_conj P Q).

  Lemma lift_wf_term_it_impl {P Q} {tm tm' : option term} {t t' : term} {u u' r r'} :
    forall tu: lift_wf_term P (Judge tm t u r),
    match tm', tm with None, _ => unit | Some tm', Some tm => P tm -> Q tm' | _, _ => False end ->
    (P t -> Q t') ->
    lift_wf_term Q (Judge tm' t' u' r').
Admitted.

  Lemma lift_wf_term_f_impl P Q tm t u u' r r' :
    forall f,
    lift_wf_term P (Judge tm t u r) ->
    (forall t, P t -> Q (f t)) ->
    lift_wf_term Q (Judge (option_map f tm) (f t) u' r').
Admitted.

  Lemma lift_wf_term_impl P Q j :
    lift_wf_term P j ->
    (forall t, P t -> Q t) ->
    lift_wf_term Q j.
Admitted.

  Lemma lift_wfbu_term_f_impl (P Q : term -> bool) tm t u r :
    forall f fu,
    lift_wfbu_term P (P ∘ tSort) (Judge tm t u r) ->
    (forall u, f (tSort u) = tSort (fu u)) ->
    (forall t, P t -> Q (f t)) ->
    lift_wfbu_term Q (Q ∘ tSort) (Judge (option_map f tm) (f t) (option_map fu u) r).
Admitted.

  Lemma lift_wf_wfb_term (p : _ -> bool) j :
    reflectT (lift_wf_term p j) (lift_wfb_term p j).
Admitted.

  Lemma lift_wfu_wfbu_term (p : _ -> bool) (pu : _ -> bool) j :
    reflectT (lift_wfu_term p pu j) (lift_wfbu_term p pu j).
Admitted.

  Lemma unlift_TermTyp {Pc Ps tm ty u r} :
    lift_sorting Pc Ps (Judge (Some tm) ty u r) ->
    Pc tm ty.
Admitted.
Definition unlift_TypUniv {Pc Ps tm ty u r} :
    lift_sorting Pc Ps (Judge tm ty (Some u) r) ->
    Ps ty u. exact (fun H => eq_rect_r _ H.2.π2.1 H.2.π2.2.p1). Defined.
Definition lift_sorting_extract {c s tm ty r} (w : lift_sorting c s (Judge tm ty None r)) :
    lift_sorting c s (Judge tm ty (Some w.2.π1) r). exact ((w.1, (w.2.π1; (w.2.π2.1, (conj eq_refl w.2.π2.2.p2))))). Defined.

  Lemma lift_sorting_forget_univ {Pc Ps tm ty u r} :
    lift_sorting Pc Ps (Judge tm ty u r) ->
    lift_sorting Pc Ps (Judge tm ty None r).
Admitted.

  Lemma lift_sorting_forget_body {Pc Ps tm ty u r} :
    lift_sorting Pc Ps (Judge tm ty u r) ->
    lift_sorting Pc Ps (Judge None ty u r).
Admitted.

  Lemma lift_sorting_forget_rel {Pc Ps tm ty u r} :
    lift_sorting Pc Ps (Judge tm ty u r) ->
    lift_sorting Pc Ps (Judge tm ty u None).
Admitted.

  Lemma lift_sorting_ex_it_impl_gen {Pc Qc Ps Qs} {tm tm' : option term} {t t' : term} {r r' : option relevance} :
    forall tu: lift_sorting Pc Ps (Judge tm t None r),
    let s := tu.2.π1 in
    match tm', tm with None, _ => unit | Some tm', Some tm => Pc tm t -> Qc tm' t' | _, _ => False end ->
    (Ps t s -> isSortRelOpt s r -> ∑ s', Qs t' s' × isSortRelOpt s' r') ->
    lift_sorting Qc Qs (Judge tm' t' None r').
Admitted.

  Lemma lift_sorting_it_impl_gen {Pc Qc Ps Qs} {tm tm' : option term} {t t' : term} {u r} :
    forall tu: lift_sorting Pc Ps (Judge tm t u r),
    let s := tu.2.π1 in
    match tm', tm with None, _ => unit | Some tm', Some tm => Pc tm t -> Qc tm' t' | _, _ => False end ->
    (Ps t s -> Qs t' s) ->
    lift_sorting Qc Qs (Judge tm' t' u r).
Admitted.

  Lemma lift_sorting_fu_it_impl {Pc Qc Ps Qs} {tm : option term} {t : term} {u r} :
    forall f fu, forall tu: lift_sorting Pc Ps (Judge tm t u r),
    let s := tu.2.π1 in
    option_default (fun rel => isSortRel s rel -> isSortRel (fu s) rel) r True ->
    option_default (fun tm => Pc tm t -> Qc (f tm) (f t)) tm unit ->
    (Ps t s -> Qs (f t) (fu s)) ->
    lift_sorting Qc Qs (Judge (option_map f tm) (f t) (option_map fu u) r).
Admitted.

  Lemma lift_sorting_f_it_impl {Pc Qc Ps Qs} {j : judgment} :
    forall f, forall tu: lift_sorting Pc Ps j,
    let s := tu.2.π1 in
    option_default (fun tm => Pc tm (j_typ j) -> Qc (f tm) (f (j_typ j))) (j_term j) unit ->
    (Ps (j_typ j) s -> Qs (f (j_typ j)) s) ->
    lift_sorting Qc Qs (judgment_map f j).
Admitted.

  Lemma lift_sorting_it_impl {Pc Qc Ps Qs} {j} :
    forall tu: lift_sorting Pc Ps j,
    let s := tu.2.π1 in
    option_default (fun tm => Pc tm (j_typ j) -> Qc tm (j_typ j)) (j_term j) unit ->
    (Ps (j_typ j) s -> Qs (j_typ j) s) ->
    lift_sorting Qc Qs j.
Admitted.

  Lemma lift_sorting_fu_impl {Pc Qc Ps Qs tm t u r} :
    forall f fu,
    lift_sorting Pc Ps (Judge tm t u r) ->
    (forall r s, isSortRelOpt s r -> isSortRelOpt (fu s) r) ->
    (forall t T, Pc t T -> Qc (f t) (f T)) ->
    (forall t u, Ps t u -> Qs (f t) (fu u)) ->
    lift_sorting Qc Qs (Judge (option_map f tm) (f t) (option_map fu u) r).
Admitted.

  Lemma lift_typing_fu_impl {P Q tm t u r} :
    forall f fu,
    lift_typing0 P (Judge tm t u r) ->
    (forall t T, P t T -> Q (f t) (f T)) ->
    (forall u, f (tSort u) = tSort (fu u)) ->
    (forall r s, isSortRelOpt s r -> isSortRelOpt (fu s) r) ->
    lift_typing0 Q (Judge (option_map f tm) (f t) (option_map fu u) r).
Admitted.

  Lemma lift_sorting_f_impl {Pc Qc Ps Qs j} :
    forall f,
    lift_sorting Pc Ps j ->
    (forall t T, Pc t T -> Qc (f t) (f T)) ->
    (forall t u, Ps t u -> Qs (f t) u) ->
    lift_sorting Qc Qs (judgment_map f j).
Admitted.

  Lemma lift_typing_f_impl {P Q j} :
    forall f,
    lift_typing0 P j ->
    (forall t T, P t T -> Q (f t) (f T)) ->
    (forall u, f (tSort u) = tSort u) ->
    lift_typing0 Q (judgment_map f j).
Admitted.

  Lemma lift_typing_map {P} f j :
    lift_typing0 (fun t T => P (f t) (f T)) j ->
    (forall u, f (tSort u) = tSort u) ->
    lift_typing0 P (judgment_map f j).
Admitted.

  Lemma lift_typing_mapu {P} f fu {tm ty u r} :
    lift_typing0 (fun t T => P (f t) (f T)) (Judge tm ty u r) ->
    (forall u, f (tSort u) = tSort (fu u)) ->
    (forall r s, isSortRelOpt s r -> isSortRelOpt (fu s) r) ->
    lift_typing0 P (Judge (option_map f tm) (f ty) (option_map fu u) r).
Admitted.

  Lemma lift_sorting_impl {Pc Qc Ps Qs j} :
    lift_sorting Pc Ps j ->
    (forall t T, Pc t T -> Qc t T) ->
    (forall t u, Ps t u -> Qs t u) ->
    lift_sorting Qc Qs j.
Admitted.

  Lemma lift_typing_impl {P Q j} :
    lift_typing0 P j ->
    (forall t T, P t T -> Q t T) ->
    lift_typing0 Q j.
Admitted.

  Lemma lift_typing_subject {P Q j} :
    lift_typing0 P j ->
    (forall t T, P t T -> Q t) ->
    lift_wf_term Q j.
Admitted.

  Lemma lift_typing_subjtyp {P Q Q' j} :
    lift_typing0 P j ->
    (forall t T, P t T -> Q t × Q T) ->
    (forall u, Q (tSort u) -> Q' u) ->
    lift_wfu_term Q Q' j.
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

  Derive Signature NoConfusion for All_local_env.
  End TypeLocal.

  Arguments localenv_nil {_}.
  Arguments localenv_cons_def {_ _ _ _ _} _ _.
  Arguments localenv_cons_abs {_ _ _ _} _ _.
Definition localenv_cons {typing Γ na bo t} :
    All_local_env typing Γ -> typing Γ (TermoptTypRel bo t na.(binder_relevance)) -> All_local_env typing (Γ ,, mkdecl na bo t). exact (match bo with None => localenv_cons_abs | Some b => localenv_cons_def end). Defined.
Definition All_local_env_snoc {P Γ decl} : All_local_env P Γ -> on_local_decl P Γ decl -> All_local_env P (Γ ,, decl). exact (match decl with mkdecl na bo t => localenv_cons end). Defined.

  Lemma All_local_env_tip {typing Γ decl} : All_local_env typing (Γ ,, decl) -> All_local_env typing Γ × on_local_decl typing Γ decl.
Admitted.

  Lemma All_local_env_ind1 typing P :
    P [] ->
    (forall Γ decl, P Γ -> on_local_decl typing Γ decl -> P (Γ ,, decl)) ->
    forall Γ, All_local_env typing Γ -> P Γ.
Admitted.

  Lemma All_local_env_All_fold P Γ :
    All_local_env P Γ <~>
    All_fold (fun Γ decl => P Γ (j_decl decl)) Γ.
Admitted.

  Lemma All_local_env_map (P : context -> judgment -> Type) f Γ :
    All_local_env (fun Γ j => P (map (map_decl f) Γ) (judgment_map f j)) Γ ->
    All_local_env P (map (map_decl f) Γ).
Admitted.

  Lemma All_local_env_fold P f Γ :
    All_local_env (fun Γ j => P (fold_context_k f Γ) (judgment_map (f #|Γ|) j)) Γ <~>
    All_local_env P (fold_context_k f Γ).
Admitted.

  Lemma All_local_env_impl_gen (P Q : context -> judgment -> Type) l :
    All_local_env P l ->
    (forall Γ decl, P Γ (j_decl decl) -> Q Γ (j_decl decl)) ->
    All_local_env Q l.
Admitted.

  Lemma All_local_env_impl (P Q : context -> judgment -> Type) l :
    All_local_env P l ->
    (forall Γ j, P Γ j -> Q Γ j) ->
    All_local_env Q l.
Admitted.

  Lemma All_local_env_impl_ind {P Q : context -> judgment -> Type} {l} :
    All_local_env P l ->
    (forall Γ j, All_local_env Q Γ -> P Γ j -> Q Γ j) ->
    All_local_env Q l.
Admitted.

  Lemma All_local_env_skipn {P Γ} n : All_local_env P Γ -> All_local_env P (skipn n Γ).
Admitted.
  #[global]
  Hint Resolve All_local_env_skipn : wf.

  Lemma All_local_env_app_skipn {P Γ Δ} n : All_local_env P (Γ ,,, Δ) ->
    All_local_env P (Γ ,,, skipn n Δ).
Admitted.

  Lemma All_local_env_nth_error {P Γ n decl} : All_local_env P Γ -> nth_error Γ n = Some decl -> on_local_decl P (skipn (S n) Γ) decl.
Admitted.

  Lemma All_local_env_cst {P Γ} : All_local_env (fun _ => P) Γ <~> All (fun d => P (j_decl d)) Γ.
Admitted.

  Section All_local_env_rel.

    Definition All_local_rel P Γ Γ'
      := (All_local_env (fun Δ j => P (Γ ,,, Δ) j) Γ').
Definition All_local_rel_nil {P Γ} : All_local_rel P Γ []. exact (localenv_nil). Defined.
Definition All_local_rel_snoc {P Γ Γ' decl} :
      All_local_rel P Γ Γ' -> on_local_decl P (Γ ,,, Γ') decl ->
      All_local_rel P Γ (Γ' ,, decl). exact (All_local_env_snoc). Defined.
Definition All_local_rel_abs {P Γ Γ' A na} :
      All_local_rel P Γ Γ' -> P (Γ ,,, Γ') (j_vass na A)
      -> All_local_rel P Γ (Γ',, vass na A). exact (localenv_cons). Defined.
Definition All_local_rel_def {P Γ Γ' t A na} :
      All_local_rel P Γ Γ' ->
      P (Γ ,,, Γ') (j_vdef na t A) ->
      All_local_rel P Γ (Γ',, vdef na t A). exact (localenv_cons). Defined.
Definition All_local_rel_tip {P Γ Γ' decl} :
      All_local_rel P Γ (Γ' ,, decl) -> All_local_rel P Γ Γ' × on_local_decl P (Γ ,,, Γ') decl. exact (All_local_env_tip). Defined.
Definition All_local_rel_ind1 typing Γ P :
      P [] ->
      (forall Δ decl, P Δ -> on_local_decl typing (Γ ,,, Δ) decl -> P (Δ ,, decl)) ->
      forall Δ, All_local_rel typing Γ Δ -> P Δ. exact (All_local_env_ind1 _ P). Defined.

    Lemma All_local_rel_local :
      forall P Γ,
        All_local_env P Γ ->
        All_local_rel P [] Γ.
Admitted.

    Lemma All_local_local_rel P Γ :
      All_local_rel P [] Γ -> All_local_env P Γ.
Admitted.

    Lemma All_local_app_rel {P Γ Γ'} :
      All_local_env P (Γ ,,, Γ') -> All_local_env P Γ × All_local_rel P Γ Γ'.
Admitted.

    Definition All_local_env_app_inv {P Γ Γ'} := @All_local_app_rel P Γ Γ'.

    Lemma All_local_rel_app_inv {P Γ Γ' Γ''} :
      All_local_rel P Γ (Γ' ,,, Γ'') -> All_local_rel P Γ Γ' × All_local_rel P (Γ ,,, Γ') Γ''.
Admitted.

    Lemma All_local_env_app {P Γ Γ'} :
      All_local_env P Γ -> All_local_rel P Γ Γ' -> All_local_env P (Γ ,,, Γ').
Admitted.

    Lemma All_local_rel_app {P Γ Γ' Γ''} :
      All_local_rel P Γ Γ' -> All_local_rel P (Γ ,,, Γ') Γ'' -> All_local_rel P Γ (Γ' ,,, Γ'').
Admitted.

    Lemma All_local_env_prod_inv :
      forall P Q Γ,
        All_local_env (fun Δ j => P Δ j × Q Δ j) Γ ->
        All_local_env P Γ × All_local_env Q Γ.
Admitted.

    Lemma All_local_env_lift_prod_inv :
      forall P Q Δ,
        All_local_env (lift_typing1 (Prop_local_conj P Q)) Δ ->
        All_local_env (lift_typing1 P) Δ × All_local_env (lift_typing1 Q) Δ.
Admitted.

  End All_local_env_rel.

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
  Derive Signature for All_local_env_over_sorting.

  Definition All_local_env_over typing property :=
    (All_local_env_over_sorting typing (typing_sort1 typing) property (fun Γ H t u tu => property _ H _ _ tu)).

  Lemma All_local_env_over_sorting_2 c s Pc Ps Γ (H : All_local_env (lift_sorting1 c s) Γ) :
    All_local_env_over_sorting _ _ (fun Γ _ t T _ => Pc Γ t T) (fun Γ _ t s _ => Ps Γ t s) _ H ->
    All_local_env (lift_sorting1 (Prop_local_conj c Pc) (Prop_local_conj s Ps)) Γ.
Admitted.

  Definition on_wf_local_decl {typing Γ}
    (P : forall Γ (wfΓ : All_local_env (lift_typing1 typing) Γ) t T, typing Γ t T -> Type)
    (wfΓ : All_local_env (lift_typing1 typing) Γ) {d}
    (H : on_local_decl (lift_typing1 typing) Γ d) :=
  match d return (on_local_decl (lift_typing1 typing) Γ d) -> Type with
  | {| decl_name := na; decl_body := Some b; decl_type := ty |}
  => fun H => P Γ wfΓ b ty H.1 × P Γ wfΓ ty _ H.2.π2.1
  | {| decl_name := na; decl_body := None; decl_type := ty |}
  => fun H => P Γ wfΓ ty _ H.2.π2.1
  end H.

  Lemma nth_error_All_local_env_over {typing} {P Γ n decl} (eq : nth_error Γ n = Some decl) {wfΓ : All_local_env (lift_typing1 typing) Γ} :
    All_local_env_over typing P Γ wfΓ ->
    let Γ' := skipn (S n) Γ in
    let wfΓ' := All_local_env_skipn _ wfΓ in
    let p := All_local_env_nth_error wfΓ eq in
    (All_local_env_over typing P Γ' wfΓ' * on_wf_local_decl P wfΓ' p)%type.
Admitted.

  Lemma All_local_env_over_2 typing P Γ (H : All_local_env (lift_typing1 typing) Γ) :
    All_local_env_over _ (fun Γ _ t T _ => P Γ t T) _ H ->
    All_local_env (lift_typing_conj typing P) Γ.
Admitted.

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
    Derive Signature NoConfusion for ctx_inst.
  End TypeCtxInst.

  Lemma ctx_inst_impl_gen Γ inst Δ args P :
    { P' & ctx_inst P' Γ inst Δ } ->
    (forall t T,
        All (fun P' => P' Γ t T) args ->
        P Γ t T) ->
    All (fun P' => ctx_inst P' Γ inst Δ) args ->
    ctx_inst P Γ inst Δ.
Admitted.

  Lemma ctx_inst_impl P Q Γ inst Δ :
    ctx_inst P Γ inst Δ ->
    (forall t T, P Γ t T -> Q Γ t T) ->
    ctx_inst Q Γ inst Δ.
Admitted.
Definition option_default_size {A f} (fsize : forall (a : A), f a -> size) o (w : option_default f o (unit : Type)) : size. exact (match o as tm return option_default _ tm (unit : Type) -> size with
    | Some tm => fun w => fsize _ w
    | None => fun w => 0
    end w). Defined.

  Section lift_sorting_size_gen.
    Context {checking : term -> term -> Type}.
    Context {sorting : term -> sort -> Type}.
    Context (csize : forall (t T : term), checking t T -> size).
    Context (ssize : forall (t : term) (u : sort), sorting t u -> size).

    Definition lift_sorting_size_gen base j (w : lift_sorting checking sorting j) : size :=
      base + option_default_size (fun tm => csize tm _) (j_term j) w.1 + ssize _ _ w.2.π2.1.

    Lemma lift_sorting_size_gen_impl {Qc Qs j} :
      forall tu: lift_sorting checking sorting j,
      (forall t T, forall Hty: checking t T, csize _ _ Hty <= lift_sorting_size_gen 0 _ tu -> Qc t T) ->
      (forall t u, forall Hty: sorting t u, ssize _ _ Hty <= lift_sorting_size_gen 0 _ tu -> Qs t u) ->
      lift_sorting Qc Qs j.
Admitted.

  End lift_sorting_size_gen.

  Definition on_def_type_size_gen {c s} (ssize : forall Γ t u, s Γ t u -> size) base
                                      Γ d (w : on_def_type (lift_sorting1 c s) Γ d) : size :=
    base + ssize _ _ _ w.2.π2.1.
  Definition on_def_body_size_gen {c s} (csize : forall Γ t u, c Γ t u -> size) (ssize : forall Γ t u, s Γ t u -> size) base
                                      types Γ d (w : on_def_body (lift_sorting1 c s) types Γ d) : size :=
    base + csize _ _ _ w.1 + ssize _ _ _ w.2.π2.1.

  Notation lift_sorting_size csize ssize := (lift_sorting_size_gen csize ssize 1).
  Notation typing_sort_size typing_size := (fun t s (tu: typing_sort _ t s) => typing_size t (tSort s) tu).
  Notation lift_typing_size typing_size := (lift_sorting_size_gen typing_size%function (typing_sort_size typing_size%function) 0).
  Notation typing_sort_size1 typing_size := (fun Γ t s (tu: typing_sort1 _ Γ t s) => typing_size Γ t (tSort s) tu).
  Notation on_def_type_sorting_size ssize := (on_def_type_size_gen ssize 1).
  Notation on_def_type_size typing_size := (on_def_type_size_gen (typing_sort_size1 typing_size) 0).
  Notation on_def_body_sorting_size csize ssize := (on_def_body_size_gen csize ssize 1).
  Notation on_def_body_size typing_size := (on_def_body_size_gen typing_size%function (typing_sort_size1 typing_size%function) 0).
  

  Lemma lift_sorting_size_impl {checking sorting Qc Qs j} csize ssize :
    forall tu: lift_sorting checking sorting j,
    (forall t T, forall Hty: checking t T, csize _ _ Hty < lift_sorting_size csize ssize _ tu -> Qc t T) ->
    (forall t u, forall Hty: sorting t u,  ssize _ _ Hty < lift_sorting_size csize ssize _ tu -> Qs t u) ->
    lift_sorting Qc Qs j.
Admitted.

  Lemma lift_typing_size_impl {P Q j} Psize :
    forall tu: lift_typing0 P j,
    (forall t T, forall Hty: P t T, Psize _ _ Hty <= lift_typing_size Psize _ tu -> Q t T) ->
    lift_typing0 Q j.
Admitted.

  Section All_local_env_size.
    Context {checking : forall (Γ : context), term -> term -> Type}.
    Context {sorting : forall (Γ : context), term -> sort -> Type}.
    Context (csize : forall Γ t T, checking Γ t T -> size).
    Context (ssize : forall Γ t u, sorting Γ t u -> size).

    Fixpoint All_local_env_size_gen base Γ (w : All_local_env (lift_sorting1 checking sorting) Γ) : size :=
      match w with
      | localenv_nil => base
      | localenv_cons_abs Γ' na t w' p => ssize _ _ _ p.2.π2.1 + All_local_env_size_gen base _ w'
      | localenv_cons_def Γ' na b t w' p => csize _ _ _ p.1 + ssize _ _ _ p.2.π2.1 + All_local_env_size_gen base _ w'
      end.

    Lemma All_local_env_size_pos base Γ w : base <= All_local_env_size_gen base Γ w.
Admitted.
  End All_local_env_size.

  Notation All_local_rel_size_gen c s csize ssize base := (fun Γ Δ (w : All_local_rel (lift_sorting1 c s) Γ Δ) =>
    All_local_env_size_gen (fun Δ => csize (Γ ,,, Δ)) (fun Δ => ssize (Γ ,,, Δ)) base Δ w).

  Lemma All_local_env_size_app c s csize ssize base Γ Γ' (wfΓ : All_local_env (lift_sorting1 c s) Γ) (wfΓ' : All_local_rel (lift_sorting1 c s) Γ Γ') :
    All_local_env_size_gen csize ssize base _ (All_local_env_app wfΓ wfΓ') + base = All_local_env_size_gen csize ssize base _ wfΓ + All_local_rel_size_gen c s csize ssize base _ _ wfΓ'.
Admitted.

  Implicit Types (Σ : global_env_ext) (Γ : context) (t : term).

  Section Regular.
    Context {typing : context -> term -> term -> Type}.
    Context (typing_size : forall Γ t T, typing Γ t T -> size).

    Definition All_local_env_size := All_local_env_size_gen typing_size (typing_sort1 typing_size) 0.
    Definition All_local_rel_size Γ Γ' (wfΓ : All_local_rel (lift_typing1 typing) Γ Γ') := All_local_rel_size_gen typing (typing_sort1 typing) typing_size (typing_sort_size1 typing_size) 0 Γ Γ' wfΓ.
  End Regular.

  Section Bidirectional.
    Context {checking : context -> term -> term -> Type} {sorting : context -> term -> sort -> Type}.
    Context (checking_size : forall Γ t T, checking Γ t T -> size).
    Context (sorting_size : forall Γ t s, sorting Γ t s -> size).

    Definition All_local_env_sorting_size := All_local_env_size_gen checking_size sorting_size 1.
    Definition All_local_rel_sorting_size := All_local_rel_size_gen _ _ checking_size sorting_size 1.
  End Bidirectional.

End EnvTyping.

Module Type EnvTypingSig (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E).
  Include EnvTyping T E TU.
End EnvTypingSig.

Module Conversion (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E) (ET : EnvTypingSig T E TU).
Import T.
Import E.
Import TU.
Import ET.

  Section Conversion.
  Context (cumul_gen : global_env_ext -> context -> conv_pb -> term -> term -> Type).

  Inductive All_decls_alpha_pb {pb} {P : conv_pb -> term -> term -> Type} :
    context_decl -> context_decl -> Type :=
  | all_decls_alpha_vass {na na' : binder_annot name} {t t' : term}
    (eqna : eq_binder_annot na na')
    (eqt : P pb t t') :
    All_decls_alpha_pb (vass na t) (vass na' t')

  | all_decls_alpha_vdef {na na' : binder_annot name} {b t b' t' : term}
    (eqna : eq_binder_annot na na')
    (eqb : P Conv b b') 
    (eqt : P pb t t') :
    All_decls_alpha_pb (vdef na b t) (vdef na' b' t').

  Derive Signature NoConfusion for All_decls_alpha_pb.

  Arguments All_decls_alpha_pb pb P : clear implicits.

  Definition cumul_pb_decls pb (Σ : global_env_ext) (Γ Γ' : context) : forall (x y : context_decl), Type :=
    All_decls_alpha_pb pb (cumul_gen Σ Γ).

  Definition cumul_pb_context pb (Σ : global_env_ext) :=
    All2_fold (cumul_pb_decls pb Σ).

  Definition cumul_ctx_rel Σ Γ Δ Δ' :=
    All2_fold (fun Δ Δ' => cumul_pb_decls Cumul Σ (Γ ,,, Δ) (Γ ,,, Δ')) Δ Δ'.
  End Conversion.

  Arguments All_decls_alpha_pb pb P : clear implicits.
  Notation conv cumul_gen Σ Γ := (cumul_gen Σ Γ Conv).
  Notation cumul cumul_gen Σ Γ := (cumul_gen Σ Γ Cumul).

  Notation conv_decls cumul_gen := (cumul_pb_decls cumul_gen Conv).
  Notation cumul_decls cumul_gen := (cumul_pb_decls cumul_gen Cumul).
  Notation conv_context cumul_gen Σ := (cumul_pb_context cumul_gen Conv Σ).
  Notation cumul_context cumul_gen Σ := (cumul_pb_context cumul_gen Cumul Σ).

  Lemma All_decls_alpha_pb_impl {pb} {P Q : conv_pb -> term -> term -> Type} {t t'} :
    (forall pb t t', P pb t t' -> Q pb t t') ->
    All_decls_alpha_pb pb P t t' -> All_decls_alpha_pb pb Q t t'.
Admitted.
End Conversion.

Module Type ConversionSig (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E) (ET : EnvTypingSig T E TU).
  Include Conversion T E TU ET.
End ConversionSig.

Module GlobalMaps (T: Term) (E: EnvironmentSig T) (TU : TermUtils T E) (ET: EnvTypingSig T E TU) (C: ConversionSig T E TU ET) (L: LookupSig T E).
Import T.
Import E.
Import TU.
Import ET.
Import C.
Import L.

  Section GlobalMaps.

    Context {cf: checker_flags}.
    Context (Pcmp: global_env_ext -> context -> conv_pb -> term -> term -> Type).
    Context (P : global_env_ext -> context -> judgment -> Type).
    Definition on_context Σ ctx :=
      All_local_env (P Σ) ctx.

    
    Fixpoint type_local_ctx Σ (Γ Δ : context) (u : sort) : Type :=
      match Δ with
      | [] => wf_sort Σ u
      | {| decl_name := na; decl_body := None; decl_type := t |} :: Δ =>
          type_local_ctx Σ Γ Δ u × P Σ (Γ ,,, Δ) (TypUnivRel t u na.(binder_relevance))
      | {| decl_body := Some _; |} as d :: Δ =>
          type_local_ctx Σ Γ Δ u × P Σ (Γ ,,, Δ) (j_decl d)
      end.

    Fixpoint sorts_local_ctx Σ (Γ Δ : context) (us : list sort) : Type :=
      match Δ, us with
      | [], [] => unit
      | {| decl_name := na; decl_body := None;   decl_type := t |} :: Δ, u :: us =>
        sorts_local_ctx Σ Γ Δ us × P Σ (Γ ,,, Δ) (TypUnivRel t u na.(binder_relevance))
      | {| decl_body := Some _ |} as d :: Δ, us =>
        sorts_local_ctx Σ Γ Δ us × P Σ (Γ ,,, Δ) (j_decl d)
      | _, _ => False
      end.

    Implicit Types (mdecl : mutual_inductive_body) (idecl : one_inductive_body) (cdecl : constructor_body).

    Definition on_type Σ Γ T := P Σ Γ (Typ T).
    Definition on_type_rel Σ Γ T r := P Σ Γ (TypRel T r).

    Open Scope type_scope.

    Definition univs_ext_constraints univs φ :=
      ConstraintSet.union (constraints_of_udecl φ) univs.

    Definition satisfiable_udecl (univs : ContextSet.t) φ
      := consistent (univs_ext_constraints (ContextSet.constraints univs) φ).

    
    Definition valid_on_mono_udecl (univs : ContextSet.t) ϕ :=
      consistent_extension_on univs (constraints_of_udecl ϕ).

    
    
    
    Definition on_udecl (univs : ContextSet.t) (udecl : universes_decl)
      := let levels := levels_of_udecl udecl in
        let global_levels := global_levels univs in
        let all_levels := LevelSet.union levels global_levels in
        LevelSet.For_all (fun l => ~ LevelSet.In l global_levels) levels
        /\ ConstraintSet.For_all (declared_cstr_levels all_levels) (constraints_of_udecl udecl)
        /\ satisfiable_udecl univs udecl
        /\ valid_on_mono_udecl univs udecl.

    
    

    

    Definition ind_realargs (o : one_inductive_body) :=
      match destArity [] o.(ind_type) with
      | Some (ctx, _) => #|smash_context [] ctx|
      | _ => 0
      end.

    Definition mdecl_at_i mdecl i (Γ:context) k : Prop :=
      #|Γ| <= k /\ k < #|Γ| + #|mdecl.(ind_bodies)| /\
       nth_error (List.rev mdecl.(ind_bodies)) (k - #|Γ|) = Some i.

    Reserved Notation " mdecl ;;; Γ |arg+> t " (at level 50, Γ, t at next level).
    Notation subst0 t := (subst t 0).
    Notation "M { j := N }" := (subst [N] j M) (at level 10, right associativity).

    Inductive positive_cstr_arg mdecl Γ : term -> Type :=
    | pos_arg_closed ty :
      closedn #|Γ| ty ->
      mdecl ;;; Γ |arg+> ty

    | pos_arg_concl l k i :
      
      #|l| = ind_realargs i -> All (closedn #|Γ|) l ->
      mdecl_at_i mdecl i Γ k ->
      mdecl ;;; Γ |arg+> mkApps (tRel k) l

    | pos_arg_let na b ty ty' :
      mdecl ;;; Γ |arg+> ty' {0 := b} ->
      mdecl ;;; Γ |arg+> tLetIn na b ty ty'

    | pos_arg_ass na ty ty' :
      closedn #|Γ| ty ->
      mdecl ;;; vass na ty :: Γ |arg+> ty' ->
      mdecl ;;; Γ |arg+> tProd na ty ty'

  where " mdecl ;;; Γ |arg+> t " := (positive_cstr_arg mdecl Γ t) : type_scope.

    

    Reserved Notation " mdecl @ i ;;; Γ |+> t " (at level 50, i, Γ, t at next level).

    Inductive positive_cstr mdecl i Γ : term -> Type :=
    | pos_concl l (headrel := (#|mdecl.(ind_bodies)| - S i + #|Γ|)%nat) :
      All (closedn #|Γ|) l ->
      mdecl @ i ;;; Γ |+> mkApps (tRel headrel) l

    | pos_let na b ty ty' :
      mdecl @ i ;;; Γ |+> ty' {0 := b} ->
      mdecl @ i ;;; Γ |+> tLetIn na b ty ty'

    | pos_ass na ty ty' :
      mdecl ;;; Γ |arg+> ty ->
      mdecl @ i ;;; vass na ty :: Γ |+> ty' ->
      mdecl @ i ;;; Γ |+> tProd na ty ty'

    where " mdecl @ i ;;; Γ |+> t " := (positive_cstr mdecl i Γ t) : type_scope.

    Definition lift_level n l :=
      match l with
      | Level.lzero | Level.level _ => l
      | Level.lvar k => Level.lvar (n + k)
      end.

    Definition lift_instance n l :=
      map (lift_level n) l.

    Definition lift_constraint n (c : Level.t * ConstraintType.t * Level.t) :=
      let '((l, r), l') := c in
      ((lift_level n l, r), lift_level n l').

    Definition lift_constraints n cstrs :=
      ConstraintSet.fold (fun elt acc => ConstraintSet.add (lift_constraint n elt) acc)
        cstrs ConstraintSet.empty.

    Definition level_var_instance n (inst : list name) :=
      mapi_rec (fun i _ => Level.lvar i) inst n.

    Fixpoint variance_cstrs (v : list Variance.t) (u u' : Instance.t) :=
      match v, u, u' with
      | _, [], [] => ConstraintSet.empty
      | v :: vs, u :: us, u' :: us' =>
        match v with
        | Variance.Irrelevant => variance_cstrs vs us us'
        | Variance.Covariant => ConstraintSet.add (u, ConstraintType.Le 0, u') (variance_cstrs vs us us')
        | Variance.Invariant => ConstraintSet.add (u, ConstraintType.Eq, u') (variance_cstrs vs us us')
        end
      | _, _, _ =>  ConstraintSet.empty
      end.

    

    Definition variance_universes univs v :=
      match univs with
      | Monomorphic_ctx => None
      | Polymorphic_ctx auctx =>
        let (inst, cstrs) := auctx in
        let u' := level_var_instance 0 inst in
        let u := lift_instance #|inst| u' in
        let cstrs := ConstraintSet.union cstrs (lift_constraints #|inst| cstrs) in
        let cstrv := variance_cstrs v u u' in
        let auctx' := (inst ++ inst, ConstraintSet.union cstrs cstrv) in
        Some (Polymorphic_ctx auctx', u, u')
      end.

    

    Definition ind_arities mdecl := arities_context (ind_bodies mdecl).

    Definition ind_respects_variance Σ mdecl v indices :=
      let univs := ind_universes mdecl in
      match variance_universes univs v with
      | Some (univs, u, u') =>
        cumul_ctx_rel Pcmp (Σ, univs) (smash_context [] (ind_params mdecl))@[u]
          (expand_lets_ctx (ind_params mdecl) (smash_context [] indices))@[u]
          (expand_lets_ctx (ind_params mdecl) (smash_context [] indices))@[u']
      | None => False
      end.

    Definition cstr_respects_variance Σ mdecl v cs :=
      let univs := ind_universes mdecl in
      match variance_universes univs v with
      | Some (univs, u, u') =>
        cumul_ctx_rel Pcmp (Σ, univs) (ind_arities mdecl ,,, smash_context [] (ind_params mdecl))@[u]
          (expand_lets_ctx (ind_params mdecl) (smash_context [] (cstr_args cs)))@[u]
          (expand_lets_ctx (ind_params mdecl) (smash_context [] (cstr_args cs)))@[u'] *
        All2
          (Pcmp (Σ, univs) (ind_arities mdecl ,,, smash_context [] (ind_params mdecl ,,, cstr_args cs))@[u] Conv)
          (map (subst_instance u ∘ expand_lets (ind_params mdecl ,,, cstr_args cs)) (cstr_indices cs))
          (map (subst_instance u' ∘ expand_lets (ind_params mdecl ,,, cstr_args cs)) (cstr_indices cs))
      | None => False 
      end.

    
    Definition cstr_concl_head mdecl i cdecl :=
      tRel (#|mdecl.(ind_bodies)| - S i + #|mdecl.(ind_params)| + #|cstr_args cdecl|).

    
    Definition cstr_concl mdecl i cdecl :=
      (mkApps (cstr_concl_head mdecl i cdecl)
        (to_extended_list_k mdecl.(ind_params) #|cstr_args cdecl|
          ++ cstr_indices cdecl)).

    Record on_constructor Σ mdecl i idecl ind_indices cdecl cunivs := {
      
      cstr_args_length : context_assumptions (cstr_args cdecl) = cstr_arity cdecl;

      cstr_eq : cstr_type cdecl =
       it_mkProd_or_LetIn mdecl.(ind_params)
        (it_mkProd_or_LetIn (cstr_args cdecl)
          (cstr_concl mdecl i cdecl));
      

      on_ctype : on_type_rel Σ (arities_context mdecl.(ind_bodies)) (cstr_type cdecl) idecl.(ind_relevance);
      on_cargs :
        sorts_local_ctx Σ (arities_context mdecl.(ind_bodies) ,,, mdecl.(ind_params))
                      cdecl.(cstr_args) cunivs;
      on_cindices :
        ctx_inst (fun Γ t T => P Σ Γ (TermTyp t T)) (arities_context mdecl.(ind_bodies) ,,, mdecl.(ind_params) ,,, cdecl.(cstr_args))
                      cdecl.(cstr_indices)
                      (List.rev (lift_context #|cdecl.(cstr_args)| 0 ind_indices));

      on_ctype_positive : 
        positive_cstr mdecl i [] (cstr_type cdecl);

      on_ctype_variance : 
        forall v, ind_variance mdecl = Some v ->
        cstr_respects_variance Σ mdecl v cdecl;

      on_lets_in_type : if lets_in_constructor_types
                        then True else is_true (is_assumption_context (cstr_args cdecl))
    }.

    Arguments on_ctype {Σ mdecl i idecl ind_indices cdecl cunivs}.
    Arguments on_cargs {Σ mdecl i idecl ind_indices cdecl cunivs}.
    Arguments on_cindices {Σ mdecl i idecl ind_indices cdecl cunivs}.
    Arguments cstr_args_length {Σ mdecl i idecl ind_indices cdecl cunivs}.
    Arguments cstr_eq {Σ mdecl i idecl ind_indices cdecl cunivs}.

    Definition on_constructors Σ mdecl i idecl ind_indices :=
      All2 (on_constructor Σ mdecl i idecl ind_indices).

    

    Record on_proj mdecl mind i k (p : projection_body) decl :=
      { on_proj_name : 
          binder_name (decl_name decl) = nNamed p.(proj_name);
        on_proj_type :
          
          let u := abstract_instance mdecl.(ind_universes) in
          let ind := {| inductive_mind := mind; inductive_ind := i |} in
          p.(proj_type) = subst (inds mind u mdecl.(ind_bodies)) (S (ind_npars mdecl))
            (subst (projs ind mdecl.(ind_npars) k) 0
              (lift 1 k (decl_type decl)));
        on_proj_relevance : p.(proj_relevance) = decl.(decl_name).(binder_relevance) }.

    Definition on_projection mdecl mind i cdecl (k : nat) (p : projection_body) :=
      let Γ := smash_context [] (cdecl.(cstr_args) ++ mdecl.(ind_params)) in
      match nth_error Γ (context_assumptions cdecl.(cstr_args) - S k) with
      | None => False
      | Some decl => on_proj mdecl mind i k p decl
      end.

    Record on_projections mdecl mind i idecl (ind_indices : context) cdecl :=
      { on_projs_record : #|idecl.(ind_ctors)| = 1;
        

        on_projs_noidx : #|ind_indices| = 0;
        

        on_projs_elim : idecl.(ind_kelim) = IntoAny;
        

        on_projs_all : #|idecl.(ind_projs)| = context_assumptions (cstr_args cdecl);
        

        on_projs : Alli (on_projection mdecl mind i cdecl) 0 idecl.(ind_projs) }.

    Definition check_constructors_smaller φ cunivss ind_sort :=
      Forall (fun cunivs =>
        Forall (fun argsort => leq_sort φ argsort ind_sort) cunivs) cunivss.

    

    Definition constructor_univs := list sort.
    

    Definition elim_sort_prop_ind (ind_ctors_sort : list constructor_univs) :=
      match ind_ctors_sort with
      | [] =>  IntoAny
      | [ s ] =>
        if forallb Sort.is_propositional s then
          IntoAny 
        else
          IntoPropSProp 
      | _ =>  IntoPropSProp
      end.

    Definition elim_sort_sprop_ind (ind_ctors_sort : list constructor_univs) :=
      match ind_ctors_sort with
      | [] =>  IntoAny
      | _ =>  IntoSProp
      end.

    Definition check_ind_sorts (Σ : global_env_ext)
              params kelim ind_indices cdecls ind_sort : Type :=
      match Sort.to_family ind_sort with
      | Sort.fProp =>
        
        
        (allowed_eliminations_subset kelim (elim_sort_prop_ind cdecls) : Type)
      | Sort.fSProp =>
        
        
        (allowed_eliminations_subset kelim (elim_sort_sprop_ind cdecls) : Type)
      | _ =>
        
        check_constructors_smaller Σ cdecls ind_sort
        × if indices_matter then
            type_local_ctx Σ params ind_indices ind_sort
          else True
      end.

    Record on_ind_body Σ mind mdecl i idecl :=
      { 
        ind_arity_eq : idecl.(ind_type)
                      = it_mkProd_or_LetIn mdecl.(ind_params)
                                (it_mkProd_or_LetIn idecl.(ind_indices) (tSort idecl.(ind_sort)));

        
        onArity : on_type_rel Σ [] idecl.(ind_type) rel_of_Type;

        
        ind_cunivs : list constructor_univs;

        
        onConstructors :
          on_constructors Σ mdecl i idecl idecl.(ind_indices) idecl.(ind_ctors) ind_cunivs;

        
        onProjections :
          match idecl.(ind_projs), idecl.(ind_ctors) return Type with
          | [], _ => True
          | _, [ o ] =>
              on_projections mdecl mind i idecl idecl.(ind_indices) o
          | _, _ => False
          end;

        
        ind_sorts :
          check_ind_sorts Σ mdecl.(ind_params) idecl.(ind_kelim)
                          idecl.(ind_indices) ind_cunivs idecl.(ind_sort);

        ind_relevance_compat : isSortRel idecl.(ind_sort) idecl.(ind_relevance);

        onIndices :
          
          match ind_variance mdecl with
          | Some v => ind_respects_variance Σ mdecl v idecl.(ind_indices)
          | None => True
          end
      }.

    Definition on_variance Σ univs (variances : option (list Variance.t)) :=
      match univs return Type with
      | Monomorphic_ctx => variances = None
      | Polymorphic_ctx auctx =>
        match variances with
        | None => unit
        | Some v =>
          ∑ univs' i i',
            [/\ (variance_universes univs v = Some (univs', i, i')),
              consistent_instance_ext (Σ, univs') univs i,
              consistent_instance_ext (Σ, univs') univs i' &
              List.length v = #|UContext.instance (AUContext.repr auctx)|]
        end
      end.

    

    Record on_inductive Σ mind mdecl :=
      { onInductives : Alli (on_ind_body Σ mind mdecl) 0 mdecl.(ind_bodies);
        
        onParams : on_context Σ mdecl.(ind_params);
        onNpars : context_assumptions mdecl.(ind_params) = mdecl.(ind_npars);
        
        onVariance : on_variance Σ mdecl.(ind_universes) mdecl.(ind_variance);
      }.

    

    Definition on_constant_decl Σ d :=
      P Σ [] (TermoptTypRel d.(cst_body) d.(cst_type) d.(cst_relevance)).

    Definition on_global_decl Σ kn decl :=
      match decl with
      | ConstantDecl d => on_constant_decl Σ d
      | InductiveDecl inds => on_inductive Σ kn inds
      end.
Definition fresh_global (s : kername) (g : global_declarations) : Prop. exact (Forall (fun g => g.1 <> s) g). Defined.

    Record on_global_decls_data (univs : ContextSet.t) retro (Σ : global_declarations) (kn : kername) (d : global_decl) :=
        {
          kn_fresh :  fresh_global kn Σ ;
          udecl := universes_decl_of_decl d ;
          on_udecl_udecl : on_udecl univs udecl ;
          on_global_decl_d : on_global_decl (mk_global_env univs Σ retro, udecl) kn d
        }.

    Inductive on_global_decls (univs : ContextSet.t) (retro : Retroknowledge.t): global_declarations -> Type :=
    | globenv_nil : on_global_decls univs retro []
    | globenv_decl Σ kn d :
        on_global_decls univs retro Σ ->
        on_global_decls_data univs retro Σ kn d ->
        on_global_decls univs retro (Σ ,, (kn, d)).

    Derive Signature for on_global_decls.

    Lemma fresh_global_iff_not_In kn Σ
      : fresh_global kn Σ <-> ~ In kn (map fst Σ).
Admitted.

    Lemma fresh_global_iff_lookup_global_None kn Σ
      : fresh_global kn Σ <-> lookup_global Σ kn = None.
Admitted.

    Lemma fresh_global_iff_lookup_globals_nil kn Σ
      : fresh_global kn Σ <-> lookup_globals Σ kn = [].
Admitted.

    Lemma NoDup_on_global_decls univs retro decls
      : on_global_decls univs retro decls -> NoDup (List.map fst decls).
Admitted.

    Definition on_global_univs (c : ContextSet.t) :=
      let levels := global_levels c in
      let cstrs := ContextSet.constraints c in
      ConstraintSet.For_all (declared_cstr_levels levels) cstrs /\
      LS.For_all (negb ∘ Level.is_var) levels /\
      consistent cstrs.
Definition on_global_env (g : global_env) : Type. exact (on_global_univs g.(universes) × on_global_decls g.(universes) g.(retroknowledge) g.(declarations)). Defined.

    Definition on_global_env_ext (Σ : global_env_ext) :=
      on_global_env Σ.1 × on_udecl Σ.(universes) Σ.2.

    Lemma on_global_env_ext_empty_ext g :
      on_global_env g -> on_global_env_ext (empty_ext g).
Admitted.

  End GlobalMaps.

  Arguments cstr_args_length {_ Pcmp P Σ mdecl i idecl ind_indices cdecl cunivs}.
  Arguments cstr_eq {_ Pcmp P Σ mdecl i idecl ind_indices cdecl cunivs}.
  Arguments on_ctype {_ Pcmp P Σ mdecl i idecl ind_indices cdecl cunivs}.
  Arguments on_cargs {_ Pcmp P Σ mdecl i idecl ind_indices cdecl cunivs}.
  Arguments on_cindices {_ Pcmp P Σ mdecl i idecl ind_indices cdecl cunivs}.
  Arguments on_ctype_positive {_ Pcmp P Σ mdecl i idecl ind_indices cdecl cunivs}.
  Arguments on_ctype_variance {_ Pcmp P Σ mdecl i idecl ind_indices cdecl cunivs}.

  Arguments ind_arity_eq {_ Pcmp P Σ mind mdecl i idecl}.
  Arguments ind_cunivs {_ Pcmp P Σ mind mdecl i idecl}.
  Arguments onArity {_ Pcmp P Σ mind mdecl i idecl}.
  Arguments onConstructors {_ Pcmp P Σ mind mdecl i idecl}.
  Arguments onProjections {_ Pcmp P Σ mind mdecl i idecl}.
  Arguments ind_sorts {_ Pcmp P Σ mind mdecl i idecl}.
  Arguments ind_relevance_compat {_ Pcmp P Σ mind mdecl i idecl}.
  Arguments onIndices {_ Pcmp P Σ mind mdecl i idecl}.

  Arguments onInductives {_ Pcmp P Σ mind mdecl}.
  Arguments onParams {_ Pcmp P Σ mind mdecl}.
  Arguments onNpars {_ Pcmp P Σ mind mdecl}.
  Arguments onVariance {_ Pcmp P Σ mind mdecl}.
  Lemma type_local_ctx_impl_gen Σ Γ Δ u args P :
    { P' & type_local_ctx P' Σ Γ Δ u } ->
    (forall Γ j,
        All (fun P' => P' Σ Γ j) args ->
        P Σ Γ j) ->
    All (fun P' => type_local_ctx P' Σ Γ Δ u) args ->
    type_local_ctx P Σ Γ Δ u.
Admitted.

  Lemma type_local_ctx_impl (P Q : global_env_ext -> context -> judgment -> Type) Σ Σ' Γ Δ u :
    type_local_ctx P Σ Γ Δ u ->
    (forall u, wf_sort Σ u -> wf_sort Σ' u) ->
    (forall Γ j, P Σ Γ j -> Q Σ' Γ j) ->
    type_local_ctx Q Σ' Γ Δ u.
Admitted.

  Lemma sorts_local_ctx_impl_gen Σ Γ Δ u args P :
    { P' & sorts_local_ctx P' Σ Γ Δ u } ->
    (forall Γ j,
        All (fun P' => P' Σ Γ j) args ->
        P Σ Γ j) ->
    All (fun P' => sorts_local_ctx P' Σ Γ Δ u) args ->
    sorts_local_ctx P Σ Γ Δ u.
Admitted.

  Lemma sorts_local_ctx_impl (P Q : global_env_ext -> context -> judgment -> Type) Σ Σ' Γ Δ u :
    sorts_local_ctx P Σ Γ Δ u ->
    (forall Γ j, P Σ Γ j -> Q Σ' Γ j) ->
    sorts_local_ctx Q Σ' Γ Δ u.
Admitted.

  Lemma cstr_respects_variance_impl_gen Σ mdecl v cs args Pcmp :
    { Pcmp' & @cstr_respects_variance Pcmp' Σ mdecl v cs } ->
    (match variance_universes (ind_universes mdecl) v with
     | Some (univs, u, u')
       => forall Γ t T pb,
         All (fun Pcmp' => Pcmp' (Σ, univs) Γ pb t T) args ->
         Pcmp (Σ, univs) Γ pb t T
     | None => True
     end) ->
    All (fun Pcmp' => @cstr_respects_variance Pcmp' Σ mdecl v cs) args ->
    @cstr_respects_variance Pcmp Σ mdecl v cs.
Admitted.

  Lemma cstr_respects_variance_impl Σ Σ' mdecl v cs Pcmp Pcmp' :
    (match variance_universes (ind_universes mdecl) v with
     | Some (univs, u, u')
       => forall Γ t T pb,
         Pcmp (Σ, univs) Γ pb t T ->
         Pcmp' (Σ', univs) Γ pb t T
     | None => True
     end) ->
    @cstr_respects_variance Pcmp Σ mdecl v cs ->
    @cstr_respects_variance Pcmp' Σ' mdecl v cs.
Admitted.

  Lemma on_constructor_impl_config_gen Σ mdecl i idecl ind_indices cdecl cunivs args cf Pcmp P :
    { '(cf', Pcmp', P') & config.impl cf' cf × @on_constructor cf' Pcmp' P' Σ mdecl i idecl ind_indices cdecl cunivs } ->
    (forall Γ j,
        All (fun '(cf', Pcmp', P') => P' Σ Γ j) args ->
        P Σ Γ j) ->
    (forall u Γ t T pb,
        All (fun '(cf', Pcmp', P') => Pcmp' (Σ.1, u) Γ pb t T) args ->
        Pcmp (Σ.1, u) Γ pb t T) ->
    All (fun '(cf', Pcmp', P') => @on_constructor cf' Pcmp' P' Σ mdecl i idecl ind_indices cdecl cunivs) args
    -> @on_constructor cf Pcmp P Σ mdecl i idecl ind_indices cdecl cunivs.
Admitted.

  Lemma on_constructors_impl_config_gen Σ mdecl i idecl ind_indices cdecl cunivs args cf Pcmp P :
    { '(cf', Pcmp', P') & config.impl cf' cf × @on_constructors cf' Pcmp' P' Σ mdecl i idecl ind_indices cdecl cunivs } ->
    All (fun '(cf', Pcmp', P') => config.impl cf' cf) args ->
    (forall Γ j,
        All (fun '(cf', Pcmp', P') => P' Σ Γ j) args ->
        P Σ Γ j) ->
    (forall u Γ t T pb,
        All (fun '(cf', Pcmp', P') => Pcmp' (Σ.1, u) Γ pb t T) args ->
        Pcmp (Σ.1, u) Γ pb t T) ->
    All (fun '(cf', Pcmp', P') => @on_constructors cf' Pcmp' P' Σ mdecl i idecl ind_indices cdecl cunivs) args
    -> @on_constructors cf Pcmp P Σ mdecl i idecl ind_indices cdecl cunivs.
Admitted.

  Lemma ind_respects_variance_impl Σ Σ' mdecl v cs Pcmp Pcmp' :
    match variance_universes (ind_universes mdecl) v with
     | Some (univs, u, u')
       => forall Γ t T pb,
         Pcmp (Σ, univs) Γ pb t T ->
         Pcmp' (Σ', univs) Γ pb t T
     | None => True
     end ->
    @ind_respects_variance Pcmp Σ mdecl v cs ->
    @ind_respects_variance Pcmp' Σ' mdecl v cs.
Admitted.

  Lemma on_variance_impl Σ univs variances cf' cf :
    config.impl cf' cf ->
    @on_variance cf' Σ univs variances ->
    @on_variance cf Σ univs variances.
Admitted.

  Lemma check_constructors_smaller_impl Σ cdecls ind_sort cf' cf :
    config.impl cf' cf ->
    @check_constructors_smaller cf' Σ cdecls ind_sort ->
    @check_constructors_smaller cf Σ cdecls ind_sort.
Admitted.

  Lemma on_global_decl_impl_full {cf1 cf2 : checker_flags} Pcmp1 Pcmp2 P1 P2 Σ Σ' kn d :
    config.impl cf1 cf2 ->
    (forall Γ j, P1 Σ Γ j -> P2 Σ' Γ j) ->
    (forall u Γ pb t t', Pcmp1 (Σ.1, u) Γ pb t t' -> Pcmp2 (Σ'.1, u) Γ pb t t') ->
    (forall u, wf_sort Σ u -> wf_sort Σ' u) ->
    (forall l s, @check_constructors_smaller cf1 (global_ext_constraints Σ) l s ->
      @check_constructors_smaller cf2 (global_ext_constraints Σ') l s) ->
    (forall u l, @on_variance cf1 Σ.1 u l -> @on_variance cf2 Σ'.1 u l) ->
    @on_global_decl cf1 Pcmp1 P1 Σ kn d -> @on_global_decl cf2 Pcmp2 P2 Σ' kn d.
Admitted.

  Lemma on_global_decl_impl_only_config {cf cf1 cf2 : checker_flags} Pcmp Pcmp' P Q Σ kn d :
    config.impl cf1 cf2 ->
    (forall Γ j,
      @on_global_env cf Pcmp P Σ.1 ->
      P Σ Γ j -> Q Σ Γ j) ->
    (forall u Γ pb t t',
      @on_global_env cf Pcmp P Σ.1 ->
      Pcmp (Σ.1, u) Γ pb t t' -> Pcmp' (Σ.1, u) Γ pb t t') ->
    @on_global_env cf Pcmp P Σ.1 ->
    @on_global_decl cf1 Pcmp P Σ kn d -> @on_global_decl cf2 Pcmp' Q Σ kn d.
Admitted.

  Lemma on_global_decl_impl_simple {cf : checker_flags} Pcmp P Q Σ kn d :
    (forall Γ j, on_global_env Pcmp P Σ.1 -> P Σ Γ j -> Q Σ Γ j) ->
    on_global_env Pcmp P Σ.1 ->
    on_global_decl Pcmp P Σ kn d -> on_global_decl Pcmp Q Σ kn d.
Admitted.

  Lemma on_global_env_impl_config {cf1 cf2 : checker_flags} Pcmp Pcmp' P Q :
    config.impl cf1 cf2 ->
    (forall Σ Γ j,
        @on_global_env cf1 Pcmp P Σ.1 ->
        @on_global_env cf2 Pcmp' Q Σ.1 ->
        P Σ Γ j -> Q Σ Γ j) ->
    (forall Σ Γ t T pb,
        @on_global_env cf1 Pcmp P Σ.1 ->
        @on_global_env cf2 Pcmp' Q Σ.1 ->
        Pcmp Σ Γ pb t T -> Pcmp' Σ Γ pb t T) ->
    forall Σ, @on_global_env cf1 Pcmp P Σ -> @on_global_env cf2 Pcmp' Q Σ.
Admitted.

  Lemma on_global_env_impl {cf : checker_flags} Pcmp P Q :
    (forall Σ Γ j,
        on_global_env Pcmp P Σ.1 ->
        on_global_env Pcmp Q Σ.1 ->
        P Σ Γ j -> Q Σ Γ j) ->
    forall Σ, on_global_env Pcmp P Σ -> on_global_env Pcmp Q Σ.
Admitted.

  Lemma lookup_on_global_env `{checker_flags} {Pcmp P} {Σ : global_env} {c decl} :
    on_global_env Pcmp P Σ ->
    lookup_env Σ c = Some decl ->
    ∑ Σ' : global_env_ext, on_global_env Pcmp P Σ' × strictly_extends_decls Σ' Σ × on_global_decl Pcmp P Σ' c decl.
Admitted.

End GlobalMaps.

Module Type GlobalMapsSig (T: Term) (E: EnvironmentSig T) (TU : TermUtils T E) (ET: EnvTypingSig T E TU) (C: ConversionSig T E TU ET) (L: LookupSig T E).
  Include GlobalMaps T E TU ET C L.
End GlobalMapsSig.

Module Type ConversionParSig (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E) (ET : EnvTypingSig T E TU).
Import T.
Import E.
Import TU.
Import ET.

  Parameter Inline cumul_gen : forall {cf : checker_flags}, global_env_ext -> context -> conv_pb -> term -> term -> Type.

End ConversionParSig.

Module Type Typing (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E) (ET : EnvTypingSig T E TU)
  (CT : ConversionSig T E TU ET) (CS : ConversionParSig T E TU ET).
Import T.
Import E.
Import TU.
Import ET.
Import CT.

  Section Properties.
  End Properties.
Module Export MetaRocq_DOT_Common_DOT_EnvironmentTyping.
Module Export MetaRocq.
Module Export Common.
Module Export EnvironmentTyping.
End EnvironmentTyping.

End Common.

End MetaRocq.

End MetaRocq_DOT_Common_DOT_EnvironmentTyping.

Import MetaRocq.Utils.utils.
Import MetaRocq.Common.Primitive.
Import Stdlib.Unicode.Utf8.

Set Universe Polymorphism.

Section PrimModel.
  Universe i.
  Context {term : Type@{i}}.

  Record array_model : Type@{i} :=
  { array_default : term;
    array_value : list term }.

  Inductive prim_model : prim_tag -> Type@{i} :=
  | primIntModel (i : PrimInt63.int) : prim_model primInt
  | primFloatModel (f : PrimFloat.float) : prim_model primFloat
  | primStringModel (s : PrimString.string) : prim_model primString
  | primArrayModel (a : array_model) : prim_model primArray.
Definition prim_val : Type@{i}.
exact (∑ t : prim_tag, prim_model t).
Defined.

  Definition prim_int i : prim_val := (primInt; primIntModel i).
  Definition prim_float f : prim_val := (primFloat; primFloatModel f).
  Definition prim_string s : prim_val := (primString; primStringModel s).
  Definition prim_array a : prim_val := (primArray; primArrayModel a).
Definition test_array_model (f : term -> bool) (a : array_model) : bool.
exact (f a.(array_default) && forallb f a.(array_value)).
Defined.
Definition test_prim (f : term -> bool) (p : prim_val) : bool.
exact (match p.π2 return bool with
    | primIntModel f => true
    | primFloatModel f => true
    | primStringModel f => true
    | primArrayModel a => test_array_model f a
    end).
Defined.
End PrimModel.

Arguments array_model : clear implicits.
Arguments prim_val : clear implicits.

Section PrimOps.
  Universes i j.
  Context {term : Type@{i}} {term' : Type@{j}}.
Definition map_array_model (f : term -> term') (a : array_model term) : array_model term'.
exact ({| array_default := f a.(array_default);
      array_value := map f a.(array_value) |}).
Defined.
Definition map_prim (f : term -> term') (p : prim_val term) : prim_val term'.
exact (match p.π2 return prim_val term' with
    | primIntModel f => (primInt; primIntModel f)
    | primFloatModel f => (primFloat; primFloatModel f)
    | primStringModel f => (primString; primStringModel f)
    | primArrayModel a => (primArray; primArrayModel (map_array_model f a))
    end).
Defined.
End PrimOps.

Inductive All2_Set {A B : Set} (R : A -> B -> Set) : list A -> list B -> Set :=
  All2_nil : All2_Set R [] []
| All2_cons : forall (x : A) (y : B) (l : list A) (l' : list B),
    R x y -> All2_Set R l l' -> All2_Set R (x :: l) (y :: l').
Arguments All2_nil {_ _ _}.
Arguments All2_cons {_ _ _ _ _ _ _}.
Equations All2_over {A B : Set} {P : A → B → Set} {l : list A} {l' : list B} :
  All2_Set P l l' → (∀ (x : A) (y : B), P x y → Type) → Type :=
| All2_nil, _ := unit
| All2_cons rxy rll', Q => Q _ _ rxy × All2_over rll' Q.

  Section map_onPrims.
  End map_onPrims.
Module Export MetaRocq.
Module Export Erasure.
Module Export EPrimitive.
End EPrimitive.

Module Export MetaRocq_DOT_Erasure_DOT_EAst_WRAPPED.
Module Export EAst.

Import MetaRocq.Utils.utils.
Import MetaRocq.Common.BasicAst.
Import MetaRocq.Common.Universes.

Record def (term : Set) := { dname : name; dbody : term; rarg : nat }.
Arguments dname {term} d.
Arguments dbody {term} d.
Arguments rarg {term} d.

Definition map_def {term : Set} (f : term -> term) (d : def term) :=
  {| dname := d.(dname); dbody := f d.(dbody); rarg := d.(rarg) |}.

Definition test_def {term : Set} (f : term -> bool) (d : def term) :=
  f d.(dbody).

Definition mfixpoint (term : Set) := list (def term).

Inductive term : Set :=
| tBox
| tRel (n : nat)
| tVar (i : ident)
| tEvar (n : nat) (l : list term)
| tLambda (na : name) (t : term)
| tLetIn (na : name) (b t : term)
| tApp (u v : term)
| tConst (k : kername)
| tConstruct (ind : inductive) (n : nat) (args : list term)
| tCase (indn : inductive * nat ) (c : term  ) (brs : list (list name * term) )
| tProj (p : projection) (c : term)
| tFix (mfix : mfixpoint term) (idx : nat)
| tCoFix (mfix : mfixpoint term) (idx : nat)
| tPrim (prim : prim_val term)
| tLazy (t : term)
| tForce (t : term).

Fixpoint mkApps t us :=
  match us with
  | nil => t
  | a :: args => mkApps (tApp t a) args
  end.

Definition isLambda t :=
  match t with
  | tLambda _ _ => true
  | _ => false
  end.

Record constructor_body :=
  mkConstructor {
    cstr_name : ident;
    cstr_nargs : nat
  }.

Record projection_body :=
  mkProjection {
    proj_name : ident;
  }.

Record one_inductive_body : Set := {
  ind_name : ident;
  ind_propositional : bool;
  ind_kelim : allowed_eliminations;
  ind_ctors : list constructor_body;
  ind_projs : list projection_body  }.

Record mutual_inductive_body := {
  ind_finite : recursivity_kind;
  ind_npars : nat;
  ind_bodies : list one_inductive_body }.

Definition cstr_arity (mdecl : mutual_inductive_body) (cdecl : constructor_body) :=
  (mdecl.(ind_npars) + cdecl.(cstr_nargs))%nat.

Record constant_body := { cst_body : option term }.

Inductive global_decl :=
| ConstantDecl : constant_body -> global_decl
| InductiveDecl : mutual_inductive_body -> global_decl.

Definition global_declarations := list (kername * global_decl).

Notation global_context := global_declarations.

End EAst.
Module Export MetaRocq_DOT_Erasure_DOT_EAst.
Module Export MetaRocq.
Module Export Erasure.
Module Export EAst.
Include MetaRocq_DOT_Erasure_DOT_EAst_WRAPPED.EAst.
End EAst.

End Erasure.

End MetaRocq.

End MetaRocq_DOT_Erasure_DOT_EAst.
Import MetaRocq.Utils.utils.

Fixpoint decompose_app_rec t l :=
  match t with
  | tApp f a => decompose_app_rec f (a :: l)
  | f => (f, l)
  end.

Definition decompose_app f := decompose_app_rec f [].

Definition head t := fst (decompose_app t).

Definition isFix t :=
  match t with
  | tFix _ _ => true
  | _ => false
  end.

Definition isConstruct t :=
  match t with
  | tConstruct _ _ _ => true
  | _ => false
  end.

Definition isPrim t :=
  match t with
  | tPrim _ => true
  | _ => false
  end.

Definition isBox t :=
  match t with
  | tBox => true
  | _ => false
  end.

Definition isLazy c :=
  match c with
  | tLazy _ => true
  | _ => false
  end.

Definition isFixApp t := isFix (head t).
Definition isConstructApp t := isConstruct (head t).
Definition isPrimApp t := isPrim (head t).
Definition isLazyApp t := isLazy (head t).

Section PrimDeps.

End PrimDeps.
Module Export MetaRocq.
Module Export Erasure.
Module Export EAstUtils.
End EAstUtils.

Section All_rec.
End All_rec.
Section MkApps_rec.

  End MkApps_rec.

  Section MkApps_case.

  End MkApps_case.
Module Export ELiftSubst.

Import MetaRocq.Utils.utils.
Import MetaRocq.Erasure.EPrimitive.
Import MetaRocq.Erasure.EAst.

Fixpoint lift n k t : term :=
  match t with
  | tRel i => if Nat.leb k i then tRel (n + i) else tRel i
  | tEvar ev args => tEvar ev (List.map (lift n k) args)
  | tLambda na M => tLambda na (lift n (S k) M)
  | tApp u v => tApp (lift n k u) (lift n k v)
  | tLetIn na b b' => tLetIn na (lift n k b) (lift n (S k) b')
  | tCase ind c brs =>
    let brs' := List.map (fun br =>
      (br.1, lift n (#|br.1| + k) br.2)) brs in
    tCase ind (lift n k c) brs'
  | tProj p c => tProj p (lift n k c)
  | tFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (lift n k')) mfix in
    tFix mfix' idx
  | tCoFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (lift n k')) mfix in
    tCoFix mfix' idx
  | tBox => t
  | tVar _ => t
  | tConst _ => t
  | tConstruct ind i args => tConstruct ind i (map (lift n k) args)
  | tPrim p => tPrim (map_prim (lift n k) p)
  | tLazy t => tLazy (lift n k t)
  | tForce t => tForce (lift n k t)
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
  | tLambda na M => tLambda na (subst s (S k) M)
  | tApp u v => tApp (subst s k u) (subst s k v)
  | tLetIn na b b' => tLetIn na (subst s k b) (subst s (S k) b')
  | tCase ind c brs =>
    let brs' := List.map (fun br => (br.1, subst s (#|br.1| + k) br.2)) brs in
    tCase ind (subst s k c) brs'
  | tProj p c => tProj p (subst s k c)
  | tFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (subst s k')) mfix in
    tFix mfix' idx
  | tCoFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (subst s k')) mfix in
    tCoFix mfix' idx
  | tConstruct ind i args => tConstruct ind i (map (subst s k) args)
  | tPrim p => tPrim (map_prim (subst s k) p)
  | tLazy t => tLazy (subst s k t)
  | tForce t => tForce (subst s k t)
  | tBox => tBox
  | tVar n => tVar n
  | tConst c => tConst c
  end.

Notation subst0 t := (subst t 0).

Fixpoint closedn k (t : term) : bool :=
  match t with
  | tRel i => Nat.ltb i k
  | tEvar ev args => List.forallb (closedn k) args
  | tLambda _ M => closedn (S k) M
  | tApp u v => closedn k u && closedn k v
  | tLetIn na b b' => closedn k b && closedn (S k) b'
  | tCase ind c brs =>
    let brs' := List.forallb (fun br => closedn (#|br.1| + k) br.2) brs in
    closedn k c && brs'
  | tProj p c => closedn k c
  | tFix mfix idx =>
    let k' := List.length mfix + k in
    List.forallb (test_def (closedn k')) mfix
  | tCoFix mfix idx =>
    let k' := List.length mfix + k in
    List.forallb (test_def (closedn k')) mfix
  | tConstruct ind i args => forallb (closedn k) args
  | tPrim p => test_prim (closedn k) p
  | tLazy t => closedn k t
  | tForce t => closedn k t
  | _ => true
  end.

Notation closed t := (closedn 0 t).

Set SsrRewrite.

Lemma closedn_subst s k t :
  forallb (closedn k) s -> closedn (#|s| + k) t ->
  closedn k (subst0 s t).
Admitted.
Module Export MetaRocq.
Module Export Erasure.
Module Export ELiftSubst.
End ELiftSubst.
Module Export ECSubst.
Import MetaRocq.Utils.utils.
Import MetaRocq.Erasure.EPrimitive.
Import MetaRocq.Erasure.EAst.

Fixpoint csubst t k u :=
  match u with
  | tBox => tBox
  | tRel n =>
     match Nat.compare k n with
    | Datatypes.Eq => t
    | Gt => tRel n
    | Lt => tRel (Nat.pred n)
    end
  | tEvar ev args => tEvar ev (List.map (csubst t k) args)
  | tLambda na M => tLambda na (csubst t (S k) M)
  | tApp u v => tApp (csubst t k u) (csubst t k v)
  | tLetIn na b b' => tLetIn na (csubst t k b) (csubst t (S k) b')
  | tCase ind c brs =>
    let brs' := List.map (fun br => (br.1, csubst t (#|br.1| + k) br.2)) brs in
    tCase ind (csubst t k c) brs'
  | tProj p c => tProj p (csubst t k c)
  | tFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (csubst t k')) mfix in
    tFix mfix' idx
  | tCoFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (csubst t k')) mfix in
    tCoFix mfix' idx
  | tConstruct ind n args => tConstruct ind n (map (csubst t k) args)
  | tPrim p => tPrim (map_prim (csubst t k) p)
  | tLazy u => tLazy (csubst t k u)
  | tForce u => tForce (csubst t k u)
  | x => x
  end.

Definition substl defs body : term :=
  fold_left (fun bod term => csubst term 0 bod)
    defs body.

Lemma closed_subst t k u : closed t ->
    csubst t k u = subst [t] k u.
Admitted.

Lemma closed_substl ts k u :
  forallb (closedn 0) ts ->
  closedn (#|ts| + k) u ->
  closedn k (ECSubst.substl ts u).
Admitted.
Module Export MetaRocq_DOT_Erasure_DOT_ECSubst.
Module Export MetaRocq.
Module Export Erasure.
Module Export ECSubst.
End ECSubst.

End Erasure.

End MetaRocq.

End MetaRocq_DOT_Erasure_DOT_ECSubst.
Import MetaRocq.Utils.utils.
Import MetaRocq.Common.BasicAst.
Import MetaRocq.Erasure.EAst.
Import MRMonadNotation.

Fixpoint lookup_env (Σ : global_context) id : option global_decl :=
  match Σ with
  | nil => None
  | hd :: tl =>
    if eq_kername id hd.1 then Some hd.2
    else lookup_env tl id
  end.

Definition declared_constant (Σ : global_context) id decl : Prop :=
  lookup_env Σ id = Some (ConstantDecl decl).

Section Lookups.
  Context (Σ : global_declarations).

  Definition lookup_minductive kn : option mutual_inductive_body :=
    decl <- lookup_env Σ kn;;
    match decl with
    | ConstantDecl _ => None
    | InductiveDecl mdecl => ret mdecl
    end.

  Definition lookup_inductive kn : option (mutual_inductive_body * one_inductive_body) :=
    mdecl <- lookup_minductive (inductive_mind kn) ;;
    idecl <- nth_error mdecl.(ind_bodies) (inductive_ind kn) ;;
    ret (mdecl, idecl).

  Definition lookup_constructor kn c : option (mutual_inductive_body * one_inductive_body * constructor_body) :=
    '(mdecl, idecl) <- lookup_inductive kn ;;
    cdecl <- nth_error idecl.(ind_ctors) c ;;
    ret (mdecl, idecl, cdecl).

End Lookups.

Definition inductive_isprop_and_pars Σ ind :=
  '(mdecl, idecl) <- lookup_inductive Σ ind ;;
  ret (idecl.(ind_propositional), mdecl.(ind_npars)).

Definition constructor_isprop_pars_decl Σ ind c :=
  '(mdecl, idecl, cdecl) <- lookup_constructor Σ ind c ;;
  ret (idecl.(ind_propositional), mdecl.(ind_npars), cdecl).

Definition closed_decl (d : EAst.global_decl) :=
  match d with
  | EAst.ConstantDecl cb =>
    option_default (ELiftSubst.closedn 0) (EAst.cst_body cb) true
  | EAst.InductiveDecl _ => true
  end.

Definition closed_env (Σ : EAst.global_declarations) :=
  forallb (test_snd closed_decl) Σ.

Definition fix_subst (l : mfixpoint term) :=
  let fix aux n :=
      match n with
      | 0 => []
      | S n => tFix l n :: aux n
      end
  in aux (List.length l).

Definition cofix_subst (l : mfixpoint term) :=
  let fix aux n :=
      match n with
      | 0 => []
      | S n => tCoFix l n :: aux n
      end
  in aux (List.length l).

Definition cunfold_fix (mfix : mfixpoint term) (idx : nat) :=
  match List.nth_error mfix idx with
  | Some d =>
    Some (d.(rarg), substl (fix_subst mfix) d.(dbody))
  | None => None
  end.

Definition cunfold_cofix (mfix : mfixpoint term) (idx : nat) :=
  match List.nth_error mfix idx with
  | Some d =>
    Some (d.(rarg), substl (cofix_subst mfix) d.(dbody))
  | None => None
  end.

Definition iota_red npar args (br : list name * term) :=
  substl (List.rev (List.skipn npar args)) br.2.
Module Export MetaRocq.
Module Export Erasure.
Module Export EGlobalEnv.
End EGlobalEnv.

Import Stdlib.Unicode.Utf8.
Import MetaRocq.Utils.utils.
Import MetaRocq.Common.BasicAst.
Import MetaRocq.Erasure.EPrimitive.
Import MetaRocq.Erasure.EAst.
Import MetaRocq.Erasure.EAstUtils.
Import MetaRocq.Erasure.ELiftSubst.
Import MetaRocq.Erasure.ECSubst.
Import MetaRocq.Erasure.EGlobalEnv.
Import Stdlib.ssr.ssreflect.
Import Stdlib.ssr.ssrbool.

Class WcbvFlags := { with_prop_case : bool ; with_guarded_fix : bool ; with_constructor_as_block : bool }.

Definition atom `{wfl : WcbvFlags} Σ t :=
  match t with
  | tBox
  | tCoFix _ _
  | tLambda _ _
  | tLazy _
  | tFix _ _ => true
  | tConstruct ind c [] => negb with_constructor_as_block && isSome (lookup_constructor Σ ind c)
  | _ => false
  end.

Section Wcbv.
  Context {wfl : WcbvFlags}.
  Context (Σ : global_declarations).

  Variant eval_primitive {term term' : Set} (eval : term -> term' -> Set) : prim_val term -> prim_val term' -> Set :=
    | evalPrimInt i : eval_primitive eval (prim_int i) (prim_int i)
    | evalPrimFloat f : eval_primitive eval (prim_float f) (prim_float f)
    | evalPrimString s : eval_primitive eval (prim_string s) (prim_string s)
    | evalPrimArray v def v' def'
      (ev : All2_Set eval v v')
      (ed : eval def def') :
      let a := {| array_default := def; array_value := v |} in
      let a' := {| array_default := def'; array_value := v' |} in
      eval_primitive eval (prim_array a) (prim_array a').

  Variant eval_primitive_ind {term term' : Set} (eval : term -> term' -> Set) (P : forall x y, eval x y -> Type) : forall x y, eval_primitive eval x y -> Type :=
  | evalPrimIntDep i : eval_primitive_ind eval P (prim_int i) (prim_int i) (evalPrimInt eval i)
  | evalPrimFloatDep f : eval_primitive_ind eval P (prim_float f) (prim_float f) (evalPrimFloat eval f)
  | evalPrimStringDep s : eval_primitive_ind eval P (prim_string s) (prim_string s) (evalPrimString eval s)
  | evalPrimArrayDep v def v' def'
    (ev : All2_Set eval v v')
    (ed : eval def def') :
    All2_over ev P -> P _ _ ed ->
    let a := {| array_default := def; array_value := v |} in
    let a' := {| array_default := def'; array_value := v' |} in
    eval_primitive_ind eval P (prim_array a) (prim_array a') (evalPrimArray eval v def v' def' ev ed).

  Local Unset Elimination Schemes.

  Inductive eval : term -> term -> Set :=

  | eval_box a t t' :
      eval a tBox ->
      eval t t' ->
      eval (tApp a t) tBox

  | eval_beta f na b a a' res :
      eval f (tLambda na b) ->
      eval a a' ->
      eval (csubst a' 0 b) res ->
      eval (tApp f a) res

  | eval_zeta na b0 b0' b1 res :
      eval b0 b0' ->
      eval (csubst b0' 0 b1) res ->
      eval (tLetIn na b0 b1) res

  | eval_iota ind pars cdecl discr c args brs br res :
      with_constructor_as_block = false ->
      eval discr (mkApps (tConstruct ind c []) args) ->
      constructor_isprop_pars_decl Σ ind c = Some (false, pars, cdecl) ->
      nth_error brs c = Some br ->
      #|args| = pars + cdecl.(cstr_nargs) ->
      #|skipn pars args| = #|br.1| ->
      eval (iota_red pars args br) res ->
      eval (tCase (ind, pars) discr brs) res

  | eval_iota_block ind pars cdecl discr c args brs br res :
      with_constructor_as_block = true ->
      eval discr (tConstruct ind c args) ->
      constructor_isprop_pars_decl Σ ind c = Some (false, pars, cdecl) ->
      nth_error brs c = Some br ->
      #|args| = pars + cdecl.(cstr_nargs) ->
      #|skipn pars args| = #|br.1| ->
      eval (iota_red pars args br) res ->
      eval (tCase (ind, pars) discr brs) res

  | eval_iota_sing ind pars discr brs n f res :
      with_prop_case ->
      eval discr tBox ->
      inductive_isprop_and_pars Σ ind = Some (true, pars) ->
      brs = [ (n,f) ] ->
      eval (substl (repeat tBox #|n|) f) res ->
      eval (tCase (ind, pars) discr brs) res

  | eval_fix f mfix idx argsv a av fn res :
      forall guarded : with_guarded_fix,
      eval f (mkApps (tFix mfix idx) argsv) ->
      eval a av ->
      cunfold_fix mfix idx = Some (#|argsv|, fn) ->
      eval (tApp (mkApps fn argsv) av) res ->
      eval (tApp f a) res

  | eval_fix_value f mfix idx argsv a av narg fn :
      forall guarded : with_guarded_fix,
      eval f (mkApps (tFix mfix idx) argsv) ->
      eval a av ->
      cunfold_fix mfix idx = Some (narg, fn) ->
      (#|argsv| < narg) ->
      eval (tApp f a) (tApp (mkApps (tFix mfix idx) argsv) av)

  | eval_fix' f mfix idx a av fn res narg :
    forall unguarded : with_guarded_fix = false,
    eval f (tFix mfix idx) ->
    cunfold_fix mfix idx = Some (narg, fn) ->
    eval a av ->
    eval (tApp fn av) res ->
    eval (tApp f a) res

  | eval_cofix_case ip mfix idx args discr narg fn brs res :
      eval discr (mkApps (tCoFix mfix idx) args) ->
      cunfold_cofix mfix idx = Some (narg, fn) ->
      eval (tCase ip (mkApps fn args) brs) res ->
      eval (tCase ip discr brs) res

  | eval_cofix_proj p mfix idx args discr narg fn res :
      eval discr (mkApps (tCoFix mfix idx) args) ->
      cunfold_cofix mfix idx = Some (narg, fn) ->
      eval (tProj p (mkApps fn args)) res ->
      eval (tProj p discr) res

  | eval_delta c decl body (isdecl : declared_constant Σ c decl) res :
      decl.(cst_body) = Some body ->
      eval body res ->
      eval (tConst c) res

  | eval_proj p cdecl discr args a res :
      with_constructor_as_block = false ->
      eval discr (mkApps (tConstruct p.(proj_ind) 0 []) args) ->
      constructor_isprop_pars_decl Σ p.(proj_ind) 0 = Some (false, p.(proj_npars), cdecl) ->
      #|args| = p.(proj_npars) + cdecl.(cstr_nargs) ->
      nth_error args (p.(proj_npars) + p.(proj_arg)) = Some a ->
      eval a res ->
      eval (tProj p discr) res

  | eval_proj_block p cdecl discr args a res :
      with_constructor_as_block = true ->
      eval discr (tConstruct p.(proj_ind) 0 args) ->
      constructor_isprop_pars_decl Σ p.(proj_ind) 0 = Some (false, p.(proj_npars), cdecl) ->
      #|args| = p.(proj_npars) + cdecl.(cstr_nargs) ->
      nth_error args (p.(proj_npars) + p.(proj_arg)) = Some a ->
      eval a res ->
      eval (tProj p discr) res

  | eval_proj_prop p discr :
      with_prop_case ->
      eval discr tBox ->
      inductive_isprop_and_pars Σ p.(proj_ind) = Some (true, p.(proj_npars)) ->
      eval (tProj p discr) tBox

  | eval_construct ind c mdecl idecl cdecl f args a a' :
    with_constructor_as_block = false ->
    lookup_constructor Σ ind c = Some (mdecl, idecl, cdecl) ->
    eval f (mkApps (tConstruct ind c []) args) ->
    #|args| < cstr_arity mdecl cdecl ->
    eval a a' ->
    eval (tApp f a) (tApp (mkApps (tConstruct ind c []) args) a')

  | eval_construct_block ind c mdecl idecl cdecl args args' :
    with_constructor_as_block = true ->
    lookup_constructor Σ ind c = Some (mdecl, idecl, cdecl) ->
    #|args| = cstr_arity mdecl cdecl ->
    All2_Set eval args args' ->
    eval (tConstruct ind c args) (tConstruct ind c args')

  | eval_app_cong f f' a a' :
      eval f f' ->
      ~~ (isLambda f' || (if with_guarded_fix then isFixApp f' else isFix f') || isBox f' || isConstructApp f'
        || isPrimApp f' || isLazyApp f')  ->
      eval a a' ->
      eval (tApp f a) (tApp f' a')

  | eval_prim p p' :
    eval_primitive eval p p' ->
    eval (tPrim p) (tPrim p')

  | eval_force t v v' :
    eval t (tLazy v) ->
    eval v v' ->
    eval (tForce t) v'

  | eval_atom t : atom Σ t -> eval t t.

End Wcbv.
Section eval_rect.

  Variables (wfl : WcbvFlags) (Σ : global_declarations) (P : forall x y, eval Σ x y → Type).

  Lemma eval_rect :
    (∀ (a t t' : term) (e : eval Σ a tBox),
     P a tBox e
     → ∀ e0 : eval Σ t t',
         P t t' e0 → P (tApp a t) tBox (eval_box Σ a t t' e e0))
  → (∀ (f0 : term) (na : name) (b a a' res : term)
       (e : eval Σ f0 (tLambda na b)),
       P f0 (tLambda na b) e
       → ∀ e0 : eval Σ a a',
           P a a' e0
           → ∀ e1 : eval Σ (csubst a' 0 b) res,
               P (csubst a' 0 b) res e1
               → P (tApp f0 a) res (eval_beta Σ f0 na b a a' res e e0 e1))
    → (∀ (na : name) (b0 b0' b1 res : term) (e : eval Σ b0 b0'),
         P b0 b0' e
         → ∀ e0 : eval Σ (csubst b0' 0 b1) res,
             P (csubst b0' 0 b1) res e0
             → P (tLetIn na b0 b1) res (eval_zeta Σ na b0 b0' b1 res e e0))
      → (∀ (ind : inductive) (pars : nat) (cdecl : constructor_body)
           (discr : term) (c : nat) (args : list term)
           (brs : list (list name × term)) (br : list name × term)
           (res : term) (e : with_constructor_as_block = false)
           (e0 : eval Σ discr (mkApps (tConstruct ind c []) args)),
           P discr (mkApps (tConstruct ind c []) args) e0
           → ∀ (e1 : constructor_isprop_pars_decl Σ ind c =
                     Some (false, pars, cdecl)) (e2 :
                                                 nth_error brs c =
                                                 Some br)
               (e3 : #|args| = pars + cstr_nargs cdecl)
               (e4 : #|skipn pars args| = #|br.1|)
               (e5 : eval Σ (iota_red pars args br) res),
               P (iota_red pars args br) res e5
               → P (tCase (ind, pars) discr brs) res
                   (eval_iota Σ ind pars cdecl discr c args brs br res e e0
                      e1 e2 e3 e4 e5))
        → (∀ (ind : inductive) (pars : nat) (cdecl : constructor_body)
             (discr : term) (c : nat) (args : list term)
             (brs : list (list name × term)) (br : list name × term)
             (res : term) (e : with_constructor_as_block = true)
             (e0 : eval Σ discr (tConstruct ind c args)),
             P discr (tConstruct ind c args) e0
             → ∀ (e1 : constructor_isprop_pars_decl Σ ind c =
                       Some (false, pars, cdecl))
                 (e2 : nth_error brs c = Some br)
                 (e3 : #|args| = pars + cstr_nargs cdecl)
                 (e4 : #|skipn pars args| = #|br.1|)
                 (e5 : eval Σ (iota_red pars args br) res),
                 P (iota_red pars args br) res e5
                 → P (tCase (ind, pars) discr brs) res
                     (eval_iota_block Σ ind pars cdecl discr c args brs br
                        res e e0 e1 e2 e3 e4 e5))
          → (∀ (ind : inductive) (pars : nat) (discr : term)
               (brs : list (list name × term)) (n : list name)
               (f4 res : term) (i : with_prop_case)
               (e : eval Σ discr tBox),
               P discr tBox e
               → ∀ (e0 : inductive_isprop_and_pars Σ ind = Some (true, pars))
                   (e1 : brs = [(n, f4)]) (e2 : eval Σ
                                                 (substl
                                                 (repeat tBox #|n|) f4) res),
                   P (substl (repeat tBox #|n|) f4) res e2
                   → P (tCase (ind, pars) discr brs) res
                       (eval_iota_sing Σ ind pars discr brs n f4 res i e e0
                          e1 e2))
            → (∀ (f5 : term) (mfix : mfixpoint term)
                 (idx : nat) (argsv : list term) (a av fn res : term)
                 (guarded : with_guarded_fix) (e :
                                               eval Σ f5
                                                 (mkApps
                                                 (tFix mfix idx) argsv)),
                 P f5 (mkApps (tFix mfix idx) argsv) e
                 → ∀ e0 : eval Σ a av,
                     P a av e0
                     → ∀ (e1 : cunfold_fix mfix idx = Some (#|argsv|, fn))
                         (e2 : eval Σ (tApp (mkApps fn argsv) av) res),
                         P (tApp (mkApps fn argsv) av) res e2
                         → P (tApp f5 a) res
                             (eval_fix Σ f5 mfix idx argsv a av fn res
                                guarded e e0 e1 e2))
              → (∀ (f6 : term) (mfix : mfixpoint term)
                   (idx : nat) (argsv : list term)
                   (a av : term) (narg : nat) (fn : term)
                   (guarded : with_guarded_fix) (e :
                                                 eval Σ f6
                                                 (mkApps
                                                 (tFix mfix idx) argsv)),
                   P f6 (mkApps (tFix mfix idx) argsv) e
                   → ∀ e0 : eval Σ a av,
                       P a av e0
                       → ∀ (e1 : cunfold_fix mfix idx = Some (narg, fn))
                           (l : #|argsv| < narg),
                           P (tApp f6 a)
                             (tApp (mkApps (tFix mfix idx) argsv) av)
                             (eval_fix_value Σ f6 mfix idx argsv a av narg fn
                                guarded e e0 e1 l))
                → (∀ (f7 : term) (mfix : mfixpoint term)
                     (idx : nat) (a av fn res : term)
                     (narg : nat) (unguarded : with_guarded_fix = false)
                     (e : eval Σ f7 (tFix mfix idx)),
                     P f7 (tFix mfix idx) e
                     → ∀ (e0 : cunfold_fix mfix idx = Some (narg, fn))
                         (e1 : eval Σ a av),
                         P a av e1
                         → ∀ e2 : eval Σ (tApp fn av) res,
                             P (tApp fn av) res e2
                             → P (tApp f7 a) res
                                 (eval_fix' Σ f7 mfix idx a av fn res narg
                                    unguarded e e0 e1 e2))
                  → (∀ (ip : inductive × nat) (mfix : mfixpoint term)
                       (idx : nat) (args : list term)
                       (discr : term) (narg : nat)
                       (fn : term) (brs : list (list name × term))
                       (res : term) (e : eval Σ discr
                                           (mkApps (tCoFix mfix idx) args)),
                       P discr (mkApps (tCoFix mfix idx) args) e
                       → ∀ (e0 : cunfold_cofix mfix idx = Some (narg, fn))
                           (e1 : eval Σ (tCase ip (mkApps fn args) brs) res),
                           P (tCase ip (mkApps fn args) brs) res e1
                           → P (tCase ip discr brs) res
                               (eval_cofix_case Σ ip mfix idx args discr narg
                                  fn brs res e e0 e1))
                    → (∀ (p : projection) (mfix : mfixpoint term)
                         (idx : nat) (args : list term)
                         (discr : term) (narg : nat)
                         (fn res : term) (e : eval Σ discr
                                                (mkApps
                                                 (tCoFix mfix idx) args)),
                         P discr (mkApps (tCoFix mfix idx) args) e
                         → ∀ (e0 : cunfold_cofix mfix idx = Some (narg, fn))
                             (e1 : eval Σ (tProj p (mkApps fn args)) res),
                             P (tProj p (mkApps fn args)) res e1
                             → P (tProj p discr) res
                                 (eval_cofix_proj Σ p mfix idx args discr
                                    narg fn res e e0 e1))
                      → (∀ (c : kername) (decl : constant_body)
                           (body : term) (isdecl :
                                          declared_constant Σ c decl)
                           (res : term) (e : cst_body decl = Some body)
                           (e0 : eval Σ body res),
                           P body res e0
                           → P (tConst c) res
                               (eval_delta Σ c decl body isdecl res e e0))
                        → (∀ (p : projection) (cdecl : constructor_body)
                             (discr : term) (args : list term)
                             (a res : term) (e : with_constructor_as_block =
                                                 false)
                             (e0 : eval Σ discr
                                     (mkApps (tConstruct (proj_ind p) 0 [])
                                        args)),
                             P discr
                               (mkApps (tConstruct (proj_ind p) 0 []) args)
                               e0
                             → ∀ (e1 : constructor_isprop_pars_decl Σ
                                         (proj_ind p) 0 =
                                       Some (false, proj_npars p, cdecl))
                                 (e2 : #|args| =
                                       proj_npars p + cstr_nargs cdecl)
                                 (e3 : nth_error args
                                         (proj_npars p + proj_arg p) =
                                       Some a) (e4 : eval Σ a res),
                                 P a res e4
                                 → P (tProj p discr) res
                                     (eval_proj Σ p cdecl discr args a res e
                                        e0 e1 e2 e3 e4))
                          → (∀ (p : projection) (cdecl : constructor_body)
                               (discr : term) (args : list term)
                               (a res : term) (e :
                                               with_constructor_as_block =
                                               true)
                               (e0 : eval Σ discr
                                       (tConstruct (proj_ind p) 0 args)),
                               P discr (tConstruct (proj_ind p) 0 args) e0
                               → ∀ (e1 : constructor_isprop_pars_decl Σ
                                           (proj_ind p) 0 =
                                         Some (false, proj_npars p, cdecl))
                                   (e2 : #|args| =
                                         proj_npars p + cstr_nargs cdecl)
                                   (e3 : nth_error args
                                           (proj_npars p + proj_arg p) =
                                         Some a) (e4 : eval Σ a res),
                                   P a res e4
                                   → P (tProj p discr) res
                                       (eval_proj_block Σ p cdecl discr args
                                          a res e e0 e1 e2 e3 e4))
                            → (∀ (p : projection)
                                 (discr : term) (i : with_prop_case)
                                 (e : eval Σ discr tBox),
                                 P discr tBox e
                                 → ∀ e0 : inductive_isprop_and_pars Σ
                                            (proj_ind p) =
                                          Some (true, proj_npars p),
                                     P (tProj p discr) tBox
                                       (eval_proj_prop Σ p discr i e e0))
                              → (∀ (ind : inductive)
                                   (c : nat) (mdecl : mutual_inductive_body)
                                   (idecl : one_inductive_body)
                                   (cdecl : constructor_body)
                                   (f14 : term) (args : list term)
                                   (a a' : term) (e :
                                                 with_constructor_as_block =
                                                 false)
                                   (e0 : lookup_constructor Σ ind c =
                                         Some (mdecl, idecl, cdecl))
                                   (e1 : eval Σ f14
                                           (mkApps (tConstruct ind c []) args)),
                                   P f14 (mkApps (tConstruct ind c []) args)
                                     e1
                                   → ∀ (l : #|args| < cstr_arity mdecl cdecl)
                                       (e2 : eval Σ a a'),
                                       P a a' e2
                                       → P (tApp f14 a)
                                           (tApp
                                              (mkApps
                                                 (tConstruct ind c []) args)
                                              a')
                                           (eval_construct Σ ind c mdecl
                                              idecl cdecl f14 args a a' e e0
                                              e1 l e2))
                                → (∀ (ind : inductive)
                                     (c : nat) (mdecl : mutual_inductive_body)
                                     (idecl : one_inductive_body)
                                     (cdecl : constructor_body)
                                     (args args' :
                                      list term) (e :
                                                 with_constructor_as_block =
                                                 true)
                                     (e0 : lookup_constructor Σ ind c =
                                           Some (mdecl, idecl, cdecl))
                                     (e1 : #|args| = cstr_arity mdecl cdecl)
                                     (a : All2_Set (eval Σ) args args')
                                     (iha : All2_over a P),
                                     P (tConstruct ind c args)
                                       (tConstruct ind c args')
                                       (eval_construct_block Σ ind c mdecl
                                          idecl cdecl args args' e e0 e1 a))
                                  → (∀ (f16 f' a a' : term)
                                       (e : eval Σ f16 f'),
                                       P f16 f' e
                                       → ∀ (i : ~~
                                                (isLambda f'
                                                 ||
                                                 (if with_guarded_fix
                                                 then isFixApp f'
                                                 else isFix f') ||
                                                 isBox f'
                                                 ||
                                                 isConstructApp f'
                                                 || isPrimApp f' || isLazyApp f'))
                                           (e0 : eval Σ a a'),
                                           P a a' e0
                                           → P (tApp f16 a)
                                               (tApp f' a')
                                               (eval_app_cong Σ f16 f' a a' e
                                                 i e0)) ->

    (forall p p' (ev : eval_primitive (eval Σ) p p'),
      eval_primitive_ind _ P _ _ ev ->
      P (tPrim p) (tPrim p') (eval_prim _ _ _ ev)) ->
    (forall t t' v (ev1 : eval Σ t (tLazy t')) (ev2 : eval Σ t' v),
      P _ _ ev1 -> P _ _ ev2 ->
      P (tForce t) v (eval_force _ t t' v ev1 ev2))

    → (∀ (t : term) (i : atom Σ t),
          P t t (eval_atom Σ t i))
      → ∀ (t t0 : term) (e : eval Σ t t0),
          P t t0 e.
Admitted.
  Definition eval_ind := eval_rect.

End eval_rect.

#[register=no] Scheme eval_nondep := Minimality for eval Sort Prop.

Lemma closedn_mkApps k f args : closedn k (mkApps f args) = closedn k f && forallb (closedn k) args.
Admitted.

Lemma eval_closed {wfl : WcbvFlags} Σ :
  closed_env Σ ->
  forall t u, closed t -> eval Σ t u -> closed u.
Proof.
  move=> clΣ t u Hc ev.
move: Hc.
  induction ev; simpl in *; auto;
    (move/andP=> [/andP[Hc Hc'] Hc''] || move/andP=> [Hc Hc'] || move=>Hc); auto.
  -
 eapply IHev3.
rewrite ECSubst.closed_subst //.
auto.
    eapply closedn_subst; tea.
cbn.
rewrite andb_true_r.
auto.
cbn.
auto.
  -
 eapply IHev2.
    rewrite ECSubst.closed_subst; auto.
    eapply closedn_subst; tea.
cbn.
rewrite andb_true_r.
auto.
  -
 specialize (IHev1 Hc).
    move: IHev1; rewrite closedn_mkApps => /andP[] _ clargs.
    apply IHev2.
rewrite /iota_red.
    eapply closed_substl.
now rewrite forallb_rev forallb_skipn.
    len.
rewrite e4.
