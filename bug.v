
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/color" "CoLoR" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Bignums" "Bignums" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 440 lines to 291 lines, then from 305 lines to 1337 lines, then from 1343 lines to 423 lines, then from 437 lines to 1360 lines, then from 1366 lines to 499 lines, then from 513 lines to 1364 lines, then from 1371 lines to 834 lines, then from 835 lines to 431 lines, then from 445 lines to 1323 lines, then from 1330 lines to 512 lines, then from 526 lines to 1506 lines, then from 1513 lines to 682 lines, then from 696 lines to 1453 lines, then from 1460 lines to 1036 lines *)
(* coqc version 9.4+alpha compiled with OCaml 5.4.1
   coqtop version 9.4+alpha
   Expected coqc runtime on this file: 6.399 sec
   Expected coqc peak memory usage on this file: 1066264.0 kb *)









Require Corelib.Program.Utils.
Require Corelib.Classes.Equivalence.
Require Corelib.Setoids.Setoid.
Require Corelib.Init.Byte.
Require Corelib.Program.Tactics.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.extraction.Extraction.
Require Corelib.Numbers.BinNums.
Require Corelib.Classes.RelationClasses.
Require Corelib.Program.Basics.
Require Corelib.BinNums.NatDef.
Require Corelib.Classes.Morphisms.
Require Corelib.Lists.ListDef.
Require Corelib.Init.Sumbool.
Require Corelib.Init.Ltac.
Require Corelib.Init.Wf.
Require Corelib.BinNums.IntDef.
Require Corelib.BinNums.PosDef.
Require Corelib.Init.Peano.
Require Corelib.Program.Wf.
Require Corelib.Init.Datatypes.
Require Corelib.Init.Logic.
Require Corelib.Relations.Relation_Definitions.
Require Stdlib.Classes.DecidableClass.
Require Stdlib.Logic.Decidable.
Require Stdlib.Logic.EqdepFacts.
Require Stdlib.Logic.FunctionalExtensionality.
Require Stdlib.Logic.HLevelsBase.
Require Stdlib.Logic.Hurkens.
Require Stdlib.Logic.PropExtensionalityFacts.
Require Stdlib.Program.Syntax.
Require Stdlib.Sets.Ensembles.
Require Stdlib.Sets.Permut.
Require Stdlib.Wellfounded.Inverse_Image.
Require Stdlib.micromega.ZifyClasses.
Require Stdlib.setoid_ring.Algebra_syntax.
Require Stdlib.BinNums.IntDef.
Require Stdlib.BinNums.PosDef.
Require Stdlib.BinNums.NatDef.
Require Stdlib.Classes.Equivalence.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Init.Datatypes.
Require Stdlib.Init.Sumbool.
Require Stdlib.Init.Wf.
Require Stdlib.Init.Byte.
Require Stdlib.Init.Peano.
Require Stdlib.Init.Logic.
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
Require Stdlib.Sets.Relations_1.
Require Stdlib.Wellfounded.Well_Ordering.
Require Stdlib.extraction.Extraction.
Require CoLoR.Util.Logic.LogicUtil.
Require Stdlib.Bool.Bool.
Require Stdlib.Logic.JMeq.
Require Stdlib.Logic.ProofIrrelevance.
Require Stdlib.Relations.Relation_Operators.
Require Stdlib.Wellfounded.Inclusion.
Require Stdlib.funind.FunInd.
Require Stdlib.Program.Combinators.
Require Stdlib.Relations.Operators_Properties.
Require Stdlib.Wellfounded.Disjoint_Union.
Require Stdlib.Wellfounded.Transitive_Closure.
Require Stdlib.PArith.BinPosDef.
Require Stdlib.Relations.Relations.
Require Stdlib.Wellfounded.Union.
Require Stdlib.Program.Equality.
Require Stdlib.Numbers.NumPrelude.
Require Stdlib.Classes.RelationPairs.
Require Stdlib.Program.WfExtensionality.
Require Stdlib.Wellfounded.Lexicographic_Product.
Require CoLoR.Util.Relation.RelMidex.
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
Require CoLoR.Util.Nat.NatCompat.
Require Stdlib.Arith.Between.
Require Stdlib.Arith.Compare_dec.
Require Stdlib.Arith.EqNat.
Require Stdlib.Arith.Factorial.
Require Stdlib.Arith.Peano_dec.
Require Stdlib.Sets.Multiset.
Require Stdlib.Arith.Wf_nat.
Require Stdlib.Lists.List.
Require Stdlib.Arith.Compare.
Require Stdlib.Arith.Euclid.
Require Stdlib.Lists.ListDec.
Require Stdlib.Wellfounded.List_Extension.
Require Stdlib.micromega.Refl.
Require Stdlib.Lists.Finite.
Require Stdlib.micromega.Tauto.
Require Stdlib.Lists.ListTactics.
Require Stdlib.Logic.ClassicalFacts.
Require Stdlib.PArith.BinPos.
Require Stdlib.Sorting.Sorted.
Require Stdlib.Arith.Arith_base.
Require Stdlib.Logic.Classical_Prop.
Require Stdlib.PArith.POrderedType.
Require Stdlib.PArith.Pnat.
Require Stdlib.Sorting.Permutation.
Require Stdlib.Sorting.SetoidList.
Require Stdlib.Wellfounded.Lexicographic_Exponentiation.
Require Stdlib.Arith.Zerob.
Require Stdlib.Logic.Classical_Pred_Type.
Require Stdlib.Structures.DecidableType.
Require Stdlib.Structures.OrderedType.
Require Stdlib.Vectors.Fin.
Require Stdlib.Logic.ChoiceFacts.
Require Stdlib.Logic.Classical.
Require Stdlib.MSets.MSetInterface.
Require Stdlib.NArith.BinNatDef.
Require Stdlib.PArith.PArith.
Require Stdlib.Structures.EqualitiesFacts.
Require Stdlib.Structures.OrderedTypeAlt.
Require Stdlib.Structures.OrdersAlt.
Require Stdlib.Vectors.VectorDef.
Require Stdlib.FSets.FMapInterface.
Require Stdlib.FSets.FSetInterface.
Require Stdlib.Logic.IndefiniteDescription.
Require Stdlib.MSets.MSetWeakList.
Require Stdlib.NArith.BinNat.
Require Stdlib.Structures.OrdersLists.
Require Stdlib.FSets.FMapList.
Require Stdlib.FSets.FMapWeakList.
Require Stdlib.FSets.FSetBridge.
Require Stdlib.NArith.Ndiv_def.
Require Stdlib.NArith.Ngcd_def.
Require Stdlib.NArith.Nsqrt_def.
Require Stdlib.Sorting.Mergesort.
Require Stdlib.setoid_ring.Ring_theory.
Require CoLoR.Util.Nat.LeastNat.
Require Stdlib.NArith.Nnat.
Require Stdlib.Sorting.Sorting.
Require Stdlib.setoid_ring.BinList.
Require Stdlib.Logic.ClassicalEpsilon.
Require Stdlib.ZArith.BinIntDef.
Require CoLoR.Util.Logic.EpsilonUtil.
Require Stdlib.MSets.MSetList.
Require Stdlib.Wellfounded.Wellfounded.
Require Stdlib.Vectors.VectorSpec.
Require CoLoR.Util.Function.FunUtil.
Require Stdlib.NArith.NArith_base.
Require Stdlib.Strings.Byte.
Require Stdlib.Vectors.VectorEq.
Require CoLoR.Util.Logic.ClassicUtil.
Require Stdlib.Strings.Ascii.
Require Stdlib.Vectors.Vector.
Require Stdlib.NArith.Ndec.
Require Stdlib.Strings.String.
Require Stdlib.ZArith.BinInt.
Require Stdlib.ZArith.Int.
Require Stdlib.ZArith.Zcompare.
Require Stdlib.ZArith.Zeven.
Require Stdlib.ZArith.auxiliary.
Require Stdlib.ZArith.Zpow_def.
Require Stdlib.setoid_ring.Ncring.
Require Stdlib.micromega.Env.
Require Stdlib.micromega.VarMap.
Require Stdlib.setoid_ring.Ring_polynom.
Require Stdlib.ZArith.Znat.
Require Stdlib.ZArith.Zorder.
Require Stdlib.setoid_ring.InitialRing.
Require Stdlib.ZArith.Zmax.
Require Stdlib.FSets.FMapAVL.
Require CoLoR.Util.FMap.FMapUtil.
Require CoLoR.Util.Relation.Lexico.
Require CoLoR.Util.Relation.OrdUtil.
Require CoLoR.Term.Lambda.LComp.
Module Export LCompRewrite.


