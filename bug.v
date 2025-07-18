
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-native-compiler" "no" "-w" "-undeclared-scope" "-w" "-omega-is-deprecated" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/lib" "compcert.lib" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/common" "compcert.common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/x86_32" "compcert.x86_32" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/x86" "compcert.x86" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/backend" "compcert.backend" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/cfrontend" "compcert.cfrontend" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/driver" "compcert.driver" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/cparser" "compcert.cparser" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/export" "compcert.export" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Flocq" "Flocq" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/MenhirLib" "MenhirLib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 496 lines to 77 lines, then from 90 lines to 1459 lines, then from 1465 lines to 86 lines, then from 99 lines to 1332 lines, then from 1337 lines to 91 lines, then from 104 lines to 1764 lines, then from 1769 lines to 425 lines, then from 438 lines to 3101 lines, then from 3107 lines to 428 lines, then from 441 lines to 1100 lines, then from 1106 lines to 444 lines, then from 457 lines to 1397 lines, then from 1403 lines to 462 lines, then from 475 lines to 1478 lines, then from 1484 lines to 447 lines, then from 460 lines to 1271 lines, then from 1276 lines to 449 lines, then from 462 lines to 1255 lines, then from 1259 lines to 454 lines, then from 467 lines to 972 lines, then from 978 lines to 676 lines, then from 684 lines to 458 lines, then from 471 lines to 1655 lines, then from 1661 lines to 463 lines, then from 476 lines to 1138 lines, then from 1144 lines to 467 lines, then from 480 lines to 1180 lines, then from 1186 lines to 492 lines, then from 505 lines to 1654 lines, then from 1660 lines to 496 lines, then from 509 lines to 1135 lines, then from 1141 lines to 486 lines, then from 499 lines to 3493 lines, then from 3499 lines to 491 lines, then from 504 lines to 2326 lines, then from 2331 lines to 641 lines, then from 654 lines to 1408 lines, then from 1413 lines to 667 lines, then from 680 lines to 1210 lines, then from 1216 lines to 675 lines, then from 688 lines to 2565 lines, then from 2571 lines to 3302 lines, then from 3258 lines to 672 lines, then from 685 lines to 2398 lines, then from 2402 lines to 678 lines, then from 691 lines to 1398 lines, then from 1403 lines to 695 lines, then from 708 lines to 2755 lines, then from 2759 lines to 681 lines, then from 694 lines to 1830 lines, then from 1835 lines to 698 lines, then from 711 lines to 1791 lines, then from 1797 lines to 703 lines, then from 716 lines to 1426 lines, then from 1432 lines to 694 lines, then from 707 lines to 3182 lines, then from 3188 lines to 695 lines, then from 708 lines to 6495 lines, then from 0 lines to 6495 lines, then from 6505 lines to 929 lines, then from 940 lines to 2071 lines, then from 2077 lines to 662 lines, then from 674 lines to 644 lines, then from 657 lines to 1369 lines, then from 1368 lines to 649 lines, then from 662 lines to 1184 lines, then from 1190 lines to 654 lines, then from 667 lines to 2430 lines, then from 2436 lines to 660 lines, then from 673 lines to 1573 lines, then from 1578 lines to 664 lines, then from 677 lines to 1722 lines, then from 1727 lines to 669 lines, then from 682 lines to 1220 lines, then from 1226 lines to 672 lines, then from 685 lines to 2711 lines, then from 2717 lines to 677 lines, then from 690 lines to 1818 lines, then from 1822 lines to 681 lines, then from 694 lines to 1732 lines, then from 1738 lines to 713 lines, then from 726 lines to 1223 lines, then from 1229 lines to 711 lines, then from 724 lines to 2637 lines, then from 2643 lines to 1875 lines *)
(* coqc version 9.2+alpha compiled with OCaml 4.14.2
   coqtop version 9.2+alpha
   Expected coqc runtime on this file: 0.979 sec *)









