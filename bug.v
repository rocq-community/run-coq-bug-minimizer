
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/color" "CoLoR" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Bignums" "Bignums" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 440 lines to 291 lines, then from 305 lines to 1337 lines, then from 1343 lines to 423 lines, then from 437 lines to 1360 lines, then from 1366 lines to 499 lines, then from 513 lines to 1364 lines, then from 1371 lines to 834 lines, then from 835 lines to 431 lines, then from 445 lines to 1323 lines, then from 1330 lines to 512 lines, then from 526 lines to 1506 lines, then from 1513 lines to 682 lines, then from 696 lines to 1453 lines, then from 1460 lines to 1036 lines, then from 1026 lines to 727 lines, then from 741 lines to 1698 lines, then from 1705 lines to 808 lines, then from 822 lines to 1389 lines, then from 1396 lines to 788 lines, then from 802 lines to 1386 lines, then from 1393 lines to 840 lines, then from 854 lines to 2796 lines, then from 2803 lines to 1435 lines, then from 1371 lines to 825 lines, then from 839 lines to 3375 lines, then from 3382 lines to 909 lines, then from 923 lines to 2229 lines, then from 2236 lines to 1059 lines, then from 1073 lines to 1532 lines, then from 1538 lines to 1371 lines, then from 1363 lines to 1032 lines, then from 1046 lines to 1840 lines, then from 1847 lines to 1081 lines, then from 1095 lines to 2067 lines, then from 2074 lines to 1193 lines, then from 1207 lines to 2288 lines, then from 2295 lines to 1209 lines, then from 1223 lines to 1891 lines, then from 1898 lines to 1228 lines, then from 1242 lines to 4023 lines, then from 4030 lines to 1295 lines, then from 1309 lines to 1576 lines, then from 1583 lines to 1311 lines, then from 1325 lines to 2168 lines, then from 2175 lines to 1611 lines *)
(* coqc version 9.4+alpha compiled with OCaml 5.4.1
   coqtop version 9.4+alpha
   Expected coqc runtime on this file: 2.173 sec
   Expected coqc peak memory usage on this file: 882516.0 kb *)









