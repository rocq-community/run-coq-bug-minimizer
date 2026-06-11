
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/utils/theories" "MetaRocq.Utils" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/common/theories" "MetaRocq.Common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/pcuic/theories" "MetaRocq.PCUIC" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Equations" "Equations" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/ExtLib" "ExtLib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-top" "MetaRocq.PCUIC.PCUICInductiveInversion") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 4603 lines to 39 lines, then from 53 lines to 39 lines, then from 52 lines to 39 lines, then from 51 lines to 3774 lines, then from 3773 lines to 46 lines, then from 58 lines to 2403 lines, then from 2409 lines to 57 lines, then from 69 lines to 995 lines, then from 1000 lines to 81 lines, then from 93 lines to 2645 lines, then from 2646 lines to 213 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 1.390 sec
   Expected coqc peak memory usage on this file: 784396.0 kb *)









Require Corelib.Strings.PrimString.
Require Corelib.Setoids.Setoid.
Require Corelib.Init.Wf.
Require Corelib.BinNums.PosDef.
Require Corelib.Numbers.Cyclic.Int63.CarryType.
Require Corelib.Init.Ltac.
Require Corelib.ssr.ssreflect.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Floats.SpecFloat.
Require Corelib.Init.Byte.
Require Corelib.Program.Wf.
Require Corelib.Program.Tactics.
Require Corelib.extraction.Extraction.
Require Corelib.Program.Utils.
Require Corelib.Lists.ListDef.
Require Corelib.Classes.CRelationClasses.
Require Corelib.Classes.SetoidTactics.
Require Corelib.Numbers.Cyclic.Int63.Uint63Axioms.
Require Corelib.Init.Decimal.
Require Corelib.Floats.FloatAxioms.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.ssr.ssrbool.
Require Corelib.Init.Hexadecimal.
Require Corelib.Program.Basics.
Require Corelib.Strings.PrimStringAxioms.
Require Corelib.Floats.FloatOps.
Require Corelib.Numbers.Cyclic.Int63.Sint63Axioms.
Require Corelib.Classes.CMorphisms.
Require Corelib.Classes.RelationClasses.
Require Corelib.Classes.Morphisms.
Require Corelib.BinNums.IntDef.
Require Corelib.ssr.ssrfun.
Require Corelib.Numbers.BinNums.
Require Corelib.Floats.PrimFloat.
Require Corelib.Numbers.Cyclic.Int63.PrimInt63.
Require Corelib.Init.Sumbool.
Require Corelib.BinNums.NatDef.
Require Corelib.Init.Nat.
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
Require Stdlib.BinNums.NatDef.
Require Stdlib.BinNums.PosDef.
Require Stdlib.Classes.CMorphisms.
Require Stdlib.Classes.CRelationClasses.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Classes.SetoidTactics.
Require Stdlib.Floats.PrimFloat.
Require Stdlib.Floats.SpecFloat.
Require Stdlib.Floats.FloatAxioms.
Require Stdlib.Floats.FloatOps.
Require Stdlib.Init.Nat.
Require Stdlib.Init.Wf.
Require Stdlib.Init.Sumbool.
Require Stdlib.Init.Hexadecimal.
Require Stdlib.Init.Byte.
Require Stdlib.Init.Decimal.
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
Require MetaRocq.PCUIC.PCUICContextSubst.
Require MetaRocq.PCUIC.PCUICWeakeningEnv.
Module Export PCUICUnivSubstitutionConv.
Import MetaRocq.Utils.utils.
Import MetaRocq.Common.config.
Import MetaRocq.PCUIC.PCUICAst.
Import MetaRocq.PCUIC.PCUICTyping.
Import MetaRocq.PCUIC.PCUICWeakeningEnv.

Definition wf_ext_wk {cf : checker_flags} (Σ : global_env_ext)
  := wf Σ.1 × on_udecl_prop Σ.1 Σ.2.

Definition wf_global_ext {cf : checker_flags} Σ ext := wf_ext_wk (Σ, ext).

Section SubstIdentity.

End SubstIdentity.

End PCUICUnivSubstitutionConv.

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
