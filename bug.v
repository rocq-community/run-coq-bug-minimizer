
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/utils/theories" "MetaRocq.Utils" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/common/theories" "MetaRocq.Common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/pcuic/theories" "MetaRocq.PCUIC" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Equations" "Equations" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/ExtLib" "ExtLib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 4603 lines to 39 lines, then from 53 lines to 39 lines, then from 52 lines to 39 lines, then from 51 lines to 3774 lines, then from 3773 lines to 46 lines, then from 58 lines to 2403 lines, then from 2409 lines to 57 lines, then from 69 lines to 995 lines, then from 1000 lines to 81 lines, then from 93 lines to 2645 lines, then from 2646 lines to 213 lines, then from 225 lines to 90 lines, then from 104 lines to 1099 lines, then from 1098 lines to 139 lines, then from 153 lines to 1878 lines, then from 1885 lines to 430 lines, then from 444 lines to 1595 lines, then from 1601 lines to 598 lines, then from 612 lines to 2689 lines, then from 2690 lines to 619 lines, then from 633 lines to 1387 lines, then from 1388 lines to 641 lines, then from 655 lines to 3123 lines, then from 3125 lines to 716 lines, then from 730 lines to 1577 lines, then from 1582 lines to 1230 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 2.281 sec
   Expected coqc peak memory usage on this file: 799128.0 kb *)









Require Corelib.Program.Basics.
Require Corelib.Init.Wf.
Require Corelib.Program.Wf.
Require Corelib.Classes.Morphisms.
Require Corelib.ssr.ssrbool.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Classes.CMorphisms.
Require Corelib.Init.Sumbool.
Require Corelib.ssr.ssrfun.
Require Corelib.Numbers.BinNums.
Require Corelib.ssr.ssreflect.
Require Corelib.extraction.Extraction.
Require Corelib.Strings.PrimString.
Require Corelib.Classes.CRelationClasses.
Require Corelib.BinNums.PosDef.
Require Corelib.BinNums.IntDef.
Require Corelib.Floats.SpecFloat.
Require Corelib.Classes.RelationClasses.
Require Corelib.Numbers.Cyclic.Int63.PrimInt63.
Require Corelib.Init.Decimal.
Require Corelib.Init.Nat.
Require Corelib.Program.Utils.
Require Corelib.Setoids.Setoid.
Require Corelib.Program.Tactics.
Require Corelib.Lists.ListDef.
Require Corelib.Init.Byte.
Require Corelib.Numbers.Cyclic.Int63.Uint63Axioms.
Require Corelib.Numbers.Cyclic.Int63.Sint63Axioms.
Require Corelib.Floats.PrimFloat.
Require Corelib.Floats.FloatAxioms.
Require Corelib.BinNums.NatDef.
Require Corelib.Numbers.Cyclic.Int63.CarryType.
Require Corelib.Classes.SetoidTactics.
Require Corelib.Strings.PrimStringAxioms.
Require Corelib.Init.Hexadecimal.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Init.Ltac.
Require Corelib.Floats.FloatOps.
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
Require Stdlib.Classes.CMorphisms.
Require Stdlib.Classes.CRelationClasses.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Classes.SetoidTactics.
Require Stdlib.Floats.FloatOps.
Require Stdlib.Floats.SpecFloat.
Require Stdlib.Floats.PrimFloat.
Require Stdlib.Floats.FloatAxioms.
Require Stdlib.Init.Wf.
Require Stdlib.Init.Decimal.
Require Stdlib.Init.Hexadecimal.
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
Require Stdlib.ssr.ssrbool.
Require Stdlib.ssr.ssreflect.
Require Stdlib.ssr.ssrfun.
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
Require MetaRocq.PCUIC.utils.PCUICAstUtils.
Module Export PCUICCases.
Import MetaRocq.Utils.utils.
Import MetaRocq.PCUIC.PCUICAst.
Import MetaRocq.PCUIC.utils.PCUICAstUtils.

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

End PCUICCases.
Module Export MetaRocq_DOT_PCUIC_DOT_Syntax_DOT_PCUICCases.
Module Export MetaRocq.
Module Export PCUIC.
Module Export Syntax.
Module Export PCUICCases.
End PCUICCases.

End Syntax.

End PCUIC.

End MetaRocq.

End MetaRocq_DOT_PCUIC_DOT_Syntax_DOT_PCUICCases.

Module Export MetaRocq_DOT_PCUIC_DOT_PCUICEquality.
Module Export MetaRocq.
Module Export PCUIC.
Module Export PCUICEquality.
Import MetaRocq.Utils.utils.
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