Require Corelib.Init.Byte.
Require Corelib.Init.Wf.
Require Corelib.Program.Tactics.
Require Corelib.Program.Wf.
Require Corelib.Program.Utils.
Require Corelib.Classes.Morphisms.
Require Corelib.Lists.ListDef.
Require Corelib.Init.Sumbool.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.BinNums.IntDef.
Require Corelib.Classes.RelationClasses.
Require Corelib.BinNums.PosDef.
Require Corelib.BinNums.NatDef.
Require Corelib.Init.Ltac.
Require Corelib.Numbers.BinNums.
Require Corelib.Init.Datatypes.
Require Corelib.Program.Basics.
Require Corelib.Setoids.Setoid.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Init.Peano.
Require Stdlib.Classes.DecidableClass.
Require Stdlib.Logic.Decidable.
Require Stdlib.Logic.EqdepFacts.
Require Stdlib.Logic.FunctionalExtensionality.
Require Stdlib.Logic.HLevelsBase.
Require Stdlib.Program.Syntax.
Require Stdlib.Sets.Ensembles.
Require Stdlib.micromega.ZifyClasses.
Require Stdlib.setoid_ring.Algebra_syntax.
Require Stdlib.BinNums.IntDef.
Require Stdlib.BinNums.NatDef.
Require Stdlib.BinNums.PosDef.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Init.Byte.
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
Require CoLoR.Util.Logic.LogicUtil.
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
Require Stdlib.Classes.RelationPairs.
Require Stdlib.Program.WfExtensionality.
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
Require Stdlib.Arith.Wf_nat.
Require Stdlib.Lists.List.
Require Stdlib.Arith.Compare.
Require Stdlib.Arith.Euclid.
Require Stdlib.micromega.Refl.
Require Stdlib.micromega.Tauto.
Require Stdlib.Lists.ListTactics.
Require Stdlib.PArith.BinPos.
Require Stdlib.Sorting.Sorted.
Require Stdlib.Arith.Arith_base.
Require Stdlib.PArith.POrderedType.
Require Stdlib.PArith.Pnat.
Require Stdlib.Sorting.SetoidList.
Require Stdlib.Structures.DecidableType.
Require Stdlib.Structures.OrderedType.
Require Stdlib.Vectors.Fin.
Require Stdlib.MSets.MSetInterface.
Require Stdlib.NArith.BinNatDef.
Require Stdlib.PArith.PArith.
Require Stdlib.Structures.OrdersAlt.
Require Stdlib.Vectors.VectorDef.
Require Stdlib.FSets.FMapInterface.
Require Stdlib.FSets.FSetInterface.
Require Stdlib.NArith.BinNat.
Require Stdlib.FSets.FMapList.
Require Stdlib.NArith.Ndiv_def.
Require Stdlib.NArith.Ngcd_def.
Require Stdlib.NArith.Nsqrt_def.
Require Stdlib.setoid_ring.Ring_theory.
Require Stdlib.NArith.Nnat.
Require Stdlib.setoid_ring.BinList.
Require Stdlib.ZArith.BinIntDef.
Require Stdlib.Vectors.VectorSpec.
Require Stdlib.NArith.NArith_base.
Require Stdlib.Strings.Byte.
Require Stdlib.Vectors.VectorEq.
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
Require Stdlib.ZArith.Zmin.
Require Stdlib.ZArith.Zminmax.
Require Stdlib.ZArith.Zmisc.
Require Stdlib.micromega.EnvRing.
Require Stdlib.omega.OmegaLemmas.
Require Stdlib.micromega.ZifyInst.
Require Stdlib.setoid_ring.Ncring_polynom.
Require Stdlib.setoid_ring.Ring_tac.
Require Stdlib.ZArith.ZArith_dec.
Require Stdlib.micromega.Zify.
Require Stdlib.setoid_ring.Ncring_initial.
Require Stdlib.setoid_ring.Ring_base.
Require Stdlib.ZArith.Wf_Z.
Require Stdlib.omega.PreOmega.
Require Stdlib.setoid_ring.Ncring_tac.
Require Stdlib.setoid_ring.Ring.
Require Stdlib.ZArith.Zbool.
Require Stdlib.micromega.OrderedRing.
Require Stdlib.setoid_ring.NArithRing.
Require Stdlib.setoid_ring.ZArithRing.
Require Stdlib.ZArith.Zabs.
Require Stdlib.setoid_ring.ArithRing.
Require Stdlib.setoid_ring.Cring.
Require Stdlib.setoid_ring.Integral_domain.
Require Stdlib.nsatz.NsatzTactic.
Require Stdlib.NArith.NArith.
Require Stdlib.ZArith.Zhints.
Require Stdlib.micromega.RingMicromega.
Require Stdlib.Arith.Arith.
Require Stdlib.ZArith.ZArith_base.
Require Stdlib.micromega.ZMicromega.
Require Stdlib.MSets.MSetGenTree.
Require Stdlib.MSets.MSetAVL.
Require Stdlib.ZArith.Zcomplements.
Require Stdlib.ZArith.Zdiv.
Require Stdlib.ZArith.Zpower.
Require Stdlib.micromega.Lia.
Require CoLoR.Util.Relation.RelUtil.
Require Stdlib.btauto.Algebra.
Require Stdlib.btauto.Reflect.
Require Stdlib.Structures.OrderedTypeEx.
Require Stdlib.btauto.Btauto.
Require Stdlib.Structures.DecidableTypeEx.
Require Stdlib.FSets.FSetFacts.
Require Stdlib.ZArith.ZNsatz.
Require Stdlib.ZArith.Zbitwise.
Require Stdlib.MSets.MSetFacts.
Require Stdlib.micromega.ZArith_hints.
Require Stdlib.FSets.FSetCompat.
Require Stdlib.ZArith.Zdivisibility.
Require Stdlib.ZArith.Zcong.
Require Stdlib.ZArith.Zdiv_facts.
Require Stdlib.ZArith.ZModOffset.
Require Stdlib.ZArith.Znumtheory.
Require Stdlib.ZArith.ZArith.
Require CoLoR.Util.Bool.BoolUtil.
Require CoLoR.Util.Logic.EqUtil.
Require Stdlib.FSets.FMapAVL.

