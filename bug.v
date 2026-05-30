
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/utils/theories" "MetaRocq.Utils" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/common/theories" "MetaRocq.Common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/pcuic/theories" "MetaRocq.PCUIC" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/safechecker-plugin/theories" "MetaRocq.SafeCheckerPlugin" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-pcuic/theories" "MetaRocq.TemplatePCUIC" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq/theories" "MetaRocq.Template" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/safechecker/theories" "MetaRocq.SafeChecker" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/erasure/theories" "MetaRocq.Erasure" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Equations" "Equations" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/ExtLib" "ExtLib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-I" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/template-rocq" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 716 lines to 63 lines, then from 77 lines to 1134 lines, then from 1139 lines to 110 lines, then from 124 lines to 932 lines, then from 938 lines to 159 lines, then from 173 lines to 795 lines, then from 798 lines to 229 lines, then from 240 lines to 1159 lines, then from 1166 lines to 620 lines, then from 627 lines to 258 lines, then from 270 lines to 3388 lines, then from 3354 lines to 377 lines, then from 389 lines to 1585 lines, then from 1588 lines to 611 lines, then from 620 lines to 352 lines, then from 364 lines to 1215 lines, then from 1222 lines to 373 lines, then from 385 lines to 757 lines, then from 764 lines to 380 lines, then from 392 lines to 926 lines, then from 932 lines to 399 lines, then from 411 lines to 694 lines, then from 701 lines to 418 lines, then from 429 lines to 2198 lines, then from 2198 lines to 479 lines, then from 491 lines to 858 lines, then from 865 lines to 501 lines, then from 512 lines to 1214 lines, then from 1221 lines to 580 lines, then from 591 lines to 905 lines, then from 912 lines to 582 lines, then from 594 lines to 861 lines, then from 868 lines to 595 lines, then from 607 lines to 844 lines, then from 851 lines to 604 lines, then from 616 lines to 786 lines, then from 793 lines to 635 lines, then from 647 lines to 2282 lines, then from 2246 lines to 998 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 1.007 sec
   Expected coqc peak memory usage on this file: 673840.0 kb *)









