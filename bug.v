
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-projection-no-head-constant" "-w" "-redundant-canonical-projection" "-w" "-notation-overridden" "-w" "-deprecated-native-compiler-option" "-native-compiler" "ondemand" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/oddorder/theories" "odd_order" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/HB" "HB" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi" "elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_elpi" "elpi_elpi" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/elpi_examples" "elpi_examples" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/mathcomp" "mathcomp" "-top" "odd_order.stripped_odd_order_theorem") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 225 lines to 158 lines, then from 174 lines to 158 lines, then from 173 lines to 158 lines, then from 172 lines to 1563 lines, then from 1570 lines to 158 lines, then from 172 lines to 2493 lines, then from 2499 lines to 2232 lines *)
(* coqc version 9.2+alpha compiled with OCaml 4.14.2
   coqtop version 9.2+alpha
   Expected coqc runtime on this file: 27.411 sec
   Expected coqc peak memory usage on this file: 1368752.0 kb *)










Require odd_order.PFsection12.
Require odd_order.PFsection11.
Require odd_order.PFsection10.
Require odd_order.PFsection9.
Require odd_order.PFsection8.
Require odd_order.PFsection7.
Require odd_order.PFsection6.
Require odd_order.PFsection5.
Require odd_order.PFsection4.
Require odd_order.PFsection3.
Require odd_order.BGsection16.
Require odd_order.PFsection2.
Require odd_order.BGsection15.
Require odd_order.PFsection1.
Require odd_order.BGsection14.
Require mathcomp.character.vcharacter.
Require mathcomp.character.inertia.
Require odd_order.BGsection13.
Require odd_order.BGsection12.
Require odd_order.BGsection11.
Require odd_order.BGsection10.
Require mathcomp.character.integral_char.
Require mathcomp.character.character.
Require odd_order.BGsection9.
Require mathcomp.field.finfield.
Require mathcomp.character.classfun.
Require odd_order.BGsection8.
Require mathcomp.field.algnum.
Require mathcomp.field.cyclotomic.
Require mathcomp.field.algC.
Require odd_order.BGsection7.
Require odd_order.BGsection3.
Require mathcomp.field.algebraics_fundamentals.
Require odd_order.BGsection6.
Require odd_order.BGsection5.
Require odd_order.BGsection4.
Require odd_order.BGappendixAB.
Require odd_order.BGsection2.
Require odd_order.wielandt_fixpoint.
Require odd_order.BGsection1.
Require mathcomp.character.mxabelem.
Require mathcomp.solvable.extremal.
Require mathcomp.field.galois.
Require mathcomp.algebra.rat.
Require mathcomp.solvable.frobenius.
Require mathcomp.field.separable.
Require mathcomp.solvable.hall.
Require mathcomp.character.mxrepresentation.
Require mathcomp.solvable.maximal.
Require mathcomp.algebra.intdiv.
Require mathcomp.solvable.abelian.
Require mathcomp.field.fieldext.
Require mathcomp.solvable.sylow.
Require mathcomp.field.closed_field.
Require mathcomp.solvable.nilpotent.
Require mathcomp.algebra.polyXY.
Require mathcomp.solvable.gseries.
Require mathcomp.field.falgebra.
Require mathcomp.algebra.mxpoly.
Require mathcomp.solvable.finmodule.
Require mathcomp.solvable.pgroup.
Require mathcomp.solvable.center.
Require mathcomp.algebra.vector.
Require mathcomp.algebra.mxalgebra.
Require mathcomp.solvable.cyclic.
Require mathcomp.algebra.matrix.
Require mathcomp.algebra.archimedean.
Require mathcomp.algebra.ssrint.
Require mathcomp.algebra.num_theory.ssrnum.
Require mathcomp.algebra.zmodp.
Require mathcomp.algebra.num_theory.numfield.
Require mathcomp.algebra.num_theory.numdomain.
Require mathcomp.algebra.finalg.
Require mathcomp.solvable.commutator.
Require mathcomp.algebra.num_theory.orderedzmod.
Require mathcomp.solvable.gfunctor.
Require mathcomp.fingroup.gproduct.
Require mathcomp.fingroup.action.
Require mathcomp.fingroup.quotient.
Require mathcomp.algebra.polydiv.
Require mathcomp.fingroup.automorphism.
Require mathcomp.algebra.ring_quotient.
Require mathcomp.algebra.poly.
Require mathcomp.fingroup.perm.
Require mathcomp.algebra.countalg.
Require mathcomp.fingroup.presentation.
Require mathcomp.algebra.ssralg.
Require mathcomp.fingroup.morphism.
Require mathcomp.order.order.
Require mathcomp.fingroup.fingroup.
Require mathcomp.order.preorder.
Require mathcomp.boot.binomial.
Require mathcomp.boot.nmodule.
Require mathcomp.boot.ssrAC.
Require mathcomp.boot.prime.
Require mathcomp.boot.monoid.
Require mathcomp.boot.finset.
Require mathcomp.boot.bigop.
Require mathcomp.boot.finfun.
Require mathcomp.boot.tuple.
Require mathcomp.boot.generic_quotient.
Require mathcomp.boot.fintype.
Require mathcomp.boot.path.
Require mathcomp.boot.div.
Require mathcomp.boot.choice.
Require mathcomp.boot.seq.
Require mathcomp.boot.ssrnat.
Require mathcomp.boot.eqtype.
Require mathcomp.boot.ssrbool.
Require HB.structures.
Require mathcomp.boot.ssrfun.
Require elpi.apps.locker.locker.
Require mathcomp.boot.ssreflect.
Require elpi.elpi.
Require mathcomp.boot.ssrnotations.
Require elpi_elpi.dummy.
Require Corelib.ssr.ssrfun.
Require Corelib.ssr.ssreflect.
Require Corelib.Classes.RelationClasses.
Require Corelib.ssr.ssrbool.
Require Corelib.BinNums.PosDef.

Module Export AdmitTactic.
Module Import LocalFalse.
Inductive False : Prop := .
End LocalFalse.
Axiom proof_admitted : False.
Import Coq.Init.Ltac.
Tactic Notation "admit" := abstract case proof_admitted.
End AdmitTactic.

Module odd_order_DOT_PFsection13_WRAPPED.
Module PFsection13.


Import mathcomp.boot.ssreflect mathcomp.boot.ssrfun mathcomp.boot.ssrbool mathcomp.boot.eqtype mathcomp.boot.ssrnat mathcomp.boot.seq mathcomp.boot.path.
Import mathcomp.boot.div mathcomp.boot.choice mathcomp.boot.fintype mathcomp.boot.tuple mathcomp.boot.finfun mathcomp.boot.bigop mathcomp.boot.prime mathcomp.boot.finset.
Import mathcomp.boot.binomial mathcomp.order.order.
Import mathcomp.fingroup.fingroup mathcomp.fingroup.morphism mathcomp.fingroup.perm mathcomp.fingroup.automorphism mathcomp.fingroup.quotient.
Import mathcomp.fingroup.action mathcomp.fingroup.gproduct.
Import mathcomp.algebra.ssralg mathcomp.algebra.finalg mathcomp.algebra.zmodp mathcomp.algebra.poly mathcomp.algebra.num_theory.ssrnum mathcomp.algebra.archimedean mathcomp.algebra.rat.
Import mathcomp.algebra.matrix mathcomp.algebra.mxalgebra mathcomp.algebra.vector.
Import mathcomp.solvable.cyclic mathcomp.solvable.center mathcomp.solvable.gfunctor mathcomp.solvable.commutator mathcomp.solvable.gseries mathcomp.solvable.pgroup.
Import mathcomp.solvable.nilpotent mathcomp.solvable.sylow mathcomp.solvable.abelian mathcomp.solvable.maximal mathcomp.solvable.hall mathcomp.solvable.frobenius.
Import mathcomp.field.algC mathcomp.field.cyclotomic mathcomp.field.algnum.
Import mathcomp.character.mxrepresentation mathcomp.character.mxabelem mathcomp.character.classfun mathcomp.character.character.
Import mathcomp.character.integral_char mathcomp.character.inertia mathcomp.character.vcharacter.
Import odd_order.BGsection1 odd_order.BGsection3 odd_order.BGsection7.
Import odd_order.BGsection14 odd_order.BGsection15 odd_order.BGsection16.
Import odd_order.PFsection1 odd_order.PFsection2 odd_order.PFsection3 odd_order.PFsection4.
Import odd_order.PFsection5 odd_order.PFsection6 odd_order.PFsection7 odd_order.PFsection8.
Import odd_order.PFsection9 odd_order.PFsection10 odd_order.PFsection11 odd_order.PFsection12.


























Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Import GroupScope Order.TTheory GRing.Theory FinRing.Theory Num.Theory.

Section Thirteen.

Variable gT : minSimpleOddGroupType.
Local Notation G := (TheMinSimpleOddGroup gT).
Implicit Types (p q : nat) (x y z : gT).
Implicit Types H K L N P Q R S T U W : {group gT}.