Module Export AdmitTactic.
Module Export NatUtil.
Export Stdlib.Arith.Arith.




Section iter.

End iter.

Section iter_prop.

End iter_prop.




Section Interval_list.

End Interval_list.




Section mon.

End mon.




Section smallest.

  Section smallest_aux.

  End smallest_aux.

End smallest.

End NatUtil.
Module Export CoLoR_DOT_Util_DOT_Nat_DOT_NatUtil.
Module Export CoLoR.
Module Export Util.
Module Export Nat.
Module Export NatUtil.
End NatUtil.

End Nat.

End Util.

End CoLoR.

End CoLoR_DOT_Util_DOT_Nat_DOT_NatUtil.
Module Export FSetAVL.
Import Stdlib.FSets.FSetInterface.
Import Stdlib.ZArith.Int.

Module IntMake (I:Int)(X: OrderedType) <: S with Module E := X.
 Module X' := OrdersAlt.Update_OT X.
 Module MSet := MSetAVL.IntMake I X'.
 Include FSetCompat.Backport_Sets X MSet.
End IntMake.

Module Make (X: OrderedType) <: S with Module E := X
 :=IntMake(Z_as_Int)(X).

End FSetAVL.

Set Implicit Arguments.
Import Stdlib.Program.Program.
Import CoLoR.Util.Nat.NatUtil.

Abbreviation vector := Vector.t.
Abbreviation Vnil := Vector.nil.
Abbreviation Vcons := Vector.cons.

Arguments Vnil {A}.
Arguments Vcons [A] _ [n] _.

Module Export VectorNotations.
  Notation " [ x ; .. ; y ] " := (Vcons x .. (Vcons y Vnil) ..)
    : vector_scope.
End VectorNotations.

Section Vnth.

  Variable A : Type.

  Program Fixpoint Vnth n (v : vector A n) : forall i, i < n -> A :=
    match v with
      | Vnil => fun i ip => !
      | Vcons x v' => fun i =>
        match i with
          | 0 => fun _ => x
          | S j => fun H => Vnth v' (i:=j) _
        end
    end.
Admit Obligations.

End Vnth.