Set Implicit Arguments.
Import Stdlib.Classes.Morphisms.
Import Stdlib.Program.Basics.
Import CoLoR.Util.Relation.RelUtil.
Import CoLoR.Term.Lambda.LAlpha.




Module Type RS_Struct.

  Declare Module Export L : L_Struct.

  

  Parameter rule : relation Te.

  Parameter lhs_fun : forall l r, rule l r -> F.
  Parameter lhs_nb_args : forall l r, rule l r -> nat.
  Parameter lhs_args : forall l r (h : rule l r), Tes (lhs_nb_args h).

End RS_Struct.




Module Make (Export RS : RS_Struct).

  Module Export A := LAlpha.Make L.

  

  Abbreviation Sh := (clos_subs rule).

End Make.




Module CP_beta_eta_rewrite (Import RS : RS_Struct) <: LComp.CP_Struct.

  Module L := L.

  Module Import S := Make RS.
  Module Import B := LBeta.Make L.
  Module Import E := LEta.Make L.

  

  Definition Rh := beta_top U eta_top U Sh.
  Infix "->Rh" := Rh (at level 70).

  Abbreviation R := (clos_mon Rh).

  Abbreviation R_aeq := (clos_aeq R).

  

  Definition neutral (u : Te) :=
    match u with
      | Def.Lam _ _ => False
      | _ =>
        match head u with
          | Def.Fun _ => False
          | _ => True
        end
    end.

  

  Global Instance neutral_aeq : Proper (aeq ==> impl) neutral.
