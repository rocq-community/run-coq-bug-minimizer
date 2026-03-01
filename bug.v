
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/utils/theories" "MetaRocq.Utils" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/common/theories" "MetaRocq.Common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/pcuic/theories" "MetaRocq.PCUIC" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Equations" "Equations" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 745 lines to 213 lines, then from 227 lines to 1933 lines, then from 1940 lines to 512 lines, then from 526 lines to 1231 lines, then from 1238 lines to 537 lines, then from 551 lines to 3237 lines, then from 3239 lines to 686 lines, then from 700 lines to 1833 lines, then from 1839 lines to 869 lines, then from 883 lines to 2943 lines, then from 2944 lines to 890 lines, then from 904 lines to 3361 lines, then from 3363 lines to 1437 lines, then from 1443 lines to 996 lines, then from 1008 lines to 1838 lines, then from 1843 lines to 1118 lines, then from 1130 lines to 2645 lines, then from 2646 lines to 1143 lines, then from 1154 lines to 1809 lines, then from 1816 lines to 1164 lines, then from 1176 lines to 3035 lines, then from 3038 lines to 1442 lines, then from 1454 lines to 2107 lines, then from 2113 lines to 1519 lines, then from 1530 lines to 4343 lines, then from 4342 lines to 3505 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 6.146 sec
   Expected coqc peak memory usage on this file: 2470276.0 kb *)









