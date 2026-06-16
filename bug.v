
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-quiet" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/utils/theories" "MetaRocq.Utils" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/common/theories" "MetaRocq.Common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/pcuic/theories" "MetaRocq.PCUIC" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq/theories" "MetaRocq.Template" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/safechecker-plugin/theories" "MetaRocq.SafeCheckerPlugin" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-pcuic/theories" "MetaRocq.TemplatePCUIC" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/safechecker/theories" "MetaRocq.SafeChecker" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/erasure/theories" "MetaRocq.Erasure" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/erasure-plugin/theories" "MetaRocq.ErasurePlugin" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/test-suite" "MetaRocq.TestSuite" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Equations" "Equations" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/ExtLib" "ExtLib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/erasure-plugin/src" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/safechecker-plugin/src" "-top" "MetaRocq.TestSuite.reduction_test") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 126 lines to 7 lines, then from 21 lines to 439 lines, then from 446 lines to 9 lines, then from 23 lines to 734 lines, then from 738 lines to 133 lines, then from 147 lines to 666 lines, then from 671 lines to 195 lines, then from 209 lines to 850 lines, then from 856 lines to 266 lines, then from 280 lines to 740 lines, then from 746 lines to 286 lines, then from 300 lines to 1536 lines, then from 1541 lines to 605 lines, then from 619 lines to 2320 lines, then from 2325 lines to 719 lines, then from 733 lines to 3851 lines, then from 3817 lines to 1078 lines, then from 1092 lines to 2288 lines, then from 2291 lines to 1623 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 2.135 sec
   Expected coqc peak memory usage on this file: 705008.0 kb *)