Section Vopt_filter.

  Variable (A : Type).

  Fixpoint Vopt_filter n (ks : vector nat n) p (xs : vector A p) :=
    match ks in vector _ n return vector (option A) n with
      | Vnil => Vnil
      | Vcons k ks' =>
        Vcons (match lt_dec k p with left h => Some (Vnth xs h) | _ => None end)
          (Vopt_filter ks' xs)
    end.

End Vopt_filter.

Section first_position_eq.

End first_position_eq.
Module Export CoLoR_DOT_Util_DOT_Vector_DOT_VecUtil.
Module Export CoLoR.
Module Export Util.
Module Export Vector.
Module Export VecUtil.
End VecUtil.

End Vector.

End Util.

End CoLoR.

End CoLoR_DOT_Util_DOT_Vector_DOT_VecUtil.

Section S.

  Context {A : Type}.

  Definition set := A -> Prop.

End S.

Arguments set : clear implicits.

Section image.

End image.
Module Export CoLoR.
Module Export Util.
Module Export Set_.
Module Export SetUtil.
End SetUtil.
Module Export FMapUtil.

Module Make (Export XMap : FMapInterface.S).

  Arguments empty {elt}.

  Module Domain (XSet : FSetInterface.S with Module E := XMap.E).

  End Domain.

End Make.
Module Export CoLoR_DOT_Util_DOT_FMap_DOT_FMapUtil.
Module Export FMapUtil.
End FMapUtil.

End CoLoR_DOT_Util_DOT_FMap_DOT_FMapUtil.
Module Export SN.

Set Implicit Arguments.
Import CoLoR.Util.Relation.RelUtil.

Section sn.

  Variable (A : Type) (R : rel A).

  Inductive SN x : Prop := SN_intro : (forall y, R x y -> SN y) -> SN x.

End sn.

Section notIS.

End notIS.

Section acc.

End acc.

Section acc_transp.

End acc_transp.

Section inverse.

End inverse.

Section rel_inverse.

End rel_inverse.

Section tc.

End tc.

Section symprod.

End symprod.

Section compose.

End compose.

Section compat.

End compat.

Section absorb.

End absorb.

Section WF_mod_rev.

End WF_mod_rev.

Section modulo.

End modulo.

Section commut.

End commut.

Section commut_modulo.

End commut_modulo.

Section iter.

End iter.

Section path.

End path.

Section wf_mod_shift.

End wf_mod_shift.

Section wf_rel_mod.

End wf_rel_mod.

Section wf_rel_mod_simpl.

End wf_rel_mod_simpl.

Section ltof.

End ltof.

Section restrict.

End restrict.

End SN.
Module Export CoLoR_DOT_Util_DOT_Relation_DOT_SN.
Module Export CoLoR.
Module Export Util.
Module Export Relation.
Module Export SN.
End SN.

End Relation.

End Util.

End CoLoR.

End CoLoR_DOT_Util_DOT_Relation_DOT_SN.
Module Export Lexico.

Set Implicit Arguments.
Import CoLoR.Util.Vector.VecUtil.
Import CoLoR.Util.Relation.RelUtil.

Section lex.

  Variables (A B : Type) (gtA eqA : relation A) (gtB : relation B).

  Inductive lex : relation (prod A B) :=
  | lex1 a a' b b' : gtA a a' -> lex (a,b) (a',b')
  | lex2 a a' b b' : eqA a a' -> gtB b b' -> lex (a,b) (a',b').

End lex.

Fixpoint prodn n A : Type :=
  match n with
    | 0 => unit
    | S n' => prod A (prodn n' A)
  end.

Fixpoint lexn {n A} (eqA gtA : relation A) :=
  match n as n return relation (prodn n A) with
    | 0 => empty_rel
    | S n' => lex gtA eqA (lexn eqA gtA)
  end.

Fixpoint prod_of_vec n A (v : vector A n) :=
  match v in vector _ n return prodn n A with
    | Vnil => tt
    | Vcons x v' => (x, prod_of_vec v')
  end.
Definition lexv {n A} (eq gt : relation A) : relation (vector A n).
exact (fun v w => lexn eq gt (prod_of_vec v) (prod_of_vec w)).
Defined.

End Lexico.
Module Export CoLoR.
Module Export Util.
Module Export Relation.
Module Export Lexico.
End Lexico.

End Relation.

End Util.

End CoLoR.
Import CoLoR.Util.Logic.EqUtil.
Export Stdlib.Structures.OrderedType.

Module Type Cmp.

  Parameter t : Type.

  Parameter cmp : t -> t -> comparison.

End Cmp.

Module Type CmpTrans.

End CmpTrans.

Module Type CmpTransLeibniz.

  Include Cmp.

End CmpTransLeibniz.

Module CmpTrans_of_CmpTransLeibniz (CTL : CmpTransLeibniz) <: CmpTrans.

  Include CTL.

End CmpTrans_of_CmpTransLeibniz.

Module MOT_of_CmpTransLeibniz (Import CTL : CmpTransLeibniz) <: MiniOrderedType.

  Definition t := t.

  Include LeibnizFacts CTL.
Definition lt : relation t.
Admitted.

  Global Instance lt_trans : Transitive lt.
Admitted.

  Lemma lt_not_eq x y : lt x y -> x <> y.
