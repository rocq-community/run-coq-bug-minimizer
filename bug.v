
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/utils/theories" "MetaRocq.Utils" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/common/theories" "MetaRocq.Common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/pcuic/theories" "MetaRocq.PCUIC" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Equations" "Equations" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/ExtLib" "ExtLib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 4603 lines to 39 lines, then from 53 lines to 39 lines, then from 52 lines to 39 lines, then from 51 lines to 3774 lines, then from 3773 lines to 46 lines, then from 58 lines to 2403 lines, then from 2409 lines to 57 lines, then from 69 lines to 995 lines, then from 1000 lines to 81 lines, then from 93 lines to 2645 lines, then from 2646 lines to 213 lines, then from 225 lines to 90 lines, then from 104 lines to 1099 lines, then from 1098 lines to 139 lines, then from 153 lines to 1878 lines, then from 1885 lines to 430 lines, then from 444 lines to 1595 lines, then from 1601 lines to 598 lines, then from 612 lines to 2689 lines, then from 2690 lines to 619 lines, then from 633 lines to 1387 lines, then from 1388 lines to 641 lines, then from 655 lines to 3123 lines, then from 3125 lines to 716 lines, then from 730 lines to 1577 lines, then from 1582 lines to 1230 lines, then from 1240 lines to 765 lines, then from 779 lines to 2311 lines, then from 2312 lines to 795 lines, then from 809 lines to 2691 lines, then from 2694 lines to 1082 lines, then from 1096 lines to 1769 lines, then from 1775 lines to 1159 lines, then from 1173 lines to 4005 lines, then from 4004 lines to 1740 lines, then from 1760 lines to 1667 lines, then from 1679 lines to 3380 lines, then from 3385 lines to 1962 lines, then from 1974 lines to 2798 lines, then from 2802 lines to 1968 lines, then from 1979 lines to 5097 lines, then from 5063 lines to 2392 lines, then from 2404 lines to 3600 lines, then from 3603 lines to 3403 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 2.590 sec
   Expected coqc peak memory usage on this file: 1264540.0 kb *)









Require Corelib.Init.Hexadecimal.
Require Corelib.Program.Wf.
Require Corelib.Lists.ListDef.
Require Corelib.Floats.FloatOps.
Require Corelib.Init.Ltac.
Require Corelib.BinNums.IntDef.
Require Corelib.Numbers.BinNums.
Require Corelib.Program.Tactics.
Require Corelib.Numbers.Cyclic.Int63.PrimInt63.
Require Corelib.Strings.PrimString.
Require Corelib.Program.Basics.
Require Corelib.extraction.Extraction.
Require Corelib.BinNums.NatDef.
Require Corelib.ssr.ssrbool.
Require Corelib.Numbers.Cyclic.Int63.Uint63Axioms.
Require Corelib.Classes.Morphisms.
Require Corelib.ssr.ssreflect.
Require Corelib.Init.Nat.
Require Corelib.Init.Decimal.
Require Corelib.Numbers.Cyclic.Int63.CarryType.
Require Corelib.Strings.PrimStringAxioms.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Classes.RelationClasses.
Require Corelib.Program.Utils.
Require Corelib.Init.Byte.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Numbers.Cyclic.Int63.Sint63Axioms.
Require Corelib.Floats.SpecFloat.
Require Corelib.Floats.PrimFloat.
Require Corelib.Init.Sumbool.
Require Corelib.Init.Wf.
Require Corelib.Setoids.Setoid.
Require Corelib.BinNums.PosDef.
Require Corelib.Classes.CRelationClasses.
Require ExtLib.Core.Any.
Require ExtLib.Structures.BinOps.
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
Require Stdlib.BinNums.PosDef.
Require Stdlib.BinNums.NatDef.
Require Stdlib.Classes.CRelationClasses.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Floats.FloatOps.
Require Stdlib.Floats.SpecFloat.
Require Stdlib.Floats.PrimFloat.
Require Stdlib.Init.Hexadecimal.
Require Stdlib.Init.Byte.
Require Stdlib.Init.Sumbool.
Require Stdlib.Init.Decimal.
Require Stdlib.Init.Wf.
Require Stdlib.Init.Nat.
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
Require MetaRocq.Utils.MRMSets.
Require MetaRocq.Utils.monad_utils.
Require MetaRocq.Common.Primitive.
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

Module MetaRocq_DOT_Common_DOT_BasicAst_WRAPPED.
Module Export BasicAst.

Import Stdlib.ssr.ssreflect Stdlib.Classes.Morphisms Stdlib.Structures.Orders Stdlib.Setoids.Setoid.
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
#[global] Instance def_eq_dec {A} : Classes.EqDec A -> Classes.EqDec (def A).
Admitted.

Definition string_of_def {A} (f : A -> string) (def : def A) :=
  "(" ^ string_of_name (binder_name (dname def))
      ^ "," ^ string_of_relevance (binder_relevance (dname def))
      ^ "," ^ f (dtype def)
      ^ "," ^ f (dbody def)
      ^ "," ^ string_of_nat (rarg def) ^ ")".

Definition print_def {A} (f : A -> string) (g : A -> string) (def : def A) :=
  string_of_name (binder_name (dname def)) ^ " { struct " ^ string_of_nat (rarg def) ^ " }" ^
                 " : " ^ f (dtype def) ^ " := " ^ nl ^ g (dbody def).

Definition map_def {A B} (tyf bodyf : A -> B) (d : def A) :=
  {| dname := d.(dname); dtype := tyf d.(dtype); dbody := bodyf d.(dbody); rarg := d.(rarg) |}.

Lemma map_dtype {A B} (f : A -> B) (g : A -> B) (d : def A) :
  f (dtype d) = dtype (map_def f g d).
Admitted.

Lemma map_dbody {A B} (f : A -> B) (g : A -> B) (d : def A) :
  g (dbody d) = dbody (map_def f g d).
Admitted.

Lemma map_dname {A B} (f : A -> B) (g : A -> B) (d : def A) :
  dname d = dname (map_def f g d).
Admitted.

Definition mfixpoint term := list (def term).

Definition test_def {A} (tyf bodyf : A -> bool) (d : def A) :=
  tyf d.(dtype) && bodyf d.(dbody).

