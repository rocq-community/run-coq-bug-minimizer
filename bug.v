
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "+implicit-core-hint-db,+implicits-in-term,+non-reversible-notation,+deprecated-intros-until-0,+deprecated-focus,+unused-intro-pattern,+variable-collision,+unexpected-implicit-declaration,+omega-is-deprecated,+deprecated-instantiate-syntax,+non-recursive,+undeclared-scope,+deprecated-hint-rewrite-without-locality,+deprecated-hint-without-locality,+deprecated-instance-without-locality,+deprecated-typeclasses-transparency-without-locality,+fragile-hint-constr,-deprecated-since-9.0,-deprecated-since-8.20,-deprecated-from-Coq" "-w" "-notation-overridden,-native-compiler-disabled,-ambiguous-paths,-masking-absolute-name" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/fiat_crypto/src" "Crypto" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Coqprime" "Coqprime" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Kami" "Kami" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Rewriter" "Rewriter" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Rupicola" "Rupicola" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/bedrock2" "bedrock2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/bedrock2Examples" "bedrock2Examples" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/compiler" "compiler" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/coqutil" "coqutil" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/riscv" "riscv" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 577 lines to 117 lines, then from 131 lines to 869 lines, then from 877 lines to 453 lines, then from 468 lines to 1367 lines, then from 1372 lines to 533 lines, then from 548 lines to 1295 lines, then from 1303 lines to 616 lines, then from 631 lines to 1279 lines, then from 1286 lines to 653 lines, then from 668 lines to 953 lines, then from 961 lines to 662 lines, then from 677 lines to 1947 lines, then from 1949 lines to 996 lines, then from 1011 lines to 1284 lines, then from 1292 lines to 1026 lines, then from 1041 lines to 1079 lines, then from 1087 lines to 1042 lines, then from 1057 lines to 1205 lines, then from 1211 lines to 1085 lines, then from 1100 lines to 1221 lines, then from 1229 lines to 1123 lines, then from 1138 lines to 1177 lines, then from 1185 lines to 1151 lines, then from 1166 lines to 1480 lines, then from 1488 lines to 1182 lines, then from 1197 lines to 1464 lines, then from 1472 lines to 1195 lines, then from 1216 lines to 1089 lines, then from 1103 lines to 1492 lines, then from 1500 lines to 1101 lines, then from 1116 lines to 1306 lines, then from 1314 lines to 1114 lines, then from 1129 lines to 1859 lines, then from 1867 lines to 1133 lines, then from 1148 lines to 1714 lines, then from 1722 lines to 1326 lines, then from 1341 lines to 1990 lines, then from 1998 lines to 1486 lines, then from 1501 lines to 1869 lines, then from 1877 lines to 1526 lines, then from 1541 lines to 1966 lines, then from 1974 lines to 1564 lines, then from 1579 lines to 2023 lines, then from 2031 lines to 1594 lines, then from 1609 lines to 1995 lines, then from 2003 lines to 1621 lines, then from 1636 lines to 1925 lines, then from 1933 lines to 1639 lines, then from 1654 lines to 2735 lines, then from 2740 lines to 1705 lines, then from 1720 lines to 2134 lines, then from 2142 lines to 1716 lines, then from 1731 lines to 2049 lines, then from 2057 lines to 1876 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Modules that could not be inlined: Crypto.Arithmetic.WordByWordMontgomery
   Expected coqc runtime on this file: 1.417 sec
   Expected coqc peak memory usage on this file: 1316348.0 kb *)










Require Coq.Init.Ltac.
Module Export AdmitTactic.
Module Import LocalFalse.
Inductive False : Prop := .
End LocalFalse.
Axiom proof_admitted : False.
Import Coq.Init.Ltac.
Tactic Notation "admit" := abstract case proof_admitted.
End AdmitTactic.

Require bedrock2.Markers.
Require coqutil.Tactics.eabstract.
Require coqutil.Tactics.letexists.
Require coqutil.Tactics.ident_of_string.
Require coqutil.Tactics.reference_to_string.
Require bedrock2.NotationsCustomEntry.
Require coqutil.dlet.
Require coqutil.Word.Bitwidth.
Require coqutil.Map.SortedListString.
Require Corelib.BinNums.IntDef.
Require Corelib.BinNums.NatDef.
Require Corelib.BinNums.PosDef.
Require Corelib.Classes.Morphisms.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Classes.RelationClasses.
Require Corelib.Init.Byte.
Require Corelib.Init.Sumbool.
Require Corelib.Lists.ListDef.
Require Corelib.Numbers.BinNums.
Require Corelib.Program.Basics.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.Setoids.Setoid.
Require Stdlib.Classes.DecidableClass.
Require Stdlib.Logic.Decidable.
Require Stdlib.Logic.EqdepFacts.
Require Stdlib.Logic.HLevelsBase.
Require Stdlib.micromega.ZifyClasses.
Require Stdlib.setoid_ring.Algebra_syntax.
Require Stdlib.BinNums.IntDef.
Require Stdlib.BinNums.NatDef.
Require Stdlib.BinNums.PosDef.
Require Stdlib.Classes.Morphisms.
Require Stdlib.Classes.Morphisms_Prop.
Require Stdlib.Classes.RelationClasses.
Require Stdlib.Init.Byte.
Require Stdlib.Init.Sumbool.
Require Stdlib.Lists.ListDef.
Require Stdlib.Logic.Eqdep_dec.
Require Stdlib.Numbers.BinNums.
Require Stdlib.Program.Basics.
Require Stdlib.Relations.Relation_Definitions.
Require Stdlib.Setoids.Setoid.
Require Stdlib.Bool.Bool.
Require Stdlib.Relations.Relation_Operators.
Require Stdlib.Relations.Operators_Properties.
Require Stdlib.PArith.BinPosDef.
Require Stdlib.Relations.Relations.
Require Stdlib.Numbers.NumPrelude.
Require Stdlib.Structures.Equalities.
Require Stdlib.Structures.Orders.
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
Require Stdlib.micromega.Refl.
Require Stdlib.micromega.Tauto.
Require Stdlib.Lists.ListTactics.
Require Stdlib.PArith.BinPos.
Require Stdlib.Arith.Arith_base.
Require Stdlib.PArith.POrderedType.
Require Stdlib.PArith.Pnat.
Require Stdlib.NArith.BinNatDef.
Require Stdlib.PArith.PArith.
Require Stdlib.NArith.BinNat.
Require Stdlib.setoid_ring.BinList.
Require Stdlib.setoid_ring.Ring_theory.
Require Stdlib.NArith.Nnat.
Require Stdlib.ZArith.BinIntDef.
Import Coq.ZArith.ZArith.

Local Open Scope Z_scope.

Notation byte := (Coq.Init.Byte.byte: Type).


Module Export byte.
Definition unsigned(b: byte): Z. exact (Z.of_N (Byte.to_N b)). Defined.
Definition wrap(z: Z): Z. exact (z mod 2 ^ 8). Defined.

  Lemma Byte_of_N_of_mod_not_None: forall z, Byte.of_N (Z.to_N (wrap z)) <> None.
Admitted.
Definition of_Z(z: Z): byte. exact (let r := Byte.of_N (Z.to_N (wrap z)) in
    match r as o return (r = o -> byte) with
    | Some b => fun _ => b
    | None => fun E => False_rect byte (Byte_of_N_of_mod_not_None z E)
    end eq_refl). Defined.
Module Export coqutil_DOT_Byte.
Module Export coqutil.
Module Export Byte.
End Byte.

End coqutil.

End coqutil_DOT_Byte.
Module Export LittleEndianList.
Import Coq.ZArith.ZArith.
Import coqutil.Byte.
Fixpoint le_combine(l: list byte): Z.
Admitted.
Fixpoint le_split (n : nat) (w : Z) : list byte.
Admitted.
Module Export coqutil.
Module Export Word.
Module Export LittleEndianList.
End LittleEndianList.
Module Export Properties.
Import Stdlib.ZArith.ZArith.
Import Coq.ZArith.Znumtheory.
Import coqutil.Word.Interface.
Import word.

Module Export word.
  Section WithWord.
    Context {width} {word : word width} {word_ok : word.ok word}.
    Local Hint Mode word.word - : typeclass_instances.

    Lemma unsigned_of_Z_0 : word.unsigned (word.of_Z 0) = 0.
Admitted.

    Lemma ring_theory : Ring_theory.ring_theory (of_Z 0) (of_Z 1) add mul sub opp Logic.eq.
Admitted.
    Lemma ring_morph_add : forall x y : Z, of_Z (x + y) = add (of_Z x) (of_Z y).
Admitted.
    Lemma ring_morph_sub : forall x y : Z, of_Z (x - y) = sub (of_Z x) (of_Z y).
Admitted.
    Lemma ring_morph_mul : forall x y : Z, of_Z (x * y) = mul (of_Z x) (of_Z y).
Admitted.
    Lemma ring_morph_opp : forall x : Z, of_Z (- x) = opp (of_Z x).
Admitted.
    Lemma ring_morph :
      Ring_theory.ring_morph (of_Z 0) (of_Z 1) add   mul   sub   opp   Logic.eq
                             0        1        Z.add Z.mul Z.sub Z.opp Zbool.Zeq_bool of_Z.
Admitted.

  End WithWord.

  Section WordConvenienceKitchenSink.
  End WordConvenienceKitchenSink.
End word.

Ltac word_cst w :=
  match w with
  | word.of_Z ?x => let b := isZcst x in
                    match b with
                    | true => x
                    | _ => constr:(NotConstant)
                    end
  | _ => constr:(NotConstant)
  end.

#[global] Hint Rewrite
  @word.ring_morph_add
  @word.ring_morph_sub
  @word.ring_morph_mul
  @word.ring_morph_opp
  using typeclasses eauto
  : rew_word_morphism.

Section RingDemoAndTest.

End RingDemoAndTest.
Module Export coqutil_DOT_Word_DOT_Properties.
Module Export coqutil.
Module Export Word.
Module Export Properties.
End Properties.

