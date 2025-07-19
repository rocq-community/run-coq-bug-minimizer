
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-native-compiler" "no" "-w" "-undeclared-scope" "-w" "-omega-is-deprecated" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/lib" "compcert.lib" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/common" "compcert.common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/x86_32" "compcert.x86_32" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/x86" "compcert.x86" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/backend" "compcert.backend" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/cfrontend" "compcert.cfrontend" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/driver" "compcert.driver" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/cparser" "compcert.cparser" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/compcert/export" "compcert.export" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Flocq" "Flocq" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/MenhirLib" "MenhirLib" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 496 lines to 77 lines, then from 90 lines to 1459 lines, then from 1465 lines to 86 lines, then from 99 lines to 1332 lines, then from 1337 lines to 91 lines, then from 104 lines to 1764 lines, then from 1769 lines to 425 lines, then from 438 lines to 3101 lines, then from 3107 lines to 428 lines, then from 441 lines to 1100 lines, then from 1106 lines to 444 lines, then from 457 lines to 1397 lines, then from 1403 lines to 462 lines, then from 475 lines to 1478 lines, then from 1484 lines to 447 lines, then from 460 lines to 1271 lines, then from 1276 lines to 449 lines, then from 462 lines to 1255 lines, then from 1259 lines to 454 lines, then from 467 lines to 972 lines, then from 978 lines to 676 lines, then from 684 lines to 458 lines, then from 471 lines to 1655 lines, then from 1661 lines to 463 lines, then from 476 lines to 1138 lines, then from 1144 lines to 467 lines, then from 480 lines to 1180 lines, then from 1186 lines to 492 lines, then from 505 lines to 1654 lines, then from 1660 lines to 496 lines, then from 509 lines to 1135 lines, then from 1141 lines to 486 lines, then from 499 lines to 3493 lines, then from 3499 lines to 491 lines, then from 504 lines to 2326 lines, then from 2331 lines to 641 lines, then from 654 lines to 1408 lines, then from 1413 lines to 667 lines, then from 680 lines to 1210 lines, then from 1216 lines to 675 lines, then from 688 lines to 2565 lines, then from 2571 lines to 3302 lines, then from 3258 lines to 672 lines, then from 685 lines to 2398 lines, then from 2402 lines to 678 lines, then from 691 lines to 1398 lines, then from 1403 lines to 695 lines, then from 708 lines to 2755 lines, then from 2759 lines to 681 lines, then from 694 lines to 1830 lines, then from 1835 lines to 698 lines, then from 711 lines to 1791 lines, then from 1797 lines to 703 lines, then from 716 lines to 1426 lines, then from 1432 lines to 694 lines, then from 707 lines to 3182 lines, then from 3188 lines to 695 lines, then from 708 lines to 6495 lines, then from 0 lines to 6495 lines, then from 6505 lines to 929 lines, then from 940 lines to 2071 lines, then from 2077 lines to 662 lines, then from 674 lines to 644 lines, then from 657 lines to 1369 lines, then from 1368 lines to 649 lines, then from 662 lines to 1184 lines, then from 1190 lines to 654 lines, then from 667 lines to 2430 lines, then from 2436 lines to 660 lines, then from 673 lines to 1573 lines, then from 1578 lines to 664 lines, then from 677 lines to 1722 lines, then from 1727 lines to 669 lines, then from 682 lines to 1220 lines, then from 1226 lines to 672 lines, then from 685 lines to 2711 lines, then from 2717 lines to 677 lines, then from 690 lines to 1818 lines, then from 1822 lines to 681 lines, then from 694 lines to 1732 lines, then from 1738 lines to 713 lines, then from 726 lines to 1223 lines, then from 1229 lines to 711 lines, then from 724 lines to 2637 lines, then from 2643 lines to 1875 lines, then from 1841 lines to 720 lines, then from 733 lines to 1799 lines, then from 1805 lines to 718 lines, then from 731 lines to 3423 lines, then from 3428 lines to 723 lines, then from 736 lines to 1448 lines, then from 1454 lines to 726 lines, then from 739 lines to 3181 lines, then from 3187 lines to 732 lines, then from 745 lines to 1964 lines, then from 1969 lines to 732 lines, then from 745 lines to 1627 lines, then from 1632 lines to 787 lines, then from 800 lines to 2437 lines, then from 2443 lines to 883 lines, then from 896 lines to 3664 lines, then from 3669 lines to 794 lines, then from 807 lines to 1540 lines, then from 1546 lines to 795 lines, then from 808 lines to 1809 lines, then from 1814 lines to 1070 lines, then from 1048 lines to 869 lines, then from 882 lines to 1531 lines, then from 1536 lines to 998 lines, then from 1011 lines to 1265 lines, then from 1271 lines to 998 lines, then from 1011 lines to 1610 lines, then from 1616 lines to 885 lines, then from 898 lines to 1642 lines, then from 1648 lines to 908 lines, then from 921 lines to 980 lines, then from 986 lines to 918 lines, then from 931 lines to 3780 lines, then from 3785 lines to 929 lines, then from 942 lines to 2544 lines, then from 2549 lines to 1347 lines, then from 1360 lines to 2393 lines, then from 2399 lines to 1384 lines, then from 1397 lines to 2542 lines, then from 2548 lines to 1550 lines, then from 1563 lines to 5008 lines, then from 5014 lines to 2512 lines, then from 2478 lines to 1539 lines, then from 1552 lines to 2806 lines, then from 2810 lines to 1632 lines, then from 1645 lines to 4215 lines, then from 4220 lines to 1742 lines, then from 1755 lines to 3947 lines, then from 3952 lines to 1776 lines, then from 1789 lines to 4090 lines, then from 4096 lines to 1851 lines, then from 1864 lines to 2462 lines, then from 2468 lines to 1940 lines, then from 1953 lines to 4179 lines, then from 4180 lines to 3718 lines, then from 3639 lines to 1990 lines, then from 2003 lines to 6961 lines, then from 6967 lines to 3312 lines, then from 3325 lines to 4930 lines, then from 4935 lines to 2047 lines, then from 2060 lines to 3504 lines, then from 3510 lines to 2053 lines, then from 2066 lines to 5154 lines, then from 5160 lines to 2070 lines *)
(* coqc version 9.2+alpha compiled with OCaml 4.14.2
   coqtop version 9.2+alpha
   Expected coqc runtime on this file: 0.881 sec *)
Require compcert.cfrontend.Ctypes.
Require Stdlib.funind.FunInd.
Import compcert.lib.Coqlib.
Import compcert.lib.Integers.
Import compcert.lib.Floats.
Definition block : Type.
exact (positive).
Defined.



Inductive val: Type :=
  | Vundef: val
  | Vint: int -> val
  | Vlong: int64 -> val
  | Vfloat: float -> val
  | Vsingle: float32 -> val
  | Vptr: block -> ptrofs -> val.

Definition Vnullptr :=
  if Archi.ptr64 then Vlong Int64.zero else Vint Int.zero.

Definition Vptrofs (n: ptrofs) :=
  if Archi.ptr64 then Vlong (Ptrofs.to_int64 n) else Vint (Ptrofs.to_int n).

Inductive quantity : Type := Q32 | Q64.

Inductive memval: Type :=
  | Undef: memval
  | Byte: byte -> memval
  | Fragment: val -> quantity -> nat -> memval.

Inductive permission: Type :=
  | Freeable: permission
  | Writable: permission
  | Readable: permission
  | Nonempty: permission.

Inductive perm_order: permission -> permission -> Prop :=
  | perm_refl:  forall p, perm_order p p
  | perm_F_any: forall p, perm_order Freeable p
  | perm_W_R:   perm_order Writable Readable
  | perm_any_N: forall p, perm_order p Nonempty.

Inductive perm_kind: Type :=
  | Max: perm_kind
  | Cur: perm_kind.

Module Type MEM.

End MEM.
Import compcert.lib.Maps.
Import compcert.common.AST.

Local Notation "a # b" := (PMap.get b a) (at level 1).

Module Mem <: MEM.

Definition perm_order'' (po1 po2: option permission) :=
  match po1, po2 with
  | Some p1, Some p2 => perm_order p1 p2
  | _, None => True
  | None, Some _ => False
 end.

Record mem' : Type := mkmem {
  mem_contents: PMap.t (ZMap.t memval);
  mem_access: PMap.t (Z -> perm_kind -> option permission);

  nextblock: block;
  access_max:
    forall b ofs, perm_order'' (mem_access#b ofs Max) (mem_access#b ofs Cur);
  nextblock_noaccess:
    forall b ofs k, ~(Plt b nextblock) -> mem_access#b ofs k = None;
  contents_default:
    forall b, fst mem_contents#b = Undef
}.