Require Corelib.Init.Sumbool.
Require Corelib.Program.Wf.
Require Corelib.extraction.Extraction.
Require Corelib.Init.Byte.
Require Corelib.ssr.ssreflect.
Require Corelib.Classes.CRelationClasses.
Require Corelib.Program.Tactics.
Require Corelib.Program.Basics.
Require Corelib.Lists.ListDef.
Require Corelib.BinNums.IntDef.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Setoids.Setoid.
Require Corelib.BinNums.PosDef.
Require Corelib.Classes.Morphisms.
Require Corelib.Init.Ltac.
Require Corelib.BinNums.NatDef.
Require Corelib.Floats.FloatOps.
Require Corelib.Classes.RelationClasses.
Require Corelib.Strings.PrimString.
Require Corelib.Numbers.BinNums.
Require Corelib.Classes.Morphisms_Prop.
Require Stdlib.Classes.DecidableClass.
Require Stdlib.Logic.Decidable.
Require Stdlib.Logic.EqdepFacts.
Require Stdlib.Logic.FunctionalExtensionality.
Require Stdlib.Logic.HLevelsBase.
Require Stdlib.Sets.Relations_1.
Require Stdlib.Wellfounded.Inverse_Image.
Require Stdlib.micromega.ZifyClasses.
Require Equations.Init.
Require Stdlib.BinNums.NatDef.
Require Stdlib.BinNums.IntDef.
Require Stdlib.BinNums.PosDef.
Require Stdlib.Classes.CRelationClasses.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Init.Sumbool.
Require Stdlib.Init.Byte.
Require Stdlib.Lists.ListDef.
Require Stdlib.Logic.Eqdep_dec.
Require Stdlib.Numbers.BinNums.
Require Stdlib.Program.Wf.
Require Stdlib.Program.Tactics.
Require Stdlib.Program.Basics.
Require Stdlib.Relations.Relation_Definitions.
Require Stdlib.Setoids.Setoid.
Require Stdlib.Wellfounded.Well_Ordering.
Require Stdlib.extraction.Extraction.
Require Stdlib.ssr.ssreflect.
Require Equations.Prop.SigmaNotations.
Require Equations.Signature.
Require Stdlib.Bool.Bool.
Require Stdlib.Relations.Relation_Operators.
Require Stdlib.Wellfounded.Inclusion.
Require Equations.CoreTactics.
Require Stdlib.Relations.Operators_Properties.
Require Stdlib.Wellfounded.Disjoint_Union.
Require Stdlib.Wellfounded.Transitive_Closure.
Require Stdlib.PArith.BinPosDef.
Require Stdlib.Relations.Relations.
Require Stdlib.Wellfounded.Union.
Require Equations.Prop.Logic.
Require Stdlib.Numbers.NumPrelude.
Require Stdlib.Classes.RelationPairs.
Require Stdlib.Wellfounded.Lexicographic_Product.
Require Equations.Prop.Classes.
Require MetaRocq.Utils.MRProd.
Require Stdlib.Structures.Equalities.
Require Equations.Prop.EqDec.
Require Equations.Prop.DepElim.
Require Equations.Prop.FunctionalInduction.
Require Stdlib.Structures.Orders.
Require Equations.Prop.Constants.
Require Stdlib.Structures.OrdersTac.
Require Stdlib.Structures.OrdersFacts.
Require Stdlib.Structures.GenericMinMax.
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
Require Stdlib.Structures.OrderedType.
Require Stdlib.Wellfounded.Lexicographic_Exponentiation.
Require Stdlib.MSets.MSetList.
Require MetaRocq.Utils.ByteCompare.
Require Stdlib.micromega.VarMap.
Require Stdlib.micromega.Zify.
Require Stdlib.micromega.RingMicromega.
Require Equations.Prop.Equations.
Axiom proof_admitted : False.
Tactic Notation "admit" := abstract case proof_admitted.
Module Export ZMicromega.
Import Stdlib.Bool.Bool.
Import Stdlib.Lists.List.
Import Stdlib.ZArith.BinInt.
Import Stdlib.micromega.Tauto.
Import Stdlib.micromega.RingMicromega.
Import Stdlib.micromega.EnvRing.

#[local] Open Scope Z_scope.
Fixpoint Zeval_expr (env : PolEnv Z) (e: PExpr Z) : Z. exact (match e with
    | PEc c => c
    | PEX x => env x
    | PEadd e1 e2 => Zeval_expr env e1 + Zeval_expr env e2
    | PEmul e1 e2 => Zeval_expr env e1 * Zeval_expr env e2
    | PEpow e1 n  => Z.pow (Zeval_expr env e1) (Z.of_N n)
    | PEsub e1 e2 => (Zeval_expr env e1) - (Zeval_expr env e2)
    | PEopp e   => Z.opp (Zeval_expr env e)
  end). Defined.
Definition Zeval_pop2 (o : Op2) : Z -> Z -> Prop. exact (match o with
| OpEq =>  @eq Z
| OpNEq => fun x y  => ~ x = y
| OpLe => Z.le
| OpGe => Z.ge
| OpLt => Z.lt
| OpGt => Z.gt
end). Defined.
Definition Zeval_bop2 (o : Op2) : Z -> Z -> bool. exact (match o with
| OpEq =>  Z.eqb
| OpNEq => fun x y => negb (Z.eqb x y)
| OpLe => Z.leb
| OpGe => Z.geb
| OpLt => Z.ltb
| OpGt => Z.gtb
end). Defined.
Definition Zeval_op2 (k: Tauto.kind) :  Op2 ->  Z -> Z -> Tauto.rtyp k. exact (if k as k0 return (Op2 -> Z -> Z -> Tauto.rtyp k0)
  then Zeval_pop2 else Zeval_bop2). Defined.

Definition Zeval_formula (env : PolEnv Z) (k: Tauto.kind) (f : Formula Z):=
  let (lhs, op, rhs) := f in
    (Zeval_op2 k op) (Zeval_expr env lhs) (Zeval_expr env rhs).