Require Corelib.Floats.FloatAxioms.
Require Corelib.Program.Tactics.
Require Corelib.Classes.CRelationClasses.
Require Corelib.Numbers.BinNums.
Require Corelib.BinNums.NatDef.
Require Corelib.Program.Basics.
Require Corelib.extraction.Extraction.
Require Corelib.Classes.RelationClasses.
Require Corelib.BinNums.IntDef.
Require Corelib.Program.Utils.
Require Corelib.Floats.SpecFloat.
Require Corelib.Setoids.Setoid.
Require Corelib.Strings.PrimString.
Require Corelib.Numbers.Cyclic.Int63.CarryType.
Require Corelib.BinNums.PosDef.
Require Corelib.Classes.CMorphisms.
Require Corelib.Numbers.Cyclic.Int63.Sint63Axioms.
Require Corelib.Init.Hexadecimal.
Require Corelib.ssr.ssreflect.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Init.Sumbool.
Require Corelib.Numbers.Cyclic.Int63.Uint63Axioms.
Require Corelib.ssr.ssrbool.
Require Corelib.ssr.ssrfun.
Require Corelib.Program.Wf.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Init.Nat.
Require Corelib.Strings.PrimStringAxioms.
Require Corelib.Floats.FloatOps.
Require Corelib.Floats.PrimFloat.
Require Corelib.Numbers.Cyclic.Int63.PrimInt63.
Require Corelib.Lists.ListDef.
Require Corelib.Init.Decimal.
Require Corelib.Init.Wf.
Require Corelib.Init.Ltac.
Require Corelib.Classes.Morphisms.
Require Corelib.Init.Byte.
Require MetaRocq.Utils.MREquality.
Require MetaRocq.Utils.MRSquash.
Require MetaRocq.Utils.MRTactics.DestructHyps.
Require MetaRocq.Utils.MRTactics.FindHyp.
Require MetaRocq.Utils.MRTactics.Head.
Require MetaRocq.Utils.MRTactics.SpecializeBy.
Require MetaRocq.Utils.MRTactics.SplitInContext.
Require MetaRocq.Utils.MRTactics.Zeta1.
Require Stdlib.Classes.DecidableClass.
Require Stdlib.Logic.Decidable.
Require Stdlib.Logic.EqdepFacts.
Require Stdlib.Logic.FunctionalExtensionality.
Require Stdlib.Logic.HLevelsBase.
Require Stdlib.Program.Syntax.
Require Stdlib.Sets.Relations_1.
Require Stdlib.Unicode.Utf8_core.
Require Stdlib.Wellfounded.Inverse_Image.
Require Stdlib.micromega.ZifyClasses.
Require Stdlib.setoid_ring.Algebra_syntax.
Require Equations.Init.
Require Ltac2.Init.
Require MetaRocq.Utils.MRTactics.UniquePose.
Require Stdlib.BinNums.PosDef.
Require Stdlib.BinNums.IntDef.
Require Stdlib.BinNums.NatDef.
Require Stdlib.Classes.CMorphisms.
Require Stdlib.Classes.CRelationClasses.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Floats.FloatAxioms.
Require Stdlib.Floats.PrimFloat.
Require Stdlib.Floats.FloatOps.
Require Stdlib.Floats.SpecFloat.
Require Stdlib.Init.Byte.
Require Stdlib.Init.Nat.
Require Stdlib.Init.Sumbool.
Require Stdlib.Init.Wf.
Require Stdlib.Init.Decimal.
Require Stdlib.Init.Hexadecimal.
Require Stdlib.Lists.ListDef.
Require Stdlib.Logic.Eqdep.
Require Stdlib.Logic.Eqdep_dec.
Require Stdlib.Logic.ProofIrrelevanceFacts.
Require Stdlib.Numbers.BinNums.
Require Stdlib.Numbers.Cyclic.Int63.CarryType.
Require Stdlib.Numbers.Cyclic.Int63.PrimInt63.
Require Stdlib.Numbers.Cyclic.Int63.Sint63Axioms.
Require Stdlib.Numbers.Cyclic.Int63.Uint63Axioms.
Require Stdlib.Program.Basics.
Require Stdlib.Program.Tactics.
Require Stdlib.Program.Utils.
Require Stdlib.Program.Wf.
Require Stdlib.Relations.Relation_Definitions.
Require Stdlib.Setoids.Setoid.
Require Stdlib.Strings.PrimString.
Require Stdlib.Strings.PrimStringAxioms.
Require Stdlib.Unicode.Utf8.
Require Stdlib.Wellfounded.Well_Ordering.
Require Stdlib.extraction.Extraction.
Require Stdlib.ssr.ssrbool.
Require Stdlib.ssr.ssrfun.
Require Stdlib.ssr.ssreflect.
Require Equations.Prop.SigmaNotations.
Require Equations.Signature.
Require Ltac2.Message.
Require Ltac2.Std.
Require MetaRocq.Utils.MRTactics.DestructHead.
Require MetaRocq.Utils.MRTactics.SpecializeAllWays.
Require Stdlib.Bool.Bool.
Require Stdlib.Logic.JMeq.
Require Stdlib.Logic.ProofIrrelevance.
Require Stdlib.Relations.Relation_Operators.
Require Stdlib.Wellfounded.Inclusion.
Require Equations.CoreTactics.
Require Ltac2.Control.
Require MetaRocq.Utils.MRTactics.GeneralizeOverHoles.
Require Stdlib.Program.Combinators.
Require Stdlib.Relations.Operators_Properties.
Require Stdlib.Wellfounded.Disjoint_Union.
Require Stdlib.Wellfounded.Transitive_Closure.
Require Stdlib.PArith.BinPosDef.
Require Stdlib.Relations.Relations.
Require Stdlib.Wellfounded.Union.
Require Equations.Type.Logic.
Require Ltac2.Ltac1.
Require Stdlib.Program.Equality.
Require Equations.Prop.Logic.
Require Equations.Type.Relation.
Require Stdlib.Numbers.NumPrelude.
Require Equations.Type.Relation_Properties.
Require MetaRocq.Utils.MRTactics.InHypUnderBindersDo.
Require MetaRocq.Utils.MRTactics.SpecializeUnderBindersBy.
Require Stdlib.Classes.RelationPairs.
Require Stdlib.Program.WfExtensionality.
Require Stdlib.Wellfounded.Lexicographic_Product.
Require Equations.Prop.Classes.
Require MetaRocq.Utils.MRProd.
Require Stdlib.Structures.Equalities.
Require Equations.Prop.EqDec.
Require Stdlib.Program.Subset.
Require MetaRocq.Utils.MRRelations.
Require Equations.Prop.DepElim.
Require Equations.Prop.FunctionalInduction.
Require Stdlib.Structures.Orders.
Require Equations.Prop.Constants.
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
Require Stdlib.Wellfounded.List_Extension.
Require Stdlib.micromega.Refl.
Require Stdlib.Sorting.Sorted.
Require Stdlib.micromega.Tauto.
Require Stdlib.Lists.ListTactics.
Require Stdlib.Sorting.SetoidList.
Require Stdlib.Structures.DecidableType.
Require Stdlib.Structures.OrderedType.
Require Stdlib.Wellfounded.Lexicographic_Exponentiation.
Require Stdlib.MSets.MSetInterface.
Require Stdlib.PArith.BinPos.
Require Stdlib.Structures.EqualitiesFacts.
Require Stdlib.Structures.OrderedTypeAlt.
Require Stdlib.Structures.OrdersAlt.
Require Stdlib.Arith.Arith_base.
Require Stdlib.FSets.FMapInterface.
Require Stdlib.PArith.POrderedType.
Require Stdlib.PArith.Pnat.
Require Stdlib.Structures.OrdersLists.
Require Stdlib.FSets.FMapList.
Require Stdlib.Vectors.Fin.
Require Stdlib.NArith.BinNatDef.
Require Stdlib.PArith.PArith.
Require Stdlib.Vectors.VectorDef.
Require Stdlib.NArith.BinNat.
Require Stdlib.setoid_ring.BinList.
Require Stdlib.MSets.MSetList.
Require Stdlib.NArith.Ndiv_def.
Require Stdlib.NArith.Ngcd_def.
Require Stdlib.NArith.Nsqrt_def.
Require Stdlib.setoid_ring.Ring_theory.
Require Stdlib.NArith.Nnat.
Require Stdlib.Wellfounded.Wellfounded.
Require Stdlib.Vectors.VectorSpec.
Require Stdlib.ZArith.BinIntDef.
Require Stdlib.Vectors.VectorEq.
Require Stdlib.Vectors.Vector.
Require Stdlib.NArith.NArith_base.
Require Stdlib.Strings.Byte.
Require MetaRocq.Utils.ByteCompare.
Require Stdlib.Strings.Ascii.
Require Stdlib.Vectors.Bvector.
Require Stdlib.Strings.String.
Require Stdlib.NArith.Ndec.
Require Stdlib.Numbers.DecimalString.
Require Stdlib.Numbers.HexadecimalString.
Require Equations.Prop.Subterm.
Require Stdlib.ZArith.BinInt.
Require Equations.Prop.Tactics.
Require Stdlib.ZArith.Int.
Require Stdlib.ZArith.Zcompare.
Require Stdlib.ZArith.Zeven.
Require Stdlib.ZArith.auxiliary.
Require Stdlib.ZArith.Zpow_def.
Require Stdlib.setoid_ring.Ncring.
Require Stdlib.Numbers.Cyclic.Abstract.DoubleType.
Require Stdlib.micromega.Env.
Require Stdlib.micromega.VarMap.
Require Stdlib.micromega.EnvRing.
Require Stdlib.setoid_ring.Ring_polynom.
Require Stdlib.setoid_ring.InitialRing.
Require Stdlib.ZArith.Znat.
Require Stdlib.ZArith.Zorder.
Require Stdlib.setoid_ring.Ncring_polynom.
Require Stdlib.setoid_ring.Ring_tac.
Require Stdlib.ZArith.Zmax.
Require Stdlib.ZArith.Zmin.
Require Stdlib.ZArith.Zminmax.
Require Stdlib.ZArith.Zmisc.
Require Stdlib.setoid_ring.Ncring_initial.
Require Stdlib.setoid_ring.Ring_base.
Require Stdlib.setoid_ring.Ncring_tac.
Require Stdlib.omega.PreOmega.
Require Stdlib.omega.OmegaLemmas.
Require Stdlib.micromega.ZifyInst.
Require Stdlib.setoid_ring.Ring.
Require Stdlib.ZArith.ZArith_dec.
Require Stdlib.micromega.OrderedRing.
Require Stdlib.micromega.Zify.
Require Stdlib.setoid_ring.NArithRing.
Require Stdlib.setoid_ring.ZArithRing.
Require Stdlib.ZArith.Wf_Z.
Require Stdlib.micromega.ZifyBool.
Require Stdlib.setoid_ring.ArithRing.
Require Stdlib.setoid_ring.Cring.
Require Stdlib.ZArith.Zbool.
Require Stdlib.setoid_ring.Integral_domain.
Require Stdlib.ZArith.Zabs.
Require Equations.Prop.NoConfusion.
Require Equations.Prop.EqDecInstances.
Require Stdlib.nsatz.NsatzTactic.
Require Equations.Prop.Loader.
Require Stdlib.NArith.NArith.
Require Stdlib.micromega.RingMicromega.
Require Equations.Prop.Telescopes.
Require Equations.Prop.Equations.
Require Stdlib.ZArith.Zhints.
Require Stdlib.Arith.Arith.
Require Stdlib.micromega.ZMicromega.
Require MetaRocq.Utils.ReflectEq.
Require Stdlib.ZArith.ZArith_base.
Require MetaRocq.Utils.MRCompare.
Require Stdlib.MSets.MSetGenTree.
Require Stdlib.MSets.MSetAVL.
Require Stdlib.ZArith.Zcomplements.
Require Stdlib.ZArith.Zdiv.
Require Stdlib.ZArith.Zpower.
Require Stdlib.micromega.Lia.
Require Stdlib.btauto.Algebra.
Require Stdlib.Structures.OrderedTypeEx.
Require Stdlib.btauto.Reflect.
Require Stdlib.btauto.Btauto.
Require Stdlib.Structures.DecidableTypeEx.
Require Stdlib.FSets.FMapFacts.
Require Stdlib.MSets.MSetFacts.
Require Stdlib.ZArith.ZNsatz.
Require Stdlib.MSets.MSetDecide.
Require Stdlib.ZArith.Zbitwise.
Require MetaRocq.Common.config.
Require Stdlib.micromega.ZArith_hints.
Require Stdlib.MSets.MSetProperties.
Require Stdlib.ZArith.Zdivisibility.
Require Stdlib.ZArith.Zcong.
Require Stdlib.ZArith.Zdiv_facts.
Require Stdlib.ZArith.ZModOffset.
Require Stdlib.ZArith.Znumtheory.
Require Stdlib.ZArith.Zgcd_alt.
Require Stdlib.ZArith.Zpow_facts.
Require Stdlib.ZArith.ZArith.
Require MetaRocq.Utils.MRArith.
Require Stdlib.Numbers.Cyclic.Abstract.CyclicAxioms.
Require Stdlib.FSets.FMapAVL.
Require Stdlib.Numbers.Cyclic.Int63.Uint63.
Require Stdlib.Numbers.Cyclic.Int63.Cyclic63.
Require Stdlib.micromega.ZifyUint63.
Require Stdlib.Numbers.Cyclic.Int63.Ring63.
Require Stdlib.Numbers.Cyclic.Int63.Sint63.
Require MetaRocq.Utils.ByteCompareSpec.
Require MetaRocq.Utils.bytestring.
Require Stdlib.Strings.PString.
Require Stdlib.FSets.FMapFullAVL.
Require MetaRocq.Utils.MRPrelude.
Require MetaRocq.Utils.MRReflect.
Require MetaRocq.Utils.MRList.
Require MetaRocq.Utils.MROption.
Require MetaRocq.Utils.MRString.
Require MetaRocq.Utils.All_Forall.
Require MetaRocq.Utils.monad_utils.
Require MetaRocq.Utils.MRMSets.
Require MetaRocq.Common.Primitive.
Require MetaRocq.Utils.Show.
Require MetaRocq.Utils.MRUtils.
Require MetaRocq.Utils.utils.
Require MetaRocq.Utils.MRFSets.
Require MetaRocq.Common.Kernames.
Require MetaRocq.Common.BasicAst.
Require MetaRocq.Common.Universes.
Require MetaRocq.Common.Reflect.
Require MetaRocq.Common.Environment.

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
Import CS.

  Parameter Inline typing : forall `{checker_flags}, global_env_ext -> context -> term -> term -> Type.

  Notation " Σ ;;; Γ |- t : T " :=
    (typing Σ Γ t T) (at level 50, Γ, t, T at next level) : type_scope.

  Notation wf_local Σ Γ := (All_local_env (lift_typing Σ) Γ).

End Typing.

Module DeclarationTyping (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E)
  (ET : EnvTypingSig T E TU) (CT : ConversionSig T E TU ET)
  (CS : ConversionParSig T E TU ET) (Ty : Typing T E TU ET CT CS)
  (L : LookupSig T E) (GM : GlobalMapsSig T E TU ET CT L).
Import T.
Import E.
Import L.
Import TU.
Import ET.
Import CT.
Import GM.
Import CS.
Import Ty.

  Definition isTypeRel `{checker_flags} (Σ : global_env_ext) (Γ : context) (t : term) (rel : relevance) :=
    on_type_rel (lift_typing typing) Σ Γ t rel.

  Definition isType `{checker_flags} (Σ : global_env_ext) (Γ : context) (t : term) :=
    on_type (lift_typing typing) Σ Γ t.

  Lemma isTypeRel_isType `{checker_flags} (Σ : global_env_ext) (Γ : context) (t : term) (r : relevance) : isTypeRel Σ Γ t r -> isType Σ Γ t.