Definition mem := mem'.

Program Definition empty: mem :=
  mkmem (PMap.init (ZMap.init Undef))
        (PMap.init (fun ofs k => None))
        1%positive _ _ _.
Definition loadv (chunk: memory_chunk) (m: mem) (addr: val) : option val.
Admitted.

End Mem.

Notation mem := Mem.mem.
Import compcert.cfrontend.Ctypes.

Inductive unary_operation : Type :=
  | Onotbool : unary_operation
  | Onotint : unary_operation
  | Oneg : unary_operation
  | Oabsfloat : unary_operation.

Inductive binary_operation : Type :=
  | Oadd : binary_operation
  | Osub : binary_operation
  | Omul : binary_operation
  | Odiv : binary_operation
  | Omod : binary_operation
  | Oand : binary_operation
  | Oor : binary_operation
  | Oxor : binary_operation
  | Oshl : binary_operation
  | Oshr : binary_operation
  | Oeq: binary_operation
  | One: binary_operation
  | Olt: binary_operation
  | Ogt: binary_operation
  | Ole: binary_operation
  | Oge: binary_operation.

Inductive incr_or_decr : Type := Incr | Decr.
Definition sem_cast (v: val) (t1 t2: type) (m: mem): option val.
Admitted.
Definition bool_val (v: val) (t: type) (m: mem) : option bool.
Admitted.
Definition sem_unary_operation
            (op: unary_operation) (v: val) (ty: type) (m: mem): option val.
Admitted.
Definition sem_binary_operation
    (cenv: composite_env)
    (op: binary_operation)
    (v1: val) (t1: type) (v2: val) (t2:type)
    (m: mem): option val.
Admitted.
Definition chunk_for_carrier (sz: intsize) : memory_chunk.
Admitted.
Definition bitsize_carrier (sz: intsize) : Z.
Admitted.
Definition bitfield_extract (sz: intsize) (sg: signedness) (pos width: Z) (c: int) : int.
Admitted.

Inductive load_bitfield: type -> intsize -> signedness -> Z -> Z -> mem -> val -> val -> Prop :=
  | load_bitfield_intro: forall sz sg1 attr sg pos width m addr c,
      0 <= pos -> 0 < width <= bitsize_intsize sz -> pos + width <= bitsize_carrier sz ->
      sg1 = (if zlt width (bitsize_intsize sz) then Signed else sg) ->
      Mem.loadv (chunk_for_carrier sz) m addr = Some (Vint c) ->
      load_bitfield (Tint sz sg1 attr) sz sg pos width m addr
                    (Vint (bitfield_extract sz sg pos width c)).

Module Export compcert_DOT_cfrontend_DOT_Csyntax_WRAPPED.
Module Export Csyntax.

