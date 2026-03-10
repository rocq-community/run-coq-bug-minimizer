
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "+implicit-core-hint-db,+implicits-in-term,+non-reversible-notation,+deprecated-intros-until-0,+deprecated-focus,+unused-intro-pattern,+variable-collision,+unexpected-implicit-declaration,+omega-is-deprecated,+deprecated-instantiate-syntax,+non-recursive,+undeclared-scope,+deprecated-hint-rewrite-without-locality,+deprecated-hint-without-locality,+deprecated-instance-without-locality,+deprecated-typeclasses-transparency-without-locality,-ltac2-missing-notation-var,unsupported-attributes" "-w" "-deprecated-native-compiler-option" "-native-compiler" "ondemand" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/neural_net_interp/theories" "NeuralNetInterp" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-top" "NeuralNetInterp.TransformerLens.HookedTransformer.Module") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 947 lines to 454 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.0
   coqtop version runner-khfdxfugu-project-4504-concurrent-4:/builds/coq/coq/_build/default,(HEAD detached at 1ebb4b29b7) (1ebb4b29b76e4ef06e0dd82b9405e21a23d27252)
   Expected coqc runtime on this file: 17.768 sec
   Expected coqc peak memory usage on this file: 753820.0 kb *)









Require Corelib.Classes.CMorphisms.
Require Corelib.Classes.Morphisms_Prop.
Require Corelib.Program.Tactics.
Require Corelib.Program.Basics.
Require Corelib.Relations.Relation_Definitions.
Require Corelib.BinNums.IntDef.
Require Corelib.BinNums.NatDef.
Require Corelib.Init.Byte.
Require Corelib.BinNums.PosDef.
Require Corelib.Init.Sumbool.
Require Corelib.Array.PrimArray.
Require Corelib.Numbers.Cyclic.Int63.Sint63Axioms.
Require Corelib.Lists.ListDef.
Require Corelib.Array.ArrayAxioms.
Require Corelib.derive.Derive.
Require NeuralNetInterp.Util.Tactics.IsFloat.
Require NeuralNetInterp.Util.Tactics.IsUint63.
Require NeuralNetInterp.TransformerLens.HookedTransformer.
Import Stdlib.Floats.Floats.
Import Stdlib.Numbers.Cyclic.Int63.Uint63.
Import Stdlib.ZArith.ZArith.
Import NeuralNetInterp.Util.PrimitiveProd.
Import NeuralNetInterp.Util.Tactics.IsUint63.
Import NeuralNetInterp.Util.Tactics.IsFloat.
Import NeuralNetInterp.Util.Tactics.ClearAll.
Export NeuralNetInterp.Util.Default.
Export NeuralNetInterp.Util.Pointed.
Import NeuralNetInterp.Util.Arith.Classes.
Import NeuralNetInterp.Util.Arith.Instances.
Import NeuralNetInterp.Torch.Tensor.
Import NeuralNetInterp.TransformerLens.HookedTransformer.
Import Instances.Truncating.
#[local] Open Scope primproj_scope.