Definition ZWitness := Psatz Z.

Definition psub  := psub Z0  Z.add Z.sub Z.opp Z.eqb.

Definition popp  := popp Z.opp.

Definition padd  := padd Z0  Z.add Z.eqb.

Definition normZ  := norm 0 1 Z.add Z.mul Z.sub Z.opp Z.eqb.

Definition Zunsat := check_inconsistent 0  Z.eqb Z.leb.

Definition Zdeduce := nformula_plus_nformula 0 Z.add Z.eqb.
Definition xnnormalise (t : Formula Z) : NFormula Z. exact (let (lhs,o,rhs) := t in
  let lhs := normZ lhs in
  let rhs := normZ rhs in
  match o with
  | OpEq  => (psub rhs lhs,  Equal)
  | OpNEq => (psub rhs lhs,  NonEqual)
  | OpGt  => (psub lhs rhs,  Strict)
  | OpLt  => (psub rhs lhs,  Strict)
  | OpGe  => (psub lhs rhs,  NonStrict)
  | OpLe =>  (psub rhs lhs,  NonStrict)
  end). Defined.
Definition xnormalise (f: NFormula Z) : list (NFormula Z). exact (let (e,o) := f in
  match o with
  | Equal     => (psub e (Pc 1),NonStrict) :: (psub (Pc (-1)) e, NonStrict) :: nil
  | NonStrict =>  ((psub (Pc (-1)) e,NonStrict)::nil)
  | Strict    =>  ((psub (Pc 0)) e, NonStrict)::nil
  | NonEqual  =>  (e, Equal)::nil
  end). Defined.

Definition cnf_of_list {T: Type} (tg : T) (l : list (NFormula Z)) :=
  List.fold_right (fun x acc =>
                     if Zunsat x then acc else ((x,tg)::nil)::acc)
                  (cnf_tt _ _)  l.
Definition normalise {T : Type} (t:Formula Z) (tg:T) : cnf (NFormula Z) T. exact (let f := xnnormalise t in
  if Zunsat f then cnf_ff _ _
  else cnf_of_list tg (xnormalise f)). Defined.
Definition xnegate (f:NFormula Z) : list (NFormula Z). exact (let (e,o) := f in
    match o with
      | Equal  => (e,Equal) :: nil
      | NonEqual => (psub e (Pc 1),NonStrict) :: (psub (Pc (-1)) e, NonStrict) :: nil
      | NonStrict => (e,NonStrict)::nil
      | Strict    => (psub e (Pc 1),NonStrict)::nil
    end). Defined.
Definition negate {T : Type} (t:Formula Z) (tg:T) : cnf (NFormula Z) T. exact (let f := xnnormalise t in
  if Zunsat f then cnf_tt _ _
  else cnf_of_list tg (xnegate f)). Defined.
Definition ceiling (a b:Z) : Z. exact (let (q,r) := Z.div_eucl a b in
    match r with
      | Z0 => q
      | _  => q + 1
    end). Defined.



Inductive ZArithProof :=
| DoneProof
| RatProof : ZWitness -> ZArithProof -> ZArithProof
| CutProof : ZWitness -> ZArithProof -> ZArithProof
| SplitProof : PolC Z -> ZArithProof -> ZArithProof -> ZArithProof
| deprecated_EnumProof : ZWitness -> ZWitness -> list ZArithProof -> ZArithProof
| ExProof   : positive -> ZArithProof -> ZArithProof

.

Register ZArithProof as micromega.ZArithProof.type.

Definition ZgcdM (x y : Z) := Z.max (Z.gcd x y) 1.
Fixpoint Zgcd_pol (p : PolC Z) : (Z * Z). exact (match p with
    | Pc c => (0,c)
    | Pinj _ p => Zgcd_pol p
    | PX p _ q =>
      let (g1,c1) := Zgcd_pol p in
        let (g2,c2) := Zgcd_pol q in
          (ZgcdM (ZgcdM g1 c1) g2 , c2)
  end). Defined.