Require Corelib.Init.Ltac.
Require Corelib.extraction.Extraction.
Require Stdlib.extraction.Extraction.
Require Stdlib.funind.FunInd.
Require Stdlib.Classes.DecidableClass.
Require Stdlib.Logic.HLevelsBase.
Require Stdlib.Bool.Bool.
Require Corelib.Classes.RelationClasses.
Require Stdlib.Classes.RelationClasses.
Require Corelib.Classes.Morphisms.
Require Stdlib.Classes.Morphisms.
Require Corelib.Setoids.Setoid.
Require Stdlib.Setoids.Setoid.
Require Stdlib.Structures.Equalities.
Require Corelib.Relations.Relation_Definitions.
Require Stdlib.Relations.Relation_Definitions.
Require Stdlib.Relations.Relation_Operators.
Require Stdlib.Relations.Operators_Properties.
Require Stdlib.Relations.Relations.
Require Stdlib.Structures.Orders.
Require Corelib.Classes.Morphisms_Prop.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Numbers.NumPrelude.
Require Corelib.Program.Basics.
Require Stdlib.Program.Basics.
Require Stdlib.Structures.OrdersTac.
Require Stdlib.Structures.OrdersFacts.
Require Stdlib.Structures.GenericMinMax.
Require Stdlib.Numbers.NatInt.NZAxioms.
Require Stdlib.Numbers.NatInt.NZBase.
Require Stdlib.Numbers.NatInt.NZAdd.
Require Stdlib.Numbers.NatInt.NZMul.
Require Stdlib.Logic.Decidable.
Require Stdlib.Numbers.NatInt.NZOrder.
Require Stdlib.Numbers.NatInt.NZAddOrder.
Require Stdlib.Numbers.NatInt.NZMulOrder.
Require Stdlib.Numbers.NatInt.NZParity.
Require Stdlib.Numbers.NatInt.NZPow.
Require Stdlib.Numbers.NatInt.NZSqrt.
Require Stdlib.Numbers.NatInt.NZLog.
Require Stdlib.Numbers.NatInt.NZDiv.
Require Stdlib.Numbers.NatInt.NZGcd.
Require Stdlib.Numbers.NatInt.NZBits.
Require Stdlib.Numbers.Natural.Abstract.NAxioms.
Require Stdlib.Numbers.Natural.Abstract.NBase.
Require Stdlib.Numbers.Natural.Abstract.NAdd.
Require Stdlib.Numbers.Natural.Abstract.NOrder.
Require Stdlib.Numbers.Natural.Abstract.NAddOrder.
Require Stdlib.Numbers.Natural.Abstract.NMulOrder.
Require Stdlib.Numbers.Natural.Abstract.NSub.
Require Stdlib.Numbers.Natural.Abstract.NMaxMin.
Require Stdlib.Numbers.Natural.Abstract.NParity.
Require Stdlib.Numbers.Natural.Abstract.NPow.
Require Stdlib.Numbers.Natural.Abstract.NSqrt.
Require Stdlib.Numbers.Natural.Abstract.NLog.
Require Stdlib.Numbers.Natural.Abstract.NDiv.
Require Stdlib.Numbers.Natural.Abstract.NDiv0.
Require Stdlib.Numbers.Natural.Abstract.NGcd.
Require Stdlib.Numbers.Natural.Abstract.NLcm.
Require Stdlib.Numbers.Natural.Abstract.NLcm0.
Require Stdlib.Numbers.Natural.Abstract.NBits.
Require Stdlib.Numbers.Natural.Abstract.NProperties.
Require Stdlib.Arith.PeanoNat.
Require Stdlib.Arith.Factorial.
Require Stdlib.Arith.Between.
Require Stdlib.Logic.EqdepFacts.
Require Stdlib.Logic.Eqdep_dec.
Require Stdlib.Arith.Peano_dec.
Require Stdlib.Arith.Compare_dec.
Require Stdlib.Arith.EqNat.
Require Stdlib.Arith.Wf_nat.
Require Stdlib.Arith.Arith_base.
Require Corelib.Numbers.BinNums.
Require Stdlib.Numbers.BinNums.
Require Corelib.BinNums.PosDef.
Require Stdlib.BinNums.PosDef.
Require Stdlib.PArith.BinPosDef.
Require Stdlib.PArith.BinPos.
Require Corelib.BinNums.NatDef.
Require Stdlib.BinNums.NatDef.
Require Stdlib.NArith.BinNatDef.
Require Stdlib.NArith.BinNat.
Require Stdlib.PArith.Pnat.
Require Stdlib.NArith.Nnat.
Require Stdlib.setoid_ring.Ring_theory.
Require Corelib.Lists.ListDef.
Require Stdlib.Lists.ListDef.
Require Stdlib.Lists.List.
Require Stdlib.setoid_ring.BinList.
Require Stdlib.Numbers.Integer.Abstract.ZAxioms.
Require Stdlib.Numbers.Integer.Abstract.ZBase.
Require Stdlib.Numbers.Integer.Abstract.ZAdd.
Require Stdlib.Numbers.Integer.Abstract.ZMul.
Require Stdlib.Numbers.Integer.Abstract.ZLt.
Require Stdlib.Numbers.Integer.Abstract.ZAddOrder.
Require Stdlib.Numbers.Integer.Abstract.ZMulOrder.
Require Stdlib.Numbers.Integer.Abstract.ZMaxMin.
Require Stdlib.Numbers.Integer.Abstract.ZSgnAbs.
Require Stdlib.Numbers.Integer.Abstract.ZParity.
Require Stdlib.Numbers.Integer.Abstract.ZPow.
Require Stdlib.Numbers.Integer.Abstract.ZDivTrunc.
Require Stdlib.Numbers.Integer.Abstract.ZDivFloor.
Require Stdlib.Numbers.Integer.Abstract.ZGcd.
Require Stdlib.Numbers.Integer.Abstract.ZLcm.
Require Stdlib.Numbers.Integer.Abstract.ZBits.
Require Stdlib.Numbers.Integer.Abstract.ZProperties.
Require Corelib.BinNums.IntDef.
Require Stdlib.BinNums.IntDef.
Require Stdlib.ZArith.BinIntDef.
Require Stdlib.ZArith.BinInt.
Require Stdlib.setoid_ring.Ring_polynom.
Require Stdlib.Lists.ListTactics.
Require Stdlib.setoid_ring.InitialRing.
Require Stdlib.setoid_ring.Ring_tac.
Require Stdlib.setoid_ring.Ring_base.
Require Stdlib.setoid_ring.Ring.
Require Stdlib.setoid_ring.ArithRing.
Require Stdlib.Arith.Arith.
Require Corelib.Init.Byte.
Require Stdlib.Init.Byte.
Require Stdlib.Strings.Byte.
Require Stdlib.Strings.Ascii.
Require Stdlib.Strings.String.
Require Stdlib.ZArith.Zcompare.
Require Stdlib.ZArith.Zorder.
Require Stdlib.ZArith.Zeven.
Require Stdlib.ZArith.Zminmax.
Require Stdlib.ZArith.Zmin.
Require Stdlib.ZArith.Zmax.
Require Stdlib.ZArith.Znat.
Require Corelib.Init.Sumbool.
Require Stdlib.Init.Sumbool.
Require Stdlib.ZArith.ZArith_dec.
Require Stdlib.ZArith.Zabs.
Require Stdlib.ZArith.auxiliary.
Require Stdlib.ZArith.Zbool.
Require Stdlib.ZArith.Zmisc.
Require Stdlib.ZArith.Wf_Z.
Require Stdlib.ZArith.Zhints.
Require Stdlib.ZArith.Zpow_def.
Require Stdlib.omega.OmegaLemmas.
Require Stdlib.micromega.ZifyClasses.
Require Stdlib.micromega.ZifyInst.
Require Stdlib.micromega.Zify.
Require Stdlib.omega.PreOmega.
Require Stdlib.micromega.OrderedRing.
Require Stdlib.micromega.Env.
Require Stdlib.micromega.EnvRing.
Require Stdlib.micromega.Refl.
Require Stdlib.micromega.Tauto.
Require Stdlib.micromega.RingMicromega.
Require Stdlib.setoid_ring.ZArithRing.
Require Stdlib.micromega.ZCoeff.
Require Stdlib.ZArith.Zcomplements.
Require Stdlib.ZArith.Zdiv.
Require Stdlib.micromega.VarMap.
Require Stdlib.micromega.ZMicromega.
Require Stdlib.micromega.DeclConstantZ.
Require Stdlib.micromega.Lia.
Require Stdlib.micromega.ZArith_hints.
Require Stdlib.ZArith.Zpower.
Require Stdlib.ZArith.Zdivisibility.
Require Stdlib.ZArith.Zcong.
Require Stdlib.ZArith.Zdiv_facts.
Require Stdlib.PArith.POrderedType.
Require Stdlib.PArith.PArith.
Require Stdlib.btauto.Algebra.
Require Stdlib.btauto.Reflect.
Require Stdlib.btauto.Btauto.
Require Stdlib.ZArith.Zbitwise.
Require Stdlib.ZArith.ZModOffset.
Require Stdlib.setoid_ring.Algebra_syntax.
Require Stdlib.setoid_ring.Ncring.
Require Stdlib.setoid_ring.Ncring_polynom.
Require Stdlib.setoid_ring.Ncring_initial.
Require Stdlib.setoid_ring.Ncring_tac.
Require Stdlib.setoid_ring.Cring.
Require Stdlib.setoid_ring.Integral_domain.
Require Stdlib.nsatz.NsatzTactic.
Require Stdlib.ZArith.ZNsatz.
Require Stdlib.ZArith.ZArith_base.
Require Stdlib.ZArith.Znumtheory.
Require Stdlib.ZArith.ZArith.
Require compcert.lib.Coqlib.
Require Corelib.Classes.Equivalence.
Require Stdlib.Classes.Equivalence.
Require Corelib.Program.Utils.
Require Stdlib.Program.Utils.
Require Corelib.Program.Wf.
Require Stdlib.Program.Wf.
Require Stdlib.Logic.Eqdep.
Require Stdlib.Logic.JMeq.
Require Corelib.Program.Tactics.
Require Stdlib.Program.Tactics.
Require Stdlib.Program.Equality.
Require Stdlib.Logic.ProofIrrelevanceFacts.
Require Stdlib.Logic.ProofIrrelevance.
Require Stdlib.Program.Subset.
Require Stdlib.Logic.FunctionalExtensionality.
Require Stdlib.Program.Combinators.
Require Stdlib.Program.Syntax.
Require Corelib.Init.Wf.
Require Stdlib.Init.Wf.
Require Stdlib.Program.WfExtensionality.
Require Stdlib.Program.Program.
Require Stdlib.Classes.EquivDec.
Require compcert.lib.Maps.
Require compcert.common.Errors.
Require Stdlib.ZArith.Zquot.
Require Stdlib.ZArith.Zwf.
Require Stdlib.QArith.QArith_base.
Require Stdlib.setoid_ring.Field_theory.
Require Stdlib.setoid_ring.Field_tac.
Require Stdlib.setoid_ring.Field.
Require Stdlib.setoid_ring.NArithRing.
Require Stdlib.QArith.Qfield.
Require Stdlib.micromega.QMicromega.
Require Stdlib.Logic.HLevels.
Require Stdlib.QArith.Qring.
Require Stdlib.QArith.Qreduction.
Require Stdlib.QArith.QNsatz.
Require Stdlib.QArith.QArith.
Require Stdlib.QArith.Qabs.
Require Stdlib.QArith.Qpower.
Require Stdlib.QArith.Qround.
Require Stdlib.Logic.ConstructiveEpsilon.
Require Corelib.Classes.CMorphisms.
Require Stdlib.Classes.CMorphisms.
Require Stdlib.micromega.DeclConstant.
Require Stdlib.micromega.Lqa.
Require Stdlib.Reals.Cauchy.PosExtra.
Require Stdlib.Reals.Cauchy.QExtra.
Require Stdlib.Reals.Cauchy.ConstructiveExtra.
Require Stdlib.Reals.Cauchy.ConstructiveCauchyReals.
Require Stdlib.Reals.Abstract.ConstructiveReals.
Require Stdlib.Reals.Cauchy.ConstructiveCauchyRealsMult.
Require Stdlib.Reals.Cauchy.ConstructiveCauchyAbs.
Require Stdlib.QArith.QOrderedType.
Require Stdlib.QArith.Qminmax.
Require Stdlib.Reals.Cauchy.ConstructiveRcomplete.
Require Stdlib.Reals.ClassicalDedekindReals.
Require Stdlib.Reals.Abstract.ConstructiveAbs.
Require Stdlib.Reals.Abstract.ConstructiveLimits.
Require Stdlib.Reals.Abstract.ConstructiveLUB.
Require Stdlib.Reals.Rdefinitions.
Require Stdlib.Reals.Raxioms.
Require Stdlib.Reals.Rpow_def.
Require Stdlib.setoid_ring.RealField.
Require Stdlib.Reals.RIneq.
Require Stdlib.Reals.R_Ifp.
Require Stdlib.Reals.Rbasic_fun.
Require Stdlib.Reals.R_sqr.
Require Stdlib.Reals.SplitAbsolu.
Require Stdlib.Reals.SplitRmult.
Require Stdlib.Reals.ArithProp.
Require Stdlib.Reals.Rfunctions.
Require Stdlib.Reals.Qreals.
Require Stdlib.micromega.RMicromega.
Require Stdlib.Reals.Rregisternames.
Require Stdlib.micromega.Lra.
Require Stdlib.micromega.Psatz.
Require compcert.lib.Zbits.
Require Stdlib.Reals.DiscrR.
Require Stdlib.Reals.Rbase.
Require Stdlib.Reals.Zfloor.
Require Stdlib.Arith.Compare.
Require Stdlib.Reals.Rseries.
Require Stdlib.Reals.SeqProp.
Require Stdlib.Reals.Rcomplete.
Require Stdlib.Reals.PartSum.
Require Stdlib.Reals.AltSeries.
Require Stdlib.Reals.Binomial.
Require Stdlib.Reals.Rsigma.
Require Stdlib.Reals.Rprod.
Require Stdlib.Reals.Cauchy_prod.
Require Stdlib.Reals.Alembert.
Require Stdlib.Reals.SeqSeries.
Require Stdlib.Reals.Rtrigo_fun.
Require Stdlib.Reals.Rtrigo_def.
Require Stdlib.Reals.Rtrigo_alt.
Require Stdlib.Reals.Cos_rel.
Require Stdlib.Reals.Cos_plus.
Require Stdlib.Reals.Rlimit.
Require Stdlib.Reals.Rderiv.
Require Stdlib.Reals.Ranalysis1.
Require Stdlib.Reals.Rsqrt_def.
Require Stdlib.Reals.RList.
Require Stdlib.Logic.PropExtensionalityFacts.
Require Stdlib.Logic.Hurkens.
Require Stdlib.Logic.ClassicalFacts.
Require Stdlib.Logic.Classical_Prop.
Require Stdlib.Logic.Classical_Pred_Type.
Require Stdlib.Reals.Rtopology.
Require Stdlib.Reals.MVT.
Require Stdlib.Reals.PSeries_reg.
Require Stdlib.Reals.Rtrigo1.
Require Stdlib.Reals.Ranalysis2.
Require Stdlib.Reals.Ranalysis3.
Require Stdlib.Reals.Exp_prop.
Require Stdlib.Reals.Rtrigo_reg.
Require Stdlib.Reals.R_sqrt.
Require Stdlib.Reals.Rtrigo_calc.
Require Stdlib.Reals.Rgeom.
Require Stdlib.Reals.Sqrt_reg.
Require Stdlib.Reals.Ranalysis4.
Require Stdlib.Reals.Rpower.
Require Stdlib.Reals.Ranalysis_reg.
Require Stdlib.Reals.Rtrigo_facts.
Require Stdlib.Reals.RiemannInt_SF.
Require Stdlib.Reals.RiemannInt.
Require Stdlib.Reals.Ranalysis5.
Require Stdlib.Reals.Ratan.
Require Stdlib.Reals.Machin.
Require Stdlib.Reals.Rtrigo.
Require Stdlib.Reals.Ranalysis.
Require Stdlib.Reals.NewtonInt.
Require Stdlib.Reals.Integration.
Require Stdlib.micromega.Fourier_util.
Require Stdlib.micromega.Fourier.
Require Stdlib.Reals.Reals.
Require Corelib.Floats.SpecFloat.
Require Stdlib.Floats.SpecFloat.
Require Flocq.Core.Zaux.
Require Flocq.Core.Raux.
Require Flocq.Core.Defs.
Require Flocq.Core.Digits.
Require Flocq.Core.Float_prop.
Require Flocq.Core.Round_pred.
Require Flocq.Core.Generic_fmt.
Require Flocq.Core.Ulp.
Require Flocq.Core.Round_NE.
Require Flocq.Core.FIX.
Require Flocq.Core.FLX.
Require Flocq.Core.FLT.
Require Flocq.Core.Core.
Require Flocq.Calc.Bracket.
Require Flocq.Calc.Round.
Require Flocq.Calc.Operations.
Require Flocq.Calc.Div.
Require Flocq.Calc.Sqrt.
Require Flocq.Prop.Relative.
Require Flocq.IEEE754.BinarySingleNaN.
Require Flocq.IEEE754.Binary.
Require Flocq.IEEE754.Bits.
Require compcert.x86_32.Archi.
Require compcert.lib.Integers.
Require Flocq.Prop.Sterbenz.
Require Flocq.Prop.Round_odd.
Require compcert.lib.IEEE754_extra.
Require compcert.lib.Floats.
Require compcert.common.AST.
Require compcert.common.Linking.
Require compcert.common.Values.
Require Stdlib.funind.Recdef.
Require compcert.lib.Intv.
Require compcert.lib.Axioms.
Require compcert.common.Memdata.
Require compcert.common.Memtype.
Require compcert.common.Memory.
Require compcert.common.Globalenvs.
Require compcert.common.Builtins0.
Require compcert.x86.Builtins1.
Require compcert.common.Builtins.
Require compcert.common.Events.
Require Stdlib.Wellfounded.Disjoint_Union.
Require Stdlib.Wellfounded.Inclusion.
Require Stdlib.Wellfounded.Inverse_Image.
Require Stdlib.Wellfounded.Transitive_Closure.
Require Stdlib.Wellfounded.List_Extension.
Require Stdlib.Wellfounded.Lexicographic_Exponentiation.
Require Stdlib.Wellfounded.Lexicographic_Product.
Require Stdlib.Wellfounded.Union.
Require Stdlib.Wellfounded.Well_Ordering.
Require Stdlib.Wellfounded.Wellfounded.
Require compcert.common.Smallstep.
Require compcert.cfrontend.Ctypes.
Require compcert.cfrontend.Cop.
Require compcert.cfrontend.Csyntax.
Require compcert.cfrontend.Csem.
Require Stdlib.Logic.Classical.
Require compcert.cfrontend.Cstrategy.
Require compcert.cfrontend.Clight.
Require compcert.cfrontend.SimplExpr.
Require compcert.cfrontend.SimplExprspec.
Require compcert.cfrontend.SimplExprproof.
Require Stdlib.Sets.Relations_1.
Require Stdlib.Sorting.Sorted.
Require Stdlib.Sorting.SetoidList.
Require Stdlib.Structures.OrderedType.
Require Stdlib.NArith.Ndiv_def.
Require Stdlib.NArith.Nsqrt_def.
Require Stdlib.NArith.Ngcd_def.
Require Stdlib.NArith.NArith_base.
Require Stdlib.NArith.NArith.
Require Stdlib.NArith.Ndec.
Require Stdlib.Structures.OrderedTypeEx.
Require Stdlib.Structures.OrderedTypeAlt.
Require Stdlib.Structures.DecidableType.
Require Stdlib.Structures.DecidableTypeEx.
Require Stdlib.FSets.FSetInterface.
Require Stdlib.FSets.FSetBridge.
Require Stdlib.FSets.FSetFacts.
Require Stdlib.FSets.FSetDecide.
Require Stdlib.FSets.FSetProperties.
Require Stdlib.Arith.Zerob.
Require Stdlib.FSets.FSetEqProperties.
Require Stdlib.Classes.RelationPairs.
Require Stdlib.MSets.MSetInterface.
Require Stdlib.MSets.MSetFacts.
Require Stdlib.FSets.FSetCompat.
Require Stdlib.MSets.MSetWeakList.
Require Stdlib.FSets.FSetWeakList.
Require Stdlib.Structures.EqualitiesFacts.
Require Stdlib.Structures.OrdersLists.
Require Stdlib.MSets.MSetList.
Require Stdlib.Structures.OrdersAlt.
Require Stdlib.FSets.FSetList.
Require Stdlib.FSets.FSetPositive.
Require Stdlib.ZArith.Int.
Require Stdlib.MSets.MSetGenTree.
Require Stdlib.MSets.MSetAVL.
Require Stdlib.FSets.FSetAVL.
Require Stdlib.FSets.FSets.
Require compcert.lib.Ordered.
Require compcert.driver.Compopts.
Require compcert.lib.Decidableplus.
Require compcert.lib.BoolEqual.
Require compcert.x86.Op.
Require compcert.x86.Machregs.
Require compcert.backend.Locations.
Require compcert.x86.Conventions1.
Require compcert.cfrontend.SimplLocals.
Require compcert.cfrontend.SimplLocalsproof.
Require compcert.cfrontend.Ctyping.
Require compcert.common.Switch.
Require compcert.backend.Cminor.
Require compcert.cfrontend.Csharpminor.
Require compcert.cfrontend.Cshmgen.
Require compcert.cfrontend.Cshmgenproof.
Require Stdlib.Lists.ListDec.
Require Stdlib.Lists.Finite.
Require Stdlib.Sorting.Permutation.
Require Stdlib.Sorting.Mergesort.
Require compcert.cfrontend.Cminorgen.
Require compcert.cfrontend.Cminorgenproof.
Require compcert.common.Unityping.
Require compcert.backend.Cminortyping.
Require compcert.backend.CminorSel.
Require compcert.x86.SelectOp.
Require compcert.backend.SplitLong.
Require compcert.x86.SelectOpproof.
Require compcert.x86.SelectLong.
Require compcert.backend.SelectDiv.
Require compcert.backend.SplitLongproof.
Require compcert.x86.SelectLongproof.
Require compcert.backend.SelectDivproof.
Require compcert.backend.Selection.

