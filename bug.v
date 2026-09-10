
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/color" "CoLoR" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Bignums" "Bignums" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-top" "CoLoR.Term.Lambda.LSystemT") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 440 lines to 238 lines, then from 252 lines to 1285 lines, then from 1291 lines to 265 lines, then from 279 lines to 1202 lines, then from 1208 lines to 282 lines, then from 296 lines to 1147 lines, then from 1154 lines to 307 lines, then from 321 lines to 1199 lines, then from 1206 lines to 339 lines, then from 353 lines to 1333 lines, then from 1340 lines to 466 lines, then from 480 lines to 1237 lines, then from 1244 lines to 674 lines *)
(* coqc version 9.4+alpha compiled with OCaml 4.14.2
   coqtop version 9.4+alpha
   Expected coqc runtime on this file: 2.735 sec
   Expected coqc peak memory usage on this file: 757916.0 kb *)









Require Corelib.Init.Logic.
Require Corelib.extraction.Extraction.
Require Corelib.BinNums.IntDef.
Require Corelib.Classes.Equivalence.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Init.Ltac.
Require Corelib.BinNums.NatDef.
Require Corelib.Program.Utils.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Numbers.BinNums.
Require Corelib.Program.Tactics.
Require Corelib.Program.Basics.
Require Corelib.Setoids.Setoid.
Require Corelib.Classes.RelationClasses.
Require Corelib.Lists.ListDef.
Require Corelib.BinNums.PosDef.
Require Corelib.Program.Wf.
Require Corelib.Init.Wf.
Require Corelib.Classes.Morphisms.
Require Corelib.Init.Peano.
Require Corelib.Init.Byte.
Require Corelib.Init.Datatypes.
Require Corelib.Init.Sumbool.
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
Require Stdlib.BinNums.NatDef.
Require Stdlib.BinNums.PosDef.
Require Stdlib.Classes.Equivalence.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Init.Byte.
Require Stdlib.Init.Logic.
Require Stdlib.Init.Wf.
Require Stdlib.Init.Peano.
Require Stdlib.Init.Datatypes.
Require Stdlib.Init.Sumbool.
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
Require Stdlib.FSets.FMapAVL.
Require CoLoR.Util.Relation.OrdUtil.
Require CoLoR.Term.Lambda.LComp.
Import Stdlib.Classes.Morphisms.
Import Stdlib.Program.Basics.
Import CoLoR.Util.Relation.RelUtil.
Import CoLoR.Term.Lambda.LAlpha.




Module Type RS_Struct.

  Declare Module Export L : L_Struct.

  

  Parameter rule : relation Te.

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

  Fixpoint output_base (T : Ty) :=
    match T with
      | Base b => b
      | Arr _ T' => output_base T'
    end.

    Fixpoint occurs a T :=
      match T with
        | Base b => a = b
        | Arr A B => occurs a A \/ occurs a B
      end.

    Variable a : So.

    Fixpoint pos T :=
      match T with
        | Base _ => True
        | Arr A B => neg A /\ pos B
      end

    with neg T :=
      match T with
        | Base b => b <> a
        | Arr A B => pos A /\ neg B
      end.

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

End typing.

Module Type ST_Struct.

  Declare Module Export L : L_Struct.

End ST_Struct.

Module Make (Export ST : ST_Struct).

End Make.

End LSimple.
Module Export CoLoR_DOT_Term_DOT_Lambda_DOT_LSimple.
Module Export CoLoR.
Module Export Term.
Module Export Lambda.
Module Export LSimple.
Include CoLoR_DOT_Term_DOT_Lambda_DOT_LSimple_WRAPPED.LSimple.
End LSimple.

End Lambda.

End Term.

End CoLoR.

End CoLoR_DOT_Term_DOT_Lambda_DOT_LSimple.
Module Export LCall.

Module Type DLQO_Struct.

  Declare Module Export ST : ST_Struct.

End DLQO_Struct.

Module Make (Export ST : ST_Struct).

End Make.

Module Lex (Export CO : DLQO_Struct).

End Lex.

End LCall.
Module Export CoLoR_DOT_Term_DOT_Lambda_DOT_LCall.
Module Export CoLoR.
Module Export Term.
Module Export Lambda.
Module Export LCall.
End LCall.

End Lambda.

End Term.

End CoLoR.