Admitted.
  #[export] Hint Resolve isTypeRel_isType : pcuic.

  Coercion isTypeRel_isType : isTypeRel >-> isType.

  

  Definition Forall_decls_typing `{checker_flags}
            (P : global_env_ext -> context -> term -> term -> Type)
    := on_global_env cumul_gen (lift_typing P).

  

  Definition type_local_decl `{checker_flags} Σ Γ d :=
    match d.(decl_body) with
    | None => isType Σ Γ d.(decl_type)
    | Some body => Σ ;;; Γ |- body : d.(decl_type)
    end.

  

  Lemma refine_type `{checker_flags} Σ Γ t T U : Σ ;;; Γ |- t : T -> T = U -> Σ ;;; Γ |- t : U.
Admitted.

  Definition wf_local_rel `{checker_flags} Σ := All_local_rel (lift_typing1 (typing Σ)).

  
  Lemma on_wf_global_env_impl_config {cf1 cf2 cf3 : checker_flags} {Σ : global_env} {wfΣ : @on_global_env cf1 (@cumul_gen cf1) (lift_typing (@typing cf1)) Σ} P Q :
    config.impl cf2 cf3 ->
    (forall Σ Γ pb t T, @cumul_gen cf2 Σ Γ pb t T -> @cumul_gen cf3 Σ Γ pb t T) ->
    (forall Σ Γ j, @on_global_env cf1 (@cumul_gen cf1) (lift_typing (@typing cf1)) Σ.1 ->
        @on_global_env cf2 (@cumul_gen cf2) P Σ.1 ->
        @on_global_env cf3 (@cumul_gen cf3) Q Σ.1 ->
        P Σ Γ j -> Q Σ Γ j) ->
    @on_global_env cf2 (@cumul_gen cf2) P Σ -> @on_global_env cf3 (@cumul_gen cf3) Q Σ.