Definition irr_Ind_Fitting S := [predI irr S & seqIndT 'F(S) S].

Local Notation irrIndH := (irr_Ind_Fitting _).
Local Notation "#1" := (inord 1).

Section Thirteen_2_3_5_to_9.












Variables S U W W1 W2 : {group gT}.
Hypotheses (maxS : S \in 'M) (defW : W1 \x W2 = W).
Hypotheses (StypeP : of_typeP S U defW).

Local Notation "` 'W1'" := (gval W1) (only parsing) : group_scope.
Local Notation "` 'W2'" := (gval W2) (only parsing) : group_scope.
Local Notation "` 'W'" := (gval W) (only parsing) : group_scope.
Local Notation V := (cyclicTIset defW).

Local Notation "` 'S'" := (gval S) (only parsing) : group_scope.
Local Notation P := (`S`_\F)%G.
Local Notation "` 'P'" := `S`_\F : group_scope.
Local Notation PU := S^`(1)%G.
Local Notation "` 'PU'" := `S^`(1) : group_scope.
Local Notation "` 'U'" := (gval U) (only parsing) : group_scope.
Local Notation C := 'C_U(`P)%G.
Local Notation "` 'C'" := 'C_`U(`P) : group_scope.
Local Notation H := 'F(S)%G.
Local Notation "` 'H'" := 'F(`S) : group_scope.

Let defS : PU ><| W1 = S.
Proof.
by have [[]] := StypeP.
Qed.
Let defPU : P ><| U = PU.
Proof.
by have [_ []] := StypeP.
Qed.
Let defH : P \x C = H.
Proof.
by have [] := typeP_context StypeP.
Qed.

Let notStype1 : FTtype S != 1%N.
Proof.
exact: FTtypeP_neq1 StypeP.
Qed.
Let notStype5 : FTtype S != 5%N.
Proof.
exact: FTtype5_exclusion maxS.
Qed.

Let pddS := FT_prDade_hypF maxS StypeP.
Let ptiWS : primeTI_hypothesis S PU defW := FT_primeTI_hyp StypeP.
Let ctiWG : cyclicTI_hypothesis G defW := pddS.

Let ntW1 : W1 :!=: 1.
Proof.
by have [[]] := StypeP.
Qed.
Let ntW2 : W2 :!=: 1.
Proof.
by have [_ _ _ []] := StypeP.
Qed.
Let cycW1 : cyclic W1.
Proof.
by have [[]] := StypeP.
Qed.
Let cycW2 : cyclic W2.
Proof.
by have [_ _ _ []] := StypeP.
Qed.

Let p := #|W2|.
Let q := #|W1|.
Let c := #|C|.
Let u := #|U : C|.

Let oU : #|U| = (u * c)%N.
Proof.
by rewrite mulnC Lagrange ?subsetIl.
Qed.

Let pr_p : prime p.
Proof.
by have [] := FTtypeP_primes maxS StypeP.
Qed.
Let pr_q : prime q.
Proof.
by have [] := FTtypeP_primes maxS StypeP.
Qed.

Let qgt2 : q > 2.
Proof.
by rewrite odd_gt2 ?mFT_odd ?cardG_gt1.
Qed.
Let pgt2 : p > 2.
Proof.
by rewrite odd_gt2 ?mFT_odd ?cardG_gt1.
Qed.

Let coPUq : coprime #|PU| q.
Proof.
by rewrite (coprime_sdprod_Hall_r defS); have [[]] := StypeP.
Qed.

Let nirrW1 : #|Iirr W1| = q.
Proof.
by rewrite card_Iirr_cyclic.
Qed.
Let nirrW2 : #|Iirr W2| = p.
Proof.
by rewrite card_Iirr_cyclic.
Qed.
Let NirrW1 : Nirr W1 = q.
Proof.
by rewrite -nirrW1 card_ord.
Qed.
Let NirrW2 : Nirr W2 = p.
Proof.
by rewrite -nirrW2 card_ord.
Qed.

Local Open Scope ring_scope.

Let sigma := (cyclicTIiso ctiWG).
Let w_ i j := (cyclicTIirr defW i j).
Local Notation eta_ i j := (sigma (w_ i j)).

Local Notation Imu2 := (primeTI_Iirr ptiWS).
Let mu2_ i j := primeTIirr ptiWS i j.
Let mu_ := primeTIred ptiWS.
Local Notation chi_ j := (primeTIres ptiWS j).

Local Notation Idelta := (primeTI_Isign ptiWS).
Local Notation delta_ j := (primeTIsign ptiWS j).

Local Notation tau := (FT_Dade0 maxS).
Local Notation "chi ^\tau" := (tau chi).

Let calS0 := seqIndD PU S S`_\s 1.
Let rmR := FTtypeP_coh_base maxS StypeP.
Let scohS0 : subcoherent calS0 tau rmR.
Proof.
exact: FTtypeP_subcoherent StypeP.
Qed.

Let calS := seqIndD PU S P 1.
Let sSS0 : cfConjC_subset calS calS0.
Proof.
exact/seqInd_conjC_subset1/Fcore_sub_FTcore.
Qed.

Local Notation type34ker1 := (FTtype34_Fcore_kernel_trivial maxS StypeP).
Local Notation type34facts := (FTtype34_structure maxS StypeP).
Local Notation type2facts := (FTtypeII_prime_facts maxS StypeP).
Local Notation compl2facts := (compl_of_typeII maxS StypeP).
Local Notation compl3facts := (compl_of_typeIII maxS StypeP).

Local Notation H0 := (Ptype_Fcore_kernel StypeP).

Lemma Ptype_factor_prime : pdiv #|P / H0|%g = p.
Proof.
exact: def_Ptype_factor_prime.
Qed.
Local Notation pHbar_p := Ptype_factor_prime.

Lemma Ptype_Fcore_kernel_trivial : H0 :=: 1%g.
Proof.
have [/type2facts[_ oP _]| /type34ker1[]//] := boolP (FTtype S == 2%N).
have [/and3P[]] := Ptype_Fcore_kernel_exists maxS StypeP notStype5.
case/maxgroupp/andP=> /proper_sub-sH0P nH0S /subset_trans/(_ nH0S)nH0P _ _.
apply: card1_trivg; rewrite -(divg_indexS sH0P) -card_quotient //.
have [_ _ ->] := Ptype_Fcore_factor_facts maxS StypeP notStype5.
by rewrite pHbar_p -{}oP divnn ?cardG_gt0.
Qed.
Local Notation H0_1 := Ptype_Fcore_kernel_trivial.

Lemma Ptype_Fcompl_kernel_cent : Ptype_Fcompl_kernel StypeP :=: C.
Proof.
rewrite [Ptype_Fcompl_kernel StypeP]unlock /= (group_inj H0_1).
by rewrite astabQ -morphpreIim -injm_cent ?injmK ?ker_coset ?norms1.
Qed.
Local Notation CHbar_C := Ptype_Fcompl_kernel_cent.


Lemma FTtypeP_facts :
  [/\  [/\ pred2 2 3 (FTtype S), q < p -> FTtype S == 2,
                [Frobenius U <*> W1 = U ><| W1] & abelian U],
       p.-abelem P /\ #|P| = p ^ q,
       u <= (p ^ q).-1 %/ p.-1,
       coherent calS S^# tau
    &  normedTI 'A0(S) G S /\ {in 'CF(S, 'A0(S)), tau =1 'Ind}]%N.
Proof.
have type23: pred2 2%N 3%N (FTtype S).
  by rewrite /= -implyNb; apply/implyP=> /type34facts[_ _ [->]].
have [_ ntU _ tiFS] := compl_of_typeII_IV maxS StypeP notStype5.
have [_ /mulG_sub[_ sUPU] nPU tiPU] := sdprodP defPU.
have cUU: abelian U by case/orP: type23 => [/compl2facts | /compl3facts] [_ ->].
split.
-
 split=> //; last exact: Ptype_compl_Frobenius StypeP _.
  by rewrite ltnNge; apply: contraR => /type34facts[_ /ltnW].
-
 by have [/type2facts[] | /type34ker1[]] := boolP (FTtype S == 2%N).
-
 have ->: u = #|U / C|%g by rewrite card_quotient ?normsI ?normG ?norms_cent.
  have p1gt0: (0 < p.-1)%N by rewrite -(subnKC pgt2).
  have [/typeP_Galois_P[]| /typeP_Galois_Pn[]]// := boolP (typeP_Galois StypeP).
    move=> _ _ [_ _]; rewrite pHbar_p CHbar_C // -/u -/q; apply: dvdn_leq.
    by rewrite divn_gt0 // -!subn1 leq_sub2r // (leq_exp2l 1) ltnW // ltnW.
  rewrite -/q CHbar_C pHbar_p => H1 [_ _ _ _ [agt1 a_dv_p1 _ [V /card_isog->]]].
  apply: leq_trans (_ : p.-1 ^ q.-1 <= _)%N; last first.
    have ltp1q: (p.-1 ^ q < p ^ q)%N by rewrite ltn_exp2r ?prednK // 2?ltnW.
    by rewrite leq_divRL // -expnSr (ltn_predK qgt2) -ltnS (ltn_predK ltp1q).
  rewrite dvdn_leq ?expn_gt0 ?p1gt0 // (dvdn_trans (cardSg (subsetT V))) //.
  by rewrite cardsT card_mx mul1n dvdn_exp2r //= card_ord Zp_cast.
-
 have:= Ptype_core_coherence maxS StypeP notStype5; rewrite H0_1 CHbar_C.
  by rewrite (derG1P (abelianS _ cUU)) ?subsetIl ?(group_inj (joing1G _)).
have ntA0: 'A0(S) != set0 := FTsupp0_neq0 maxS.
suffices tiA0: normedTI 'A0(S) G S by split=> //; apply: Dade_Ind.
apply/normedTI_memJ_P=> //; rewrite subsetT; split=> // x g A0x Gg.
apply/idP/idP=> [A0xg | /(subsetP (FTsupp0_norm S))/memJ_norm->//].
apply/idPn=> S'g; have Dx: x \in [set y in 'A0(S) | ~~ ('C[y] \subset S)].
  rewrite inE A0x; have [_ _ [_ _ _ wccA0 _] _] := pddS.
  have /imsetP[y Sy Dxy]: x ^ g \in x ^: S by rewrite wccA0 // mem_orbit.
  apply/subsetPn; exists (g * y^-1)%g; last by rewrite groupMr ?groupV.
  by rewrite !inE conjg_set1 conjgM Dxy conjgK.
have [_ [_ /(_ x Dx) defL] /(_ x Dx)[_ _]] := FTsupport_facts maxS.
have{defL} [maxL _] := mem_uniq_mmax defL; set L := 'N[x] in maxL *.
rewrite -mem_iota !inE => ALx [/orP[Ltype1 _ | Ltype2]]; last first.
  by case/(_ _)/existsP=> // ? /Frobenius_of_typeF/(typePF_exclusion StypeP).
have /Frobenius_kerP[_ _ _ regLF_L] := FTtype1_Frobenius maxL Ltype1.
case/andP: ALx => A1'x /bigcupP[z A1z /setD1P[ntx cLz_z]]; case/negP: A1'x.
rewrite ntx /'A1(L) -(Fcore_eq_FTcore _ _) ?(eqP Ltype1) //= in cLz_z A1z *.
exact: subsetP (regLF_L z A1z) _ cLz_z.
Qed.

Lemma FTseqInd_TIred j : j != 0 -> mu_ j \in calS.
Proof.
move=> nz_j; rewrite -[mu_ j]cfInd_prTIres mem_seqInd ?gFnormal ?normal1 //=.
by rewrite !inE sub1G (cfker_prTIres pddS).
Qed.

Lemma FTtypeP_Fitting_abelian : abelian H.
Proof.
rewrite -(dprodW defH) abelianM subsetIr.
have [[_ _ _ cUU] [/abelem_abelian-> _] _ _ _] := FTtypeP_facts.
by rewrite (abelianS _ cUU) ?subsetIl.
Qed.
Hint Resolve FTtypeP_Fitting_abelian : core.

Local Notation calH := (seqIndT H S).

Lemma FTtypeP_Ind_Fitting_1 lambda : lambda \in calH -> lambda 1%g = (u * q)%:R.
Proof.
case/seqIndP=> i _ ->; rewrite cfInd1 -?divgS ?gFsub //; set theta := 'chi_i.
have Ltheta: theta \is a linear_char by apply/char_abelianP.
rewrite -(sdprod_card defS) -(sdprod_card defPU) -/q -(dprod_card defH) oU.
by rewrite -mulnA divnMl // mulnAC mulnK ?cardG_gt0 // lin_char1 ?mulr1.
Qed.
Local Notation calHuq := FTtypeP_Ind_Fitting_1.


Lemma FTprTIred_Ind_Fitting j : j != 0 -> mu_ j \in calH.
Proof.
move=> nz_j; have [//|_ _ _] := typeP_reducible_core_Ind maxS StypeP.
rewrite (group_inj H0_1) CHbar_C -/q /= (dprodWY defH) -/calS => /(_ (mu_ j)).
case=> [|_ _ [_ /lin_char_irr/irrP[r ->] ->]]; last exact: mem_seqIndT.
by rewrite mem_filter /= prTIred_not_irr FTseqInd_TIred.
Qed.
Local Notation Hmu := FTprTIred_Ind_Fitting.

Lemma FTprTIred1 j : j != 0 -> mu_ j 1%g = (u * q)%:R.
Proof.
by move/Hmu/calHuq.
Qed.
Local Notation mu1uq := FTprTIred1.


Lemma FTprTIsign j : delta_ j = 1.
Proof.
have [[_ _ frobUW1 cUU] _ _ cohS _] := FTtypeP_facts.
have [-> | nz_j] := eqVneq j 0; first exact: prTIsign0.
suffices: (1 == delta_ j %[mod q])%C.
  rewrite signrE /eqCmod addrC opprB subrK dvdC_nat.
  by case: (Idelta j); rewrite ?subr0 // gtnNdvd.
apply: eqCmod_trans (prTIirr1_mod ptiWS 0 j); rewrite -/(mu2_ 0 j) -/q.
have ->: mu2_ 0 j 1%g = u%:R.
  by apply: (mulfI (neq0CG W1)); rewrite -prTIred_1 -/mu_ mu1uq // mulnC natrM.
rewrite eqCmod_sym /eqCmod -(@natrB _ u 1) ?indexg_gt0 // subn1 dvdC_nat.
have nC_UW1: U <*> W1 \subset 'N(C).
  have /sdprodP[_ _ nPUW1 _] := Ptype_Fcore_sdprod StypeP.
  by rewrite normsI ?norms_cent // join_subG normG; have [_ []] := StypeP.
have coUq: coprime #|U| q by have /sdprod_context[_ /coprimeSg->] := defPU.
have /Frobenius_dvd_ker1: [Frobenius U <*> W1 / C = (U / C) ><| (W1 / C)].
  have [defUW1 _ _ _ _] := Frobenius_context frobUW1.
  rewrite Frobenius_coprime_quotient // /normal ?subIset ?joing_subl //.
  split=> [|x /(Frobenius_reg_ker frobUW1)->]; last exact: sub1G.
  rewrite properEneq subsetIl -CHbar_C andbT.
  by have [] := Ptype_Fcore_factor_facts maxS StypeP notStype5.
have [nCU nCW1] := joing_subP nC_UW1; rewrite !card_quotient // -/u.
by rewrite -indexgI setIC setIAC (coprime_TIg coUq) setI1g indexg1.
Qed.
Local Notation delta1 := FTprTIsign.


Lemma FTtypeP_no_Ind_Fitting_facts :
     ~~ has irrIndH calS ->
  [/\ typeP_Galois StypeP, `C = 1%g & u = (p ^ q).-1 %/ p.-1].
Proof.
move=> noIndH; have [[_ _ _ cUU] _ _ _ _] := FTtypeP_facts.
have [[t []] | [->]] := typeP_reducible_core_cases maxS StypeP notStype5.
  rewrite CHbar_C H0_1 (derG1P (abelianS _ cUU)) ?subsetIl //=.
  rewrite (group_inj (joing1G 1)) -/calS /= (dprodWY defH) => calSt _.
  case=> _ /lin_char_irr/irrP[r ->] Dt; case/hasP: noIndH.
  by exists 'chi_t; rewrite //= mem_irr; apply/seqIndP; exists r; rewrite ?inE.
rewrite /= pHbar_p H0_1 oU /c => frobPU _ <- _ /=.
suffices /eqP->: C :==: 1%g by rewrite cards1 muln1.
suffices: 'C_(U / 1)(P / 1) == 1%g.
  by rewrite -injm_subcent ?morphim_injm_eq1 ?norms1 ?ker_coset.
have [_ ntP _ _ _] := Frobenius_context frobPU.
by rewrite (cent_semiregular (Frobenius_reg_compl frobPU)).
Qed.


Let signW2 (b : bool) := iter b (@conjC_Iirr _ W2).

Let signW2K b : involutive (signW2 b).
Proof.
by case: b => //; apply: conjC_IirrK.
Qed.

Let signW2_eq0 b : {mono signW2 b: j / j == 0}.
Proof.
by case: b => //; apply: conjC_Iirr_eq0.
Qed.




Definition typeP_TIred_coherent tau1 :=
  exists2 b : bool, b -> p = 3%N
  & forall j, j != 0 -> tau1 (mu_ j) = (-1) ^+ b *: \sum_i eta_ i (signW2 b j).






Lemma FTtypeP_coherence :
   exists2 tau1 : {additive 'CF(S) -> 'CF(G)},
     coherent_with calS S^# tau tau1 & typeP_TIred_coherent tau1.
Proof.
have [redS|] := altP (@allP _ [predC irr S] calS).
  have [k nz_k] := has_nonprincipal_irr ntW2.
  have [_ [tau1 Dtau1]] := uniform_prTIred_coherent pddS nz_k.
  set calT := uniform_prTIred_seq pddS k => cohT.
  exists tau1; last by exists false => // j _; rewrite /= Dtau1 delta1.
  apply: subset_coherent_with cohT => xi Sxi.
  have [_ _ /(_ xi)] := typeP_reducible_core_Ind maxS StypeP notStype5.
  rewrite (group_inj H0_1) mem_filter redS // => /(_ Sxi)/imageP[j nz_j ->] _.
  by rewrite image_f // inE -/mu_ [~~ _]nz_j /= !mu1uq.
rewrite all_predC negbK => /hasP[xi Sxi irr_xi].
have [_ _ _ [tau1 cohS] _] := FTtypeP_facts; exists tau1 => //.
have [|] := boolP [forall (j | j != 0), tau1 (mu_ j) == \sum_i eta_ i j].
  by move/eqfun_inP=> Dtau1; exists false => // j /Dtau1; rewrite scale1r.
rewrite negb_forall_in => /exists_inP[j nz_j /eqP tau1muj_neq_etaj].
have:= FTtypeP_coherent_TIred sSS0 cohS irr_xi Sxi (FTseqInd_TIred _).
rewrite -/mu_ -/sigma -/ptiWS => tau1mu; have [dk tau1muj Ddk] := tau1mu j nz_j.
case: Ddk tau1muj => [][-> ->]{dk}; rewrite ?signrN delta1 ?scaleNr scale1r //.
set k := conjC_Iirr j => Dmu tau1muj.
have{Dmu} defIW2 l: l != 0 -> pred2 j k l.
  by move=> nz_l; rewrite Dmu ?FTseqInd_TIred ?mu1uq.
have [nz_k j'k]: k != 0 /\ k != j.
  rewrite conjC_Iirr_eq0 nz_j -(inj_eq irr_inj) conjC_IirrE.
  by rewrite odd_eq_conj_irr1 ?mFT_odd ?irr_eq1.
have /eqP p3: p == 3%N.
  rewrite -nirrW2 (cardD1 0) (cardD1 j) (cardD1 k) !inE nz_j nz_k j'k !eqSS.
  by apply/pred0Pn=> [[l /and4P[k'l j'l /defIW2/norP[]]]].
exists true => // _ /defIW2/pred2P[]->; first by rewrite scaler_sign.
have [[[Itau1 _] _] [d t1muk Dd]] := (cohS, tau1mu k nz_k); move: Dd t1muk.
case=> [][-> ->] => [|_]; rewrite ?signrN delta1 // scale1r.
case/(congr1 (cfdotr (tau1 (mu_ j)) \o -%R))/eqP/idPn => /=.
rewrite -tau1muj cfdotNl eq_sym !Itau1 ?mem_zchar ?FTseqInd_TIred //.
by rewrite !cfdot_prTIred (negPf j'k) eqxx mul1n oppr0 neq0CG.
Qed.




Let calS1 := seqIndD H S P 1.


Let S1mu j : j != 0 -> mu_ j \in calS1.
Proof.
move=> nz_j; have /seqIndP[s _ Ds] := Hmu nz_j.
rewrite Ds mem_seqInd ?gFnormal ?normal1 // !inE sub1G andbT.
rewrite -(sub_cfker_Ind_irr s (gFsub _ _) (gFnorm _ _)) -Ds /=.
rewrite -[mu_ j](cfInd_prTIres (FT_prDade_hypF maxS StypeP)).
by rewrite sub_cfker_Ind_irr ?cfker_prTIres ?gFsub ?gFnorm.
Qed.

Let calSirr := [seq phi <- calS | phi \in irr S].
Let S1cases zeta :
  zeta \in calS1 -> {j | j != 0 & zeta = mu_ j} + (zeta \in 'Z[calSirr]).
Proof.
move=> S1zeta; have /sig2_eqW[t /setDP[_ kerP't] Dzeta] := seqIndP S1zeta.
rewrite inE in kerP't; have /mulG_sub[sPH _] := dprodW defH.
have [/andP[sPPU nPPU] sUPU _ _ _] := sdprod_context defPU.
have sHPU: H \subset PU by rewrite /= -(dprodWC defH) mulG_subG subIset ?sUPU.
have [/eqfunP mu'zeta|] := boolP [forall j, '['Ind 'chi_t, chi_ j] == 0].
  right; rewrite Dzeta -(cfIndInd _ _ sHPU) ?gFsub //.
  rewrite ['Ind 'chi_t]cfun_sum_constt linear_sum /= rpred_sum // => s tPUs.
  rewrite linearZ rpredZ_nat ?Cnat_cfdot_char ?cfInd_char ?irr_char //=.
  have [[j Ds] | [irr_zeta _]] := prTIres_irr_cases ptiWS s.
    by case/eqP: tPUs; rewrite Ds mu'zeta.
  rewrite mem_zchar // mem_filter irr_zeta mem_seqInd ?gFnormal ?normal1 //=.
  by rewrite !inE sub1G andbT -(sub_cfker_constt_Ind_irr tPUs).
rewrite negb_forall => /existsP/sigW[j].
rewrite -irr_consttE constt_Ind_Res => jHt.
have nz_j: j != 0; last do [left; exists j => //].
  apply: contraTneq jHt => ->; rewrite prTIres0 rmorph1 -irr0 constt_irr.
  by apply: contraNneq kerP't => ->; rewrite irr0 cfker_cfun1.
have /pairwise_orthogonalP[_ ooS1]: pairwise_orthogonal calS1.
  by rewrite seqInd_orthogonal ?gFnormal.
rewrite -(cfRes_prTIirr _ 0) cfResRes ?gFsub //= in jHt.
have muj_mu0j: Imu2 (0, j) \in irr_constt (mu_ j).
  by rewrite irr_consttE cfdotC cfdot_prTIirr_red eqxx conjC1 oner_eq0.
apply: contraNeq (constt_Res_trans (prTIred_char _ _) muj_mu0j jHt).
by rewrite cfdot_Res_l /= -Dzeta eq_sym => /ooS1-> //; rewrite S1mu.
Qed.

Let sS1S : {subset calS1 <= 'Z[calS]}.
Proof.
move=> zeta /S1cases[[j nz_j ->]|]; first by rewrite mem_zchar ?FTseqInd_TIred.
by apply: zchar_subset; apply: mem_subseq (filter_subseq _ _).
Qed.








Let calS1_split1 (tau1 : {additive _ -> _}) zeta1 chi :
   coherent_with calS S^# tau tau1 -> zeta1 \in calS1 -> chi \in 'Z[irr G] ->
   {in calS1, forall zeta, zeta != zeta1 -> '[tau1 zeta, chi] = 0} ->
  let a := '[tau1 zeta1, chi] in
  exists2 alpha,
     alpha \in 'Z[irr H] /\ {subset irr_constt alpha <= Iirr_ker H P} &
  [/\  {in H^#, forall x, chi x = a / '[zeta1] * zeta1 x + alpha x},
      
         \sum_(x in H^#) `|chi x| ^+ 2 =
             a ^+ 2 / '[zeta1] * (#|S|%:R - zeta1 1%g ^+ 2 / '[zeta1])
             - 2 * a * (zeta1 1%g * alpha 1%g / '[zeta1])
             + (\sum_(x in H^#) `|alpha x| ^+ 2)
    & 
         \sum_(x in H^#) `|alpha x| ^+ 2 >= #|P|.-1%:R * alpha 1%g ^+ 2].
Proof.
case=> _ Dtau1 S1zeta1 Zchi o_tau1S_chi a.
have sW2P: W2 \subset P by have [_ _ _ []] := StypeP.
have /mulG_sub[sPH _] := dprodW defH.
have ntH: H :!=: 1%g by apply: subG1_contra ntW2; apply: subset_trans sPH.
have sH1S: H^# \subset G^# by rewrite setSD ?subsetT.
have[nsHS nsPS ns1S]: [/\ H <| S, P <| S & 1 <| S] by rewrite !gFnormal normal1.
have [[sHS nHS] [sPS nPS]] := (andP nsHS, andP nsPS).
have tiH: normedTI H^# G S by have [] := compl_of_typeII_IV maxS StypeP.
have ddH := normedTI_Dade tiH sH1S; have [_ ddH_1] := Dade_normedTI_P ddH tiH.
pose tauH := Dade ddH.
have DtauH: {in 'CF(S, H^#), tauH =1 'Ind} := Dade_Ind ddH tiH.
have sS1H: {subset calS1 <= calH} by apply: seqInd_subT.
pose zeta0 := zeta1^*%CF.
have S1zeta0: zeta0 \in calS1 by rewrite cfAut_seqInd.
have zeta1'0: zeta0 != zeta1.
  by rewrite (hasPn (seqInd_notReal _ _ _ _) _ S1zeta1) ?gFnormal ?mFT_odd.
have Hzeta0 := sS1H _ S1zeta0.
have dH_1 zeta: zeta \in calH -> (zeta - zeta0) 1%g == 0.
  by move=> Tzeta; rewrite 2!cfunE !calHuq // subrr eqxx.
have H1dzeta zeta: zeta \in calH -> zeta - zeta0 \in 'CF(S, H^#).
  have HonH: {subset calH <= 'CF(S, H)} by apply: seqInd_on.
  by move=> Hzeta; rewrite cfun_onD1 rpredB ?HonH ?dH_1.
pose calH1 := rem zeta1 (rem zeta0 (filter [mem calS1] calH)).
pose calH2 := filter [predC calS1] calH.
have DcalH: perm_eq calH (zeta0 :: zeta1 :: calH1 ++ calH2).
  rewrite -(perm_filterC [mem calS1]) -!cat_cons perm_cat2r.
  rewrite (permPl (@perm_to_rem _ zeta0 _ _)) ?mem_filter /= ?S1zeta0 //.
  rewrite perm_cons perm_to_rem // mem_rem_uniq ?filter_uniq ?seqInd_uniq //.
  by rewrite !inE mem_filter /= eq_sym zeta1'0 S1zeta1 sS1H.
have{DcalH} [a_ _ Dchi _] := invDade_seqInd_sum ddH chi DcalH.
have Da_ zeta: zeta \in calH -> a_ zeta = '['Ind (zeta - zeta0), chi].
  move=> Tzeta; rewrite /a_ !calHuq // divff ?scale1r; last first.
    by rewrite pnatr_eq0 -lt0n muln_gt0 indexg_gt0 cardG_gt0.
  by rewrite [Dade _ _]DtauH ?H1dzeta.
have Za_ zeta: zeta \in calH -> a_ zeta \in Num.int.
  move=> Hzeta; rewrite Da_ // Cint_cfdot_vchar ?cfInd_vchar //.
  by rewrite rpredB ?char_vchar ?(seqInd_char Hzeta) ?(seqInd_char Hzeta0).
have{} Da_ zeta: zeta \in calS1 -> a_ zeta = '[tau1 zeta, chi].
  move=> S1zeta; have Hzeta := sS1H _ S1zeta.
  rewrite Da_ //; have [_ _ _ _ [_ <-]] := FTtypeP_facts.
    rewrite -Dtau1; last by rewrite zcharD1E rpredB ?sS1S ?dH_1.
    by rewrite raddfB cfdotBl (o_tau1S_chi zeta0) ?subr0.
  by rewrite (cfun_onS (Fitting_sub_FTsupp0 maxS)) ?H1dzeta.
pose alpha := 'Res[H] (\sum_(zeta <- calH2) (a_ zeta)^* / '[zeta] *: zeta).
have{} Dchi: {in H^#, forall x, chi x = a / '[zeta1] * zeta1 x + alpha x}.
  move=> x H1x; have [_ Hx] := setD1P H1x.
  transitivity (invDade ddH chi x).
    by rewrite cfunElock ddH_1 // big_set1 H1x mul1g cards1 invr1 mul1r.
  rewrite cfResE ?gFsub ?Dchi // big_cons conj_intr ?Za_ ?Da_ ?sS1H //= -/a.
  congr (_ + _); rewrite big_cat /= sum_cfunE big1_seq ?add0r //= => [|zeta].
    by apply: eq_bigr => zeta; rewrite cfunE.
  rewrite ?(mem_rem_uniq, inE) ?rem_uniq ?filter_uniq ?seqInd_uniq //=.
  rewrite mem_filter => /and4P[/= zeta1'z _ S1zeta _].
  by rewrite Da_ ?o_tau1S_chi // conjC0 !mul0r.
have kerHalpha: {subset irr_constt alpha <= Iirr_ker H P}.
  move=> s; apply: contraR => kerP's; rewrite [alpha]rmorph_sum cfdot_suml.
  rewrite big1_seq // => psi; rewrite mem_filter /= andbC => /andP[].
  case/seqIndP=> r _ ->; rewrite mem_seqInd // !inE sub1G andbT negbK => kerPr.
  rewrite cfdot_Res_l cfdotZl mulrC cfdot_sum_irr big1 ?mul0r // => t _.
  apply: contraNeq kerP's; rewrite mulf_eq0 fmorph_eq0 inE => /norP[rSt sSt].
  by rewrite (sub_cfker_constt_Ind_irr sSt) -?(sub_cfker_constt_Ind_irr rSt).
have Zalpha: alpha \in 'Z[irr H].
  rewrite [alpha]rmorph_sum big_seq rpred_sum // => zeta; rewrite mem_filter /=.
  case/andP=> S1'zeta Tzeta; rewrite linearZ /= -scalerA.
  rewrite rpredZ_int ?conj_intr ?Za_ //; have [s _ ->] := seqIndP Tzeta.
  rewrite cfResInd_sum_cfclass ?reindex_cfclass -?cfnorm_Ind_irr //=.
  rewrite scalerK ?cfnorm_eq0 ?cfInd_eq0 ?irr_neq0 ?irr_char ?gFsub //.
  by apply: rpred_sum => i _; apply: irr_vchar.
have{Da_ Za_} Za: a \in Num.int by rewrite -[a]Da_ ?Za_ ?sS1H.
exists alpha => //; split=> //.
  set a1 := a / _ in Dchi; pose phi := a1 *: 'Res zeta1 + alpha.
  transitivity (#|H|%:R * '[phi] - `|phi 1%g| ^+ 2).
    rewrite (cfnormE (cfun_onG phi)) mulVKf ?neq0CG // addrC.
    rewrite (big_setD1 _ (group1 H)) addKr; apply: eq_bigr => x H1x.
    by have [_ Hx] := setD1P H1x; rewrite !cfunE cfResE // Dchi.
  have Qa1: a1 \in Creal.
    apply: rpred_div; first by rewrite rpred_int_num.
    by rewrite rpred_nat_num // Cnat_cfdot_char ?(seqInd_char S1zeta1).
  rewrite cfnormDd; last first.
    rewrite [alpha]cfun_sum_constt cfdotZl cfdot_sumr big1 ?mulr0 // => s.
    move/kerHalpha; rewrite inE cfdotZr mulrC cfdot_Res_l => kerPs.
    have [r kerP'r ->] := seqIndP S1zeta1; rewrite cfdot_sum_irr big1 ?mul0r //.
    move=> t _; apply: contraTeq kerP'r; rewrite !inE sub1G andbT negbK.
    rewrite mulf_eq0 fmorph_eq0 => /norP[]; rewrite -!irr_consttE.
    by move=> /sub_cfker_constt_Ind_irr-> // /sub_cfker_constt_Ind_irr <-.
  rewrite cfnormZ 2!cfunE cfRes1 2?real_normK //; last first.
    rewrite rpredD 1?rpredM // Rreal_int ?Cint_vchar1 // ?char_vchar //.
    by rewrite (seqInd_char S1zeta1).
  rewrite mulrDr mulrCA sqrrD opprD addrACA; congr (_ + _); last first.
    rewrite (cfnormE (cfun_onG _)) mulVKf ?neq0CG //.
    by rewrite (big_setD1 1%g) // intr_normK ?Cint_vchar1 // addrC addKr.
  rewrite opprD addrA; congr (_ - _); last first.
    rewrite -[_ * a * _]mulrA -mulr_natl; congr (_ * _).
    by rewrite -[a1 * _]mulrA -(mulrA a); congr (_ * _); rewrite -mulrA mulrC.
  rewrite mulrBr; congr (_ - _); last first.
    by rewrite mulrACA -expr2 -!exprMn mulrAC.
  rewrite -(mulrA (_^+_)) exprMn -mulrA; congr (_ * _); rewrite expr2 -mulrA.
  congr (_ * _); apply: canLR (mulKf (cfnorm_seqInd_neq0 nsHS S1zeta1)) _.
  rewrite (cfnormE (cfun_onG _)) mulVKf ?neq0CG // mulrC.
  rewrite (cfnormE (seqInd_on nsHS S1zeta1)) mulVKf ?neq0CG //.
  by apply: eq_bigr => x Hx; rewrite cfResE.
rewrite -subn1 natrB // -intr_normK ?Cint_vchar1 // mulrBl mul1r lerBlDl.
apply: le_trans (_ : \sum_(x in H) `|alpha x| ^+ 2 <= _); last first.
  by rewrite (big_setD1 1%g).
rewrite (big_setID P) /= (setIidPr sPH) ler_wpDr ?sumr_ge0 // => [x _|].
  by rewrite mulr_ge0 ?normr_ge0.
rewrite mulr_natl -sumr_const ler_sum // => y Py.
suffices ->: alpha y = alpha 1%g by apply: lexx.
rewrite [alpha]cfun_sum_constt !sum_cfunE; apply: eq_bigr => i.
by rewrite !cfunE => /kerHalpha; rewrite inE => /subsetP/(_ y Py)/cfker1->.
Qed.

Local Notation eta10 := (eta_ #1 0).
Local Notation eta01 := (eta_ 0 #1).

Let o_tau1_eta (tau1 : {additive _ -> _}) i j:
    coherent_with calS S^# tau tau1 ->
  {in 'Z[calSirr], forall zeta, '[tau1 zeta, eta_ i j] = 0}.
Proof.
move=> cohS _ /zchar_expansion[|z Zz ->].
  by rewrite filter_uniq ?seqInd_uniq.
rewrite raddf_sum cfdot_suml big1_seq //= => phi; rewrite mem_filter.
case/andP=> irr_phi /(coherent_ortho_cycTIiso StypeP sSS0 cohS) o_phi_eta.
by rewrite raddfZ_int {Zz}//= cfdotZl o_phi_eta ?mulr0.
Qed.

Let P1_int2_lb (b : algC) :
  b \in Num.int -> 2 * u%:R * b <= #|P|.-1%:R * b ^+ 2.
Proof.
move=> Zb; rewrite -natrM; apply: le_trans (_ : (2 * u)%:R * b ^+ 2 <= _).
  by rewrite ler_wpM2l ?ler0n ?intr_ler_sqr.
rewrite ler_wpM2r -?realEsqr ?Rreal_int // leC_nat mulnC -leq_divRL //.
have [_ [_ ->] /leq_trans-> //] := FTtypeP_facts.
by rewrite leq_div2l // -subn1 ltn_subRL.
Qed.


Lemma FTtypeP_sum_Ind_Fitting_lb (tau1 : {additive _ -> _}) lambda :
    coherent_with calS S^# tau tau1 -> lambda \in irrIndH -> lambda \in calS ->
  \sum_(x in H^#) `|tau1 lambda x| ^+ 2 >= #|S|%:R - lambda 1%g ^+ 2.
Proof.
move=> cohS /andP[Ilam Hlam] Slam; have [[Itau1 Ztau1] _] := cohS.
have Zlam1: tau1 lambda \in 'Z[irr G] by rewrite Ztau1 ?mem_zchar.
have S1lam: lambda \in calS1.
  have [[s kerP's Ds] [r _ Dr]] := (seqIndP Slam, seqIndP Hlam).
  rewrite Dr mem_seqInd ?gFnormal ?normal1 // !inE !sub1G !andbT in kerP's *.
  rewrite -(sub_cfker_Ind_irr r (gFsub _ _) (gFnorm _ _)) /= -Dr.
  by rewrite Ds sub_cfker_Ind_irr ?gFsub ?gFnorm.
have [|alpha [Zalpha kerPalpha]] := calS1_split1 cohS S1lam Zlam1.
  move=> zeta S1zeta lam'zeta; rewrite Itau1 ?sS1S //.
  suffices: pairwise_orthogonal calS1 by case/pairwise_orthogonalP=> _ ->.
  by rewrite seqInd_orthogonal ?gFnormal.
rewrite Itau1 ?mem_zchar // irrWnorm // expr1n !divr1 mul1r => [[Dlam ->]].
rewrite mulr1 -lerBlDl addrC opprB subrK calHuq //; apply: le_trans.
have [[x W2x ntx] [y W1y nty]] := (trivgPn _ ntW2, trivgPn _ ntW1).
have [_ _ _ [_ _ sW2P _ _] _] := StypeP; have Px := subsetP sW2P x W2x.
have [eps pr_eps] := C_prim_root_exists (prime_gt0 pr_q).
have{y W1y W2x nty} lamAmod: (tau1 lambda x == lambda x %[mod 1 - eps])%A.
  have [_ /mulG_sub[_ sW1S] _ tiPUW1] := sdprodP defS.
  have [_ /mulG_sub[sW1W sW2W] cW12 _] := dprodP defW.
  have /mulG_sub[sPPU _] := sdprodW defPU.
  have [o_y cxy]: #[y] = q /\ x \in 'C[y].
    split; last by apply/cent1P; red; rewrite (centsP cW12).
    by apply: nt_prime_order => //; apply/eqP; rewrite -order_dvdn order_dvdG.
  have lam1yx: (tau1 lambda (y * x)%g == tau1 lambda x %[mod 1 - eps])%A.
    by rewrite (vchar_ker_mod_prim pr_eps) ?in_setT.
  have [Sx Sy] := (subsetP (gFsub _ _) x Px, subsetP sW1S y W1y).
  have PUx := subsetP sPPU x Px.
  have lam_yx: (lambda (y * x)%g == lambda x %[mod 1 - eps])%A.
    by rewrite (vchar_ker_mod_prim pr_eps) ?char_vchar ?(seqInd_char Slam).
  apply: eqAmod_trans lam_yx; rewrite eqAmod_sym; apply: eqAmod_trans lam1yx.
  have PUlam: lambda \in 'CF(S, PU) by rewrite (seqInd_on _ Slam) ?gFnormal.
  have PU'yx: (y * x)%g \notin PU.
    by rewrite groupMr //= -[y \in PU]andbT -W1y -in_setI tiPUW1 !inE.
  rewrite (cfun_on0 PUlam PU'yx) (ortho_cycTIiso_vanish pddS) //.
    apply/orthoPl=> _ /mapP[_ /(cycTIirrP defW)[i [j ->]] ->].
    by rewrite (coherent_ortho_cycTIiso StypeP sSS0).
  rewrite !inE (groupMl x (subsetP sW1W y _)) // (subsetP sW2W) // andbT.
  rewrite groupMl // -[x \in _]andTb -PUx -in_setI tiPUW1 !inE negb_or ntx /=.
  by rewrite (contra _ PU'yx) // => /(subsetP sW2P)/(subsetP sPPU).
have{x ntx Px lamAmod} alphaAmod: (alpha 1%g == 0 %[mod 1 - eps])%A.
  have Hx: x \in H by have/mulG_sub[/subsetP->] := dprodW defH.
  have:= lamAmod; rewrite -[lambda x]addr0 Dlam ?inE ?ntx // mul1r eqAmodDl.
  rewrite cfker1 // [alpha]cfun_sum_constt (subsetP (cfker_sum _ _ _)) //.
  rewrite !inE Hx (subsetP _ x Px) //; apply/bigcapsP=> i /kerPalpha.
  by rewrite !inE => /subset_trans-> //; apply: cfker_scale.
have /dvdCP[b Zb ->]: (q %| alpha 1%g)%C.
  by rewrite (int_eqAmod_prime_prim pr_eps) // Cint_vchar1.
rewrite natrM mulrACA exprMn !mulrA 2?ler_pM2r ?gt0CG //.
by rewrite -[_ * b * b]mulrA P1_int2_lb.
Qed.


Lemma FTtypeP_sum_cycTIiso10_lb : \sum_(x in H^#) `|eta10 x| ^+ 2 >= #|H^#|%:R.
Proof.
pose mu1 := mu_ #1; have S1mu1: mu1 \in calS1 by rewrite S1mu ?Iirr1_neq0.
have Zeta10: eta10 \in 'Z[irr G] by rewrite cycTIiso_vchar.
have [tau1 cohS [b _ Dtau1]] := FTtypeP_coherence.
have{b Dtau1} oS1eta10: {in calS1, forall zeta, '[tau1 zeta, eta10] = 0}.
  move=> zeta /S1cases[[j nz_j ->] | /o_tau1_eta-> //].
  rewrite Dtau1 // cfdotZl cfdot_suml big1 ?mulr0 // => i _.
  by rewrite cfdot_cycTIiso signW2_eq0 (negPf nz_j) andbF.
have [_ /oS1eta10//|alpha [Zalpha kerPalpha]] := calS1_split1 cohS S1mu1 Zeta10.
rewrite {}oS1eta10 // expr0n mulr0 !mul0r subrr add0r => [[Deta10 -> ub_alpha]].
have{} Deta10: {in H^#, eta10 =1 alpha}.
  by move=> x /Deta10; rewrite !mul0r add0r.
set a1_2 := alpha 1%g ^+ 2 in ub_alpha.
have Dsum_alpha: \sum_(x in H^#) `|alpha x| ^+ 2 = #|H|%:R * '[alpha] - a1_2.
  rewrite (cfnormE (cfun_onG _)) mulVKf ?neq0CG // (big_setD1 _ (group1 H)) /=.
  by rewrite [RHS]addrC intr_normK ?addKr ?Cint_vchar1.
have [/mulG_sub[sPH _] [_ _ _ [_ _ sW2P _ _] _]] := (dprodW defH, StypeP).
have nz_alpha: alpha != 0.
  have [[x W2x ntx] [y W1y nty]] := (trivgPn _ ntW2, trivgPn _ ntW1).
  have [eps pr_eps] := C_prim_root_exists (prime_gt0 pr_q).
  have [_ mulW12 cW12 tiW12] := dprodP defW.
  have [sW1W sW2W] := mulG_sub mulW12.
  have [o_y cxy]: #[y] = q /\ x \in 'C[y].
    split; last by apply/cent1P; red; rewrite (centsP cW12).
    by apply: nt_prime_order => //; apply/eqP; rewrite -order_dvdn order_dvdG.
  have eta10x: (eta10 x == eta10 (y * x)%g %[mod 1 - eps])%A.
    by rewrite eqAmod_sym (vchar_ker_mod_prim pr_eps) ?in_setT.
  have eta10xy: (eta10 (y * x)%g == 1 %[mod 1 - eps])%A.
    rewrite cycTIiso_restrict; last first.
      rewrite !inE -mulW12 mem_mulg // andbT groupMl ?groupMr // -[_ || _]andTb.
      by rewrite andb_orr -{1}W2x -W1y andbC -!in_setI tiW12 !inE (negPf ntx).
    have {2}<-: w_ #1 0 x = 1.
      rewrite -[x]mul1g /w_ dprod_IirrE cfDprodE // irr0 cfun1E W2x mulr1.
      by rewrite lin_char1 ?irr_cyclic_lin.
    rewrite (vchar_ker_mod_prim pr_eps) ?(subsetP sW1W y) ?(subsetP sW2W) //.
    by rewrite irr_vchar.
  have: (alpha x == 1 %[mod 1 - eps])%A.
    rewrite -Deta10; last by rewrite !inE ntx (subsetP sPH) ?(subsetP sW2P).
    exact: eqAmod_trans eta10x eta10xy.
  apply: contraTneq => ->; rewrite cfunE eqAmod_sym.
  apply/negP=> /(int_eqAmod_prime_prim pr_eps pr_q (rpred1 _))/idPn[].
  by rewrite (dvdC_nat q 1) -(subnKC qgt2).
apply: wlog_neg => suma_lt_H.
suffices{ub_alpha} lb_a1_2: a1_2 >= #|H^#|%:R.
  have Pgt2: (2 < #|P|)%N by apply: leq_trans (subset_leq_card sW2P).
  apply: le_trans (le_trans lb_a1_2 _) ub_alpha.
  rewrite ler_pMl ?(lt_le_trans _ lb_a1_2) ?ler1n ?ltr0n //.
    by rewrite -(subnKC Pgt2).
  have:= leq_trans (ltnW Pgt2) (subset_leq_card sPH).
  by rewrite [in X in X -> _](cardsD1 1%g) group1.
have /natrP[n Dn]: '[alpha] \in Num.nat by rewrite Cnat_cfnorm_vchar.
have /natrP[m Dm]: a1_2 \in Num.nat by rewrite natr_exp_even ?Cint_vchar1.
rewrite Dm leC_nat leqNgt; apply: contra suma_lt_H => a1_2_lt_H.
rewrite {1}Dsum_alpha Dn Dm -natrM lerBrDl (cardsD1 1%g H) group1 /=.
case Dn1: n => [|[|n1]]; first by rewrite -cfnorm_eq0 Dn Dn1 eqxx in nz_alpha.
  have /dirrP[b [i Dalpha]]: alpha \in dirr H by rewrite dirrE Zalpha Dn Dn1 /=.
  rewrite -Dm /a1_2 Dalpha cfunE exprMn sqrr_sign mul1r muln1 mulrS lerD2r.
  by rewrite lin_char1 ?expr1n //; apply/char_abelianP.
rewrite -natrD leC_nat -add2n mulnDr (addnC 1%N) mulnDl -addnA.
by apply: leq_trans (leq_addr _ _); rewrite muln2 -addnn leq_add2r ltnW.
Qed.













Lemma FTtypeP_sum_cycTIiso01_lb :
  \sum_(x in H^#) `|eta01 x| ^+ 2 >= #|PU|%:R - (u ^ 2)%:R.
Proof.
have [tau1 cohS [b _ Dtau1]] := FTtypeP_coherence.
have Zeta01: eta01 \in 'Z[irr G] by rewrite cycTIiso_vchar.
pose j1 := signW2 b #1; pose d : algC := (-1) ^+ b; pose mu1 := mu_ j1.
have nzj1: j1 != 0 by [rewrite signW2_eq0 ?Iirr1_neq0]; have S1mu1 := S1mu nzj1.
have o_mu_eta01 j: j != 0 -> '[tau1 (mu_ j), eta01] = d *+ (j == j1).
  move/Dtau1->; rewrite -/d cfdotZl cfdot_suml big_ord_recl /=.
  rewrite cfdot_cycTIiso andTb (inv_eq (signW2K b)).
  by rewrite big1 ?addr0 ?mulr_natr // => i _; rewrite cfdot_cycTIiso.
have [zeta | alpha [Zalpha kerPalpha [_]]] := calS1_split1 cohS S1mu1 Zeta01.
  case/S1cases=> [[j nz_j ->] | /o_tau1_eta-> //].
  by rewrite o_mu_eta01 // (inj_eq (prTIred_inj _)) => /negPf->.
rewrite o_mu_eta01 // eqxx mulrb => -> lb_alpha.
rewrite -lerBlDl cfnorm_prTIred -/q mulrAC sqrr_sign mul1r.
rewrite mu1uq // natrM exprMn (mulrAC _ q%:R) (mulrA _ q%:R) !mulfK ?neq0CG //.
rewrite natrX -(sdprod_card defS) natrM -mulrBl mulfK ?neq0CG //.
rewrite addrC opprB subrK mulrACA; apply: le_trans lb_alpha.
apply: le_trans (P1_int2_lb _) _; first by rewrite rpredMsign Cint_vchar1.
by rewrite exprMn sqrr_sign mul1r lexx.
Qed.




Variable K : {group gT}.
Let G0 := ~: (class_support H G :|: class_support K G).

Variables (tau1 : {additive 'CF(S) -> 'CF(G)}) (lambda : 'CF(S)).

Hypothesis cohS : coherent_with calS S^# tau tau1.
Hypothesis cohSmu : typeP_TIred_coherent tau1.

Hypotheses (Slam : lambda \in calS) (irrHlam : irrIndH lambda).



Let cover_G0 : {in G0, forall x, tau1 lambda x != 0 \/ eta_ #1 0 x != 0}.
Proof.
have [[b _ Dtau1_mu] [/= Ilam Hlam]] := (cohSmu, andP irrHlam).
pose sum_eta1 := (-1) ^+ b *: \sum_i eta_ i #1.
have{Dtau1_mu} [j nz_j tau1muj]: exists2 j, j != 0 & tau1 (mu_ j) = sum_eta1.
  pose j := signW2 b #1; have nz: j != 0 by rewrite signW2_eq0 Iirr1_neq0.
  by exists j; rewrite // Dtau1_mu // signW2K.
move=> x; rewrite !inE => /norP[H'x _].
have{tau1muj} ->: tau1 lambda x = sum_eta1 x.
  rewrite -[lambda](subrK (mu_ j)) raddfD cfunE /= tau1muj.
  rewrite [tau1 _ x](cfun_on0 _ H'x) ?add0r {x H'x}//=.
  have Hmuj: mu_ j \in calH := Hmu nz_j.
  have dmu1: (lambda - mu_ j) 1%g == 0 by rewrite !cfunE !calHuq ?subrr.
  have H1dmu: lambda - mu_ j \in 'CF(S, H^#).
    by rewrite cfun_onD1 rpredB ?((seqInd_on (gFnormal _ _)) setT).
  have [_ ->] := cohS; last first.
    by rewrite zcharD1E ?rpredB ?mem_zchar ?FTseqInd_TIred /=.
  have A0dmu := cfun_onS (Fitting_sub_FTsupp0 maxS) H1dmu.
  have [_ _ _ _ [_ -> //]] := FTtypeP_facts.
  by rewrite cfInd_on ?subsetT // (cfun_onS _ H1dmu) ?imset2Sl ?subsetDl.
apply/nandP/andP=> [[/eqP sum_eta1x_0 /eqP eta1x_0]].
have cycW: cyclic W by have [] := ctiWG.
have W'x: x \notin class_support (cyclicTIset defW) G.
  apply: contra_eqN eta1x_0 => /imset2P[{H'x sum_eta1x_0}x g Wx Gg ->].
  rewrite cfunJ {g Gg}// cycTIiso_restrict //.
  by rewrite lin_char_neq0 ?irr_cyclic_lin //; case/setDP: Wx.
have nz_i1 : #1 != 0 :> Iirr W1 by rewrite Iirr1_neq0.
have eta_x_0 i: i != 0 -> eta_ i 0 x = 0.
  rewrite /w_ dprod_IirrEl => /(cfExp_prime_transitive pr_q nz_i1)[k co_k_p ->].
  have: coprime k #[w_ #1 0]%CF by rewrite /w_ dprod_IirrEl cforder_sdprod.
  rewrite rmorphXn /= -dprod_IirrEl => /(cycTIiso_aut_exists ctiWG)[[uu ->] _].
  by rewrite cfunE /= -/sigma eta1x_0 rmorph0.
have eta_i1 i: i != 0 -> eta_ i #1 x = eta_ 0 #1 x - 1.
  move=> nz_i; apply/eqP; pose alpha := cfCyclicTIset defW i #1.
  have Walpha: alpha \in 'CF(W, cyclicTIset defW).
    by rewrite (cfCycTI_on ctiWG) ?Iirr1_neq0.
  have: sigma alpha x == 0.
    by rewrite cycTIiso_Ind // (cfun_on0 _ W'x) ?cfInd_on ?subsetT.
  rewrite [alpha]cfCycTI_E linearD !linearB /= !cfunE cycTIiso1 cfun1E inE.
  by rewrite {1}eta_x_0 //= subr0 addrC addr_eq0 opprB.
have eta11x: eta_ #1 #1 x = - q%:R^-1.
  rewrite -mulN1r; apply: canRL (mulfK (neq0CG W1)) _.
  transitivity ((-1) ^+ b * sum_eta1 x - 1); last first.
    by rewrite sum_eta1x_0 mulr0 add0r.
  rewrite cfunE signrMK mulr_natr -/q -nirrW1 -sumr_const sum_cfunE.
  by rewrite !(bigD1 0 isT) /= addrAC eta_i1 // (eq_bigr _ eta_i1).
have: - eta_ #1 #1 x \in Num.int.
  rewrite rpredN Cint_rat_Aint ?Aint_vchar ?cycTIiso_vchar //.
  by rewrite eta11x rpredN rpredV rpred_nat.
case/norm_intr_ge1/implyP/idPn; rewrite eta11x opprK invr_eq0 neq0CG /=.
by rewrite normfV normr_nat invf_ge1 ?gt0CG // lern1 -ltnNge ltnW.
Qed.


Lemma FTtypeP_sum_nonFitting_lb :
  \sum_(x in G0) (`|tau1 lambda x| ^+ 2 + `|eta_ #1 0 x| ^+ 2) >= #|G0|%:R.
Proof.
pose A (xi : 'CF(G)) := [set x in G0 | xi x != 0].
suffices A_ub xi: xi \in dirr G -> #|A xi|%:R <= \sum_(x in G0) `|xi x| ^+ 2.
  apply: le_trans (_ : (#|A (tau1 lambda)| + #|A (eta_ #1 0)|)%:R <= _).
    rewrite leC_nat -cardsUI /A !setIdE -setIUr (leq_trans _ (leq_addr _ _)) //.
    rewrite subset_leq_card // subsetIidl.
    by apply/subsetP=> x /cover_G0/orP; rewrite !inE.
  rewrite natrD big_split lerD ?A_ub ?cycTIiso_dirr //.
  have [[[Itau1 Ztau1] _] [Ilam _]] := (cohS, andP irrHlam).
  by rewrite dirrE Ztau1 ?Itau1 ?mem_zchar //= irrWnorm.
case/dirrP=> d [t Dxi]; rewrite (big_setID [set x | xi x != 0]) /= addrC.
rewrite -setIdE -/(A _) big1 ?add0r => [|x]; last first.
  by rewrite !inE negbK => /andP[/eqP-> _]; rewrite normr0 expr0n.
rewrite -sum1_card !(partition_big_imset (@cycle _)) /= natr_sum.
apply: ler_sum => _ /imsetP[x Ax ->].
pose B := [pred y | generator <[x]> y]; pose phi := 'Res[<[x]>] 'chi_t.
have defA: [pred y in A xi | <[y]> == <[x]>] =i B.
  move=> y; rewrite inE /= eq_sym andb_idl // !inE => eq_xy.
  have LGxy L (LG := class_support L G): x \notin LG -> y \notin LG.
    rewrite /LG class_supportEr; apply: contra => /bigcupP[g Gg Lg_y].
    apply/bigcupP; exists g => //; move: Lg_y.
    by rewrite -!cycle_subG (eqP eq_xy).
  move: Ax; rewrite !inE !negb_or -andbA => /and3P[/LGxy-> /LGxy->].
  apply: contraNneq => chi_y_0.
  have [k co_k_y ->]: exists2 k, coprime k #[y] & x = (y ^+ k)%g.
    have Yx: generator <[y]> x by rewrite [generator _ _]eq_sym.
    have /cycleP[k Dx] := cycle_generator Yx; exists k => //.
    by rewrite coprime_sym -generator_coprime -Dx.
  have Zxi: xi \in 'Z[irr G] by rewrite Dxi rpredZsign irr_vchar.
  have [uu <- // _] := make_pi_cfAut [group of G] co_k_y.
  by rewrite cfunE chi_y_0 rmorph0.
have resB: {in B, forall y, `|xi y| ^+ 2 = `|phi y| ^+ 2}.
  move=> y /cycle_generator Xy.
  by rewrite Dxi cfunE normrMsign cfResE ?subsetT.
rewrite !(eq_bigl _ _ defA) sum1_card (eq_bigr _ resB).
apply: sum_norm2_char_generators => [|y By].
  by rewrite cfRes_char ?irr_char.
rewrite -normr_eq0 -sqrf_eq0 -resB // sqrf_eq0 normr_eq0.
by move: By; rewrite -defA !inE -andbA => /and3P[].
Qed.

End Thirteen_2_3_5_to_9.

Section Thirteen_4_10_to_16.




Variables S U W W1 W2 : {group gT}.
Hypotheses (maxS : S \in 'M) (defW : W1 \x W2 = W).
Hypotheses (StypeP : of_typeP S U defW).

Local Notation "` 'W1'" := (gval W1) (only parsing) : group_scope.
Local Notation "` 'W2'" := (gval W2) (only parsing) : group_scope.
Local Notation "` 'W'" := (gval W) (only parsing) : group_scope.
Local Notation V := (cyclicTIset defW).

Local Notation "` 'S'" := (gval S) (only parsing) : group_scope.
Local Notation P := (`S`_\F)%G.
Local Notation "` 'P'" := `S`_\F : group_scope.
Local Notation PU := S^`(1)%G.
Local Notation "` 'PU'" := `S^`(1) : group_scope.
Local Notation "` 'U'" := (gval U) (only parsing) : group_scope.
Local Notation C := 'C_U(`P)%G.
Local Notation "` 'C'" := 'C_`U(`P) : group_scope.
Local Notation H := 'F(S)%G.
Local Notation "` 'H'" := 'F(`S) : group_scope.

Let defS : PU ><| W1 = S.
Proof.
by have [[]] := StypeP.
Qed.
Let defPU : P ><| U = PU.
Proof.
by have [_ []] := StypeP.
Qed.
Let defH : P \x C = H.
Proof.
by have [] := typeP_context StypeP.
Qed.

Let notStype1 : FTtype S != 1%N.
Proof.
exact: FTtypeP_neq1 StypeP.
Qed.
Let notStype5 : FTtype S != 5%N.
Proof.
exact: FTtype5_exclusion maxS.
Qed.

Let pddS := FT_prDade_hypF maxS StypeP.
Let ptiWS : primeTI_hypothesis S PU defW := FT_primeTI_hyp StypeP.
Let ctiWG : cyclicTI_hypothesis G defW := pddS.
Local Notation Sfacts := (FTtypeP_facts maxS StypeP).

Let ntW1 : W1 :!=: 1.
Proof.
by have [[]] := StypeP.
Qed.
Let ntW2 : W2 :!=: 1.
Proof.
by have [_ _ _ []] := StypeP.
Qed.
Let cycW1 : cyclic W1.
Proof.
by have [[]] := StypeP.
Qed.
Let cycW2 : cyclic W2.
Proof.
by have [_ _ _ []] := StypeP.
Qed.

Let p := #|W2|.
Let q := #|W1|.

Let pr_p : prime p.
Proof.
by have [] := FTtypeP_primes maxS StypeP.
Qed.
Let pr_q : prime q.
Proof.
by have [] := FTtypeP_primes maxS StypeP.
Qed.

Let qgt2 : q > 2.
Proof.
by rewrite odd_gt2 ?mFT_odd ?cardG_gt1.
Qed.
Let pgt2 : p > 2.
Proof.
by rewrite odd_gt2 ?mFT_odd ?cardG_gt1.
Qed.

Let coPUq : coprime #|PU| q.
Proof.
by rewrite (coprime_sdprod_Hall_r defS); have [[]] := StypeP.
Qed.

Let sW2P: W2 \subset P.
Proof.
by have [_ _ _ []] := StypeP.
Qed.

Let p'q : q != p.
Proof.
by rewrite -dvdn_prime2 -?prime_coprime -?(cyclic_dprod defW) //; case: ctiWG.
Qed.

Let nirrW1 : #|Iirr W1| = q.
Proof.
by rewrite card_Iirr_cyclic.
Qed.
Let nirrW2 : #|Iirr W2| = p.
Proof.
by rewrite card_Iirr_cyclic.
Qed.
Let NirrW1 : Nirr W1 = q.
Proof.
by rewrite -nirrW1 card_ord.
Qed.
Let NirrW2 : Nirr W2 = p.
Proof.
by rewrite -nirrW2 card_ord.
Qed.

Local Open Scope ring_scope.

Let sigma := (cyclicTIiso ctiWG).
Let w_ i j := (cyclicTIirr defW i j).
Local Notation eta_ i j := (sigma (w_ i j)).

Let mu_ := primeTIred ptiWS.
Local Notation tau := (FT_Dade0 maxS).

Let calS0 := seqIndD PU S S`_\s 1.
Let rmR := FTtypeP_coh_base maxS StypeP.
Let scohS0 : subcoherent calS0 tau rmR.
Proof.
exact: FTtypeP_subcoherent StypeP.
Qed.

Let calS := seqIndD PU S P 1.
Let sSS0 : cfConjC_subset calS calS0.
Proof.
exact/seqInd_conjC_subset1/Fcore_sub_FTcore.
Qed.

Local Notation calH := (seqIndT H S).
Local Notation calHuq := (FTtypeP_Ind_Fitting_1 maxS StypeP).

Section Thirteen_10_to_13_15.










Variable lambda : 'CF(S).
Hypotheses (Slam : lambda \in calS) (irrHlam : irrIndH lambda).
Let Hlam : lambda \in calH.
Proof.
by have [] := andP irrHlam.
Qed.
Let Ilam : lambda \in irr S.
Proof.
by have [] := andP irrHlam.
Qed.

Let c := #|C|.
Let u := #|U : C|.
Let oU : #|U| = (u * c)%N.
Proof.
by rewrite mulnC Lagrange ?subsetIl.
Qed.

Let m : algC := 1 - q.-1%:R^-1 - q.-1%:R / (q ^ p)%:R + (q.-1 * q ^ p)%:R^-1.

Section Thirteen_4_10.




Variables T V : {group gT}.
Hypotheses (maxT : T \in 'M) (xdefW : W2 \x W1 = W).
Hypothesis TtypeP : of_typeP T V xdefW.

Local Notation Q := (gval T)`_\F.
Local Notation D := 'C_(gval V)(Q).
Local Notation K := 'F(gval T).
Let v := #|V : D|.

Local Notation calT := (seqIndD T^`(1) T (gval T)`_\F 1).


Let tiHK: class_support H^# G :&: class_support K^# G = set0.
Proof.
apply/eqP/set0Pn => [[_ /setIP[/imset2P[x g1 H1x _ ->] /imset2P[xg g2]]]].
pose g := (g2 * g1^-1)%g => /setD1P[_ Kxg] _ Dxg.
have{Kxg Dxg} Kgx: x \in K :^ g by rewrite conjsgM mem_conjgV Dxg memJ_conjg.
have{Kgx} cxQg: Q :^ g \subset 'C[x].
  rewrite sub_cent1 (subsetP _ _ Kgx) // centJ conjSg centsC.
  have [/dprodW/mulG_sub[/subset_trans-> //=]] := typeP_context TtypeP.
  exact: FTtypeP_Fitting_abelian TtypeP.
have{cxQg} sQgS: Q :^ g \subset S.
  have sH1A0 := subset_trans (Fitting_sub_FTsupp maxS) (FTsupp_sub0 S).
  have{sH1A0} A0x: x \in 'A0(S) := subsetP sH1A0 x H1x.
  have [_ _ _ _ [tiA0 _]] := Sfacts.
  by have:= cent1_normedTI tiA0 A0x; rewrite setTI; apply: subset_trans.
have /pHallP[_ eq_Sq_q]: q.-Hall(S) W1.
  have qW1: q.-group W1 by rewrite /pgroup pnat_id.
  have [|//] := coprime_mulGp_Hall (sdprodW defS) _ qW1.
  by rewrite /pgroup p'natE // -prime_coprime // coprime_sym.
have:= partn_dvd q (cardG_gt0 _) (cardSg sQgS).
rewrite cardJg /= -eq_Sq_q => /(dvdn_leq_log q (cardG_gt0 _))/idPn[].
have [_ [_ ->] _ _ _] := FTtypeP_facts maxT TtypeP.
by rewrite -ltnNge p_part !pfactorK // logn_prime // eqxx ltnW.
Qed.


Let T_Galois : [/\ typeP_Galois TtypeP, D = 1%g & v = (q ^ p).-1 %/ q.-1].
Proof.
apply: FTtypeP_no_Ind_Fitting_facts => //; apply/hasPn=> theta Ttheta.
apply/andP=> [[/= irr_theta Ktheta]]; set calK := seqIndT _ T in Ktheta.
have [tau1S cohS [bS _ Dtau1Smu]] := FTtypeP_coherence maxS StypeP.
have [tau1T cohT [bT _ Dtau1Tnu]] := FTtypeP_coherence maxT TtypeP.
have [[[Itau1S Ztau1S] Dtau1S] [[Itau1T Ztau1T] Dtau1T]] := (cohS, cohT).
have onF0 := cfun_onS (Fitting_sub_FTsupp0 _).
pose HG := class_support H^# G; pose KG := class_support K^# G.
have Hdlambda xi:
  xi \in calH -> xi \in calS -> tau1S (lambda - xi) \in 'CF(G, HG).
-
 move=> Hxi Sxi; have H1dxi: lambda - xi \in 'CF(S, H^#).
    rewrite cfun_onD1 rpredB ?((seqInd_on (gFnormal _ _)) setT) //=.
    by rewrite !cfunE !calHuq ?subrr.
  rewrite Dtau1S ?zcharD1E ?rpredB ?mem_zchar ?(cfun_on0 H1dxi) ?inE ?eqxx //=.
  by have [_ _ _ _ [_ ->]] := Sfacts; rewrite ?onF0 // cfInd_on ?subsetT.
have Kdtheta xi:
  xi \in calK -> xi \in calT -> tau1T (theta - xi) \in 'CF(G, KG).
-
 move=> Kxi Txi; have K1dxi: theta - xi \in 'CF(T, K^#).
    rewrite cfun_onD1 rpredB ?((seqInd_on (gFnormal _ _)) setT) //=.
    by rewrite !cfunE !(FTtypeP_Ind_Fitting_1 _ TtypeP) ?subrr.
  rewrite Dtau1T ?zcharD1E ?rpredB ?mem_zchar ?(cfun_on0 K1dxi) ?inE ?eqxx //=.
  have [_ _ _ _ [_ ->]] := FTtypeP_facts maxT TtypeP; last exact: onF0.
  by rewrite cfInd_on ?subsetT.
have oHK alpha beta:
  alpha \in 'CF(G, HG) -> beta \in 'CF(G, KG) -> '[alpha, beta] = 0.
-
 by move=> Halpha Kbeta; rewrite (cfdotElr Halpha Kbeta) tiHK big_set0 mulr0.
have o_lambda_theta: '[tau1S lambda, tau1T theta] = 0.
  pose S1 := lambda :: lambda^*%CF; pose T1 := theta :: theta^*%CF.
  have sS1S: {subset S1 <= calS} by apply/allP; rewrite /= Slam cfAut_seqInd.
  have sT1T: {subset T1 <= calT} by apply/allP; rewrite /= Ttheta cfAut_seqInd.
  have ooS1: orthonormal (map tau1S S1).
    rewrite map_orthonormal //; first exact: (sub_in2 (zchar_subset sS1S)).
    apply: seqInd_conjC_ortho2 Slam; rewrite ?gFnormal ?mFT_odd //.
    by have /mulG_sub[] := sdprodW defPU.
  have ooT1: orthonormal (map tau1T T1).
    rewrite map_orthonormal //; first exact: (sub_in2 (zchar_subset sT1T)).
    apply: seqInd_conjC_ortho2 Ttheta; rewrite ?gFnormal ?mFT_odd //.
    by have [_ [_ _ _ /sdprodW/mulG_sub[]]] := TtypeP.
  have /andP/orthonormal_vchar_diff_ortho := conj ooS1 ooT1; apply.
    by split; apply/allP; rewrite /= ?Ztau1S ?Ztau1T ?mem_zchar ?cfAut_seqInd.
  have on1'G M beta: beta \in 'CF(G, class_support M^# G) -> beta 1%g = 0.
    move/cfun_on0->; rewrite // class_supportEr -cover_imset -class_supportD1.
    by rewrite !inE eqxx.
  rewrite -!raddfB; set alpha := tau1S _; set beta := tau1T _.
  have [Halpha Kbeta]: alpha \in 'CF(G, HG) /\ beta \in 'CF(G, KG).
    by rewrite Hdlambda ?Kdtheta ?cfAut_seqInd ?cfAut_seqIndT.
  by rewrite oHK // {1}(on1'G _ _ Halpha) (on1'G _ _ Kbeta) !eqxx.
pose ptiWT := FT_primeTI_hyp TtypeP; pose nu_ := primeTIred ptiWT.
have etaC := cycTIisoC (FT_cyclicTI_hyp StypeP) (FT_cyclicTI_hyp TtypeP).
have /idPn[]: '[tau1S (lambda - mu_ #1), tau1T (theta - nu_ #1)] == 0.
  rewrite oHK //.
    by rewrite Hdlambda ?FTseqInd_TIred ?FTprTIred_Ind_Fitting ?Iirr1_neq0.
  by rewrite Kdtheta ?FTseqInd_TIred ?FTprTIred_Ind_Fitting ?Iirr1_neq0.
rewrite !raddfB /= !cfdotBl o_lambda_theta Dtau1Smu ?Dtau1Tnu ?Iirr1_neq0 //.
rewrite !cfdotZl !cfdotZr rmorph_sign !cfdot_suml big1 => [|i _]; last first.
  rewrite cfdotC etaC (coherent_ortho_cycTIiso TtypeP _ cohT) ?conjC0 //.
  by apply: seqInd_conjC_subset1; apply: Fcore_sub_FTcore.
rewrite cfdot_sumr big1 ?mulr0 ?subr0 ?add0r ?opprK => [|j _]; last first.
  by rewrite -etaC (coherent_ortho_cycTIiso StypeP _ cohS).
set i1 := iter bT _ #1; set j1 := iter bS _ #1.
rewrite !mulf_eq0 !signr_eq0 (bigD1 i1) //= addrC big1 => [|i i1'i]; last first.
  rewrite etaC cfdot_sumr big1 // => j _; rewrite cfdot_cycTIiso.
  by rewrite (negPf i1'i) andbF.
rewrite etaC cfdot_sumr (bigD1 j1) //= cfdot_cycTIiso !eqxx addrCA.
rewrite big1 ?addr0 ?oner_eq0 // => j j1'j; rewrite cfdot_cycTIiso.
by rewrite eq_sym (negPf j1'j).
Qed.


Lemma FTtypeP_compl_ker_ratio_lb : m * (p ^ q.-1)%:R / q%:R < u%:R / c%:R.
Proof.
have [tau1 cohS cohSmu] := FTtypeP_coherence maxS StypeP.
pose lam1 := tau1 lambda; pose eta10 := eta_ #1 0.
pose H1G := class_support H^# G; pose K1G := class_support K^# G.
pose G0 := ~: (class_support H G :|: class_support K G).
pose invJ (f : gT -> algC) := forall y x, f (x ^ y) = f x.
pose nm2 (chi : 'CF(G)) x := `|chi x| ^+ 2; pose g : algC := #|G|%:R.
have injJnm2 chi: invJ (nm2 chi) by move=> y x; rewrite /nm2 cfunJ ?inE.
have nm2_dirr chi: chi \in dirr G -> g^-1 <= nm2 chi 1%g / g.
  case/dIrrP=> d ->; rewrite -{1}[g^-1]mul1r ler_pM2r ?invr_gt0 ?gt0CG //.
  rewrite expr_ge1 ?normr_ge0 // cfunE normrMsign.
  by rewrite irr1_degree normr_nat ler1n irr_degree_gt0.
pose mean (F M : {set gT}) (f : gT -> algC) := (\sum_(x in F) f x) / #|M|%:R.
have meanTI M (F := 'F(gval M)^#) (FG := class_support F G) f:
  M \in 'M -> normedTI F G M -> invJ f -> mean FG G f = mean F M f.
-
 move=> maxM /and3P[ntF tiF /eqP defN] fJ; apply: canLR (mulfK (neq0CG _)) _.
  rewrite (set_partition_big _ (partition_class_support ntF tiF)) /=.
  rewrite mulrAC -mulrA -natf_indexg ?subsetT //=.
  have ->: #|G : M| = #|F :^: G| by rewrite card_conjugates defN.
  rewrite mulr_natr -sumr_const; apply: eq_bigr => _ /imsetP[y _ ->].
  by rewrite (big_imset _ (in2W (conjg_inj _))) (eq_bigr _ (in1W (fJ y))).
have{meanTI} meanG f :
  invJ f -> mean G G f = f 1%g / g + mean H^# S f + mean K^# T f + mean G0 G f.
-
 have type24 maxM := compl_of_typeII_IV maxM _ (FTtype5_exclusion maxM).
  have tiH: normedTI H^# G S by have/type24[] := StypeP.
  have{type24} tiK: normedTI K^# G T by have/type24[] := TtypeP.
  move=> fJ; rewrite -!meanTI // {1}/mean (big_setD1 1%g) // (big_setID H1G) /=.
  rewrite [in rhs in _ + (_ + rhs)](big_setID K1G) /= -/g -!mulrDl !addrA.
  congr ((_ + _ + _ + _) / g); rewrite ?(setIidPr _) // /H1G /K1G.
  +
 by rewrite class_supportEr -cover_imset -class_supportD1 setSD ?subsetT.
  +
 rewrite subsetD -setI_eq0 setIC tiHK eqxx andbT.
    by rewrite class_supportEr -cover_imset -class_supportD1 setSD ?subsetT.
  rewrite !class_supportEr -!cover_imset -!class_supportD1.
  apply: eq_bigl => x; rewrite !inE andbT -!negb_or orbCA orbA orbC.
  by case: (x =P 1%g) => //= ->; rewrite mem_class_support ?group1.
have lam1_ub: mean G0 G (nm2 lam1) <= lambda 1%g ^+ 2 / #|S|%:R - g^-1.
  have [[Itau1 Ztau1] _] := cohS.
  have{Itau1} n1lam1: '[lam1] = 1 by rewrite Itau1 ?mem_zchar ?irrWnorm.
  have{Ztau1} Zlam1: lam1 \in 'Z[irr G] by rewrite Ztau1 ?mem_zchar.
  rewrite -lerN2 opprB -(lerD2l '[lam1]) {1}n1lam1 addrCA.
  rewrite (cfnormE (cfun_onG _)) (mulrC g^-1) [_ / g](meanG (nm2 _)) // addrK.
  rewrite -addrA lerD ?nm2_dirr //; first by rewrite dirrE Zlam1 n1lam1 /=.
  rewrite ler_wpDr ?divr_ge0 ?ler0n //.
    by apply: sumr_ge0 => x _; rewrite exprn_ge0 ?normr_ge0.
  rewrite ler_pdivlMr ?gt0CG // mulrBl mul1r divfK ?neq0CG //.
  by rewrite (FTtypeP_sum_Ind_Fitting_lb StypeP).
pose ub_lam1 : algC := (#|T^`(1)%g|%:R - (v ^ 2)%:R - #|Q|.-1%:R) / #|T|%:R.
have [_ D_1 Dv] := T_Galois.
have defK : K = Q by have [<-] := typeP_context TtypeP; rewrite D_1 dprodg1.
have eta10_ub: mean G0 G (nm2 (eta_ #1 0)) <= #|G0|%:R / g - ub_lam1.
  rewrite -lerN2 opprB -(lerD2l '[eta_ #1 0]) {2}(cfnormE (cfun_onG _)).
  rewrite (mulrC g^-1) [_ / g in rhs in _ <= rhs](meanG (nm2 _)) // addrK.
  have ->: '[eta_ #1 0] = mean G G (fun _ => 1).
    by rewrite /mean sumr_const cfdot_cycTIiso eqxx divff ?neq0CG.
  rewrite meanG // [in lhs in lhs <= _]/mean !sumr_const addrACA subrr addr0.
  rewrite [lhs in lhs <= _]addrAC -addrA -mulrDl (cardsD1 1%g Q) group1 -defK.
  rewrite mul1r subrK ?lerD ?ler_pM2r ?invr_gt0 ?gt0CG //.
  -
 by rewrite nm2_dirr ?cycTIiso_dirr.
  -
 exact: (FTtypeP_sum_cycTIiso10_lb _ StypeP).
  congr (_ <= _): (FTtypeP_sum_cycTIiso01_lb maxT TtypeP).
  by apply: eq_bigr => x _; congr (nm2 _ x); apply: cycTIisoC.
have: ub_lam1 < lambda 1%g ^+ 2 / #|S|%:R.
  rewrite -[_ / _](subrK g^-1) ltr_pwDr ?invr_gt0 ?gt0CG //.
  rewrite -(lerD2r (#|G0|%:R / g)) -lerBrDl -addrA.
  apply: le_trans (lerD lam1_ub eta10_ub).
  rewrite -mulrDl -big_split /= ler_pM2r ?invr_gt0 ?gt0CG //.
  exact: FTtypeP_sum_nonFitting_lb.
rewrite calHuq // -/u -(sdprod_card defS) -/q -(sdprod_card defPU) oU mulnC.
rewrite mulnCA mulnAC !natrM !invfM expr2 !mulrA !mulfK ?neq0CG ?neq0CiG //.
rewrite mulrAC ltr_pdivlMr ?ltr_pdivrMr ?gt0CG //.
congr (_ < _); last by rewrite -mulrA mulrC.
have [_ [_ ->] _ _ _] := Sfacts; rewrite -/p -/q.
rewrite -{1}(ltn_predK qgt2) expnS natrM mulrA; congr (_ * _).
have /sdprod_card oT: T^`(1) ><| W2 = T by have [[]] := TtypeP.
rewrite /ub_lam1 -{}oT natrM invfM mulrA divfK ?mulrBl ?divff ?neq0CG //.
have /sdprod_card <-: Q ><| V = T^`(1)%g by have [_ []] := TtypeP.
have ->: #|V| = v by rewrite /v D_1 indexg1.
rewrite mulnC !natrM invfM mulrA mulfK ?neq0CiG //.
have [_ [_ oQ] _ _ _] := FTtypeP_facts maxT TtypeP; rewrite -/p -/q /= in oQ.
rewrite Dv natf_div ?dvdn_pred_predX // oQ.
rewrite invfM invrK -(mulrA _ (q.-1)%:R) -subn1 mulVKf ?gt_eqF ?ltr0n //; last first.
  by rewrite subn_gt0 -(exp1n p) ltn_exp2r ltnW // ltnW.
rewrite -oQ natrB ?cardG_gt0 // !mulrBl mul1r mulrC mulKf ?neq0CG // -invfM.
by rewrite -natrM oQ opprD opprK addrA [LHS]addrAC.
Qed.

End Thirteen_4_10.


Let gen_lb_uc : m * (p ^ q.-1)%:R / q%:R < u%:R / c%:R.
Proof.
have [T pairST [xdefW [V TtypeP]]] := FTtypeP_pair_witness maxS StypeP.
by apply: FTtypeP_compl_ker_ratio_lb TtypeP; have [[]] := pairST.
Qed.

Import mathcomp.algebra.ssrint.

Let lb_m_cases :
 [/\  (q >= 7)%N -> m > 8 / 10,
      (q >= 5)%N -> m > 7 / 10
   &  q = 3%N ->
           m > 49 / 100 /\ u%:R / c%:R > (p ^ 2).-1%:R / 6 :> algC].
Proof.
pose mkrat b d := fracq (b, d%:Z).
pose test r b d := 1 - mkrat 1 r.-1 - mkrat 1 (r ^ 2)%N > mkrat b%:Z d.
have lb_m r b d: test r.+2 b d -> (q >= r.+2)%N -> m > b%:R / d%:R.
  rewrite /test /mkrat !fracqE !CratrE/= => ub_bd le_r_q.
  apply: lt_le_trans ub_bd _; rewrite ler_wpDr ?invr_ge0 ?ler0n //.
  rewrite -!addrA lerD2l -!opprD lerN2 lerD //.
    rewrite mul1r lef_pV2 ?qualifE/= ?ltr0n //; last by rewrite -(subnKC qgt2).
    by rewrite leC_nat -ltnS (ltn_predK qgt2).
  rewrite -(ltn_predK pgt2) expnSr natrM invfM mulrA.
  rewrite ler_pdivrMr ?gt0CG // mulrAC mul1r -subn1.
  rewrite ler_pM ?invr_ge0 ?ler0n ?leC_nat ?leq_subr //.
  rewrite lef_pV2 ?qualifE/= ?ltr0n ?leC_nat ?expn_gt0 ?(prime_gt0 pr_q) //.
  apply: leq_trans (_ : q ^ 2 <= _)%N; first by rewrite leq_exp2r.
  by rewrite -(subnKC qgt2) leq_pexp2l // -subn1 ltn_subRL.
split=> [||q3]; try by apply: lb_m; compute.
pose d r : algC := (3 ^ r.-1)%:R^-1; pose f r := (r ^ 2)%:R * d r.
have Dm: m = (1 - d p) / 2.
  rewrite mulrBl mul1r -mulrN mulrC /m q3 /= addrAC -addrA natrM invfM -mulrBl.
  rewrite -{1}(ltn_predK pgt2) expnS natrM invfM mulrA.
    by congr (_ + _ / _); rewrite -!CratrE.
split; last apply: le_lt_trans gen_lb_uc.
apply: lt_le_trans (_ : (1 - d 5%N) / 2 <= _).
    by rewrite /d -!CratrE; compute.
  rewrite Dm ler_pM2r ?invr_gt0 ?ltr0n // lerD2l lerN2.
  rewrite lef_pV2 ?qualifE/= ?ltr0n ?expn_gt0 // leC_nat leq_pexp2l //=.
  by rewrite -subn1 ltn_subRL odd_geq ?mFT_odd //= ltn_neqAle pgt2 andbT -q3.
rewrite -mulrA mulrCA Dm -mulrA -invfM -natrM mulrA q3 mulrBr mulr1.
rewrite ler_pM2r ?invr_gt0 ?ltr0n //= -subn1 natrB ?expn_gt0 ?prime_gt0 //.
rewrite lerD2l lerN2 -/(f p) -(subnKC pgt2).
elim: (p - 3)%N => [|r]; first by rewrite /f /d -!CratrE; compute.
apply: le_trans; rewrite addnS /f /d; set x := (3 + r)%N.
rewrite ler_pdivrMr ?ltr0n ?expn_gt0 // mulrAC (expnS 3) (natrM _ 3).
rewrite mulrA mulfK ?gt_eqF ?ltr0n ?expn_gt0 //.
rewrite -ler_pdivrMl ?ltr0n // !natrX -exprVn -exprMn.
rewrite [X in _ * X]mulrS mulrDr mulr1 mulVf ?pnatr_eq0 //.
apply: le_trans (_ : (3^-1 + 1) ^+ 2 <= _); last by rewrite -!CratrE; reflexivity.
rewrite ler_sqr ?rpredD ?rpred1 ?rpredV ?rpred_nat // lerD2r.
by rewrite lef_pV2 ?qualifE/= ?ltr0n ?leC_nat.
Qed.


Let small_m_q3 : m < (q * p)%:R / (q.*2.+1 * p.-1)%:R -> q = 3%N /\ (p >= 5)%N.
Proof.
move=> ub_m; have [lb7_m lb5_m _] := lb_m_cases.
have [p3 | p_neq3] := eqVneq p 3%N.
  have ub7_m: ~~ (8 / 10 < m).
    rewrite lt_gtF // (lt_le_trans ub_m) // p3 /=.
    apply: le_trans (_ : 3 / 4 <= _); last first.
      by rewrite -!CratrE; compute.
    rewrite ler_pdivlMr ?ltr0n // mulrAC ler_pdivrMr ?ltr0n ?muln_gt0 //.
    by rewrite -!natrM leC_nat mulnCA mulSn -muln2 -!mulnA leq_addl.
  have{ub7_m} q5: q = 5%N.
    apply: contraNeq ub7_m; rewrite neq_ltn odd_ltn ?mFT_odd //= ltnS leqNgt.
    by rewrite ltn_neqAle qgt2 -{1}p3 eq_sym p'q -(odd_geq 7) ?mFT_odd.
  have /implyP := lt_trans (lb5_m _) ub_m.
  by rewrite q5 p3 -!CratrE; compute.
have pge5: (5 <= p)%N by rewrite odd_geq ?mFT_odd // ltn_neqAle eq_sym p_neq3.
have ub5_m: ~~ (7 / 10 < m).
  rewrite lt_gtF // (lt_le_trans ub_m) //.
  apply: le_trans (_ : 2^-1 * (1 + 4^-1) <= _); last first.
    by rewrite -!CratrE; compute.
  rewrite !natrM invfM mulrACA ler_pM ?divr_ge0 ?ler0n //.
    rewrite ler_pdivrMr ?ler_pdivlMl ?ltr0n // -natrM mul2n leC_nat.
    by rewrite ltnW.
  rewrite -(subnKC pge5) [_%:R]mulrSr mulrDl divff ?pnatr_eq0 // lerD2l.
  by rewrite mul1r lef_pV2 ?qualifE/= ?ltr0n // leC_nat.
split=> //; apply: contraNeq ub5_m.
by rewrite neq_ltn ltnNge qgt2 -(odd_geq 5) ?mFT_odd.
Qed.


Let gen_ub_m : m < (q * u)%:R / (c * p ^ q.-1)%:R.
Proof.
rewrite !natrM invfM mulrA ltr_pdivlMr ?ltr0n ?expn_gt0 ?cardG_gt0 //.
by rewrite -mulrA -ltr_pdivrMl ?gt0CG // mulrC.
Qed.


Lemma FTtypeP_Ind_Fitting_reg_Fcore : c = 1%N.
Proof.
apply/eqP/wlog_neg; rewrite eqn_leq cardG_gt0 andbT -ltnNge => c_gt1.
have ub_m: m < (q * (p ^ q).-1)%:R / (c * p ^ q.-1 * p.-1)%:R.
  rewrite 2!natrM invfM mulrACA mulrAC -natf_div ?dvdn_pred_predX // -natrM.
  rewrite (lt_le_trans gen_ub_m) // ler_pM ?invr_ge0 ?ler0n // leC_nat.
  by rewrite leq_mul //; case: Sfacts.
have regCW1: semiregular C W1.
  have [[_ _ /Frobenius_reg_ker regUW1 _] _ _ _] := FTtypeP_facts maxS StypeP.
  by move=> _ y /regUW1 regUx; rewrite setIAC regUx setI1g.
have{regCW1} dv_2q_c1: q.*2 %| c.-1.
  rewrite -(subnKC c_gt1) -mul2n Gauss_dvd ?coprime2n ?dvdn2 ?mFT_odd //=.
  rewrite oddB ?mFT_odd -?subSn// subn2 ?add1n ?prednK ?ltn_predRL//.
  rewrite regular_norm_dvd_pred//.
  have /mulG_sub[_ sW1S] := sdprodW defS.
  apply: normsI; first by have [_ []] := StypeP.
  by rewrite (subset_trans sW1S) ?norms_cent ?gFnorm.
have [q3 pge5]: q = 3%N /\ (p >= 5)%N.
  apply: small_m_q3; apply: (lt_le_trans ub_m).
  rewrite !natrM -!mulrA ler_pM2l ?gt0CG //.
  rewrite !invfM !mulrA -(subnKC pgt2) ler_pM2r ?invr_gt0 ?ltr0n //.
  rewrite ler_pdivrMr ?ltr0n ?expn_gt0 // mulrAC -natrM -expnS.
  rewrite prednK ?cardG_gt0 // ler_pM ?invr_ge0 ?ler0n ?leC_nat ?leq_pred //.
  rewrite lef_pV2 ?qualifE/= ?gt0CG ?ltr0n // leC_nat.
  by rewrite -(subnKC c_gt1) ltnS dvdn_leq //= -subSn ?subn2.
have [_ _ [//|lb_m lb_uc]] := lb_m_cases.
pose sum3 r : algC := (r.+1 ^ 2)%:R^-1 + r.+1%:R^-1 + 1.
have [b Dc1] := dvdnP dv_2q_c1; rewrite q3 in Dc1.
have [b0 | b_gt0] := posnP b; first by rewrite b0 -(subnKC c_gt1) in Dc1.
have ub3_m r a: (r < p)%N -> (a <= b)%N -> m < 3 / (a * 6).+1%:R * sum3 r.
  move=> lb_p lb_b; apply: lt_le_trans ub_m _.
  rewrite !natrM !invfM mulrACA -!mulrA q3 ler_pM2l ?ltr0n //.
  rewrite -(ltn_predK c_gt1) Dc1 ler_pM ?mulr_ge0 ?invr_ge0 ?ler0n //.
    by rewrite lef_pV2 ?qualifE/= ?ltr0n // leC_nat ltnS leq_mul.
  rewrite predn_exp mulnC natrM 2!big_ord_recl big_ord1 /= /bump /= expn1.
  rewrite -(subnKC (ltnW pgt2)) add2n in lb_p *.
  rewrite mulfK ?pnatr_eq0 // addnA 2!natrD 2!mulrDr mulr1 {-1}natrM invfM.
  rewrite mulrA divfK ?mulVf ?pnatr_eq0 // lerD2r.
  by rewrite lerD ?lef_pV2 ?qualifE/= ?ltr0n ?leC_nat ?leq_sqr.
have beq1: b = 1%N.
  apply: contraTeq lb_m; rewrite neq_ltn ltnNge b_gt0 => /(ub3_m 4%N) ub41.
  by rewrite lt_gtF // (lt_trans (ub41 _)) // /sum3 -!CratrE; compute.
have c7: c = 7%N by rewrite -(ltn_predK c_gt1) Dc1 beq1.
have plt11: (p < 11)%N.
  rewrite ltnNge; apply: contraL lb_m => /ub3_m/(_ b_gt0) ub100.
  by rewrite lt_gtF // (lt_trans ub100) // /sum3 -!CratrE; compute.
have{plt11} p5: p = 5%N.
  suffices: p \in [seq r <- iota q.+1 7 | prime r & coprime r c].
    by rewrite c7 q3 inE => /eqP.
  rewrite mem_filter mem_iota ltn_neqAle p'q q3 pgt2 pr_p (coprimeSg sW2P) //.
  by rewrite (coprimegS _ (Ptype_Fcore_coprime StypeP)) ?subIset ?joing_subl.
have [galS | gal'S] := boolP (typeP_Galois StypeP); last first.
  have [H1 [_ _ _ _ []]] := typeP_Galois_Pn maxS notStype5 gal'S.
  case/pdivP=> r pr_r r_dv_a /(dvdn_trans r_dv_a)/idPn[].
  rewrite Ptype_factor_prime // -/p p5 (Euclid_dvdM 2 2) // gtnNdvd //.
  rewrite odd_prime_gt2 ?(dvdn_odd (dvdn_trans r_dv_a (dvdn_indexg _ _))) //.
  by rewrite mFT_odd.
have{galS} u_dv_31: u %| 31.
  have [_ _ [_ _]] := typeP_Galois_P maxS notStype5 galS.
  rewrite Ptype_factor_prime ?Ptype_Fcompl_kernel_cent // -/p -/q p5 q3.
  rewrite card_quotient // normsI ?normG ?norms_cent //.
  by have [] := sdprodP defPU.
have hallH: Hall S H.
  rewrite /Hall -divgS ?gFsub //= -(sdprod_card defS) -(sdprod_card defPU).
  rewrite -(dprod_card defH) -mulnA divnMl ?cardG_gt0 // -/c oU mulnAC c7.
  have [_ [_ ->] _ _ _] := FTtypeP_facts maxS StypeP.
  by rewrite mulnK // -/q -/p q3 p5 coprimeMr (coprime_dvdr u_dv_31).
rewrite -(leq_pmul2l (cardG_gt0 P)) muln1 (dprod_card defH) subset_leq_card //.
by rewrite (Fcore_max (Hall_pi hallH)) ?gFnormal ?Fitting_nil.
Qed.
Local Notation c1 := FTtypeP_Ind_Fitting_reg_Fcore.


Lemma FTtypeP_Ind_Fitting_nonGalois_facts :
  ~~ typeP_Galois StypeP -> q = 3%N /\ #|U| = (p.-1./2 ^ 2)%N.
Proof.
have even_p1: 2 %| p.-1 by rewrite -subn1 -subSS dvdn_sub ?dvdn2 //= mFT_odd.
move=> gal'S; have{gal'S} u_dv_p2q: u %| p.-1./2 ^ q.-1.
  have [H1 [_ _ _ _ []]] := typeP_Galois_Pn maxS notStype5 gal'S.
  rewrite Ptype_factor_prime ?Ptype_Fcompl_kernel_cent // -/p -/q.
  set a := #|U : _| => a_gt1 a_dv_p1 _ [Uhat isoUhat].
  have a_odd: odd a by rewrite (dvdn_odd (dvdn_indexg _ _)) ?mFT_odd.
  have [_ _ nPU _] := sdprodP defPU.
  rewrite /u -card_quotient ?normsI ?normG ?norms_cent // (card_isog isoUhat).
  apply: dvdn_trans (cardSg (subsetT _)) _; rewrite cardsT card_mx mul1n.
  rewrite card_ord Zp_cast ?dvdn_exp2r // -(@Gauss_dvdl a _ 2) ?coprimen2 //.
  by rewrite -divn2 divnK.
have [_ lb5_m lb3_m] := lb_m_cases.
pose f r : algC := r%:R / (2 ^ r.-1)%:R.
have ub_m: m < f q.
  apply: lt_le_trans gen_ub_m _; rewrite c1 mul1n.
  rewrite natrM ler_pdivrMr ?ltr0n ?expn_gt0 ?cardG_gt0 // -mulrA.
  rewrite ler_wpM2l ?ler0n // mulrC !natrX -expr_div_n.
  apply: le_trans (_ : (p.-1 %/ 2)%:R ^+ q.-1 <= _).
    by rewrite -natrX leC_nat divn2 dvdn_leq // expn_gt0 -(subnKC pgt2).
  rewrite -(subnKC qgt2) ler_pXn2r ?rpred_div ?rpred_nat // natf_div //.
  by rewrite ler_wpM2r ?invr_ge0 ?ler0n // leC_nat leq_pred.
have{ub_m} q3: q = 3%N.
  apply: contraTeq ub_m; rewrite neq_ltn ltnNge qgt2 -(odd_geq 5) ?mFT_odd //=.
  move=> qge5; rewrite lt_gtF // -(subnKC qge5).
  elim: (q - 5)%N => [|r]; last apply: le_lt_trans.
    by apply: lt_trans (lb5_m qge5); rewrite /f -!CratrE; compute.
  rewrite addnS ler_pdivrMr ?ltr0n ?expn_gt0 // natrM mulrACA mulrA.
  by rewrite divfK ?pnatr_eq0 ?expn_eq0 // mulr_natr mulrS lerD2r ler1n.
have [[]] := dvdnP u_dv_p2q; rewrite q3; first by rewrite -(subnKC pgt2).
case=> [|b] Du; first by rewrite oU c1 Du muln1 mul1n.
have [_ /idPn[]] := lb3_m q3; rewrite c1 divr1 le_gtF //.
apply: le_trans (_ : (p.-1 ^ 2)%:R / 8 <= _).
  rewrite (natrX _ 2 3) exprSr invfM mulrA natrX -expr_div_n -natf_div // divn2.
  by rewrite -natrX Du ler_pdivlMr ?ltr0n // mulrC -natrM leC_nat leq_mul.
rewrite -!subn1 (subn_sqr p 1) !natrM -!mulrA ler_wpM2l ?ler0n //.
rewrite ler_pdivrMr 1?mulrAC ?ler_pdivlMr ?ltr0n // -!natrM leC_nat.
rewrite (mulnA _ 3%N 2%N) (mulnA _ 4%N 2%N) leq_mul // mulnBl mulnDl leq_subLR.
by rewrite addnCA (mulnSr p 3) -addnA leq_addr.
Qed.




Lemma FTtypeP_Ind_Fitting_Galois_ub b :
  (p ^ q).-1 %/ p.-1 = (b * u)%N -> (b <= q.*2)%N.
Proof.
move=> Dbu; have: U :!=: 1%g by have [[_ _ /Frobenius_context[]]] := Sfacts.
rewrite trivg_card1 oU c1 muln1 leqNgt; apply: contra => bgt2q.
have [|q3 pge5] := small_m_q3.
  apply: lt_le_trans gen_ub_m _; rewrite c1 mul1n !natrM -!mulrA.
  rewrite ler_wpM2l ?ler0n // ler_pdivrMr ?ltr0n ?expn_gt0 ?cardG_gt0 //.
  rewrite mulrAC invfM -natrM -expnS prednK ?cardG_gt0 // mulrCA.
  rewrite ler_pdivlMl ?ltr0n // -natrM.
  apply: le_trans (_ : (b * u)%:R <= _); first by rewrite leC_nat leq_mul.
  rewrite -Dbu natf_div ?dvdn_pred_predX // ler_wpM2r ?invr_ge0 ?ler0n //.
  by rewrite leC_nat leq_pred.
have ub_p: ((p - 3) ^ 2 < 4 ^ 2)%N.
  have [_ _ [] // _] := lb_m_cases; rewrite c1 divr1 ltr_pdivrMr ?ltr0n //.
  rewrite -natrM ltC_nat prednK ?expn_gt0 ?cardG_gt0 // => /(leq_mul bgt2q).
  rewrite mulnC mulnA -Dbu q3 predn_exp mulKn; last by rewrite -(subnKC pgt2).
  rewrite 2!big_ord_recl big_ord1 /= /bump /= !mulnDl expn0 expn1.
  rewrite addnA mulnS leq_add2r -(leq_add2r 9) (mulnCA p 2%N 3%N) -addnA addnCA.
  by rewrite -leq_subLR -(sqrnB pgt2).
have{ub_p pge5} p5: p = 5%N.
  apply/eqP; rewrite eqn_leq pge5 andbT.
  by rewrite ltn_sqr ltnS leq_subLR -ltnS odd_ltn ?mFT_odd in ub_p.
have bgt1: (1 < b)%N by rewrite -(subnKC bgt2q) q3.
rewrite -(eqn_pmul2l (ltnW bgt1)) muln1 eq_sym.
by apply/eqP/prime_nt_dvdP; rewrite ?dvdn_mulr ?gtn_eqF // -Dbu q3 p5.
Qed.

End Thirteen_10_to_13_15.


Lemma FTtypeP_reg_Fcore : C :=: 1%g.
Proof.
have [] := boolP (has irrIndH calS); last first.
  by case/(FTtypeP_no_Ind_Fitting_facts maxS StypeP).
by case/hasP=> lambda Slam /FTtypeP_Ind_Fitting_reg_Fcore/card1_trivg->.
Qed.

Lemma Ptype_Fcompl_kernel_trivial : Ptype_Fcompl_kernel StypeP :=: 1%g.
Proof.
by rewrite Ptype_Fcompl_kernel_cent ?FTtypeP_reg_Fcore.
Qed.


Let u := #|U|.
Let ustar := (p ^ q).-1 %/ p.-1.


Lemma FTtypeP_nonGalois_facts :
  ~~ typeP_Galois StypeP -> q = 3%N /\ u = (p.-1./2 ^ 2)%N.
Proof.
move=> gal'S; have: has irrIndH calS.
  by apply: contraR gal'S => /(FTtypeP_no_Ind_Fitting_facts maxS StypeP)[].
by case/hasP=> lambda Slam /FTtypeP_Ind_Fitting_nonGalois_facts; apply.
Qed.

Import FinRing.Theory.


Lemma FTtypeP_primes_mod_cases :
  [/\ odd ustar,
      p == 1 %[mod q] -> q %| ustar
    & p != 1 %[mod q] ->
      [/\ coprime ustar p.-1, ustar == 1 %[mod q]
        & forall b, b %| ustar -> b == 1 %[mod q]]].
Proof.
have ustar_mod r: p = 1 %[mod r] -> ustar = q %[mod r].
  move=> pr1; rewrite -[q]card_ord -sum1_card /ustar predn_exp //.
  rewrite -(subnKC pgt2) mulKn // subnKC //.
  elim/big_rec2: _ => // i s1 s2 _ eq_s12.
  by rewrite -modnDm -modnXm pr1 eq_s12 modnXm modnDm exp1n.
have ustar_odd: odd ustar.
  by apply: (can_inj oddb); rewrite -modn2 ustar_mod ?modn2 ?mFT_odd.
split=> // [p1_q|p'1_q]; first by rewrite /dvdn ustar_mod ?modnn //; apply/eqP.
have ustar_gt0: (ustar > 0)%N by rewrite odd_geq.
have [p1_gt0 p_gt0]: (p.-1 > 0 /\ p > 0)%N by rewrite -(subnKC pgt2).
have co_ustar_p1: coprime ustar p.-1.
  rewrite coprime_pi' //; apply/pnatP=> //= r pr_r.
  rewrite inE -subn1 -eqn_mod_dvd //= mem_primes pr_r ustar_gt0 => /eqP rp1.
  rewrite /dvdn ustar_mod // [_ == _]dvdn_prime2 //.
  by apply: contraNneq p'1_q => <-; apply/eqP.
suffices ustar_mod_q b: b %| ustar -> b == 1 %[mod q].
  by split; rewrite // ustar_mod_q.
move=> b_dv_ustar; have b_gt0 := dvdn_gt0 ustar_gt0 b_dv_ustar.
rewrite (prod_prime_decomp b_gt0) prime_decompE big_map /= big_seq.
elim/big_rec: _ => // r s /(pi_of_dvd b_dv_ustar ustar_gt0).
rewrite mem_primes -modnMml -modnXm => /and3P[pr_r _ r_dv_ustar].
suffices{s} ->: r = 1 %[mod q] by rewrite modnXm modnMml exp1n mul1n.
apply/eqP; rewrite eqn_mod_dvd ?prime_gt0 // subn1.
have ->: r.-1 = #|[set: {unit 'F_r}]|.
  rewrite card_units_Zp ?prime_gt0 ?pdiv_id //.
  by rewrite -[r]expn1 totient_pfactor ?muln1.
have pq_r: p%:R ^+ q == 1 :> 'F_r.
  rewrite -subr_eq0 -natrX -(@natrB _ _ 1) ?expn_gt0 ?cardG_gt0 // subn1.
  rewrite -(divnK (dvdn_pred_predX p q)) -Fp_nat_mod //.
  by rewrite -modnMml (eqnP r_dv_ustar) mod0n.
have Up_r: (p%:R : 'F_r) \is a GRing.unit.
  by rewrite -(unitrX_pos _ (prime_gt0 pr_q)) (eqP pq_r) unitr1.
congr (_ %| _): (order_dvdG (in_setT (FinRing.unit 'F_r Up_r))).
apply/prime_nt_dvdP=> //; last by rewrite order_dvdn -val_eqE val_unitX.
rewrite -dvdn1 order_dvdn -val_eqE /= -subr_eq0 -val_eqE -(@natrB _ p 1) //=.
rewrite subn1 val_Fp_nat //; apply: contraFN (esym (mem_primes r 1)).
by rewrite pr_r /= -(eqnP co_ustar_p1) dvdn_gcd r_dv_ustar.
Qed.


Lemma card_FTtypeP_Galois_compl :
  typeP_Galois StypeP -> u = (if p == 1 %[mod q] then ustar %/ q else ustar).
Proof.
case/typeP_Galois_P=> //= _ _ [_ _ /dvdnP[b]]; rewrite Ptype_factor_prime //.
rewrite -/ustar Ptype_Fcompl_kernel_trivial -(card_isog (quotient1_isog _)) -/u.
move=> Dbu; have ub_b: (b <= q.*2)%N.
  have [[lambda Slam irrHlam]| ] := altP (@hasP _ irrIndH calS).
    apply: (FTtypeP_Ind_Fitting_Galois_ub Slam irrHlam).
    by rewrite FTtypeP_reg_Fcore indexg1.
  case/(FTtypeP_no_Ind_Fitting_facts maxS StypeP) => _ /= ->.
  rewrite indexg1 -/ustar -(leq_pmul2r (cardG_gt0 U)) -/u => Du.
  by rewrite -Dbu -Du -(subnKC qgt2) leq_pmull.
have [ustar_odd p1_q p'1_q] := FTtypeP_primes_mod_cases.
have b_odd: odd b by rewrite Dbu oddM mFT_odd andbT in ustar_odd.
case: ifPn => [/p1_q q_dv_ustar | /p'1_q[_ _ /(_ b)]].
  have /dvdnP[c Db]: q %| b.
    rewrite Dbu Gauss_dvdl // coprime_sym in q_dv_ustar.
    by apply: coprimeSg coPUq; have /mulG_sub[_ sUPU] := sdprodW defPU.
  have c_odd: odd c by rewrite Db oddM mFT_odd andbT in b_odd.
  suffices /eqP c1: c == 1%N by rewrite Dbu Db c1 mul1n mulKn ?prime_gt0.
  rewrite eqn_leq odd_gt0 // andbT -ltnS -(odd_ltn 3) // ltnS.
  by rewrite -(leq_pmul2r (ltnW (ltnW qgt2))) -Db mul2n.
have Db: b = (b - 1).+1 by rewrite subn1 prednK ?odd_gt0.
rewrite Dbu dvdn_mulr // eqn_mod_dvd Db // -Db => /(_ isT)/dvdnP[c Db1].
have c_even: ~~ odd c by rewrite Db Db1 /= oddM mFT_odd andbT in b_odd.
suffices /eqP->: b == 1%N by rewrite mul1n.
have:= ub_b; rewrite Db Db1 -mul2n ltn_pmul2r ?cardG_gt0 //.
by rewrite -ltnS odd_ltn //= !ltnS leqn0 => /eqP->.
Qed.




Lemma FTtypeP_norm_cent_compl : P ><| W1 = 'N(W2) /\ P ><| W1 = 'C(W2).
Proof.
have [/mulG_sub[_ sW1S]  /mulG_sub[sPPU sUPU]] := (sdprodW defS, sdprodW defPU).
have nPW1: W1 \subset 'N(P) by rewrite (subset_trans sW1S) ?gFnorm.
have [[_ _ frobUW1 cUU] [abelP _] _ _ _] := Sfacts.
have [pP cPP _] := and3P abelP; have [_ _ cW12 tiW12] := dprodP defW.
have cW2P: P \subset 'C(W2) by rewrite sub_abelian_cent.
suffices sNPW2: 'N(W2) \subset P <*> W1.
  have cW2PW1: P <*> W1 \subset 'C(W2) by rewrite join_subG cW2P centsC.
  rewrite sdprodEY ?coprime_TIg ?(coprimeSg sPPU) //.
  split; apply/eqP; rewrite eqEsubset ?(subset_trans cW2PW1) ?cent_sub //.
  by rewrite (subset_trans (cent_sub _)).
have tiP: normedTI P^# G S.
  have [_ _ _] := compl_of_typeII_IV maxS StypeP notStype5.
  by rewrite -defH FTtypeP_reg_Fcore dprodg1.
have ->: 'N(W2) = 'N_S(W2).
  apply/esym/setIidPr/subsetP=> y nW2y; have [x W2x ntx] := trivgPn _ ntW2.
  have [_ _ tiP_J] := normedTI_memJ_P tiP.
  by rewrite -(tiP_J x) ?inE ?conjg_eq1 // ntx (subsetP sW2P) ?memJ_norm.
rewrite -{1}(sdprodW defS) setIC -group_modr ?cents_norm 1?centsC //=.
rewrite mulG_subG joing_subr /= -(sdprodW defPU) setIC.
rewrite -group_modl ?cents_norm //= mulG_subG joing_subl /= andbT.
set K := 'N_U(W2); have sKPU: K \subset PU by rewrite subIset ?sUPU.
have{sKPU} nPKW1: K <*> W1 \subset 'N(P).
  by rewrite gFnorm_trans ?normsG // -(sdprodWY defS) genS ?setSU.
have nW2KW1: K <*> W1 \subset 'N(W2).
  by rewrite join_subG subsetIr cents_norm // centsC.
have coPKW1: coprime #|P| #|K <*> W1|.
  by rewrite (coprimegS _ (Ptype_Fcore_coprime StypeP)) ?genS ?setSU ?subsetIl.
have p'KW1: p^'.-group (K <*> W1).
  by rewrite /pgroup p'natE // -prime_coprime ?(coprimeSg sW2P).
have [Q1 defP nQ1KW1] := Maschke_abelem abelP p'KW1 sW2P nPKW1 nW2KW1.
have [-> | ntK] := eqVneq K 1%g; first by rewrite sub1G.
have frobKW1: [Frobenius K <*> W1 = K ><| W1].
  apply: Frobenius_subl frobUW1; rewrite ?subsetIl //.
  rewrite normsI ?norms_norm //; first by have [_ []] := StypeP.
  by rewrite cents_norm // centsC.
have regQ1W1: 'C_Q1(W1) = 1%g.
  have [_ /mulG_sub[_ /setIidPl defQ1] _ tiW2Q1] := dprodP defP.
  by rewrite -defQ1 -setIA (typeP_cent_core_compl StypeP) setIC.
have cQ1K: K \subset 'C(Q1).
  have /mulG_sub[_ sQ1P] := dprodW defP; have coQ1KW1 := coprimeSg sQ1P coPKW1.
  have solQ1 := solvableS sQ1P (abelian_sol cPP).
  by have [_ ->] := Frobenius_Wielandt_fixpoint frobKW1 nQ1KW1 coQ1KW1 solQ1.
have /subsetIP[_ cW1K]: K \subset 'C_(K <*> W1)(W2).
  have cCW1: W1 \subset 'C_(K <*> W1)(W2) by rewrite subsetI joing_subr centsC.
  apply: contraR ntW1 => /(Frobenius_normal_proper_ker frobKW1) ltCK.
  rewrite -subG1; have [/eqP/sdprodP[_ _ _ <-] _] := andP frobKW1.
  rewrite subsetIidr (subset_trans cCW1) // proper_sub //.
  rewrite ltCK //; last by rewrite norm_normalI ?norms_cent.
  by rewrite (solvableS _ (abelian_sol cUU)) ?subsetIl.
case/negP: ntK; rewrite -subG1 -FTtypeP_reg_Fcore subsetI subsetIl /=.
by rewrite -(dprodW defP) centM subsetI cW1K.
Qed.

End Thirteen_4_10_to_16.

Section Thirteen_17_to_19.




Variables S U W W1 W2 : {group gT}.
Hypotheses (maxS : S \in 'M) (defW : W1 \x W2 = W).
Hypotheses (StypeP : of_typeP S U defW).

Local Notation "` 'W1'" := (gval W1) (only parsing) : group_scope.
Local Notation "` 'W2'" := (gval W2) (only parsing) : group_scope.
Local Notation "` 'W'" := (gval W) (only parsing) : group_scope.
Local Notation V := (cyclicTIset defW).

Local Notation "` 'S'" := (gval S) (only parsing) : group_scope.
Local Notation P := (`S`_\F)%G.
Local Notation "` 'P'" := `S`_\F : group_scope.
Local Notation PU := S^`(1)%G.
Local Notation "` 'PU'" := `S^`(1) : group_scope.
Local Notation "` 'U'" := (gval U) (only parsing) : group_scope.

Let defS : PU ><| W1 = S.
Proof.
by have [[]] := StypeP.
Qed.
Let defPU : P ><| U = PU.
Proof.
by have [_ []] := StypeP.
Qed.

Let notStype1 : FTtype S != 1%N.
Proof.
exact: FTtypeP_neq1 StypeP.
Qed.
Let notStype5 : FTtype S != 5%N.
Proof.
exact: FTtype5_exclusion maxS.
Qed.

Let pddS := FT_prDade_hypF maxS StypeP.
Let ptiWS : primeTI_hypothesis S PU defW := FT_primeTI_hyp StypeP.
Let ctiWG : cyclicTI_hypothesis G defW := pddS.
Local Notation Sfacts := (FTtypeP_facts maxS StypeP).

Let ntW1 : W1 :!=: 1.
Proof.
by have [[]] := StypeP.
Qed.
Let ntW2 : W2 :!=: 1.
Proof.
by have [_ _ _ []] := StypeP.
Qed.
Let cycW1 : cyclic W1.
Proof.
by have [[]] := StypeP.
Qed.
Let cycW2 : cyclic W2.
Proof.
by have [_ _ _ []] := StypeP.
Qed.

Let p := #|W2|.
Let q := #|W1|.

Let pr_p : prime p.
Admitted.
Let pr_q : prime q.
Admitted.

Let qgt2 : q > 2.
Admitted.
Let pgt2 : p > 2.
Admitted.

Let coPUq : coprime #|PU| q.
Admitted.

Let sW2P: W2 \subset P.
Admitted.

Let p'q : q != p.
Admitted.

Let nirrW1 : #|Iirr W1| = q.
Admitted.
Let nirrW2 : #|Iirr W2| = p.
Admitted.
Let NirrW1 : Nirr W1 = q.
Admitted.
Let NirrW2 : Nirr W2 = p.
Admitted.

Local Open Scope ring_scope.

Let sigma := (cyclicTIiso ctiWG).
Let w_ i j := (cyclicTIirr defW i j).
Local Notation eta_ i j := (sigma (w_ i j)).

Let mu_ := primeTIred ptiWS.
Local Notation tau := (FT_Dade0 maxS).

Let calS0 := seqIndD PU S S`_\s 1.
Let rmR := FTtypeP_coh_base maxS StypeP.
Let scohS0 : subcoherent calS0 tau rmR.
Admitted.

Let calS := seqIndD PU S P 1.
Let sSS0 : cfConjC_subset calS calS0.
Admitted.


Lemma FTtypeII_support_facts T L (Q := T`_\F) (H := L`_\F) :
    FTtype S == 2%N -> typeP_pair S T defW -> L \in 'M('N(U)) ->
  [/\  [Frobenius L with kernel H],
       U \subset H
    &  H ><| W1 = L \/ (exists2 y, y \in Q & H ><| (W1 <*> W2 :^ y) = L)].
Admitted.

Local Notation Imu2 := (primeTI_Iirr ptiWS).
Local Notation mu2_ i j := (primeTIirr ptiWS i j).

Definition FTtypeP_bridge j := 'Ind[S, P <*> W1] 1 - mu2_ 0 j.
Local Notation beta_ := FTtypeP_bridge.
Definition FTtypeP_bridge_gap := tau (beta_ #1) - 1 + eta_ 0 #1.
Local Notation Gamma := FTtypeP_bridge_gap.

Let u := #|U|.




Lemma FTtypeP_bridge_facts (V_S := class_support (cyclicTIset defW) S) :
  [/\  [/\ forall j, j != 0 -> beta_ j \in 'CF(S, 'A0(S))
              & forall j, j != 0 -> beta_ j \in 'CF(S, P^# :|: V_S)],
       forall j, j != 0 -> '[beta_ j] = (u.-1 %/ q + 2)%:R,
       [/\ forall j, j != 0 -> tau (beta_ j) - 1 + eta_ 0 j = Gamma,
                '[Gamma, 1] = 0 & cfReal Gamma],
       forall X Y : 'CF(G),
              Gamma = X + Y -> '[X, Y] = 0 ->
              orthogonal Y (map sigma (irr W)) ->
            '[Y] <= (u.-1 %/ q)%:R
          & q %| u.-1].
Admitted.



Variable L : {group gT}.
Hypotheses (maxL : L \in 'M) (Ltype1 : FTtype L == 1%N).

Local Notation "` 'L'" := (gval L) (only parsing) : group_scope.
Local Notation H := (`L`_\F)%G.
Local Notation "` 'H'" := `L`_\F : group_scope.

Let e :=  #|L : H|.
Let tauL := FT_DadeF maxL.
Let calL := seqIndD H L H 1.

Let frobL : [Frobenius L with kernel H].
Admitted.


Lemma FTtype1_coherence : coherent calL L^# tauL.
Admitted.

Lemma FTtype1_Ind_irr : {subset calL <= irr L}.
Admitted.
Let irrL := FTtype1_Ind_irr.



Variables (tau1 : {additive 'CF(L) -> 'CF(G)}) (phi : 'CF(L)).
Hypothesis cohL : coherent_with calL L^# tauL tau1.
Hypotheses (Lphi : phi \in calL) (phi1e : phi 1%g = e%:R).

Let betaL := 'Ind[L, H] 1 - phi.
Let betaS := beta_ #1.
Let eta01 := eta_ 0 #1.


Lemma FTtypeI_bridge_facts :
  [/\  'A~(L) :&: (class_support P G :|: class_support W G) = set0,
       orthogonal (map tau1 calL) (map sigma (irr W)),
       forall j, j != 0 -> '[tauL betaL, eta_ 0 j] = '[tauL betaL, eta01]
       &  ('[tau betaS, tau1 phi] == 1 %[mod 2])%C
                /\ #|H|.-1%:R / e%:R <= (u.-1 %/ q)%:R :> algC
      \/  ('[tauL betaL, eta01] == 1 %[mod 2])%C /\ (p <= e)%N].
Admitted.

End Thirteen_17_to_19.

End Thirteen.

End PFsection13.

End odd_order_DOT_PFsection13_WRAPPED.
Module Export odd_order_DOT_PFsection13.
Module Export odd_order.
Module PFsection13.
Include odd_order_DOT_PFsection13_WRAPPED.PFsection13.
End PFsection13.

End odd_order.

End odd_order_DOT_PFsection13.

Inductive equivalent P Q := Equivalent (P_to_Q : P -> Q) (Q_to_P : Q -> P).

Inductive equal T (x : T) : T -> Type := Equal : equal T x x.

Inductive natural := Zero | Add_1_to (n : natural).
Fixpoint add (m n : natural) : natural.
exact (match m with Zero => n | Add_1_to m_minus_1 => add m_minus_1 (Add_1_to n) end).
Defined.
Definition double (n : natural) : natural.
exact (add n n).
Defined.

Inductive odd (n : natural) :=
  Odd (half : natural)
    (n_odd : equal natural n (Add_1_to (double half))).

Inductive less_than (m n : natural) :=
  LessThan (diff : natural)
    (m_lt_n : equal natural n (Add_1_to (add m diff))).

Definition injective_in T R (D : T -> Type) (f : T -> R) :=
  forall x y, D x -> D y -> equal R (f x) (f y) -> equal T x y.

Inductive in_image T R (D : T -> Type) (f : T -> R) (a : R) :=
  InImage (x : T) (x_in_D : D x) (a_is_fx : equal R a (f x)).

Inductive finite_of_order T (D : T -> Type) (n : natural) :=
  FiniteOfOrder (rank : T -> natural)
    (rank_injective : injective_in T natural D rank)
    (rank_onto :
       forall i, equivalent (less_than i n) (in_image T natural D rank i)).

Inductive group_axioms T (mul : T -> T -> T) (one : T) (inv : T -> T) :=
  GroupAxioms
    (associativity : forall x y z, equal T (mul x (mul y z)) (mul (mul x y) z))
    (left_identity : forall x,     equal T (mul one x) x)
    (left_inverse  : forall x,     equal T (mul (inv x) x) one).

Inductive group T mul one inv (G : T -> Type) :=
  Group
    (G_closed_under_mul : forall x y, G x -> G y -> G (mul x y))
    (one_in_G           : G one)
    (G_closed_under_inv : forall x, G x -> G (inv x)).

Inductive subgroup T mul one inv (H G : T -> Type) :=
  Subgroup
    (H_group    : group T mul one inv H)
    (H_subset_G : forall x, H x -> G x).

Inductive normal_subgroup T mul one inv (H G : T -> Type) :=
  NormalSubgroup
    (H_subgroup_G     : subgroup T mul one inv H G)
    (H_is_G_invariant : forall x y, H x -> G y -> H (mul (inv y) (mul x y))).

Inductive commute_mod T mul (x y : T) (H : T -> Type) :=
  CommuteMod (z : T)
    (z_in_H    : H z)
    (xy_eq_zyx : equal T (mul x y) (mul z (mul y x))).

Inductive abelian_factor T mul one inv (G H : T -> Type) :=
  AbelianFactor
    (G_group        : group T mul one inv G)
    (H_normal_in_G  : normal_subgroup T mul one inv H G)
    (G_on_H_abelian : forall x y, G x -> G y -> commute_mod T mul x y H).

Inductive solvable_group T mul one inv (G : T -> Type) :=
| TrivialGroupSolvable
   (G_trivial : forall x, equivalent (G x) (equal T x one))
| AbelianExtensionSolvable (H : T -> Type)
   (H_solvable     : solvable_group T mul one inv H)
   (G_on_H_abelian : abelian_factor T mul one inv G H).
Local Notation Aadd := add.
Local Notation Aodd := odd.
Local Notation Alt := less_than.
Local Notation Agroup := group.
Local Notation Asol := solvable_group.

Import HB.structures.
Import mathcomp.boot.ssreflect.
Import mathcomp.boot.ssrbool.
Import mathcomp.boot.ssrfun.
Import mathcomp.boot.eqtype.
Import mathcomp.boot.ssrnat.
Import mathcomp.boot.choice.
Import mathcomp.boot.fintype.
Import mathcomp.boot.finset.
Import mathcomp.fingroup.fingroup.
Import GroupScope.

Lemma main T mul one inv G nn :
    group_axioms T mul one inv -> Agroup T mul one inv G ->
    finite_of_order T G nn -> Aodd nn ->
  Asol T mul one inv G.
Proof.
pose fix natN n := if n is n1.+1 then Add_1_to (natN n1) else Zero.
pose fix Nnat mm := if mm is Add_1_to mm1 then (Nnat mm1).+1 else 0.
have natN_K: cancel natN Nnat by elim=> //= n ->.
have NnatK: cancel Nnat natN by elim=> //= mm ->.
have AaddE nn1 nn2: Nnat (Aadd nn1 nn2) = Nnat nn1 + Nnat nn2.
  by elim: nn1 nn2 => //= nn1 IHnn nn2; rewrite IHnn addnS.
have AltE m n: Alt (natN m) (natN n) -> m < n.
  by rewrite -{2}[n]natN_K => [[dd ->]]; rewrite /= ltnS AaddE natN_K leq_addr.
have AltI m n: m < n -> Alt (natN m) (natN n).
  move/subnKC <-; exists (natN (n - m.+1)).
  by rewrite -[Add_1_to _]NnatK /= AaddE !natN_K.
have AoddE n: Aodd (natN n) -> odd n.
  by rewrite -{2}[n]natN_K => [[hh ->]]; rewrite /= AaddE addnn odd_double.
case=> mulA mul1T mulVT [mulG oneG invG] [rG inj_rG im_rG] odd_nn.
pose n := Nnat nn; have{odd_nn} odd_n: odd n by rewrite AoddE ?NnatK.
have{rG inj_rG im_rG} [gT o_gT [f [g Gf [fK gK]] [fM f1 fV]]]:
  {gT : finGroupType & #|gT| = n & {f : gT -> T
    & {g : _ & forall a, G (f a) & cancel f g /\ forall x, G x -> f (g x) = x}
      & [/\ {morph f : a b / a * b >-> mul a b}, f 1 = one
          & {morph f : a / a^-1 >-> inv a}]}}.
-
 pose gT := 'I_n.-1.+1; pose g x : gT := inord (Nnat (rG x)).
  have ub_rG x: G x -> Nnat (rG x) < n.
    move=> Gx; rewrite AltE ?NnatK //.
    by have [_] := im_rG (rG x); apply; exists x.
  have Dn: n.-1.+1 = n := ltn_predK (ub_rG one oneG).
  have fP a: {x : T & G x * (g x = a)}%type.
    have a_lt_n: Alt (natN a) nn by rewrite -(canLR NnatK Dn); apply: AltI.
    have [/(_ a_lt_n)[x Gx rGx] _] := im_rG (natN a).
    by exists x; split; rewrite // /g -rGx natN_K inord_val.
  pose f a := tag (fP a); have Gf a: G (f a) by rewrite /f; case: (fP) => x [].
  have fK: cancel f g by rewrite /f => a; case: (fP a) => x [].
  have Ng x & G x: natN (g x) = rG x by rewrite inordK ?Dn ?ub_rG ?NnatK.
  have{Ng} gK x: G x -> f (g x) = x.
    by move=> Gx; rewrite (inj_rG (f (g x)) x) // -!Ng ?fK.
  pose m a b := g (mul (f a) (f b)).
  pose o := g one; pose v a := g (inv (f a)).
  have fM: {morph f: a b / m a b >-> mul a b} by move=> a b; apply/gK/mulG.
  have f1: f o = one by apply: gK.
  have fV: {morph f: a / v a >-> inv a} by move=> a; apply/gK/invG.
  have mA: associative m by move=> a b c; apply: canLR fK _; rewrite !fM mulA.
  have m1: left_id o m by move=> a; apply: canLR fK _; rewrite f1 mul1T.
  have mV: left_inverse o v m.
    by move=> a; apply: canLR fK _; rewrite fV f1 mulVT.
  pose isGroup_gT : isMulGroup gT := isMulGroup.Build gT mA m1 mV.
  pose bT : finGroupType := HB.pack gT isGroup_gT.
  exists bT; first by rewrite card_ord Dn.
  by exists f; first exists g.
pose im (H : {group gT}) x := (G x * (g x \in H))%type.
have imG H : Agroup T mul one inv (im H).
  split=> [x y [Gx Hx] [Gy Hy] | | x [Gx Hx]]; first 1 last.
  -
 by split; rewrite // -(canRL fK f1).
  -
 by split; [auto | rewrite -(gK x Gx) -fV fK groupV].
  by split; [auto | rewrite -(gK x Gx) -(gK y Gy) -fM fK groupM].
pose G0 := [set: gT]%G.
have sGG0 x: G x -> im G0 x by split; rewrite ?inE.
have mulVV1 x: mul (inv (inv x)) one = x by rewrite -(mulVT x) mulA mulVT mul1T.