End CoLoR_DOT_Term_DOT_Lambda_DOT_LCall.
Module Export LCompSimple.
Export CoLoR.Term.Lambda.LSimple.
Export CoLoR.Term.Lambda.LComp.

Module Make (Export ST : ST_Struct)
  (Export CP : CP_Struct with Module L := ST.L).

End Make.

Module SN_beta_eta (Export ST : ST_Struct).
End SN_beta_eta.

End LCompSimple.
Module Export CoLoR_DOT_Term_DOT_Lambda_DOT_LCompSimple.
Module Export CoLoR.
Module Export Term.
Module Export Lambda.
Module Export LCompSimple.
End LCompSimple.

End Lambda.

End Term.

End CoLoR.

End CoLoR_DOT_Term_DOT_Lambda_DOT_LCompSimple.

Module Type BI_Struct.

  Declare Module Export ST : ST_Struct.

End BI_Struct.

Module Make (Export ST : ST_Struct)
  (Export CP : CP_Struct with Module L := ST.L)
  (Export BI : BI_Struct with Module ST := ST).

End Make.
Module Export CoLoR.
Module Export Term.
Module Export Lambda.
Module Export LCompInt.
End LCompInt.
Import CoLoR.Term.Lambda.LCompSimple.
Import CoLoR.Term.Lambda.LCall.
Import CoLoR.Term.Lambda.LCompRewrite.

Module Type CC_Struct.

  Declare Module Export BI : BI_Struct.

End CC_Struct.

Module Comp (Export CC : CC_Struct)
  (Export CP : CP_Struct with Module L := CC.BI.ST.L).

End Comp.

Module Termin (Export CC : CC_Struct)
  (Export RS : RS_Struct with Module L := CC.BI.ST.L).

End Termin.

Module SN_rewrite (Export CC : CC_Struct)
  (Export RS : RS_Struct with Module L := CC.BI.ST.L)
  (Export CO : DLQO_Struct with Module ST := CC.BI.ST).

End SN_rewrite.
Set Implicit Arguments.
Import CoLoR.Util.Relation.OrdUtil.
Import CoLoR.Term.Lambda.LSimple.
Import CoLoR.Util.Relation.RelUtil.
Import Stdlib.Structures.Equalities.

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
Import CoLoR.Util.Vector.VecUtil.

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
Import CoLoR.Term.Lambda.LCompRewrite.
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

  Definition typ f :=
    match f with
      | Zero => TNat
      | Succ => TNat ~~> TNat
      | Rec A => TNat ~~> A ~~> (TNat ~~> A ~~> A) ~~> A
    end.

  Module Export XMap := FMapAVL.Make XOrd.

End ST_SystemT.
Import CoLoR.Util.Relation.SN.
Import CoLoR.Term.Lambda.LCall.

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
Import CoLoR.Util.Logic.EqUtil.

Module BOrdWF_MOT <: MiniOrderedType.

  Include BTyp.

  Include LeibnizFacts BTyp.
Definition lt : relation t.
Admitted.

  Global Instance lt_trans : Transitive lt.
Admitted.

  Lemma lt_not_eq x y : lt x y -> x <> y.
Admitted.

  Lemma compare x y : Compare lt eq x y.
Admitted.

End BOrdWF_MOT.

Module BOrdWF := MOT_to_OT BOrdWF_MOT.
Import CoLoR.Term.Lambda.LCompInt.

Module BI_SystemT <: BI_Struct.

  Module Export ST := ST_SystemT.

  Module Export BOrd := BOrdWF.

  Infix "<B" := lt (at level 70).

  Lemma ltB_wf : well_founded lt.
Admitted.

  Import CoLoR.Util.Set_.SetUtil.

  Inductive acc : F -> set nat :=
  | Acc_Succ : acc Succ 0.

  Definition Acc := acc.

  Lemma Acc_arity f i (hi : Acc f i) : i < arity (typ f).
Admitted.

  Lemma Acc_ok f i (hi : Acc f i) a :
    occurs a (Vnth (inputs (typ f)) (Acc_arity hi)) ->
    a <B output_base (typ f)
    \/ (a = output_base (typ f)
      /\ pos a (Vnth (inputs (typ f)) (Acc_arity hi))).
Admitted.

End BI_SystemT.

Module CC_SystemT <: CC_Struct.

  Module Export BI := BI_SystemT.

End CC_SystemT.

Module Export SN := SN_rewrite CC_SystemT RS_SystemT DLQO_SystemT.