Fixpoint Zdiv_pol (p:PolC Z) (x:Z) : PolC Z. exact (match p with
    | Pc c => Pc (Z.div c x)
    | Pinj j p => Pinj j (Zdiv_pol p x)
    | PX p j q => PX (Zdiv_pol p x) j (Zdiv_pol q x)
  end). Defined.
Definition makeCuttingPlane (p : PolC Z) : PolC  Z * Z. exact (let (g,c) := Zgcd_pol p in
    if Z.gtb g Z0
      then (Zdiv_pol (PsubC Z.sub p c) g , Z.opp (ceiling (Z.opp c) g))
      else (p,Z0)). Defined.
Definition genCuttingPlane (f : NFormula Z) : option (PolC Z * Z * Op1). exact (let (e,op) := f in
    match op with
      | Equal => let (g,c) := Zgcd_pol e in
        if andb (Z.gtb g Z0) (andb (negb (Z.eqb c Z0)) (negb (Z.eqb (Z.gcd g c) g)))
          then None 
          else 
            let (p,c) := makeCuttingPlane e  in
              Some (p,c,Equal)
      | NonEqual => Some (e,Z0,op)
      | Strict   =>  let (p,c) := makeCuttingPlane (PsubC Z.sub e 1) in
        Some (p,c,NonStrict)
      | NonStrict => let (p,c) := makeCuttingPlane e  in
        Some (p,c,NonStrict)
    end). Defined.
Definition nformula_of_cutting_plane (t : PolC Z * Z * Op1) : NFormula Z. exact (let (e_z, o) := t in
    let (e,z) := e_z in
      (padd e (Pc z) , o)). Defined.
Definition eval_Psatz  : list (NFormula Z) -> ZWitness ->  option (NFormula Z). exact (eval_Psatz 0 1 Z.add Z.mul Z.eqb Z.leb). Defined.
Definition bound_var (v : positive) : Formula Z. exact (Build_Formula (PEX v) OpGe (PEc 0)). Defined.
Definition mk_eq_pos (x : positive) (y:positive) (t : positive) : Formula Z. exact (Build_Formula (PEX x) OpEq (PEsub (PEX y) (PEX t))). Defined.
Fixpoint max_var (jmp : positive) (p : Pol Z) : positive. exact (match p with
  | Pc _ => jmp
  | Pinj j p => max_var (Pos.add j jmp) p
  | PX p j q => Pos.max (max_var jmp p) (max_var (Pos.succ jmp) q)
  end). Defined.

Definition max_var_nformulae (l : list (NFormula Z)) :=
  List.fold_left  (fun acc f => Pos.max acc (max_var xH (fst f))) l xH.

Section MaxVar.
End MaxVar.
Fixpoint ZChecker  (l:list (NFormula Z)) (pf : ZArithProof)  {struct pf} : bool. exact (match pf with
    | DoneProof => false
    | RatProof w pf =>
      match eval_Psatz l w  with
        | None => false
        | Some f =>
          if Zunsat f then true
            else ZChecker (f::l) pf
      end
    | CutProof w pf =>
      match eval_Psatz l w with
        | None => false
        | Some f =>
          match genCuttingPlane f with
            | None => true
            | Some cp => ZChecker (nformula_of_cutting_plane cp::l) pf
          end
      end
    | SplitProof p pf1 pf2 =>
      match genCuttingPlane (p,NonStrict) , genCuttingPlane (popp p, NonStrict) with
      | None , _ | _ , None => false
      | Some cp1 , Some cp2 =>
        ZChecker (nformula_of_cutting_plane cp1::l) pf1
        &&
        ZChecker (nformula_of_cutting_plane cp2::l) pf2
      end
    | ExProof x prf =>
      let fr := max_var_nformulae l in
      if Pos.leb x fr then
      let z    := Pos.succ fr in
      let t    := Pos.succ z in
      let nfx  := xnnormalise (mk_eq_pos x z t) in
      let posz := xnnormalise (bound_var z) in
      let post := xnnormalise (bound_var t) in
      ZChecker (nfx::posz::post::l) prf
      else false
    | deprecated_EnumProof w1 w2 pf => false 
end). Defined.
Definition ZTautoChecker  (f : BFormula (Formula Z) Tauto.isProp) (w: list ZArithProof): bool. exact (@tauto_checker (Formula Z) (NFormula Z) unit Zunsat Zdeduce normalise negate  ZArithProof (fun cl => ZChecker (List.map fst cl)) f w). Defined.