Admitted.

  Lemma on_wf_global_env_impl `{checker_flags} {Σ : global_env} {wfΣ : on_global_env cumul_gen (lift_typing typing) Σ} P Q :
    (forall Σ Γ j, on_global_env cumul_gen (lift_typing typing) Σ.1 ->
        on_global_env cumul_gen P Σ.1 ->
        on_global_env cumul_gen Q Σ.1 ->
        P Σ Γ j -> Q Σ Γ j) ->
    on_global_env cumul_gen P Σ -> on_global_env cumul_gen Q Σ.
Admitted.

  Section Properties.
    Context {cf : checker_flags}.
    Context {Pcmp: global_env_ext -> context -> conv_pb -> term -> term -> Type}.
    Context {P: global_env_ext -> context -> judgment -> Type}.

  Let wf := on_global_env Pcmp P.
  End Properties.
End DeclarationTyping.
Module Export MetaRocq_DOT_PCUIC_DOT_utils_DOT_PCUICPrimitive_WRAPPED.
Module Export PCUICPrimitive.

Import MetaRocq.Utils.utils.
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

End PCUICPrimitive.
Module Export MetaRocq_DOT_PCUIC_DOT_utils_DOT_PCUICPrimitive.
Module Export MetaRocq.
Module Export PCUIC.
Module Export utils.
Module Export PCUICPrimitive.
Include MetaRocq_DOT_PCUIC_DOT_utils_DOT_PCUICPrimitive_WRAPPED.PCUICPrimitive.
End PCUICPrimitive.

End utils.

End PCUIC.

End MetaRocq.

End MetaRocq_DOT_PCUIC_DOT_utils_DOT_PCUICPrimitive.
Import MetaRocq.Utils.utils.
Export MetaRocq.Common.Primitive.
Export MetaRocq.Common.Universes.
Export MetaRocq.Common.BasicAst.
Export MetaRocq.Common.Environment.

Record predicate {term} := mk_predicate {
  pparams : list term;
  puinst : Instance.t;
  pcontext : list (context_decl term);

  preturn : term;  }.
Arguments predicate : clear implicits.

Section map_predicate.

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

Notation prim_val := (prim_val term).

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

Section fix_test.

End fix_test.

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
Admitted.

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
Module Export MetaRocq_DOT_PCUIC_DOT_PCUICAst.
Module Export MetaRocq.
Module Export PCUIC.
Module Export PCUICAst.
End PCUICAst.

End PCUIC.

End MetaRocq.

End MetaRocq_DOT_PCUIC_DOT_PCUICAst.
Import MetaRocq.PCUIC.PCUICAst.
Definition set_preturn (p : predicate term) (pret' : term) : predicate term.
Admitted.
Definition set_pparams (p : predicate term) (pars' : list term) : predicate term.
Admitted.

Section OnOne_local_2.
End OnOne_local_2.
Module Export MetaRocq_DOT_PCUIC_DOT_utils_DOT_PCUICOnOne.
Module Export MetaRocq.
Module Export PCUIC.
Module Export utils.
Module Export PCUICOnOne.
End PCUICOnOne.

End utils.

End PCUIC.

End MetaRocq.

End MetaRocq_DOT_PCUIC_DOT_utils_DOT_PCUICOnOne.
Import MetaRocq.Utils.utils.
Import MetaRocq.PCUIC.PCUICAst.

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

Section MapInP.
End MapInP.
Module Export MetaRocq.
Module Export PCUIC.
Module Export utils.
Module Export PCUICAstUtils.
End PCUICAstUtils.
Import MetaRocq.Utils.utils.
Import MetaRocq.PCUIC.PCUICAst.

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
Import MetaRocq.Utils.utils.
Import MetaRocq.Common.config.
Import MetaRocq.PCUIC.PCUICAst.
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

Definition cmp_ind_universes {cf:checker_flags} (Σ : global_env_ext) ind n i i' :=
  cmp_global_instance Σ (compare_universe (global_ext_constraints Σ)) Cumul (IndRef ind) n i i'.

Inductive eq_decl_upto_names : context_decl -> context_decl -> Type :=
  | compare_vass {na na' T} :
    eq_binder_annot na na' -> eq_decl_upto_names (vass na T) (vass na' T)
  | compare_vdef {na na' b T} :
    eq_binder_annot na na' -> eq_decl_upto_names (vdef na b T) (vdef na' b T).

Notation eq_context_upto_names := (All2 eq_decl_upto_names).

Definition eq_predicate (eq_term : term -> term -> Type) eq_universe p p' :=
  All2 eq_term p.(pparams) p'.(pparams) ×
  cmp_universe_instance eq_universe p.(puinst) p'.(puinst) ×
  eq_context_upto_names p.(pcontext) p'.(pcontext) ×
  eq_term p.(preturn) p'.(preturn).

Definition eq_branch (eq_term : term -> term -> Type) br br' :=
  eq_context_upto_names br.(bcontext) br'.(bcontext) ×
  eq_term br.(bbody) br'.(bbody).

Definition eq_branches eq_term brs brs' := All2 (eq_branch eq_term) brs brs'.

Definition eq_mfixpoint (eq_term : term -> term -> Type) mfix mfix' :=
  All2 (fun d d' =>
    eq_term d.(dtype) d'.(dtype) ×
    eq_term d.(dbody) d'.(dbody) ×
    d.(rarg) = d'.(rarg) ×
    eq_binder_annot d.(dname) d'.(dname)
  ) mfix mfix'.

Reserved Notation " Σ ⊢ t <==[ Rle , napp ] u" (at level 50, t, u at next level,
  format "Σ  ⊢  t  <==[ Rle , napp ]  u").

Inductive eq_term_upto_univ_napp Σ
  (cmp_universe : conv_pb -> Universe.t -> Universe.t -> Prop)
  (cmp_sort : conv_pb -> sort -> sort -> Prop)
  (pb : conv_pb) (napp : nat) : term -> term -> Type :=
| eq_Rel : forall n,
    Σ ⊢ tRel n <==[ pb , napp ] tRel n

| eq_Evar : forall e args args',
    All2 (fun arg arg' => (Σ ⊢ arg <==[ Conv , 0 ] arg')) args args' ->
    Σ ⊢ tEvar e args <==[ pb , napp ] tEvar e args'

| eq_Var : forall id,
    Σ ⊢ tVar id <==[ pb , napp ] tVar id

| eq_Sort : forall s s',
    cmp_sort pb s s' ->
    Σ ⊢ tSort s  <==[ pb , napp ] tSort s'

| eq_App : forall t t' u u',
    Σ ⊢ t <==[ pb , S napp ] t' ->
    Σ ⊢ u <==[ Conv , 0 ] u' ->
    Σ ⊢ tApp t u <==[ pb , napp ] tApp t' u'

| eq_Const : forall c u u',
    cmp_universe_instance (cmp_universe Conv) u u' ->
    Σ ⊢ tConst c u <==[ pb , napp ] tConst c u'

| eq_Ind : forall i u u',
    cmp_global_instance Σ cmp_universe pb (IndRef i) napp u u' ->
    Σ ⊢ tInd i u <==[ pb , napp ] tInd i u'

| eq_Construct : forall i k u u',
    cmp_global_instance Σ cmp_universe pb (ConstructRef i k) napp u u' ->
    Σ ⊢ tConstruct i k u <==[ pb , napp ] tConstruct i k u'

| eq_Lambda : forall na na' ty ty' t t',
    eq_binder_annot na na' ->
    Σ ⊢ ty <==[ Conv , 0 ] ty' ->
    Σ ⊢ t <==[ Conv , 0 ] t' ->
    Σ ⊢ tLambda na ty t <==[ pb , napp ] tLambda na' ty' t'

| eq_Prod : forall na na' a a' b b',
    eq_binder_annot na na' ->
    Σ ⊢ a <==[ Conv , 0 ] a' ->
    Σ ⊢ b <==[ pb , 0 ] b' ->
    Σ ⊢ tProd na a b <==[ pb , napp ] tProd na' a' b'

| eq_LetIn : forall na na' t t' ty ty' u u',
    eq_binder_annot na na' ->
    Σ ⊢ t <==[ Conv , 0 ] t' ->
    Σ ⊢ ty <==[ Conv , 0 ] ty' ->
    Σ ⊢ u <==[ Conv , 0 ] u' ->
    Σ ⊢ tLetIn na t ty u <==[ pb , napp ] tLetIn na' t' ty' u'

| eq_Case : forall indn p p' c c' brs brs',
    eq_predicate (fun t t' => Σ ⊢ t <==[ Conv , 0 ] t') (cmp_universe Conv) p p' ->
    Σ ⊢ c <==[ Conv , 0 ] c' ->
    eq_branches (fun t t' => Σ ⊢ t <==[ Conv , 0 ] t') brs brs' ->
    Σ ⊢ tCase indn p c brs <==[ pb , napp ] tCase indn p' c' brs'

| eq_Proj : forall p c c',
    Σ ⊢ c <==[ Conv , 0 ] c' ->
    Σ ⊢ tProj p c <==[ pb , napp ] tProj p c'

| eq_Fix : forall mfix mfix' idx,
    eq_mfixpoint (fun t t' => Σ ⊢ t <==[ Conv , 0 ] t') mfix mfix' ->
    Σ ⊢ tFix mfix idx <==[ pb , napp ] tFix mfix' idx

| eq_CoFix : forall mfix mfix' idx,
    eq_mfixpoint (fun t t' => Σ ⊢ t <==[ Conv , 0 ] t') mfix mfix' ->
    Σ ⊢ tCoFix mfix idx <==[ pb , napp ] tCoFix mfix' idx

| eq_Prim i i' :
    onPrims (fun t t' => Σ ⊢ t <==[ Conv , 0 ] t') (cmp_universe Conv) i i' ->
    Σ ⊢ tPrim i <==[ pb , napp ] tPrim i'
where " Σ ⊢ t <==[ pb , napp ] u " := (eq_term_upto_univ_napp Σ _ _ pb napp t u) : type_scope.

Notation eq_term_upto_univ Σ cmp_universe cmp_sort pb := (eq_term_upto_univ_napp Σ cmp_universe cmp_sort pb 0) (only parsing).

Definition compare_term `{checker_flags} Σ φ (pb : conv_pb) (t u : term) :=
  eq_term_upto_univ Σ (compare_universe φ) (compare_sort φ) pb t u.
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
Import MetaRocq.PCUIC.utils.PCUICOnOne.
Import Equations.Type.Relation.