Inductive expr : Type :=
  | Eval (v: val) (ty: type)
  | Evar (x: ident) (ty: type)
  | Efield (l: expr) (f: ident) (ty: type)

  | Evalof (l: expr) (ty: type)
  | Ederef (r: expr) (ty: type)
  | Eaddrof (l: expr) (ty: type)
  | Eunop (op: unary_operation) (r: expr) (ty: type)

  | Ebinop (op: binary_operation) (r1 r2: expr) (ty: type)

  | Ecast (r: expr) (ty: type)
  | Eseqand (r1 r2: expr) (ty: type)
  | Eseqor (r1 r2: expr) (ty: type)
  | Econdition (r1 r2 r3: expr) (ty: type)
  | Esizeof (ty': type) (ty: type)
  | Ealignof (ty': type) (ty: type)
  | Eassign (l: expr) (r: expr) (ty: type)
  | Eassignop (op: binary_operation) (l: expr) (r: expr) (tyres ty: type)

  | Epostincr (id: incr_or_decr) (l: expr) (ty: type)

  | Ecomma (r1 r2: expr) (ty: type)
  | Ecall (r1: expr) (rargs: exprlist) (ty: type)

  | Ebuiltin (ef: external_function) (tyargs: list type) (rargs: exprlist) (ty: type)

  | Eloc (b: block) (ofs: ptrofs) (bf: bitfield) (ty: type)

  | Eparen (r: expr) (tycast: type) (ty: type)

with exprlist : Type :=
  | Enil
  | Econs (r1: expr) (rl: exprlist).
Definition typeof (a: expr) : type.
Admitted.

Definition label := ident.

Inductive statement : Type :=
  | Sskip : statement
  | Sdo : expr -> statement
  | Ssequence : statement -> statement -> statement
  | Sifthenelse : expr  -> statement -> statement -> statement
  | Swhile : expr -> statement -> statement
  | Sdowhile : expr -> statement -> statement
  | Sfor: statement -> expr -> statement -> statement -> statement
  | Sbreak : statement
  | Scontinue : statement
  | Sreturn : option expr -> statement
  | Sswitch : expr -> labeled_statements -> statement
  | Slabel : label -> statement -> statement
  | Sgoto : label -> statement

with labeled_statements : Type :=
  | LSnil: labeled_statements
  | LScons: option Z -> statement -> labeled_statements -> labeled_statements.

Record function : Type := mkfunction {
  fn_return: type;
  fn_callconv: calling_convention;
  fn_params: list (ident * type);
  fn_vars: list (ident * type);
  fn_body: statement
}.

Definition fundef := Ctypes.fundef function.
Definition type_of_fundef (f: fundef) : type.
Admitted.

Definition program := Ctypes.program function.

End Csyntax.
Module Export compcert.
Module Export cfrontend.
Module Export Csyntax.
Include compcert_DOT_cfrontend_DOT_Csyntax_WRAPPED.Csyntax.
End Csyntax.
Import compcert.common.AST.

Set Implicit Arguments.

Module Export Senv.

Record t: Type := mksenv {

  find_symbol: ident -> option block;
  public_symbol: ident -> bool;
  invert_symbol: block -> option ident;
  block_is_volatile: block -> bool;
  nextblock: block;

  find_symbol_injective:
    forall id1 id2 b, find_symbol id1 = Some b -> find_symbol id2 = Some b -> id1 = id2;
  invert_find_symbol:
    forall id b, invert_symbol b = Some id -> find_symbol id = Some b;
  find_invert_symbol:
    forall id b, find_symbol id = Some b -> invert_symbol b = Some id;
  public_symbol_exists:
    forall id, public_symbol id = true -> exists b, find_symbol id = Some b;
  find_symbol_below:
    forall id b, find_symbol id = Some b -> Plt b nextblock;
  block_is_volatile_below:
    forall b, block_is_volatile b = true -> Plt b nextblock
}.

Module Export Genv.

Section GENV.

Variable F: Type.

Variable V: Type.

Record t: Type := mkgenv {
  genv_public: list ident;
  genv_symb: PTree.t block;
  genv_defs: PTree.t (globdef F V);
  genv_next: block;
  genv_symb_range: forall id b, PTree.get id genv_symb = Some b -> Plt b genv_next;
  genv_defs_range: forall b g, PTree.get b genv_defs = Some g -> Plt b genv_next;
  genv_vars_inj: forall id1 id2 b,
    PTree.get id1 genv_symb = Some b -> PTree.get id2 genv_symb = Some b -> id1 = id2
}.
Definition find_symbol (ge: t) (id: ident) : option block.
Admitted.
Definition symbol_address (ge: t) (id: ident) (ofs: ptrofs) : val.
Admitted.
Definition find_funct_ptr (ge: t) (b: block) : option F.
Admitted.
Definition add_globals (ge: t) (gl: list (ident * globdef F V)) : t.
Admitted.

Program Definition empty_genv (pub: list ident): t :=
  @mkgenv pub (PTree.empty _) (PTree.empty _) 1%positive _ _ _.

Definition globalenv (p: program F V) :=
  add_globals (empty_genv p.(prog_public)) p.(prog_defs).
Definition to_senv (ge: t) : Senv.t.
Admitted.

Section INITMEM.

Variable ge: t.
Fixpoint alloc_globals (m: mem) (gl: list (ident * globdef F V))
                       {struct gl} : option mem.
Admitted.

End INITMEM.

Definition init_mem (p: program F V) :=
  alloc_globals (globalenv p) Mem.empty p.(prog_defs).

End GENV.

End Genv.

Coercion Genv.to_senv: Genv.t >-> Senv.t.

Inductive eventval: Type :=
  | EVint: int -> eventval
  | EVlong: int64 -> eventval
  | EVfloat: float -> eventval
  | EVsingle: float32 -> eventval
  | EVptr_global: ident -> ptrofs -> eventval.

Inductive event: Type :=
  | Event_syscall: string -> list eventval -> eventval -> event
  | Event_vload: memory_chunk -> ident -> ptrofs -> eventval -> event
  | Event_vstore: memory_chunk -> ident -> ptrofs -> eventval -> event
  | Event_annot: string -> list eventval -> event.

Definition trace := list event.
Definition E0 : trace.
Admitted.
Definition Eapp (t1 t2: trace) : trace.
Admitted.

Infix "**" := Eapp (at level 60, right associativity).
Definition extcall_sem : Type.
exact (Senv.t -> list val -> mem -> trace -> val -> mem -> Prop).
Defined.
Definition external_call (ef: external_function): extcall_sem.
Admitted.

Section EVAL_BUILTIN_ARG.

Variable A: Type.
Variable ge: Senv.t.
Variable e: A -> val.
Variable sp: val.
Variable m: mem.
Definition eval_builtin_args (al: list (builtin_arg A)) (vl: list val) : Prop.
Admitted.

End EVAL_BUILTIN_ARG.
Module Export Smallstep.

Section CLOSURES.

Variable genv: Type.
Variable state: Type.

Variable step: genv -> state -> trace -> state -> Prop.

Inductive star (ge: genv): state -> trace -> state -> Prop :=
  | star_refl: forall s,
      star ge s E0 s
  | star_step: forall s1 t1 s2 t2 s3 t,
      step ge s1 t1 s2 -> star ge s2 t2 s3 -> t = t1 ** t2 ->
      star ge s1 t s3.

Inductive plus (ge: genv): state -> trace -> state -> Prop :=
  | plus_left: forall s1 t1 s2 t2 s3 t,
      step ge s1 t1 s2 -> star ge s2 t2 s3 -> t = t1 ** t2 ->
      plus ge s1 t s3.

End CLOSURES.

Record semantics : Type := Semantics_gen {
  state: Type;
  genvtype: Type;
  step : genvtype -> state -> trace -> state -> Prop;
  initial_state: state -> Prop;
  final_state: state -> int -> Prop;
  globalenv: genvtype;
  symbolenv: Senv.t
}.

Definition Semantics {state funtype vartype: Type}
                     (step: Genv.t funtype vartype -> state -> trace -> state -> Prop)
                     (initial_state: state -> Prop)
                     (final_state: state -> int -> Prop)
                     (globalenv: Genv.t funtype vartype) :=
  {| state := state;
     genvtype := Genv.t funtype vartype;
     step := step;
     initial_state := initial_state;
     final_state := final_state;
     globalenv := globalenv;
     symbolenv := Genv.to_senv globalenv |}.

Notation " 'Step' L " := (step L (globalenv L)) (at level 1) : smallstep_scope.
Notation " 'Star' L " := (star (step L) (globalenv L)) (at level 1) : smallstep_scope.
Notation " 'Plus' L " := (plus (step L) (globalenv L)) (at level 1) : smallstep_scope.
Open Scope smallstep_scope.

Record fsim_properties (L1 L2: semantics) (index: Type)
                       (order: index -> index -> Prop)
                       (match_states: index -> state L1 -> state L2 -> Prop) : Prop := {
    fsim_order_wf: well_founded order;
    fsim_match_initial_states:
      forall s1, initial_state L1 s1 ->
      exists i, exists s2, initial_state L2 s2 /\ match_states i s1 s2;
    fsim_match_final_states:
      forall i s1 s2 r,
      match_states i s1 s2 -> final_state L1 s1 r -> final_state L2 s2 r;
    fsim_simulation:
      forall s1 t s1', Step L1 s1 t s1' ->
      forall i s2, match_states i s1 s2 ->
      exists i', exists s2',
         (Plus L2 s2 t s2' \/ (Star L2 s2 t s2' /\ order i' i))
      /\ match_states i' s1' s2';
    fsim_public_preserved:
      forall id, Senv.public_symbol (symbolenv L2) id = Senv.public_symbol (symbolenv L1) id
  }.

Arguments fsim_properties: clear implicits.

Inductive forward_simulation (L1 L2: semantics) : Prop :=
  Forward_simulation (index: Type)
                     (order: index -> index -> Prop)
                     (match_states: index -> state L1 -> state L2 -> Prop)
                     (props: fsim_properties L1 L2 index order match_states).
Definition safe (L: semantics) (s: state L) : Prop.
Admitted.

Record bsim_properties (L1 L2: semantics) (index: Type)
                       (order: index -> index -> Prop)
                       (match_states: index -> state L1 -> state L2 -> Prop) : Prop := {
    bsim_order_wf: well_founded order;
    bsim_initial_states_exist:
      forall s1, initial_state L1 s1 -> exists s2, initial_state L2 s2;
    bsim_match_initial_states:
      forall s1 s2, initial_state L1 s1 -> initial_state L2 s2 ->
      exists i, exists s1', initial_state L1 s1' /\ match_states i s1' s2;
    bsim_match_final_states:
      forall i s1 s2 r,
      match_states i s1 s2 -> safe L1 s1 -> final_state L2 s2 r ->
      exists s1', Star L1 s1 E0 s1' /\ final_state L1 s1' r;
    bsim_progress:
      forall i s1 s2,
      match_states i s1 s2 -> safe L1 s1 ->
      (exists r, final_state L2 s2 r) \/
      (exists t, exists s2', Step L2 s2 t s2');
    bsim_simulation:
      forall s2 t s2', Step L2 s2 t s2' ->
      forall i s1, match_states i s1 s2 -> safe L1 s1 ->
      exists i', exists s1',
         (Plus L1 s1 t s1' \/ (Star L1 s1 t s1' /\ order i' i))
      /\ match_states i' s1' s2';
    bsim_public_preserved:
      forall id, Senv.public_symbol (symbolenv L2) id = Senv.public_symbol (symbolenv L1) id
  }.

Arguments bsim_properties: clear implicits.

Inductive backward_simulation (L1 L2: semantics) : Prop :=
  Backward_simulation (index: Type)
                      (order: index -> index -> Prop)
                      (match_states: index -> state L1 -> state L2 -> Prop)
                      (props: bsim_properties L1 L2 index order match_states).

Section ATOMIC.

Variable L: semantics.
Definition atomic : semantics.
Admitted.

End ATOMIC.

End Smallstep.
Import compcert.cfrontend.Ctypes.
Import compcert.cfrontend.Csyntax.

Record genv := { genv_genv :> Genv.t fundef type; genv_cenv :> composite_env }.

Definition globalenv (p: program) :=
  {| genv_genv := Genv.globalenv p; genv_cenv := p.(prog_comp_env) |}.

Definition env := PTree.t (block * type).

Section SEMANTICS.

Variable ge: genv.

Inductive cont: Type :=
  | Kstop: cont
  | Kdo: cont -> cont
  | Kseq: statement -> cont -> cont
  | Kifthenelse: statement -> statement -> cont -> cont
  | Kwhile1: expr -> statement -> cont -> cont
  | Kwhile2: expr -> statement -> cont -> cont
  | Kdowhile1: expr -> statement -> cont -> cont
  | Kdowhile2: expr -> statement -> cont -> cont
  | Kfor2: expr -> statement -> statement -> cont -> cont
  | Kfor3: expr -> statement -> statement -> cont -> cont
  | Kfor4: expr -> statement -> statement -> cont -> cont
  | Kswitch1: labeled_statements -> cont -> cont
  | Kswitch2: cont -> cont
  | Kreturn: cont -> cont
  | Kcall: function ->
           env ->
           (expr -> expr) ->
           type ->
           cont -> cont.

Inductive state: Type :=
  | State
      (f: function)
      (s: statement)
      (k: cont)
      (e: env)
      (m: mem) : state
  | ExprState
      (f: function)
      (r: expr)
      (k: cont)
      (e: env)
      (m: mem) : state
  | Callstate
      (fd: fundef)
      (args: list val)
      (k: cont)
      (m: mem) : state
  | Returnstate
      (res: val)
      (k: cont)
      (m: mem) : state
  | Stuckstate.
Definition step (S: state) (t: trace) (S': state) : Prop.
Admitted.

End SEMANTICS.

Inductive initial_state (p: program): state -> Prop :=
  | initial_state_intro: forall b f m0,
      let ge := globalenv p in
      Genv.init_mem p = Some m0 ->
      Genv.find_symbol ge p.(prog_main) = Some b ->
      Genv.find_funct_ptr ge b = Some f ->
      type_of_fundef f = Tfunction nil type_int32s cc_default ->
      initial_state p (Callstate f nil Kstop m0).

Inductive final_state: state -> int -> Prop :=
  | final_state_intro: forall r m,
      final_state (Returnstate (Vint r) Kstop m) r.
Module Export Cstrategy.
Import compcert.common.Errors.

Definition semantics (p: program) :=
  let ge := globalenv p in
  Semantics_gen step (initial_state p) final_state ge ge.

Module Export compcert_DOT_cfrontend_DOT_Clight_WRAPPED.
Module Export Clight.

Inductive expr : Type :=
  | Econst_int: int -> type -> expr
  | Econst_float: float -> type -> expr
  | Econst_single: float32 -> type -> expr
  | Econst_long: int64 -> type -> expr
  | Evar: ident -> type -> expr
  | Etempvar: ident -> type -> expr
  | Ederef: expr -> type -> expr
  | Eaddrof: expr -> type -> expr
  | Eunop: unary_operation -> expr -> type -> expr
  | Ebinop: binary_operation -> expr -> expr -> type -> expr
  | Ecast: expr -> type -> expr
  | Efield: expr -> ident -> type -> expr
  | Esizeof: type -> type -> expr
  | Ealignof: type -> type -> expr.
Definition typeof (e: expr) : type.
Admitted.

Inductive statement : Type :=
  | Sskip : statement
  | Sassign : expr -> expr -> statement
  | Sset : ident -> expr -> statement
  | Scall: option ident -> expr -> list expr -> statement
  | Sbuiltin: option ident -> external_function -> list type -> list expr -> statement
  | Ssequence : statement -> statement -> statement
  | Sifthenelse : expr  -> statement -> statement -> statement
  | Sloop: statement -> statement -> statement
  | Sbreak : statement
  | Scontinue : statement
  | Sreturn : option expr -> statement
  | Sswitch : expr -> labeled_statements -> statement
  | Slabel : label -> statement -> statement
  | Sgoto : label -> statement

with labeled_statements : Type :=
  | LSnil: labeled_statements
  | LScons: option Z -> statement -> labeled_statements -> labeled_statements.

Record function : Type := mkfunction {
  fn_return: type;
  fn_callconv: calling_convention;
  fn_params: list (ident * type);
  fn_vars: list (ident * type);
  fn_temps: list (ident * type);
  fn_body: statement
}.

Definition fundef := Ctypes.fundef function.

Definition program := Ctypes.program function.

Definition temp_env := PTree.t val.

Inductive deref_loc (ty: type) (m: mem) (b: block) (ofs: ptrofs) :
                                             bitfield -> val -> Prop :=
  | deref_loc_value: forall chunk v,
      access_mode ty = By_value chunk ->
      Mem.loadv chunk m (Vptr b ofs) = Some v ->
      deref_loc ty m b ofs Full v
  | deref_loc_reference:
      access_mode ty = By_reference ->
      deref_loc ty m b ofs Full (Vptr b ofs)
  | deref_loc_copy:
      access_mode ty = By_copy ->
      deref_loc ty m b ofs Full (Vptr b ofs)
  | deref_loc_bitfield: forall sz sg pos width v,
      load_bitfield ty sz sg pos width m (Vptr b ofs) v ->
      deref_loc ty m b ofs (Bits sz sg pos width) v.

Section SEMANTICS.

Variable ge: genv.

Variable e: env.
Variable le: temp_env.
Variable m: mem.

Inductive eval_expr: expr -> val -> Prop :=
  | eval_Econst_int:   forall i ty,
      eval_expr (Econst_int i ty) (Vint i)
  | eval_Econst_float:   forall f ty,
      eval_expr (Econst_float f ty) (Vfloat f)
  | eval_Econst_single:   forall f ty,
      eval_expr (Econst_single f ty) (Vsingle f)
  | eval_Econst_long:   forall i ty,
      eval_expr (Econst_long i ty) (Vlong i)
  | eval_Etempvar:  forall id ty v,
      le!id = Some v ->
      eval_expr (Etempvar id ty) v
  | eval_Eaddrof: forall a ty loc ofs,
      eval_lvalue a loc ofs Full ->
      eval_expr (Eaddrof a ty) (Vptr loc ofs)
  | eval_Eunop:  forall op a ty v1 v,
      eval_expr a v1 ->
      sem_unary_operation op v1 (typeof a) m = Some v ->
      eval_expr (Eunop op a ty) v
  | eval_Ebinop: forall op a1 a2 ty v1 v2 v,
      eval_expr a1 v1 ->
      eval_expr a2 v2 ->
      sem_binary_operation ge op v1 (typeof a1) v2 (typeof a2) m = Some v ->
      eval_expr (Ebinop op a1 a2 ty) v
  | eval_Ecast:   forall a ty v1 v,
      eval_expr a v1 ->
      sem_cast v1 (typeof a) ty m = Some v ->
      eval_expr (Ecast a ty) v
  | eval_Esizeof: forall ty1 ty,
      eval_expr (Esizeof ty1 ty) (Vptrofs (Ptrofs.repr (sizeof ge ty1)))
  | eval_Ealignof: forall ty1 ty,
      eval_expr (Ealignof ty1 ty) (Vptrofs (Ptrofs.repr (alignof ge ty1)))
  | eval_Elvalue: forall a loc ofs bf v,
      eval_lvalue a loc ofs bf ->
      deref_loc (typeof a) m loc ofs bf v ->
      eval_expr a v

with eval_lvalue: expr -> block -> ptrofs -> bitfield -> Prop :=
  | eval_Evar_local:   forall id l ty,
      e!id = Some(l, ty) ->
      eval_lvalue (Evar id ty) l Ptrofs.zero Full
  | eval_Evar_global: forall id l ty,
      e!id = None ->
      Genv.find_symbol ge id = Some l ->
      eval_lvalue (Evar id ty) l Ptrofs.zero Full
  | eval_Ederef: forall a ty l ofs,
      eval_expr a (Vptr l ofs) ->
      eval_lvalue (Ederef a ty) l ofs Full
 | eval_Efield_struct:   forall a i ty l ofs id co att delta bf,
      eval_expr a (Vptr l ofs) ->
      typeof a = Tstruct id att ->
      ge.(genv_cenv)!id = Some co ->
      field_offset ge i (co_members co) = OK (delta, bf) ->
      eval_lvalue (Efield a i ty) l (Ptrofs.add ofs (Ptrofs.repr delta)) bf
 | eval_Efield_union:   forall a i ty l ofs id co att delta bf,
      eval_expr a (Vptr l ofs) ->
      typeof a = Tunion id att ->
      ge.(genv_cenv)!id = Some co ->
      union_field_offset ge i (co_members co) = OK (delta, bf) ->
      eval_lvalue (Efield a i ty) l (Ptrofs.add ofs (Ptrofs.repr delta)) bf.

End SEMANTICS.

End Clight.
Module Export compcert.
Module Export cfrontend.
Module Export Clight.
Include compcert_DOT_cfrontend_DOT_Clight_WRAPPED.Clight.
End Clight.
Definition makeseq (l: list statement) : statement.
Admitted.
Fixpoint eval_simpl_expr (a: expr) : option val.
Admitted.

Function makeif (a: expr) (s1 s2: statement) : statement :=
  match eval_simpl_expr a with
  | Some v =>
      match bool_val v (typeof a) Mem.empty with
      | Some b => if b then s1 else s2
      | None   => Sifthenelse a s1 s2
      end
  | None => Sifthenelse a s1 s2
  end.
Definition Ederef' (a: expr) (t: type) : expr.
Admitted.
Definition Eaddrof' (a: expr) (t: type) : expr.
Admitted.
Definition transl_incrdecr (id: incr_or_decr) (a: expr) (ty: type) : expr.
Admitted.
Definition make_set (bf: bitfield) (id: ident) (l: expr) : statement.
Admitted.
Definition make_assign (bf: bitfield) (l r: expr) : statement.
Admitted.
Definition make_assign_value (bf: bitfield) (r: expr): expr.
Admitted.

Inductive set_destination : Type :=
  | SDbase (tycast ty: type) (tmp: ident)
  | SDcons (tycast ty: type) (tmp: ident) (sd: set_destination).

Inductive destination : Type :=
  | For_val
  | For_effects
  | For_set (sd: set_destination).
Fixpoint do_set (sd: set_destination) (a: expr) : list statement.
Admitted.

Section SPEC.

Variable ce: composite_env.
Definition final (dst: destination) (a: expr) : list statement.
Admitted.
Definition tr_is_bitfield_access (l: expr) (bf: bitfield) : Prop.
Admitted.

Inductive tr_rvalof: type -> expr -> list statement -> expr -> list ident -> Prop :=
  | tr_rvalof_nonvol: forall ty a tmp,
      type_is_volatile ty = false ->
      tr_rvalof ty a nil a tmp
  | tr_rvalof_vol: forall ty a t bf tmp,
      type_is_volatile ty = true -> In t tmp ->
      tr_is_bitfield_access a bf ->
      tr_rvalof ty a (make_set bf t a :: nil) (Etempvar t ty) tmp.

Inductive tr_expr: temp_env -> destination -> Csyntax.expr -> list statement -> expr -> list ident -> Prop :=
  | tr_var: forall le dst id ty tmp,
      tr_expr le dst (Csyntax.Evar id ty)
              (final dst (Evar id ty)) (Evar id ty) tmp
  | tr_deref: forall le dst e1 ty sl1 a1 tmp,
      tr_expr le For_val e1 sl1 a1 tmp ->
      tr_expr le dst (Csyntax.Ederef e1 ty)
              (sl1 ++ final dst (Ederef' a1 ty)) (Ederef' a1 ty) tmp
  | tr_field: forall le dst e1 f ty sl1 a1 tmp,
      tr_expr le For_val e1 sl1 a1 tmp ->
      tr_expr le dst (Csyntax.Efield e1 f ty)
              (sl1 ++ final dst (Efield a1 f ty)) (Efield a1 f ty) tmp
  | tr_val_effect: forall le v ty any tmp,
      tr_expr le For_effects (Csyntax.Eval v ty) nil any tmp
  | tr_val_value: forall le v ty a tmp,
      typeof a = ty ->
      (forall tge e le' m,
         (forall id, In id tmp -> le'!id = le!id) ->
         eval_expr tge e le' m a v) ->
      tr_expr le For_val (Csyntax.Eval v ty)
                           nil a tmp
  | tr_val_set: forall le sd v ty a any tmp,
      typeof a = ty ->
      (forall tge e le' m,
         (forall id, In id tmp -> le'!id = le!id) ->
         eval_expr tge e le' m a v) ->
      tr_expr le (For_set sd) (Csyntax.Eval v ty)
                   (do_set sd a) any tmp
  | tr_sizeof: forall le dst ty' ty tmp,
      tr_expr le dst (Csyntax.Esizeof ty' ty)
                   (final dst (Esizeof ty' ty))
                   (Esizeof ty' ty) tmp
  | tr_alignof: forall le dst ty' ty tmp,
      tr_expr le dst (Csyntax.Ealignof ty' ty)
                   (final dst (Ealignof ty' ty))
                   (Ealignof ty' ty) tmp
  | tr_valof: forall le dst e1 ty tmp sl1 a1 tmp1 sl2 a2 tmp2,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_rvalof (Csyntax.typeof e1) a1 sl2 a2 tmp2 ->
      list_disjoint tmp1 tmp2 -> incl tmp1 tmp -> incl tmp2 tmp ->
      tr_expr le dst (Csyntax.Evalof e1 ty)
                    (sl1 ++ sl2 ++ final dst a2)
                    a2 tmp
  | tr_addrof: forall le dst e1 ty tmp sl1 a1,
      tr_expr le For_val e1 sl1 a1 tmp ->
      tr_expr le dst (Csyntax.Eaddrof e1 ty)
                   (sl1 ++ final dst (Eaddrof' a1 ty))
                   (Eaddrof' a1 ty) tmp
  | tr_unop: forall le dst op e1 ty tmp sl1 a1,
      tr_expr le For_val e1 sl1 a1 tmp ->
      tr_expr le dst (Csyntax.Eunop op e1 ty)
                   (sl1 ++ final dst (Eunop op a1 ty))
                   (Eunop op a1 ty) tmp
  | tr_binop: forall le dst op e1 e2 ty sl1 a1 tmp1 sl2 a2 tmp2 tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le For_val e2 sl2 a2 tmp2 ->
      list_disjoint tmp1 tmp2 -> incl tmp1 tmp -> incl tmp2 tmp ->
      tr_expr le dst (Csyntax.Ebinop op e1 e2 ty)
                   (sl1 ++ sl2 ++ final dst (Ebinop op a1 a2 ty))
                   (Ebinop op a1 a2 ty) tmp
  | tr_cast_effects: forall le e1 ty sl1 a1 any tmp,
      tr_expr le For_effects e1 sl1 a1 tmp ->
      tr_expr le For_effects (Csyntax.Ecast e1 ty)
                   sl1
                   any tmp
  | tr_cast_val: forall le dst e1 ty sl1 a1 tmp,
      tr_expr le For_val e1 sl1 a1 tmp ->
      tr_expr le dst (Csyntax.Ecast e1 ty)
                   (sl1 ++ final dst (Ecast a1 ty))
                   (Ecast a1 ty) tmp
  | tr_seqand_val: forall le e1 e2 ty sl1 a1 tmp1 t sl2 a2 tmp2 tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le (For_set (SDbase type_bool ty t)) e2 sl2 a2 tmp2 ->
      list_disjoint tmp1 tmp2 ->
      incl tmp1 tmp -> incl tmp2 tmp -> In t tmp ->
      tr_expr le For_val (Csyntax.Eseqand e1 e2 ty)
                    (sl1 ++ makeif a1 (makeseq sl2)
                                      (Sset t (Econst_int Int.zero ty)) :: nil)
                    (Etempvar t ty) tmp
  | tr_seqand_effects: forall le e1 e2 ty sl1 a1 tmp1 sl2 a2 tmp2 any tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le For_effects e2 sl2 a2 tmp2 ->
      list_disjoint tmp1 tmp2 ->
      incl tmp1 tmp -> incl tmp2 tmp ->
      tr_expr le For_effects (Csyntax.Eseqand e1 e2 ty)
                    (sl1 ++ makeif a1 (makeseq sl2) Sskip :: nil)
                    any tmp
  | tr_seqand_set: forall le sd e1 e2 ty sl1 a1 tmp1 t sl2 a2 tmp2 any tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le (For_set (SDcons type_bool ty t sd)) e2 sl2 a2 tmp2 ->
      list_disjoint tmp1 tmp2 ->
      incl tmp1 tmp -> incl tmp2 tmp -> In t tmp ->
      tr_expr le (For_set sd) (Csyntax.Eseqand e1 e2 ty)
                    (sl1 ++ makeif a1 (makeseq sl2)
                                      (makeseq (do_set sd (Econst_int Int.zero ty))) :: nil)
                    any tmp
  | tr_seqor_val: forall le e1 e2 ty sl1 a1 tmp1 t sl2 a2 tmp2 tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le (For_set (SDbase type_bool ty t)) e2 sl2 a2 tmp2 ->
      list_disjoint tmp1 tmp2 ->
      incl tmp1 tmp -> incl tmp2 tmp -> In t tmp ->
      tr_expr le For_val (Csyntax.Eseqor e1 e2 ty)
                    (sl1 ++ makeif a1 (Sset t (Econst_int Int.one ty))
                                      (makeseq sl2) :: nil)
                    (Etempvar t ty) tmp
  | tr_seqor_effects: forall le e1 e2 ty sl1 a1 tmp1 sl2 a2 tmp2 any tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le For_effects e2 sl2 a2 tmp2 ->
      list_disjoint tmp1 tmp2 ->
      incl tmp1 tmp -> incl tmp2 tmp ->
      tr_expr le For_effects (Csyntax.Eseqor e1 e2 ty)
                    (sl1 ++ makeif a1 Sskip (makeseq sl2) :: nil)
                    any tmp
  | tr_seqor_set: forall le sd e1 e2 ty sl1 a1 tmp1 t sl2 a2 tmp2 any tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le (For_set (SDcons type_bool ty t sd)) e2 sl2 a2 tmp2 ->
      list_disjoint tmp1 tmp2 ->
      incl tmp1 tmp -> incl tmp2 tmp -> In t tmp ->
      tr_expr le (For_set sd) (Csyntax.Eseqor e1 e2 ty)
                    (sl1 ++ makeif a1 (makeseq (do_set sd (Econst_int Int.one ty)))
                                      (makeseq sl2) :: nil)
                    any tmp
  | tr_condition_val: forall le e1 e2 e3 ty sl1 a1 tmp1 sl2 a2 tmp2 sl3 a3 tmp3 t tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le (For_set (SDbase ty ty t)) e2 sl2 a2 tmp2 ->
      tr_expr le (For_set (SDbase ty ty t)) e3 sl3 a3 tmp3 ->
      list_disjoint tmp1 tmp2 ->
      list_disjoint tmp1 tmp3 ->
      incl tmp1 tmp -> incl tmp2 tmp ->  incl tmp3 tmp -> In t tmp ->
      tr_expr le For_val (Csyntax.Econdition e1 e2 e3 ty)
                      (sl1 ++ makeif a1 (makeseq sl2) (makeseq sl3) :: nil)
                      (Etempvar t ty) tmp
  | tr_condition_effects: forall le e1 e2 e3 ty sl1 a1 tmp1 sl2 a2 tmp2 sl3 a3 tmp3 any tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le For_effects e2 sl2 a2 tmp2 ->
      tr_expr le For_effects e3 sl3 a3 tmp3 ->
      list_disjoint tmp1 tmp2 ->
      list_disjoint tmp1 tmp3 ->
      incl tmp1 tmp -> incl tmp2 tmp -> incl tmp3 tmp ->
      tr_expr le For_effects (Csyntax.Econdition e1 e2 e3 ty)
                       (sl1 ++ makeif a1 (makeseq sl2) (makeseq sl3) :: nil)
                       any tmp
  | tr_condition_set: forall le sd t e1 e2 e3 ty sl1 a1 tmp1 sl2 a2 tmp2 sl3 a3 tmp3 any tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le (For_set (SDcons ty ty t sd)) e2 sl2 a2 tmp2 ->
      tr_expr le (For_set (SDcons ty ty t sd)) e3 sl3 a3 tmp3 ->
      list_disjoint tmp1 tmp2 ->
      list_disjoint tmp1 tmp3 ->
      incl tmp1 tmp -> incl tmp2 tmp -> incl tmp3 tmp -> In t tmp ->
      tr_expr le (For_set sd) (Csyntax.Econdition e1 e2 e3 ty)
                       (sl1 ++ makeif a1 (makeseq sl2) (makeseq sl3) :: nil)
                       any tmp
  | tr_assign_effects: forall le e1 e2 ty sl1 a1 tmp1 sl2 a2 tmp2 bf any tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le For_val e2 sl2 a2 tmp2 ->
      list_disjoint tmp1 tmp2 ->
      incl tmp1 tmp -> incl tmp2 tmp ->
      tr_is_bitfield_access a1 bf ->
      tr_expr le For_effects (Csyntax.Eassign e1 e2 ty)
                      (sl1 ++ sl2 ++ make_assign bf a1 a2 :: nil)
                      any tmp
  | tr_assign_val: forall le dst e1 e2 ty sl1 a1 tmp1 sl2 a2 tmp2 t tmp ty1 ty2 bf,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le For_val e2 sl2 a2 tmp2 ->
      incl tmp1 tmp -> incl tmp2 tmp ->
      list_disjoint tmp1 tmp2 ->
      In t tmp -> ~In t tmp1 -> ~In t tmp2 ->
      ty1 = Csyntax.typeof e1 ->
      ty2 = Csyntax.typeof e2 ->
      tr_is_bitfield_access a1 bf ->
      tr_expr le dst (Csyntax.Eassign e1 e2 ty)
                   (sl1 ++ sl2 ++
                    Sset t (Ecast a2 ty1) ::
                    make_assign bf a1 (Etempvar t ty1) ::
                    final dst (make_assign_value bf (Etempvar t ty1)))
                   (make_assign_value bf (Etempvar t ty1)) tmp
  | tr_assignop_effects: forall le op e1 e2 tyres ty ty1 sl1 a1 tmp1 sl2 a2 tmp2 bf sl3 a3 tmp3 any tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le For_val e2 sl2 a2 tmp2 ->
      ty1 = Csyntax.typeof e1 ->
      tr_rvalof ty1 a1 sl3 a3 tmp3 ->
      list_disjoint tmp1 tmp2 -> list_disjoint tmp1 tmp3 -> list_disjoint tmp2 tmp3 ->
      incl tmp1 tmp -> incl tmp2 tmp -> incl tmp3 tmp ->
      tr_is_bitfield_access a1 bf ->
      tr_expr le For_effects (Csyntax.Eassignop op e1 e2 tyres ty)
                      (sl1 ++ sl2 ++ sl3 ++ make_assign bf a1 (Ebinop op a3 a2 tyres) :: nil)
                      any tmp
  | tr_assignop_val: forall le dst op e1 e2 tyres ty sl1 a1 tmp1 sl2 a2 tmp2 sl3 a3 tmp3 t bf tmp ty1,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_expr le For_val e2 sl2 a2 tmp2 ->
      tr_rvalof ty1 a1 sl3 a3 tmp3 ->
      list_disjoint tmp1 tmp2 -> list_disjoint tmp1 tmp3 -> list_disjoint tmp2 tmp3 ->
      incl tmp1 tmp -> incl tmp2 tmp -> incl tmp3 tmp ->
      In t tmp -> ~In t tmp1 -> ~In t tmp2 -> ~In t tmp3 ->
      ty1 = Csyntax.typeof e1 ->
      tr_is_bitfield_access a1 bf ->
      tr_expr le dst (Csyntax.Eassignop op e1 e2 tyres ty)
                   (sl1 ++ sl2 ++ sl3 ++
                    Sset t (Ecast (Ebinop op a3 a2 tyres) ty1) ::
                    make_assign bf a1 (Etempvar t ty1) ::
                    final dst (make_assign_value bf (Etempvar t ty1)))
                   (make_assign_value bf (Etempvar t ty1)) tmp
  | tr_postincr_effects: forall le id e1 ty ty1 sl1 a1 tmp1 sl2 a2 tmp2 bf any tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_rvalof ty1 a1 sl2 a2 tmp2 ->
      ty1 = Csyntax.typeof e1 ->
      incl tmp1 tmp -> incl tmp2 tmp ->
      list_disjoint tmp1 tmp2 ->
      tr_is_bitfield_access a1 bf ->
      tr_expr le For_effects (Csyntax.Epostincr id e1 ty)
                      (sl1 ++ sl2 ++ make_assign bf a1 (transl_incrdecr id a2 ty1) :: nil)
                      any tmp
  | tr_postincr_val: forall le dst id e1 ty sl1 a1 tmp1 bf t ty1 tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      incl tmp1 tmp -> In t tmp -> ~In t tmp1 ->
      ty1 = Csyntax.typeof e1 ->
      tr_is_bitfield_access a1 bf ->
      tr_expr le dst (Csyntax.Epostincr id e1 ty)
                   (sl1 ++ make_set bf t a1 ::
                    make_assign bf a1 (transl_incrdecr id (Etempvar t ty1) ty1) ::
                    final dst (Etempvar t ty1))
                   (Etempvar t ty1) tmp
  | tr_comma: forall le dst e1 e2 ty sl1 a1 tmp1 sl2 a2 tmp2 tmp,
      tr_expr le For_effects e1 sl1 a1 tmp1 ->
      tr_expr le dst e2 sl2 a2 tmp2 ->
      list_disjoint tmp1 tmp2 ->
      incl tmp1 tmp -> incl tmp2 tmp ->
      tr_expr le dst (Csyntax.Ecomma e1 e2 ty) (sl1 ++ sl2) a2 tmp
  | tr_call_effects: forall le e1 el2 ty sl1 a1 tmp1 sl2 al2 tmp2 any tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_exprlist le el2 sl2 al2 tmp2 ->
      list_disjoint tmp1 tmp2 ->
      incl tmp1 tmp -> incl tmp2 tmp ->
      tr_expr le For_effects (Csyntax.Ecall e1 el2 ty)
                   (sl1 ++ sl2 ++ Scall None a1 al2 :: nil)
                   any tmp
  | tr_call_val: forall le dst e1 el2 ty sl1 a1 tmp1 sl2 al2 tmp2 t tmp,
      dst <> For_effects ->
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_exprlist le el2 sl2 al2 tmp2 ->
      list_disjoint tmp1 tmp2 -> In t tmp ->
      incl tmp1 tmp -> incl tmp2 tmp ->
      tr_expr le dst (Csyntax.Ecall e1 el2 ty)
                   (sl1 ++ sl2 ++ Scall (Some t) a1 al2 :: final dst (Etempvar t ty))
                   (Etempvar t ty) tmp
  | tr_builtin_effects: forall le ef tyargs el ty sl al tmp1 any tmp,
      tr_exprlist le el sl al tmp1 ->
      incl tmp1 tmp ->
      tr_expr le For_effects (Csyntax.Ebuiltin ef tyargs el ty)
                   (sl ++ Sbuiltin None ef tyargs al :: nil)
                   any tmp
  | tr_builtin_val: forall le dst ef tyargs el ty sl al tmp1 t tmp,
      dst <> For_effects ->
      tr_exprlist le el sl al tmp1 ->
      In t tmp -> incl tmp1 tmp ->
      tr_expr le dst (Csyntax.Ebuiltin ef tyargs el ty)
                   (sl ++ Sbuiltin (Some t) ef tyargs al :: final dst (Etempvar t ty))
                   (Etempvar t ty) tmp
  | tr_paren_val: forall le e1 tycast ty sl1 a1 t tmp,
      tr_expr le (For_set (SDbase tycast ty t)) e1 sl1 a1 tmp ->
      In t tmp ->
      tr_expr le For_val (Csyntax.Eparen e1 tycast ty)
                       sl1
                       (Etempvar t ty) tmp
  | tr_paren_effects: forall le e1 tycast ty sl1 a1 tmp any,
      tr_expr le For_effects e1 sl1 a1 tmp ->
      tr_expr le For_effects (Csyntax.Eparen e1 tycast ty) sl1 any tmp
  | tr_paren_set: forall le t sd e1 tycast ty sl1 a1 tmp any,
      tr_expr le (For_set (SDcons tycast ty t sd)) e1 sl1 a1 tmp ->
      In t tmp ->
      tr_expr le (For_set sd) (Csyntax.Eparen e1 tycast ty) sl1 any tmp

with tr_exprlist: temp_env -> Csyntax.exprlist -> list statement -> list expr -> list ident -> Prop :=
  | tr_nil: forall le tmp,
      tr_exprlist le Csyntax.Enil nil nil tmp
  | tr_cons: forall le e1 el2 sl1 a1 tmp1 sl2 al2 tmp2 tmp,
      tr_expr le For_val e1 sl1 a1 tmp1 ->
      tr_exprlist le el2 sl2 al2 tmp2 ->
      list_disjoint tmp1 tmp2 ->
      incl tmp1 tmp -> incl tmp2 tmp ->
      tr_exprlist le (Csyntax.Econs e1 el2) (sl1 ++ sl2) (a1 :: al2) tmp.

Section TR_TOP.

Variable ge: genv.
Variable e: env.
Variable le: temp_env.
Variable m: mem.

Inductive tr_top: destination -> Csyntax.expr -> list statement -> expr -> list ident -> Prop :=
  | tr_top_val_val: forall v ty a tmp,
      typeof a = ty -> eval_expr ge e le m a v ->
      tr_top For_val (Csyntax.Eval v ty) nil a tmp
  | tr_top_base: forall dst r sl a tmp,
      tr_expr le dst r sl a tmp ->
      tr_top dst r sl a tmp.

End TR_TOP.

Inductive tr_expression: Csyntax.expr -> statement -> expr -> Prop :=
  | tr_expression_intro: forall r sl a tmps,
      (forall ge e le m, tr_top ge e le m For_val r sl a tmps) ->
      tr_expression r (makeseq sl) a.

Inductive tr_expr_stmt: Csyntax.expr -> statement -> Prop :=
  | tr_expr_stmt_intro: forall r sl a tmps,
      (forall ge e le m, tr_top ge e le m For_effects r sl a tmps) ->
      tr_expr_stmt r (makeseq sl).

Inductive tr_if: Csyntax.expr -> statement -> statement -> statement -> Prop :=
  | tr_if_intro: forall r s1 s2 sl a tmps,
      (forall ge e le m, tr_top ge e le m For_val r sl a tmps) ->
      tr_if r s1 s2 (makeseq (sl ++ makeif a s1 s2 :: nil)).

Inductive tr_stmt: Csyntax.statement -> statement -> Prop :=
  | tr_skip:
      tr_stmt Csyntax.Sskip Sskip
  | tr_do: forall r s,
      tr_expr_stmt r s ->
      tr_stmt (Csyntax.Sdo r) s
  | tr_seq: forall s1 s2 ts1 ts2,
      tr_stmt s1 ts1 -> tr_stmt s2 ts2 ->
      tr_stmt (Csyntax.Ssequence s1 s2) (Ssequence ts1 ts2)
  | tr_ifthenelse_empty: forall r s' a,
      tr_expression r s' a ->
      tr_stmt (Csyntax.Sifthenelse r Csyntax.Sskip Csyntax.Sskip) (Ssequence s' Sskip)
  | tr_ifthenelse: forall r s1 s2 s' a ts1 ts2,
      tr_expression r s' a ->
      tr_stmt s1 ts1 -> tr_stmt s2 ts2 ->
      tr_stmt (Csyntax.Sifthenelse r s1 s2) (Ssequence s' (Sifthenelse a ts1 ts2))
  | tr_while: forall r s1 s' ts1,
      tr_if r Sskip Sbreak s' ->
      tr_stmt s1 ts1 ->
      tr_stmt (Csyntax.Swhile r s1)
              (Sloop (Ssequence s' ts1) Sskip)
  | tr_dowhile: forall r s1 s' ts1,
      tr_if r Sskip Sbreak s' ->
      tr_stmt s1 ts1 ->
      tr_stmt (Csyntax.Sdowhile r s1)
              (Sloop ts1 s')
  | tr_for_1: forall r s3 s4 s' ts3 ts4,
      tr_if r Sskip Sbreak s' ->
      tr_stmt s3 ts3 ->
      tr_stmt s4 ts4 ->
      tr_stmt (Csyntax.Sfor Csyntax.Sskip r s3 s4)
              (Sloop (Ssequence s' ts4) ts3)
  | tr_for_2: forall s1 r s3 s4 s' ts1 ts3 ts4,
      tr_if r Sskip Sbreak s' ->
      s1 <> Csyntax.Sskip ->
      tr_stmt s1 ts1 ->
      tr_stmt s3 ts3 ->
      tr_stmt s4 ts4 ->
      tr_stmt (Csyntax.Sfor s1 r s3 s4)
              (Ssequence ts1 (Sloop (Ssequence s' ts4) ts3))
  | tr_break:
      tr_stmt Csyntax.Sbreak Sbreak
  | tr_continue:
      tr_stmt Csyntax.Scontinue Scontinue
  | tr_return_none:
      tr_stmt (Csyntax.Sreturn None) (Sreturn None)
  | tr_return_some: forall r s' a,
      tr_expression r s' a ->
      tr_stmt (Csyntax.Sreturn (Some r)) (Ssequence s' (Sreturn (Some a)))
  | tr_switch: forall r ls s' a tls,
      tr_expression r s' a ->
      tr_lblstmts ls tls ->
      tr_stmt (Csyntax.Sswitch r ls) (Ssequence s' (Sswitch a tls))
  | tr_label: forall lbl s ts,
      tr_stmt s ts ->
      tr_stmt (Csyntax.Slabel lbl s) (Slabel lbl ts)
  | tr_goto: forall lbl,
      tr_stmt (Csyntax.Sgoto lbl) (Sgoto lbl)

with tr_lblstmts: Csyntax.labeled_statements -> labeled_statements -> Prop :=
  | tr_ls_nil:
      tr_lblstmts Csyntax.LSnil LSnil
  | tr_ls_cons: forall c s ls ts tls,
      tr_stmt s ts ->
      tr_lblstmts ls tls ->
      tr_lblstmts (Csyntax.LScons c s ls) (LScons c ts tls).

Inductive tr_function: Csyntax.function -> Clight.function -> Prop :=
  | tr_function_intro: forall f tf,
      tr_stmt f.(Csyntax.fn_body) tf.(fn_body) ->
      fn_return tf = Csyntax.fn_return f ->
      fn_callconv tf = Csyntax.fn_callconv f ->
      fn_params tf = Csyntax.fn_params f ->
      fn_vars tf = Csyntax.fn_vars f ->
      tr_function f tf.

End SPEC.

Inductive tr_fundef (p: Csyntax.program): Csyntax.fundef -> Clight.fundef -> Prop :=
  | tr_internal: forall f tf,
      tr_function p.(prog_comp_env) f tf ->
      tr_fundef p (Internal f) (Internal tf)
  | tr_external: forall ef targs tres cconv,
      tr_fundef p (External ef targs tres cconv) (External ef targs tres cconv).
Module Export SimplExprproof.
Import compcert.common.Linking.

Definition match_prog (p: Csyntax.program) (tp: Clight.program) :=
    match_program_gen tr_fundef eq p p tp
 /\ prog_types tp = prog_types p.

Global Instance TransfSimplExprLink : TransfLink match_prog.
Admitted.
Module Export Compopts.

Parameter optim_tailcalls: unit -> bool.

Parameter optim_constprop: unit -> bool.

Parameter optim_CSE: unit -> bool.

Parameter optim_redundancy: unit -> bool.

Parameter debug: unit -> bool.
Import compcert.common.AST.

Inductive mreg: Type :=

  | AX | BX | CX | DX | SI | DI | BP
  | R8 | R9 | R10 | R11 | R12 | R13 | R14 | R15

  | X0 | X1 | X2 | X3 | X4 | X5 | X6 | X7
  | X8 | X9 | X10 | X11 | X12 | X13 | X14 | X15

  | FP0.

Lemma mreg_eq: forall (r1 r2: mreg), {r1 = r2} + {r1 <> r2}.
Admitted.

Module IndexedMreg <: INDEXED_TYPE.
  Definition t := mreg.
  Definition eq := mreg_eq.
Definition index (r: mreg): positive.
Admitted.
  Lemma index_inj:
    forall r1 r2, index r1 = index r2 -> r1 = r2.
Admitted.
End IndexedMreg.
Definition destroyed_by_builtin (ef: external_function): list mreg.
Admitted.

Module Type MiniOrderedType.

  Parameter Inline t : Type.

  Parameter Inline eq : t -> t -> Prop.
  Parameter Inline lt : t -> t -> Prop.

End MiniOrderedType.

Module Type OrderedType.
  Include MiniOrderedType.

End OrderedType.

Module MOT_to_OT (Import O : MiniOrderedType) <: OrderedType.
  Include O.

End MOT_to_OT.

Module OrderedTypeFacts (Import O: OrderedType).

End OrderedTypeFacts.

Module OrderedPositive <: OrderedType.

Definition t := positive.
Definition eq (x y: t) := x = y.
Definition lt := Plt.

End OrderedPositive.

Module OrderedZ <: OrderedType.

Definition t := Z.
Definition eq (x y: t) := x = y.
Definition lt := Z.lt.

End OrderedZ.

Module OrderedInt <: OrderedType.

Definition t := int.
Definition eq (x y: t) := x = y.
Definition lt (x y: t) := Int.unsigned x < Int.unsigned y.

End OrderedInt.

Module OrderedIndexed(A: INDEXED_TYPE) <: OrderedType.

Definition t := A.t.
Definition eq (x y: t) := x = y.
Definition lt (x y: t) := Plt (A.index x) (A.index y).

End OrderedIndexed.

Module OrderedPair (A B: OrderedType) <: OrderedType.

Definition t := (A.t * B.t)%type.

Definition eq (x y: t) :=
  A.eq (fst x) (fst y) /\ B.eq (snd x) (snd y).

Definition lt (x y: t) :=
  A.lt (fst x) (fst y) \/
  (A.eq (fst x) (fst y) /\ B.lt (snd x) (snd y)).

End OrderedPair.

Inductive slot: Type :=
  | Local
  | Incoming
  | Outgoing.

Lemma slot_eq: forall (p q: slot), {p = q} + {p <> q}.
Admitted.

Inductive loc : Type :=
  | R (r: mreg)
  | S (sl: slot) (pos: Z) (ty: typ).

Module IndexedTyp <: INDEXED_TYPE.
  Definition t := typ.
  Definition index (x: t) :=
    match x with
    | Tany32 => 1%positive
    | Tint => 2%positive
    | Tsingle => 3%positive
    | Tany64 => 4%positive
    | Tfloat => 5%positive
    | Tlong => 6%positive
    end.
  Lemma index_inj: forall x y, index x = index y -> x = y.
Admitted.
  Definition eq := typ_eq.
End IndexedTyp.

Module OrderedTyp := OrderedIndexed(IndexedTyp).

Module IndexedSlot <: INDEXED_TYPE.
  Definition t := slot.
  Definition index (x: t) :=
    match x with Local => 1%positive | Incoming => 2%positive | Outgoing => 3%positive end.
  Lemma index_inj: forall x y, index x = index y -> x = y.
Admitted.
  Definition eq := slot_eq.
End IndexedSlot.

Module OrderedSlot := OrderedIndexed(IndexedSlot).

Module OrderedLoc <: OrderedType.
  Definition t := loc.
  Definition eq (x y: t) := x = y.
  Definition lt (x y: t) :=
    match x, y with
    | R r1, R r2 => Plt (IndexedMreg.index r1) (IndexedMreg.index r2)
    | R _, S _ _ _ => True
    | S _ _ _, R _ => False
    | S sl1 ofs1 ty1, S sl2 ofs2 ty2 =>
        OrderedSlot.lt sl1 sl2 \/ (sl1 = sl2 /\
        (ofs1 < ofs2 \/ (ofs1 = ofs2 /\ OrderedTyp.lt ty1 ty2)))
    end.

End OrderedLoc.
Module Export SimplLocalsproof.
Import compcert.cfrontend.Clight.
Definition match_prog (p tp: program) : Prop.
Admitted.

Global Instance TransfSimplLocalsLink : TransfLink match_prog.
Admitted.

Module Export compcert_DOT_backend_DOT_Cminor_WRAPPED.
Module Export Cminor.

Inductive stmt : Type :=
  | Sskip: stmt
  | Sassign : ident -> expr -> stmt
  | Sstore : memory_chunk -> expr -> expr -> stmt
  | Scall : option ident -> signature -> expr -> list expr -> stmt
  | Stailcall: signature -> expr -> list expr -> stmt
  | Sbuiltin : option ident -> external_function -> list expr -> stmt
  | Sseq: stmt -> stmt -> stmt
  | Sifthenelse: expr -> stmt -> stmt -> stmt
  | Sloop: stmt -> stmt
  | Sblock: stmt -> stmt
  | Sexit: nat -> stmt
  | Sswitch: bool -> expr -> list (Z * nat) -> nat -> stmt
  | Sreturn: option expr -> stmt
  | Slabel: label -> stmt -> stmt
  | Sgoto: label -> stmt.

Record function : Type := mkfunction {
  fn_sig: signature;
  fn_params: list ident;
  fn_vars: list ident;
  fn_stackspace: Z;
  fn_body: stmt
}.

Definition fundef := AST.fundef function.
Definition program := AST.program fundef unit.

End Cminor.
Module Export compcert.
Module Export backend.
Module Export Cminor.
Include compcert_DOT_backend_DOT_Cminor_WRAPPED.Cminor.
End Cminor.
Module Export Csharpminor.

Record function : Type := mkfunction {
  fn_sig: signature;
  fn_params: list ident;
  fn_vars: list (ident * Z);
  fn_temps: list ident;
  fn_body: stmt
}.

Definition fundef := AST.fundef function.
Definition program : Type.
exact (AST.program fundef unit).
Defined.
Module Export Cshmgenproof.
Definition match_prog (p: Clight.program) (tp: Csharpminor.program) : Prop.
Admitted.

Global Instance TransfCshmgenLink : TransfLink match_prog.
Admitted.
Import compcert.backend.Cminor.
Definition transl_function (f: Csharpminor.function): res function.
Admitted.
Definition transl_fundef (f: Csharpminor.fundef): res fundef.
exact (transf_partial_fundef transl_function f).
Defined.
Module Export Cminorgenproof.

Definition match_prog (p: Csharpminor.program) (tp: Cminor.program) :=
  match_program (fun cu f tf => transl_fundef f = OK tf) eq p tp.
Module Export CminorSel.

Record function : Type := mkfunction {
  fn_sig: signature;
  fn_params: list ident;
  fn_vars: list ident;
  fn_stackspace: Z;
  fn_body: stmt
}.

Definition fundef := AST.fundef function.
Definition program := AST.program fundef unit.
Module Export Selectionproof.
Definition match_fundef (cunit: Cminor.program) (f: Cminor.fundef) (tf: CminorSel.fundef) : Prop.
Admitted.

Definition match_prog (p: Cminor.program) (tp: CminorSel.program) :=
  match_program match_fundef eq p tp.

Global Instance TransfSelectionLink : TransfLink match_prog.
Admitted.
Definition reg: Type.
exact (positive).
Defined.
Module Export RTL.

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
Definition transl_function (f: CminorSel.function) : Errors.res RTL.function.
Admitted.

Definition transl_fundef := transf_partial_fundef transl_function.
Module Export RTLgenproof.

Definition match_prog (p: CminorSel.program) (tp: RTL.program) :=
  match_program (fun cu f tf => transl_fundef f = Errors.OK tf) eq p tp.
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
End OrderedEquation.

Module OrderedEquation' <: OrderedType.
  Definition t := equation.
  Definition eq (x y: t) := x = y.
  Definition lt (x y: t) :=
    OrderedLoc.lt (eloc x) (eloc y) \/ (eloc x = eloc y /\
    (Plt (ereg x) (ereg y) \/ (ereg x = ereg y /\
    OrderedEqKind.lt (ekind x) (ekind y)))).
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