Admitted.

  Lemma neutral_var : forall x, neutral (Var x).
Admitted.

  Lemma neutral_app : forall u v, neutral u -> neutral (App u v).
Admitted.

  Lemma not_neutral_lam : forall x u, ~neutral (Lam x u).
Admitted.

  Lemma neutral_beta : forall x u v, neutral (App (Lam x u) v).
Admitted.

  

  Global Instance subs_R_aeq : Proper (Logic.eq ==> R_aeq ==> R_aeq) subs.
Admitted.

  Global Instance fv_Rh : Proper (Rh --> Subset) fv.
Admitted.

  Lemma not_Rh_var x u : ~ Var x ->Rh u.
Admitted.

  Lemma Rh_eh x u w : Lam x u ->Rh w -> Lam x u ->eh w.
Admitted.

  Lemma Rh_bh x u v w : App (Lam x u) v ->Rh w -> App (Lam x u) v ->bh w.
Admitted.

  Lemma not_Rh_app_neutral u v w : neutral u -> ~ App u v ->Rh w.
Admitted.

End CP_beta_eta_rewrite.

End LCompRewrite.
Module Export CoLoR.
Module Export Term.
Module Export Lambda.
Module Export LCompRewrite.
End LCompRewrite.

Module Export CoLoR_DOT_Term_DOT_Lambda_DOT_LSimple_WRAPPED.
Module Export LSimple.

Set Implicit Arguments.
Import CoLoR.Util.Vector.VecUtil.
Import CoLoR.Util.Relation.OrdUtil.
Export CoLoR.Term.Lambda.LBeta.

Section simple.

  Variable So : Type.

  Inductive Ty : Type :=
  | Base : So -> Ty
  | Arr : Ty -> Ty -> Ty.

  Abbreviation Tys := (vector Ty).

  Fixpoint arity (T : Ty) :=
    match T with
      | Base _ => 0
      | Arr _ T' => S (arity T')
    end.

  Fixpoint inputs (T : Ty) :=
    match T as T return Tys (arity T) with
      | Base _ => Vnil
      | Arr T1 T2 => Vcons T1 (inputs T2)
    end.

  Fixpoint output (T : Ty) k {struct k} :=
    match k, T with
      | S k', Arr U V => output V k'
      | _, _ => T
    end.

  Fixpoint output_base (T : Ty) :=
    match T with
      | Base b => b
      | Arr _ T' => output_base T'
    end.

  Section dec.

  End dec.

  Section occurs.

  End occurs.

  Section pos.

  End pos.