Lemma ZTautoChecker_sound : forall f w, ZTautoChecker f w = true -> forall env, eval_bf  (Zeval_formula env)  f.
Admitted.

End ZMicromega.
Module Export Stdlib_DOT_micromega_DOT_ZMicromega.
Module Export Stdlib.
Module Export micromega.
Module Export ZMicromega.
End ZMicromega.

End micromega.

End Stdlib.

End Stdlib_DOT_micromega_DOT_ZMicromega.
Module Export Lia.

Import Stdlib.ZArith.BinInt.
Import Stdlib.micromega.VarMap.
Import Stdlib.micromega.ZMicromega.
Declare ML Module "rocq-runtime.plugins.micromega".

Ltac zchecker :=
  let __wit := fresh "__wit" in
  let __varmap := fresh "__varmap" in
  let __ff := fresh "__ff" in
  intros __wit __varmap __ff ;
  exact (ZTautoChecker_sound __ff __wit
                                (@eq_refl bool true <: @eq bool (ZTautoChecker __ff __wit) true)
                                (@find Z Z0 __varmap)).

Ltac lia := Zify.zify; xlia zchecker.

End Lia.
Module Export Stdlib_DOT_micromega_DOT_Lia.
Module Export Stdlib.
Module Export micromega.
Module Export Lia.
End Lia.

End micromega.

End Stdlib.

End Stdlib_DOT_micromega_DOT_Lia.
Export Stdlib.ZArith.Znat.
Module Export Stdlib.
Module Export ZArith.
Module Export ZArith.
End ZArith.

End ZArith.

End Stdlib.
Import Stdlib.Classes.Morphisms.
#[export] Instance proper_S_lt : Morphisms.Proper (lt ==> lt)%signature S.
Admitted.
#[export] Instance proper_add_lt_r : Morphisms.Proper (eq ==> lt ==> lt)%signature Nat.add.
Admitted.
Module Export MetaRocq.
Module Export Utils.
Module Export MRArith.
End MRArith.

End Utils.

End MetaRocq.
Module Export ByteCompareSpec.
End ByteCompareSpec.
Module Export String.
  Inductive t : Set :=
  | EmptyString
  | String (_ : Byte.byte) (_ : t).

  Fixpoint print (b : t) : list Byte.byte :=
    match b with
    | EmptyString => nil
    | String b bs => b :: print bs
    end.
Fixpoint parse (b : list Byte.byte) : t.
Admitted.
Fixpoint compare (xs ys : t) : comparison.
Admitted.
Abbreviation string := String.t.

String Notation String.t String.parse String.print : bs_scope.
Import Stdlib.Structures.Orders.

Module OT_byte <: OrderedType.OrderedType with Definition t := Byte.byte.
  Definition t := Byte.byte.
  Definition eq := @Logic.eq t.
  Definition lt := fun l r => ByteCompare.compare l r = Lt.
  Theorem eq_refl : forall x : t, eq x x.
Admitted.
  Theorem eq_sym : forall x y : t, eq x y -> eq y x.
Admitted.
  Theorem eq_trans : forall x y z : t, eq x y -> eq y z -> eq x z.
Admitted.
  Theorem lt_trans : forall x y z : t, lt x y -> lt y z -> lt x z.
Admitted.
  Theorem lt_not_eq : forall x y : t, lt x y -> not (eq x y).
Admitted.
  Definition compare (x y : t) : OrderedType.Compare lt eq x y.
Admitted.
Definition eq_dec : forall x y : t, {eq x y} + {not (eq x y)}.
Admitted.
End OT_byte.