Abbreviation cmp_global_instance Σ := (cmp_global_instance_gen (lookup_env Σ)).

Inductive eq_decl_upto_names : context_decl -> context_decl -> Type :=
  | compare_vass {na na' T} :
    eq_binder_annot na na' -> eq_decl_upto_names (vass na T) (vass na' T)
  | compare_vdef {na na' b T} :
    eq_binder_annot na na' -> eq_decl_upto_names (vdef na b T) (vdef na' b T).

Abbreviation eq_context_upto_names := (All2 eq_decl_upto_names).

End PCUICEquality.

End PCUIC.

End MetaRocq.

End MetaRocq_DOT_PCUIC_DOT_PCUICEquality.

Import MetaRocq.Utils.utils.
Import MetaRocq.PCUIC.PCUICAst.

Inductive context_subst : context -> list term -> list term -> Type :=
| context_subst_nil : context_subst [] [] []
| context_subst_ass Γ args s na t a :
    context_subst Γ args s ->
    context_subst (vass na t :: Γ) (args ++ [a]) (a :: s)
| context_subst_def Γ args s na b t :
    context_subst Γ args s ->
    context_subst (vdef na b t :: Γ) args (subst s 0 b :: s).
Module Export MetaRocq_DOT_PCUIC_DOT_PCUICContextSubst.
Module Export MetaRocq.
Module Export PCUIC.
Module Export PCUICContextSubst.
End PCUICContextSubst.

End PCUIC.

End MetaRocq.

End MetaRocq_DOT_PCUIC_DOT_PCUICContextSubst.
Import Stdlib.ssr.ssrbool.
Import MetaRocq.Utils.utils.
Import MetaRocq.PCUIC.PCUICAst.

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
Module Export MetaRocq_DOT_PCUIC_DOT_Syntax_DOT_PCUICOnFreeVars.
Module Export PCUICOnFreeVars.
End PCUICOnFreeVars.

End MetaRocq_DOT_PCUIC_DOT_Syntax_DOT_PCUICOnFreeVars.
Import MetaRocq.Utils.utils.
Import MetaRocq.Common.config.
Import MetaRocq.PCUIC.PCUICAst.
Import MetaRocq.PCUIC.PCUICEquality.
Import MetaRocq.PCUIC.Syntax.PCUICCases.

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
Module Export MetaRocq_DOT_PCUIC_DOT_PCUICCumulativitySpec.
Module Export PCUICCumulativitySpec.
End PCUICCumulativitySpec.

End MetaRocq_DOT_PCUIC_DOT_PCUICCumulativitySpec.

Import MetaRocq.Utils.utils.
Import MetaRocq.Common.config.
Import MetaRocq.PCUIC.PCUICAst.
Import MetaRocq.PCUIC.utils.PCUICAstUtils.
Import MetaRocq.PCUIC.utils.PCUICPrimitive.
Import MetaRocq.PCUIC.PCUICEquality.
Export MetaRocq.PCUIC.Syntax.PCUICCases.

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
Module Export MetaRocq_DOT_PCUIC_DOT_PCUICTyping.
Module Export MetaRocq.
Module Export PCUIC.
Module Export PCUICTyping.
End PCUICTyping.

End PCUIC.

End MetaRocq.

End MetaRocq_DOT_PCUIC_DOT_PCUICTyping.
Import MetaRocq.Common.config.
Import MetaRocq.PCUIC.PCUICAst.

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
Module Export MetaRocq.
Module Export PCUIC.
Module Export PCUICWeakeningEnv.
End PCUICWeakeningEnv.

End PCUIC.

End MetaRocq.
Import MetaRocq.Utils.utils.
Import MetaRocq.Common.config.
Import MetaRocq.PCUIC.PCUICAst.
Import MetaRocq.PCUIC.PCUICTyping.
Import MetaRocq.PCUIC.PCUICWeakeningEnv.

Definition wf_ext_wk {cf : checker_flags} (Σ : global_env_ext)
  := wf Σ.1 × on_udecl_prop Σ.1 Σ.2.

Definition wf_global_ext {cf : checker_flags} Σ ext := wf_ext_wk (Σ, ext).

Import MetaRocq.Utils.utils.
Import MetaRocq.Common.config.
Import MetaRocq.PCUIC.PCUICAst.
Import MetaRocq.PCUIC.PCUICTyping.
Import MetaRocq.PCUIC.PCUICWeakeningEnv.

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
Import MetaRocq.PCUIC.PCUICContextSubst.

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