Module Export AdmitTactic.
Module Import LocalFalse.
Inductive False : Prop := .
End LocalFalse.
Axiom proof_admitted : False.
Import Coq.Init.Ltac.
Tactic Notation "admit" := abstract case proof_admitted.
End AdmitTactic.

Module Export compcert_DOT_backend_DOT_Selectionproof_WRAPPED.
Module Export Selectionproof.













Import Stdlib.funind.FunInd.
Import compcert.lib.Coqlib.
Import compcert.lib.Maps.
Import compcert.common.AST.
Import compcert.common.Linking.
Import compcert.common.Errors.
Import compcert.lib.Integers.
Import compcert.common.Values.
Import compcert.common.Memory.
Import compcert.common.Builtins.
Import compcert.common.Events.
Import compcert.common.Globalenvs.
Import compcert.common.Smallstep.
Import compcert.common.Switch.
Import compcert.backend.Cminor.
Import compcert.x86.Op.
Import compcert.backend.CminorSel.
Import compcert.backend.Cminortyping.
Import compcert.x86.SelectOp.
Import compcert.backend.SelectDiv.
Import compcert.backend.SplitLong.
Import compcert.x86.SelectLong.
Import compcert.backend.Selection.
Import compcert.x86.SelectOpproof.
Import compcert.backend.SelectDivproof.
Import compcert.backend.SplitLongproof.
Import compcert.x86.SelectLongproof.

Local Open Scope cminorsel_scope.
Local Open Scope error_monad_scope.
Definition match_fundef (cunit: Cminor.program) (f: Cminor.fundef) (tf: CminorSel.fundef) : Prop. exact (exists hf, helper_functions_declared cunit hf /\ sel_fundef (prog_defmap cunit) hf f = OK tf). Defined.

Definition match_prog (p: Cminor.program) (tp: CminorSel.program) :=
  match_program match_fundef eq p tp.



Lemma record_globdefs_sound:
  forall dm id gd, (record_globdefs dm)!id = Some gd -> dm!id = Some gd.
Admitted.

Lemma lookup_helper_correct_1:
  forall globs name sg id,
  lookup_helper globs name sg = OK id ->
  globs!id = Some (Gfun (External (EF_runtime name sg))).
Admitted.

Lemma lookup_helper_correct:
  forall p name sg id,
  lookup_helper (record_globdefs (prog_defmap p)) name sg = OK id ->
  helper_declared p id name sg.
Admitted.

Lemma get_helpers_correct:
  forall p hf,
  get_helpers (prog_defmap p) = OK hf -> helper_functions_declared p hf.
Admitted.

Theorem transf_program_match:
  forall p tp, sel_program p = OK tp -> match_prog p tp.
Admitted.