Require Corelib.BinNums.PosDef.
Require Corelib.Lists.ListDef.
Require Corelib.Init.Sumbool.
Require Corelib.Setoids.Setoid.
Require Corelib.Numbers.BinNums.
Require Corelib.Program.Basics.
Require Corelib.Program.Tactics.
Require Corelib.ssr.ssreflect.
Require Corelib.BinNums.NatDef.
Require Corelib.BinNums.IntDef.
Require Corelib.Numbers.Cyclic.Int63.CarryType.
Require Corelib.Numbers.Cyclic.Int63.PrimInt63.
Require Corelib.Strings.PrimString.
Require Corelib.Init.Wf.
Require Corelib.Init.Decimal.
Require Corelib.Floats.FloatOps.
Require Corelib.Init.Byte.
Require Corelib.Init.Ltac.
Require Corelib.Classes.RelationClasses.
Require Corelib.Classes.CRelationClasses.
Require Corelib.extraction.Extraction.
Require Corelib.ssr.ssrbool.
Require Corelib.Numbers.Cyclic.Int63.Uint63Axioms.
Require Corelib.Classes.Morphisms.
Require Corelib.Numbers.Cyclic.Int63.Sint63Axioms.
Require Corelib.Floats.PrimFloat.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Program.Utils.
Require Corelib.Program.Wf.
Require Corelib.Floats.SpecFloat.
Require Corelib.Init.Nat.
Require Corelib.Strings.PrimStringAxioms.
Require ExtLib.Core.Any.
Require ExtLib.Structures.BinOps.
Require MetaRocq.TestSuite.hott_example.
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
Require ExtLib.Structures.Functor.
Require ExtLib.Structures.Monoid.
Require Ltac2.Init.
Require MetaRocq.Utils.MRTactics.UniquePose.
Require Stdlib.BinNums.IntDef.
Require Stdlib.BinNums.NatDef.
Require Stdlib.BinNums.PosDef.
Require Stdlib.Classes.CRelationClasses.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Floats.SpecFloat.
Require Stdlib.Floats.PrimFloat.
Require Stdlib.Floats.FloatOps.
Require Stdlib.Init.Wf.
Require Stdlib.Init.Decimal.
Require Stdlib.Init.Nat.
Require Stdlib.Init.Sumbool.
Require Stdlib.Init.Byte.
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
Require Stdlib.ssr.ssreflect.
Require Stdlib.ssr.ssrbool.
Require Equations.Prop.SigmaNotations.
Require Equations.Signature.
Require ExtLib.Structures.Applicative.
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
Require ExtLib.Structures.Monad.
Require Ltac2.Control.
Require MetaRocq.Utils.MRTactics.GeneralizeOverHoles.
Require Stdlib.Program.Combinators.
Require Stdlib.Relations.Operators_Properties.
Require Stdlib.Wellfounded.Disjoint_Union.
Require Stdlib.Wellfounded.Transitive_Closure.
Require ExtLib.Structures.MonadCont.
Require ExtLib.Structures.MonadExc.
Require ExtLib.Structures.MonadFix.
Require ExtLib.Structures.MonadPlus.
Require ExtLib.Structures.MonadReader.
Require ExtLib.Structures.MonadState.
Require ExtLib.Structures.MonadTrans.
Require ExtLib.Structures.MonadZero.
Require Stdlib.PArith.BinPosDef.
Require Stdlib.Relations.Relations.
Require Stdlib.Wellfounded.Union.
Require Equations.Type.Logic.
Require Ltac2.Ltac1.
Require Stdlib.Program.Equality.
Require Equations.Prop.Logic.
Require Equations.Type.Relation.
Require ExtLib.Structures.MonadWriter.
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
Require ExtLib.Structures.Monads.
Require Stdlib.Structures.Orders.
Require ExtLib.Data.Monads.OptionMonad.
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
Require Stdlib.omega.OmegaLemmas.
Require Stdlib.setoid_ring.Ncring_initial.
Require Stdlib.setoid_ring.Ring_base.
Require Stdlib.micromega.ZifyInst.
Require Stdlib.setoid_ring.Ncring_tac.
Require Stdlib.setoid_ring.Ring.
Require Stdlib.ZArith.ZArith_dec.
Require Stdlib.micromega.OrderedRing.
Require Stdlib.micromega.Zify.
Require Stdlib.setoid_ring.NArithRing.
Require Stdlib.setoid_ring.ZArithRing.
Require Stdlib.ZArith.Wf_Z.
Require Stdlib.micromega.ZifyBool.
Require Stdlib.omega.PreOmega.
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
Require MetaRocq.Utils.MRMSets.
Require MetaRocq.Utils.monad_utils.
Require MetaRocq.Utils.Show.
Require MetaRocq.Utils.MRUtils.
Require MetaRocq.Utils.utils.
Require MetaRocq.Utils.MRFSets.
Require MetaRocq.Common.Kernames.

Module Export AdmitTactic.
Module Import LocalFalse.
Inductive False : Prop := .
End LocalFalse.
Axiom proof_admitted : False.
Import Coq.Init.Ltac.
Tactic Notation "admit" := abstract case proof_admitted.
End AdmitTactic.

Module Export MetaRocq_DOT_Common_DOT_BasicAst_WRAPPED.
Module Export BasicAst.
Import Stdlib.ssr.ssreflect.
Import Stdlib.Classes.Morphisms.
Import Stdlib.Structures.Orders.
Import Stdlib.Setoids.Setoid.
Import MetaRocq.Utils.utils.
Export MetaRocq.Common.Kernames.
Import Equations.Prop.Equations.


Inductive name : Set :=
| nAnon
| nNamed (_ : ident).
Derive NoConfusion EqDec for name.

Inductive relevance : Set := Relevant | Irrelevant.
Derive NoConfusion EqDec for relevance.


Record binder_annot (A : Type) := mkBindAnn { binder_name : A; binder_relevance : relevance }.


Arguments mkBindAnn {_}.
Arguments binder_name {_}.
Arguments binder_relevance {_}.

Derive NoConfusion for binder_annot.

#[global] Instance eqdec_binder_annot (A : Type) (e : Classes.EqDec A) : Classes.EqDec (binder_annot A).
Admitted.