End Word.

End coqutil.

End coqutil_DOT_Word_DOT_Properties.
Module Export MapKeys.
Import coqutil.Map.Interface.
Import Interface.map.

Module Export map.
  Section MapKeys.
    Context {key value} {map : map key value} {ok : map.ok map}.
    Context {key'} {map' : Interface.map.map key' value} {ok' : map.ok map'}.

    Definition map_keys f (m:map) : map' := fold (fun m k v => put m (f k) v) empty m.
  End MapKeys.
End map.

End MapKeys.
Module Export coqutil_DOT_Map_DOT_MapKeys.
Module Export MapKeys.
End MapKeys.

End coqutil_DOT_Map_DOT_MapKeys.
Module Export OfFunc.
Import coqutil.Map.Interface.
Import Interface.map.

Module Export map.
  Section OfFunc.
    Context {key value} {map : map key value} {ok : map.ok map}.

    Context (f : key -> option value).
Fixpoint of_func (support : list key) : map.
exact (match support with
      | nil => empty
      | cons k support => update (of_func support) k (f k)
      end).
Defined.
  End OfFunc.
End map.

End OfFunc.
Module Export coqutil.
Module Export Map.
Module Export OfFunc.
End OfFunc.

End Map.

End coqutil.
Import Stdlib.ZArith.ZArith.
Import Coq.Lists.List.
Import coqutil.Map.Interface.
Import coqutil.Map.OfFunc.
Import Interface.map.
Import MapKeys.map.
Import coqutil.Word.Interface.

Module Export map.
  Section __.
    Context {width} {word : word width} {word_ok : word.ok word}.
    Context {value : Type} {map : map word value} {ok : map.ok map}.
Definition of_list_word (xs : list value) : map.
exact (map.of_func
      (fun w => nth_error xs (Z.to_nat (word.unsigned w)))
      (List.map (fun n => word.of_Z (Z.of_nat n)) (seq 0 (length xs)))).
Defined.
Definition of_list_word_at (a : word) (xs : list value) : map.
exact (map_keys (word.add a) (of_list_word xs)).
Defined.
  End __.
Module Export coqutil.
Module Export Map.
Module Export OfListWord.
End OfListWord.

End Map.

End coqutil.
Module Export Memory.
Import Stdlib.ZArith.ZArith.
Import coqutil.Map.Interface.
Import coqutil.Word.Interface.
Import coqutil.Byte.
Import coqutil.Map.OfListWord.

Notation "xs $@ a" := (map.of_list_word_at a xs) (at level 10, format "xs $@ a").

Open Scope Z_scope.
Definition bytes_per_word(width: Z): Z.
Admitted.

Section Memory.
  Context {width: Z} {word: word width} {mem: map.map word byte}.
Definition load_bytes (m : mem) (a : word) (n : nat) : option (list byte).
Admitted.
Definition store_bytes (m : mem) (a : word) (bs : list byte) : option mem.
Admitted.

  Definition load_Z (m : mem) (a : word) n: option Z :=
    match load_bytes m a n with
    | Some bs => Some (LittleEndianList.le_combine bs)
    | None => None
    end.

  Definition store_Z (m : mem) (a : word) n (v : Z) : option mem :=
    store_bytes m a (LittleEndianList.le_split n v).
End Memory.
Module Export coqutil.
Module Export Map.
Module Export Memory.
End Memory.

End Map.

End coqutil.

Module Export bedrock2_DOT_Memory_WRAPPED.
Module Export Memory.
Export coqutil.Map.OfListWord.
Export coqutil.Map.Memory.
Import Stdlib.ZArith.ZArith.
Import coqutil.Map.Interface.
Import coqutil.Word.Interface.
Import bedrock2.Syntax.
Import coqutil.Byte.

Definition bytes_per {width} sz :=
  match sz with
    | access_size.one => 1 | access_size.two => 2 | access_size.four => 4
    | access_size.word => Z.to_nat (bytes_per_word width)
  end%nat.

Definition load {width} {word : word width} {mem : map.map word byte}
  sz (m : mem) (a: word): option word :=
  match load_Z m a (bytes_per (width:=width) sz) with
  | Some z => Some (word.of_Z z)
  | None => None
  end.

Definition store {width} {word : word width} {mem : map.map word byte}
  sz (m : mem) (a v : word) : option mem :=
  store_Z m a (bytes_per (width:=width) sz) (word.unsigned v).

Definition anybytes {width} {word : word width} {mem : map.map word byte}
  (a : word) (n : Z) (m : mem) :=
  exists bs: list byte, map.of_list_word_at a bs = m /\
  Z.of_nat (length bs) = n /\ Z.of_nat (length bs) <= 2 ^ width.

Section Deprecated.
End Deprecated.

End Memory.
Module Export bedrock2.
Module Export Memory.
Include bedrock2_DOT_Memory_WRAPPED.Memory.
End Memory.
Module Export Semantics.
Import coqutil.Byte.
Import bedrock2.Syntax.
Import coqutil.Map.Interface.
Import Stdlib.ZArith.BinIntDef.
Import coqutil.Word.Bitwidth.
Import Coq.Lists.List.

Definition LogItem{width: Z}{BW: Bitwidth width}{word: word.word width}{mem: map.map word byte} :=
  ((mem * String.string * list word) * (mem * list word))%type.

Definition trace{width: Z}{BW: Bitwidth width}{word: word.word width}{mem: map.map word byte} :=
  list LogItem.

Definition ExtSpec{width: Z}{BW: Bitwidth width}{word: word.word width}{mem: map.map word byte} :=

  trace -> mem -> String.string -> list word ->

  (mem -> list word -> Prop) ->

  Prop.

Existing Class ExtSpec.

Module Export ext_spec.
End ext_spec.

Section operators.
  Context {width : Z} {word : Word.Interface.word width}.
Definition interp_op1 (op : op1) : word -> word.
Admitted.
Definition interp_binop (bop : bopname) : word -> word -> word.
Admitted.
End operators.
Definition env: map.map String.string Syntax.func.
Admitted.

Section semantics.
  Context {width: Z} {BW: Bitwidth width} {word: word.word width} {mem: map.map word byte}.
  Context {locals: map.map String.string word}.
    Context (m : mem) (l : locals).

    Local Notation "x <- a ; f" := (match a with Some x => f | None => None end)
      (right associativity, at level 70).
Fixpoint eval_expr (e : expr) : option word.
Admitted.

    Fixpoint eval_call_args (arges : list expr) :=
      match arges with
      | e :: tl =>
        v <- eval_expr e;
        args <- eval_call_args tl;
        Some (v :: args)
      | _ => Some nil
      end.
End semantics.

Module exec.
Section WithParams.
  Context {width: Z} {BW: Bitwidth width} {word: word.word width} {mem: map.map word byte}.
  Context {locals: map.map String.string word}.
  Context {ext_spec: ExtSpec}.
  Context (e: env).

  Inductive exec: cmd -> trace -> mem -> locals ->
                  (trace -> mem -> locals -> Prop) -> Prop :=
  | skip: forall t m l post,
      post t m l ->
      exec cmd.skip t m l post
  | set: forall x e t m l post v,
      eval_expr m l e = Some v ->
      post t m (map.put l x v) ->
      exec (cmd.set x e) t m l post
  | unset: forall x t m l post,
      post t m (map.remove l x) ->
      exec (cmd.unset x) t m l post
  | store: forall sz ea ev t m l post a v m',
      eval_expr m l ea = Some a ->
      eval_expr m l ev = Some v ->
      store sz m a v = Some m' ->
      post t m' l ->
      exec (cmd.store sz ea ev) t m l post
  | stackalloc: forall x n body t mSmall l post,
      Z.modulo n (bytes_per_word width) = 0 ->
      (forall a mStack mCombined,
        anybytes a n mStack ->
        map.split mCombined mSmall mStack ->
        exec body t mCombined (map.put l x a)
          (fun t' mCombined' l' =>
            exists mSmall' mStack',
              anybytes a n mStack' /\
              map.split mCombined' mSmall' mStack' /\
              post t' mSmall' l')) ->
      exec (cmd.stackalloc x n body) t mSmall l post
  | if_true: forall t m l e c1 c2 post v,
      eval_expr m l e = Some v ->
      word.unsigned v <> 0 ->
      exec c1 t m l post ->
      exec (cmd.cond e c1 c2) t m l post
  | if_false: forall e c1 c2 t m l post v,
      eval_expr m l e = Some v ->
      word.unsigned v = 0 ->
      exec c2 t m l post ->
      exec (cmd.cond e c1 c2) t m l post
  | seq: forall c1 c2 t m l post mid,
      exec c1 t m l mid ->
      (forall t' m' l', mid t' m' l' -> exec c2 t' m' l' post) ->
      exec (cmd.seq c1 c2) t m l post
  | while_false: forall e c t m l post v,
      eval_expr m l e = Some v ->
      word.unsigned v = 0 ->
      post t m l ->
      exec (cmd.while e c) t m l post
  | while_true: forall e c t m l post v mid,
      eval_expr m l e = Some v ->
      word.unsigned v <> 0 ->
      exec c t m l mid ->
      (forall t' m' l', mid t' m' l' -> exec (cmd.while e c) t' m' l' post) ->
      exec (cmd.while e c) t m l post
  | call: forall binds fname arges t m l post params rets fbody args lf mid,
      map.get e fname = Some (params, rets, fbody) ->
      eval_call_args m l arges = Some args ->
      map.of_list_zip params args = Some lf ->
      exec fbody t m lf mid ->
      (forall t' m' st1, mid t' m' st1 ->
          exists retvs, map.getmany_of_list st1 rets = Some retvs /\
          exists l', map.putmany_of_list_zip binds retvs l = Some l' /\
          post t' m' l') ->
      exec (cmd.call binds fname arges) t m l post
  | interact: forall binds action arges args t m l post mKeep mGive mid,
      map.split m mKeep mGive ->
      eval_call_args m l arges = Some args ->
      ext_spec t mGive action args mid ->
      (forall mReceive resvals, mid mReceive resvals ->
          exists l', map.putmany_of_list_zip binds resvals l = Some l' /\
          forall m', map.split m' mKeep mReceive ->
          post (cons ((mGive, action, args), (mReceive, resvals)) t) m' l') ->
      exec (cmd.interact binds action arges) t m l post.

  End WithParams.
End exec.
Notation exec := exec.exec.

Section WithParams.
  Context {width: Z} {BW: Bitwidth width} {word: word.word width} {mem: map.map word byte}.
  Context {locals: map.map String.string word}.
  Context {ext_spec: ExtSpec}.

  Definition call e fname t m args post :=
    exists argnames retnames body,
      map.get e fname = Some (argnames, retnames, body) /\
      exists l, map.of_list_zip argnames args = Some l /\
        exec e body t m l (fun t' m' l' => exists rets,
          map.getmany_of_list l' retnames = Some rets /\ post t' m' rets).
End WithParams.
Module Export bedrock2.
Module Export Semantics.
End Semantics.

Module Export bedrock2_DOT_WeakestPrecondition_WRAPPED.
Module Export WeakestPrecondition.
Import coqutil.Map.Interface.
Import Coq.ZArith.BinIntDef.
Import coqutil.Word.Bitwidth.
Import coqutil.dlet.
Import bedrock2.Syntax.

Section WeakestPrecondition.
  Context {width: Z} {BW: Bitwidth width} {word: word.word width} {mem: map.map word Byte.byte}.
  Context {locals: map.map String.string word}.
  Context {ext_spec: ExtSpec}.
  Implicit Types (t : trace) (m : mem) (l : locals).

  Definition literal v (post : word -> Prop) : Prop :=
    dlet! v := word.of_Z v in post v.
Definition get (l : locals) (x : String.string) (post : word -> Prop) : Prop.
exact (exists v, map.get l x = Some v /\ post v).
Defined.
  Definition load s m a (post : _ -> Prop) : Prop :=
    exists v, load s m a = Some v /\ post v.
  Definition store sz m a v post :=
    exists m', store sz m a v = Some m' /\ post m'.

  Section WithMemAndLocals.
    Context (m : mem) (l : locals).
    Definition expr_body rec (e : Syntax.expr) (post : word -> Prop) : Prop :=
      match e with
      | expr.literal v =>
        literal v post
      | expr.var x =>
        get l x post
      | expr.op1 op e =>
        rec e (fun v =>
        post (interp_op1 op v))
      | expr.op op e1 e2 =>
        rec e1 (fun v1 =>
        rec e2 (fun v2 =>
        post (interp_binop op v1 v2)))
      | expr.load s e =>
        rec e (fun a =>
        load s m a post)
      | expr.inlinetable s t e =>
        rec e (fun a =>
        load s (map.of_list_word t) a post)
      | expr.ite c e1 e2 =>
        rec c (fun b => rec (if word.eqb b (word.of_Z 0) then e2 else e1) post)
    end.
    Fixpoint expr e := expr_body expr e.
  End WithMemAndLocals.

  Section WithF.
    Context {A B} (f: A -> (B -> Prop) -> Prop).
    Definition list_map_body rec (xs : list A) (post : list B -> Prop) : Prop :=
      match xs with
      | nil => post nil
      | cons x xs' =>
        f x (fun y =>
        rec xs' (fun ys' =>
        post (cons y ys')))
      end.
    Fixpoint list_map xs := list_map_body list_map xs.
  End WithF.

  Section WithFunctions.
    Context (e: env).
    Definition dexpr m l e v := expr m l e (eq v).
    Definition dexprs m l es vs := list_map (expr m l) es (eq vs).

    Definition cmd_body (rec:_->_->_->_->_->Prop) (c : cmd) (t : trace) (m : mem) (l : locals)
             (post : trace -> mem -> locals -> Prop) : Prop :=

      match c with
      | cmd.skip => post t m l
      | cmd.set x ev =>
        exists v, dexpr m l ev v /\
        dlet! l := map.put l x v in
        post t m l
      | cmd.unset x =>
        dlet! l := map.remove l x in
        post t m l
      | cmd.store sz ea ev =>
        exists a, dexpr m l ea a /\
        exists v, dexpr m l ev v /\
        store sz m a v (fun m =>
        post t m l)
      | cmd.stackalloc x n c =>
        Z.modulo n (bytes_per_word width) = 0 /\
        forall a mStack mCombined,
          anybytes a n mStack -> map.split mCombined m mStack ->
          dlet! l := map.put l x a in
          rec c t mCombined l (fun t' mCombined' l' =>
          exists m' mStack',
          anybytes a n mStack' /\ map.split mCombined' m' mStack' /\
          post t' m' l')
      | cmd.cond br ct cf =>
        exists v, dexpr m l br v /\
        (word.unsigned v <> 0%Z -> rec ct t m l post) /\
        (word.unsigned v = 0%Z -> rec cf t m l post)
      | cmd.seq c1 c2 =>
        rec c1 t m l (fun t m l => rec c2 t m l post)
      | cmd.while _ _ => Semantics.exec e c t m l post
      | cmd.call binds fname arges =>
        exists args, dexprs m l arges args /\
        Semantics.call e fname t m args (fun t m rets =>
          exists l', map.putmany_of_list_zip binds rets l = Some l' /\
          post t m l')
      | cmd.interact binds action arges =>
        exists args, dexprs m l arges args /\
        exists mKeep mGive, map.split m mKeep mGive /\
        ext_spec t mGive action args (fun mReceive rets =>
          exists l', map.putmany_of_list_zip binds rets l = Some l' /\
          forall m', map.split m' mKeep mReceive ->
          post (cons ((mGive, action, args), (mReceive, rets)) t) m' l')
      end.
    Fixpoint cmd c := cmd_body cmd c.
  End WithFunctions.

  Definition func call '(innames, outnames, c) (t : trace) (m : mem) (args : list word) (post : trace -> mem -> list word -> Prop) :=
      exists l, map.of_list_zip innames args = Some l /\
      cmd call c t m l (fun t m l =>
        list_map (get l) outnames (fun rets =>
        post t m rets)).
End WeakestPrecondition.
Notation call := Semantics.call (only parsing).

Ltac unfold1_cmd e :=
  lazymatch e with
    @cmd ?width ?BW ?word ?mem ?locals ?ext_spec ?CA ?c ?t ?m ?l ?post =>
    let c := eval hnf in c in
    constr:(@cmd_body width BW word mem locals ext_spec CA
                      (@cmd width BW word mem locals ext_spec CA) c t m l post)
  end.
Ltac unfold1_cmd_goal :=
  let G := lazymatch goal with |- ?G => G end in
  let G := unfold1_cmd G in
  change G.

Ltac unfold1_expr e :=
  lazymatch e with
    @expr ?width ?word ?mem ?locals ?m ?l ?arg ?post =>
    let arg := eval hnf in arg in
    constr:(@expr_body width word mem locals m l (@expr width word mem locals m l) arg post)
  end.
Ltac unfold1_expr_goal :=
  let G := lazymatch goal with |- ?G => G end in
  let G := unfold1_expr G in
  change G.

Ltac unfold1_list_map e :=
  lazymatch e with
    @list_map ?A ?B ?P ?arg ?post =>
    let arg := eval hnf in arg in
    constr:(@list_map_body A B P (@list_map A B P) arg post)
  end.
Ltac unfold1_list_map_goal :=
  let G := lazymatch goal with |- ?G => G end in
  let G := unfold1_list_map G in
  change G.

Notation "'fnspec!' name a0 .. an '/' g0 .. gn ',' '{' 'requires' tr mem := pre ';' 'ensures' tr' mem' ':=' post '}'" :=
  (fun functions =>
     (forall a0,
        .. (forall an,
              (forall g0,
                  .. (forall gn,
                         (forall tr mem,
                             pre ->
                             WeakestPrecondition.call
                               functions name tr mem (cons a0 .. (cons an nil) ..)
                               (fun tr' mem' rets =>
                                  rets = nil /\ post))) ..)) ..))
    (at level 200,
     name at level 0,
     a0 binder, an binder,
     g0 binder, gn binder,
     tr name, tr' name, mem name, mem' name,
     pre at level 200,
     post at level 200).

End WeakestPrecondition.
Module Export bedrock2_DOT_WeakestPrecondition.
Module Export bedrock2.
Module Export WeakestPrecondition.
Include bedrock2_DOT_WeakestPrecondition_WRAPPED.WeakestPrecondition.
End WeakestPrecondition.

End bedrock2.

End bedrock2_DOT_WeakestPrecondition.
Import coqutil.Map.Interface.
Import coqutil.Word.Bitwidth.

Section WeakestPrecondition.
  Context {width} {BW: Bitwidth width} {word: word.word width} {mem: map.map word Byte.byte}.
  Context {locals: map.map String.string word}.
  Context {ext_spec: Semantics.ExtSpec}.

  Lemma start_func: forall e fname fimpl t m args post,
      map.get e fname = Some fimpl ->
      WeakestPrecondition.func e fimpl t m args post ->
      WeakestPrecondition.call e fname t m args post.
Admitted.
End WeakestPrecondition.
Module Export bedrock2.
Module Export WeakestPreconditionProperties.
End WeakestPreconditionProperties.

End bedrock2.
Import Coq.ZArith.ZArith.
Export coqutil.Word.Bitwidth.

#[export] Instance BW64: Bitwidth 64 := {
  width_cases := or_intror eq_refl
}.
Module Export coqutil.
Module Export Word.
Module Export Bitwidth64.
End Bitwidth64.

End Word.

End coqutil.
Module Export Naive.
Import Coq.ZArith.BinInt.
Import coqutil.Word.Interface.

Section WithWidth.
End WithWidth.
Definition word width: word.word width.
Admitted.
Notation word64 := (word 64%Z).
#[global] Instance word64_ok : word.ok word64.
Admitted.
End Naive.
Module Export SortedListWord.
Import coqutil.Word.Interface.
Import coqutil.Map.Interface.

Section __.
  Context {width} (word : word width) {word_ok : @word.ok width word}.

  Context (value : Type).
Definition map : map.map word value.
Admitted.
Global Instance ok : map.ok map.
Admitted.
End __.
Import Coq.ZArith.ZArith.
Import bedrock2.Semantics.
Export coqutil.Word.Bitwidth64.
#[export] Instance word: word.word 64.
exact (Naive.word64).
Defined.
#[export] Instance mem: Interface.map.map word Byte.byte.
exact (SortedListWord.map _ _).
Defined.
#[export] Instance locals: Interface.map.map String.string word.
exact (SortedListString.map _).
Defined.
#[export] Instance ext_spec: ExtSpec.
Admitted.
Add Ring wring : (Properties.word.ring_theory (word := word))
      (preprocess [autorewrite with rew_word_morphism],
       morphism (Properties.word.ring_morph (word := word)),
       constants [Properties.word_cst]).
Module Export bedrock2.
Module Export BasicC64Semantics.
End BasicC64Semantics.
Ltac rdelta x :=
  match constr:(Set) with
  | _ => progress_rdelta x
  | _ => x
  end
with progress_rdelta x :=
  let x := eval cbv delta [x] in x in
  rdelta x.

Ltac rdelta_var x :=
  match constr:(Set) with
  | _ => progress_rdelta_var x
  | _ => x
  end
with progress_rdelta_var x :=
  let __ := match constr:(Set) with _ => is_var x end in
  let x := eval cbv delta [x] in x in
  rdelta_var x.

Ltac _syntactic_unify_deltavar x y :=
  match constr:(Set) with
  | _ => is_evar x; unify x y
  | _ => is_evar y; unify x y
  | _ => is_var x; let x := eval cbv delta [x] in x in _syntactic_unify_deltavar x y
  | _ => is_var y; let y := eval cbv delta [y] in y in _syntactic_unify_deltavar x y
  | _ => lazymatch x with
         | ?f ?a => lazymatch y with ?g ?b => _syntactic_unify_deltavar f g; _syntactic_unify_deltavar a b end
         | (fun (a:?Ta) => ?f a)
           => lazymatch y with (fun (b:?Tb) => ?g b) =>
                               let __ := constr:(fun (a:Ta) (b:Tb) => ltac:(_syntactic_unify_deltavar f g; exact Set)) in idtac end
         | let a : ?Ta := ?v in ?f a
           => lazymatch y with let b : ?Tb := ?w in ?g b =>
                               _syntactic_unify_deltavar v w;
                               let __ := constr:(fun (a:Ta) (b:Tb) => ltac:(_syntactic_unify_deltavar f g; exact Set)) in idtac end

         | _ => first [ constr_eq x y
                      | first [has_evar x | has_evar y]; unify x y; constr_eq x y ]
         end
  end.
Tactic Notation "syntactic_unify_deltavar" open_constr(x) open_constr(y) :=  _syntactic_unify_deltavar x y.

Ltac _syntactic_exact_deltavar e :=
  let t := type of e in
  let g := lazymatch goal with |- ?g => g end in
  tryif syntactic_unify_deltavar t g then exact_no_check e else fail "syntactic_unify" t g.
Tactic Notation "syntactic_exact_deltavar" open_constr(e) :=
  _syntactic_exact_deltavar e.

Ltac list_get l i :=
  lazymatch l with
  | cons ?a ?l =>
    lazymatch i with
    | O  => a
    | S ?i => list_get l i
    end
  | _ => fail "list_get nil" i
  end.

Ltac index_and_element_of xs :=
  multimatch xs with
  | cons ?x _ => constr:((0%nat, x))
  | cons _ ?xs =>
    let r := index_and_element_of xs in
    multimatch r with
    | (?i, ?y) => constr:((S i, y))
    end
  end.

Ltac find_syntactic_unify_deltavar xs y :=
  multimatch xs with
  | cons ?x _ =>
    let __ := match constr:(Set) with _ => syntactic_unify_deltavar x y end in
    constr:(O)
  | cons _ ?xs => let i := find_syntactic_unify_deltavar xs y in constr:(S i)
  end.

Ltac find_constr_eq xs y :=
  match xs with
  | cons ?x _ => constr:(ltac:(constr_eq x y; exact 0%nat))
  | cons _ ?xs => let i := find_constr_eq xs y in constr:(S i)
  end.
Module Export Lift1Prop.
Import Coq.Classes.Morphisms.

Section Binary.
  Context {T: Type} (P Q: T -> Prop).
  Definition impl1 := forall x, P x -> Q x.
  Definition iff1 := forall x, P x <-> Q x.
End Binary.
Global Instance subrelation_iff1_impl1 T : subrelation (@iff1 T) (@impl1 T).
Admitted.
Global Instance Equivalence_iff1 T : Equivalence (@iff1 T).
Admitted.
Module Export Separation.
Import coqutil.Map.Interface.
Import map.

Section Sep.
  Context {key value} {map : map key value}.
  Definition emp (P : Prop) := fun m : map => m = empty /\ P.
  Definition sep (p q : map -> Prop) m :=
    exists mp mq, split m mp mq /\ p mp /\ q mq.
  Definition ptsto k v := fun m : map => m = put empty k v.

  Fixpoint seps (xs : list (rep -> Prop)) : rep -> Prop :=
    match xs with
    | cons x nil => x
    | cons x xs => sep x (seps xs)
    | nil => emp True
    end.
End Sep.

Definition sepclause_of_map {key value map} (m : @map.rep key value map)
  : map.rep -> Prop := Logic.eq m.
Coercion sepclause_of_map : Interface.map.rep >-> Funclass.

Declare Scope sep_scope.
Delimit Scope sep_scope with sep.
Infix "*" := sep (at level 40, left associativity) : sep_scope.
Notation "m =* P" := ((P%sep) m) (at level 70, only parsing).
Module Export SeparationLogic.
Lemma impl1_refl{T: Type}: forall {P: T -> Prop}, Lift1Prop.impl1 P P.
Admitted.

Lemma iff1_refl{A: Type}(P: A -> Prop): iff1 P P.
Admitted.
Lemma iff1_sym{A: Type}{P Q: A -> Prop}: iff1 P Q -> iff1 Q P.
Admitted.

Ltac iff1_syntactic_reflexivity :=
  lazymatch goal with
  | |- iff1 ?x ?y => first [is_evar x | is_evar y | constr_eq x y]
  end;
  exact (iff1_refl _).

Section SepProperties.
  Context {key value} {map : map key value} {ok : ok map}.

  Local Definition hd {T} := Eval cbv delta in @List.hd T.
  Local Definition tl {T} := Eval cbv delta in @List.tl T.
  Local Definition firstn {T} := Eval cbv delta in @List.firstn T.
  Local Definition skipn {T} := Eval cbv delta in @List.skipn T.
  Local Definition app {T} := Eval cbv delta in @List.app T.

  Local Infix "++" := app.
  Let nth n xs := hd (emp(map:=map) True) (skipn n xs).
  Let remove_nth n (xs : list (map -> Prop)) :=
    (firstn n xs ++ tl (skipn n xs)).

  Lemma cancel_seps_at_indices i j xs ys
        (Hij : nth i xs = nth j ys)
        (Hrest : iff1 (seps (remove_nth i xs)) (seps (remove_nth j ys)))
    : iff1 (seps xs) (seps ys).
Admitted.

  Lemma cancel_seps_at_indices_by_implication i j xs ys
        (Hij : Lift1Prop.impl1 (nth i xs) (nth j ys))
        (Hrest : Lift1Prop.impl1 (seps (remove_nth i xs)) (seps (remove_nth j ys)))
    : Lift1Prop.impl1 (seps xs) (seps ys).
Admitted.

  Lemma cancel_emp_at_index_l i xs ys
        (Hi : nth i xs = emp True)
        (Hrest : iff1 (seps (remove_nth i xs)) (seps ys))
    : iff1 (seps xs) (seps ys).
Admitted.
  Lemma cancel_emp_at_index_r j xs ys
        (Hj : nth j ys = emp True)
        (Hrest : iff1 (seps xs) (seps (remove_nth j ys)))
    : iff1 (seps xs) (seps ys).
Admitted.

  Lemma cancel_emp_at_index_impl j xs ys
        (Hj : nth j ys = emp True)
        (Hrest : impl1 (seps xs) (seps (remove_nth j ys)))
    : impl1 (seps xs) (seps ys).
Admitted.
End SepProperties.

Module Export Tree.
  Inductive Tree(A: Type): Type :=
  | Leaf(a: A)
  | Node(left right: Tree A).
  Arguments Leaf {A} _.
  Arguments Node {A} _ _.
  Section Interp.
    Context {A B: Type}.
    Context (interp_Leaf: A -> B).
    Context (interp_Node: B -> B -> B).
Fixpoint interp(t: Tree A): B.
exact (match t with
      | Leaf a => interp_Leaf a
      | Node t1 t2 => interp_Node (interp t1) (interp t2)
      end).
Defined.
  End Interp.
Definition flatten{A: Type}: Tree A -> list A.
exact (interp (fun a => cons a nil) (@app A)).
Defined.

  Section WithMap.
    Context {key value} {map : map key value} {ok : ok map}.
Definition to_sep: Tree (map -> Prop) -> map -> Prop.
exact (interp (fun x => x) sep).
Defined.

    Lemma flatten_iff1_to_sep(t : Tree.Tree (map -> Prop)):
      Lift1Prop.iff1 (seps (flatten t)) (to_sep t).
Admitted.

    Lemma iff1_to_sep_of_iff1_flatten(LHS RHS : Tree (map -> Prop)):
      Lift1Prop.iff1 (seps (flatten LHS)) (seps (flatten RHS)) ->
      Lift1Prop.iff1 (to_sep LHS) (to_sep RHS).
Admitted.

    Lemma impl1_to_sep_of_impl1_flatten(LHS RHS : Tree (map -> Prop)):
      Lift1Prop.impl1 (seps (flatten LHS)) (seps (flatten RHS)) ->
      Lift1Prop.impl1 (to_sep LHS) (to_sep RHS).
Admitted.

    Lemma flatten_to_sep_with_and(t : Tree.Tree (map -> Prop))(m: map)(C: Prop):
      seps (flatten t) m /\ C -> to_sep t m /\ C.
Admitted.
  End WithMap.

Ltac reify e :=
  lazymatch e with
  | @sep ?key ?value ?map ?a ?b =>
    let a := reify a in
    let b := reify b in
    uconstr:(@Tree.Node (@map.rep key value map -> Prop) a b)
  | ?a => uconstr:(Tree.Leaf a)
  end.

Ltac reify_goal :=
  lazymatch goal with
  | |- Lift1Prop.iff1 ?LHS ?RHS =>
    let LHS := reify LHS in
    let RHS := reify RHS in
    change (Lift1Prop.iff1 (Tree.to_sep LHS) (Tree.to_sep RHS));
    eapply Tree.iff1_to_sep_of_iff1_flatten
  | |- Lift1Prop.impl1 ?LHS ?RHS =>
    let LHS := reify LHS in
    let RHS := reify RHS in
    change (Lift1Prop.impl1 (Tree.to_sep LHS) (Tree.to_sep RHS));
    eapply Tree.impl1_to_sep_of_impl1_flatten
  end;
  cbv [Tree.flatten Tree.interp app].

Ltac flatten_seps_in H :=
  lazymatch type of H with
  | ?nested ?m =>
    let tmem := type of m in
    let E := fresh "E" in
    eassert (@iff1 tmem nested _) as E;
    [
      let stars := eval cbv [seps] in nested in
      let tree := reify stars in
      transitivity (Tree.to_sep tree); [
        cbv [seps Tree.to_sep Tree.interp]; iff1_syntactic_reflexivity
      |];

      transitivity (seps (Tree.flatten tree)); [
        exact (iff1_sym (Tree.flatten_iff1_to_sep tree))
      |];

      cbv [SeparationLogic.Tree.flatten SeparationLogic.Tree.interp SeparationLogic.app];
      iff1_syntactic_reflexivity
    | let HNew := fresh in pose proof (proj1 (E m) H) as HNew;
      move HNew before H;
      clear E H;
      rename HNew into H ]
  end.

Ltac flatten_seps_in_goal :=
  cbv [seps];
  lazymatch goal with
  | |- ?nested ?m /\ ?C =>
      let xs := reify nested in
      change (Tree.to_sep xs m /\ C);
      eapply Tree.flatten_to_sep_with_and
  | |- ?nested ?m =>
      let xs := reify nested in
      change (Tree.to_sep xs m);
      eapply Tree.flatten_iff1_to_sep
  end;
  cbv [Tree.flatten Tree.interp app].

Ltac cancel_emp_l :=
  lazymatch goal with
  | |- Lift1Prop.iff1 (@seps ?K ?V ?M ?LHS) (seps ?RHS) =>
    let i := find_constr_eq LHS constr:(@emp K V M True) in
    simple refine (cancel_emp_at_index_l i LHS RHS _ _);
    cbv [firstn skipn app hd tl];
    [syntactic_exact_deltavar (@eq_refl _ _)|]
  end.

Ltac cancel_emp_r :=
  lazymatch goal with
  | |- Lift1Prop.iff1 (seps ?LHS) (@seps ?K ?V ?M ?RHS) =>
    let j := find_constr_eq RHS constr:(@emp K V M True) in
    simple refine (cancel_emp_at_index_r j LHS RHS _ _);
    cbv [firstn skipn app hd tl];
    [syntactic_exact_deltavar (@eq_refl _ _)|]
  end.

Ltac cancel_emp_impl :=
  lazymatch goal with
  | |- Lift1Prop.impl1 (seps ?LHS) (@seps ?K ?V ?M ?RHS) =>
    let j := find_constr_eq RHS constr:(@emp K V M True) in

    simple refine (cancel_emp_at_index_impl j LHS RHS _ _);
    cbv [firstn skipn app hd tl];

    [syntactic_exact_deltavar (@eq_refl _ _)|]
  end.

Ltac cancel_seps_at_indices i j :=
  lazymatch goal with
  | |- Lift1Prop.iff1 (seps ?LHS) (seps ?RHS) =>
    simple refine (cancel_seps_at_indices i j LHS RHS _ _);
    cbv [firstn skipn app hd tl]
  end.

Ltac cancel_seps_at_indices_by_implication i j :=
  lazymatch goal with
  | |- Lift1Prop.impl1 (seps ?LHS) (seps ?RHS) =>
    simple refine (cancel_seps_at_indices_by_implication i j LHS RHS _ _);
    cbv [firstn skipn app hd tl]
  end.

Ltac find_implication xs y :=
  multimatch xs with
  | cons ?x _ => constr:(O)
  | cons _ ?xs => let i := find_implication xs y in constr:(S i)
  end.

Ltac cancel_step := once (
      let RHS := lazymatch goal with |- Lift1Prop.iff1 _ (seps ?RHS) => RHS end in
      let jy := index_and_element_of RHS in
      let j := lazymatch jy with (?i, _) => i end in
      let y := lazymatch jy with (_, ?y) => y end in
      assert_fails (has_evar y);
      let LHS := lazymatch goal with |- Lift1Prop.iff1 (seps ?LHS) _ => LHS end in
      let i := find_constr_eq LHS y in
      cancel_seps_at_indices i j; [exact eq_refl|]).

Ltac cancel_step_impl := once (
    let RHS := lazymatch goal with |- Lift1Prop.impl1 _ (seps ?RHS) => RHS end in
    let jy := index_and_element_of RHS in
    let j := lazymatch jy with (?i, _) => i end in
    let y := lazymatch jy with (_, ?y) => y end in
    assert_fails (has_evar y);
    let LHS := lazymatch goal with |- Lift1Prop.impl1 (seps ?LHS) _ => LHS end in
    let i := find_constr_eq LHS y in
    cancel_seps_at_indices_by_implication i j; [exact impl1_refl|]).

Ltac ecancel_step_at j :=
      let RHS := lazymatch goal with |- Lift1Prop.iff1 _ (seps ?RHS) => RHS end in
      let y := list_get RHS j in
      assert_fails (idtac; let y := rdelta_var y in is_evar y);
      let LHS := lazymatch goal with |- Lift1Prop.iff1 (seps ?LHS) _ => LHS end in
      let i := find_syntactic_unify_deltavar LHS y in
      cancel_seps_at_indices i j; [exact eq_refl|].

Ltac ecancel_steps_inbounds j :=
  let RHS := lazymatch goal with |- Lift1Prop.iff1 _ (seps ?RHS) => RHS end in
  let __ := list_get RHS j in
  idtac.

Ltac ecancel_steps_at j :=
   tryif (ecancel_steps_inbounds j) then (
    tryif (ecancel_step_at j)
    then (                         ecancel_steps_at j)
    else (let j := constr:(S j) in ecancel_steps_at j)
  ) else idtac.

Ltac ecancel_step_by_implication :=
      let RHS := lazymatch goal with |- Lift1Prop.impl1 _ (seps ?RHS) => RHS end in
      let jy := index_and_element_of RHS in
      let j := lazymatch jy with (?i, _) => i end in
      let y := lazymatch jy with (_, ?y) => y end in
      assert_fails (idtac; let y := rdelta_var y in is_evar y);
      let LHS := lazymatch goal with |- Lift1Prop.impl1 (seps ?LHS) _ => LHS end in
      let i := find_implication LHS y in
      cancel_seps_at_indices_by_implication i j; [solve [auto 1 with nocore ecancel_impl]|].

Ltac ecancel_done :=
  cbv [seps];
  syntactic_exact_deltavar
    (@RelationClasses.reflexivity _ _
        (@RelationClasses.Equivalence_Reflexive _ _ (@Equivalence_iff1 _)) _).

Ltac cancel_done :=
  lazymatch goal with
  | |- iff1 (seps (cons _ nil)) _ => idtac
  | |- iff1 _ (seps (cons _ nil )) => idtac
  | |- ?g => assert_fails (has_evar g)
  end;
  ecancel_done.

Ltac cancel_seps :=
  lazymatch goal with
  | |- Lift1Prop.iff1 _ _ =>
    repeat cancel_step;
    repeat cancel_emp_l;
    repeat cancel_emp_r
  | |- Lift1Prop.impl1 _ _ =>
    repeat cancel_step_impl;
    repeat cancel_emp_impl
  end;
  try solve [ cancel_done ].

Ltac cancel := reify_goal; cancel_seps.

Ltac ecancel :=
  cancel;
  lazymatch goal with
  | [|- impl1 _ _] =>
     repeat ecancel_step_by_implication;
     (solve [ cbv [seps]; exact impl1_refl ])
  | [|- iff1 _ _] =>
    ecancel_steps_at O;
    ecancel_done
  end.

Ltac ecancel_assumption :=
  multimatch goal with
  | |- _ ?m1 =>
    multimatch goal with
    | H: _ ?m2 |- _ =>
      syntactic_unify_deltavar m1 m2;
      refine (Lift1Prop.subrelation_iff1_impl1 _ _ _ _ _ H); clear H;
      solve [ecancel]
    end
  end.
Require Crypto.Arithmetic.WordByWordMontgomery.
Module Export Array.
Import Stdlib.ZArith.ZArith.
Import coqutil.Byte.

Section Array.
  Context {width : Z} {word : Word.Interface.word width} {word_ok : word.ok word}.
  Context {value} {mem : map.map word value} {mem_ok : map.ok mem}.
  Context {T} (element : word -> T -> mem -> Prop) (size : word).
  Fixpoint array (start : word) (xs : list T) :=
    match xs with
    | nil => emp True
    | cons x xs => sep (element start x) (array (word.add start size) xs)
    end.

End Array.

Section ByteArray.
  Context {width : Z} {word : Word.Interface.word width} {word_ok : word.ok word}.
  Context {mem : map.map word byte} {mem_ok : map.ok mem}.
  Local Notation array := (array (mem:=mem) ptsto (word.of_Z 1)).

  Lemma array_1_to_anybytes bs m (a: word) :
    array a bs m -> bedrock2.Memory.anybytes a (Z.of_nat (List.length bs)) m.
Admitted.

  Lemma anybytes_to_array_1 m (addr : word) n :
      bedrock2.Memory.anybytes addr n m ->
      exists bs, array  addr bs m /\ List.length bs = Z.to_nat n.
Admitted.
End ByteArray.
Module Export Scalars.
Import coqutil.Word.LittleEndianList.
Import bedrock2.Memory.

Section Scalars.
  Context {width : Z} {BW: Bitwidth width} {word : Word.Interface.word width} {word_ok : word.ok word}.

  Context {mem : map.map word byte} {mem_ok : map.ok mem}.
  Implicit Types (m : mem).

  Definition truncated_scalar sz addr (value:Z) : mem -> Prop :=
    (le_split (bytes_per (width:=width) sz) value) $@ addr.

  Definition truncated_word sz addr (value: word) : mem -> Prop :=
    truncated_scalar sz addr (word.unsigned value).

  Notation scalar8 := ptsto (only parsing).

  Definition scalar16 := truncated_word Syntax.access_size.two.
  Definition scalar32 := truncated_word Syntax.access_size.four.
  Definition scalar := truncated_word Syntax.access_size.word.
Definition truncate_word(sz: Syntax.access_size)(w: word): word.
Admitted.

  Lemma load_one_of_sep addr value R m
    (Hsep : sep (scalar8 addr value) R m)
    : Memory.load Syntax.access_size.one m addr = Some (word.of_Z (byte.unsigned value)).
Admitted.

  Lemma load_two_of_sep addr value R m
    (Hsep : sep (scalar16 addr value) R m)
    : Memory.load Syntax.access_size.two m addr = Some (truncate_word Syntax.access_size.two value).
Admitted.

  Lemma load_four_of_sep addr value R m
    (Hsep : sep (scalar32 addr value) R m)
    : Memory.load Syntax.access_size.four m addr = Some (truncate_word Syntax.access_size.four value).
Admitted.

  Lemma load_four_of_sep_32bit(W32: width = 32) addr value R m
    (Hsep : sep (scalar32 addr value) R m)
    : Memory.load Syntax.access_size.four m addr = Some value.
Admitted.

  Lemma load_word_of_sep addr value R m
    (Hsep : sep (scalar addr value) R m)
    : Memory.load Syntax.access_size.word m addr = Some value.
Admitted.

  Lemma store_one_of_sep addr (oldvalue : byte) (value : word) R m (post:_->Prop)
    (Hsep : sep (scalar8 addr oldvalue) R m)
    (Hpost : forall m, sep (scalar8 addr (byte.of_Z (word.unsigned value))) R m -> post m)
    : exists m1, Memory.store Syntax.access_size.one m addr value = Some m1 /\ post m1.
Admitted.

  Lemma store_two_of_sep addr (oldvalue : word) (value : word) R m (post:_->Prop)
    (Hsep : sep (scalar16 addr oldvalue) R m)
    (Hpost : forall m, sep (scalar16 addr value) R m -> post m)
    : exists m1, Memory.store Syntax.access_size.two m addr value = Some m1 /\ post m1.
Admitted.

  Lemma store_four_of_sep addr (oldvalue : word) (value : word) R m (post:_->Prop)
    (Hsep : sep (scalar32 addr oldvalue) R m)
    (Hpost : forall m, sep (scalar32 addr value) R m -> post m)
    : exists m1, Memory.store Syntax.access_size.four m addr value = Some m1 /\ post m1.
Admitted.

  Lemma store_word_of_sep addr (oldvalue value: word) R m (post:_->Prop)
    (Hsep : sep (scalar addr oldvalue) R m)
    (Hpost : forall m, sep (scalar addr value) R m -> post m)
    : exists m1, Memory.store Syntax.access_size.word m addr value = Some m1 /\ post m1.
Admitted.

End Scalars.
Module Export Loops.
Import coqutil.Datatypes.PrimitivePair.
Import coqutil.Datatypes.HList.
Import coqutil.dlet.
Import bedrock2.Syntax.
Import bedrock2.Semantics.
Import bedrock2.WeakestPrecondition.

Section Loops.
  Context {width: Z} {BW: Bitwidth width} {word: word.word width} {mem: map.map word Byte.byte}.
  Context {locals: map.map String.string word}.
  Context {ext_spec: ExtSpec}.

  Context {fs : env}.
  Let call := fs.

  Local Notation "A /\ B" := (Markers.split (A /\ B)).
Definition reconstruct (variables:list String.string) (values:tuple word (length variables)) : locals.
exact (map.putmany_of_tuple (tuple.of_list variables) values map.empty).
Defined.
Fixpoint gather (variables : list String.string) (l : locals) : option (locals *  tuple word (length variables)).
exact (match variables with
    | nil => Some (l, tt)
    | cons x xs' =>
      match map.get l x with
      | None => None
      | Some v =>
        match gather xs' (map.remove l x) with
        | None => None
        | Some (l, vs') => Some (l, (pair.mk v vs'))
        end
      end
    end).
Defined.
Definition enforce (variables : list String.string) (values:tuple word (length variables)) (l:locals) : Prop.
exact (match gather variables l with
    | None => False
    | Some (remaining, r) => values = r /\ remaining = map.empty
    end).
Defined.

  Import pair.

  Lemma tailrec
    {e c t localsmap} {m : mem}
    (ghosttypes : polymorphic_list.list Type)
    (variables : list String.string)
    {l0 : tuple word (length variables)}
    {Pl : enforce variables l0 localsmap}
    {post : _->_->_-> Prop}
    {measure : Type} (spec:_->HList.arrows ghosttypes (_->_->ufunc word (length variables) (Prop*(_->_->ufunc word (length variables) Prop)))) lt
    (Hwf : well_founded lt)
    (v0 : measure)
    : hlist.foralls (fun (g0 : hlist ghosttypes) => forall
    (Hpre : (tuple.apply (hlist.apply (spec v0) g0 t m) l0).(1))
    (Hbody : forall v, hlist.foralls (fun g => forall t m, tuple.foralls (fun l =>
      @dlet _ (fun _ => Prop) (reconstruct variables l) (fun localsmap : locals =>
      match tuple.apply (hlist.apply (spec v) g t m) l with S_ =>
      S_.(1) ->
      Markers.unique (Markers.left (exists br, expr m localsmap e (eq br) /\ Markers.right (
      (word.unsigned br <> 0%Z -> cmd call c t m localsmap
        (fun t' m' localsmap' =>
          Markers.unique (Markers.left (hlist.existss (fun l' => enforce variables l' localsmap' /\ Markers.right (
          Markers.unique (Markers.left (hlist.existss (fun g' => exists v',
          match tuple.apply (hlist.apply (spec v') g' t' m') l' with S' =>
          S'.(1) /\ Markers.right (
            lt v' v /\
            forall T M, hlist.foralls (fun L => tuple.apply (S'.(2) T M) L -> tuple.apply (S_.(2) T M) L)) end))))))))) /\
      (word.unsigned br = 0%Z -> tuple.apply (S_.(2) t m) l))))end))))
    (Hpost : match (tuple.apply (hlist.apply (spec v0) g0 t m) l0).(2) with Q0 => forall t m, hlist.foralls (fun l =>  tuple.apply (Q0 t m) l -> post t m (reconstruct variables l))end)
    , cmd call (cmd.while e c) t m localsmap post ).
Admitted.
End Loops.
Import coqutil.Tactics.Tactics.
Import coqutil.Tactics.letexists.
Import coqutil.Tactics.eabstract.
Import coqutil.Tactics.reference_to_string.
Import coqutil.Tactics.ident_of_string.
Import bedrock2.WeakestPrecondition.
Import bedrock2.WeakestPreconditionProperties.

Definition spec_of (procname:String.string) := Semantics.env -> Prop.
Existing Class spec_of.
Import Ltac2.Ltac2.

Local Ltac2 rec splitcmd (cmd : constr) : unit :=
  match! cmd with
    | cmd.seq ?cmd1 ?cmd2 =>
        set (cmd.seq $cmd1 $cmd2) in *; splitcmd cmd1; splitcmd cmd2
    | cmd.cond ?expr ?cmd1 ?cmd2 => set (cmd.cond $expr $cmd1 $cmd2) in *; splitcmd cmd1; splitcmd cmd2
    | cmd.while ?expr ?cmd => set (cmd.while $expr $cmd) in *; splitcmd cmd
    | _ => ()
  end.

Local Ltac2 Notation "instance_of" type(constr) :=
  lazy_match! Ltac2.Constr.pretype (preterm:(_ : $type)) with ?instance => instance end.

Local Ltac2 rec unfold_const x :=
  if Bool.neg (Constr.is_const x) then x else
    let ref := reference_to_string.reference_of_constr x in
    match! eval cbv delta [$ref] in $x with ?x => unfold_const x
  end.

Local Ltac2 function_body (proc : constr) : constr :=
  let unfolded := unfold_const proc in
  match! unfolded with (_, _, ?fbody) => fbody end.

Local Ltac2 rec callee_specs (cmd : constr) : constr list :=
  match! cmd with
    | cmd.cond _ ?c1 ?c2  => List.append (callee_specs c1) (callee_specs c2)
    | cmd.seq ?c1 ?c2 => List.append (callee_specs c1) (callee_specs c2)
    | cmd.while _ ?c => callee_specs c
    | cmd.stackalloc _ _ ?c => callee_specs c
    | cmd.call _ ?f _ => [instance_of (spec_of $f)]
    | cmd.skip => []
    | cmd.set _ _ => []
    | cmd.unset _ => []
    | cmd.store _ _ _ => []
    | cmd.interact _ _ _ => []
    | _ => Control.throw (Invalid_argument (Some (Message.concat
        (Message.of_string "Failed to recurse into the following command, consider reducing it before calling program_logic_goal_for: ")
        (Message.of_constr cmd))))
  end.

Local Ltac2 program_logic_goal_for_function (proc : constr) : unit :=
  let fname := constr_string_basename_of_constr_reference proc in
  let fname_spec := instance_of (spec_of $fname) in
  let fbody := function_body proc in
  let goal := (fun (functions : constr) =>
    List.fold_right (fun premise_spec conclusion => '(($premise_spec $functions) -> $conclusion)) (callee_specs fbody) '($fname_spec $functions)) in
  exact (forall (functions : @map.rep _ _ Semantics.env) (EnvContains : map.get functions $fname = Some $proc),
    ltac2:(let g := goal &functions in exact $g)
  ).

Set Default Proof Mode "Classic".

Definition program_logic_goal_for (_ : Syntax.func) (P : Prop) := P.

Notation "program_logic_goal_for_function! proc" := (program_logic_goal_for proc ltac2:(
   program_logic_goal_for_function (Ltac2.Constr.pretype proc)))
  (at level 10, only parsing).

Ltac normalize_body_of_function f := eval cbv in f.

Ltac bind_body_of_function f_ :=
  let f := normalize_body_of_function f_ in
  let fbody := open_constr:(_) in
  let funif := open_constr:((_, _, fbody)) in
  unify f funif;
  let go_split := ltac2:(fbody |-
    let fbody_value := Option.get (Ltac1.to_constr fbody) in
    splitcmd fbody_value) in
  change f_ with f;
  go_split fbody; intros.

Ltac enter f :=
  cbv beta delta [program_logic_goal_for];
  bind_body_of_function f;
  lazymatch goal with |- ?s ?p => let s := rdelta s in change (s p); cbv beta end.

Ltac is_context_variable H :=
  assert_succeeds (exfalso; clear -H; assert(H = H);
    let A := fresh in let B := fresh in destruct H as [A B]; pose H).

Ltac straightline_cleanup :=
  match goal with

  | x : Word.Interface.word.rep _ |- _ => clear x
  | x : Init.Byte.byte |- _ => clear x
  | x : Semantics.trace |- _ => clear x
  | x : Syntax.cmd |- _ => clear x
  | x : Syntax.expr |- _ => clear x
  | x : coqutil.Map.Interface.map.rep |- _ => clear x
  | x : BinNums.Z |- _ => clear x
  | x : unit |- _ => clear x
  | x : bool |- _ => clear x
  | x : list _ |- _ => clear x
  | x : nat |- _ => clear x

  | x := _ : Word.Interface.word.rep _ |- _ => clear x
  | x := _ : Init.Byte.byte |- _ => clear x
  | x := _ : Semantics.trace |- _ => clear x
  | x := _ : Syntax.cmd |- _ => clear x
  | x := _ : Syntax.expr |- _ => clear x
  | x := _ : coqutil.Map.Interface.map.rep |- _ => clear x
  | x := _ : BinNums.Z |- _ => clear x
  | x := _ : unit |- _ => clear x
  | x := _ : bool |- _ => clear x
  | x := _ : list _ |- _ => clear x
  | x := _ : nat |- _ => clear x
  | |- forall _, _ => intros
  | |- let _ := _ in _ => intros
  | |- dlet.dlet ?v (fun x => ?P) => change (let x := v in P); intros
  | _ => progress (cbn [Semantics.interp_binop] in * )
  | H: exists _, _ |- _ => tryif is_context_variable H then fail else destruct H
  | H: _ /\ _ |- _ => tryif is_context_variable H then fail else destruct H
  | x := ?y |- ?G => is_var y; subst x
  | H: ?x = ?y |- _ => constr_eq x y; clear H
  | H: ?x = ?y |- _ => is_var x; is_var y; assert_fails (idtac; let __ := eval cbv [x] in x in idtac); subst x
  | H: ?x = ?y |- _ => is_var x; is_var y; assert_fails (idtac; let __ := eval cbv [y] in y in idtac); subst y
  | H: ?x = ?v |- _ =>
    is_var x;
    assert_fails (idtac; let __ := eval cbv delta [x] in x in idtac);
    lazymatch v with context[x] => fail | _ => idtac end;
    let x' := fresh x in
    rename x into x';
    simple refine (let x := v in _);
    change (x' = x) in H;
    symmetry in H;
    destruct H
  end.

Ltac straightline_stackalloc :=
  match goal with Hanybytes: Memory.anybytes ?a ?n ?mStack |- _ =>
  let m := match goal with H : map.split ?mCobined ?m mStack |- _ => m end in
  let mCombined := match goal with H : map.split ?mCobined ?m mStack |- _ => mCobined end in
  let Hsplit := match goal with H : map.split ?mCobined ?m mStack |- _ => H end in
  let Hm := multimatch goal with H : _ m |- _ => H end in
  let Hm' := fresh Hm in
  let Htmp := fresh in
  let Pm := match type of Hm with ?P m => P end in
  assert_fails (assert (Separation.sep Pm (Array.array Separation.ptsto (Interface.word.of_Z (BinNums.Zpos BinNums.xH)) a _) mCombined) as _ by ecancel_assumption);
  rename Hm into Hm';
  let stack := fresh "stack" in
  let stack_length := fresh "length_" stack in
  destruct (Array.anybytes_to_array_1 mStack a n Hanybytes) as (stack&Htmp&stack_length);
  epose proof (ex_intro _ m (ex_intro _ mStack (conj Hsplit (conj Hm' Htmp)))
  : Separation.sep _ (Array.array Separation.ptsto (Interface.word.of_Z (BinNums.Zpos BinNums.xH)) a _) mCombined) as Hm;
  clear Htmp;
  try (let m' := fresh m in rename m into m'); rename mCombined into m;
  ( assert (BinInt.Z.of_nat (Datatypes.length stack) = n)
  by (rewrite stack_length; apply (ZifyInst.of_nat_to_nat_eq n))
  || fail 2 "negative stackalloc of size" n )
  end.

Ltac straightline_stackdealloc :=
  lazymatch goal with |- exists _ _, Memory.anybytes ?a ?n _ /\ map.split ?m _ _ /\ _ =>
  let Hm := multimatch goal with Hm : _ m |- _ => Hm end in
  let stack := match type of Hm with context [Array.array Separation.ptsto _ a ?stack] => stack end in
  let length_stack := match goal with H : Datatypes.length stack = _ |- _ => H end in
  let Hm' := fresh Hm in
  pose proof Hm as Hm';
  let Psep := match type of Hm with ?P _ => P end in
  let Htmp := fresh "Htmp" in
  eassert (Lift1Prop.iff1 Psep (Separation.sep _ (Array.array Separation.ptsto (Interface.word.of_Z (BinNums.Zpos BinNums.xH)) a stack))) as Htmp
  by ecancel || fail "failed to find stack frame in" Psep "using ecancel";
  eapply (fun m => proj1 (Htmp m)) in Hm;
  let m' := fresh m in
  rename m into m';
  let mStack := fresh in
  destruct Hm as (m&mStack&Hsplit&Hm&Harray1); move Hm at bottom;
  pose proof Array.array_1_to_anybytes _ _ _ Harray1 as Hanybytes;
  rewrite length_stack in Hanybytes;
  refine (ex_intro _ m (ex_intro _ mStack (conj Hanybytes (conj Hsplit _))));
  clear Htmp Hsplit mStack Harray1 Hanybytes
  end.

Ltac rename_to_different H :=
  idtac;
  let G := fresh H "'0" in
  rename H into G.
Ltac ensure_free H :=
  try rename_to_different H.

Ltac eq_uniq_step :=
  match goal with
  | |- ?x = ?y =>
      let x := rdelta x in
      let y := rdelta y in
      first [ is_evar x | is_evar y | constr_eq x y ]; exact eq_refl
  | |- ?lhs = ?rhs =>
      let lh := head lhs in
      is_constructor lh;
      let rh := head rhs in
      constr_eq lh rh;
      f_equal
  end.
Ltac eq_uniq := repeat eq_uniq_step.

Ltac fwd_uniq_step :=
  match goal with
  | |- exists x : ?T, _ =>
      let ev := open_constr:(match _ return T with x => x end) in
      eexists ev;
      let rec f :=
        tryif has_evar ev
        then fwd_uniq_step
        else idtac
      in f
  | |- _ /\ _ => split; [ solve [repeat fwd_uniq_step; eq_uniq] | ]
  | _ => solve [ eq_uniq ]
  end.

Ltac straightline :=
  match goal with
  | _ => straightline_cleanup
  | |- program_logic_goal_for ?f _ =>
    enter f; intros;
    match goal with
    | H: map.get ?functions ?fname = Some _ |- _ =>
        eapply start_func; [exact H | clear H]
    end;
    cbv match beta delta [WeakestPrecondition.func]
  | |- WeakestPrecondition.cmd _ (cmd.set ?s ?e) _ _ _ ?post =>
    unfold1_cmd_goal; cbv beta match delta [cmd_body];
    let __ := match s with String.String _ _ => idtac | String.EmptyString => idtac end in
    ident_of_constr_string_cps s ltac:(fun x =>
      ensure_free x;

      letexists _ as x; split; [solve [repeat straightline]|])
  | |- cmd _ ?c _ _ _ ?post =>
    let c := eval hnf in c in
    lazymatch c with
    | cmd.while _ _ => fail
    | cmd.cond _ _ _ => fail
    | cmd.interact _ _ _ => fail
    | _ => unfold1_cmd_goal; cbv beta match delta [cmd_body]
    end
  | |- @list_map _ _ (get _) _ _ => unfold1_list_map_goal; cbv beta match delta [list_map_body]
  | |- @list_map _ _ (expr _ _) _ _ => unfold1_list_map_goal; cbv beta match delta [list_map_body]
  | |- @list_map _ _ _ nil _ => cbv beta match fix delta [list_map list_map_body]
  | |- expr _ _ _ _ => unfold1_expr_goal; cbv beta match delta [expr_body]
  | |- dexpr _ _ _ _ => cbv beta delta [dexpr]
  | |- dexprs _ _ _ _ => cbv beta delta [dexprs]
  | |- literal _ _ => cbv beta delta [literal]
  | |- @get ?w ?W ?L ?l ?x ?P =>
      let get' := eval cbv [get] in @get in
      change (get' w W L l x P); cbv beta
  | |- load _ _ _ _ => cbv beta delta [load]
  | |- @Loops.enforce ?width ?word ?locals ?names ?values ?map =>
    let values := eval cbv in values in
    change (@Loops.enforce width word locals names values map);
    exact (conj (eq_refl values) eq_refl)
  | |- @eq (@coqutil.Map.Interface.map.rep String.string Interface.word.rep _) _ _ =>
    eapply SortedList.eq_value; exact eq_refl
  | |- @map.get String.string Interface.word.rep ?M ?m ?k = Some ?e' =>
    let e := rdelta e' in
    is_evar e;
    once (let v := multimatch goal with x := context[@map.put _ _ M _ k ?v] |- _ => v end in

          unify e v; exact (eq_refl (Some v)))
  | |- @coqutil.Map.Interface.map.get String.string Interface.word.rep _ _ _ = Some ?v =>
    let v' := rdelta v in is_evar v'; (change v with v'); exact eq_refl
  | |- ?x = ?y =>
    let y := rdelta y in is_evar y; change (x=y); exact eq_refl
  | |- ?x = ?y =>
    let x := rdelta x in is_evar x; change (x=y); exact eq_refl
  | |- ?x = ?y =>
    let x := rdelta x in let y := rdelta y in constr_eq x y; exact eq_refl
  | |- store Syntax.access_size.one _ _ _ _ =>
    eapply Scalars.store_one_of_sep; [solve[ecancel_assumption]|]
  | |- store Syntax.access_size.two _ _ _ _ =>
    eapply Scalars.store_two_of_sep; [solve[ecancel_assumption]|]
  | |- store Syntax.access_size.four _ _ _ _ =>
    eapply Scalars.store_four_of_sep; [solve[ecancel_assumption]|]
  | |- store Syntax.access_size.word _ _ _ _ =>
    eapply Scalars.store_word_of_sep; [solve[ecancel_assumption]|]
  | |- bedrock2.Memory.load Syntax.access_size.one ?m ?a = Some ?ev =>
    try subst ev; refine (@Scalars.load_one_of_sep _ _ _ _ _ _ _ _ _ _); ecancel_assumption
  | |- @bedrock2.Memory.load _ ?word ?mem Syntax.access_size.two ?m ?a = Some ?ev =>
    try subst ev; refine (@Scalars.load_two_of_sep _ _ word _ mem _ a _ _ m _); ecancel_assumption
  | |- @bedrock2.Memory.load _ ?word ?mem Syntax.access_size.four ?m ?a = Some ?ev =>
    try subst ev; refine (@Scalars.load_four_of_sep_32bit _ _ word _ mem _ eq_refl a _ _ m _); ecancel_assumption
  | |- @bedrock2.Memory.load _ ?word ?mem Syntax.access_size.four ?m ?a = Some ?ev =>
    try subst ev; refine (@Scalars.load_four_of_sep _ _ word _ mem _ a _ _ m _); ecancel_assumption
  | |- @bedrock2.Memory.load _ ?word ?mem Syntax.access_size.word ?m ?a = Some ?ev =>
    try subst ev; refine (@Scalars.load_word_of_sep _ _ word _ mem _ a _ _ m _); ecancel_assumption
  | |- exists l', Interface.map.of_list_zip ?ks ?vs = Some l' /\ _ =>
    letexists; split; [exact eq_refl|]
  | |- exists l', Interface.map.putmany_of_list_zip ?ks ?vs ?l = Some l' /\ _ =>
    letexists; split; [exact eq_refl|]
  | _ => fwd_uniq_step
  | |- exists x, ?P /\ ?Q =>
    let x := fresh x in refine (let x := _ in ex_intro (fun x => P /\ Q) x _);
                        split; [solve [repeat straightline]|]
  | |- exists x, Markers.split (?P /\ ?Q) =>
    let x := fresh x in refine (let x := _ in ex_intro (fun x => P /\ Q) x _);
                        split; [solve [repeat straightline]|]
  | |- Markers.unique (exists x, Markers.split (?P /\ ?Q)) =>
    let x := fresh x in refine (let x := _ in ex_intro (fun x => P /\ Q) x _);
                        split; [solve [repeat straightline]|]
  | |- Markers.unique (Markers.left ?G) =>
    change G;
    unshelve (idtac; repeat match goal with
                     | |- Markers.split (?P /\ Markers.right ?Q) =>
                       split; [eabstract (repeat straightline) | change Q]
                     | |- exists _, _ => letexists
                     end); []
  | |- Markers.split ?G => change G; split
  | |- True => exact I
  | |- False \/ _ => right
  | |- _ \/ False => left
  | |- BinInt.Z.modulo ?z (Memory.bytes_per_word _) = BinInt.Z0 /\ _ =>
      lazymatch Coq.setoid_ring.InitialRing.isZcst z with
      | true => split; [exact eq_refl|]
      end
  | |- _ => straightline_stackalloc
  | |- _ => straightline_stackdealloc
  | |- context[sep (sep ?_a ?_b) ?_c] => progress (flatten_seps_in_goal; cbn [seps])
  | H : context[sep (sep ?_a ?_b) ?_c] |- _ => progress (flatten_seps_in H; cbn [seps] in H)
  end.
Import bedrock2.NotationsCustomEntry.
Local Open Scope string_scope.
Import coqutil.Word.Properties.
Import bedrock2.BasicC64Semantics.
Import Crypto.Arithmetic.WordByWordMontgomery.

Section WithParameters.
  Import WordByWordMontgomery.

  Context {prime: Z} (r := 64) {ri : Z}.
Instance spec_of_redc_alt : spec_of "redc_alt".
exact (fnspec! "redc_alt" Astart Bstart Sstart len / A (aval: Z) B (bval: Z) S R,
    { requires t m :=
        m =* array scalar (word.of_Z 8) Astart A *
                  array scalar (word.of_Z 8) Bstart B *
                  array scalar (word.of_Z 8) Sstart S * R /\
        word.unsigned len = Z.of_nat (List.length A)  /\
        word.unsigned len = Z.of_nat (List.length B)  /\
        word.unsigned len = Z.of_nat (List.length S) /\
        @eval r (Z.to_nat (word.unsigned len)) (List.map word.unsigned A) = aval /\
        @eval r (Z.to_nat (word.unsigned len)) (List.map word.unsigned B) = bval;
      ensures t' m' :=  t=t' /\ exists S',
          m' =*
             array scalar (word.of_Z 8) Astart A *
             array scalar (word.of_Z 8) Bstart B *
            array scalar (word.of_Z 8) Sstart S' * R /\
          ( aval * bval * ri^(word.unsigned len) ) mod prime =
            @eval r (Z.to_nat (word.unsigned len)) (List.map word.unsigned S') mod prime
    }).
Defined.
Instance spec_of_redc_step : spec_of "redc_step".
Admitted.

  Definition redc_alt :=
    func! (Astart, Bstart, Sstart, len) {
    i = $0;
    while (i < len) {
         store(Sstart + $8*i, $0);
         i = i + $1
      };
    i = $0;
    while (i < len) {
         redc_step ( load(Astart + $8*i), Bstart, Sstart, len );
          i = i + $1
      }
    }.

  Import Coq.Lists.List.

  Let zeros (n: Z) :=
        repeat (@word.of_Z _ word 0) (Z.to_nat n).

 Theorem redc_alt_ok :
      program_logic_goal_for_function! redc_alt.
 Proof.
   repeat straightline.

      refine ( tailrec (HList.polymorphic_list.cons _ (HList.polymorphic_list.cons _ (HList.polymorphic_list.cons _ (HList.polymorphic_list.cons _ (HList.polymorphic_list.cons _ (HList.polymorphic_list.cons _ (HList.polymorphic_list.cons _ (HList.polymorphic_list.cons _ HList.polymorphic_list.nil))))))))
               ("Astart":: "Bstart" :: "Sstart" :: "len" :: "i" :: nil)
               (fun l A aval B bval S Ra Rb R t m Astart Bstart Sstart len i => PrimitivePair.pair.mk
                                    (m =* array scalar (word.of_Z 8) (word.add Sstart (word.mul (word.of_Z 8) i)) S * R /\
                                       word.unsigned len - word.unsigned i = Z.of_nat (List.length S) /\

                                    l = List.length S )
                                    (fun t' m' Astart' Bstart' Sstart' len' i' =>
                                       (
                                     t = t' /\ Astart = Astart' /\ Bstart = Bstart' /\ Sstart = Sstart' /\ len = len' /\
                                     m' =* array scalar (word.of_Z 8) (word.add Sstart (word.mul (word.of_Z 8) i)) (zeros (word.unsigned len - word.unsigned i)) * R
                                     )
                                    )
               )
               lt _ _ _ _ _ _ _ _ _ _ _ _ _);
        cbn [reconstruct map.putmany_of_list HList.tuple.to_list
         HList.hlist.foralls HList.tuple.foralls
         HList.hlist.existss HList.tuple.existss
         HList.hlist.apply  HList.tuple.apply
         HList.hlist
         List.repeat Datatypes.length
         HList.polymorphic_list.repeat HList.polymorphic_list.length
         PrimitivePair.pair._1 PrimitivePair.pair._2] in *.

      {
 repeat straightline.
}
      {
 exact Wf_nat.lt_wf.
}
      {
 repeat straightline.
        subst i.
        replace (word.add Sstart (word.mul (word.of_Z 8) (word.of_Z 0))) with (Sstart) by ring.
        repeat split; try eauto.
        -
 ecancel_assumption.
        -
 rewrite word.unsigned_of_Z_0.
Lia.lia.
}

      {
 repeat straightline.
eexists.