Reserved Notation " Σ ;;; Γ |- t ⇝ u " (at level 50, Γ, t, u at next level).

Definition set_array_default (ar : array_model term) (v : term) :=
  {| array_level := ar.(array_level);
     array_default := v;
     array_type := ar.(array_type);
     array_value := ar.(array_value) |}.

Definition set_array_type (ar : array_model term) (v : term) :=
  {| array_level := ar.(array_level);
     array_default := ar.(array_default);
     array_type := v;
     array_value := ar.(array_value) |}.

Definition set_array_value (ar : array_model term) (v : list term) :=
  {| array_level := ar.(array_level);
     array_default := ar.(array_default);
     array_type := ar.(array_type);
     array_value := v |}.

Inductive red1 (Σ : global_env) (Γ : context) : term -> term -> Type :=

| red_beta na t b a :
  Σ ;;; Γ |- tApp (tLambda na t b) a ⇝ b {0 := a}

| red_zeta na b t b' :
  Σ ;;; Γ |- tLetIn na b t b' ⇝ b' {0 := b}

| red_rel i body :
    option_map decl_body (nth_error Γ i) = Some (Some body) ->
    Σ ;;; Γ |- tRel i ⇝ lift0 (S i) body

| red_iota ci c u args p brs br :
    nth_error brs c = Some br ->
    #|args| = (ci.(ci_npar) + context_assumptions br.(bcontext))%nat ->
    Σ ;;; Γ |- tCase ci p (mkApps (tConstruct ci.(ci_ind) c u) args) brs
        ⇝ iota_red ci.(ci_npar) p args br

| red_fix mfix idx args narg fn :
    unfold_fix mfix idx = Some (narg, fn) ->
    is_constructor narg args = true ->
    Σ ;;; Γ |- mkApps (tFix mfix idx) args ⇝ mkApps fn args

| red_cofix_case ip p mfix idx args narg fn brs :
    unfold_cofix mfix idx = Some (narg, fn) ->
    Σ ;;; Γ |- tCase ip p (mkApps (tCoFix mfix idx) args) brs ⇝
         tCase ip p (mkApps fn args) brs

| red_cofix_proj p mfix idx args narg fn :
    unfold_cofix mfix idx = Some (narg, fn) ->
    Σ ;;; Γ |- tProj p (mkApps (tCoFix mfix idx) args) ⇝ tProj p (mkApps fn args)

| red_delta c decl body (isdecl : declared_constant Σ c decl) u :
    decl.(cst_body) = Some body ->
    Σ ;;; Γ |- tConst c u ⇝ subst_instance u body

| red_proj p args u arg:
    nth_error args (p.(proj_npars) + p.(proj_arg)) = Some arg ->
    Σ ;;; Γ |- tProj p (mkApps (tConstruct p.(proj_ind) 0 u) args) ⇝ arg

| abs_red_l na M M' N : Σ ;;; Γ |- M ⇝ M' -> Σ ;;; Γ |- tLambda na M N ⇝ tLambda na M' N
| abs_red_r na M M' N : Σ ;;; Γ ,, vass na N |- M ⇝ M' -> Σ ;;; Γ |- tLambda na N M ⇝ tLambda na N M'

| letin_red_def na b t b' r : Σ ;;; Γ |- b ⇝ r -> Σ ;;; Γ |- tLetIn na b t b' ⇝ tLetIn na r t b'
| letin_red_ty na b t b' r : Σ ;;; Γ |- t ⇝ r -> Σ ;;; Γ |- tLetIn na b t b' ⇝ tLetIn na b r b'
| letin_red_body na b t b' r : Σ ;;; Γ ,, vdef na b t |- b' ⇝ r -> Σ ;;; Γ |- tLetIn na b t b' ⇝ tLetIn na b t r