Admitted.

  Lemma compare x y : Compare lt eq x y.
Admitted.

End MOT_of_CmpTransLeibniz.

Set Implicit Arguments.
Import CoLoR.Util.Vector.VecUtil.

Module Export Def.

Section term.

  Variables F X : Type.

  Inductive Te : Type :=
  | Var (x : X)
  | Fun (f : F)
  | App (u v : Te)
  | Lam (x : X) (u : Te).

    Variables
      (eq_fun_dec : forall f g : F, {f=g}+{~f=g})
      (eq_var_dec : forall x y : X, {x=y}+{~x=y}).

    Lemma eq_term_dec : forall u v : Te, {u=v}+{~u=v}.
Admitted.

  Abbreviation Tes := (vector Te).

  Fixpoint apps {n} t (us : Tes n) :=
    match us with
      | Vnil => t
      | Vcons u us' => apps (App t u) us'
    end.

  Fixpoint head (t : Te) :=
    match t with
      | App u _ => head u
      | _ => t
    end.

  Record Ens := mk_Ens {
    Ens_type : Type;
    Ens_empty : Ens_type;
    Ens_singleton : X -> Ens_type;
    Ens_add : X -> Ens_type -> Ens_type;
    Ens_union : Ens_type -> Ens_type -> Ens_type;
    Ens_remove : X -> Ens_type -> Ens_type;
    Ens_diff : Ens_type -> Ens_type -> Ens_type;
    Ens_In : X -> Ens_type -> Prop;
    Ens_mem : X -> Ens_type -> bool;
    Ens_fold : forall A, (X -> A -> A) -> Ens_type -> A -> A }.

    Variable ens_X : Ens.

    Abbreviation empty := (Ens_empty ens_X).
    Abbreviation singleton := (Ens_singleton ens_X).
    Abbreviation union := (Ens_union ens_X).
    Abbreviation remove := (Ens_remove ens_X).

    Fixpoint fv (t : Te) :=
      match t with
        | Var x => singleton x
        | Fun _ => empty
        | App u v => union (fv u) (fv v)
        | Lam x u => remove x (fv u)
      end.

    Fixpoint fvs {n} (ts : Tes n) :=
      match ts with
        | Vnil => empty
        | Vcons t ts' => union (fv t) (fvs ts')
      end.

    Variable R : relation Te.

    Inductive clos_mon : relation Te :=
    | m_step : forall u v, R u v -> clos_mon u v
    | m_app_l : forall v u u', clos_mon u u' -> clos_mon (App u v) (App u' v)
    | m_app_r : forall u v v', clos_mon v v' -> clos_mon (App u v) (App u v')
    | m_lam : forall x u u', clos_mon u u' -> clos_mon (Lam x u) (Lam x u').

End term.

Arguments Var [F X] _.
Arguments Fun [F X] _.

Module Type Var.

  Parameter X : Type.

  Declare Module Export XOrd : OrderedType
  with Definition t := X
  with Definition eq := @Logic.eq X.

  Declare Module Export XSet : FSetInterface.S with Module E := XOrd.

  Abbreviation ens_X :=
    (@mk_Ens X XSet.t empty singleton add union remove diff In mem fold).

  Parameter var_notin : XSet.t -> X.

End Var.

Module NatVar <: Var.

  Definition X := nat.

  Module XOrd := OrderedTypeEx.Nat_as_OT.

  Module Export XSet := FSetAVL.Make XOrd.

  Abbreviation ens_X :=
    (@mk_Ens X XSet.t empty singleton add union remove diff In mem fold).

  Definition var_notin xs :=
    match max_elt xs with
      | Some k => S k
      | None => 0
    end.

End NatVar.

Module Type L_Struct.

  Parameter F : Type.

  Declare Module Export FOrd : OrderedType
  with Definition t := F
  with Definition eq := @Logic.eq F.

  Declare Module Export V : Var.

  Abbreviation Te := (Te F X).
  Abbreviation Tes := (vector Te).

End L_Struct.

Module Make (Export L : L_Struct).

    End Make.
Module Export LSubs.
Import CoLoR.Util.Relation.RelUtil.

  Section subs.

    Variables (F X : Type)
      (eq_fun_dec : forall f g : F, {f=g}+{~f=g})
      (eq_var_dec : forall x y : X, {x=y}+{~x=y}).

    Abbreviation Te := (@Te F X).
    Abbreviation Var := (@Var F X).
    Abbreviation eq_term_dec := (@eq_term_dec F X eq_fun_dec eq_var_dec).
    Abbreviation beq_term := (bool_of_rel eq_term_dec).

    Variable ens_X : Ens X.

    Abbreviation empty := (Ens_empty ens_X).
    Abbreviation mem := (Ens_mem ens_X).
    Abbreviation add := (Ens_add ens_X).
    Abbreviation union := (Ens_union ens_X).
    Abbreviation remove := (Ens_remove ens_X).
    Abbreviation fold := (Ens_fold ens_X).

    Abbreviation fv := (@fv F X ens_X).

    Variable var_notin : Ens_type ens_X -> X.

    Definition id := fun y => Var y.

    Definition update x (t : Te) s := fun y =>
      match eq_var_dec y x with
        | left _ => t
        | _ => s y
      end.

    Definition single x t := update x t id.

    Definition domain_fun s x xs :=
      if beq_term (s x) (Var x) then xs else add x xs.

    Definition domain xs s := fold (domain_fun s) xs empty.

    Definition fvcod_fun s (x : X) xs := union (fv (s x)) xs.

    Definition fvcod xs s := fold (fvcod_fun s) xs empty.

    Definition fvcodom xs s := fvcod (domain xs s) s.

    Definition var x u s :=
      let xs := fvcodom (remove x (fv u)) s in
        if mem x xs then var_notin (union (fv u) xs) else x.

    Fixpoint subs s (t : Te) :=
      match t with
        | Def.Var x => s x
        | Fun f => t
        | App u v => App (subs s u) (subs s v)
        | Lam x u =>
          let x' := var x u s in Lam x' (subs (update x (Var x') s) u)
      end.

    Definition rename y z := subs (single y (Var z)).

    Inductive clos_subs R : rel Te :=
    | subs_step : forall x y s, R x y -> clos_subs R (subs s x) (subs s y).

  End subs.

Module Make (Export L : L_Struct).
  Abbreviation clos_subs :=
    (@clos_subs F X FOrd.eq_dec XOrd.eq_dec ens_X var_notin).

  End Make.

End LSubs.
Module Export LAlpha.
Import CoLoR.Util.Relation.RelUtil.

  Section aeq.

    Variables (F X : Type)
      (eq_fun_dec : forall f g : F, {f=g}+{~f=g})
      (eq_var_dec : forall x y : X, {x=y}+{~x=y}).

    Abbreviation Te := (@Te F X).

    Variable ens_X : Ens X.

    Abbreviation In := (Ens_In ens_X).
    Abbreviation fv := (@fv F X ens_X).

    Variable var_notin : Ens_type ens_X -> X.

    Abbreviation rename := (@rename F X eq_fun_dec eq_var_dec ens_X var_notin).

    Inductive aeq : relation Te :=
    | aeq_refl : forall u, aeq u u
    | aeq_sym : forall u v, aeq u v -> aeq v u
    | aeq_trans : forall u v w, aeq u v -> aeq v w -> aeq u w
    | aeq_app_l : forall u u' v, aeq u u' -> aeq (App u v) (App u' v)
    | aeq_app_r : forall u v v', aeq v v' -> aeq (App u v) (App u v')
    | aeq_lam : forall x u u', aeq u u' -> aeq (Lam x u) (Lam x u')
    | aeq_alpha : forall x u y,
      ~In y (fv u) -> aeq (Lam x u) (Lam y (rename x y u)).

    Infix "~~" := aeq (at level 70).

      Variable R : relation Te.

      Inductive clos_aeq : relation Te :=
      | clos_aeq_intro :
        forall u u' v v', u ~~ u' -> v ~~ v' -> R u' v' -> clos_aeq u v.

  End aeq.

Module Make (Export L : L_Struct).

  Module Export S := LSubs.Make L.
  Abbreviation clos_aeq := (@clos_aeq F X FOrd.eq_dec XOrd.eq_dec ens_X var_notin).

  Lemma clos_aeq_intro_refl (R : rel Te) t u : R t u -> clos_aeq R t u.
Admitted.

    End Make.

End LAlpha.
Module Export LBeta.

Section beta_top.

  Variables F X : Type.

  Abbreviation Te := (@Te F X).

  Variable eq_fun_dec : forall f g : F, {f=g}+{~f=g}.
  Variable eq_var_dec : forall x y : X, {x=y}+{~x=y}.

  Variable ens_X : Ens X.

  Variable var_notin : Ens_type ens_X -> X.

  Abbreviation single := (@single F X eq_var_dec).
  Abbreviation subs := (@subs F X eq_fun_dec eq_var_dec ens_X var_notin).

  Inductive beta_top : relation Te :=
  | beta_top_intro : forall x u v,
    beta_top (App (Lam x u) v) (subs (single x v) u).

End beta_top.

Module Make (Export L : L_Struct).

  Module Export A := LAlpha.Make L.

  Abbreviation beta_top := (@beta_top F X FOrd.eq_dec XOrd.eq_dec ens_X var_notin).

End Make.

End LBeta.
Module Export LEta.

Section eta_top.

  Variables F X : Type.

  Abbreviation Te := (@Te F X).

  Variable ens_X : Ens X.

  Abbreviation In := (@Ens_In X ens_X).
  Abbreviation fv := (@fv F X ens_X).

  Inductive eta_top : relation Te :=
  | eta_top_intro : forall x u,
      ~In x (fv u) -> eta_top (Lam x (App u (Var x))) u.

End eta_top.

Module Make (Export L : L_Struct).

  Abbreviation eta_top := (@eta_top F X ens_X).

End Make.

End LEta.
Module Export LComp.

Module Type CP_Struct.

  Declare Module Export L : L_Struct.

End CP_Struct.

Module CP_beta_eta (L : L_Struct) <: CP_Struct.

  Module L := L.

End CP_beta_eta.

Module Make (Export CP : CP_Struct).

End Make.
Module Export LCompRewrite.

Set Implicit Arguments.
Import CoLoR.Util.Relation.RelUtil.

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

  Abbreviation R := (clos_mon Rh).

  Abbreviation R_aeq := (clos_aeq R).

End CP_beta_eta_rewrite.

End LCompRewrite.
Module Export LSimple.

Set Implicit Arguments.
Import CoLoR.Util.Vector.VecUtil.

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

End ST_Cmp.

Module ST_CmpTransLeibniz (Export BCmpTransLeibniz : CmpTransLeibniz)
  <: CmpTransLeibniz.

  Module C := ST_Cmp BCmpTransLeibniz.

  Include C.

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

  End Lex.
Module Export LCompSimple.

  Module Make (Export ST : ST_Struct)
  (Export CP : CP_Struct with Module L := ST.L).
  Module Export T := LSimple.Make ST.

  End Make.

Module SN_beta_eta (Export ST : ST_Struct).
End SN_beta_eta.
Module Export LCompInt.
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
Import CoLoR.Util.Relation.SN.

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
Import Stdlib.Structures.Equalities.
Import Stdlib.micromega.Lia.

Inductive B : Type := Nat : B.

Module BTyp <: Typ.

  Definition t := B.

End BTyp.

Module BCmp <: Cmp.

  Include BTyp.

  Definition cmp (_ _ : B) := Eq.

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

End FCmp.

Module FCmpTransLeibniz <: CmpTransLeibniz.

  Include FCmp.

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