Lemma helper_functions_declared_linkorder:
  forall (p p': Cminor.program) hf,
  helper_functions_declared p hf -> linkorder p p' -> helper_functions_declared p' hf.
Admitted.



Section PRESERVATION.

Variable prog: Cminor.program.
Variable tprog: CminorSel.program.
Let ge := Genv.globalenv prog.
Let tge := Genv.globalenv tprog.
Hypothesis TRANSF: match_prog prog tprog.

Lemma wt_prog : wt_program prog.
Admitted.

Lemma symbols_preserved:
  forall (s: ident), Genv.find_symbol tge s = Genv.find_symbol ge s.
Proof (Genv.find_symbol_match TRANSF).

Lemma senv_preserved:
  Senv.equiv (Genv.to_senv ge) (Genv.to_senv tge).
Proof (Genv.senv_match TRANSF).

Lemma function_ptr_translated:
  forall (b: block) (f: Cminor.fundef),
  Genv.find_funct_ptr ge b = Some f ->
  exists cu tf, Genv.find_funct_ptr tge b = Some tf /\ match_fundef cu f tf /\ linkorder cu prog.
Proof (Genv.find_funct_ptr_match TRANSF).

Lemma functions_translated:
  forall (v v': val) (f: Cminor.fundef),
  Genv.find_funct ge v = Some f ->
  Val.lessdef v v' ->
  exists cu tf, Genv.find_funct tge v' = Some tf /\ match_fundef cu f tf /\ linkorder cu prog.
Admitted.

Lemma sig_function_translated:
  forall cu f tf, match_fundef cu f tf -> funsig tf = Cminor.funsig f.
Admitted.

Lemma stackspace_function_translated:
  forall dm hf f tf, sel_function dm hf f = OK tf -> fn_stackspace tf = Cminor.fn_stackspace f.
Admitted.

Lemma helper_functions_preserved:
  forall hf, helper_functions_declared prog hf -> helper_functions_declared tprog hf.
Admitted.

Section CMCONSTR.

Variable cunit: Cminor.program.
Variable hf: helper_functions.
Hypothesis LINK: linkorder cunit prog.
Hypothesis HF: helper_functions_declared cunit hf.

Let HF': helper_functions_declared tprog hf.
admit.
Defined.

Variable sp: val.
Variable e: env.
Variable m: mem.

Lemma eval_condexpr_of_expr:
  forall a le v b,
  eval_expr tge sp e m le a v ->
  Val.bool_of_val v b ->
  eval_condexpr tge sp e m le (condexpr_of_expr a) b.
Admitted.

Lemma eval_condition_of_expr:
  forall a le v b,
  eval_expr tge sp e m le a v ->
  Val.bool_of_val v b ->
  exists vl,
     eval_exprlist tge sp e m le (snd (condition_of_expr a)) vl
  /\ eval_condition (fst (condition_of_expr a)) vl m = Some b.
Admitted.

Lemma eval_load:
  forall le a v chunk v',
  eval_expr tge sp e m le a v ->
  Mem.loadv chunk m v = Some v' ->
  eval_expr tge sp e m le (load chunk a) v'.
Admitted.

Lemma eval_store:
  forall chunk a1 a2 v1 v2 f k m',
  eval_expr tge sp e m nil a1 v1 ->
  eval_expr tge sp e m nil a2 v2 ->
  Mem.storev chunk m v1 v2 = Some m' ->
  step tge (State f (store chunk a1 a2) k sp e m)
        E0 (State f Sskip k sp e m').
Admitted.



Lemma eval_sel_unop:
  forall le op a1 v1 v,
  eval_expr tge sp e m le a1 v1 ->
  eval_unop op v1 = Some v ->
  exists v', eval_expr tge sp e m le (sel_unop op a1) v' /\ Val.lessdef v v'.
Admitted.

Lemma eval_sel_binop:
  forall le op a1 a2 v1 v2 v,
  eval_expr tge sp e m le a1 v1 ->
  eval_expr tge sp e m le a2 v2 ->
  eval_binop op v1 v2 m = Some v ->
  exists v', eval_expr tge sp e m le (sel_binop op a1 a2) v' /\ Val.lessdef v v'.
Admitted.

Lemma eval_sel_select:
  forall le a1 a2 a3 v1 v2 v3 b ty,
  eval_expr tge sp e m le a1 v1 ->
  eval_expr tge sp e m le a2 v2 ->
  eval_expr tge sp e m le a3 v3 ->
  Val.bool_of_val v1 b ->
  exists v, eval_expr tge sp e m le (sel_select ty a1 a2 a3) v
        /\  Val.lessdef (Val.select (Some b) v2 v3 ty) v.
Admitted.



Lemma eval_sel_known_builtin:
  forall bf args a vl v le,
  sel_known_builtin bf args = Some a ->
  eval_exprlist tge sp e m le args vl ->
  builtin_function_sem bf vl = Some v ->
  exists v', eval_expr tge sp e m le a v' /\ Val.lessdef v v'.
Admitted.

End CMCONSTR.



Lemma expr_is_addrof_ident_correct:
  forall e id,
  expr_is_addrof_ident e = Some id ->
  e = Cminor.Econst (Cminor.Oaddrsymbol id Ptrofs.zero).
Admitted.

Lemma classify_call_correct:
  forall unit sp e m a v fd,
  linkorder unit prog ->
  Cminor.eval_expr ge sp e m a v ->
  Genv.find_funct ge v = Some fd ->
  match classify_call (prog_defmap unit) a with
  | Call_default => True
  | Call_imm id => exists b, Genv.find_symbol ge id = Some b /\ v = Vptr b Ptrofs.zero
  | Call_builtin ef => fd = External ef
  end.
Admitted.



Inductive Rint: Z -> val -> Prop :=
  | Rint_intro: forall n, Rint (Int.unsigned n) (Vint n).

Inductive Rlong: Z -> val -> Prop :=
  | Rlong_intro: forall n, Rlong (Int64.unsigned n) (Vlong n).

Section SEL_SWITCH.

Variable make_cmp_eq: expr -> Z -> expr.
Variable make_cmp_ltu: expr -> Z -> expr.
Variable make_sub: expr -> Z -> expr.
Variable make_to_int: expr -> expr.
Variable modulus: Z.
Variable R: Z -> val -> Prop.

Hypothesis eval_make_cmp_eq: forall sp e m le a v i n,
  eval_expr tge sp e m le a v -> R i v -> 0 <= n < modulus ->
  eval_expr tge sp e m le (make_cmp_eq a n) (Val.of_bool (zeq i n)).
Hypothesis eval_make_cmp_ltu: forall sp e m le a v i n,
  eval_expr tge sp e m le a v -> R i v -> 0 <= n < modulus ->
  eval_expr tge sp e m le (make_cmp_ltu a n) (Val.of_bool (zlt i n)).
Hypothesis eval_make_sub: forall sp e m le a v i n,
  eval_expr tge sp e m le a v -> R i v -> 0 <= n < modulus ->
  exists v', eval_expr tge sp e m le (make_sub a n) v' /\ R ((i - n) mod modulus) v'.
Hypothesis eval_make_to_int: forall sp e m le a v i,
  eval_expr tge sp e m le a v -> R i v ->
  exists v', eval_expr tge sp e m le (make_to_int a) v' /\ Rint (i mod Int.modulus) v'.

Lemma sel_switch_correct_rec:
  forall sp e m varg i x,
  R i varg ->
  forall t arg le,
  wf_comptree modulus t ->
  nth_error le arg = Some varg ->
  comptree_match modulus i t = Some x ->
  eval_exitexpr tge sp e m le (sel_switch make_cmp_eq make_cmp_ltu make_sub make_to_int arg t) x.
Admitted.

Lemma sel_switch_correct:
  forall dfl cases arg sp e m varg i t le,
  validate_switch modulus dfl cases t = true ->
  eval_expr tge sp e m le arg varg ->
  R i varg ->
  0 <= i < modulus ->
  eval_exitexpr tge sp e m le
     (XElet arg (sel_switch make_cmp_eq make_cmp_ltu make_sub make_to_int O t))
     (switch_target i dfl cases).
Admitted.

End SEL_SWITCH.

Section SEL_SWITCH_INT.

Variable cunit: Cminor.program.
Variable hf: helper_functions.
Hypothesis LINK: linkorder cunit prog.
Hypothesis HF: helper_functions_declared cunit hf.

Let HF': helper_functions_declared tprog hf.
Admitted.

Lemma sel_switch_int_correct:
  forall dfl cases arg sp e m i t le,
  validate_switch Int.modulus dfl cases t = true ->
  eval_expr tge sp e m le arg (Vint i) ->
  eval_exitexpr tge sp e m le (XElet arg (sel_switch_int O t)) (switch_target (Int.unsigned i) dfl cases).
Admitted.

Lemma sel_switch_long_correct:
  forall dfl cases arg sp e m i t le,
  validate_switch Int64.modulus dfl cases t = true ->
  eval_expr tge sp e m le arg (Vlong i) ->
  eval_exitexpr tge sp e m le (XElet arg (sel_switch_long O t)) (switch_target (Int64.unsigned i) dfl cases).
Admitted.

End SEL_SWITCH_INT.



Ltac TrivialExists :=
  match goal with
  | [ |- exists v, Some ?x = Some v /\ _ ] => exists x; split; auto
  | _ => idtac
  end.

Lemma eval_unop_lessdef:
  forall op v1 v1' v,
  eval_unop op v1 = Some v -> Val.lessdef v1 v1' ->
  exists v', eval_unop op v1' = Some v' /\ Val.lessdef v v'.
Admitted.

Lemma eval_binop_lessdef:
  forall op v1 v1' v2 v2' v m m',
  eval_binop op v1 v2 m = Some v ->
  Val.lessdef v1 v1' -> Val.lessdef v2 v2' -> Mem.extends m m' ->
  exists v', eval_binop op v1' v2' m' = Some v' /\ Val.lessdef v v'.
Admitted.
Definition env_lessdef (e1 e2: env) : Prop. exact (forall id v1, e1!id = Some v1 -> exists v2, e2!id = Some v2 /\ Val.lessdef v1 v2). Defined.

Lemma set_var_lessdef:
  forall e1 e2 id v1 v2,
  env_lessdef e1 e2 -> Val.lessdef v1 v2 ->
  env_lessdef (PTree.set id v1 e1) (PTree.set id v2 e2).
Admitted.

Lemma set_optvar_lessdef:
  forall e1 e2 optid v1 v2,
  env_lessdef e1 e2 -> Val.lessdef v1 v2 ->
  env_lessdef (set_optvar optid v1 e1) (set_optvar optid v2 e2).
Admitted.

Lemma set_params_lessdef:
  forall il vl1 vl2,
  Val.lessdef_list vl1 vl2 ->
  env_lessdef (set_params vl1 il) (set_params vl2 il).
Admitted.

Lemma set_locals_lessdef:
  forall e1 e2, env_lessdef e1 e2 ->
  forall il, env_lessdef (set_locals il e1) (set_locals il e2).
Admitted.



Section EXPRESSIONS.

Variable cunit: Cminor.program.
Variable hf: helper_functions.
Hypothesis LINK: linkorder cunit prog.
Hypothesis HF: helper_functions_declared cunit hf.

Lemma sel_expr_correct:
  forall sp e m a v,
  Cminor.eval_expr ge sp e m a v ->
  forall e' le m',
  env_lessdef e e' -> Mem.extends m m' ->
  exists v', eval_expr tge sp e' m' le (sel_expr a) v' /\ Val.lessdef v v'.
Admitted.

Lemma sel_exprlist_correct:
  forall sp e m a v,
  Cminor.eval_exprlist ge sp e m a v ->
  forall e' le m',
  env_lessdef e e' -> Mem.extends m m' ->
  exists v', eval_exprlist tge sp e' m' le (sel_exprlist a) v' /\ Val.lessdef_list v v'.
Admitted.

Lemma sel_select_expr_correct:
  forall ty cond a1 a2 sp e m vcond v1 v2 b e' m' le,
  SelectOp.select_supported ty = true ->
  Cminor.eval_expr ge sp e m cond vcond ->
  Cminor.eval_expr ge sp e m a1 v1 ->
  Cminor.eval_expr ge sp e m a2 v2 ->
  Val.bool_of_val vcond b ->
  env_lessdef e e' -> Mem.extends m m' ->
  exists v', eval_expr tge sp e' m' le (sel_select_expr ty cond a1 a2) v'
          /\ Val.lessdef (Val.select (Some b) v1 v2 ty) v'.
Admitted.

Lemma sel_builtin_arg_correct:
  forall sp e e' m m' a v c,
  env_lessdef e e' -> Mem.extends m m' ->
  Cminor.eval_expr ge sp e m a v ->
  exists v',
     CminorSel.eval_builtin_arg tge sp e' m' (sel_builtin_arg a c) v'
  /\ Val.lessdef v v'.
Admitted.

Lemma sel_builtin_args_correct:
  forall sp e e' m m',
  env_lessdef e e' -> Mem.extends m m' ->
  forall al vl,
  Cminor.eval_exprlist ge sp e m al vl ->
  forall cl,
  exists vl',
     list_forall2 (CminorSel.eval_builtin_arg tge sp e' m')
                  (sel_builtin_args al cl)
                  vl'
  /\ Val.lessdef_list vl vl'.
Admitted.

Lemma sel_builtin_res_correct:
  forall oid v e v' e',
  env_lessdef e e' -> Val.lessdef v v' ->
  env_lessdef (set_optvar oid v e) (set_builtin_res (sel_builtin_res oid) v' e').
Admitted.

Lemma sel_builtin_default_correct:
  forall optid ef al sp e1 m1 vl t v m2 e1' m1' f k,
  Cminor.eval_exprlist ge sp e1 m1 al vl ->
  external_call ef ge vl m1 t v m2 ->
  env_lessdef e1 e1' -> Mem.extends m1 m1' ->
  exists e2' m2',
     plus step tge (State f (sel_builtin_default optid ef al) k sp e1' m1')
                 t (State f Sskip k sp e2' m2')
  /\ env_lessdef (set_optvar optid v e1) e2'
  /\ Mem.extends m2 m2'.
Admitted.

Lemma sel_builtin_correct:
  forall optid ef al sp e1 m1 vl t v m2 e1' m1' f k,
  Cminor.eval_exprlist ge sp e1 m1 al vl ->
  external_call ef ge vl m1 t v m2 ->
  env_lessdef e1 e1' -> Mem.extends m1 m1' ->
  exists e2' m2',
     plus step tge (State f (sel_builtin optid ef al) k sp e1' m1')
                 t (State f Sskip k sp e2' m2')
  /\ env_lessdef (set_optvar optid v e1) e2'
  /\ Mem.extends m2 m2'.
Admitted.



Definition eventually := Smallstep.eventually Cminor.step Cminor.final_state ge.

Lemma eventually_step: forall f s k sp e m n P,
  (forall t S', Cminor.step ge (Cminor.State f s k sp e m) t S' -> t = E0 /\ eventually n S' P) ->
  eventually (S n) (Cminor.State f s k sp e m) P.
Admitted.

Lemma classify_stmt_sound:
  forall s,
  match classify_stmt s with
  | SCskip =>
      exists n, forall f k sp e m,
      eventually n (Cminor.State f s k sp e m) (eq (Cminor.State f Cminor.Sskip k sp e m))
  | SCassign id a =>
      exists n, forall f k sp e m v,
      Cminor.eval_expr ge sp e m a v ->
      eventually n (Cminor.State f s k sp e m) (eq (Cminor.State f Cminor.Sskip k sp (PTree.set id v e) m))
  | SCother => True
  end.
Admitted.

Lemma classify_stmt_wt:
  forall env tyret id a s,
  classify_stmt s = SCassign id a ->
  wt_stmt env tyret s ->
  wt_expr env a (env id).
Admitted.

Lemma if_conversion_base_correct:
  forall f env cond id ifso ifnot kont s e ty vb b sp m tf tk e' m',
  if_conversion_base (known_id f) env cond id ifso ifnot kont = Some s ->
  def_env f e -> wt_env env e ->
  env id = ty ->
  wt_expr env ifso ty ->
  wt_expr env ifnot ty ->
  Cminor.eval_expr ge sp e m cond vb -> Val.bool_of_val vb b ->
  env_lessdef e e' -> Mem.extends m m' ->
  exists v1 v2 v',
     Cminor.eval_expr ge sp e m ifso v1
  /\ Cminor.eval_expr ge sp e m ifnot v2
  /\ Val.lessdef (if b then v1 else v2) v'
  /\ step tge (State tf s tk sp e' m')
           E0 (State tf Sskip tk sp (PTree.set id v' e') m').
Admitted.

Lemma if_conversion_correct:
  forall f env tyret cond ifso ifnot kont s vb b k f' k' sp e m e' m',
  if_conversion (known_id f) env cond ifso ifnot kont = Some s ->
  def_env f e -> wt_env env e ->
  wt_stmt env tyret ifso ->
  wt_stmt env tyret ifnot ->
  Cminor.eval_expr ge sp e m cond vb -> Val.bool_of_val vb b ->
  env_lessdef e e' -> Mem.extends m m' ->
  let s0 := if b then ifso else ifnot in
  exists n e1 e1',
     step tge (State f' s k' sp e' m') E0 (State f' Sskip k' sp e1' m')
  /\ eventually n (Cminor.State f s0 k sp e m) (eq (Cminor.State f Cminor.Sskip k sp e1 m))
  /\ env_lessdef e1 e1'.
Admitted.

End EXPRESSIONS.



Inductive match_cont: Cminor.program -> helper_functions -> known_idents -> typenv -> Cminor.cont -> CminorSel.cont -> Prop :=
  | match_cont_seq: forall cunit hf ki env s kont s' k k',
      sel_stmt (prog_defmap cunit) ki env s kont = OK s' ->
      match_cont cunit hf ki env k k' ->
      match_cont cunit hf ki env (Cminor.Kseq s k) (Kseq s' k')
  | match_cont_block: forall cunit hf ki env k k',
      match_cont cunit hf ki env k k' ->
      match_cont cunit hf ki env (Cminor.Kblock k) (Kblock k')
  | match_cont_other: forall cunit hf ki env k k',
      match_call_cont k k' ->
      match_cont cunit hf ki env k k'

with match_call_cont: Cminor.cont -> CminorSel.cont -> Prop :=
  | match_cont_stop:
      match_call_cont Cminor.Kstop Kstop
  | match_cont_call: forall cunit hf env id f sp e k f' e' k',
      linkorder cunit prog ->
      helper_functions_declared cunit hf ->
      sel_function (prog_defmap cunit) hf f = OK f' ->
      type_function f = OK env ->
      match_cont cunit hf (known_id f) env k k' ->
      env_lessdef e e' ->
      match_call_cont (Cminor.Kcall id f sp e k) (Kcall id f' sp e' k').

Inductive match_states: Cminor.state -> CminorSel.state -> Prop :=
  | match_state: forall cunit hf f f' s kont k s' k' sp e m e' m' env
        (LINK: linkorder cunit prog)
        (HF: helper_functions_declared cunit hf)
        (TF: sel_function (prog_defmap cunit) hf f = OK f')
        (TYF: type_function f = OK env)
        (TS: sel_stmt (prog_defmap cunit) (known_id f) env s kont = OK s')
        (MC: match_cont cunit hf (known_id f) env k k')
        (LD: env_lessdef e e')
        (ME: Mem.extends m m'),
      match_states
        (Cminor.State f s k sp e m)
        (State f' s' k' sp e' m')
  | match_callstate: forall cunit f f' args args' k k' m m'
        (LINK: linkorder cunit prog)
        (TF: match_fundef cunit f f')
        (MC: match_call_cont k k')
        (LD: Val.lessdef_list args args')
        (ME: Mem.extends m m'),
      match_states
        (Cminor.Callstate f args k m)
        (Callstate f' args' k' m')
  | match_returnstate: forall v v' k k' m m'
        (MC: match_call_cont k k')
        (LD: Val.lessdef v v')
        (ME: Mem.extends m m'),
      match_states
        (Cminor.Returnstate v k m)
        (Returnstate v' k' m')
  | match_builtin_1: forall cunit hf ef args optid f sp e k m al f' e' k' m' env
        (LINK: linkorder cunit prog)
        (HF: helper_functions_declared cunit hf)
        (TF: sel_function (prog_defmap cunit) hf f = OK f')
        (TYF: type_function f = OK env)
        (MC: match_cont cunit hf (known_id f) env k k')
        (EA: Cminor.eval_exprlist ge sp e m al args)
        (LDE: env_lessdef e e')
        (ME: Mem.extends m m'),
      match_states
        (Cminor.Callstate (External ef) args (Cminor.Kcall optid f sp e k) m)
        (State f' (sel_builtin optid ef al) k' sp e' m')
  | match_builtin_2: forall cunit hf v v' optid f sp e k m f' e' m' k' env
        (LINK: linkorder cunit prog)
        (HF: helper_functions_declared cunit hf)
        (TF: sel_function (prog_defmap cunit) hf f = OK f')
        (TYF: type_function f = OK env)
        (MC: match_cont cunit hf (known_id f) env k k')
        (LDV: Val.lessdef v v')
        (LDE: env_lessdef (set_optvar optid v e) e')
        (ME: Mem.extends m m'),
      match_states
        (Cminor.Returnstate v (Cminor.Kcall optid f sp e k) m)
        (State f' Sskip k' sp e' m').

Remark match_states_skip: forall cunit hf f f' k k' sp e m e' m' env
        (LINK: linkorder cunit prog)
        (HF: helper_functions_declared cunit hf)
        (TF: sel_function (prog_defmap cunit) hf f = OK f')
        (TYF: type_function f = OK env)
        (MC: match_cont cunit hf (known_id f) env k k')
        (LD: env_lessdef e e')
        (ME: Mem.extends m m'),
  match_states (Cminor.State f Cminor.Sskip k sp e m) (State f' Sskip k' sp e' m').
Admitted.

Remark call_cont_commut:
  forall cunit hf ki env k k',
  match_cont cunit hf ki env k k' -> match_call_cont (Cminor.call_cont k) (call_cont k').
Admitted.

Remark match_is_call_cont:
  forall cunit hf ki env k k',
  match_cont cunit ki env hf k k' -> Cminor.is_call_cont k ->
  match_call_cont k k' /\ is_call_cont k'.
Admitted.
Definition nolabel (s: Cminor.stmt) : Prop. exact (forall lbl k, Cminor.find_label lbl s k = None). Defined.
Definition nolabel' (s: stmt) : Prop. exact (forall lbl k, find_label lbl s k = None). Defined.

Remark classify_stmt_nolabel:
  forall s, classify_stmt s <> SCother -> nolabel s.
Admitted.

Lemma if_conversion_base_nolabel: forall (hf: helper_functions) ki env a id a1 a2 kont s,
  if_conversion_base ki env a id a1 a2 kont = Some s ->
  nolabel' s.
Admitted.

Lemma if_conversion_nolabel: forall (hf: helper_functions) ki env a s1 s2 kont s,
  if_conversion ki env a s1 s2 kont = Some s ->
  nolabel s1 /\ nolabel s2 /\ nolabel' s.
Admitted.

Remark sel_builtin_nolabel:
  forall (hf: helper_functions) optid ef args, nolabel' (sel_builtin optid ef args).
Admitted.

Remark find_label_commut:
  forall cunit hf ki env lbl s kont k s' k',
  match_cont cunit hf ki env k k' ->
  sel_stmt (prog_defmap cunit) ki env s kont = OK s' ->
  match Cminor.find_label lbl s k, find_label lbl s' k' with
  | None, None => True
  | Some(s1, k1), Some(s1', k1') => exists kont1, sel_stmt (prog_defmap cunit) ki env s1 kont1 = OK s1' /\ match_cont cunit hf ki env k1 k1'
  | _, _ => False
  end.
Admitted.
Definition measure (s: Cminor.state) : nat. exact (match s with
  | Cminor.Callstate _ _ _ _ => 0%nat
  | Cminor.State _ _ _ _ _ _ => 1%nat
  | Cminor.Returnstate _ _ _ => 2%nat
  end). Defined.

Lemma sel_step_correct:
  forall S1 t S2, Cminor.step ge S1 t S2 ->
  forall T1, match_states S1 T1 -> wt_state S1 ->
  (exists T2, plus step tge T1 t T2 /\ match_states S2 T2)
  \/ (measure S2 < measure S1 /\ t = E0 /\ match_states S2 T1)%nat
  \/ (exists T2 n, step tge T1 t T2 /\ eventually n S2 (fun S3 => match_states S3 T2)).
Admitted.

Lemma sel_initial_states:
  forall S, Cminor.initial_state prog S ->
  exists R, initial_state tprog R /\ match_states S R.
Admitted.

Lemma sel_final_states:
  forall S R r,
  match_states S R -> Cminor.final_state S r -> final_state R r.
Admitted.

Theorem transf_program_correct:
  forward_simulation (Cminor.semantics prog) (CminorSel.semantics tprog).
Admitted.

End PRESERVATION.



Global Instance TransfSelectionLink : TransfLink match_prog.
Admitted.

End Selectionproof.

End compcert_DOT_backend_DOT_Selectionproof_WRAPPED.
Module Export compcert_DOT_backend_DOT_Selectionproof.
Module Export compcert.
Module Export backend.
Module Export Selectionproof.
Include compcert_DOT_backend_DOT_Selectionproof_WRAPPED.Selectionproof.
End Selectionproof.

End backend.

End compcert.

End compcert_DOT_backend_DOT_Selectionproof.
Import compcert.lib.Coqlib.
Definition reg: Type.
exact (positive).
Defined.

Module Export compcert_DOT_backend_DOT_RTL_WRAPPED.
Module Export RTL.
Import compcert.lib.Maps.
Import compcert.common.AST.

Definition node := positive.
Definition code: Type.
Admitted.

Record function: Type := mkfunction {
  fn_sig: signature;
  fn_params: list reg;
  fn_stacksize: Z;
  fn_code: code;
  fn_entrypoint: node
}.

Definition fundef := AST.fundef function.

Definition program := AST.program fundef unit.

Definition defmap := PTree.t (globdef fundef unit).

End RTL.
Module Export compcert.
Module Export backend.
Module Export RTL.
Include compcert_DOT_backend_DOT_RTL_WRAPPED.RTL.
End RTL.
Import compcert.lib.Maps.
Import compcert.common.AST.
Import compcert.lib.Integers.
Definition transl_function (f: CminorSel.function) : Errors.res RTL.function.
Admitted.

Definition transl_fundef := transf_partial_fundef transl_function.
Module Export RTLgenproof.
Import compcert.common.Linking.

Definition match_prog (p: CminorSel.program) (tp: RTL.program) :=
  match_program (fun cu f tf => transl_fundef f = Errors.OK tf) eq p tp.
Import compcert.backend.RTL.
Definition transf_function (f: function) : function.
Admitted.
Definition transf_fundef (fd: fundef) : fundef.
exact (AST.transf_fundef transf_function fd).
Defined.
Module Export Tailcallproof.

Definition match_prog (p tp: RTL.program) :=
  match_program (fun cu f tf => tf = transf_fundef f) eq p tp.
Definition funenv : Type.
Admitted.
Definition funenv_program (p: program) : funenv.
Admitted.
Definition transf_function (fenv: funenv) (f: function) : Errors.res function.
Admitted.
Definition transf_fundef (fenv: funenv) (fd: fundef) : Errors.res fundef.
exact (AST.transf_partial_fundef (transf_function fenv) fd).
Defined.
Module Export Inliningproof.
Import compcert.common.Errors.

Definition match_prog (prog tprog: program) :=
  match_program (fun cunit f tf => transf_fundef (funenv_program cunit) f = OK tf) eq prog tprog.
Definition transf_function (f: function) : function.
Admitted.
Definition transf_fundef (fd: fundef) : fundef.
exact (AST.transf_fundef transf_function fd).
Defined.
Module Export Renumberproof.

Definition match_prog (p tp: RTL.program) :=
  match_program (fun ctx f tf => tf = transf_fundef f) eq p tp.
Import compcert.lib.Floats.
Import compcert.common.Values.
Import compcert.common.Memory.

Inductive aptr : Type :=
  | Pbot
  | Gl (id: ident) (ofs: ptrofs)
  | Glo (id: ident)
  | Glob
  | Stk (ofs: ptrofs)
  | Stack
  | Nonstack
  | Ptop.

Inductive aval : Type :=
  | Vbot
  | I (n: int)
  | IU (n: int)
  | Uns (p: aptr) (n: Z)
  | Sgn (p: aptr) (n: Z)
  | L (n: int64)
  | F (f: float)
  | FS (f: float32)
  | Num (p: aptr)
  | Ptr (p: aptr)
  | Ifptr (p: aptr).

Inductive acontent : Type :=
 | ACval (chunk: memory_chunk) (av: aval).

Record ablock : Type := ABlock {
  ab_contents: ZTree.t acontent;
  ab_summary: aptr
}.

Definition romem := PTree.t ablock.
Definition romem_for (p: program) : romem.
Admitted.
Definition transf_function (rm: romem) (f: function) : function.
Admitted.
Definition transf_fundef (rm: romem) (fd: fundef) : fundef.
exact (AST.transf_fundef (transf_function rm) fd).
Defined.
Module Export Constpropproof.

Definition match_prog (prog tprog: program) :=
  match_program (fun cu f tf => tf = transf_fundef (romem_for cu) f) eq prog tprog.
Definition transf_function (dm: defmap) (rm: romem) (f: function) : res function.
Admitted.
Definition transf_fundef (dm: defmap) (rm: romem) (f: fundef) : res fundef.
exact (AST.transf_partial_fundef (transf_function dm rm) f).
Defined.
Module Export CSEproof.

Definition match_prog (prog tprog: RTL.program) :=
  match_program (fun cu f tf => transf_fundef (prog_defmap cu) (romem_for cu) f = OK tf) eq prog tprog.
Module Export Deadcodeproof.

Definition match_prog (prog tprog: RTL.program) :=
  match_program (fun cu f tf => transf_fundef (prog_defmap cu) (romem_for cu) f = OK tf) eq prog tprog.
Import Stdlib.FSets.FSetInterface.
Module Export Unusedglobproof.
Definition match_prog (p tp: program) : Prop.
Admitted.
Global Instance TransfSelectionLink : TransfLink match_prog.
Admitted.

Module Export compcert_DOT_backend_DOT_LTL_WRAPPED.
Module Export LTL.

Record function: Type := mkfunction {
  fn_sig: signature;
  fn_stacksize: Z;
  fn_code: code;
  fn_entrypoint: node
}.

Definition fundef := AST.fundef function.

Definition program := AST.program fundef unit.

End LTL.
Module Export compcert.
Module Export backend.
Module Export LTL.
Include compcert_DOT_backend_DOT_LTL_WRAPPED.LTL.
End LTL.
Import compcert.lib.Ordered.
Import compcert.backend.Locations.

Inductive equation_kind : Type := Full | Low | High.

Record equation := Eq {
  ekind: equation_kind;
  ereg: reg;
  eloc: loc
}.

Module IndexedEqKind <: INDEXED_TYPE.
  Definition t := equation_kind.
  Definition index (x: t) :=
    match x with Full => 1%positive | Low => 2%positive | High => 3%positive end.
  Lemma index_inj: forall x y, index x = index y -> x = y.
Admitted.
  Definition eq (x y: t) : {x=y} + {x<>y}.
Admitted.
End IndexedEqKind.

Module OrderedEqKind := OrderedIndexed(IndexedEqKind).

Module OrderedEquation <: OrderedType.
  Definition t := equation.
  Definition eq (x y: t) := x = y.
  Definition lt (x y: t) :=
    Plt (ereg x) (ereg y) \/ (ereg x = ereg y /\
    (OrderedLoc.lt (eloc x) (eloc y) \/ (eloc x = eloc y /\
    OrderedEqKind.lt (ekind x) (ekind y)))).
  Lemma eq_refl : forall x : t, eq x x.
  Proof (@eq_refl t).
  Lemma eq_sym : forall x y : t, eq x y -> eq y x.
  Proof (@eq_sym t).
  Lemma eq_trans : forall x y z : t, eq x y -> eq y z -> eq x z.
  Proof (@eq_trans t).
  Lemma lt_trans : forall x y z : t, lt x y -> lt y z -> lt x z.
Admitted.
  Lemma lt_not_eq : forall x y : t, lt x y -> ~ eq x y.
Admitted.
  Definition compare : forall x y : t, Compare lt eq x y.
Admitted.
  Definition eq_dec (x y: t) : {x = y} + {x <> y}.
Admitted.
End OrderedEquation.

Module OrderedEquation' <: OrderedType.
  Definition t := equation.
  Definition eq (x y: t) := x = y.
  Definition lt (x y: t) :=
    OrderedLoc.lt (eloc x) (eloc y) \/ (eloc x = eloc y /\
    (Plt (ereg x) (ereg y) \/ (ereg x = ereg y /\
    OrderedEqKind.lt (ekind x) (ekind y)))).
  Lemma eq_refl : forall x : t, eq x x.
  Proof (@eq_refl t).
  Lemma eq_sym : forall x y : t, eq x y -> eq y x.
  Proof (@eq_sym t).
  Lemma eq_trans : forall x y z : t, eq x y -> eq y z -> eq x z.
  Proof (@eq_trans t).
  Lemma lt_trans : forall x y z : t, lt x y -> lt y z -> lt x z.
Admitted.
  Lemma lt_not_eq : forall x y : t, lt x y -> ~ eq x y.
Admitted.
  Definition compare : forall x y : t, Compare lt eq x y.
Admitted.
Definition eq_dec: forall (x y: t), {x = y} + {x <> y}.
Admitted.
End OrderedEquation'.
Definition transf_function (f: RTL.function) : res LTL.function.
Admitted.
Definition transf_fundef (fd: RTL.fundef) : res LTL.fundef.
exact (AST.transf_partial_fundef transf_function fd).
Defined.
Module Export Allocproof.

Definition match_prog (p: RTL.program) (tp: LTL.program) :=
  match_program (fun _ f tf => transf_fundef f = OK tf) eq p tp.
Import compcert.common.AST.
Import compcert.backend.LTL.
Definition tunnel_function (f: LTL.function) : LTL.function.
Admitted.
Definition tunnel_fundef (f: LTL.fundef) : LTL.fundef.
exact (transf_fundef tunnel_function f).
Defined.
Module Export Tunnelingproof.

Definition match_prog (p tp: program) :=
  match_program (fun ctx f tf => tf = tunnel_fundef f) eq p tp.
Module Export Linear.

Definition label := positive.

Record function: Type := mkfunction {
  fn_sig: signature;
  fn_stacksize: Z;
  fn_code: code
}.

Definition fundef := AST.fundef function.

Definition program := AST.program fundef unit.
Definition transf_function (f: LTL.function) : res Linear.function.
Admitted.
Definition transf_fundef (f: LTL.fundef) : res Linear.fundef.
exact (AST.transf_partial_fundef transf_function f).
Defined.
Module Export Linearizeproof.

Definition match_prog (p: LTL.program) (tp: Linear.program) :=
  match_program (fun ctx f tf => transf_fundef f = OK tf) eq p tp.
Definition transf_function (f: function) : function.
Admitted.
Definition transf_fundef (f: fundef) : fundef.
exact (AST.transf_fundef transf_function f).
Defined.
Module Export CleanupLabelsproof.

Definition match_prog (p tp: Linear.program) :=
  match_program (fun ctx f tf => tf = transf_fundef f) eq p tp.
Definition transf_function (f: function) : res function.
Admitted.
Definition transf_fundef (fd: fundef) : res fundef.
exact (AST.transf_partial_fundef transf_function fd).
Defined.
Module Export Debugvarproof.

Definition match_prog (p tp: program) :=
  match_program (fun _ f tf => transf_fundef f = OK tf) eq p tp.
Module Export Mach.

Record function: Type := mkfunction
  { fn_sig: signature;
    fn_code: code;
    fn_stacksize: Z;
    fn_link_ofs: ptrofs;
    fn_retaddr_ofs: ptrofs }.

Definition fundef := AST.fundef function.

Definition program := AST.program fundef unit.
Definition transf_function (f: Linear.function) : res Mach.function.
Admitted.
Definition transf_fundef (f: Linear.fundef) : res Mach.fundef.
exact (AST.transf_partial_fundef transf_function f).
Defined.
Module Export Stackingproof.

Definition match_prog (p: Linear.program) (tp: Mach.program) :=
  match_program (fun _ f tf => transf_fundef f = OK tf) eq p tp.
Module Export Asm.
Import compcert.common.Events.
Import compcert.common.Globalenvs.
Import compcert.common.Smallstep.

Inductive ireg: Type :=
  | RAX | RBX | RCX | RDX | RSI | RDI | RBP | RSP
  | R8  | R9  | R10 | R11 | R12 | R13 | R14 | R15.

Inductive freg: Type :=
  | XMM0  | XMM1  | XMM2  | XMM3  | XMM4  | XMM5  | XMM6  | XMM7
  | XMM8  | XMM9  | XMM10 | XMM11 | XMM12 | XMM13 | XMM14 | XMM15.

Inductive crbit: Type :=
  | ZF | CF | PF | SF | OF.

Inductive preg: Type :=
  | PC: preg
  | IR: ireg -> preg
  | FR: freg -> preg
  | ST0: preg
  | CR: crbit -> preg
  | RA: preg.

Coercion IR: ireg >-> preg.

Inductive addrmode: Type :=
  | Addrmode (base: option ireg)
             (ofs: option (ireg * Z))
             (const: Z + ident * ptrofs).

Inductive testcond: Type :=
  | Cond_e | Cond_ne
  | Cond_b | Cond_be | Cond_ae | Cond_a
  | Cond_l | Cond_le | Cond_ge | Cond_g
  | Cond_p | Cond_np.

Inductive instruction: Type :=

  | Pmov_rr (rd: ireg) (r1: ireg)
  | Pmovl_ri (rd: ireg) (n: int)
  | Pmovq_ri (rd: ireg) (n: int64)
  | Pmov_rs (rd: ireg) (id: ident)
  | Pmovl_rm (rd: ireg) (a: addrmode)
  | Pmovq_rm (rd: ireg) (a: addrmode)
  | Pmovl_mr (a: addrmode) (rs: ireg)
  | Pmovq_mr (a: addrmode) (rs: ireg)
  | Pmovsd_ff (rd: freg) (r1: freg)
  | Pmovsd_fi (rd: freg) (n: float)
  | Pmovsd_fm (rd: freg) (a: addrmode)
  | Pmovsd_mf (a: addrmode) (r1: freg)
  | Pmovss_fi (rd: freg) (n: float32)
  | Pmovss_fm (rd: freg) (a: addrmode)
  | Pmovss_mf (a: addrmode) (r1: freg)
  | Pfldl_m (a: addrmode)
  | Pfstpl_m (a: addrmode)
  | Pflds_m (a: addrmode)
  | Pfstps_m (a: addrmode)

  | Pmovb_mr (a: addrmode) (rs: ireg)
  | Pmovw_mr (a: addrmode) (rs: ireg)
  | Pmovzb_rr (rd: ireg) (rs: ireg)
  | Pmovzb_rm (rd: ireg) (a: addrmode)
  | Pmovsb_rr (rd: ireg) (rs: ireg)
  | Pmovsb_rm (rd: ireg) (a: addrmode)
  | Pmovzw_rr (rd: ireg) (rs: ireg)
  | Pmovzw_rm (rd: ireg) (a: addrmode)
  | Pmovsw_rr (rd: ireg) (rs: ireg)
  | Pmovsw_rm (rd: ireg) (a: addrmode)
  | Pmovzl_rr (rd: ireg) (rs: ireg)
  | Pmovsl_rr (rd: ireg) (rs: ireg)
  | Pmovls_rr (rd: ireg)
  | Pcvtsd2ss_ff (rd: freg) (r1: freg)
  | Pcvtss2sd_ff (rd: freg) (r1: freg)
  | Pcvttsd2si_rf (rd: ireg) (r1: freg)
  | Pcvtsi2sd_fr (rd: freg) (r1: ireg)
  | Pcvttss2si_rf (rd: ireg) (r1: freg)
  | Pcvtsi2ss_fr (rd: freg) (r1: ireg)
  | Pcvttsd2sl_rf (rd: ireg) (r1: freg)
  | Pcvtsl2sd_fr (rd: freg) (r1: ireg)
  | Pcvttss2sl_rf (rd: ireg) (r1: freg)
  | Pcvtsl2ss_fr (rd: freg) (r1: ireg)

  | Pleal (rd: ireg) (a: addrmode)
  | Pleaq (rd: ireg) (a: addrmode)
  | Pnegl (rd: ireg)
  | Pnegq (rd: ireg)
  | Paddl_ri (rd: ireg) (n: int)
  | Paddq_ri (rd: ireg) (n: int64)
  | Psubl_rr (rd: ireg) (r1: ireg)
  | Psubq_rr (rd: ireg) (r1: ireg)
  | Pimull_rr (rd: ireg) (r1: ireg)
  | Pimulq_rr (rd: ireg) (r1: ireg)
  | Pimull_ri (rd: ireg) (n: int)
  | Pimulq_ri (rd: ireg) (n: int64)
  | Pimull_r (r1: ireg)
  | Pimulq_r (r1: ireg)
  | Pmull_r (r1: ireg)
  | Pmulq_r (r1: ireg)
  | Pcltd
  | Pcqto
  | Pdivl (r1: ireg)
  | Pdivq (r1: ireg)
  | Pidivl (r1: ireg)
  | Pidivq (r1: ireg)
  | Pandl_rr (rd: ireg) (r1: ireg)
  | Pandq_rr (rd: ireg) (r1: ireg)
  | Pandl_ri (rd: ireg) (n: int)
  | Pandq_ri (rd: ireg) (n: int64)
  | Porl_rr (rd: ireg) (r1: ireg)
  | Porq_rr (rd: ireg) (r1: ireg)
  | Porl_ri (rd: ireg) (n: int)
  | Porq_ri (rd: ireg) (n: int64)
  | Pxorl_r (rd: ireg)
  | Pxorq_r (rd: ireg)
  | Pxorl_rr (rd: ireg) (r1: ireg)
  | Pxorq_rr (rd: ireg) (r1: ireg)
  | Pxorl_ri (rd: ireg) (n: int)
  | Pxorq_ri (rd: ireg) (n: int64)
  | Pnotl (rd: ireg)
  | Pnotq (rd: ireg)
  | Psall_rcl (rd: ireg)
  | Psalq_rcl (rd: ireg)
  | Psall_ri (rd: ireg) (n: int)
  | Psalq_ri (rd: ireg) (n: int)
  | Pshrl_rcl (rd: ireg)
  | Pshrq_rcl (rd: ireg)
  | Pshrl_ri (rd: ireg) (n: int)
  | Pshrq_ri (rd: ireg) (n: int)
  | Psarl_rcl (rd: ireg)
  | Psarq_rcl (rd: ireg)
  | Psarl_ri (rd: ireg) (n: int)
  | Psarq_ri (rd: ireg) (n: int)
  | Pshld_ri (rd: ireg) (r1: ireg) (n: int)
  | Prorl_ri (rd: ireg) (n: int)
  | Prorq_ri (rd: ireg) (n: int)
  | Pcmpl_rr (r1 r2: ireg)
  | Pcmpq_rr (r1 r2: ireg)
  | Pcmpl_ri (r1: ireg) (n: int)
  | Pcmpq_ri (r1: ireg) (n: int64)
  | Ptestl_rr (r1 r2: ireg)
  | Ptestq_rr (r1 r2: ireg)
  | Ptestl_ri (r1: ireg) (n: int)
  | Ptestq_ri (r1: ireg) (n: int64)
  | Pcmov (c: testcond) (rd: ireg) (r1: ireg)
  | Psetcc (c: testcond) (rd: ireg)

  | Paddd_ff (rd: freg) (r1: freg)
  | Psubd_ff (rd: freg) (r1: freg)
  | Pmuld_ff (rd: freg) (r1: freg)
  | Pdivd_ff (rd: freg) (r1: freg)
  | Pnegd (rd: freg)
  | Pabsd (rd: freg)
  | Pcomisd_ff (r1 r2: freg)
  | Pxorpd_f (rd: freg)
  | Padds_ff (rd: freg) (r1: freg)
  | Psubs_ff (rd: freg) (r1: freg)
  | Pmuls_ff (rd: freg) (r1: freg)
  | Pdivs_ff (rd: freg) (r1: freg)
  | Pnegs (rd: freg)
  | Pabss (rd: freg)
  | Pcomiss_ff (r1 r2: freg)
  | Pxorps_f (rd: freg)

  | Pjmp_l (l: label)
  | Pjmp_s (symb: ident) (sg: signature)
  | Pjmp_r (r: ireg) (sg: signature)
  | Pjcc (c: testcond)(l: label)
  | Pjcc2 (c1 c2: testcond)(l: label)
  | Pjmptbl (r: ireg) (tbl: list label)
  | Pcall_s (symb: ident) (sg: signature)
  | Pcall_r (r: ireg) (sg: signature)
  | Pret

  | Pmov_rm_a (rd: ireg) (a: addrmode)
  | Pmov_mr_a (a: addrmode) (rs: ireg)
  | Pmovsd_fm_a (rd: freg) (a: addrmode)
  | Pmovsd_mf_a (a: addrmode) (r1: freg)

  | Plabel(l: label)
  | Pallocframe(sz: Z)(ofs_ra ofs_link: ptrofs)
  | Pfreeframe(sz: Z)(ofs_ra ofs_link: ptrofs)
  | Pbuiltin(ef: external_function)(args: list (builtin_arg preg))(res: builtin_res preg)

  | Padcl_ri (rd: ireg) (n: int)
  | Padcl_rr (rd: ireg) (r2: ireg)
  | Paddl_mi (a: addrmode) (n: int)
  | Paddl_rr (rd: ireg) (r2: ireg)
  | Pbsfl (rd: ireg) (r1: ireg)
  | Pbsfq (rd: ireg) (r1: ireg)
  | Pbsrl (rd: ireg) (r1: ireg)
  | Pbsrq (rd: ireg) (r1: ireg)
  | Pbswap64 (rd: ireg)
  | Pbswap32 (rd: ireg)
  | Pbswap16 (rd: ireg)
  | Pcfi_adjust (n: int)
  | Pfmadd132 (rd: freg) (r2: freg) (r3: freg)
  | Pfmadd213 (rd: freg) (r2: freg) (r3: freg)
  | Pfmadd231 (rd: freg) (r2: freg) (r3: freg)
  | Pfmsub132 (rd: freg) (r2: freg) (r3: freg)
  | Pfmsub213 (rd: freg) (r2: freg) (r3: freg)
  | Pfmsub231 (rd: freg) (r2: freg) (r3: freg)
  | Pfnmadd132 (rd: freg) (r2: freg) (r3: freg)
  | Pfnmadd213 (rd: freg) (r2: freg) (r3: freg)
  | Pfnmadd231 (rd: freg) (r2: freg) (r3: freg)
  | Pfnmsub132 (rd: freg) (r2: freg) (r3: freg)
  | Pfnmsub213 (rd: freg) (r2: freg) (r3: freg)
  | Pfnmsub231 (rd: freg) (r2: freg) (r3: freg)
  | Pmaxsd (rd: freg) (r2: freg)
  | Pminsd (rd: freg) (r2: freg)
  | Pmovb_rm (rd: ireg) (a: addrmode)
  | Pmovq_rf (rd: ireg) (r1: freg)
  | Pmovsq_mr  (a: addrmode) (rs: freg)
  | Pmovsq_rm (rd: freg) (a: addrmode)
  | Pmovsb
  | Pmovsw
  | Pmovw_rm (rd: ireg) (ad: addrmode)
  | Pnop
  | Prep_movsl
  | Psbbl_rr (rd: ireg) (r2: ireg)
  | Psqrtsd (rd: freg) (r1: freg)
  | Psubl_ri (rd: ireg) (n: int)
  | Psubq_ri (rd: ireg) (n: int64).
Record function : Type := mkfunction { fn_sig: signature; fn_code: code }.
Definition fundef := AST.fundef function.
Definition program := AST.program fundef unit.

Lemma preg_eq: forall (x y: preg), {x=y} + {x<>y}.
Admitted.

Module PregEq.
  Definition t := preg.
  Definition eq := preg_eq.
End PregEq.

Module Pregmap := EMap(PregEq).

Definition regset := Pregmap.t val.
Definition genv := Genv.t fundef unit.
Notation "a # b" := (a b) (at level 1, only parsing) : asm.
Notation "a # b <- c" := (Pregmap.set b c a) (at level 1, b at next level) : asm.

Open Scope asm.
Fixpoint undef_regs (l: list preg) (rs: regset) : regset.
Admitted.
Definition set_pair (p: rpair preg) (v: val) (rs: regset) : regset.
Admitted.
Fixpoint set_res (res: builtin_res preg) (v: val) (rs: regset) : regset.
Admitted.

Section RELSEM.
Fixpoint find_instr (pos: Z) (c: code) {struct c} : option instruction.
Admitted.

Variable ge: genv.

Inductive outcome: Type :=
  | Next: regset -> mem -> outcome
  | Stuck: outcome.
Definition nextinstr_nf (rs: regset) : regset.
Admitted.
Definition exec_instr (f: function) (i: instruction) (rs: regset) (m: mem) : outcome.
Admitted.
Definition preg_of (r: mreg) : preg.
Admitted.
Definition undef_caller_save_regs (rs: regset) : regset.
Admitted.
Definition extcall_arguments
    (rs: regset) (m: mem) (sg: signature) (args: list val) : Prop.
Admitted.
Definition loc_external_result (sg: signature) : rpair preg.
Admitted.

Inductive state: Type :=
  | State: regset -> mem -> state.

Inductive step: state -> trace -> state -> Prop :=
  | exec_step_internal:
      forall b ofs f i rs m rs' m',
      rs PC = Vptr b ofs ->
      Genv.find_funct_ptr ge b = Some (Internal f) ->
      find_instr (Ptrofs.unsigned ofs) f.(fn_code) = Some i ->
      exec_instr f i rs m = Next rs' m' ->
      step (State rs m) E0 (State rs' m')
  | exec_step_builtin:
      forall b ofs f ef args res rs m vargs t vres rs' m',
      rs PC = Vptr b ofs ->
      Genv.find_funct_ptr ge b = Some (Internal f) ->
      find_instr (Ptrofs.unsigned ofs) f.(fn_code) = Some (Pbuiltin ef args res) ->
      eval_builtin_args ge rs (rs RSP) m args vargs ->
      external_call ef ge vargs m t vres m' ->
      rs' = nextinstr_nf
             (set_res res vres
               (undef_regs (map preg_of (destroyed_by_builtin ef)) rs)) ->
      step (State rs m) t (State rs' m')
  | exec_step_external:
      forall b ef args res rs m t rs' m',
      rs PC = Vptr b Ptrofs.zero ->
      Genv.find_funct_ptr ge b = Some (External ef) ->
      extcall_arguments rs m (ef_sig ef) args ->
      external_call ef ge args m t res m' ->
      rs' = (set_pair (loc_external_result (ef_sig ef)) res (undef_caller_save_regs rs)) #PC <- (rs RA) ->
      step (State rs m) t (State rs' m').

End RELSEM.

Inductive initial_state (p: program): state -> Prop :=
  | initial_state_intro: forall m0,
      Genv.init_mem p = Some m0 ->
      let ge := Genv.globalenv p in
      let rs0 :=
        (Pregmap.init Vundef)
        # PC <- (Genv.symbol_address ge p.(prog_main) Ptrofs.zero)
        # RA <- Vnullptr
        # RSP <- Vnullptr in
      initial_state p (State rs0 m0).

Inductive final_state: state -> int -> Prop :=
  | final_state_intro: forall rs m r,
      rs#PC = Vnullptr ->
      rs#RAX = Vint r ->
      final_state (State rs m) r.

Definition semantics (p: program) :=
  Semantics step (initial_state p) final_state (Genv.globalenv p).
Definition transf_function (f: Mach.function) : res Asm.function.
Admitted.
Definition transf_fundef (f: Mach.fundef) : res Asm.fundef.
exact (transf_partial_fundef transf_function f).
Defined.
Module Export Asmgenproof.

Definition match_prog (p: Mach.program) (tp: Asm.program) :=
  match_program (fun _ f tf => transf_fundef f = OK tf) eq p tp.

End Asmgenproof.
Definition match_if {A: Type} (flag: unit -> bool) (R: A -> A -> Prop): A -> A -> Prop.
Admitted.

Global Instance TransfIfLink {A: Type} {LA: Linker A}
                      (flag: unit -> bool) (transf: A -> A -> Prop) (TL: TransfLink transf)
                      : TransfLink (match_if flag transf).
Admitted.

Local Open Scope linking_scope.

Definition CompCert's_passes :=
      mkpass SimplExprproof.match_prog
  ::: mkpass SimplLocalsproof.match_prog
  ::: mkpass Cshmgenproof.match_prog
  ::: mkpass Cminorgenproof.match_prog
  ::: mkpass Selectionproof.match_prog
  ::: mkpass RTLgenproof.match_prog
  ::: mkpass (match_if Compopts.optim_tailcalls Tailcallproof.match_prog)
  ::: mkpass Inliningproof.match_prog
  ::: mkpass Renumberproof.match_prog
  ::: mkpass (match_if Compopts.optim_constprop Constpropproof.match_prog)
  ::: mkpass (match_if Compopts.optim_constprop Renumberproof.match_prog)
  ::: mkpass (match_if Compopts.optim_CSE CSEproof.match_prog)
  ::: mkpass (match_if Compopts.optim_redundancy Deadcodeproof.match_prog)
  ::: mkpass Unusedglobproof.match_prog
  ::: mkpass Allocproof.match_prog
  ::: mkpass Tunnelingproof.match_prog
  ::: mkpass Linearizeproof.match_prog
  ::: mkpass CleanupLabelsproof.match_prog
  ::: mkpass (match_if Compopts.debug Debugvarproof.match_prog)
  ::: mkpass Stackingproof.match_prog
  ::: mkpass Asmgenproof.match_prog
  ::: pass_nil _.
Definition match_prog: Csyntax.program -> Asm.program -> Prop.
exact (pass_match (compose_passes CompCert's_passes)).
Defined.

Theorem cstrategy_semantic_preservation:
  forall p tp,
  match_prog p tp ->
  forward_simulation (Cstrategy.semantics p) (Asm.semantics tp)
  /\ backward_simulation (atomic (Cstrategy.semantics p)) (Asm.semantics tp).
Proof.
  intros p tp M.
unfold match_prog, pass_match in M; simpl in M.
Ltac DestructM :=
  match goal with
    [ H: exists p, _ /\ _ |- _ ] =>
      let p := fresh "p" in let M := fresh "M" in let MM := fresh "MM" in
      destruct H as (p & M & MM); clear H
  end.
  repeat DestructM.
subst tp.