End simple.

Infix "~~>" := Arr (at level 55, right associativity).

Module ST_Cmp (Export BCmp : Cmp) <: Cmp.

  Definition t := Ty BCmp.t.

  Fixpoint cmp A B :=
    match A, B with
      | Base a, Base b => BCmp.cmp a b
      | Base _, Arr _ _ => Lt
      | Arr _ _, Base _ => Gt
      | Arr A1 A2, Arr B1 B2 =>
          match cmp A1 B1 with
            | Eq => cmp A2 B2
            | c => c
          end
    end.

  Lemma cmp_opp : forall x y, cmp x y = CompOpp (cmp y x).
Admitted.

End ST_Cmp.

Module ST_CmpTransLeibniz (Export BCmpTransLeibniz : CmpTransLeibniz)
  <: CmpTransLeibniz.

  Module C := ST_Cmp BCmpTransLeibniz.

  Include C.

  Lemma cmp_eq : forall x y, cmp x y = Eq -> x = y.
Admitted.

  Lemma cmp_lt_trans :
    forall x y z, cmp x y = Lt -> cmp y z = Lt -> cmp x z = Lt.
Admitted.

End ST_CmpTransLeibniz.

Section typing.

  Variables F X So : Type.

  Abbreviation Te := (@Te F X).
  Abbreviation Ty := (@Ty So).

  Variable typ : F -> Ty.

  Definition TypArgs f := vector Te (arity (typ f)).

  Record Env := mk_Env {
    Env_type : Type;
    Env_empty : Env_type;
    Env_add : X -> Ty -> Env_type -> Env_type;
    Env_In : X -> Env_type -> Prop;
    Env_MapsTo : X -> Ty -> Env_type -> Prop;
    Env_Equal : relation Env_type }.

  Variable env : Env.

  Abbreviation En := (Env_type env).
  Abbreviation MapsTo := (Env_MapsTo env).
  Abbreviation add := (Env_add env).

  Inductive tr : En -> Te -> Ty -> Prop :=
  | tr_var : forall E x T, MapsTo x T E -> tr E (Var x) T
  | tr_fun : forall E f, tr E (Fun f) (typ f)
  | tr_app : forall E u v V T, tr E u (V ~~> T) -> tr E v V -> tr E (App u v) T
  | tr_lam : forall E x X v V, tr (add x X E) v V -> tr E (Lam x v) (X ~~> V).

End typing.

Module Type ST_Struct.

  Declare Module Export L : L_Struct.

  Parameter So : Type.

  Abbreviation Ty := (Ty So).

  Parameter typ : F -> Ty.

  Declare Module Export XMap : FMapInterface.S with Module E := XOrd.

  Abbreviation En := (@XMap.t Ty).
  Abbreviation empty := (@XMap.empty Ty).
  Abbreviation add := (@XMap.add Ty).
  Abbreviation In := (@XMap.In Ty).
  Abbreviation MapsTo := (@XMap.MapsTo Ty).
  Abbreviation Equal := (@XMap.Equal Ty).
  Abbreviation env := (mk_Env empty add In MapsTo Equal).

End ST_Struct.

Module Make (Export ST : ST_Struct).

  Module Export B := LBeta.Make ST.L.

  Module XMapUtil := FMapUtil.Make XMap.

  Abbreviation tr := (@tr F X So typ env).

  Notation "E '|-' v '~:' V" := (tr E v V) (at level 70).

End Make.

End LSimple.
Module Export CoLoR.
Module Export Term.
Module Export Lambda.
Module Export LSimple.
Include CoLoR_DOT_Term_DOT_Lambda_DOT_LSimple_WRAPPED.LSimple.
End LSimple.