Module StringOT <: UsualOrderedType.
  Definition t := string.
Definition eq : t -> t -> Prop.
exact (eq).
Defined.
Definition eq_equiv : Equivalence eq.
exact (_).
Defined.

  Definition compare := String.compare.
  Definition lt x y : Prop := compare x y = Lt.

  Theorem compare_spec : forall x y, CompareSpec (x = y) (lt x y) (lt y x) (compare x y).
Admitted.
Definition eq_dec : forall x y : t, {eq x y} + {not (eq x y)}.
Admitted.

  Global Instance lt_strorder : StrictOrder lt.
Admitted.

  Definition lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.

End StringOT.

Module Export Tree.

End Tree.
Module Export MetaRocq_DOT_Utils_DOT_bytestring.
Module Export MetaRocq.
Module Export Utils.
Module Export bytestring.
End bytestring.

End Utils.

End MetaRocq.

End MetaRocq_DOT_Utils_DOT_bytestring.
Notation "'eta_compose'" := (fun g f x => g (f x)).

Notation "g ∘ f" := (eta_compose g f) (at level 40, left associativity).

Notation "'∑' x .. y , p" := (sigT (fun x => .. (sigT (fun y => p%type)) ..))
  (at level 200, x binder, right associativity,
   format "'[' '∑'  '/  ' x  ..  y ,  '/  ' p ']'")
  : type_scope.

Notation "( x ; y )" := (@existT _ _ x y).
Ltac tea := try eassumption.
Module Export MetaRocq_DOT_Utils_DOT_MRPrelude.
Module Export MetaRocq.
Module Export Utils.
Module Export MRPrelude.
End MRPrelude.

End Utils.

End MetaRocq.

End MetaRocq_DOT_Utils_DOT_MRPrelude.
Import Stdlib.Sorting.SetoidList.
Import MetaRocq.Utils.MRPrelude.

Export ListNotations.

Notation "#| l |" := (List.length l) (at level 0, l at level 99, format "#| l |").

Section map2.

End map2.

Section Reverse_Induction.

End Reverse_Induction.

Section ListSize.
  Context {A} (size : A -> nat).
Fixpoint list_size (l : list A) : nat.
exact (match l with
    | [] =>  0
    | a :: v => S (size a + list_size v)
    end).
Defined.

End ListSize.

Section ListSizeMap.

End ListSizeMap.

Section SplitPrefix.

End SplitPrefix.

Section SplitSuffix.
End SplitSuffix.

Section AllInP.
End AllInP.

Section MapInP.
  Context {A B : Type}.

  Equations map_InP (l : list A) (f : forall x : A, In x l -> B) : list B :=
  map_InP nil _ := nil;
  map_InP (cons x xs) f := cons (f x _) (map_InP xs (fun x inx => f x _)).
End MapInP.

Lemma In_size {A B} {x : A} {l : list A} (proj : A -> B) (size : B -> nat) :
  In x l -> size (proj x) < (list_size (size ∘ proj) l).
Admitted.
Module Export MetaRocq_DOT_Utils_DOT_MRList.
Module Export MetaRocq.
Module Export Utils.
Module Export MRList.
End MRList.

End Utils.

End MetaRocq.

End MetaRocq_DOT_Utils_DOT_MRList.
Variant prim_tag :=
  | primInt
  | primFloat
  | primString
  | primArray.
Derive NoConfusion EqDec for prim_tag.
Module Export MetaRocq_DOT_Common_DOT_Primitive.
Module Export MetaRocq.
Module Export Common.
Module Export Primitive.
End Primitive.

End Common.

End MetaRocq.

End MetaRocq_DOT_Common_DOT_Primitive.
Export MetaRocq.Utils.MRPrelude.
Export MetaRocq.Utils.MRArith.
Export MetaRocq.Utils.MRList.
Export MetaRocq.Utils.MRProd.
Export MetaRocq.Utils.bytestring.
Module Export MetaRocq_DOT_Utils_DOT_MRUtils.
Module Export MetaRocq.
Module Export Utils.
Module Export MRUtils.
End MRUtils.