Definition tFixProp {A} (P P' : A -> Type) (m : mfixpoint A) :=
  All (fun x : def A => P x.(dtype) * P' x.(dbody))%type m.

Lemma map_def_map_def {A B C} (f f' : B -> C) (g g' : A -> B) (d : def A) :
  map_def f f' (map_def g g' d) = map_def (f ∘ g) (f' ∘ g') d.
Admitted.

Lemma compose_map_def {A B C} (f f' : B -> C) (g g' : A -> B) :
  (map_def f f') ∘ (map_def g g') = map_def (f ∘ g) (f' ∘ g').
Admitted.

Lemma map_def_id {t} x : map_def (@id t) (@id t) x = id x.
Admitted.

Create Rewrite HintDb map.
#[global] Hint Rewrite @map_def_id @map_id : map.

Lemma map_def_spec {A B} (P P' : A -> Type) (f f' g g' : A -> B) (x : def A) :
  P' x.(dbody) -> P x.(dtype) -> (forall x, P x -> f x = g x) ->
  (forall x, P' x -> f' x = g' x) ->
  map_def f f' x = map_def g g' x.
Admitted.

Create HintDb all.
#[global] Hint Extern 10 (_ < _)%nat => lia : all.
#[global] Hint Extern 10 (_ <= _)%nat => lia : all.
#[global] Hint Extern 10 (@eq nat _ _) => lia : all.
#[global] Hint Extern 0 (_ = _) => progress f_equal : all.
#[global] Hint Unfold on_snd snd : all.

Lemma on_snd_eq_id_spec {A B} (f : B -> B) (x : A * B) :
  f (snd x) = snd x <->
  on_snd f x = x.
Admitted.
#[global] Hint Resolve -> on_snd_eq_id_spec : all.
#[global] Hint Resolve -> on_snd_eq_spec : all.

Lemma map_def_eq_spec {A B} (f f' g g' : A -> B) (x : def A) :
  f (dtype x) = g (dtype x) ->
  f' (dbody x) = g' (dbody x) ->
  map_def f f' x = map_def g g' x.
Admitted.
#[global] Hint Resolve map_def_eq_spec : all.

Lemma map_def_id_spec {A} (f f' : A -> A) (x : def A) :
  f (dtype x) = (dtype x) ->
  f' (dbody x) = (dbody x) ->
  map_def f f' x = x.
Admitted.
#[global] Hint Resolve map_def_id_spec : all.

Lemma tfix_map_spec {A B} {P P' : A -> Type} {l} {f f' g g' : A -> B} :
  tFixProp P P' l -> (forall x, P x -> f x = g x) ->
  (forall x, P' x -> f' x = g' x) ->
  map (map_def f f') l = map (map_def g g') l.
Admitted.

Record judgment_ {universe Term} := Judge {
  j_term : option Term;
  j_typ : Term;
  j_univ : option universe;
  j_rel : option relevance;
}.
Arguments judgment_ : clear implicits.
Arguments Judge {universe Term} _ _ _.


Definition judgment_map {univ T A} (f: T -> A) (j : judgment_ univ T) :=
  Judge (option_map f (j_term j)) (f (j_typ j)) (j_univ j) (j_rel j).

Section Contexts.
  Context {term : Type}.
  

  Record context_decl := mkdecl {
    decl_name : aname ;
    decl_body : option term ;
    decl_type : term
  }.
  Derive NoConfusion for context_decl.
End Contexts.


Arguments context_decl : clear implicits.

Abbreviation Typ typ := (Judge None typ None None).
Abbreviation TypRel typ rel := (Judge None typ None (Some rel)).
Abbreviation TermTyp tm ty := (Judge (Some tm) ty None None).
Abbreviation TermTypRel tm ty rel := (Judge (Some tm) ty None (Some rel)).
Abbreviation TermoptTyp tm typ := (Judge tm typ None None).
Abbreviation TermoptTypRel tm typ rel := (Judge tm typ None (Some rel)).
Abbreviation TypUniv ty u := (Judge None ty (Some u) None).
Abbreviation TypUnivRel ty u rel := (Judge None ty (Some u) (Some rel)).
Abbreviation TermTypUniv tm ty u := (Judge (Some tm) ty (Some u) None).

Abbreviation j_vass na ty := (TypRel ty na.(binder_relevance)).
Abbreviation j_vass_s na ty s := (TypUnivRel ty s na.(binder_relevance)).
Abbreviation j_vdef na b ty := (TermTypRel b ty na.(binder_relevance)).
Abbreviation j_decl d := (TermoptTypRel (decl_body d) (decl_type d) (decl_name d).(binder_relevance)).
Abbreviation j_decl_s d s := (Judge (decl_body d) (decl_type d) s (Some (decl_name d).(binder_relevance))).

Definition map_decl {term term'} (f : term -> term') (d : context_decl term) : context_decl term' :=
  {| decl_name := d.(decl_name);
     decl_body := option_map f d.(decl_body);
     decl_type := f d.(decl_type) |}.

Lemma compose_map_decl {term term' term''} (g : term -> term') (f : term' -> term'') x :
  map_decl f (map_decl g x) = map_decl (f ∘ g) x.
Admitted.

Lemma map_decl_ext {term term'} (f g : term -> term') x : (forall x, f x = g x) -> map_decl f x = map_decl g x.
Admitted.

#[global] Instance map_decl_proper {term term'} : Proper (`=1` ==> Logic.eq ==> Logic.eq) (@map_decl term term').
Admitted.

#[global] Instance map_decl_pointwise {term term'} : Proper (`=1` ==> `=1`) (@map_decl term term').
Admitted.


Definition map_context {term term'} (f : term -> term') (c : list (context_decl term)) :=
  List.map (map_decl f) c.

#[global] Instance map_context_proper {term term'} : Proper (`=1` ==> Logic.eq ==> Logic.eq) (@map_context term term').
Admitted.

Lemma map_context_length {term term'} (f : term -> term') l : #|map_context f l| = #|l|.
Admitted.
#[global] Hint Rewrite @map_context_length : len.

Definition test_decl {term} (f : term -> bool) (d : context_decl term) : bool :=
  option_default f d.(decl_body) true && f d.(decl_type).

#[global] Instance test_decl_proper {term} : Proper (`=1` ==> Logic.eq ==> Logic.eq) (@test_decl term).
Admitted.

Definition snoc {A} (Γ : list A) (d : A) := d :: Γ.

Notation " Γ ,, d " := (snoc Γ d) (at level 20, d at next level).

Definition app_context {A} (Γ Γ': list A) := Γ' ++ Γ.

Notation "Γ ,,, Γ'" := (app_context Γ Γ') (at level 25, Γ' at next level, left associativity).

Lemma app_context_nil_l {T} Γ : [] ,,, Γ = Γ :> list T.
Admitted.

Lemma app_context_assoc {T} Γ Γ' Γ'' : Γ ,,, (Γ' ,,, Γ'') = Γ ,,, Γ' ,,, Γ'' :> list T.
Admitted.

Lemma app_context_cons {T} Γ Γ' A : Γ ,,, (Γ' ,, A) = (Γ ,,, Γ') ,, A :> list T.
Admitted.

Lemma app_context_push {T} Γ Δ Δ' d : (Γ ,,, Δ ,,, Δ') ,, d = (Γ ,,, Δ ,,, (Δ' ,, d)) :> list T.
Admitted.

Lemma snoc_app_context {T Γ Δ d} : (Γ ,,, (d :: Δ)) =  (Γ ,,, Δ) ,,, [d] :> list T.
Admitted.

Lemma app_context_length {T} (Γ Γ' : list T) : #|Γ ,,, Γ'| = #|Γ'| + #|Γ|.
Admitted.
#[global] Hint Rewrite @app_context_length : len.

Lemma nth_error_app_context_ge {T} v Γ Γ' :
  #|Γ'| <= v -> nth_error (Γ ,,, Γ') v = nth_error Γ (v - #|Γ'|) :> option T.
Admitted.

Lemma nth_error_app_context_lt {T} v Γ Γ' :
  v < #|Γ'| -> nth_error (Γ ,,, Γ') v = nth_error Γ' v :> option T.
Admitted.

Definition ondecl {A} (P : A -> Type) (d : context_decl A) :=
  option_default P d.(decl_body) unit × P d.(decl_type).

Abbreviation onctx P := (All (ondecl P)).

Section ContextMap.
  Context {term term' : Type} (f : nat -> term -> term').

  Fixpoint mapi_context (c : list (context_decl term)) : list (context_decl term') :=
    match c with
    | d :: Γ => map_decl (f #|Γ|) d :: mapi_context Γ
    | [] => []
  end.
End ContextMap.

#[global] Instance mapi_context_proper {term term'} : Proper (`=2` ==> Logic.eq ==> Logic.eq) (@mapi_context term term').
Admitted.

Lemma mapi_context_length {term} (f : nat -> term -> term) l : #|mapi_context f l| = #|l|.
Admitted.
#[global] Hint Rewrite @mapi_context_length : len.

Section ContextTest.
  Context {term : Type} (f : term -> bool).

  Fixpoint test_context (c : list (context_decl term)) : bool :=
    match c with
    | d :: Γ => test_context Γ && test_decl f d
    | [] => true
    end.
End ContextTest.

#[global] Instance test_context_proper {term} : Proper (`=1` ==> Logic.eq ==> Logic.eq) (@test_context term).
Admitted.

Section ContextTestK.
  Context {term : Type} (f : nat -> term -> bool) (k : nat).

  Fixpoint test_context_k (c : list (context_decl term)) : bool :=
    match c with
    | d :: Γ => test_context_k Γ && test_decl (f (#|Γ| + k)) d
    | [] => true
    end.
End ContextTestK.

#[global] Instance test_context_k_proper {term} : Proper (`=1` ==> Logic.eq ==> Logic.eq ==> Logic.eq) (@test_context_k term).
Admitted.

Section Contexts.
  Context {term term' term'' : Type}.
  Abbreviation context term := (list (context_decl term)).

  Lemma test_decl_impl (f g : term -> bool) x : (forall x, f x -> g x) ->
    test_decl f x -> test_decl g x.
Admitted.

  Definition onctx_k (P : nat -> term -> Type) k (ctx : context term) :=
    Alli (fun i d => ondecl (P (Nat.pred #|ctx| - i + k)) d) 0 ctx.

  Lemma ondeclP {P : term -> Type} {p : term -> bool} {d : context_decl term} :
    (forall x, reflectT (P x) (p x)) ->
    reflectT (ondecl P d) (test_decl p d).
Admitted.

  Lemma onctxP {p : term -> bool} {ctx : context term} :
    reflectT (onctx p ctx) (test_context p ctx).
Admitted.

  Lemma map_decl_type (f : term -> term') decl : f (decl_type decl) = decl_type (map_decl f decl).
Admitted.

  Lemma map_decl_body (f : term -> term') decl : option_map f (decl_body decl) = decl_body (map_decl f decl).
Admitted.

  Lemma map_decl_id : @map_decl term term id =1 id.
Admitted.

  Lemma option_map_decl_body_map_decl (f : term -> term') x :
    option_map decl_body (option_map (map_decl f) x) =
    option_map (option_map f) (option_map decl_body x).
Admitted.

  Lemma option_map_decl_type_map_decl (f : term -> term') x :
    option_map decl_type (option_map (map_decl f) x) =
    option_map f (option_map decl_type x).
Admitted.

  Definition fold_context_k (f : nat -> term -> term') Γ :=
    List.rev (mapi (fun k' decl => map_decl (f k') decl) (List.rev Γ)).

  Arguments fold_context_k f Γ%_list_scope.

  Lemma fold_context_k_alt f Γ :
    fold_context_k f Γ =
    mapi (fun k' d => map_decl (f (Nat.pred (length Γ) - k')) d) Γ.
Admitted.

  Lemma mapi_context_fold f Γ :
    mapi_context f Γ = fold_context_k f Γ.
Admitted.

  Lemma fold_context_k_tip f d : fold_context_k f [d] = [map_decl (f 0) d].
Admitted.

  Lemma fold_context_k_length f Γ : length (fold_context_k f Γ) = length Γ.
Admitted.

  Lemma fold_context_k_snoc0 f Γ d :
    fold_context_k f (d :: Γ) = fold_context_k f Γ ,, map_decl (f (length Γ)) d.
Admitted.

  Lemma fold_context_k_app f Γ Δ :
    fold_context_k f (Δ ++ Γ)
    = fold_context_k (fun k => f (length Γ + k)) Δ ++ fold_context_k f Γ.
Admitted.

  Local Set Keyed Unification.

  Equations mapi_context_In (ctx : context term) (f : nat -> forall (x : context_decl term), In x ctx -> context_decl term) : context term :=
  mapi_context_In nil _ := nil;
  mapi_context_In (cons x xs) f := cons (f #|xs| x _) (mapi_context_In xs (fun n x H => f n x _)).

  Lemma mapi_context_In_spec (f : nat -> term -> term) (ctx : context term) :
    mapi_context_In ctx (fun n (x : context_decl term) (_ : In x ctx) => map_decl (f n) x) =
    mapi_context f ctx.
Admitted.

  Equations fold_context_In (ctx : context term) (f : context term -> forall (x : context_decl term), In x ctx -> context_decl term) : context term :=
  fold_context_In nil _ := nil;
  fold_context_In (cons x xs) f :=
    let xs' := fold_context_In xs (fun n x H => f n x _) in
    cons (f xs' x _) xs'.

  Equations fold_context (f : context term -> context_decl term -> context_decl term) (ctx : context term) : context term :=
    fold_context f nil := nil;
    fold_context f (cons x xs) :=
      let xs' := fold_context f xs in
      cons (f xs' x ) xs'.

  Lemma fold_context_length f Γ : #|fold_context f Γ| = #|Γ|.
Admitted.

  Lemma fold_context_In_spec (f : context term -> context_decl term -> context_decl term) (ctx : context term) :
    fold_context_In ctx (fun n (x : context_decl term) (_ : In x ctx) => f n x) =
    fold_context f ctx.
Admitted.

  #[global]
  Instance fold_context_Proper : Proper (`=2` ==> `=1`) fold_context.
Admitted.

  
  Definition forget_types (c : list (BasicAst.context_decl term)) : list aname :=
    map decl_name c.

End Contexts.
#[global] Hint Rewrite @fold_context_length @fold_context_k_length : len.

Section Contexts.
  Context {term term' term'' : Type}.
  Abbreviation context term := (list (context_decl term)).

  Lemma fold_context_k_id (x : context term) : fold_context_k (fun i x => x) x = x.
Admitted.

  Lemma fold_context_k_compose (f : nat -> term' -> term) (g : nat -> term'' -> term') Γ :
    fold_context_k f (fold_context_k g Γ) =
    fold_context_k (fun i => f i ∘ g i) Γ.
Admitted.

  Lemma fold_context_k_ext (f g : nat -> term' -> term) Γ :
    f =2 g ->
    fold_context_k f Γ = fold_context_k g Γ.
Admitted.

  #[global] Instance fold_context_k_proper : Proper (pointwise_relation nat (pointwise_relation _ Logic.eq) ==> Logic.eq ==> Logic.eq)
    (@fold_context_k term' term).
Admitted.

  Lemma alli_fold_context_k_prop (f : nat -> context_decl term -> bool) (g : nat -> term' -> term) ctx :
    alli f 0 (fold_context_k g ctx) =
    alli (fun i x => f i (map_decl (g (Nat.pred #|ctx| - i)) x)) 0 ctx.
Admitted.

  Lemma test_decl_map_decl f g x : (@test_decl term) f (map_decl g x) = @test_decl term (f ∘ g) x.
Admitted.

  Lemma map_fold_context_k (f : term' -> term) (g : nat -> term'' -> term') ctx :
    map (map_decl f) (fold_context_k g ctx) = fold_context_k (fun i => f ∘ g i) ctx.
Admitted.

  Lemma map_context_mapi_context (f : term' -> term) (g : nat -> term'' -> term') (ctx : list (BasicAst.context_decl term'')) :
    map_context f (mapi_context g ctx) =
    mapi_context (fun i => f ∘ g i) ctx.
Admitted.

  Lemma mapi_context_map (f : nat -> term' -> term) (g : context_decl term'' -> context_decl term') ctx :
    mapi_context f (map g ctx) = mapi (fun i => map_decl (f (Nat.pred #|ctx| - i)) ∘ g) ctx.
Admitted.

  Lemma map_context_map (f : term' -> term) (g : context_decl term'' -> context_decl term') ctx :
    map_context f (map g ctx) = map (map_decl f ∘ g) ctx.
Admitted.

  Lemma map_map_context (f : context_decl term' -> term) (g : term'' -> term') ctx :
    map f (map_context g ctx) = map (f ∘ map_decl g) ctx.
Admitted.

  Lemma fold_context_k_map (f : nat -> term' -> term) (g : term'' -> term') Γ :
    fold_context_k f (map_context g Γ) =
    fold_context_k (fun k => f k ∘ g) Γ.
Admitted.

  Lemma fold_context_k_map_comm (f : nat -> term -> term) (g : term -> term) Γ :
    (forall i x, f i (g x) = g (f i x)) ->
    fold_context_k f (map_context g Γ) = map_context g (fold_context_k f Γ).
Admitted.

  Lemma mapi_context_map_context (f : nat -> term' -> term) (g : term'' -> term') ctx :
    mapi_context f (map_context g ctx) =
    mapi_context (fun i => f i ∘ g) ctx.
Admitted.

  Lemma map_mapi_context (f : context_decl term' -> term) (g : nat -> term'' -> term') ctx :
    map f (mapi_context g ctx) = mapi (fun i => f ∘ map_decl (g (Nat.pred #|ctx| - i))) ctx.
Admitted.

  Lemma map_context_id (ctx : context term) : map_context id ctx = ctx.
Admitted.

  Lemma forget_types_length (ctx : list (context_decl term)) :
    #|forget_types ctx| = #|ctx|.
Admitted.

  Lemma map_decl_name_fold_context_k (f : nat -> term' -> term) ctx :
    map decl_name (fold_context_k f ctx) = map decl_name ctx.
Admitted.

  Lemma forget_types_fold_context_k (f : nat -> term' -> term) ctx :
    forget_types (fold_context_k f ctx) = forget_types ctx.
Admitted.

  Lemma All2_fold_impl_onctx (P : context term -> context term -> context_decl term -> context_decl term -> Type) P' Γ Δ Q :
    onctx Q Γ ->
    All2_fold P Γ Δ ->
    (forall Γ Δ d d',
      All2_fold P Γ Δ ->
      P Γ Δ d d' ->
      ondecl Q d ->
      P' Γ Δ d d') ->
    All2_fold P' Γ Δ.
Admitted.

  Lemma All2_fold_mapi (P : context term -> context term -> context_decl term -> context_decl term -> Type) (Γ Δ : context term) f g :
    All2_fold (fun Γ Δ d d' =>
      P (mapi_context f Γ) (mapi_context g Δ) (map_decl (f #|Γ|) d) (map_decl (g #|Γ|) d')) Γ Δ
    <~> All2_fold P (mapi_context f Γ) (mapi_context g Δ).
Admitted.

  Lemma All2_fold_map {P : context term -> context term -> context_decl term -> context_decl term -> Type} {Γ Δ : context term} f g :
    All2_fold (fun Γ Δ d d' =>
      P (map_context f Γ) (map_context g Δ) (map_decl f d) (map_decl g d')) Γ Δ <~>
    All2_fold P (map_context f Γ) (map_context g Δ).
Admitted.

  Lemma All2_fold_cst_map {P : context_decl term -> context_decl term -> Type} {Γ Δ : context term} {f g} :
    All2_fold (fun _ _ d d' => P (f d) (g d')) Γ Δ <~>
    All2_fold (fun _ _ => P) (map f Γ) (map g Δ).
Admitted.

End Contexts.

#[global] Hint Rewrite @map_mapi_context
  @map_fold_context_k @mapi_context_map @map_context_map @map_map_context
  @mapi_context_map_context @map_context_mapi_context : map.
#[global] Hint Rewrite @forget_types_length : len.




Definition uint_size := 63.
Definition uint_wB := (2 ^ (Z.of_nat uint_size))%Z.
Definition uint63_model := { z : Z | ((0 <=? z) && (z <? uint_wB))%Z }.

Definition string_of_uint63_model (i : uint63_model) := string_of_Z (proj1_sig i).


Definition prec := 53%Z.
Definition emax := 1024%Z.

Definition float64_model := sig (SpecFloat.valid_binary prec emax).

End BasicAst.

End MetaRocq_DOT_Common_DOT_BasicAst_WRAPPED.
Module Export MetaRocq_DOT_Common_DOT_BasicAst.
Module Export MetaRocq.
Module Export Common.
Module Export BasicAst.
Include MetaRocq_DOT_Common_DOT_BasicAst_WRAPPED.BasicAst.
End BasicAst.

End Common.

End MetaRocq.

End MetaRocq_DOT_Common_DOT_BasicAst.
Module Export Universes.
Import Stdlib.MSets.MSetList.
Import MetaRocq.Utils.utils.
Import MetaRocq.Common.BasicAst.
Import MetaRocq.Common.config.

Implicit Types (cf : checker_flags).

Record valuation :=
  { valuation_mono : string -> positive ;
    valuation_poly : nat -> nat }.

Class Evaluable (A : Type) := val : valuation -> A -> nat.

Module Level.
  Inductive t_ : Set :=
  | lzero
  | level (_ : string)
  | lvar (_ : nat) .

  Definition t := t_.
Global Instance Evaluable : Evaluable t.
Admitted.
Definition compare (l1 l2 : t) : comparison.
Admitted.
Definition eq : t -> t -> Prop.
exact (eq).
Defined.
Definition eq_equiv : Equivalence eq.
Admitted.

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
Definition eq_dec : forall (l1 l2 : t), {l1 = l2}+{l1 <> l2}.
Admitted.

End Level.

Module LevelSet := MSetAVL.Make Level.

Module LevelExpr.
  Definition t := (Level.t * nat)%type.
Definition get_level (e : t) : Level.t.
Admitted.
Definition eq : t -> t -> Prop.
exact (eq).
Defined.
Definition eq_equiv : Equivalence eq.
Admitted.

  Inductive lt_ : t -> t -> Prop :=
  | ltLevelExpr1 l n n' : (n < n')%nat -> lt_ (l, n) (l, n')
  | ltLevelExpr2 l l' b b' : Level.lt l l' -> lt_ (l, b) (l', b').

  Definition lt := lt_.

  Global Instance lt_strorder : StrictOrder lt.
Admitted.

  Definition lt_compat : Proper (Logic.eq ==> Logic.eq ==> iff) lt.
Admitted.
Definition compare (x y : t) : comparison.
Admitted.

  Definition compare_spec :
    forall x y : t, CompareSpec (x = y) (lt x y) (lt y x) (compare x y).
Admitted.
Definition eq_dec : forall (l1 l2 : t), {l1 = l2} + {l1 <> l2}.
Admitted.
Definition eq_leibniz (x y : t) : eq x y -> x = y.
Admitted.

End LevelExpr.

Module LevelExprSet := MSetList.MakeWithLeibniz LevelExpr.

Record nonEmptyLevelExprSet
  := { t_set : LevelExprSet.t ;
       t_ne  : LevelExprSet.is_empty t_set = false }.

Coercion t_set : nonEmptyLevelExprSet >-> LevelExprSet.t.

Module Export Universe.

  Definition t := nonEmptyLevelExprSet.
Definition make' (l: Level.t) : t.
Admitted.
Global Instance Evaluable : Evaluable Universe.t.
Admitted.
Definition lt : t -> t -> Prop.
Admitted.
End Universe.

Module Export ConstraintType.
  Inductive t_ : Set := Le (z : Z) | Eq.

  Definition t := t_.

  Inductive lt_ : t -> t -> Prop :=
  | LeLe n m : (n < m)%Z -> lt_ (Le n) (Le m)
  | LeEq n : lt_ (Le n) Eq.
  Definition lt := lt_.
End ConstraintType.

Module UnivConstraint.
Definition t : Set.
exact (Level.t * ConstraintType.t * Level.t).
Defined.
Definition eq : t -> t -> Prop.
Admitted.
Definition eq_equiv : Equivalence eq.
Admitted.

  Inductive lt_ : t -> t -> Prop :=
  | lt_Level2 l1 t l2 l2' : Level.lt l2 l2' -> lt_ (l1, t, l2) (l1, t, l2')
  | lt_Cstr l1 t t' l2 l2' : ConstraintType.lt t t' -> lt_ (l1, t, l2) (l1, t', l2')
  | lt_Level1 l1 l1' t t' l2 l2' : Level.lt l1 l1' -> lt_ (l1, t, l2) (l1', t', l2').
  Definition lt := lt_.

  Lemma lt_strorder : StrictOrder lt.
Admitted.

  Lemma lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.
Definition compare : t -> t -> comparison.
Admitted.

  Lemma compare_spec x y
    : CompareSpec (eq x y) (lt x y) (lt y x) (compare x y).
Admitted.

  Lemma eq_dec x y : {eq x y} + {~ eq x y}.
Admitted.
End UnivConstraint.

Module ConstraintSet := MSetAVL.Make UnivConstraint.

Definition declared_cstr_levels levels (cstr : UnivConstraint.t) :=
  let '(l1,_,l2) := cstr in
  LevelSet.In l1 levels /\ LevelSet.In l2 levels.

Module Export Instance.
Definition t : Set.
exact (list Level.t).
Defined.
Definition empty : t.
Admitted.
End Instance.

Module Export UContext.
  Definition t := list name × (Instance.t × ConstraintSet.t).
Definition instance : t -> Instance.t.
Admitted.
End UContext.

Module Export AUContext.
  Definition t := list name × ConstraintSet.t.
Definition repr (x : t) : UContext.t.
Admitted.
Definition levels (uctx : t) : LevelSet.t.
Admitted.
End AUContext.

Module Export ContextSet.
  Definition t := LevelSet.t × ConstraintSet.t.
Definition Subset (x y : t) : Prop.
Admitted.
End ContextSet.
Infix "⊂_cs" := ContextSet.Subset (at level 30).

Module Variance.

  Inductive t :=
  | Irrelevant : t
  | Covariant : t
  | Invariant : t.

End Variance.

Variant opt_variance :=
  AllEqual | AllIrrelevant | Variance of list Variance.t.

Inductive universes_decl : Type :=
| Monomorphic_ctx
| Polymorphic_ctx (cst : AUContext.t).

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

Inductive satisfies0 (v : valuation) : UnivConstraint.t -> Prop :=
| satisfies0_Lt (l l' : Level.t) (z : Z) : (Z.of_nat (val v l) <= Z.of_nat (val v l') - z)%Z
                        -> satisfies0 v (l, ConstraintType.Le z, l')
| satisfies0_Eq (l l' : Level.t) : val v l = val v l'
                        -> satisfies0 v (l, ConstraintType.Eq, l').

Definition satisfies v : ConstraintSet.t -> Prop :=
  ConstraintSet.For_all (satisfies0 v).

Definition leq0_universe_n n φ (u u' : Universe.t) :=
  forall v, satisfies v φ -> (Z.of_nat (val v u) <= Z.of_nat (val v u') - n)%Z.

Definition leq_universe_n {cf} n φ (u u' : Universe.t) :=
  if check_univs then leq0_universe_n n φ u u' else True.
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

Section Univ.

End Univ.

Module Export Sort.
  Inductive t_ {univ} :=
    sProp | sSProp | sType (_ : univ).
  Arguments t_ : clear implicits.

  Definition t := t_ Universe.t.

  Inductive family : Set :=
  | fSProp
  | fProp
  | fType.

  Definition on_sort {univ} {T} (P: univ -> T) (def: T) (s : t_ univ) :=
    match s with
    | sProp | sSProp => def
    | sType l => P l
    end.
Definition is_sprop {univ} (s : t_ univ) : bool.
Admitted.
Definition is_propositional {univ} (s : t_ univ) : bool.
Admitted.
Definition type0 : t.
Admitted.
Definition super : t -> t.
Admitted.
Definition sort_of_product : t -> t -> t.
Admitted.

  Definition to_family {univ} (s : t_ univ) :=
    match s with
    | sSProp => fSProp
    | sProp => fProp
    | sType _ => fType
    end.

  Inductive lt_ {univ univ_lt} : t_ univ -> t_ univ -> Prop :=
  | ltPropSProp : lt_ sProp sSProp
  | ltPropType s : lt_ sProp (sType s)
  | ltSPropType s : lt_ sSProp (sType s)
  | ltTypeType s1 s2 : univ_lt s1 s2 -> lt_ (sType s1) (sType s2).
  Arguments lt_ {univ} univ_lt.

  Definition lt := lt_ Universe.lt.

  Module OT <: OrderedType.
    Definition t := t.
#[local] Definition eq : t -> t -> Prop.
exact (eq).
Defined.
#[local] Definition eq_equiv : Equivalence eq.
Admitted.
    Definition lt := lt.
    #[local] Instance lt_strorder : StrictOrder lt.
Admitted.

    Definition lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.
Definition compare (x y : t) : comparison.
Admitted.
    Lemma compare_spec x y : CompareSpec (eq x y) (lt x y) (lt y x) (compare x y).
Admitted.
    Definition eq_dec (x y : t) : {x = y} + {x <> y}.
Admitted.
  End OT.
End Sort.
Abbreviation sort := Sort.t.

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
  Definition leq_sort := leq_sort_n 0.

  Definition eq_sort_ {univ} (eq_universe : univ -> univ -> Prop) s s' : Prop :=
    match s, s' with
    | sProp,   sProp
    | sSProp,  sSProp => True
    | sType u, sType u' => eq_universe u u'
    | _, _ => False
    end.

  Definition eq_sort φ := eq_sort_ (eq_universe φ).

  Definition compare_sort φ (pb : conv_pb) :=
    match pb with
    | Conv => eq_sort φ
    | Cumul => leq_sort φ
    end.

  Section GeneralLemmas.

  End GeneralLemmas.
End SortCompare.

Definition relevance_of_family (s : Sort.family) :=
  match s with
  | Sort.fSProp => Irrelevant
  | _ => Relevant
  end.

Abbreviation rel_of_Type := (relevance_of_family Sort.fType).
Abbreviation relevance_of_sort s := (relevance_of_family (Sort.to_family s)).

Abbreviation isSortRel s rel := (relevance_of_sort s = rel).
Abbreviation isSortRelOpt s relopt :=
  (option_default (fun rel => isSortRel s rel) relopt True).

Inductive allowed_eliminations : Set :=
  | IntoSProp
  | IntoPropSProp
  | IntoSetPropSProp
  | IntoAny.

Definition is_lSet {cf} φ s := eq_sort φ s Sort.type0.

Definition is_allowed_elimination {cf} φ allowed : Sort.t -> Prop :=
  match allowed with
  | IntoSProp => Sort.is_sprop
  | IntoPropSProp => Sort.is_propositional
  | IntoSetPropSProp => fun s => Sort.is_propositional s \/ is_lSet φ s
  | IntoAny => fun s => true
  end.
Definition allowed_eliminations_subset (a a' : allowed_eliminations) : bool.
Admitted.

Section UnivCF2.

End UnivCF2.

Section UniverseLemmas.
End UniverseLemmas.

Section no_prop_leq_type.

End no_prop_leq_type.

Class UnivSubst A := subst_instance : Instance.t -> A -> A.

Notation "x @[ u ]" := (subst_instance u x) (at level 1,
  format "x @[ u ]").
#[global] Instance subst_instance_cstrs : UnivSubst ConstraintSet.t.
Admitted.

Section Closedu.
End Closedu.

Section UniverseClosedSubst.

End UniverseClosedSubst.

Section SubstInstanceClosed.
End SubstInstanceClosed.

Definition abstract_instance decl :=
  match decl with
  | Monomorphic_ctx => Instance.empty
  | Polymorphic_ctx auctx => UContext.instance (AUContext.repr auctx)
  end.

End Universes.
Module Export MetaRocq.
Module Export Common.
Module Export Universes.
End Universes.
Import MetaRocq.Utils.utils.
Import MetaRocq.Common.BasicAst.

#[global] Instance reflect_recursivity_kind : ReflectEq recursivity_kind.
Admitted.
Import Stdlib.ssr.ssrbool.
Import MetaRocq.Utils.utils.
Import MetaRocq.Common.BasicAst.
Import MetaRocq.Common.Primitive.
Import MetaRocq.Common.Universes.

Module Type Term.

  Parameter Inline term : Type.

  Parameter Inline tRel : nat -> term.
  Parameter Inline tSort : Sort.t -> term.
  Parameter Inline tProd : aname -> term -> term -> term.
  Parameter Inline tLambda : aname -> term -> term -> term.
  Parameter Inline tLetIn : aname -> term -> term -> term -> term.
  Parameter Inline tProj : projection -> term -> term.
  Parameter Inline mkApps : term -> list term -> term.

  Parameter Inline lift : nat -> nat -> term -> term.
  Parameter Inline subst : list term -> nat -> term -> term.
  Parameter Inline closedn : nat -> term -> bool.
  Parameter Inline subst_instance_constr : UnivSubst term.

  Abbreviation lift0 n := (lift n 0).
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

  Definition extends (x y : t) :=
    option_extends x.(retro_int63) y.(retro_int63) /\
    option_extends x.(retro_float64) y.(retro_float64) /\
    option_extends x.(retro_string) y.(retro_string) /\
    option_extends x.(retro_array) y.(retro_array).

Module Environment (T : Term).

  Import T.
  #[global] Existing Instance subst_instance_constr.

  Definition judgment := judgment_ Sort.t term.

  Abbreviation context_decl := (context_decl term).

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
Admitted.
Definition set_binder_name (na : aname) (x : context_decl) : context_decl.
Admitted.
Fixpoint context_assumptions (Γ : context) : nat.
Admitted.

  Fixpoint is_assumption_context (Γ : context) :=
    match Γ with
    | [] => true
    | d :: Γ =>
      match d.(decl_body) with
      | Some _ => false
      | None => is_assumption_context Γ
      end
    end.
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
Fixpoint lookup_globals (Σ : global_declarations) (kn : kername) : list global_decl.
Admitted.

  Definition lookup_envs (Σ : global_env) (kn : kername) := lookup_globals Σ.(declarations) kn.
  Abbreviation strictly_extends_decls_part_globals Σ Σ'
    := (∑ Σ'', Σ' = Σ'' ++ Σ)
         (only parsing).
  Abbreviation extends_decls_part Σ Σ'
    := (forall c, ∑ decls, lookup_envs Σ' c = decls ++ lookup_envs Σ c)
         (only parsing).
  Abbreviation strictly_extends_decls_part Σ Σ'
    := (strictly_extends_decls_part_globals Σ.(declarations) Σ'.(declarations))
         (only parsing).
  Definition extends (Σ Σ' : global_env) :=
    [× Σ.(universes) ⊂_cs Σ'.(universes),
      extends_decls_part Σ Σ' &
      Retroknowledge.extends Σ.(retroknowledge) Σ'.(retroknowledge)].

  Definition extends_decls (Σ Σ' : global_env) :=
    [× Σ.(universes) = Σ'.(universes),
      extends_decls_part Σ Σ' &
      Σ.(retroknowledge) = Σ'.(retroknowledge)].

  Definition strictly_extends_decls (Σ Σ' : global_env) :=
    [× Σ.(universes) = Σ'.(universes),
      strictly_extends_decls_part Σ Σ' &
      Σ.(retroknowledge) = Σ'.(retroknowledge)].
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
Admitted.
  Coercion fst_ctx : global_env_ext >-> global_env.

  Definition mkLambda_or_LetIn d t :=
    match d.(decl_body) with
    | None => tLambda d.(decl_name) d.(decl_type) t
    | Some b => tLetIn d.(decl_name) b d.(decl_type) t
    end.

  Definition it_mkLambda_or_LetIn (l : context) (t : term) :=
    List.fold_left (fun acc d => mkLambda_or_LetIn d acc) l t.

  Definition mkProd_or_LetIn d t :=
    match d.(decl_body) with
    | None => tProd d.(decl_name) d.(decl_type) t
    | Some b => tLetIn d.(decl_name) b d.(decl_type) t
    end.

  Definition it_mkProd_or_LetIn (l : context) (t : term) :=
    List.fold_left (fun acc d => mkProd_or_LetIn d acc) l t.
Fixpoint reln (l : list term) (p : nat) (Γ0 : list context_decl) {struct Γ0} : list term.
Admitted.

  Definition to_extended_list_k Γ k := reln [] k Γ.
  Definition to_extended_list Γ := to_extended_list_k Γ 0.

  Definition arities_context (l : list one_inductive_body) :=
    rev_map (fun ind => vass (mkBindAnn (nNamed ind.(ind_name))
                            rel_of_Type) ind.(ind_type)) l.

  Fixpoint projs ind npars k :=
    match k with
    | 0 => []
    | S k' => (tProj (mkProjection ind npars k') (tRel 0)) :: projs ind npars k'
    end.

End Environment.

Module Type EnvironmentSig (T : Term).
 Include Environment T.
End EnvironmentSig.

Module Type EnvironmentDecide (T : Term) (Import E : EnvironmentSig T).
End EnvironmentDecide.

Module EnvironmentDecideReflectInstances (T : Term) (Import E : EnvironmentSig T) (Import EDec : EnvironmentDecide T E).
End EnvironmentDecideReflectInstances.

Module Type TermUtils (T: Term) (E: EnvironmentSig T).
Import T.
Import E.

  Parameter Inline destArity : context -> term -> option (context × Sort.t).
  Parameter Inline inds : kername -> Instance.t -> list one_inductive_body -> list term.

End TermUtils.
Module Export EnvironmentTyping.
Import Stdlib.ssr.ssrbool.
Import MetaRocq.Utils.utils.
Import MetaRocq.Common.config.
Import MetaRocq.Common.BasicAst.
Import MetaRocq.Common.Universes.

Module Lookup (T : Term) (E : EnvironmentSig T).
Import E.

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

  Definition on_udecl_decl {A} (F : universes_decl -> A) d : A :=
  match d with
  | ConstantDecl cb => F cb.(cst_universes)
  | InductiveDecl mb => F mb.(ind_universes)
  end.

  Definition universes_decl_of_decl := on_udecl_decl (fun x => x).
Definition global_levels (univs : ContextSet.t) : LevelSet.t.
Admitted.
Definition global_ext_levels (Σ : global_env_ext) : LevelSet.t.
Admitted.
Definition global_ext_constraints (Σ : global_env_ext) : ConstraintSet.t.
Admitted.

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
  Include Lookup T E.
End LookupSig.

Module EnvTyping (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E).
Import T.
Import E.

  Definition on_def_type (P : context -> judgment -> Type) Γ d :=
    P Γ (TypRel d.(dtype) d.(dname).(binder_relevance)).

  Definition on_def_body (P : context -> judgment -> Type) types Γ d :=
    P (Γ ,,, types) (TermTypRel d.(dbody) (lift0 #|types| d.(dtype)) d.(dname).(binder_relevance)).

  Definition lift_sorting checking sorting : judgment -> Type :=
    fun j => option_default (fun tm => checking tm (j_typ j)) (j_term j) (unit : Type) ×
                                ∑ s, sorting (j_typ j) s ×
                                  option_default (fun u => u = s) (j_univ j) True /\
                                  isSortRelOpt s (j_rel j).

  Abbreviation typing_sort typing := (fun T s => typing T (tSort s)).

  Definition lift_typing0 typing := lift_sorting typing (typing_sort typing).
  Abbreviation lift_typing1 typing := (fun Γ => lift_typing0 (typing Γ)).
  Abbreviation lift_typing typing := (fun Σ Γ => lift_typing0 (typing Σ Γ)).

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
  Include EnvTyping T E TU.
End EnvTypingSig.

Module Conversion (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E) (ET : EnvTypingSig T E TU).
Import T.
Import E.

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

  Arguments All_decls_alpha_pb pb P : clear implicits.

  Definition cumul_pb_decls pb (Σ : global_env_ext) (Γ Γ' : context) : forall (x y : context_decl), Type :=
    All_decls_alpha_pb pb (cumul_gen Σ Γ).

  Definition cumul_ctx_rel Σ Γ Δ Δ' :=
    All2_fold (fun Δ Δ' => cumul_pb_decls Cumul Σ (Γ ,,, Δ) (Γ ,,, Δ')) Δ Δ'.
  End Conversion.
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
    Definition on_type_rel Σ Γ T r := P Σ Γ (TypRel T r).

    Definition ind_realargs (o : one_inductive_body) :=
      match destArity [] o.(ind_type) with
      | Some (ctx, _) => #|smash_context [] ctx|
      | _ => 0
      end.

    Definition mdecl_at_i mdecl i (Γ:context) k : Prop :=
      #|Γ| <= k /\ k < #|Γ| + #|mdecl.(ind_bodies)| /\
       nth_error (List.rev mdecl.(ind_bodies)) (k - #|Γ|) = Some i.

    Reserved Notation " mdecl ;;; Γ |arg+> t " (at level 50, Γ, t at next level).
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
      mdecl ;;; (vass na ty :: Γ) |arg+> ty' ->
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
      mdecl @ i ;;; (vass na ty :: Γ) |+> ty' ->
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
Definition on_global_env (g : global_env) : Type.
Admitted.

  End GlobalMaps.
  Arguments on_cargs {_ Pcmp P Σ mdecl i idecl ind_indices cdecl cunivs}.
  Arguments ind_cunivs {_ Pcmp P Σ mind mdecl i idecl}.

End GlobalMaps.

Module Type GlobalMapsSig (T: Term) (E: EnvironmentSig T) (TU : TermUtils T E) (ET: EnvTypingSig T E TU) (C: ConversionSig T E TU ET) (L: LookupSig T E).
  Include GlobalMaps T E TU ET C L.
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
Import T.
Import E.
Import L.
Import GM.

  Section Properties.
    Context {cf : checker_flags}.
    Context {Pcmp: global_env_ext -> context -> conv_pb -> term -> term -> Type}.
    Context {P: global_env_ext -> context -> judgment -> Type}.

  Let wf := on_global_env Pcmp P.

  Lemma declared_constructor_to_gen {Σ id mdecl idecl cdecl}
    {wfΣ : wf Σ} :
    declared_constructor Σ id mdecl idecl cdecl ->
    declared_constructor_gen (lookup_env Σ) id mdecl idecl cdecl.
Admitted.
  End Properties.
End DeclarationTyping.
Module Export PCUICPrimitive.
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
Abbreviation map_prim := (mapu_prim id).

Equations test_prim {term} (p : term -> bool) (p : prim_val term) : bool :=
| p, (primInt; _) => true
| p, (primFloat; _) => true
| p, (primString; _) => true
| p, (primArray; primArrayModel ar) =>
  List.forallb p ar.(array_value) && p ar.(array_default) && p ar.(array_type).

Record predicate {term} := mk_predicate {
  pparams : list term;
  puinst : Instance.t;
  pcontext : list (context_decl term);

  preturn : term;  }.
Arguments predicate : clear implicits.

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

Section map_branch_k.
  Context {term term' : Type}.
  Context (f : nat -> term -> term').
  Context (g : list (BasicAst.context_decl term) -> list (BasicAst.context_decl term')).
  Definition map_branch_k k (b : branch term) :=
  {| bcontext := g b.(bcontext);
     bbody := f (#|b.(bcontext)| + k) b.(bbody) |}.
End map_branch_k.

Abbreviation map_branches_k f h k brs :=
  (List.map (map_branch_k f h k) brs).

Abbreviation test_branches_k p test k brs :=
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

Abbreviation subst0 t := (subst t 0).
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

Abbreviation cmp_global_instance Σ := (cmp_global_instance_gen (lookup_env Σ)).

Inductive eq_decl_upto_names : context_decl -> context_decl -> Type :=
  | compare_vass {na na' T} :
    eq_binder_annot na na' -> eq_decl_upto_names (vass na T) (vass na' T)
  | compare_vdef {na na' b T} :
    eq_binder_annot na na' -> eq_decl_upto_names (vdef na b T) (vdef na' b T).

Abbreviation eq_context_upto_names := (All2 eq_decl_upto_names).

Inductive context_subst : context -> list term -> list term -> Type :=
| context_subst_nil : context_subst [] [] []
| context_subst_ass Γ args s na t a :
    context_subst Γ args s ->
    context_subst (vass na t :: Γ) (args ++ [a]) (a :: s)
| context_subst_def Γ args s na b t :
    context_subst Γ args s ->
    context_subst (vdef na b t :: Γ) args (subst s 0 b :: s).
Import Stdlib.ssr.ssrbool.

Definition shiftnP k p i :=
  (i <? k) || p (i - k).
Fixpoint on_free_vars (p : nat -> bool) (t : term) : bool.
Admitted.

Definition on_free_vars_decl P d :=
  test_decl (on_free_vars P) d.

Definition on_free_vars_ctx P ctx :=
  alli (fun k => (on_free_vars_decl (shiftnP k P))) 0 (List.rev ctx).

Abbreviation is_open_term Γ := (on_free_vars (shiftnP #|Γ| xpred0)).
Abbreviation is_closed_context := (on_free_vars_ctx xpred0).
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
End PCUICConversionParSpec.

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

End PCUICTypingDef.

Module PCUICDeclarationTyping :=
  EnvironmentTyping.DeclarationTyping
    PCUICTerm
    PCUICEnvironment
    PCUICTermUtils
    PCUICEnvTyping
    PCUICConversion
    PCUICConversionParSpec
    PCUICTypingDef
    PCUICLookup
    PCUICGlobalMaps.
Include PCUICDeclarationTyping.

Definition wf `{checker_flags} := on_global_env cumulSpec0 (lift_typing typing).
Existing Class wf.

Definition on_udecl_prop (Σ : global_env) (udecl : universes_decl)
  := let levels := levels_of_udecl udecl in
     let global_levels := global_levels Σ.(universes) in
     let all_levels := LevelSet.union levels global_levels in
     ConstraintSet.For_all (declared_cstr_levels all_levels) (constraints_of_udecl udecl).

Section ExtendsWf.
  Context {cf : checker_flags}.
  Context {Pcmp: global_env_ext -> context -> conv_pb -> term -> term -> Type}.
  Context {P: global_env_ext -> context -> judgment -> Type}.

  Let wf := on_global_env Pcmp P.

Lemma weaken_lookup_on_global_env' Σ c decl :
  wf Σ ->
  lookup_env Σ c = Some decl ->
  on_udecl_prop Σ (universes_decl_of_decl decl).
Admitted.

Definition weaken_env_prop_gen
           (R : global_env_ext -> global_env_ext -> Type)
           (P : global_env_ext -> context -> judgment -> Type) :=
  forall Σ Σ' φ, wf Σ -> wf Σ' -> R (Σ, φ) (Σ', φ) -> forall Γ j, P (Σ, φ) Γ j -> P (Σ', φ) Γ j.

Definition weaken_env_prop := weaken_env_prop_gen extends.
Definition weaken_env_decls_prop := weaken_env_prop_gen extends_decls.
Definition weaken_env_strictly_decls_prop := weaken_env_prop_gen strictly_extends_decls.

End ExtendsWf.
Arguments weaken_env_prop {cf} (Pcmp P)%_function_scope _%_function_scope.
Arguments weaken_env_strictly_decls_prop {cf} (Pcmp P)%_function_scope _%_function_scope.

#[warnings="-ambiguous-paths"]
Global Coercion weaken_env_prop_to_decls {cf Pcmp P P0} : @weaken_env_prop cf Pcmp P P0 -> @weaken_env_decls_prop cf Pcmp P P0.
Admitted.
#[warnings="-ambiguous-paths"]
Global Coercion weaken_env_prop_decls_to_strictly_decls {cf Pcmp P P0} : @weaken_env_decls_prop cf Pcmp P P0 -> @weaken_env_strictly_decls_prop cf Pcmp P P0.
Admitted.

Definition wf_ext_wk {cf : checker_flags} (Σ : global_env_ext)
  := wf Σ.1 × on_udecl_prop Σ.1 Σ.2.

Definition wf_global_ext {cf : checker_flags} Σ ext := wf_ext_wk (Σ, ext).

Lemma declared_inductive_inv `{checker_flags} {Σ P ind mdecl idecl} :
  weaken_env_strictly_decls_prop cumulSpec0 (lift_typing typing) P ->
  wf Σ -> on_global_env cumulSpec0 P Σ ->
  declared_inductive Σ ind mdecl idecl ->
  on_ind_body cumulSpec0 P (Σ, ind_universes mdecl) (inductive_mind ind) mdecl (inductive_ind ind) idecl.
Admitted.

Lemma weaken_env_prop_typing `{checker_flags} : weaken_env_prop cumulSpec0 (lift_typing typing) (lift_typing typing).
Admitted.

Lemma on_declared_constructor `{checker_flags} {Σ ref mdecl idecl cdecl}
  {wfΣ : wf Σ}
  (Hdecl : declared_constructor Σ ref mdecl idecl cdecl) :
  on_inductive cumulSpec0 (lift_typing typing) (Σ, ind_universes mdecl)
               (inductive_mind (fst ref)) mdecl *
  on_ind_body cumulSpec0 (lift_typing typing) (Σ, ind_universes mdecl)
              (inductive_mind (fst ref)) mdecl (inductive_ind (fst ref)) idecl *
  ∑ ind_ctor_sort,
    let onib := declared_inductive_inv weaken_env_prop_typing wfΣ wfΣ (let (x, _) := Hdecl in x) in
     nth_error (ind_cunivs onib) ref.2 = Some ind_ctor_sort
    ×  on_constructor cumulSpec0 (lift_typing typing) (Σ, ind_universes mdecl)
                 mdecl (inductive_ind (fst ref))
                 idecl idecl.(ind_indices) cdecl ind_ctor_sort.
Admitted.

Inductive subslet {cf:checker_flags} Σ (Γ : context) : list term -> context -> Type :=
| emptyslet : subslet Σ Γ [] []
| cons_let_ass Δ s na t T : subslet Σ Γ s Δ ->
              Σ ;;; Γ |- t : subst0 s T ->
             subslet Σ Γ (t :: s) (Δ ,, vass na T)
| cons_let_def Δ s na t T :
    subslet Σ Γ s Δ ->
    Σ ;;; Γ |- subst0 s t : subst0 s T ->
    subslet Σ Γ (subst0 s t :: s) (Δ ,, vdef na t T).

Record spine_subst {cf:checker_flags} Σ Γ inst s (Δ : context) := mkSpineSubst {
  spine_dom_wf : wf_local Σ Γ;
  spine_codom_wf : wf_local Σ (Γ ,,, Δ);
  inst_ctx_subst :> context_subst Δ inst s;
  inst_subslet :> subslet Σ Γ s Δ }.

Section OnConstructor.
  Context {cf:checker_flags} {Σ : global_env} {ind mdecl idecl cdecl}
    {wfΣ: wf Σ} (declc : declared_constructor Σ ind mdecl idecl cdecl).

  Lemma on_constructor_subst :
    wf_global_ext Σ (ind_universes mdecl) *
    wf_local (Σ, ind_universes mdecl)
    (arities_context (ind_bodies mdecl) ,,, ind_params mdecl ,,, cstr_args cdecl) *
    ∑ inst,
    spine_subst (Σ, ind_universes mdecl)
              (arities_context (ind_bodies mdecl) ,,, ind_params mdecl ,,,
                cstr_args cdecl)
              ((to_extended_list_k (ind_params mdecl) #|cstr_args cdecl|) ++
                (cstr_indices cdecl)) inst
            (ind_params mdecl ,,, ind_indices idecl).
  Proof using declc wfΣ.
    pose proof (on_declared_constructor declc) as [[onmind oib] [cunivs [hnth onc]]].
    pose proof (onc.(on_cargs)).
simpl in X.
    split.
split.
split.
    2:{
 eapply (weaken_lookup_on_global_env' _ _ (InductiveDecl mdecl)); tea.
        clear hnth.
unshelve eapply declared_constructor_to_gen in declc; eauto.
        exact (inductive_mind ind.1).