Module Model (cfg : Config).
Definition all_tokens {use_checkpoint : with_default "use_checkpoint" bool true}
    : tensor [(cfg.d_vocab ^ cfg.n_ctx)%core : N; cfg.n_ctx] RawIndexType. exact (let all_toks := Tensor.arange (start:=0) (Uint63.of_Z cfg.d_vocab) in
       let all_tokens := Tensor.cartesian_exp all_toks cfg.n_ctx in
       PArray.maybe_checkpoint all_tokens). Defined.
    Section __.
    End __.
    Section __.
    End __.
    Section __.
    End __.
    Section __.
    End __.
    Section __.
    End __.

  Module HookedTransformer.
    Section __.
      Context {r} {batch : Shape r} {pos}
        (s := (batch ::' pos)%shape)
        (resid_shape := (s ::' cfg.d_model)%shape)
        {A} {coer_float : has_coer float A} {coerZ : has_coer Z A}
        {addA : has_add A} {subA : has_sub A} {mulA : has_mul A} {divA : has_div A}
        {maxA : has_max A}
        {sqrtA : has_sqrt A} {expA : has_exp A}
        {use_checkpoint : with_default "use_checkpoint" bool true}.
Let coerA' (x : float) : A. exact (coer x). Defined.
      #[local] Coercion coerA' : float >-> A.
Let coer_ln_tensor : cfg.ln_tensor float -> cfg.ln_tensor A. exact (match cfg.normalization_type as nt return Config.ln_tensor_gen _ nt float -> Config.ln_tensor_gen _ nt A with
             | Some LN
             | Datatypes.None
               => fun x => x
             end). Defined.
      Definition coer_blocks_params
        := List.map
             (fun '((W_Q, W_K, W_V, W_O,
                      b_Q, b_K, b_V, b_O,
                      ln1_w, ln1_b) : cfg.block_params_type float)
              => ((W_Q:tensor _ A), (W_K:tensor _ A), (W_V:tensor _ A), (W_O:tensor _ A),
                   (b_Q:tensor _ A), (b_K:tensor _ A), (b_V:tensor _ A), (b_O:tensor _ A),
                   coer_ln_tensor ln1_w, coer_ln_tensor ln1_b)).
Definition logits (tokens : tensor s IndexType) : tensor (s ::' cfg.d_vocab_out) A. exact (HookedTransformer.logits
             (A:=A) (n_ctx:=cfg.n_ctx) (normalization_type:=cfg.normalization_type) cfg.eps
             cfg.W_E cfg.W_pos
             (coer_blocks_params cfg.blocks_params)
             (coer_ln_tensor cfg.ln_final_w) (coer_ln_tensor cfg.ln_final_b)
             cfg.W_U cfg.b_U
             tokens). Defined.
    End __.
  End HookedTransformer.

  
  Notation logits_all_tokens
    := (@HookedTransformer.logits 1 [Uint63.of_Z (Z.of_N (@pow N N N N_has_pow cfg.d_vocab cfg.n_ctx))] (of_Z (Z.of_N cfg.n_ctx)) float (@coer_refl float) coer_Z_float float_has_add float_has_sub float_has_mul float_has_div float_has_max float_has_sqrt float_has_exp true (@all_tokens true)).

  Definition logits_all_tokens_concrete : PArray.concrete_tensor _ float
    := PArray.concretize logits_all_tokens.
    Ltac mkApp f x :=
      lazymatch f with
      | fun y => ?f => constr:(match x with y => f end)
      end.

    Ltac set_step _ :=
      match goal with
      | [ H := context G[let s : ?T := ?v in @?f s] |- _ ]
        => lazymatch goal with
           | [ s' := v |- _ ]
             => let fs := mkApp f s' in
                let G' := context G[fs] in
                change G' in (value of H)
           | _
             => let s' := fresh s in
                pose v as s';
                let fs := mkApp f s' in
                let G' := context G[fs] in
                change G' in (value of H)
           end;
           cbv beta iota in H
      | [ H := context G[let s : ?T := ?v in _] |- _ ]
        => assert_fails is_var v;
           lazymatch goal with
           | [ s' := v |- _ ]
             => change v with s' in (value of H)
           | _
             => let s' := fresh s in
                pose v as s';
                change v with s' in (value of H)
           end;
           cbv beta iota in H
      | [ |- context G[let s : ?T := ?v in @?f s] ]
        => lazymatch goal with
           | [ s' := v |- _ ]
             => let fs := mkApp f s' in
                let G' := context G[fs] in
                change G'
           | _
             => let s' := fresh s in
                pose v as s';
                let fs := mkApp f s' in
                let G' := context G[fs] in
                change G'
           end;
           cbv beta iota
      | [ |- context G[let s : ?T := ?v in _] ]
        => assert_fails is_var v;
           lazymatch goal with
           | [ s' := v |- _ ]
             => change v with s'
           | _
             => let s' := fresh s in
                pose v as s';
                change v with s'
           end;
           cbv beta iota
      end.
    Ltac subst_cleanup _ :=
      repeat match goal with
        | [ H := ?v |- _ ] => is_var v; subst H
        | [ H := ?x, H' := ?y |- _ ] => constr_eq x y; change H' with H in *; clear H'
        end.
    Ltac lift_lets _ := repeat set_step (); subst_cleanup ().

    Ltac set_checkpoint _ :=
      repeat match goal with
        | [ H := context G[?x] |- _ ]
          => lazymatch x with PArray.checkpoint _ => idtac | PArray.maybe_checkpoint _ => idtac end;
             lazymatch (eval cbv delta [H] in H) with
             | x => fail
             | _ => idtac
             end;
             let x' := fresh "t" in
             pose x as x';
             let G' := context G[x'] in
             change G' in (value of H)
        | [ |- context G[?x] ]
          => lazymatch x with PArray.checkpoint _ => idtac | PArray.maybe_checkpoint _ => idtac end;
             let x' := fresh "t" in
             pose x as x';
             let G' := context G[x'] in
             change G'
        end.

    Ltac subst_local_cleanup _ :=
      repeat match goal with
        | [ H := [ _ ] : ?T |- _ ]
          => lazymatch T with
             | Shape _ => idtac
             | forall b, Shape _ => idtac
             | Slice.Concrete.Slice _ => idtac
             | IndexType => idtac
             | Slice.Slice _ => idtac
             | PolymorphicOption.option IndexType => idtac
             | PolymorphicOption.option int => idtac
             end;
             subst H
        | [ H := ?v |- _ ]
          => lazymatch v with
             | fun f x => f x => idtac
             | fun x => x => idtac
             | _ => first [ is_uint63 v | is_float v ]
             end;
             subst H
        | [ H := [ fun x => coer x ] : float -> float |- _ ] => cbv in H; subst H
        | [ H := [ coer point ] : float |- _ ] => cbv in H; subst H
        | [ H := [ coer_Z_float _ ] : float |- _ ] => cbv in H; subst H
        | [ H := [ _ ] : ?T |- _ ]
          => lazymatch T with
             | has_one int => idtac
             end;
             cbv in H; subst H
        end;
      cbv beta iota in *.

    Ltac reduce _ :=
      cbv beta iota delta [
          repeat repeat' reduce_axis_m1 map map' reduce_axis_m1' reshape_app_combine broadcast broadcast' reshape_app_combine' RawIndex.uncurry_radd RawIndex.split_radd reshape_snoc_split reshape_app_split reshape_app_split' RawIndex.curry_radd RawIndex.combine_radd RawIndex.hd RawIndex.tl
            adjust_index_for
            Nat.radd
            Classes.sqrt Classes.add Classes.sub Classes.opp Classes.mul Classes.div Classes.sqr Classes.one Classes.zero Classes.exp Classes.eqb Classes.neqb Classes.ltb Classes.leb Classes.matmul
            bool_has_one bool_has_zero bool_has_eqb
            int_has_one Uint63.int_has_ltb PrimInt63.ltb
            Sint63.max Sint63.int_has_leb lesb
            has_default_max_leb
            lift_coer_has_zero lift_coer_has_one
            Z_has_zero Z_has_one
            float_has_zero float_has_one
            coer_refl coer_tensor
            int_has_add
            Tensor.get Tensor.raw_get Slicing.SliceIndex.SliceIndexType.slice Slice.invert_index Slice.concretize PolymorphicOption.Option.sequence_return Slice.step Slice.start Slice.stop Slice.Concrete.length Slicing.SliceIndex.slice Slicing.FancyIndex.slice Slicing.FancyIndex.slice_ Slicing.FancyIndex.broadcast Slicing.FancyIndex.FancyIndexType.broadcast Slice.Concrete.normalize Slice.Concrete.step Slice.Concrete.stop Slice.Concrete.start Slicing.broadcast_one_index'' Slicing.broadcast_one_index'
            Slice.Concrete.step Slice.Concrete.stop Slice.Concrete.base_len
            Slicing.inject_int
            RawIndex.snoc RawIndex.nil
            map_dep map2 map2' map3
            ones tril to_bool
            Shape.tl Shape.hd Shape.snoc Shape.nil
            item int_has_eqb raw_get Shape.broadcast2 Shape.map2
        ] in *;
      cbn beta iota delta [fst snd Primitive.fst Primitive.snd] in *.
    Ltac do_red _ :=
      reduce ();
      lift_lets (); set_checkpoint (); subst_local_cleanup ().
    

    Ltac red_normalization_type_layers _ :=
      cbv beta iota delta [logits_all_tokens_concrete logits_all_tokens HookedTransformer.coer_blocks_params] in *;
      lift_lets (); set_checkpoint ().

    Ltac red_early_layers _ :=
      cbv beta iota delta [HookedTransformer.HookedTransformer.logits HookedTransformer.Unembed.forward HookedTransformer.HookedTransformer.resid_postembed HookedTransformer.HookedTransformer.pos_embed HookedTransformer.HookedTransformer.embed HookedTransformer.Embed.forward HookedTransformer.PosEmbed.forward HookedTransformer.resid_postembed all_tokens] in *;
      lift_lets (); set_checkpoint ().
    Ltac red_blocks_layers_1 _ :=
      cbv beta iota delta [HookedTransformer.HookedTransformer.blocks_cps HookedTransformer.HookedTransformer.blocks] in *;
      lift_lets (); set_checkpoint ().

    Ltac red_blocks_layers_2 _ :=
      cbv beta iota delta [TransformerBlock.ln1 LayerNorm.forward TransformerBlock.query_input TransformerBlock.key_input TransformerBlock.value_input TransformerBlock.add_head_dimension LayerNorm.scale LayerNorm.rescale LayerNorm.linpart LayerNorm.postrescale] in *;
      lift_lets (); set_checkpoint (); do_red ().
    Ltac red_blocks_layers_3 _ :=
      cbv beta iota delta [Attention.attn_out Attention.z Attention.v Attention.pattern] in *;
      lift_lets (); set_checkpoint (); do_red ().
    Ltac red_blocks_layers_4 _ :=
      cbv beta iota delta [HookedTransformer.Attention.masked_attn_scores HookedTransformer.Attention.attn_scores Attention.einsum_input Attention.q Attention.k] in *;
      lift_lets (); set_checkpoint (); do_red ().
    Ltac red_blocks_layers_5 _ :=
      cbv [Attention.apply_causal_mask] in *;
      repeat (cbv beta iota zeta in *; do_red ()).
    Ltac red_blocks_layers_6 _ :=
      cbv beta iota delta [softmax_dim_m1] in *;
      lift_lets (); do_red ().
    Ltac red_ops _ :=
      cbv beta iota delta [Bool.where_ where_
                             tensor_add tensor_sub tensor_mul tensor_div_by tensor_sqrt tensor_matmul diagonal mm
                             float_has_add float_has_sub float_has_mul float_has_div float_has_exp float_has_sqrt
                             coer coer_Z_float] in *;
      do_red ().
    Ltac red_sum _ :=
      cbv [Wf_Uint63.Reduction.sum Wf_Uint63.map_reduce Wf_Uint63.for_loop_lt Classes.eqb PrimInt63.eqb Monad.bind Wf_Uint63.get Wf_Uint63.LoopBody_Monad Wf_Uint63.run_body Wf_Uint63.bind Wf_Uint63.set Wf_Uint63.update Wf_Uint63.Reduction.mean Classes.int_div Uint63.int_has_int_div Classes.div coer coer_Z_float Classes.sub int_has_sub] in *.

    Ltac red_late_layers_1 _ :=
      cbv beta iota delta [HookedTransformer.HookedTransformer.ln_final HookedTransformer.HookedTransformer.unembed LayerNorm.forward HookedTransformer.Unembed.forward Unembed.forward] in *;
      lift_lets (); set_checkpoint ().
    Ltac red_late_layers_2 _ :=
      cbv beta iota delta [LayerNorm.linpart LayerNorm.scale LayerNorm.rescale LayerNorm.postrescale] in *;
      lift_lets (); set_checkpoint (); do_red ().

  Derive logits_all_tokens_concrete_opt
    SuchThat (logits_all_tokens_concrete_opt = logits_all_tokens_concrete)
    As logits_all_tokens_concrete_opt_eq.
  Proof.
    Unshelve.
    2:{
 pose proof cfg.blocks_params as blocks_params.
        pose proof cfg.ln_final_w as ln_final_w.
        pose proof cfg.ln_final_b as ln_final_b.
        destruct cfg.normalization_type as [nt|]; [ destruct nt | ].
        all: shelve.
}
    red_normalization_type_layers ().
    subst blocks_params ln_final_b ln_final_w.
    set (blocks_params := cfg.blocks_params) in *.
    set (ln_final_w := cfg.ln_final_w) in *.
    set (ln_final_b := cfg.ln_final_b) in *.
    clearbody blocks_params ln_final_w ln_final_b.
    assert_succeeds destruct cfg.normalization_type.
    cbv beta zeta in *.
    red_early_layers ().
    red_blocks_layers_1 ().
    subst_local_cleanup ().
    rewrite List.firstn_all, List.map_map.
    lazymatch goal with
    | [ |- _ = ?concretize (List.fold_right ?k ?f ?ls ?resid) ]
      => let f' := open_constr:(_) in
         let ls' := open_constr:(_) in
         let Hf := fresh in
         let Hls := fresh in
         let f'' := fresh in
         pose f' as f'';
         assert (Hf : forall x, f'' x = f x /\ f'' = f);
         [ subst f'' | replace f with f''; [ subst f'' | clearbody f''; clear -Hf; abstract apply Hf, broadcast', point ]  ];
         [ | replace ls with ls'
         | .. ]
    end.
    3:{
 repeat match goal with H : _ |- _ => clear H end.
        instantiate (1:=ltac:(destruct cfg.normalization_type as [nt|]; [ destruct nt | ])).
        destruct cfg.normalization_type as [nt|]; [ destruct nt | ].
        all: cbv beta iota zeta; subst_local_cleanup ().
        all: cbv beta iota delta [TransformerBlock.attn_only_out]; lift_lets (); set_checkpoint ().
        all: match goal with
             | [ |- _ = List.map ?f _ ]
               => let f' := open_constr:(_) in
                  let f'' := fresh in
                  pose f' as f'';
                  let H := fresh in
                  assert (H : forall x y, f'' x y = f x y /\ f'' = f);
                  [ subst f''; intros ??
                  | replace f with f''; [ subst f''; shelve | clearbody f''; clear -H; shelve ] ]
             end.
        all: lift_lets (); set_checkpoint ().
        all: red_blocks_layers_2 ().
        all: red_blocks_layers_3 ().
        all: red_blocks_layers_4 ().
        all: red_blocks_layers_5 ().
        all: red_blocks_layers_6 ().
        all: red_ops ().
        all: red_sum ().
        all: clear_all.
        all: repeat lazymatch goal with
               | [ H := ?x |- _ ]
                 => revert H;
                    lazymatch goal with
                    | [ |- let H := ?x in ?lhs = ?rhs /\ ?lhs' = ?rhs' ]
                      => change (lhs = (let H := x in rhs) /\ lhs' = (let H := x in rhs'))
                    end
               end.
        all: lazymatch goal with |- ?e ?x ?y = _ /\ _ => revert x y end.
        Unshelve.
        all: shelve_unifiable.
        all: lazymatch goal with
             | [ |- forall x y, ?lhs x y = @?rhs x y /\ ?lhs = _ ]
               => change (forall x y, lhs x y = rhs x y /\ lhs = rhs); instantiate (1:=rhs); split; abstract reflexivity
             | _ => idtac
             end.
        all: cbv beta iota.
        all: repeat match goal with H : _ |- ?ev = _ => is_evar ev; clear H end.
        all: lazymatch goal with
             | [ |- ?ev = List.map _ _ ]
               => is_evar ev;
                  let rhs := lazymatch goal with |- _ = ?v => v end in
                  instantiate (1:=rhs); abstract reflexivity
             | [ H : forall x y, _ = _ /\ _ = _ |- _ = _ ] => abstract (apply H; repeat split; apply broadcast'; exact point)
             | _ => idtac
             end.
        shelve.
}
    {
 repeat match goal with H : _ |- _ => clear H end.
      instantiate (1:=ltac:(destruct cfg.normalization_type as [nt|]; [ destruct nt | ])).
      destruct cfg.normalization_type as [nt|]; [ destruct nt | ].
      all: intros.
      all: lift_lets (); subst_local_cleanup ().
      all: repeat match goal with H := Some _ |- _ => subst H end.
      all: repeat match goal with H := None |- _ => subst H end.
      all: cbv beta iota zeta.
      all: do_red ().
      all: red_late_layers_1 ().
      all: red_late_layers_2 ().
      all: red_ops ().
      all: red_sum ().
      all: do_red ().
      all: lazymatch goal with
           | [ |- context[Definitions.PrimFloat.of_Z ?z] ]
             => pose (Definitions.PrimFloat.of_Z z) as z';
                move z' at top;
                repeat match goal with
                  | [ H := context G[Definitions.PrimFloat.of_Z z] |- _ ]
                    => let G' := context G[z'] in
                       change G' in (value of H)
                  | [ |- context G[Definitions.PrimFloat.of_Z z] ]
                    => let G' := context G[z'] in
                       change G'
                  end
           | _ => idtac
           end.
      all: clear_all.
      all: repeat lazymatch goal with
             | [ H := ?x |- _ ]
               => revert H;
                  lazymatch goal with
                  | [ |- let H := ?x in ?lhs = ?rhs /\ ?lhs' = ?rhs' ]
                    => change (lhs = (let H := x in rhs) /\ lhs' = (let H := x in rhs'))
                  end
             end.
      all: lazymatch goal with |- ?e ?x = _ /\ _ => revert x end.
      Unshelve.
      all: shelve_unifiable.
      all: lazymatch goal with
           | [ |- forall x, ?lhs x = @?rhs x /\ ?lhs = _ ]
             => change (forall x, lhs x = rhs x /\ lhs = rhs); instantiate (1:=rhs); split; abstract reflexivity
           | _ => idtac
           end.
      all: cbv beta iota.
      all: shelve.
}
    all: cbv beta.
    all: do_red ().
    all: clear_all.
    cbv beta iota zeta in embed, pos_embed.
    destruct cfg.normalization_type as [nt|]; [ destruct nt | ].
    all: repeat match goal with H := Some _ |- _ => subst H end.
    all: repeat match goal with H := None |- _ => subst H end.
    all: cbv beta iota in *.
    all: red_ops (); do_red ().
    all: try subst logits_all_tokens_concrete_opt.
    all: repeat lazymatch goal with
           | [ H := ?x |- _ ]
             => revert H;
                lazymatch goal with
                | [ |- let H := ?x in ?lhs = ?rhs ]
                  => change (lhs = (let H := x in rhs))
                end
           end.
    all: lazymatch goal with
         | [ |- ?ev = ?v ]
           => tryif is_evar ev
             then instantiate (1:=v); abstract reflexivity
             else idtac
         end.
  Qed.