Set Implicit Arguments.
Import CoLoR.Util.Vector.VecUtil.
Import CoLoR.Util.Relation.RelUtil.
Import CoLoR.Util.Relation.Lexico.

Module Export Def.

  Section call.

    Variables F X : Type.

    Abbreviation Te := (@Te F X).
    Abbreviation Tes := (vector Te).

    Record call : Type := mk_call {
      call_fun : F;
      call_nb_args : nat;
      call_args : Tes call_nb_args }.

    Variables (eq_fun_dec : forall x y : F, {x=y}+{~x=y})
      (eq_var_dec : forall x y : X, {x=y}+{~x=y})
      (ens_X : Ens X) (var_notin : Ens_type ens_X -> X).

    Abbreviation aeq := (@aeq F X eq_fun_dec eq_var_dec ens_X var_notin).

    Variables (C : Type) (code : F -> C) (gtC : relation C).

    Variables (filter_arity : C -> nat)
      (filter : forall r, vector nat (filter_arity r)).
Definition gt_call (gt_args : C -> relation call) : relation call.
exact (Rof (transp (lexprod (transp gtC) (fun r => transp (gt_args r))))
          (fun c => @existT _ _ (code (call_fun c)) c)).
Defined.

    Definition gt_args_lex (gt : relation Te) r : relation call := Rof
      (lexv (opt aeq) (opt gt))
      (fun c => Vopt_filter (filter r) (call_args c)).

  End call.

Module Type DLQO_Struct.

  Declare Module Export ST : ST_Struct.

  Parameter C : Type.
  Parameter code : F -> C.

  Parameter gtC : relation C.

  Parameter filter_arity : C -> nat.
  Parameter filter : forall r, vector nat (filter_arity r).

  Abbreviation gt_call := (@gt_call F X C code gtC).
  Abbreviation gt_args_lex := (@gt_args_lex F X FOrd.eq_dec XOrd.eq_dec ens_X
    var_notin C filter_arity filter).

End DLQO_Struct.

Module Make (Export ST : ST_Struct).

End Make.

Module Lex (Export CO : DLQO_Struct).

  Section gt_call.

  End gt_call.

  Section gt_args_lex.

  End gt_args_lex.

End Lex.
Module Export CoLoR.
Module Export Term.
Module Export Lambda.
Module Export LCall.
End LCall.
Module Export LCompSimple.
Export CoLoR.Term.Lambda.LSimple.
Export CoLoR.Term.Lambda.LComp.

  Module Make (Export ST : ST_Struct)
  (Export CP : CP_Struct with Module L := ST.L).
  Module Export T := LSimple.Make ST.

  End Make.

Module SN_beta_eta (Export ST : ST_Struct).
End SN_beta_eta.
Module Export LCompInt.

Set Implicit Arguments.
Import Stdlib.Structures.OrderedType.
Import CoLoR.Util.Vector.VecUtil.
Import CoLoR.Util.Set_.SetUtil.

  Section supterm_acc.

    Variables F X : Type.
    Abbreviation Te := (@Te F X).

    Variable So : Type.
    Abbreviation Ty := (@Ty So).

    Variable typ : F -> Ty.
    Abbreviation TypArgs := (@TypArgs F X So typ).

    Variables (Acc : F -> set nat)
      (Acc_arity : forall f i, Acc f i -> i < arity (typ f)).

    Inductive supterm_acc : relation Te :=
    | stacc_intro : forall f (ts : TypArgs f) i (hi : Acc f i),
      supterm_acc (apps (Fun f) ts) (Vnth ts (Acc_arity hi)).

    Lemma stacc_intro' f (ts : TypArgs f) i (hi : Acc f i) t u :
      t = apps (Fun f) ts -> u = Vnth ts (Acc_arity hi) -> supterm_acc t u.
Admitted.

  End supterm_acc.

Module Type BI_Struct.

  Declare Module Export ST : ST_Struct.

  Parameter Acc : F -> set nat.
  Parameter Acc_arity : forall f i, Acc f i -> i < arity (typ f).
  Abbreviation supterm_acc := (@supterm_acc F X So typ Acc Acc_arity).