| case_red_param ci p params' c brs :
    OnOne2 (fun t u => Σ ;;; Γ |- t ⇝ u) p.(pparams) params' ->
    Σ ;;; Γ |- tCase ci p c brs ⇝ tCase ci (set_pparams p params') c brs

| case_red_return ci p preturn' c brs :
  Σ ;;; Γ ,,, inst_case_predicate_context p |- p.(preturn) ⇝ preturn' ->
  Σ ;;; Γ |- tCase ci p c brs ⇝ tCase ci (set_preturn p preturn') c brs

| case_red_discr ci p c c' brs :
  Σ ;;; Γ |- c ⇝ c' -> Σ ;;; Γ |- tCase ci p c brs ⇝ tCase ci p c' brs

| case_red_brs ci p c brs brs' :
    OnOne2 (fun br br' =>
      on_Trel_eq (fun t u => Σ ;;; Γ ,,, inst_case_branch_context p br |- t ⇝ u) bbody bcontext br br')
      brs brs' ->
    Σ ;;; Γ |- tCase ci p c brs ⇝ tCase ci p c brs'

| proj_red p c c' : Σ ;;; Γ |- c ⇝ c' -> Σ ;;; Γ |- tProj p c ⇝ tProj p c'

| app_red_l M1 N1 M2 : Σ ;;; Γ |- M1 ⇝ N1 -> Σ ;;; Γ |- tApp M1 M2 ⇝ tApp N1 M2
| app_red_r M2 N2 M1 : Σ ;;; Γ |- M2 ⇝ N2 -> Σ ;;; Γ |- tApp M1 M2 ⇝ tApp M1 N2

| prod_red_l na M1 M2 N1 : Σ ;;; Γ |- M1 ⇝ N1 -> Σ ;;; Γ |- tProd na M1 M2 ⇝ tProd na N1 M2
| prod_red_r na M2 N2 M1 : Σ ;;; Γ ,, vass na M1 |- M2 ⇝ N2 ->
                           Σ ;;; Γ |- tProd na M1 M2 ⇝ tProd na M1 N2

| evar_red ev l l' : OnOne2 (fun t u => Σ ;;; Γ |- t ⇝ u) l l' -> Σ ;;; Γ |- tEvar ev l ⇝ tEvar ev l'

| fix_red_ty mfix0 mfix1 idx :
    OnOne2 (on_Trel_eq (fun t u => Σ ;;; Γ |- t ⇝ u) dtype (fun x => (dname x, dbody x, rarg x))) mfix0 mfix1 ->
    Σ ;;; Γ |- tFix mfix0 idx ⇝ tFix mfix1 idx

| fix_red_body mfix0 mfix1 idx :
    OnOne2 (on_Trel_eq (fun t u => Σ ;;; Γ ,,, fix_context mfix0 |- t ⇝ u) dbody (fun x => (dname x, dtype x, rarg x)))
           mfix0 mfix1 ->
    Σ ;;; Γ |- tFix mfix0 idx ⇝ tFix mfix1 idx

| cofix_red_ty mfix0 mfix1 idx :
    OnOne2 (on_Trel_eq (fun t u => Σ ;;; Γ |- t ⇝ u) dtype (fun x => (dname x, dbody x, rarg x))) mfix0 mfix1 ->
    Σ ;;; Γ |- tCoFix mfix0 idx ⇝ tCoFix mfix1 idx

| cofix_red_body mfix0 mfix1 idx :
    OnOne2 (on_Trel_eq (fun t u => Σ ;;; Γ ,,, fix_context mfix0 |- t ⇝ u) dbody (fun x => (dname x, dtype x, rarg x))) mfix0 mfix1 ->
    Σ ;;; Γ |- tCoFix mfix0 idx ⇝ tCoFix mfix1 idx

| array_red_val arr value :
    OnOne2 (fun t u => Σ ;;; Γ |- t ⇝ u) arr.(array_value) value ->
    Σ ;;; Γ |- tPrim (primArray; primArrayModel arr) ⇝
               tPrim (primArray; primArrayModel (set_array_value arr value))

| array_red_def arr def :
    Σ ;;; Γ |- arr.(array_default) ⇝ def ->
    Σ ;;; Γ |- tPrim (primArray; primArrayModel arr) ⇝
               tPrim (primArray; primArrayModel (set_array_default arr def))

| array_red_type arr ty :
    Σ ;;; Γ |- arr.(array_type) ⇝ ty ->
    Σ ;;; Γ |- tPrim (primArray; primArrayModel arr) ⇝
          tPrim (primArray; primArrayModel (set_array_type arr ty))

where " Σ ;;; Γ |- t ⇝ u " := (red1 Σ Γ t u).

Definition red Σ Γ := clos_refl_trans (fun t u : term => Σ;;; Γ |- t ⇝ u).

Reserved Notation " Σ ;;; Γ |- t <=[ pb ] u" (at level 50, Γ, t, u at next level,
  format "Σ  ;;;  Γ  |-  t  <=[ pb ] u").

Notation " Σ ⊢ t <===[ pb ] u" := (compare_term Σ Σ pb t u) (at level 50, t, u at next level).

Inductive cumulAlgo_gen `{checker_flags} (Σ : global_env_ext) (Γ : context) (pb : conv_pb) : term -> term -> Type :=
| cumul_refl t u : Σ ⊢ t <===[ pb ] u -> Σ ;;; Γ |- t <=[pb] u
| cumul_red_l t u v : Σ ;;; Γ |- t ⇝ v -> Σ ;;; Γ |- v <=[pb] u -> Σ ;;; Γ |- t <=[pb] u
| cumul_red_r t u v : Σ ;;; Γ |- t <=[pb] v -> Σ ;;; Γ |- u ⇝ v -> Σ ;;; Γ |- t <=[pb] u
where " Σ ;;; Γ |- t <=[ pb ] u " := (cumulAlgo_gen Σ Γ pb t u) : type_scope.
Notation " Σ ;;; Γ |- t <= u " := (cumulAlgo_gen Σ Γ Cumul t u) (at level 50, Γ, t, u at next level) : type_scope.
Notation convAlgo Σ Γ := (cumulAlgo_gen Σ Γ Conv).

Module Export MetaRocq_DOT_PCUIC_DOT_PCUICTyping_WRAPPED.
Import MetaRocq.PCUIC.utils.PCUICAstUtils.
Import MetaRocq.PCUIC.utils.PCUICPrimitive.

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

Variant case_side_conditions `{checker_flags} wf_local_funΣ typingΣ Σ Γ ci p ps mdecl idecl indices predctx :=
| case_side_info
    (eq_npars : mdecl.(ind_npars) = ci.(ci_npar))
    (wf_pred : wf_predicate mdecl idecl p)
    (cons : consistent_instance_ext Σ (ind_universes mdecl) p.(puinst))
    (wf_pctx : wf_local_funΣ (Γ ,,, predctx))

    (conv_pctx : eq_context_upto_names p.(pcontext) (ind_predicate_context ci.(ci_ind) mdecl idecl))
    (allowed_elim : is_allowed_elimination Σ idecl.(ind_kelim) ps)
    (elim_relevance : isSortRel ps ci.(ci_relevance))
    (ind_inst : ctx_inst typingΣ Γ (p.(pparams) ++ indices)
                         (List.rev (subst_instance p.(puinst)
                                                   (ind_params mdecl ,,, ind_indices idecl : context))))
    (not_cofinite : isCoFinite mdecl.(ind_finite) = false).

Variant case_branch_typing `{checker_flags} wf_local_funΣ typingΣ Γ (ci:case_info) p ps mdecl idecl ptm  brs :=
| case_branch_info
    (wf_brs : wf_branches idecl brs)
    (brs_ty :
       All2i (fun i cdecl br =>

                eq_context_upto_names br.(bcontext) (cstr_branch_context ci mdecl cdecl) ×
                let brctxty := case_branch_type ci.(ci_ind) mdecl idecl p br ptm i cdecl in
                (wf_local_funΣ (Γ ,,, brctxty.1) ×
                ((typingΣ (Γ ,,, brctxty.1) br.(bbody) (brctxty.2)) ×
                (typingΣ (Γ ,,, brctxty.1) brctxty.2 (tSort ps)))))
             0 idecl.(ind_ctors) brs).

Variant primitive_typing_hyps `{checker_flags}
  (typingΣ : forall (Γ : context), term -> term -> Type)
  Σ Γ : prim_val term -> Type :=
| prim_int_hyps i : primitive_typing_hyps typingΣ Σ Γ (primInt; primIntModel i)
| prim_float_hyps f : primitive_typing_hyps typingΣ Σ Γ (primFloat; primFloatModel f)
| prim_string_hyps s : primitive_typing_hyps typingΣ Σ Γ (primString; primStringModel s)
| prim_array_hyps a
  (wfl : wf_universe Σ (Universe.make' a.(array_level)))
  (hty : typingΣ Γ a.(array_type) (tSort (sType (Universe.make' a.(array_level)))))
  (hdef : typingΣ Γ a.(array_default) a.(array_type))
  (hvalue : All (fun x => typingΣ Γ x a.(array_type)) a.(array_value)) :
  primitive_typing_hyps typingΣ Σ Γ (primArray; primArrayModel a).

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
    case_side_conditions (fun Γ => wf_local Σ Γ) (typing Σ) Σ Γ ci p ps
                         mdecl idecl indices predctx  ->
    case_branch_typing (fun Γ => wf_local Σ Γ) (typing Σ) Γ ci p ps
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
    primitive_typing_hyps (typing Σ) Σ Γ p ->
    Σ ;;; Γ |- tPrim p : prim_type p prim_ty

| type_Cumul : forall t A B s,
    Σ ;;; Γ |- t : A ->
    Σ ;;; Γ |- B : tSort s ->
    Σ ;;; Γ |- A <=s B ->
    Σ ;;; Γ |- t : B

where " Σ ;;; Γ |- t : T " := (typing Σ Γ t T)
and "'wf_local' Σ Γ " := (All_local_env (lift_typing1 (typing Σ)) Γ).

Module PCUICTypingDef <: EnvironmentTyping.Typing PCUICTerm PCUICEnvironment PCUICTermUtils PCUICEnvTyping PCUICConversion PCUICConversionParSpec.

  Definition typing := @typing.

End PCUICTypingDef.

Section CtxInstSize.
  Context {cf} (typing : global_env_ext -> context -> term -> term -> Type)
  (typing_size : forall {Σ Γ t T}, typing Σ Γ t T -> size).

  Fixpoint ctx_inst_size {Σ Γ args Δ} (c : ctx_inst (typing Σ) Γ args Δ) : size :=
  match c with
  | ctx_inst_nil => 0
  | ctx_inst_ass na t i inst Δ ty ctxi => (typing_size _ _ _ _ ty) + (ctx_inst_size ctxi)
  | ctx_inst_def na b t inst Δ ctxi => S (ctx_inst_size ctxi)
  end.
End CtxInstSize.

Section PrimitiveSize.
  Context {cf} (typing : global_env_ext -> context -> term -> term -> Type)
  (typing_size : forall {Σ Γ t T}, typing Σ Γ t T -> size).

  Definition primitive_typing_hyps_size Σ Γ p (h : primitive_typing_hyps (typing Σ) Σ Γ p) : size.
    destruct h.
    -
 exact 0.
    -
 exact 0.
    -
 exact 0.
    -
 exact (Nat.max (typing_size _ _ _ _ hty) (Nat.max (typing_size _ _ _ _ hdef)
        (all_size _ (fun x p => typing_size _ _ _ _ p) hvalue))).
  Defined.
End PrimitiveSize.

End MetaRocq_DOT_PCUIC_DOT_PCUICTyping_WRAPPED.

Implicit Types (cf : checker_flags) (Σ : global_env_ext) (Γ : context).

Reserved Notation " Σ ;;; Γ |- t ▹ T " (at level 50, Γ, t, T at next level).
Reserved Notation " Σ ;;; Γ |- t ▹□ u " (at level 50, Γ, t, u at next level).
Reserved Notation " Σ ;;; Γ |- t ▹Π ( na , A , B ) " (at level 50, Γ, t, na, A, B at next level).
Reserved Notation " Σ ;;; Γ |- t ▹{ ind } ( u , args )" (at level 50, Γ, t, ind, u, args at next level).
Reserved Notation " Σ ;;; Γ |- t ◃ T " (at level 50, Γ, t, T at next level).
Reserved Notation "'wf_local_bd' Σ Γ " (at level 9, Σ, Γ at next level).
Reserved Notation "'wf_local_bd_rel' Σ Γ Γ'" (at level 9, Σ, Γ, Γ' at next level).

Inductive infering `{checker_flags} (Σ : global_env_ext) (Γ : context) : term -> term -> Type :=
| infer_Rel n decl :
  nth_error Γ n = Some decl ->
  Σ ;;; Γ |- tRel n ▹ lift0 (S n) (decl_type decl)

| infer_Sort s :
  wf_sort Σ s ->
  Σ ;;; Γ |- tSort s ▹ tSort (Sort.super s)

| infer_Prod na A B s1 s2 :
  lift_sorting (checking Σ Γ) (infering_sort Σ Γ) (j_vass_s na A s1) ->
  Σ ;;; Γ ,, vass na A |- B ▹□ s2 ->
  Σ ;;; Γ |- tProd na A B ▹ tSort (Sort.sort_of_product s1 s2)

| infer_Lambda na A t B :
  lift_sorting (checking Σ Γ) (infering_sort Σ Γ) (j_vass na A) ->
  Σ ;;; Γ ,, vass na A |- t ▹ B ->
  Σ ;;; Γ |- tLambda na A t ▹ tProd na A B

| infer_LetIn na b B t A :
  lift_sorting (checking Σ Γ) (infering_sort Σ Γ) (j_vdef na b B) ->
  Σ ;;; Γ ,, vdef na b B |- t ▹ A ->
  Σ ;;; Γ |- tLetIn na b B t ▹ tLetIn na b B A

| infer_App t na A B u :
  Σ ;;; Γ |- t ▹Π (na,A,B) ->
  Σ ;;; Γ |- u ◃ A ->
  Σ ;;; Γ |- tApp t u ▹ B{0 := u}

| infer_Const cst u :
  forall decl (isdecl : declared_constant Σ.1 cst decl),
  consistent_instance_ext Σ (cst_universes decl) u ->
  Σ ;;; Γ |- tConst cst u ▹ subst_instance u (cst_type decl)

| infer_Ind ind u :
  forall mdecl idecl (isdecl : declared_inductive Σ.1 ind mdecl idecl),
  consistent_instance_ext Σ (ind_universes mdecl) u ->
  Σ ;;; Γ |- tInd ind u ▹ subst_instance u (ind_type idecl)

| infer_Construct ind i u :
  forall mdecl idecl cdecl (isdecl : declared_constructor Σ.1 (ind, i) mdecl idecl cdecl),
  consistent_instance_ext Σ (ind_universes mdecl) u ->
  Σ ;;; Γ |- tConstruct ind i u ▹ type_of_constructor mdecl cdecl (ind, i) u

| infer_Case ci p c brs args u ps mdecl idecl :
  let predctx := case_predicate_context ci.(ci_ind) mdecl idecl p in
  let ptm := it_mkLambda_or_LetIn predctx p.(preturn) in
  Σ ;;; Γ |- c ▹{ci} (u,args) ->
  declared_inductive Σ.1 ci.(ci_ind) mdecl idecl ->
  Σ ;;; Γ ,,, predctx |- p.(preturn) ▹□ ps ->

  mdecl.(ind_npars) = ci.(ci_npar) ->
  eq_context_upto_names p.(pcontext) (ind_predicate_context ci.(ci_ind) mdecl idecl) ->
  wf_predicate mdecl idecl p ->
  consistent_instance_ext Σ (ind_universes mdecl) (puinst p) ->
  wf_local_bd_rel Σ Γ predctx ->
  is_allowed_elimination Σ (ind_kelim idecl) ps ->
  isSortRel ps ci.(ci_relevance) ->
  ctx_inst (checking Σ) Γ (pparams p)
      (List.rev mdecl.(ind_params)@[p.(puinst)]) ->
  isCoFinite mdecl.(ind_finite) = false ->
  cmp_ind_universes Σ ci #|args| u (puinst p) ->
  All2 (convAlgo Σ Γ) (firstn (ci_npar ci) args) (pparams p) ->

  wf_branches idecl brs ->
  All2i (fun i cdecl br =>
    eq_context_upto_names br.(bcontext) (cstr_branch_context ci mdecl cdecl) ×
    let brctxty := case_branch_type ci.(ci_ind) mdecl idecl p br ptm i cdecl in
    wf_local_bd_rel Σ Γ brctxty.1 ×
    Σ ;;; Γ ,,, brctxty.1 |- br.(bbody) ◃ brctxty.2)
    0 idecl.(ind_ctors) brs ->
  Σ ;;; Γ |- tCase ci p c brs ▹ mkApps ptm (skipn ci.(ci_npar) args ++ [c])

| infer_Proj p c u mdecl idecl cdecl pdecl args :
  declared_projection Σ.1 p mdecl idecl cdecl pdecl ->
  Σ ;;; Γ |- c ▹{p.(proj_ind)} (u,args) ->
  #|args| = ind_npars mdecl ->
  Σ ;;; Γ |- tProj p c ▹ subst0 (c :: List.rev args) (subst_instance u pdecl.(proj_type))

| infer_Fix mfix n decl :
  fix_guard Σ Γ mfix ->
  nth_error mfix n = Some decl ->
  All (on_def_type (lift_sorting1 (checking Σ) (infering_sort Σ)) Γ) mfix ->
  All (on_def_body (lift_sorting1 (checking Σ) (infering_sort Σ)) (fix_context mfix) Γ) mfix ->
  wf_fixpoint Σ mfix ->
  Σ ;;; Γ |- tFix mfix n ▹ dtype decl

| infer_CoFix mfix n decl :
  cofix_guard Σ Γ mfix ->
  nth_error mfix n = Some decl ->
  All (on_def_type (lift_sorting1 (checking Σ) (infering_sort Σ)) Γ) mfix ->
  All (on_def_body (lift_sorting1 (checking Σ) (infering_sort Σ)) (fix_context mfix) Γ) mfix ->
  wf_cofixpoint Σ mfix ->
  Σ ;;; Γ |- tCoFix mfix n ▹ dtype decl

| infer_Prim p prim_ty cdecl :
   primitive_constant Σ (prim_val_tag p) = Some prim_ty ->
   declared_constant Σ prim_ty cdecl ->
   primitive_invariants (prim_val_tag p) cdecl ->
   primitive_typing_hyps (checking Σ) Σ Γ p ->
   Σ ;;; Γ |- tPrim p ▹ prim_type p prim_ty

with infering_sort `{checker_flags} (Σ : global_env_ext) (Γ : context) : term -> sort -> Type :=
| infer_sort_Sort t T u:
  Σ ;;; Γ |- t ▹ T ->
  red Σ Γ T (tSort u) ->
  Σ ;;; Γ |- t ▹□ u

with infering_prod `{checker_flags} (Σ : global_env_ext) (Γ : context) : term -> aname -> term -> term -> Type :=
| infer_prod_Prod t T na A B:
  Σ ;;; Γ |- t ▹ T ->
  red Σ Γ T (tProd na A B) ->
  Σ ;;; Γ |- t ▹Π (na,A,B)

with infering_indu `{checker_flags} (Σ : global_env_ext) (Γ : context) : inductive -> term -> Instance.t -> list term -> Type :=
| infer_ind_Ind ind t T u args:
  Σ ;;; Γ |- t ▹ T ->
  red Σ Γ T (mkApps (tInd ind u) args) ->
  Σ ;;; Γ |- t ▹{ind} (u,args)

with checking `{checker_flags} (Σ : global_env_ext) (Γ : context) : term -> term -> Type :=
| check_Cumul t T T':
  Σ ;;; Γ |- t ▹ T ->
  Σ ;;; Γ |- T <= T' ->
  Σ ;;; Γ |- t ◃ T'

where " Σ ;;; Γ |- t ▹ T " := (@infering _ Σ Γ t T) : type_scope
and " Σ ;;; Γ |- t ▹□ u " := (@infering_sort _ Σ Γ t u) : type_scope
and " Σ ;;; Γ |- t ▹Π ( na , A , B ) " := (@infering_prod _ Σ Γ t na A B) : type_scope
and " Σ ;;; Γ |- t ▹{ ind } ( u , args ) " := (@infering_indu _ Σ Γ ind t u args) : type_scope
and " Σ ;;; Γ |- t ◃ T " := (@checking _ Σ Γ t T) : type_scope
and "'wf_local_bd' Σ Γ" := (All_local_env (lift_sorting1 (checking Σ) (infering_sort Σ)) Γ)
and "'wf_local_bd_rel' Σ Γ Γ'" := (All_local_rel (lift_sorting1 (checking Σ) (infering_sort Σ)) Γ Γ').

Definition tybranches {cf} Σ Γ ci mdecl idecl p ptm n ctors brs :=
  All2i
  (fun (i : nat) (cdecl : constructor_body) (br : branch term) =>
    (eq_context_upto_names br.(bcontext) (cstr_branch_context ci mdecl cdecl)) ×
    let brctxty := case_branch_type ci mdecl idecl p br ptm i cdecl in
    (wf_local_bd_rel Σ Γ brctxty.1) ×
    Σ;;; Γ,,, brctxty.1 |- bbody br ◃ brctxty.2)
  n ctors brs.
Definition branches_size {cf} {Σ Γ ci mdecl idecl p ptm brs}
   (checking_size : forall Σ Γ t T, Σ ;;; Γ |- t ◃ T  -> size)
   (infering_size : forall Σ Γ t s, Σ ;;; Γ |- t ▹□ s -> size)
  {n ctors}
  (a : tybranches Σ Γ ci mdecl idecl p ptm n ctors brs) : size.
admit.
Defined.

Fixpoint infering_size `{checker_flags} {Σ Γ t T} (d : Σ ;;; Γ |- t ▹ T) {struct d} : size
with infering_sort_size `{checker_flags} {Σ Γ t u} (d : Σ ;;; Γ |- t ▹□ u) {struct d} : size
with infering_prod_size `{checker_flags} {Σ Γ t na A B} (d : Σ ;;; Γ |- t ▹Π (na, A,B)) {struct d} : size
with infering_indu_size `{checker_flags} {Σ Γ ind t ui args} (d : Σ ;;; Γ |- t ▹{ind} (ui,args)) {struct d} : size
with checking_size `{checker_flags} {Σ Γ t T} (d : Σ ;;; Γ |- t ◃ T) {struct d} : size.
Proof.
  all: destruct d ;
    repeat lazymatch goal with
          | H : infering _ _ _ _ |- _ => apply infering_size in H
          | H : infering_sort _ _ _ _ |- _ => apply infering_sort_size in H
          | H : infering_prod _ _ _ _ _ _ |- _ => apply infering_prod_size in H
          | H : infering_indu _ _ _ _ _ _ |- _ => apply infering_indu_size in H
          | H : checking _ _ _ _ |- _ => apply checking_size in H
          | H : wf_local_bd _ _ |- _ => apply (All_local_env_sorting_size _ _ (checking_size _ _) (infering_sort_size _ _) _) in H
          | H : wf_local_bd_rel _ _ _ |- _ => apply (All_local_rel_sorting_size (checking_size _ _) (infering_sort_size _ _) _) in H
          | H : primitive_typing_hyps _ _ _ _ |- _ => apply (primitive_typing_hyps_size _ (checking_size _)) in H
          end ;
    match goal with
    | H : lift_sorting _ _ _, H' : size |- _ => exact (S (Nat.max H' (lift_sorting_size (checking_size _ _ _) (infering_sort_size _ _ _) _ H)))
    | H : All2i _ _ _ _ |- _ => idtac
    | H : All _ _ |- _ => idtac
    | H1 : size, H2 : size, H3 : size |- _ => exact (S (Nat.max H1 (Nat.max H2 H3)))
    | H1 : size, H2 : size |- _ => exact (S (Nat.max H1 H2))
    | H1 : size |- _  => exact (S H1)
    | |- _ => exact 1
    end.
    -
 exact (S (Nat.max a0 (Nat.max i (Nat.max i0 (Nat.max (ctx_inst_size _ (checking_size _) c1) (branches_size (checking_size _) (infering_sort_size _) a2)))))).
    -
 exact (S (Nat.max
        (all_size _ (fun x p => on_def_type_sorting_size (infering_sort_size _ Σ) _ _ p) a)
        (all_size (on_def_body _ _ _) (fun x p => on_def_body_sorting_size (checking_size _ _) (infering_sort_size _ Σ) _ _ _ p) a0))).
    -
 exact (S (Nat.max
        (all_size _ (fun x p => on_def_type_sorting_size (infering_sort_size _ Σ) _ _ p) a)
        (all_size (on_def_body _ _ _) (fun x p => on_def_body_sorting_size (checking_size _ _) (infering_sort_size _ Σ) _ _ _ p) a0))).
  Defined.