Definition map_binder_annot {A B} (f : A -> B) (b : binder_annot A) : binder_annot B :=
  {| binder_name := f b.(binder_name); binder_relevance := b.(binder_relevance) |}.

Definition eq_binder_annot {A B} (b : binder_annot A) (b' : binder_annot B) : Prop :=
  b.(binder_relevance) = b'.(binder_relevance).


Definition aname := binder_annot name.
#[global] Instance anqme_eqdec : Classes.EqDec aname := _.

Definition eqb_binder_annot {A} (b b' : binder_annot A) : bool :=
  match Classes.eq_dec b.(binder_relevance) b'.(binder_relevance) with
  | left _ => true
  | right _ => false
  end.

Definition string_of_name (na : name) :=
  match na with
  | nAnon => "_"
  | nNamed n => n
  end.

Definition string_of_relevance (r : relevance) :=
  match r with
  | Relevant => "Relevant"
  | Irrelevant => "Irrelevant"
  end.


Inductive cast_kind : Set :=
| VmCast
| NativeCast
| Cast.
Derive NoConfusion EqDec for cast_kind.

Record case_info := mk_case_info {
  ci_ind : inductive;
  ci_npar : nat;
  
  ci_relevance : relevance }.
Derive NoConfusion EqDec for case_info.

Definition string_of_case_info ci :=
  "(" ^ string_of_inductive ci.(ci_ind) ^ "," ^
  string_of_nat ci.(ci_npar) ^ "," ^
  
  string_of_relevance ci.(ci_relevance) ^ ")".

Inductive recursivity_kind :=
  | Finite 
  | CoFinite 
  | BiFinite .
Derive NoConfusion EqDec for recursivity_kind.


Inductive conv_pb :=
  | Conv
  | Cumul.
Derive NoConfusion EqDec for conv_pb.

Definition conv_pb_leqb (pb1 pb2 : conv_pb) : bool
  := match pb1, pb2 with
     | Cumul, Conv => false
     | _, _ => true
     end.


Definition fresh_evar_id : nat.
Admitted.


Record def term := mkdef {
  dname : aname; 
  dtype : term;
  dbody : term; 
  rarg  : nat   }.

Arguments dname {term} _.
Arguments dtype {term} _.
Arguments dbody {term} _.
Arguments rarg {term} _.


Derive NoConfusion for def.

Definition map_def {A B} (tyf bodyf : A -> B) (d : def A) :=
  {| dname := d.(dname); dtype := tyf d.(dtype); dbody := bodyf d.(dbody); rarg := d.(rarg) |}.

Definition mfixpoint term := list (def term).

Definition test_def {A} (tyf bodyf : A -> bool) (d : def A) :=
  tyf d.(dtype) && bodyf d.(dbody).

Section Contexts.
  Context {term : Type}.
  

  Record context_decl := mkdecl {
    decl_name : aname ;
    decl_body : option term ;
    decl_type : term
  }.
End Contexts.


Arguments context_decl : clear implicits.

Section ContextMap.
End ContextMap.

Section ContextTest.
End ContextTest.

Section ContextTestK.
End ContextTestK.

Section Contexts.

End Contexts.

Section Contexts.

End Contexts.

End BasicAst.
Module Export MetaRocq.
Module Export Common.
Module Export BasicAst.
Include MetaRocq_DOT_Common_DOT_BasicAst_WRAPPED.BasicAst.
End BasicAst.

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

Module Export PropLevel.

End PropLevel.

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

Module NonEmptySetFacts.
  Definition singleton (e : LevelExpr.t) : nonEmptyLevelExprSet
    := {| t_set := LevelExprSet.singleton e;
          t_ne := eq_refl |}.

  Program Definition add (e : LevelExpr.t) (u : nonEmptyLevelExprSet) : nonEmptyLevelExprSet
    := {| t_set := LevelExprSet.add e u |}.
Admit Obligations.

  Definition add_list : list LevelExpr.t -> nonEmptyLevelExprSet -> nonEmptyLevelExprSet
    := List.fold_left (fun u e => add e u).

  Program Definition to_nonempty_list (u : nonEmptyLevelExprSet) : LevelExpr.t * list LevelExpr.t
    := match LevelExprSet.elements u with
       | [] => False_rect _ _
       | e :: l => (e, l)
       end.
Admit Obligations.

  Definition map (f : LevelExpr.t -> LevelExpr.t) (u : nonEmptyLevelExprSet) : nonEmptyLevelExprSet :=
    let '(e, l) := to_nonempty_list u in
    add_list (List.map f l) (singleton (f e)).

End NonEmptySetFacts.
Import NonEmptySetFacts.

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

  Section GeneralLemmas.

  End GeneralLemmas.

Inductive allowed_eliminations : Set :=
  | IntoSProp
  | IntoPropSProp
  | IntoSetPropSProp
  | IntoAny.

Section UnivCF2.

End UnivCF2.

Section UniverseLemmas.
End UniverseLemmas.

Section no_prop_leq_type.

End no_prop_leq_type.

Class UnivSubst A := subst_instance : Instance.t -> A -> A.

#[global] Instance subst_instance_level : UnivSubst Level.t :=
  fun u l => match l with
            Level.lzero | Level.level     _ => l
          | Level.lvar n => List.nth n u Level.lzero
          end.

#[global] Instance subst_instance_level_expr : UnivSubst LevelExpr.t :=
  fun u e => match e with
          | (Level.lzero, _)
          | (Level.level     _, _) => e
          | (Level.lvar n, b) =>
            match nth_error u n with
            | Some l => (l,b)
            | None => (Level.lzero, b)
            end
          end.

#[global] Instance subst_instance_universe : UnivSubst Universe.t :=
  fun u => map (subst_instance_level_expr u).

#[global] Instance subst_instance_sort : UnivSubst Sort.t :=
  fun u e => match e with
          | sProp | sSProp => e
          | sType u' => sType (subst_instance u u')
          end.

#[global] Instance subst_instance_instance : UnivSubst Instance.t :=
  fun u u' => List.map (subst_instance_level u) u'.

Section Closedu.
End Closedu.

Section UniverseClosedSubst.

End UniverseClosedSubst.

Section SubstInstanceClosed.
End SubstInstanceClosed.

Inductive universes_entry :=
| Monomorphic_entry
| Polymorphic_entry (ctx : UContext.t).

End Universes.
Module Export MetaRocq.
Module Export Common.
Module Export Universes.
Include MetaRocq_DOT_Common_DOT_Universes_WRAPPED.Universes.
End Universes.

Module Export MetaRocq_DOT_Common_DOT_Environment_WRAPPED.
Module Export Environment.
Import MetaRocq.Common.BasicAst.

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
Import MetaRocq.Utils.utils.
Export MetaRocq.Common.Universes.
Export MetaRocq.Common.BasicAst.

Record predicate {term} := mk_predicate {
  puinst : Instance.t;
  pparams : list term;
  pcontext : list aname;
  preturn : term;  }.

Arguments predicate : clear implicits.

Definition test_predicate {term}
            (instf : Instance.t -> bool) (paramf preturnf : term -> bool) (p : predicate term) :=
  instf p.(puinst) && forallb paramf p.(pparams) && preturnf p.(preturn).

Section map_predicate.
  Context {term term' : Type}.
  Context (uf : Instance.t -> Instance.t).
  Context (paramf preturnf : term -> term').

  Definition map_predicate (p : predicate term) :=
    {| pparams := map paramf p.(pparams);
        puinst := uf p.(puinst);
        pcontext := p.(pcontext);
        preturn := preturnf p.(preturn) |}.

End map_predicate.

Section map_predicate_k.

End map_predicate_k.

Section Branch.
  Context {term : Type}.

  Record branch := mk_branch {
    bcontext : list aname;
    bbody : term;  }.

  Definition test_branch (bodyf : term -> bool) (b : branch) :=
    bodyf b.(bbody).
End Branch.
Arguments branch : clear implicits.

Section map_branch.
  Context {term term' : Type}.
  Context (bbodyf : term -> term').

    Definition map_branch (b : branch term) :=
    {| bcontext := b.(bcontext);
      bbody := bbodyf b.(bbody) |}.
End map_branch.

Abbreviation map_branches_k f k brs :=
  (List.map (fun b => map_branch (f (#|b.(bcontext)| + k)) b) brs).

Abbreviation test_branches_k test k brs :=
  (List.forallb (fun b => test_branch (test (#|b.(bcontext)| + k)) b) brs).

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

Definition mkApps t us :=
  match us with
  | nil => t
  | _ => match t with
        | tApp f args => tApp f (args ++ us)
        | _ => tApp t us
        end
  end.

Fixpoint lift n k t : term :=
  match t with
  | tRel i => tRel (if Nat.leb k i then n + i else i)
  | tEvar ev args => tEvar ev (List.map (lift n k) args)
  | tLambda na T M => tLambda na (lift n k T) (lift n (S k) M)
  | tApp u v => tApp (lift n k u) (List.map (lift n k) v)
  | tProd na A B => tProd na (lift n k A) (lift n (S k) B)
  | tCast c kind t => tCast (lift n k c) kind (lift n k t)
  | tLetIn na b t b' => tLetIn na (lift n k b) (lift n k t) (lift n (S k) b')
  | tCase ind p c brs =>
    let k' := List.length (pcontext p) + k in
    let p' := map_predicate id (lift n k) (lift n k') p in
    let brs' := map_branches_k (lift n) k brs in
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
  | tArray u arr def ty =>
    tArray u (List.map (lift n k) arr) (lift n k def) (lift n k ty)
  | x => x
  end.

Abbreviation lift0 n := (lift n 0).

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
  | tApp u v => mkApps (subst s k u) (List.map (subst s k) v)
  | tProd na A B => tProd na (subst s k A) (subst s (S k) B)
  | tCast c kind ty => tCast (subst s k c) kind (subst s k ty)
  | tLetIn na b ty b' => tLetIn na (subst s k b) (subst s k ty) (subst s (S k) b')
  | tCase ind p c brs =>
    let k' := List.length (pcontext p) + k in
    let p' := map_predicate id (subst s k) (subst s k') p in
    let brs' := map_branches_k (subst s) k brs in
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
  | tArray u arr def ty =>
    tArray u (List.map (subst s k) arr) (subst s k def) (subst s k ty)
  | x => x
  end.

Fixpoint closedn k (t : term) : bool :=
  match t with
  | tRel i => Nat.ltb i k
  | tEvar ev args => List.forallb (closedn k) args
  | tLambda _ T M | tProd _ T M => closedn k T && closedn (S k) M
  | tApp u v => closedn k u && List.forallb (closedn k) v
  | tCast c kind t => closedn k c && closedn k t
  | tLetIn na b t b' => closedn k b && closedn k t && closedn (S k) b'
  | tCase ind p c brs =>
    let k' := List.length (pcontext p) + k in
    let p' := test_predicate (fun _ => true) (closedn k) (closedn k') p in
    let brs' := test_branches_k closedn k brs in
    p' && closedn k c && brs'
  | tProj p c => closedn k c
  | tFix mfix idx =>
    let k' := List.length mfix + k in
    List.forallb (test_def (closedn k) (closedn k')) mfix
  | tCoFix mfix idx =>
    let k' := List.length mfix + k in
    List.forallb (test_def (closedn k) (closedn k')) mfix
  | tArray u arr def ty =>
    List.forallb (closedn k) arr && closedn k def && closedn k ty
  | _ => true
  end.

Fixpoint noccur_between k n (t : term) : bool :=
  match t with
  | tRel i => Nat.ltb i k || Nat.leb (k + n) i
  | tEvar ev args => List.forallb (noccur_between k n) args
  | tLambda _ T M | tProd _ T M => noccur_between k n T && noccur_between (S k) n M
  | tApp u v => noccur_between k n u && List.forallb (noccur_between k n) v
  | tCast c kind t => noccur_between k n c && noccur_between k n t
  | tLetIn na b t b' => noccur_between k n b && noccur_between k n t && noccur_between (S k) n b'
  | tCase ind p c brs =>
    let k' := List.length (pcontext p) + k in
    let p' := test_predicate (fun _ => true) (noccur_between k n) (noccur_between k' n) p in
    let brs' := test_branches_k (fun k => noccur_between k n) k brs in
    p' && noccur_between k n c && brs'
  | tProj p c => noccur_between k n c
  | tFix mfix idx =>
    let k' := List.length mfix + k in
    List.forallb (test_def (noccur_between k n) (noccur_between k' n)) mfix
  | tCoFix mfix idx =>
    let k' := List.length mfix + k in
    List.forallb (test_def (noccur_between k n) (noccur_between k' n)) mfix
  | tArray u arr def ty =>
    List.forallb (noccur_between k n) arr &&
    noccur_between k n def && noccur_between k n ty
  | _ => true
  end.

#[global] Instance subst_instance_constr : UnivSubst term :=
  fix subst_instance_constr u c {struct c} : term :=
  match c with
  | tRel _ | tVar _ => c
  | tInt _ | tFloat _ | tString _ => c
  | tArray u' arr def ty => tArray (subst_instance_level u u') (List.map (subst_instance_constr u) arr)
    (subst_instance_constr u def) (subst_instance_constr u ty)
  | tEvar ev args => tEvar ev (List.map (subst_instance_constr u) args)
  | tSort s => tSort (subst_instance_sort u s)
  | tConst c u' => tConst c (subst_instance_instance u u')
  | tInd i u' => tInd i (subst_instance_instance u u')
  | tConstruct ind k u' => tConstruct ind k (subst_instance_instance u u')
  | tLambda na T M => tLambda na (subst_instance_constr u T) (subst_instance_constr u M)
  | tApp f v => tApp (subst_instance_constr u f) (List.map (subst_instance_constr u) v)
  | tProd na A B => tProd na (subst_instance_constr u A) (subst_instance_constr u B)
  | tCast c kind ty => tCast (subst_instance_constr u c) kind (subst_instance_constr u ty)
  | tLetIn na b ty b' => tLetIn na (subst_instance_constr u b) (subst_instance_constr u ty)
                                (subst_instance_constr u b')
  | tCase ind p c brs =>
    let p' := map_predicate (subst_instance_instance u) (subst_instance_constr u) (subst_instance_constr u) p in
    let brs' := List.map (map_branch (subst_instance_constr u)) brs in
    tCase ind p' (subst_instance_constr u c) brs'
  | tProj p c => tProj p (subst_instance_constr u c)
  | tFix mfix idx =>
    let mfix' := List.map (map_def (subst_instance_constr u) (subst_instance_constr u)) mfix in
    tFix mfix' idx
  | tCoFix mfix idx =>
    let mfix' := List.map (map_def (subst_instance_constr u) (subst_instance_constr u)) mfix in
    tCoFix mfix' idx
  end.

Module TemplateTerm <: Term.

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
Module Export MetaRocq_DOT_Template_DOT_Ast.
Module Export MetaRocq.
Module Export Template.
Module Export Ast.
Include MetaRocq_DOT_Template_DOT_Ast_WRAPPED.Ast.
End Ast.

End Template.

End MetaRocq.

End MetaRocq_DOT_Template_DOT_Ast.

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
Module Export MetaRocq.
Module Export Template.
Module Export TemplateMonad.
Module Export Common.
End Common.

Module Export MetaRocq_DOT_Template_DOT_TemplateMonad_DOT_Core_WRAPPED.
Module Export Core.

Import MetaRocq.Utils.utils.
Import MetaRocq.Template.Ast.

Local Set Universe Polymorphism.
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
Import MetaRocq.Template.Ast.
Import MetaRocq.Template.TemplateMonad.Common.

Local Set Universe Polymorphism.

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