End BI_Struct.

Module Make (Export ST : ST_Struct)
  (Export CP : CP_Struct with Module L := ST.L)
  (Export BI : BI_Struct with Module ST := ST).
  Module Export CS := LCompSimple.Make ST CP.

    End Make.
Import CoLoR.Util.Relation.RelUtil.
Import CoLoR.Term.Lambda.LCall.
Import CoLoR.Util.Relation.SN.
Import CoLoR.Term.Lambda.LCompRewrite.

  Section cc.

    Variables F X : Type.

    Abbreviation Te := (@Te F X).
    Abbreviation Tes := (vector Te).
    Abbreviation call := (@call F X).

    Variable So : Type.

    Abbreviation Ty := (@Ty So).

    Variable ens_X : Ens X.

    Abbreviation In := (Ens_In ens_X).
    Abbreviation fvs := (@fvs F X ens_X).

    Variable env : Env X So.

    Abbreviation En := (Env_type env).
    Abbreviation MapsTo := (Env_MapsTo env).
    Abbreviation add := (Env_add env).

    Variable typ : F -> Ty.

    Abbreviation TypArgs := (@TypArgs F X So typ).

    Variables (Acc : F -> nat -> Prop)
      (Acc_arity : forall g i, Acc g i -> i < arity (typ g)).

    Variable gt1 : En -> relation call.

      Variables (f : F) (n : nat) (ls : Tes n).

      Inductive cc : En -> Te -> Ty -> Prop :=

      | cc_arg : forall E i (i1 : i < n) (i2 : i < arity (typ f)),
        cc E (Vnth ls i1) (Vnth (inputs (typ f)) i2)

      | cc_var : forall E x T,
        MapsTo x T E -> ~In x (fvs ls) -> cc E (Var x) T

      | cc_app : forall E t u A B,
        cc E t (A ~~> B) -> cc E u A -> cc E (App t u) B

      | cc_lam : forall E x A v B,
        ~In x (fvs ls) -> cc (add x A E) v B -> cc E (Lam x v) (A ~~> B)

      | cc_acc : forall E g (us : TypArgs g) i (hi : Acc g i),
        cc E (apps (Fun g) us) (Base (output_base (typ g))) ->
        cc E (Vnth us (Acc_arity hi)) (Vnth (inputs (typ g)) (Acc_arity hi))

      | cc_call : forall E g p (us : Tes p),
        0+p <= arity (typ g) -> gt1 E (mk_call f ls) (mk_call g us) ->
        (forall i (i1 : i < p) (i2 : i < arity (typ g)),
          cc E (Vnth us i1) (Vnth (inputs (typ g)) i2)) ->
        cc E (apps (Fun g) us) (output (typ g) p).

     Lemma cc_arg' E v V i (i1 : i < n) (i2 : i < arity (typ f)) :
        v = Vnth ls i1 -> V = Vnth (inputs (typ f)) i2 -> cc E v V.
Admitted.

     Lemma cc_acc' E v V g (us : TypArgs g) i (hi : Acc g i) :
        cc E (apps (Fun g) us) (Base (output_base (typ g))) ->
        v = Vnth us (Acc_arity hi) ->
        V = Vnth (inputs (typ g)) (Acc_arity hi) -> cc E v V.
Admitted.

     Lemma cc_call' E v V g p (us : Tes p) :
        0+p <= arity (typ g) -> gt1 E (mk_call f ls) (mk_call g us) ->
        (forall i (i1 : i < p) (i2 : i < arity (typ g)),
          cc E (Vnth us i1) (Vnth (inputs (typ g)) i2)) ->
        v = apps (Fun g) us -> V = output (typ g) p -> cc E v V.
Admitted.

  End cc.

Module Type CC_Struct.

  Declare Module Export BI : BI_Struct.
  Abbreviation cc := (@cc F X So ens_X env typ Acc Acc_arity).

End CC_Struct.

Module Comp (Export CC : CC_Struct)
  (Export CP : CP_Struct with Module L := CC.BI.ST.L).

  End Comp.