End Utils.

End MetaRocq.

End MetaRocq_DOT_Utils_DOT_MRUtils.
Export Stdlib.ZArith.ZArith.
Export Stdlib.micromega.Lia.
Export MetaRocq.Utils.MRUtils.

Global Open Scope bs_scope.
Module Export MetaRocq.
Module Export Utils.
Module Export utils.
End utils.

Definition ident   := string.

Definition dirpath := list ident.

Inductive modpath :=
| MPfile  (dp : dirpath)
| MPbound (dp : dirpath) (id : ident) (i : nat)
| MPdot   (mp : modpath) (id : ident).

Definition kername := modpath × ident.

Record inductive : Set := mkInd { inductive_mind : kername ;
                                  inductive_ind : nat }.

Record projection := mkProjection
  { proj_ind : inductive;
    proj_npars : nat;
    proj_arg : nat  }.

Inductive name : Set :=
| nAnon
| nNamed (_ : ident).

Inductive recursivity_kind :=
  | Finite
  | CoFinite
  | BiFinite .

Import Stdlib.MSets.MSetList.
Import MetaRocq.Utils.utils.

Module Level.
  Inductive t_ : Set :=
  | lzero
  | level (_ : string)
  | lvar (_ : nat) .

  Definition t := t_.

  Inductive lt_ : t -> t -> Prop :=
  | ltSetLevel s : lt_ lzero (level s)
  | ltSetlvar n : lt_ lzero (lvar n)
  | ltLevelLevel s s' : StringOT.lt s s' -> lt_ (level s) (level s')
  | ltLevellvar s n : lt_ (level s) (lvar n)
  | ltlvarlvar n n' : Nat.lt n n' -> lt_ (lvar n) (lvar n').

  Definition lt := lt_.

End Level.

Module LevelExpr.
  Definition t := (Level.t * nat)%type.
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

Module Universe.

  Definition t := nonEmptyLevelExprSet.
Definition lt : t -> t -> Prop.
Admitted.
End Universe.

Module Sort.
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

Inductive allowed_eliminations : Set :=
  | IntoSProp
  | IntoPropSProp
  | IntoSetPropSProp
  | IntoAny.
Import MetaRocq.Common.Primitive.

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
End PrimModel.
Arguments prim_val : clear implicits.

Section PrimOps.
  Universes i j.
  Context {term : Type@{i}} {term' : Type@{j}}.
Definition map_prim (f : term -> term') (p : prim_val term) : prim_val term'.
admit.
Defined.
End PrimOps.

Section PrimIn.
  Universe i.
Context {term : Type@{i}}.

  Equations InPrim (x : term) (p : prim_val term) : Prop :=
    | x | (primInt; primIntModel i) := False
    | x | (primFloat; primFloatModel _) := False
    | x | (primString; primStringModel _) := False
    | x | (primArray; primArrayModel a) :=
      x = a.(array_default) \/ In x a.(array_value).

  Equations map_primIn (p : prim_val term) (f : forall x : term, InPrim x p -> term) : prim_val term :=
    | (primInt; primIntModel i) | _ := (primInt; primIntModel i)
    | (primFloat; primFloatModel f) | _ := (primFloat; primFloatModel f)
    | (primString; primStringModel f) | _ := (primString; primStringModel f)
    | (primArray; primArrayModel a) | f :=
      (primArray; primArrayModel
        {| array_default := f a.(array_default) (or_introl eq_refl);
          array_value := map_InP a.(array_value) (fun x H => f x (or_intror H)) |}).

End PrimIn.

  Module Export EAst.

Record def (term : Set) := { dname : name; dbody : term; rarg : nat }.
Arguments dname {term} d.
Arguments dbody {term} d.
Arguments rarg {term} d.

Definition map_def {term : Set} (f : term -> term) (d : def term) :=
  {| dname := d.(dname); dbody := f d.(dbody); rarg := d.(rarg) |}.

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

Record constant_body := { cst_body : option term }.

Inductive global_decl :=
| ConstantDecl : constant_body -> global_decl
| InductiveDecl : mutual_inductive_body -> global_decl.

Definition global_declarations := list (kername * global_decl).

Abbreviation global_context := global_declarations.
Import Equations.Prop.Equations.
Definition prim_size (f : term -> nat) (p : prim_val term) : nat.
admit.
Defined.
Fixpoint size (t : term) : nat.
exact (match t with
  | tRel i => 1
  | tEvar ev args => S (list_size size args)
  | tLambda na M => S (size M)
  | tApp u v => S (size u + size v)
  | tLetIn na b b' => S (size b + size b')
  | tCase ind c brs => S (size c + list_size (fun x => size x.2) brs)
  | tProj p c => S (size c)
  | tFix mfix idx => S (list_size (fun x => size (dbody x)) mfix)
  | tCoFix mfix idx => S (list_size (fun x => size (dbody x)) mfix)
  | tConstruct _ _ ignore_args => S (list_size size ignore_args)
  | tPrim p => S (prim_size size p)
  | tLazy t => S (size t)
  | tForce t => S (size t)
  | _ => 1
  end).
Defined.

Lemma InPrim_size x p : InPrim x p -> size x < S (prim_size size p).
Admitted.
Global Instance Wf_size_lt : WellFounded (MR lt size).
Admitted.

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

Section implement_box.
  Context (Σ : global_declarations).

  Definition iBox :=
   tFix [ {| dname := nNamed "reccall" ; dbody := tLambda nAnon (tRel 1) ; rarg := 0 |} ] 0.

  Equations? implement_box (t : term) : term
    by wf t (fun x y : EAst.term => size x < size y) :=
    | tRel i => EAst.tRel i
    | tEvar ev args => EAst.tEvar ev (map_InP args (fun x H => implement_box x))
    | tLambda na M => EAst.tLambda na (implement_box M)
    | tApp u v := tApp (implement_box u) (implement_box v)
    | tLetIn na b b' => EAst.tLetIn na (implement_box b) (implement_box b')
    | tCase ind c brs =>
      let brs' := map_InP brs (fun x H => (x.1, lift 1 #|x.1| (implement_box x.2))) in
      EAst.tLetIn (nNamed "discr") (implement_box c)
      (EAst.tCase (ind.1, 0) (tRel 0) brs')
    | tProj p c => EAst.tProj {| proj_ind := p.(proj_ind); proj_npars := 0; proj_arg := p.(proj_arg) |} (implement_box c)
    | tFix mfix idx =>
      let mfix' := map_InP mfix (fun d H => {| dname := dname d; dbody := implement_box d.(dbody); rarg := d.(rarg) |}) in
      EAst.tFix mfix' idx
    | tCoFix mfix idx =>
      let mfix' := map_InP mfix (fun d H => {| dname := dname d; dbody := implement_box d.(dbody); rarg := d.(rarg) |}) in
      EAst.tCoFix mfix' idx
    | tBox => iBox
    | tVar n => EAst.tVar n
    | tConst n => EAst.tConst n
    | tConstruct ind i block_args => EAst.tConstruct ind i (map_InP block_args (fun d H => implement_box d))
    | tPrim p => EAst.tPrim (map_primIn p (fun x H => implement_box x))
    | tLazy t => EAst.tLazy (implement_box t)
    | tForce t => EAst.tForce (implement_box t).
  Proof.
    all:try lia.
    all:try apply (In_size); tea.
    all:try lia.
    -
 setoid_rewrite <- (In_size id size H); unfold id; lia.
    -
 setoid_rewrite <- (In_size id size H); unfold id; lia.
    -
 setoid_rewrite <- (In_size snd size H); cbn; lia.
    -
 setoid_rewrite <- (In_size dbody size H); cbn; lia.
    -
 setoid_rewrite <- (In_size dbody size H); cbn; lia.
    -
 now eapply InPrim_size in H.
  Qed.

End implement_box.

Definition implement_box_constant_decl cb :=
  {| cst_body := option_map implement_box cb.(cst_body) |}.