Module Termin (Export CC : CC_Struct)
  (Export RS : RS_Struct with Module L := CC.BI.ST.L).

  Module CP := CP_beta_eta_rewrite RS.

  End Termin.

Module SN_rewrite (Export CC : CC_Struct)
  (Export RS : RS_Struct with Module L := CC.BI.ST.L)
  (Export CO : DLQO_Struct with Module ST := CC.BI.ST).

  Module Import T := Termin CC RS.

  Module Export CI := LCompInt.Make CC.BI.ST CP BI.

  Definition gt := clos_aeq (supterm_acc!).

  Definition gt1 (E : En) := gt_call (gt_args_lex gt).

  Section termin.

    Variables
      (lhs_cc_rhs : forall l r (h : rule l r),
        cc gt1 (lhs_fun h) (lhs_args h)
        XMap.empty r (output (typ (lhs_fun h)) (lhs_nb_args h))).

    Lemma tr_sn_beta_eta_rewrite_aeq : forall E v V, E |- v ~: V -> SN R_aeq v.
Admitted.

  End termin.

End SN_rewrite.
Import CoLoR.Util.Logic.LogicUtil.
Import CoLoR.Util.Relation.OrdUtil.
Import CoLoR.Term.Lambda.LSimple.
Import Stdlib.Structures.Equalities.
Import Stdlib.micromega.Lia.

Inductive B : Type := Nat : B.

Module BTyp <: Typ.

  Definition t := B.

End BTyp.

Module BCmp <: Cmp.

  Include BTyp.

  Definition cmp (_ _ : B) := Eq.

  Lemma cmp_opp x y : cmp x y = CompOpp (cmp y x).
Admitted.

End BCmp.

Abbreviation TNat := (Base Nat).

Module Ty_Cmp := ST_Cmp BCmp.

Inductive F : Type :=
| Zero : F
| Succ : F
| Rec : Ty B -> F.

Definition prec f :=
  match f with
    | Zero => 0
    | Succ => 1
    | Rec _ => 2
  end.

Module FCmp <: Cmp.

  Definition t := F.

  Definition cmp f g :=
    match f, g with
      | Rec u, Rec v => Ty_Cmp.cmp u v
      | _, _ => Nat.compare (prec f) (prec g)
    end.

  Lemma cmp_opp f g : cmp f g = CompOpp (cmp g f).
Admitted.

End FCmp.

Module FCmpTransLeibniz <: CmpTransLeibniz.

  Include FCmp.

  Lemma cmp_eq x y : cmp x y = Eq -> x = y.
Admitted.

  Lemma cmp_lt_trans x y z : cmp x y = Lt -> cmp y z = Lt -> cmp x z = Lt.
Admitted.

End FCmpTransLeibniz.

Module FMOT := MOT_of_CmpTransLeibniz FCmpTransLeibniz.

Module FOrd := MOT_to_OT FMOT.

Module L_SystemT <: L_Struct.

  Definition F := F.

  Module FOrd := FOrd.

  Module Export V := NatVar.

  Abbreviation Te := (Te F X).
  Abbreviation Tes := (vector Te).

  Abbreviation Var := (@Var F X).
  Abbreviation Fun := (@Fun F X).
  Abbreviation fv := (@fv F X ens_X).

  Abbreviation FZero := (Fun Zero).
  Abbreviation FSucc := (Fun Succ).
  Definition FRec A := Fun (Rec A).

End L_SystemT.
Import VectorNotations.
Local Open Scope vector_scope.

Module RS_SystemT <: RS_Struct.

  Module Export L := L_SystemT.

  Definition u := Var 0.
  Definition v := Var 1.
  Definition n := Var 2.

  Inductive R : relation Te :=
  | rule_Rec_Zero : forall A, R (apps (Fun (Rec A)) [FZero; u; v]) u
  | rule_Rec_Succ : forall A, R (apps (Fun (Rec A)) [apps FSucc [n]; u; v])
                                (apps v [n; apps (FRec A) [n; u; v]]).

  Definition rule := R.

  Global Instance fv_rule : Proper (rule --> Subset) fv.
Admitted.

  Definition lhs_fun l r (_ : rule l r) :=
    match head l with
      | Def.Fun f => f
      | _ => Zero
    end.

  Definition lhs_nb_args l r (_ : rule l r) := 3.

  Definition lhs_args l r :=
    match l as l return forall h : rule l r, Tes (lhs_nb_args h) with
      | Def.App (Def.App (Def.App (Def.Fun _) l1) l2) l3 =>
        fun _ => [l1; l2; l3]
      | _ => fun _ => [FZero; FZero; FZero]
    end.

  Lemma lhs_ok l r ( h : rule l r) : l = apps (Fun (lhs_fun h)) (lhs_args h).
Admitted.

End RS_SystemT.

Module ST_SystemT <: ST_Struct.

  Module Export L := L_SystemT.

  Definition So := B.

  Abbreviation Ty := (Ty So).

  Definition typ f :=
    match f with
      | Zero => TNat
      | Succ => TNat ~~> TNat
      | Rec A => TNat ~~> A ~~> (TNat ~~> A ~~> A) ~~> A
    end.

  Module Export XMap := FMapAVL.Make XOrd.
  Abbreviation empty := (@XMap.empty Ty).
  Abbreviation add := (@XMap.add Ty).
  Abbreviation In := (@XMap.In Ty).
  Abbreviation MapsTo := (@XMap.MapsTo Ty).
  Abbreviation Equal := (@XMap.Equal Ty).
  Abbreviation env := (mk_Env empty add In MapsTo Equal).

End ST_SystemT.

Module DLQO_SystemT <: DLQO_Struct.

  Module Export ST := ST_SystemT.

  Definition C := F.

  Definition code (f : F) := f.

  Definition gtC := Rof gt prec.

  Lemma gtC_wf : WF gtC.
Admitted.

  Definition filter_arity (_ : F) := 1.

  Definition filter (_ : F) := [0].

End DLQO_SystemT.

Module BI_SystemT <: BI_Struct.

  Module Export ST := ST_SystemT.

  Inductive acc : F -> set nat :=
  | Acc_Succ : acc Succ 0.

  Definition Acc := acc.

  Lemma Acc_arity f i (hi : Acc f i) : i < arity (typ f).
Admitted.

End BI_SystemT.

Module CC_SystemT <: CC_Struct.

  Module Export BI := BI_SystemT.

  Abbreviation cc := (@cc F X So ens_X env typ Acc Acc_arity).

End CC_SystemT.

Module Export SN := SN_rewrite CC_SystemT RS_SystemT DLQO_SystemT.
Import CoLoR.Util.Relation.Lexico.
Import DLQO_SystemT.
Import RS_SystemT.

Lemma tr_sn_SystemT : forall E v V, E |- v ~: V -> SN R_aeq v.

Proof.
  apply tr_sn_beta_eta_rewrite_aeq.
  intros l r h; inversion h; subst;
    unfold lhs_fun, lhs_args, lhs_nb_args; simpl.

  eapply cc_arg' with (i:=1); refl.

  set (ls := [App FSucc n; u; v]).

  assert (hn : cc gt1 (Rec A) ls ST.empty n TNat).
  eapply cc_acc' with (g:=Succ) (us:=[n]) (i:=0); simpl; try refl.
  eapply cc_arg' with (i:=0); refl.

  assert (hv : cc gt1 (Rec A) ls ST.empty v (TNat ~~> A ~~> A)).
  eapply cc_arg' with (i:=2); simpl; refl.

  assert (hu : cc gt1 (Rec A) ls ST.empty u A).
  eapply cc_arg' with (i:=1); simpl; refl.

  eapply cc_app.
eapply cc_app.
apply hv.
hyp.
  eapply cc_call' with (g:=Rec A) (us:=[n; u; v]); try refl.
  simpl.
lia.
  unfold gt1, Def.gt_call, Rof, transp.
apply right_lex.
  unfold Def.gt_args_lex, Rof, lexv; simpl.
apply lex1.
apply opt_intro.
  unfold gt.
apply clos_aeq_intro_refl.
apply t_step.
  eapply stacc_intro' with (i:=0) (f:=Succ) (ts:=[n]); try refl.
