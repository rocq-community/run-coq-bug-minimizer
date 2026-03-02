
(* -*- mode: coq; coq-prog-args: ("-emacs" "-q" "-w" "-deprecated-native-compiler-option" "-native-compiler" "no" "-coqlib" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq//" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/utils/theories" "MetaRocq.Utils" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/common/theories" "MetaRocq.Common" "-R" "/github/workspace/builds/coq/coq-failing/_build_ci/metarocq/pcuic/theories" "MetaRocq.PCUIC" "-Q" "/github/workspace/cwd" "Top" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Equations" "Equations" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Ltac2" "Ltac2" "-Q" "/github/workspace/builds/coq/coq-failing/_install_ci/lib/coq///user-contrib/Stdlib" "Stdlib" "-top" "Top.bug_01") -*- *)
(* File reduced by coq-bug-minimizer from original input, then from 745 lines to 213 lines, then from 227 lines to 1933 lines, then from 1940 lines to 512 lines, then from 526 lines to 1231 lines, then from 1238 lines to 537 lines, then from 551 lines to 3237 lines, then from 3239 lines to 686 lines, then from 700 lines to 1833 lines, then from 1839 lines to 869 lines, then from 883 lines to 2943 lines, then from 2944 lines to 890 lines, then from 904 lines to 3361 lines, then from 3363 lines to 1437 lines, then from 1443 lines to 996 lines, then from 1008 lines to 1838 lines, then from 1843 lines to 1118 lines, then from 1130 lines to 2645 lines, then from 2646 lines to 1143 lines, then from 1154 lines to 1809 lines, then from 1816 lines to 1164 lines, then from 1176 lines to 3035 lines, then from 3038 lines to 1442 lines, then from 1454 lines to 2107 lines, then from 2113 lines to 1519 lines, then from 1530 lines to 4343 lines, then from 4342 lines to 3505 lines, then from 3451 lines to 1670 lines, then from 1682 lines to 3364 lines, then from 3369 lines to 1890 lines, then from 1902 lines to 2709 lines, then from 2713 lines to 1896 lines, then from 1907 lines to 5009 lines, then from 4975 lines to 4110 lines, then from 4064 lines to 1868 lines, then from 1880 lines to 3052 lines, then from 3055 lines to 1972 lines, then from 1984 lines to 2818 lines, then from 2825 lines to 2041 lines, then from 2053 lines to 2407 lines, then from 2414 lines to 2053 lines, then from 2065 lines to 2599 lines, then from 2605 lines to 2080 lines, then from 2091 lines to 2374 lines, then from 2381 lines to 2091 lines, then from 2108 lines to 2054 lines, then from 2066 lines to 6629 lines, then from 6630 lines to 2104 lines, then from 2116 lines to 2599 lines, then from 2603 lines to 2129 lines, then from 2141 lines to 3907 lines, then from 3907 lines to 2195 lines, then from 2206 lines to 2566 lines, then from 2573 lines to 2213 lines, then from 2224 lines to 2926 lines, then from 2933 lines to 2282 lines, then from 2293 lines to 2607 lines, then from 2614 lines to 2283 lines, then from 2295 lines to 2532 lines, then from 2539 lines to 2575 lines, then from 2567 lines to 2226 lines, then from 2238 lines to 2532 lines, then from 2539 lines to 2245 lines, then from 2256 lines to 3427 lines, then from 3418 lines to 2501 lines, then from 2513 lines to 3812 lines, then from 3811 lines to 2797 lines, then from 2809 lines to 3177 lines, then from 3183 lines to 2876 lines, then from 2888 lines to 3227 lines, then from 3231 lines to 2904 lines, then from 2916 lines to 3065 lines, then from 3072 lines to 2907 lines, then from 2918 lines to 3064 lines, then from 3071 lines to 2911 lines, then from 2922 lines to 4190 lines, then from 4192 lines to 2920 lines, then from 2931 lines to 3498 lines, then from 3502 lines to 2997 lines, then from 3008 lines to 3254 lines, then from 3261 lines to 3038 lines, then from 3049 lines to 5074 lines, then from 5077 lines to 3345 lines, then from 3357 lines to 3975 lines, then from 3982 lines to 3869 lines, then from 3881 lines to 5179 lines, then from 5186 lines to 3872 lines, then from 3884 lines to 4281 lines, then from 4283 lines to 4020 lines *)
(* coqc version 9.3+alpha compiled with OCaml 4.14.2
   coqtop version 9.3+alpha
   Expected coqc runtime on this file: 1.894 sec
   Expected coqc peak memory usage on this file: 2893188.0 kb *)
Require Corelib.Floats.PrimFloat.
Require Corelib.Strings.PrimStringAxioms.
Require Stdlib.Init.Byte.
Require Stdlib.ssr.ssrbool.
Require MetaRocq.Utils.MRProd.
Require MetaRocq.Utils.MRRelations.
Require Equations.Prop.Constants.
Require Stdlib.Numbers.Integer.Abstract.ZProperties.
Require Stdlib.Structures.OrderedType.
Require Stdlib.Arith.Arith_base.
Require Stdlib.NArith.BinNat.
Require Stdlib.MSets.MSetList.
Axiom proof_admitted : False.
Tactic Notation "admit" := abstract case proof_admitted.
Module Export BinIntDef.
Import Stdlib.PArith.BinPos.
Import Stdlib.NArith.BinNat.

#[local] Open Scope Z_scope.

#[local] Notation "0" := Z0.
#[local] Notation "1" := (Zpos 1).
#[local] Notation "2" := (Zpos 2).

Module Export Z.

Include BinNums.IntDef.Z.

Definition t := Z.

#[global] Notation pos := Zpos.
#[global] Notation neg := Zneg.

Definition zero := 0.
Definition one := 1.
Definition two := 2.

Definition succ x := x + 1.

Definition pred x := x + neg 1.

Definition square x :=
  match x with
    | 0 => 0
    | pos p => pos (Pos.square p)
    | neg p => pos (Pos.square p)
  end.

Definition sgn z :=
  match z with
    | 0 => 0
    | pos p => 1
    | neg p => neg 1
  end.

Infix "=?" := eqb (at level 70, no associativity) : Z_scope.
Infix "<=?" := leb (at level 70, no associativity) : Z_scope.
Infix "<?" := ltb (at level 70, no associativity) : Z_scope.

Definition abs z :=
  match z with
    | 0 => 0
    | pos p => pos p
    | neg p => pos p
  end.

Definition of_uint (d:Decimal.uint) := of_N (Pos.of_uint d).

Definition of_hex_uint (d:Hexadecimal.uint) := of_N (Pos.of_hex_uint d).

Definition of_int (d:Decimal.int) :=
  match d with
  | Decimal.Pos d => of_uint d
  | Decimal.Neg d => opp (of_uint d)
  end.

Definition of_hex_int (d:Hexadecimal.int) :=
  match d with
  | Hexadecimal.Pos d => of_hex_uint d
  | Hexadecimal.Neg d => opp (of_hex_uint d)
  end.

Definition of_num_int (d:Number.int) :=
  match d with
  | Number.IntDecimal d => of_int d
  | Number.IntHexadecimal d => of_hex_int d
  end.

Definition to_int n :=
  match n with
  | 0 => Decimal.Pos Decimal.zero
  | pos p => Decimal.Pos (Pos.to_uint p)
  | neg p => Decimal.Neg (Pos.to_uint p)
  end.

Definition to_num_int n := Number.IntDecimal (to_int n).

Infix "/" := div : Z_scope.
Infix "mod" := modulo (at level 40, no associativity) : Z_scope.

Definition odd z :=
  match z with
    | 0 => false
    | pos (xO _) => false
    | neg (xO _) => false
    | _ => true
  end.

Definition log2 z :=
  match z with
    | pos (p~1) => pos (Pos.size p)
    | pos (p~0) => pos (Pos.size p)
    | _ => 0
  end.

Definition sqrt n :=
 match n with
  | pos p => pos (Pos.sqrt p)
  | _ => 0
 end.

Definition gcd a b :=
  match a,b with
    | 0, _ => abs b
    | _, 0 => abs a
    | pos a, pos b => pos (Pos.gcd a b)
    | pos a, neg b => pos (Pos.gcd a b)
    | neg a, pos b => pos (Pos.gcd a b)
    | neg a, neg b => pos (Pos.gcd a b)
  end.

Definition testbit a n :=
 match n with
   | 0 => odd a
   | pos p =>
     match a with
       | 0 => false
       | pos a => Pos.testbit a (N.pos p)
       | neg a => negb (N.testbit (Pos.pred_N a) (N.pos p))
     end
   | neg _ => false
 end.

Definition ldiff a b :=
 match a, b with
   | 0, _ => 0
   | _, 0 => a
   | pos a, pos b => of_N (Pos.ldiff a b)
   | neg a, pos b => neg (N.succ_pos (N.lor (Pos.pred_N a) (N.pos b)))
   | pos a, neg b => of_N (N.land (N.pos a) (Pos.pred_N b))
   | neg a, neg b => of_N (N.ldiff (Pos.pred_N b) (Pos.pred_N a))
 end.
Number Notation Z of_num_int to_num_int : Z_scope.

End Z.

End BinIntDef.
Module Export Stdlib_DOT_ZArith_DOT_BinIntDef.
Module Export BinIntDef.
End BinIntDef.

End Stdlib_DOT_ZArith_DOT_BinIntDef.
Export Stdlib.Init.Byte.

Section N.
End N.
Module Export ByteCompare.
Import Stdlib.NArith.BinNat.

Module Export ByteN.
Definition N1 := 1%N.
Definition N2 := 2%N.
Definition N3 := 3%N.
Definition N4 := 4%N.
Definition N5 := 5%N.
Definition N6 := 6%N.
Definition N7 := 7%N.
Definition N8 := 8%N.
Definition N9 := 9%N.
Definition N10 := 10%N.
Definition N11 := 11%N.
Definition N12 := 12%N.
Definition N13 := 13%N.
Definition N14 := 14%N.
Definition N15 := 15%N.
Definition N16 := 16%N.
Definition N17 := 17%N.
Definition N18 := 18%N.
Definition N19 := 19%N.
Definition N20 := 20%N.
Definition N21 := 21%N.
Definition N22 := 22%N.
Definition N23 := 23%N.
Definition N24 := 24%N.
Definition N25 := 25%N.
Definition N26 := 26%N.
Definition N27 := 27%N.
Definition N28 := 28%N.
Definition N29 := 29%N.
Definition N30 := 30%N.
Definition N31 := 31%N.
Definition N32 := 32%N.
Definition N33 := 33%N.
Definition N34 := 34%N.
Definition N35 := 35%N.
Definition N36 := 36%N.
Definition N37 := 37%N.
Definition N38 := 38%N.
Definition N39 := 39%N.
Definition N40 := 40%N.
Definition N41 := 41%N.
Definition N42 := 42%N.
Definition N43 := 43%N.
Definition N44 := 44%N.
Definition N45 := 45%N.
Definition N46 := 46%N.
Definition N47 := 47%N.
Definition N48 := 48%N.
Definition N49 := 49%N.
Definition N50 := 50%N.
Definition N51 := 51%N.
Definition N52 := 52%N.
Definition N53 := 53%N.
Definition N54 := 54%N.
Definition N55 := 55%N.
Definition N56 := 56%N.
Definition N57 := 57%N.
Definition N58 := 58%N.
Definition N59 := 59%N.
Definition N60 := 60%N.
Definition N61 := 61%N.
Definition N62 := 62%N.
Definition N63 := 63%N.
Definition N64 := 64%N.
Definition N65 := 65%N.
Definition N66 := 66%N.
Definition N67 := 67%N.
Definition N68 := 68%N.
Definition N69 := 69%N.
Definition N70 := 70%N.
Definition N71 := 71%N.
Definition N72 := 72%N.
Definition N73 := 73%N.
Definition N74 := 74%N.
Definition N75 := 75%N.
Definition N76 := 76%N.
Definition N77 := 77%N.
Definition N78 := 78%N.
Definition N79 := 79%N.
Definition N80 := 80%N.
Definition N81 := 81%N.
Definition N82 := 82%N.
Definition N83 := 83%N.
Definition N84 := 84%N.
Definition N85 := 85%N.
Definition N86 := 86%N.
Definition N87 := 87%N.
Definition N88 := 88%N.
Definition N89 := 89%N.
Definition N90 := 90%N.
Definition N91 := 91%N.
Definition N92 := 92%N.
Definition N93 := 93%N.
Definition N94 := 94%N.
Definition N95 := 95%N.
Definition N96 := 96%N.
Definition N97 := 97%N.
Definition N98 := 98%N.
Definition N99 := 99%N.
Definition N100 := 100%N.
Definition N101 := 101%N.
Definition N102 := 102%N.
Definition N103 := 103%N.
Definition N104 := 104%N.
Definition N105 := 105%N.
Definition N106 := 106%N.
Definition N107 := 107%N.
Definition N108 := 108%N.
Definition N109 := 109%N.
Definition N110 := 110%N.
Definition N111 := 111%N.
Definition N112 := 112%N.
Definition N113 := 113%N.
Definition N114 := 114%N.
Definition N115 := 115%N.
Definition N116 := 116%N.
Definition N117 := 117%N.
Definition N118 := 118%N.
Definition N119 := 119%N.
Definition N120 := 120%N.
Definition N121 := 121%N.
Definition N122 := 122%N.
Definition N123 := 123%N.
Definition N124 := 124%N.
Definition N125 := 125%N.
Definition N126 := 126%N.
Definition N127 := 127%N.
Definition N128 := 128%N.
Definition N129 := 129%N.
Definition N130 := 130%N.
Definition N131 := 131%N.
Definition N132 := 132%N.
Definition N133 := 133%N.
Definition N134 := 134%N.
Definition N135 := 135%N.
Definition N136 := 136%N.
Definition N137 := 137%N.
Definition N138 := 138%N.
Definition N139 := 139%N.
Definition N140 := 140%N.
Definition N141 := 141%N.
Definition N142 := 142%N.
Definition N143 := 143%N.
Definition N144 := 144%N.
Definition N145 := 145%N.
Definition N146 := 146%N.
Definition N147 := 147%N.
Definition N148 := 148%N.
Definition N149 := 149%N.
Definition N150 := 150%N.
Definition N151 := 151%N.
Definition N152 := 152%N.
Definition N153 := 153%N.
Definition N154 := 154%N.
Definition N155 := 155%N.
Definition N156 := 156%N.
Definition N157 := 157%N.
Definition N158 := 158%N.
Definition N159 := 159%N.
Definition N160 := 160%N.
Definition N161 := 161%N.
Definition N162 := 162%N.
Definition N163 := 163%N.
Definition N164 := 164%N.
Definition N165 := 165%N.
Definition N166 := 166%N.
Definition N167 := 167%N.
Definition N168 := 168%N.
Definition N169 := 169%N.
Definition N170 := 170%N.
Definition N171 := 171%N.
Definition N172 := 172%N.
Definition N173 := 173%N.
Definition N174 := 174%N.
Definition N175 := 175%N.
Definition N176 := 176%N.
Definition N177 := 177%N.
Definition N178 := 178%N.
Definition N179 := 179%N.
Definition N180 := 180%N.
Definition N181 := 181%N.
Definition N182 := 182%N.
Definition N183 := 183%N.
Definition N184 := 184%N.
Definition N185 := 185%N.
Definition N186 := 186%N.
Definition N187 := 187%N.
Definition N188 := 188%N.
Definition N189 := 189%N.
Definition N190 := 190%N.
Definition N191 := 191%N.
Definition N192 := 192%N.
Definition N193 := 193%N.
Definition N194 := 194%N.
Definition N195 := 195%N.
Definition N196 := 196%N.
Definition N197 := 197%N.
Definition N198 := 198%N.
Definition N199 := 199%N.
Definition N200 := 200%N.
Definition N201 := 201%N.
Definition N202 := 202%N.
Definition N203 := 203%N.
Definition N204 := 204%N.
Definition N205 := 205%N.
Definition N206 := 206%N.
Definition N207 := 207%N.
Definition N208 := 208%N.
Definition N209 := 209%N.
Definition N210 := 210%N.
Definition N211 := 211%N.
Definition N212 := 212%N.
Definition N213 := 213%N.
Definition N214 := 214%N.
Definition N215 := 215%N.
Definition N216 := 216%N.
Definition N217 := 217%N.
Definition N218 := 218%N.
Definition N219 := 219%N.
Definition N220 := 220%N.
Definition N221 := 221%N.
Definition N222 := 222%N.
Definition N223 := 223%N.
Definition N224 := 224%N.
Definition N225 := 225%N.
Definition N226 := 226%N.
Definition N227 := 227%N.
Definition N228 := 228%N.
Definition N229 := 229%N.
Definition N230 := 230%N.
Definition N231 := 231%N.
Definition N232 := 232%N.
Definition N233 := 233%N.
Definition N234 := 234%N.
Definition N235 := 235%N.
Definition N236 := 236%N.
Definition N237 := 237%N.
Definition N238 := 238%N.
Definition N239 := 239%N.
Definition N240 := 240%N.
Definition N241 := 241%N.
Definition N242 := 242%N.
Definition N243 := 243%N.
Definition N244 := 244%N.
Definition N245 := 245%N.
Definition N246 := 246%N.
Definition N247 := 247%N.
Definition N248 := 248%N.
Definition N249 := 249%N.
Definition N250 := 250%N.
Definition N251 := 251%N.
Definition N252 := 252%N.
Definition N253 := 253%N.
Definition N254 := 254%N.
Definition N255 := 255%N.

Definition to_N (x : byte) :=
  match x with
  | "000"%byte => N0
  | "001"%byte => N1
  | "002"%byte => N2
  | "003"%byte => N3
  | "004"%byte => N4
  | "005"%byte => N5
  | "006"%byte => N6
  | "007"%byte => N7
  | "008"%byte => N8
  | "009"%byte => N9
  | "010"%byte => N10
  | "011"%byte => N11
  | "012"%byte => N12
  | "013"%byte => N13
  | "014"%byte => N14
  | "015"%byte => N15
  | "016"%byte => N16
  | "017"%byte => N17
  | "018"%byte => N18
  | "019"%byte => N19
  | "020"%byte => N20
  | "021"%byte => N21
  | "022"%byte => N22
  | "023"%byte => N23
  | "024"%byte => N24
  | "025"%byte => N25
  | "026"%byte => N26
  | "027"%byte => N27
  | "028"%byte => N28
  | "029"%byte => N29
  | "030"%byte => N30
  | "031"%byte => N31
  | "032"%byte => N32
  | "033"%byte => N33
  | "034"%byte => N34
  | "035"%byte => N35
  | "036"%byte => N36
  | "037"%byte => N37
  | "038"%byte => N38
  | "039"%byte => N39
  | "040"%byte => N40
  | "041"%byte => N41
  | "042"%byte => N42
  | "043"%byte => N43
  | "044"%byte => N44
  | "045"%byte => N45
  | "046"%byte => N46
  | "047"%byte => N47
  | "048"%byte => N48
  | "049"%byte => N49
  | "050"%byte => N50
  | "051"%byte => N51
  | "052"%byte => N52
  | "053"%byte => N53
  | "054"%byte => N54
  | "055"%byte => N55
  | "056"%byte => N56
  | "057"%byte => N57
  | "058"%byte => N58
  | "059"%byte => N59
  | "060"%byte => N60
  | "061"%byte => N61
  | "062"%byte => N62
  | "063"%byte => N63
  | "064"%byte => N64
  | "065"%byte => N65
  | "066"%byte => N66
  | "067"%byte => N67
  | "068"%byte => N68
  | "069"%byte => N69
  | "070"%byte => N70
  | "071"%byte => N71
  | "072"%byte => N72
  | "073"%byte => N73
  | "074"%byte => N74
  | "075"%byte => N75
  | "076"%byte => N76
  | "077"%byte => N77
  | "078"%byte => N78
  | "079"%byte => N79
  | "080"%byte => N80
  | "081"%byte => N81
  | "082"%byte => N82
  | "083"%byte => N83
  | "084"%byte => N84
  | "085"%byte => N85
  | "086"%byte => N86
  | "087"%byte => N87
  | "088"%byte => N88
  | "089"%byte => N89
  | "090"%byte => N90
  | "091"%byte => N91
  | "092"%byte => N92
  | "093"%byte => N93
  | "094"%byte => N94
  | "095"%byte => N95
  | "096"%byte => N96
  | "097"%byte => N97
  | "098"%byte => N98
  | "099"%byte => N99
  | "100"%byte => N100
  | "101"%byte => N101
  | "102"%byte => N102
  | "103"%byte => N103
  | "104"%byte => N104
  | "105"%byte => N105
  | "106"%byte => N106
  | "107"%byte => N107
  | "108"%byte => N108
  | "109"%byte => N109
  | "110"%byte => N110
  | "111"%byte => N111
  | "112"%byte => N112
  | "113"%byte => N113
  | "114"%byte => N114
  | "115"%byte => N115
  | "116"%byte => N116
  | "117"%byte => N117
  | "118"%byte => N118
  | "119"%byte => N119
  | "120"%byte => N120
  | "121"%byte => N121
  | "122"%byte => N122
  | "123"%byte => N123
  | "124"%byte => N124
  | "125"%byte => N125
  | "126"%byte => N126
  | "127"%byte => N127
  | "128"%byte => N128
  | "129"%byte => N129
  | "130"%byte => N130
  | "131"%byte => N131
  | "132"%byte => N132
  | "133"%byte => N133
  | "134"%byte => N134
  | "135"%byte => N135
  | "136"%byte => N136
  | "137"%byte => N137
  | "138"%byte => N138
  | "139"%byte => N139
  | "140"%byte => N140
  | "141"%byte => N141
  | "142"%byte => N142
  | "143"%byte => N143
  | "144"%byte => N144
  | "145"%byte => N145
  | "146"%byte => N146
  | "147"%byte => N147
  | "148"%byte => N148
  | "149"%byte => N149
  | "150"%byte => N150
  | "151"%byte => N151
  | "152"%byte => N152
  | "153"%byte => N153
  | "154"%byte => N154
  | "155"%byte => N155
  | "156"%byte => N156
  | "157"%byte => N157
  | "158"%byte => N158
  | "159"%byte => N159
  | "160"%byte => N160
  | "161"%byte => N161
  | "162"%byte => N162
  | "163"%byte => N163
  | "164"%byte => N164
  | "165"%byte => N165
  | "166"%byte => N166
  | "167"%byte => N167
  | "168"%byte => N168
  | "169"%byte => N169
  | "170"%byte => N170
  | "171"%byte => N171
  | "172"%byte => N172
  | "173"%byte => N173
  | "174"%byte => N174
  | "175"%byte => N175
  | "176"%byte => N176
  | "177"%byte => N177
  | "178"%byte => N178
  | "179"%byte => N179
  | "180"%byte => N180
  | "181"%byte => N181
  | "182"%byte => N182
  | "183"%byte => N183
  | "184"%byte => N184
  | "185"%byte => N185
  | "186"%byte => N186
  | "187"%byte => N187
  | "188"%byte => N188
  | "189"%byte => N189
  | "190"%byte => N190
  | "191"%byte => N191
  | "192"%byte => N192
  | "193"%byte => N193
  | "194"%byte => N194
  | "195"%byte => N195
  | "196"%byte => N196
  | "197"%byte => N197
  | "198"%byte => N198
  | "199"%byte => N199
  | "200"%byte => N200
  | "201"%byte => N201
  | "202"%byte => N202
  | "203"%byte => N203
  | "204"%byte => N204
  | "205"%byte => N205
  | "206"%byte => N206
  | "207"%byte => N207
  | "208"%byte => N208
  | "209"%byte => N209
  | "210"%byte => N210
  | "211"%byte => N211
  | "212"%byte => N212
  | "213"%byte => N213
  | "214"%byte => N214
  | "215"%byte => N215
  | "216"%byte => N216
  | "217"%byte => N217
  | "218"%byte => N218
  | "219"%byte => N219
  | "220"%byte => N220
  | "221"%byte => N221
  | "222"%byte => N222
  | "223"%byte => N223
  | "224"%byte => N224
  | "225"%byte => N225
  | "226"%byte => N226
  | "227"%byte => N227
  | "228"%byte => N228
  | "229"%byte => N229
  | "230"%byte => N230
  | "231"%byte => N231
  | "232"%byte => N232
  | "233"%byte => N233
  | "234"%byte => N234
  | "235"%byte => N235
  | "236"%byte => N236
  | "237"%byte => N237
  | "238"%byte => N238
  | "239"%byte => N239
  | "240"%byte => N240
  | "241"%byte => N241
  | "242"%byte => N242
  | "243"%byte => N243
  | "244"%byte => N244
  | "245"%byte => N245
  | "246"%byte => N246
  | "247"%byte => N247
  | "248"%byte => N248
  | "249"%byte => N249
  | "250"%byte => N250
  | "251"%byte => N251
  | "252"%byte => N252
  | "253"%byte => N253
  | "254"%byte => N254
  | "255"%byte => N255
  end.
End ByteN.

Definition compare (x y : byte) :=
  N.compare (ByteN.to_N x) (ByteN.to_N y).
Module Export BinInt.
Export Stdlib.PArith.BinPos.
Import Stdlib.Bool.Bool.
Import Stdlib.Structures.OrdersFacts.
Import Stdlib.Numbers.Integer.Abstract.ZProperties.

#[local] Open Scope Z_scope.

Module Z
 <: ZAxiomsSig
 <: UsualOrderedTypeFull
 <: UsualDecidableTypeFull
 <: TotalOrder.

Include BinIntDef.Z.

Definition eq := @Logic.eq Z.
Definition eq_equiv := @eq_equivalence Z.
Notation "x <= y < z" := (x <= y /\ y < z) : Z_scope.
Notation "x < y <= z" := (x < y /\ y <= z) : Z_scope.

Definition divide x y := exists z, y = z*x.
Notation "( x | y )" := (divide x y) (at level 0).

Definition Even a := exists b, a = 2*b.
Definition Odd a := exists b, a = 2*b+1.

Definition eq_dec (x y : Z) : {x = y} + {x <> y}.
Admitted.
Program Definition succ_wd : Proper (eq==>eq) succ.
Admitted.
Program Definition pred_wd : Proper (eq==>eq) pred.
Admitted.
Program Definition opp_wd : Proper (eq==>eq) opp.
Admitted.
Program Definition add_wd : Proper (eq==>eq==>eq) add.
Admitted.
Program Definition sub_wd : Proper (eq==>eq==>eq) sub.
Admitted.
Program Definition mul_wd : Proper (eq==>eq==>eq) mul.
Admitted.
Program Definition lt_wd : Proper (eq==>eq==>iff) lt.
Admitted.
Program Definition div_wd : Proper (eq==>eq==>eq) div.
Admitted.
Program Definition mod_wd : Proper (eq==>eq==>eq) modulo.
Admitted.
Program Definition quot_wd : Proper (eq==>eq==>eq) quot.
Admitted.
Program Definition rem_wd : Proper (eq==>eq==>eq) rem.
Admitted.
Program Definition pow_wd : Proper (eq==>eq==>eq) pow.
Admitted.
Program Definition testbit_wd : Proper (eq==>eq==>Logic.eq) testbit.
Admitted.

Module Import Private_BootStrap.

End Private_BootStrap.

Lemma one_succ : 1 = succ 0.
Admitted.

Lemma two_succ : 2 = succ 1.
Admitted.

Lemma add_0_l n : 0 + n = n.
Admitted.

Lemma add_succ_l n m : succ n + m = succ (n + m).
Admitted.

Lemma opp_0 : -0 = 0.
Admitted.

Lemma opp_succ n : -(succ n) = pred (-n).
Admitted.

Lemma succ_pred n : succ (pred n) = n.
Admitted.

Lemma pred_succ n : pred (succ n) = n.
Admitted.

Lemma sub_0_r n : n - 0 = n.
Admitted.

Lemma sub_succ_r n m : n - succ m = pred (n - m).
Admitted.

Lemma mul_0_l n : 0 * n = 0.
Admitted.

Lemma mul_succ_l n m : succ n * m = n * m + m.
Admitted.

Lemma eqb_eq n m : (n =? m) = true <-> n = m.
Admitted.

Lemma ltb_lt n m : (n <? m) = true <-> n < m.
Admitted.

Lemma leb_le n m : (n <=? m) = true <-> n <= m.
Admitted.

Lemma compare_eq_iff n m : (n ?= m) = Eq <-> n = m.
Admitted.

Lemma compare_antisym n m : (m ?= n) = CompOpp (n ?= m).
Admitted.

Lemma compare_lt_iff n m : (n ?= m) = Lt <-> n < m.
Admitted.

Lemma compare_le_iff n m : (n ?= m) <> Gt <-> n <= m.
Admitted.

Include BoolOrderFacts.

Lemma lt_succ_r n m : n < succ m <-> n<=m.
Admitted.

Lemma max_l n m : m<=n -> max n m = n.
Admitted.

Lemma max_r n m :  n<=m -> max n m = m.
Admitted.

Lemma min_l n m : n<=m -> min n m = n.
Admitted.

Lemma min_r n m : m<=n -> min n m = m.
Admitted.

Lemma bi_induction (P : Z -> Prop) :
  Proper (eq ==> iff) P ->
  P 0 ->
  (forall x, P x <-> P (succ x)) ->
  forall z, P z.
Admitted.

Include ZBasicProp <+ UsualMinMaxLogicalProperties <+ UsualMinMaxDecProperties.

Lemma abs_eq n : 0 <= n -> abs n = n.
Admitted.

Lemma abs_neq n : n <= 0 -> abs n = - n.
Admitted.

Lemma sgn_null n : n = 0 -> sgn n = 0.
Admitted.

Lemma sgn_pos n : 0 < n -> sgn n = 1.
Admitted.

Lemma sgn_neg n : n < 0 -> sgn n = -1.
Admitted.

Lemma pow_0_r n : n^0 = 1.
Admitted.

Lemma pow_succ_r n m : 0<=m -> n^(succ m) = n * n^m.
Admitted.

Lemma pow_neg_r n m : m<0 -> n^m = 0.
Admitted.

Lemma square_spec n : square n = n * n.
Admitted.

Lemma sqrt_spec n : 0<=n ->
 let s := sqrt n in s*s <= n < (succ s)*(succ s).
Admitted.

Lemma sqrt_neg n : n<0 -> sqrt n = 0.
Admitted.

Lemma log2_spec n : 0 < n -> 2^(log2 n) <= n < 2^(succ (log2 n)).
Admitted.

Lemma log2_nonpos n : n<=0 -> log2 n = 0.
Admitted.

Lemma even_spec n : even n = true <-> Even n.
Admitted.

Lemma odd_spec n : odd n = true <-> Odd n.
Admitted.

Lemma div_mod a b : b<>0 -> a = b*(a/b) + (a mod b).
Admitted.

Lemma mod_pos_bound a b : 0 < b -> 0 <= a mod b < b.
Admitted.

Definition mod_bound_pos a b (_:0<=a) := mod_pos_bound a b.

Lemma mod_neg_bound a b : b < 0 -> b < a mod b <= 0.
Admitted.

Lemma quot_rem a b : b<>0 -> a = b*(a÷b) + rem a b.
Admitted.

Lemma rem_bound_pos a b : 0<=a -> 0<b -> 0 <= rem a b < b.
Admitted.

Lemma rem_opp_l a b : b<>0 -> rem (-a) b = - (rem a b).
Admitted.

Lemma rem_opp_r a b : b<>0 -> rem a (-b) = rem a b.
Admitted.

Lemma gcd_divide_l a b : (gcd a b | a).
Admitted.

Lemma gcd_divide_r a b : (gcd a b | b).
Admitted.

Lemma gcd_greatest a b c : (c|a) -> (c|b) -> (c | gcd a b).
Admitted.

Lemma gcd_nonneg a b : 0 <= gcd a b.
Admitted.

Lemma div2_spec a : div2 a = shiftr a 1.
Admitted.

Lemma testbit_neg_r a n : n<0 -> testbit a n = false.
Admitted.

Lemma testbit_odd_0 a : testbit (2*a+1) 0 = true.
Admitted.

Lemma testbit_even_0 a : testbit (2*a) 0 = false.
Admitted.

Lemma testbit_odd_succ a n : 0<=n ->
 testbit (2*a+1) (succ n) = testbit a n.
Admitted.

Lemma testbit_even_succ a n : 0<=n ->
 testbit (2*a) (succ n) = testbit a n.
Admitted.

Lemma shiftl_spec_low a n m : m<n ->
                              testbit (shiftl a n) m = false.
Admitted.

Lemma shiftl_spec_high a n m : 0<=m -> n<=m ->
                               testbit (shiftl a n) m = testbit a (m-n).
Admitted.

Lemma shiftr_spec a n m : 0<=m ->
 testbit (shiftr a n) m = testbit a (m+n).
Admitted.

Lemma lor_spec a b n :
 testbit (lor a b) n = testbit a n || testbit b n.
Admitted.

Lemma land_spec a b n :
 testbit (land a b) n = testbit a n && testbit b n.
Admitted.

Lemma ldiff_spec a b n :
 testbit (ldiff a b) n = testbit a n && negb (testbit b n).
Admitted.

Lemma lxor_spec a b n :
 testbit (lxor a b) n = xorb (testbit a n) (testbit b n).
Admitted.

End Z.

Number Notation Z Z.of_num_int Z.to_num_int : Z_scope.

Infix "+" := Z.add : Z_scope.
Notation "- x" := (Z.opp x) : Z_scope.
Infix "-" := Z.sub : Z_scope.
Infix "*" := Z.mul : Z_scope.
Infix "<=" := Z.le : Z_scope.
Infix "<" := Z.lt : Z_scope.

Module Export Pos2Z.

End Pos2Z.

Module Export Z2Pos.

End Z2Pos.

Section LocalNotations.

End LocalNotations.

End BinInt.
Module Export Stdlib_DOT_ZArith_DOT_BinInt.
Module Export Stdlib.
Module Export ZArith.
Module Export BinInt.
End BinInt.

End ZArith.

End Stdlib.

End Stdlib_DOT_ZArith_DOT_BinInt.
Import Equations.CoreTactics.
Import Equations.Prop.DepElim.

Ltac solve_noconf_prf := intros;
  on_last_hyp ltac:(fun id => destruct id) ;
  on_last_hyp ltac:(fun id =>
                      destruct_sigma id;
                      destruct id) ;
  constructor.

Ltac solve_noconf_inv_eq a b :=
  destruct_sigma a; destruct_sigma b;
  destruct a ; depelim b; simpl in * |-;
  on_last_hyp ltac:(fun id => hnf in id; destruct_tele_eq id || destruct id);
  solve [constructor].

Ltac solve_noconf_inv := intros;
  match goal with
    |- ?R ?a ?b => destruct_sigma a; destruct_sigma b;
                   destruct a ; depelim b; simpl in * |-;
                 on_last_hyp ltac:(fun id => hnf in id; destruct_tele_eq id || destruct id);
                 solve [constructor]
  | |- @eq _ (?f ?a ?b _) _ => solve_noconf_inv_eq a b
  end.

Ltac solve_noconf_inv_equiv :=
  intros;

  on_last_hyp ltac:(fun id => destruct id) ;

  on_last_hyp ltac:(fun id => destruct_sigma id; destruct id) ;
  simpl; constructor.

Ltac solve_noconf := simpl; intros;
    match goal with
      [ H : @eq _ _ _ |- @eq _ _ _ ] => try solve_noconf_inv_equiv
    | [ H : @eq _ _ _ |- _ ] => try solve_noconf_prf
    | [ |- @eq _ _ _ ] => try solve_noconf_inv
    end.

Ltac Equations.Init.solve_noconf ::= solve_noconf.
Import Stdlib.ZArith.BinInt.
Declare Scope Int_scope.
#[local] Open Scope Int_scope.

Module Type Int.

  Parameter t : Set.
  Parameter _1 : t.
  Parameter _2 : t.
  Parameter add : t -> t -> t.
  Parameter max : t -> t -> t.
  Notation "1" := _1 : Int_scope.
  Notation "2" := _2 : Int_scope.
  Infix "+" := add : Int_scope.
  Axiom ltb : t -> t -> bool.
  Axiom leb : t -> t -> bool.
  Infix "<?" := ltb.
  Infix "<=?" := leb.

End Int.

Module MoreInt (Import I:Int).

End MoreInt.

Module Z_as_Int <: Int.
  #[local] Open Scope Z_scope.
  Definition t := Z.
  Definition _0 := 0.
  Definition _1 := 1.
  Definition _2 := 2.
  Definition _3 := 3.
  Definition add := Z.add.
  Definition max := Z.max.
  Definition eqb := Z.eqb.
  Definition ltb := Z.ltb.
  Definition leb := Z.leb.
Definition i2z : t -> Z.
Admitted.
  Lemma i2z_eq n p : i2z n = i2z p -> n = p.
Admitted.
  Lemma i2z_0 : i2z _0 = 0.
Admitted.
  Lemma i2z_1 : i2z _1 = 1.
Admitted.
  Lemma i2z_2 : i2z _2 = 2.
Admitted.
  Lemma i2z_3 : i2z _3 = 3.
Admitted.
  Lemma i2z_add n p : i2z (n + p) = i2z n + i2z p.
Admitted.
  Lemma i2z_opp n : i2z (- n) = - i2z n.
Admitted.
  Lemma i2z_sub n p : i2z (n - p) = i2z n - i2z p.
Admitted.
  Lemma i2z_mul n p : i2z (n * p) = i2z n * i2z p.
Admitted.
  Lemma i2z_max n p : i2z (max n p) = Z.max (i2z n) (i2z p).
Admitted.
  Lemma i2z_eqb n p : eqb n p = Z.eqb (i2z n) (i2z p).
Admitted.
  Lemma i2z_leb n p : leb n p = Z.leb (i2z n) (i2z p).
Admitted.
  Lemma i2z_ltb n p : ltb n p = Z.ltb (i2z n) (i2z p).
Admitted.
End Z_as_Int.
Module Export Stdlib_DOT_ZArith_DOT_Int.
Module Export Stdlib.
Module Export ZArith.
Module Export Int.
End Int.

End ZArith.

End Stdlib.

End Stdlib_DOT_ZArith_DOT_Int.
Export Stdlib.Arith.Arith_base.

Module Export Zabs2Nat.

End Zabs2Nat.
Module Export Stdlib.
Module Export ZArith.
Module Export Znat.
End Znat.
Module Export Equations_DOT_Prop_DOT_Loader_WRAPPED.
Module Export Loader.
Export Equations.Prop.Classes.
End Loader.
Module Export Equations_DOT_Prop_DOT_Equations_WRAPPED.
Module Export Equations.

Export Equations_DOT_Prop_DOT_Loader_WRAPPED.Loader.
End Equations.
Module Export ReflectEq.

Inductive reflectProp (P : Prop) : bool -> Prop :=
 | reflectP : P -> reflectProp P true
 | reflectF : ~ P -> reflectProp P false.

Class ReflectEq A := {
  eqb : A -> A -> bool ;
  eqb_spec : forall x y : A, reflectProp (x = y) (eqb x y)
}.

Section eq_list.
End eq_list.
Module Export MetaRocq_DOT_Utils_DOT_ReflectEq.
Module Export MetaRocq.
Module Export Utils.
Module Export ReflectEq.
End ReflectEq.

End Utils.

End MetaRocq.

End MetaRocq_DOT_Utils_DOT_ReflectEq.
Import Stdlib.Structures.OrderedType.
Import Stdlib.Structures.Orders.
Import Equations_DOT_Prop_DOT_Equations_WRAPPED.Equations.
Definition compare_cont (c : comparison) (d : comparison) : comparison.
Admitted.

Module BoolOT <: UsualOrderedType.
  Definition t := bool.
Definition compare (x y : bool) : comparison.
Admitted.

  Definition lt (x y : bool) :=
    if x then False else y = true.

  Definition compare_spec (x y : bool) : CompareSpec (x = y) (lt x y) (lt y x) (compare x y).
Admitted.
Definition eq : t -> t -> Prop.
exact (eq).
Defined.
Definition eq_equiv : Equivalence eq.
exact (_).
Defined.

  Definition eq_dec (l1 l2 : t) : {l1 = l2}+{l1 <> l2}.
Admitted.

  Definition lt_strorder : StrictOrder lt.
Admitted.

  Definition lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.

End BoolOT.

Module ListOrderedType (A : UsualOrderedType) <: UsualOrderedType.
  Definition t := list A.t.
Import ListNotations.
Fixpoint compare (l1 l2 : t) : comparison.
Admitted.
Definition eq : t -> t -> Prop.
exact (eq).
Defined.
Definition eq_equiv : Equivalence eq.
exact (_).
Defined.

  Inductive lt_ : t -> t -> Prop :=
  | lt_nil_cons hd tl : lt_ [] (hd :: tl)
  | lt_cons_cons_hd hd tl hd' tl' : A.lt hd hd' -> lt_ (hd :: tl) (hd' :: tl')
  | lt_cons_cons_tl hd tl tl' : lt_ tl tl' -> lt_ (hd :: tl) (hd :: tl').

  Definition lt := lt_.

  Global Instance lt_strorder : StrictOrder lt.
Admitted.

  Global Instance lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.

  Definition compare_spec :
    forall x y : t, CompareSpec (x = y) (lt x y) (lt y x) (compare x y).
Admitted.
Definition eqb (l1 l2 : t) : bool.
Admitted.

  Program Definition eqb_dec (x y : t) : { x = y } + { x <> y } :=
    match eqb x y with
    | true => left _
    | false => right _
    end.
Admit Obligations.

  Global Instance eq_dec : EqDec t := { eq_dec := eqb_dec }.

End ListOrderedType.
Module Export MetaRocq.
Module Export Utils.
Module Export MRCompare.
End MRCompare.
Module Export MSetGenTree.
Import Stdlib.MSets.MSetInterface.
#[local] Open Scope lazy_bool_scope.

Module Type InfoTyp.
 Parameter t : Set.
End InfoTyp.

Module Type Ops (X:OrderedType)(Info:InfoTyp).

Definition elt := X.t.

Inductive tree  : Type :=
| Leaf : tree
| Node : Info.t -> tree -> X.t -> tree -> tree.

Definition empty := Leaf.

Definition is_empty t :=
 match t with
 | Leaf => true
 | _ => false
 end.

Fixpoint mem x t :=
 match t with
 | Leaf => false
 | Node _ l k r =>
   match X.compare x k with
     | Lt => mem x l
     | Eq => true
     | Gt => mem x r
   end
 end.
Fixpoint min_elt (t : tree) : option elt.
Admitted.
Fixpoint max_elt (t : tree) : option elt.
Admitted.

Definition choose := min_elt.

Fixpoint fold {A: Type} (f: elt -> A -> A) (t: tree) (base: A) : A :=
  match t with
  | Leaf => base
  | Node _ l x r => fold f r (f x (fold f l base))
 end.

Fixpoint elements_aux acc s :=
  match s with
   | Leaf => acc
   | Node _ l x r => elements_aux (x :: elements_aux acc r) l
  end.

Definition elements := elements_aux nil.
Fixpoint cardinal (s : tree) : nat.
Admitted.

Fixpoint for_all (f:elt->bool) s := match s with
  | Leaf => true
  | Node _ l x r => f x &&& for_all f l &&& for_all f r
end.

Fixpoint exists_ (f:elt->bool) s := match s with
  | Leaf => false
  | Node _ l x r => f x ||| exists_ f l ||| exists_ f r
end.

Inductive enumeration :=
 | End : enumeration
 | More : elt -> tree -> enumeration -> enumeration.

Fixpoint cons s e : enumeration :=
 match s with
  | Leaf => e
  | Node _ l x r => cons l (More x r e)
 end.

Definition compare_more x1 (cont:enumeration->comparison) e2 :=
 match e2 with
 | End => Gt
 | More x2 r2 e2 =>
     match X.compare x1 x2 with
      | Eq => cont (cons r2 e2)
      | Lt => Lt
      | Gt => Gt
     end
 end.

Fixpoint compare_cont s1 (cont:enumeration->comparison) e2 :=
 match s1 with
  | Leaf => cont e2
  | Node _ l1 x1 r1 =>
     compare_cont l1 (compare_more x1 (compare_cont r1 cont)) e2
  end.

Definition compare_end e2 :=
 match e2 with End => Eq | _ => Lt end.

Definition compare s1 s2 := compare_cont s1 compare_end (cons s2 End).

Definition equal s1 s2 :=
 match compare s1 s2 with Eq => true | _ => false end.

Fixpoint subsetl (subset_l1 : tree -> bool) x1 s2 : bool :=
 match s2 with
  | Leaf => false
  | Node _ l2 x2 r2 =>
     match X.compare x1 x2 with
      | Eq => subset_l1 l2
      | Lt => subsetl subset_l1 x1 l2
      | Gt => mem x1 r2 &&& subset_l1 s2
     end
 end.

Fixpoint subsetr (subset_r1 : tree -> bool) x1 s2 : bool :=
 match s2 with
  | Leaf => false
  | Node _ l2 x2 r2 =>
     match X.compare x1 x2 with
      | Eq => subset_r1 r2
      | Lt => mem x1 l2 &&& subset_r1 s2
      | Gt => subsetr subset_r1 x1 r2
     end
 end.

Fixpoint subset s1 s2 : bool := match s1, s2 with
  | Leaf, _ => true
  | Node _ _ _ _, Leaf => false
  | Node _ l1 x1 r1, Node _ l2 x2 r2 =>
     match X.compare x1 x2 with
      | Eq => subset l1 l2 &&& subset r1 r2
      | Lt => subsetl (subset l1) x1 l2 &&& subset r1 s2
      | Gt => subsetr (subset r1) x1 r2 &&& subset l1 s2
     end
 end.

End Ops.

Module Type Props (X:OrderedType)(Info:InfoTyp)(Import M:Ops X Info).

Inductive InT (x : elt) : tree -> Prop :=
  | IsRoot : forall c l r y, X.eq x y -> InT x (Node c l y r)
  | InLeft : forall c l r y, InT x l -> InT x (Node c l y r)
  | InRight : forall c l r y, InT x r -> InT x (Node c l y r).

Definition In := InT.

Definition Equal s s' := forall a : elt, InT a s <-> InT a s'.
Definition Subset s s' := forall a : elt, InT a s -> InT a s'.
Definition Empty s := forall a : elt, ~ InT a s.
Definition For_all (P : elt -> Prop) s := forall x, InT x s -> P x.
Definition Exists (P : elt -> Prop) s := exists x, InT x s /\ P x.

Definition lt_tree x s := forall y, InT y s -> X.lt y x.
Definition gt_tree x s := forall y, InT y s -> X.lt x y.

Inductive bst : tree -> Prop :=
  | BSLeaf : bst Leaf
  | BSNode : forall c x l r, bst l -> bst r ->
     lt_tree x l -> gt_tree x r -> bst (Node c l x r).

Definition IsOk := bst.

Class Ok (s:tree) : Prop := ok : bst s.

Fixpoint ltb_tree x s :=
 match s with
  | Leaf => true
  | Node _ l y r =>
     match X.compare x y with
      | Gt => ltb_tree x l && ltb_tree x r
      | _ => false
     end
 end.

Fixpoint gtb_tree x s :=
 match s with
  | Leaf => true
  | Node _ l y r =>
     match X.compare x y with
      | Lt => gtb_tree x l && gtb_tree x r
      | _ => false
     end
 end.

Fixpoint isok s :=
 match s with
  | Leaf => true
  | Node _  l x r => isok l && isok r && ltb_tree x l && gtb_tree x r
 end.

#[global]
Instance isok_Ok s : isok s = true -> Ok s | 10.
Admitted.

#[global]
Instance In_compat : Proper (X.eq==>eq==>iff) InT.
Admitted.

Lemma empty_spec : Empty empty.
Admitted.

#[global]
Instance empty_ok : Ok empty.
Admitted.

Lemma is_empty_spec : forall s, is_empty s = true <-> Empty s.
Admitted.

Lemma mem_spec : forall s x `{Ok s}, mem x s = true <-> InT x s.
Admitted.

Lemma min_elt_spec1 s x : min_elt s = Some x -> InT x s.
Admitted.

Lemma min_elt_spec2 s x y `{Ok s} :
 min_elt s = Some x -> InT y s -> ~ X.lt y x.
Admitted.

Lemma min_elt_spec3 s : min_elt s = None -> Empty s.
Admitted.

Lemma max_elt_spec1 s x : max_elt s = Some x -> InT x s.
Admitted.

Lemma max_elt_spec2 s x y `{Ok s} :
 max_elt s = Some x -> InT y s -> ~ X.lt x y.
Admitted.

Lemma max_elt_spec3 s : max_elt s = None -> Empty s.
Admitted.

Lemma choose_spec1 : forall s x, choose s = Some x -> InT x s.
Admitted.

Lemma choose_spec2 : forall s, choose s = None -> Empty s.
Admitted.

Lemma choose_spec3 : forall s s' x x' `{Ok s, Ok s'},
  choose s = Some x -> choose s' = Some x' ->
  Equal s s' -> X.eq x x'.
Admitted.

Lemma elements_spec1 : forall s x, InA X.eq x (elements s) <-> InT x s.
Admitted.

Lemma elements_spec2 : forall s `(Ok s), sort X.lt (elements s).
Admitted.

Lemma elements_spec2w : forall s `(Ok s), NoDupA X.eq (elements s).
Admitted.

Lemma elements_cardinal : forall s : tree, cardinal s = length (elements s).
Admitted.

Definition cardinal_spec (s:tree)(Hs:Ok s) := elements_cardinal s.

Lemma for_all_spec s f : Proper (X.eq==>eq) f ->
 (for_all f s = true <-> For_all (fun x => f x = true) s).
Admitted.

Lemma exists_spec s f : Proper (X.eq==>eq) f ->
 (exists_ f s = true <-> Exists (fun x => f x = true) s).
Admitted.

Lemma fold_spec (s:tree) {A} (i : A) (f : elt -> A -> A) :
 fold f s i = fold_left (flip f) (elements s) i.
Admitted.

Lemma subset_spec : forall s1 s2 `{Ok s1, Ok s2},
 (subset s1 s2 = true <-> Subset s1 s2).
Admitted.

Definition eq := Equal.
#[global]
Instance eq_equiv : Equivalence eq.
Admitted.
Definition lt (s1 s2 : tree) : Prop.
Admitted.

#[global]
Instance lt_strorder : StrictOrder lt.
Admitted.

#[global]
Instance lt_compat : Proper (eq==>eq==>iff) lt.
Admitted.

Lemma compare_spec : forall s1 s2 `{Ok s1, Ok s2},
 CompSpec eq lt s1 s2 (compare s1 s2).
Admitted.

Lemma equal_spec : forall s1 s2 `{Ok s1, Ok s2},
 equal s1 s2 = true <-> eq s1 s2.
Admitted.

End Props.
Module Export MSetAVL.
Import Stdlib.MSets.MSetInterface.
Import Stdlib.ZArith.Int.

Module Ops (Import I:Int)(X:OrderedType) <: MSetInterface.Ops X.
#[local] Notation int := I.t.

Include MSetGenTree.Ops X I.

Definition t := tree.
Definition height (s : t) : int.
Admitted.

Definition singleton x := Node 1 Leaf x Leaf.

Definition create l x r :=
   Node (max (height l) (height r) + 1) l x r.

Definition assert_false := create.

Definition bal l x r :=
  let hl := height l in
  let hr := height r in
  if (hr+2) <? hl then
    match l with
     | Leaf => assert_false l x r
     | Node _ ll lx lr =>
       if (height lr) <=? (height ll) then
         create ll lx (create lr x r)
       else
         match lr with
          | Leaf => assert_false l x r
          | Node _ lrl lrx lrr =>
              create (create ll lx lrl) lrx (create lrr x r)
         end
    end
  else
    if (hl+2) <? hr then
      match r with
       | Leaf => assert_false l x r
       | Node _ rl rx rr =>
         if (height rl) <=? (height rr) then
            create (create l x rl) rx rr
         else
           match rl with
            | Leaf => assert_false l x r
            | Node _ rll rlx rlr =>
                create (create l x rll) rlx (create rlr rx rr)
           end
      end
    else
      create l x r.

Fixpoint add x s := match s with
   | Leaf => Node 1 Leaf x Leaf
   | Node h l y r =>
      match X.compare x y with
         | Lt => bal (add x l) y r
         | Eq => Node h l y r
         | Gt => bal l y (add x r)
      end
  end.

Fixpoint join l : elt -> t -> t :=
  match l with
    | Leaf => add
    | Node lh ll lx lr => fun x =>
       fix join_aux (r:t) : t := match r with
          | Leaf => add x l
          | Node rh rl rx rr =>
               if (rh+2) <? lh then bal ll lx (join lr x r)
               else if (lh+2) <? rh then bal (join_aux rl) rx rr
               else create l x r
          end
  end.

Fixpoint remove_min l x r : t*elt :=
  match l with
    | Leaf => (r,x)
    | Node lh ll lx lr =>
       let (l',m) := remove_min ll lx lr in (bal l' x r, m)
  end.

Definition merge s1 s2 :=  match s1,s2 with
  | Leaf, _ => s2
  | _, Leaf => s1
  | _, Node _ l2 x2 r2 =>
        let (s2',m) := remove_min l2 x2 r2 in bal s1 m s2'
end.

Fixpoint remove x s := match s with
  | Leaf => Leaf
  | Node _ l y r =>
      match X.compare x y with
         | Lt => bal (remove x l) y r
         | Eq => merge l r
         | Gt => bal l y (remove x r)
      end
   end.

Definition concat s1 s2 :=
   match s1, s2 with
      | Leaf, _ => s2
      | _, Leaf => s1
      | _, Node _ l2 x2 r2 =>
            let (s2',m) := remove_min l2 x2 r2 in
            join s1 m s2'
   end.

Record triple := mktriple { t_left:t; t_in:bool; t_right:t }.
Notation "<< l , b , r >>" := (mktriple l b r) (at level 0).

Fixpoint split x s : triple := match s with
  | Leaf => << Leaf, false, Leaf >>
  | Node _ l y r =>
     match X.compare x y with
      | Lt => let (ll,b,rl) := split x l in << ll, b, join rl y r >>
      | Eq => << l, true, r >>
      | Gt => let (rl,b,rr) := split x r in << join l y rl, b, rr >>
     end
 end.

Fixpoint inter s1 s2 := match s1, s2 with
    | Leaf, _ => Leaf
    | _, Leaf => Leaf
    | Node _ l1 x1 r1, _ =>
            let (l2',pres,r2') := split x1 s2 in
            if pres then join (inter l1 l2') x1 (inter r1 r2')
            else concat (inter l1 l2') (inter r1 r2')
    end.

Fixpoint diff s1 s2 := match s1, s2 with
 | Leaf, _ => Leaf
 | _, Leaf => s1
 | Node _ l1 x1 r1, _ =>
    let (l2',pres,r2') := split x1 s2 in
    if pres then concat (diff l1 l2') (diff r1 r2')
    else join (diff l1 l2') x1 (diff r1 r2')
end.

Fixpoint union s1 s2 :=
 match s1, s2 with
  | Leaf, _ => s2
  | _, Leaf => s1
  | Node _ l1 x1 r1, _ =>
     let (l2',_,r2') := split x1 s2 in
     join (union l1 l2') x1 (union r1 r2')
 end.

Fixpoint filter (f:elt->bool) s := match s with
  | Leaf => Leaf
  | Node _ l x r =>
    let l' := filter f l in
    let r' := filter f r in
    if f x then join l' x r' else concat l' r'
 end.
Fixpoint partition (f:elt->bool)(s : t) : t*t.
Admitted.

End Ops.

Module MakeRaw (Import I:Int)(X:OrderedType) <: RawSets X.
Include Ops I X.

Include MSetGenTree.Props X I.

Notation "s #1" := (fst s) (at level 1, format "s '#1'") : pair_scope.
Notation "s #2" := (snd s) (at level 1, format "s '#2'") : pair_scope.

#[local] Open Scope pair_scope.

Lemma singleton_spec : forall x y, InT y (singleton x) <-> X.eq y x.
Admitted.

#[global]
Instance singleton_ok x : Ok (singleton x).
Admitted.

Lemma add_spec : forall s x y `{Ok s},
 InT y (add x s) <-> X.eq y x \/ InT y s.
Admitted.

#[global]
Instance add_ok s x `(Ok s) : Ok (add x s).
Admitted.

Lemma remove_spec : forall s x y `{Ok s},
 (InT y (remove x s) <-> InT y s /\ ~ X.eq y x).
Admitted.

#[global]
Instance remove_ok s x `(Ok s) : Ok (remove x s).
Admitted.

Lemma inter_spec : forall s1 s2 y `{Ok s1, Ok s2},
 (InT y (inter s1 s2) <-> InT y s1 /\ InT y s2).
Admitted.

#[global]
Instance inter_ok s1 s2 `(Ok s1, Ok s2) : Ok (inter s1 s2).
Admitted.

Lemma diff_spec : forall s1 s2 y `{Ok s1, Ok s2},
 (InT y (diff s1 s2) <-> InT y s1 /\ ~InT y s2).
Admitted.

#[global]
Instance diff_ok s1 s2 `(Ok s1, Ok s2) : Ok (diff s1 s2).
Admitted.

Lemma union_spec : forall s1 s2 y `{Ok s1, Ok s2},
 (InT y (union s1 s2) <-> InT y s1 \/ InT y s2).
Admitted.

#[global]
Instance union_ok s1 s2 : forall `(Ok s1, Ok s2), Ok (union s1 s2).
Admitted.

Lemma filter_spec : forall s x f,
 Proper (X.eq==>Logic.eq) f ->
 (InT x (filter f s) <-> InT x s /\ f x = true).
Admitted.

#[global]
Instance filter_ok s f `(H : Ok s) : Ok (filter f s).
Admitted.

Lemma partition_spec1 s f :
 Proper (X.eq==>Logic.eq) f ->
 Equal (partition f s)#1 (filter f s).
Admitted.

Lemma partition_spec2 s f :
 Proper (X.eq==>Logic.eq) f ->
 Equal (partition f s)#2 (filter (fun x => negb (f x)) s).
Admitted.

#[global]
Instance partition_ok1 s f `(Ok s) : Ok (partition f s)#1.
Admitted.

#[global]
Instance partition_ok2 s f `(Ok s) : Ok (partition f s)#2.
Admitted.

End MakeRaw.

Module IntMake (I:Int)(X: OrderedType) <: S with Module E := X.
 Module Raw := MakeRaw I X.
 Include Raw2Sets X Raw.
End IntMake.

Module Make (X: OrderedType) <: S with Module E := X
 :=IntMake(Z_as_Int)(X).

End MSetAVL.
Class checker_flags := {

  check_univs : bool ;

  prop_sub_type : bool ;

  indices_matter : bool ;

  lets_in_constructor_types : bool
}.
Module Export MetaRocq.
Module Export Common.
Module Export config.
End config.

End Common.

End MetaRocq.
Export Stdlib.ZArith.BinInt.
Export Stdlib.ZArith.Znat.
Module Export String.
  Inductive t : Set :=
  | EmptyString
  | String (_ : Byte.byte) (_ : t).
Fixpoint compare (xs ys : t) : comparison.
Admitted.
Notation string := String.t.
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
Coercion is_true : bool >-> Sortclass.

Notation "'eta_compose'" := (fun g f x => g (f x)).

Notation "g ∘ f" := (eta_compose g f) (at level 40, left associativity).

Notation "'∑' x .. y , p" := (sigT (fun x => .. (sigT (fun y => p%type)) ..))
  (at level 200, x binder, right associativity,
   format "'[' '∑'  '/  ' x  ..  y ,  '/  ' p ']'")
  : type_scope.

Notation "( x ; y )" := (@existT _ _ x y).
Notation "x .π1" := (@projT1 _ _ x) (at level 3, format "x '.π1'").
Notation "x .π2" := (@projT2 _ _ x) (at level 3, format "x '.π2'").
Module Export MetaRocq_DOT_Utils_DOT_MRList_WRAPPED.
Module Export MRList.
Import Stdlib.Sorting.SetoidList.

Export ListNotations.

Notation "#| l |" := (List.length l) (at level 0, l at level 99, format "#| l |").

Fixpoint mapi_rec {A B} (f : nat -> A -> B) (l : list A) (n : nat) : list B :=
  match l with
  | [] => []
  | hd :: tl => f n hd :: mapi_rec f tl (S n)
  end.

Definition mapi {A B} (f : nat -> A -> B) (l : list A) := mapi_rec f l 0.

Section map2.

  Context {A B C} (f : A -> B -> C).
Fixpoint map2 (l : list A) (l' : list B) : list C.
Admitted.

End map2.
Definition rev {A} (l : list A) : list A.
Admitted.

Section Reverse_Induction.

End Reverse_Induction.

Section ListSize.

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
End MapInP.

End MRList.
Module Export MetaRocq.
Module Export Utils.
Module Export MRList.
Include MetaRocq_DOT_Utils_DOT_MRList_WRAPPED.MRList.
End MRList.
Import Stdlib.Lists.List.

Definition option_default {A B} (f : A -> B) (o : option A) (b : B) :=
  match o with Some x => f x | None => b end.

Fixpoint map_option_out {A} (l : list (option A)) : option (list A) :=
  match l with
  | nil => Some nil
  | hd :: tl => match hd, map_option_out tl with
                | Some hd, Some tl => Some (hd :: tl)
                | _, _ => None
                end
  end.
Import MetaRocq.Utils.MRList.

Inductive All {A} (P : A -> Type) : list A -> Type :=
    All_nil : All P []
  | All_cons : forall (x : A) (l : list A),
                  P x -> All P l -> All P (x :: l).
Arguments All_nil {_ _}.
Arguments All_cons {_ _ _ _}.

Inductive All2 {A B : Type} (R : A -> B -> Type) : list A -> list B -> Type :=
  All2_nil : All2 R [] []
| All2_cons : forall (x : A) (y : B) (l : list A) (l' : list B),
    R x y -> All2 R l l' -> All2 R (x :: l) (y :: l').

Inductive All2i {A B : Type} (R : nat -> A -> B -> Type) (n : nat)
  : list A -> list B -> Type :=
| All2i_nil : All2i R n [] []
| All2i_cons :
    forall x y l r,
      R n x y ->
      All2i R (S n) l r ->
      All2i R n (x :: l) (y :: r).

Inductive Forall3 {A B C : Type} (R : A -> B -> C -> Type) : list A -> list B -> list C -> Prop :=
  Forall3_nil : Forall3 R [] [] []
| Forall3_cons : forall (x : A) (y : B) (z : C) (l : list A) (l' : list B) (l'' : list C),
    R x y z -> Forall3 R l l' l'' -> Forall3 R (x :: l) (y :: l') (z :: l'').

Inductive OnOne2 {A : Type} (P : A -> A -> Type) : list A -> list A -> Type :=
| OnOne2_hd hd hd' tl : P hd hd' -> OnOne2 P (hd :: tl) (hd' :: tl)
| OnOne2_tl hd tl tl' : OnOne2 P tl tl' -> OnOne2 P (hd :: tl) (hd :: tl').

Definition size := nat.

Section All_size.
  Context {A} (P : A -> Type) (fn : forall x1, P x1 -> size).
  Fixpoint all_size {l1 : list A} (f : All P l1) : size :=
  match f with
  | All_nil => 0
  | All_cons px pl => fn _ px + all_size pl
  end.
End All_size.
Variant prim_tag :=
  | primInt
  | primFloat
  | primString
  | primArray.
Derive NoConfusion EqDec for prim_tag.
Module Export MetaRocq_DOT_Utils_DOT_MRUtils_WRAPPED.
Export MetaRocq.Utils.MRCompare.
Export MetaRocq.Utils.MRProd.
Export MetaRocq.Utils.MRRelations.
Export MetaRocq.Utils.ReflectEq.
Module Export MetaRocq.
Module Export Utils.
Module Export MRUtils.
End MRUtils.
Export MetaRocq.Utils.MRUtils.

Global Set Asymmetric Patterns.
Notation "A * B" := (prod A B) : type_scope2.
Global Open Scope type_scope2.

Definition ident   := string.

Definition dirpath := list ident.

Module IdentOT := StringOT.

Module DirPathOT := ListOrderedType IdentOT.

Inductive modpath :=
| MPfile  (dp : dirpath)
| MPbound (dp : dirpath) (id : ident) (i : nat)
| MPdot   (mp : modpath) (id : ident).

Definition kername := modpath × ident.

Module Export ModPathComp.

  Definition mpbound_compare dp id k dp' id' k' :=
    compare_cont (DirPathOT.compare dp dp')
      (compare_cont (IdentOT.compare id id') (Nat.compare k k')).

  Fixpoint compare mp mp' :=
    match mp, mp' with
    | MPfile dp, MPfile dp' => DirPathOT.compare dp dp'
    | MPbound dp id k, MPbound dp' id' k' =>
      mpbound_compare dp id k dp' id' k'
    | MPdot mp id, MPdot mp' id' =>
      compare_cont (compare mp mp') (IdentOT.compare id id')
    | MPfile _, _ => Gt
    | _, MPfile _ => Lt
    | MPbound _ _ _, _ => Gt
    | _, MPbound _ _ _ => Lt
    end.

End ModPathComp.

  Definition compare kn kn' :=
    match kn, kn' with
    | (mp, id), (mp', id') =>
      compare_cont (ModPathComp.compare mp mp') (IdentOT.compare id id')
    end.

  Definition eqb kn kn' :=
    match compare kn kn' with
    | Eq => true
    | _ => false
    end.

Record inductive : Set := mkInd { inductive_mind : kername ;
                                  inductive_ind : nat }.

Record projection := mkProjection
  { proj_ind : inductive;
    proj_npars : nat;
    proj_arg : nat  }.

Inductive global_reference :=
| VarRef : ident -> global_reference
| ConstRef : kername -> global_reference
| IndRef : inductive -> global_reference
| ConstructRef : inductive -> nat -> global_reference.
Module Export BasicAst.

Inductive name : Set :=
| nAnon
| nNamed (_ : ident).

Inductive relevance : Set := Relevant | Irrelevant.

Record binder_annot (A : Type) := mkBindAnn { binder_name : A; binder_relevance : relevance }.
Arguments binder_relevance {_}.
Definition eq_binder_annot {A B} (b : binder_annot A) (b' : binder_annot B) : Prop.
Admitted.

Definition aname := binder_annot name.

Record case_info := mk_case_info {
  ci_ind : inductive;
  ci_npar : nat;

  ci_relevance : relevance }.

Inductive recursivity_kind :=
  | Finite
  | CoFinite
  | BiFinite .

Inductive conv_pb :=
  | Conv
  | Cumul.

Record def term := mkdef {
  dname : aname;
  dtype : term;
  dbody : term;
  rarg  : nat   }.

Arguments dname {term} _.
Arguments dtype {term} _.
Arguments dbody {term} _.
Arguments rarg {term} _.

Definition map_def {A B} (tyf bodyf : A -> B) (d : def A) :=
  {| dname := d.(dname); dtype := tyf d.(dtype); dbody := bodyf d.(dbody); rarg := d.(rarg) |}.

Definition mfixpoint term := list (def term).

Record judgment_ {universe Term} := Judge {
  j_term : option Term;
  j_typ : Term;
  j_univ : option universe;
  j_rel : option relevance;
}.
Arguments judgment_ : clear implicits.
Arguments Judge {universe Term} _ _ _.

Section Contexts.
  Context {term : Type}.

  Record context_decl := mkdecl {
    decl_name : aname ;
    decl_body : option term ;
    decl_type : term
  }.
End Contexts.

Arguments context_decl : clear implicits.
Notation TypRel typ rel := (Judge None typ None (Some rel)).
Notation TermTypRel tm ty rel := (Judge (Some tm) ty None (Some rel)).
Notation TypUnivRel ty u rel := (Judge None ty (Some u) (Some rel)).

Notation j_vass na ty := (TypRel ty na.(binder_relevance)).
Notation j_vass_s na ty s := (TypUnivRel ty s na.(binder_relevance)).
Notation j_vdef na b ty := (TermTypRel b ty na.(binder_relevance)).
Definition map_decl {term term'} (f : term -> term') (d : context_decl term) : context_decl term'.
Admitted.

Definition snoc {A} (Γ : list A) (d : A) := d :: Γ.

Notation " Γ ,, d " := (snoc Γ d) (at level 20, d at next level).

Definition app_context {A} (Γ Γ': list A) := Γ' ++ Γ.

Notation "Γ ,,, Γ'" := (app_context Γ Γ') (at level 25, Γ' at next level, left associativity).

Section Contexts.
  Context {term term' term'' : Type}.

  Definition fold_context_k (f : nat -> term -> term') Γ :=
    List.rev (mapi (fun k' decl => map_decl (f k') decl) (List.rev Γ)).
Definition forget_types (c : list (BasicAst.context_decl term)) : list aname.
admit.
Defined.

End Contexts.
Module Export Universes.
Import MetaRocq.Common.config.

Implicit Types (cf : checker_flags).

Record valuation :=
  { valuation_mono : string -> positive ;
    valuation_poly : nat -> nat }.

Class Evaluable (A : Type) := val : valuation -> A -> nat.

Module Level.
  Inductive t_ : Set :=
  | lzero
  | level (_ : string)
  | lvar (_ : nat) .

  Definition t := t_.
Global Instance Evaluable : Evaluable t.
Admitted.
Definition compare (l1 l2 : t) : comparison.
Admitted.
Definition eq : t -> t -> Prop.
exact (eq).
Defined.
Definition eq_equiv : Equivalence eq.
Admitted.

  Inductive lt_ : t -> t -> Prop :=
  | ltSetLevel s : lt_ lzero (level s)
  | ltSetlvar n : lt_ lzero (lvar n)
  | ltLevelLevel s s' : StringOT.lt s s' -> lt_ (level s) (level s')
  | ltLevellvar s n : lt_ (level s) (lvar n)
  | ltlvarlvar n n' : Nat.lt n n' -> lt_ (lvar n) (lvar n').

  Definition lt := lt_.

  Definition lt_strorder : StrictOrder lt.
Admitted.

  Definition lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.

  Definition compare_spec :
    forall x y : t, CompareSpec (x = y) (lt x y) (lt y x) (compare x y).
Admitted.
Definition eq_dec : forall (l1 l2 : t), {l1 = l2}+{l1 <> l2}.
Admitted.

End Level.

Module LevelSet := MSetAVL.Make Level.

Module LevelExpr.
  Definition t := (Level.t * nat)%type.
Definition get_level (e : t) : Level.t.
Admitted.
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

Coercion t_set : nonEmptyLevelExprSet >-> LevelExprSet.t.

Module Export Universe.

  Definition t := nonEmptyLevelExprSet.
Definition make' (l: Level.t) : t.
Admitted.
Global Instance Evaluable : Evaluable Universe.t.
Admitted.
Definition lt : t -> t -> Prop.
Admitted.
End Universe.

Module Export ConstraintType.
  Inductive t_ : Set := Le (z : Z) | Eq.

  Definition t := t_.

  Inductive lt_ : t -> t -> Prop :=
  | LeLe n m : (n < m)%Z -> lt_ (Le n) (Le m)
  | LeEq n : lt_ (Le n) Eq.
  Definition lt := lt_.
End ConstraintType.

Module UnivConstraint.
Definition t : Set.
exact (Level.t * ConstraintType.t * Level.t).
Defined.
Definition eq : t -> t -> Prop.
Admitted.
Definition eq_equiv : Equivalence eq.
Admitted.

  Inductive lt_ : t -> t -> Prop :=
  | lt_Level2 l1 t l2 l2' : Level.lt l2 l2' -> lt_ (l1, t, l2) (l1, t, l2')
  | lt_Cstr l1 t t' l2 l2' : ConstraintType.lt t t' -> lt_ (l1, t, l2) (l1, t', l2')
  | lt_Level1 l1 l1' t t' l2 l2' : Level.lt l1 l1' -> lt_ (l1, t, l2) (l1', t', l2').
  Definition lt := lt_.

  Lemma lt_strorder : StrictOrder lt.
Admitted.

  Lemma lt_compat : Proper (eq ==> eq ==> iff) lt.
Admitted.
Definition compare : t -> t -> comparison.
Admitted.

  Lemma compare_spec x y
    : CompareSpec (eq x y) (lt x y) (lt y x) (compare x y).
Admitted.

  Lemma eq_dec x y : {eq x y} + {~ eq x y}.
Admitted.
End UnivConstraint.

Module ConstraintSet := MSetAVL.Make UnivConstraint.

Module Export Instance.
Definition t : Set.
exact (list Level.t).
Defined.
Definition empty : t.
Admitted.
End Instance.

Module Export UContext.
  Definition t := list name × (Instance.t × ConstraintSet.t).
Definition instance : t -> Instance.t.
Admitted.
End UContext.

Module Export AUContext.
  Definition t := list name × ConstraintSet.t.
Definition repr (x : t) : UContext.t.
Admitted.
End AUContext.

Module Export ContextSet.
  Definition t := LevelSet.t × ConstraintSet.t.
End ContextSet.

Module Variance.

  Inductive t :=
  | Irrelevant : t
  | Covariant : t
  | Invariant : t.

End Variance.

Variant opt_variance :=
  AllEqual | AllIrrelevant | Variance of list Variance.t.

Inductive universes_decl : Type :=
| Monomorphic_ctx
| Polymorphic_ctx (cst : AUContext.t).

Inductive satisfies0 (v : valuation) : UnivConstraint.t -> Prop :=
| satisfies0_Lt (l l' : Level.t) (z : Z) : (Z.of_nat (val v l) <= Z.of_nat (val v l') - z)%Z
                        -> satisfies0 v (l, ConstraintType.Le z, l')
| satisfies0_Eq (l l' : Level.t) : val v l = val v l'
                        -> satisfies0 v (l, ConstraintType.Eq, l').

Definition satisfies v : ConstraintSet.t -> Prop :=
  ConstraintSet.For_all (satisfies0 v).

Definition leq0_universe_n n φ (u u' : Universe.t) :=
  forall v, satisfies v φ -> (Z.of_nat (val v u) <= Z.of_nat (val v u') - n)%Z.

Definition leq_universe_n {cf} n φ (u u' : Universe.t) :=
  if check_univs then leq0_universe_n n φ u u' else True.
Definition leq_universe {cf} := leq_universe_n 0.

Definition eq0_universe φ (u u' : Universe.t) :=
  forall v, satisfies v φ -> val v u = val v u'.

Definition eq_universe {cf} φ (u u' : Universe.t) :=
  if check_univs then eq0_universe φ u u' else True.

Definition valid_constraints0 φ ctrs
  := forall v, satisfies v φ -> satisfies v ctrs.

Definition valid_constraints {cf} φ ctrs
  := if check_univs then valid_constraints0 φ ctrs else True.

Definition compare_universe {cf} φ (pb : conv_pb) :=
  match pb with
  | Conv => eq_universe φ
  | Cumul => leq_universe φ
  end.

Module Export Sort.
  Inductive t_ {univ} :=
    sProp | sSProp | sType (_ : univ).
  Arguments t_ : clear implicits.

  Definition t := t_ Universe.t.

  Inductive family : Set :=
  | fSProp
  | fProp
  | fType.

  Definition on_sort {univ} {T} (P: univ -> T) (def: T) (s : t_ univ) :=
    match s with
    | sProp | sSProp => def
    | sType l => P l
    end.
Definition is_sprop {univ} (s : t_ univ) : bool.
Admitted.
Definition is_propositional {univ} (s : t_ univ) : bool.
Admitted.
Definition type0 : t.
Admitted.
Definition super : t -> t.
Admitted.
Definition sort_of_product : t -> t -> t.
Admitted.

  Definition to_family {univ} (s : t_ univ) :=
    match s with
    | sSProp => fSProp
    | sProp => fProp
    | sType _ => fType
    end.

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
Notation sort := Sort.t.

Section SortCompare.
  Context {cf}.
  Definition leq_sort_n_ {univ} (leq_universe_n : Z -> univ -> univ -> Prop) n s s' : Prop :=
    match s, s' with
    | sProp,   sProp
    | sSProp,  sSProp => (n = 0)%Z
    | sType u, sType u' => leq_universe_n n u u'
    | sProp,   sType u => prop_sub_type
    | _, _ => False
    end.

  Definition leq_sort_n n φ := leq_sort_n_ (fun n => leq_universe_n n φ) n.
  Definition leq_sort := leq_sort_n 0.

  Definition eq_sort_ {univ} (eq_universe : univ -> univ -> Prop) s s' : Prop :=
    match s, s' with
    | sProp,   sProp
    | sSProp,  sSProp => True
    | sType u, sType u' => eq_universe u u'
    | _, _ => False
    end.

  Definition eq_sort φ := eq_sort_ (eq_universe φ).

  Definition compare_sort φ (pb : conv_pb) :=
    match pb with
    | Conv => eq_sort φ
    | Cumul => leq_sort φ
    end.
End SortCompare.

Definition relevance_of_family (s : Sort.family) :=
  match s with
  | Sort.fSProp => Irrelevant
  | _ => Relevant
  end.
Notation relevance_of_sort s := (relevance_of_family (Sort.to_family s)).

Notation isSortRel s rel := (relevance_of_sort s = rel).
Notation isSortRelOpt s relopt :=
  (option_default (fun rel => isSortRel s rel) relopt True).

Inductive allowed_eliminations : Set :=
  | IntoSProp
  | IntoPropSProp
  | IntoSetPropSProp
  | IntoAny.

Definition is_lSet {cf} φ s := eq_sort φ s Sort.type0.

Definition is_allowed_elimination {cf} φ allowed : Sort.t -> Prop :=
  match allowed with
  | IntoSProp => Sort.is_sprop
  | IntoPropSProp => Sort.is_propositional
  | IntoSetPropSProp => fun s => Sort.is_propositional s \/ is_lSet φ s
  | IntoAny => fun s => true
  end.

Class UnivSubst A := subst_instance : Instance.t -> A -> A.

Notation "x @[ u ]" := (subst_instance u x) (at level 3,
  format "x @[ u ]").
#[global] Instance subst_instance_cstrs : UnivSubst ConstraintSet.t.
Admitted.

Definition abstract_instance decl :=
  match decl with
  | Monomorphic_ctx => Instance.empty
  | Polymorphic_ctx auctx => UContext.instance (AUContext.repr auctx)
  end.

End Universes.

#[global] Instance reflect_recursivity_kind : ReflectEq recursivity_kind.
Admitted.
Import Stdlib.ssr.ssrbool.

Module Type Term.

  Parameter Inline term : Type.

  Parameter Inline tRel : nat -> term.
  Parameter Inline tSort : Sort.t -> term.
  Parameter Inline tLambda : aname -> term -> term -> term.
  Parameter Inline tLetIn : aname -> term -> term -> term -> term.

  Parameter Inline lift : nat -> nat -> term -> term.
  Parameter Inline subst : list term -> nat -> term -> term.

  Notation lift0 n := (lift n 0).
End Term.

Module Type TermDecide (Import T : Term).
End TermDecide.

Module TermDecideReflectInstances (Import T : Term) (Import TDec : TermDecide T).
End TermDecideReflectInstances.

Module Export Retroknowledge.

  Record t := mk_retroknowledge {
    retro_int63 : option kername;
    retro_float64 : option kername;
    retro_string : option kername;
    retro_array : option kername;
  }.

Module Environment (T : Term).

  Import T.

  Definition judgment := judgment_ Sort.t term.

  Notation context_decl := (context_decl term).

  Definition vass x A : context_decl :=
    {| decl_name := x ; decl_body := None ; decl_type := A |}.

  Definition vdef x t A : context_decl :=
    {| decl_name := x ; decl_body := Some t ; decl_type := A |}.

  Definition context := list context_decl.

  Definition lift_context n k (Γ : context) : context :=
    fold_context_k (fun k' => lift n (k' + k)) Γ.

  Definition subst_context s k (Γ : context) : context :=
    fold_context_k (fun k' => subst s (k' + k)) Γ.

  Definition subst_telescope s k (Γ : context) : context :=
    mapi (fun k' decl => map_decl (subst s (k' + k)) decl) Γ.
Global Instance subst_instance_context : UnivSubst context.
Admitted.
Definition set_binder_name (na : aname) (x : context_decl) : context_decl.
Admitted.
Fixpoint context_assumptions (Γ : context) : nat.
Admitted.
Fixpoint smash_context (Γ Γ' : context) : context.
Admitted.

  Fixpoint extended_subst (Γ : context) (n : nat)
   :=
  match Γ with
  | nil => nil
  | cons d vs =>
    match decl_body d with
    | Some b =>

      let s := extended_subst vs n in

      let b' := lift (context_assumptions vs + n) #|s| b in

      let b' := subst s 0 b' in

      b' :: s
    | None => tRel n :: extended_subst vs (S n)
    end
  end.

  Definition expand_lets_k Γ k t :=
    (subst (extended_subst Γ 0) k (lift (context_assumptions Γ) (k + #|Γ|) t)).

  Definition expand_lets Γ t := expand_lets_k Γ 0 t.

  Definition expand_lets_k_ctx Γ k Δ :=
    (subst_context (extended_subst Γ 0) k (lift_context (context_assumptions Γ) (k + #|Γ|) Δ)).

  Definition expand_lets_ctx Γ Δ := expand_lets_k_ctx Γ 0 Δ.
Definition fix_context (m : mfixpoint term) : context.
Admitted.

  Record constructor_body := {

    cstr_name : ident;

    cstr_args : context;

    cstr_indices : list term;

    cstr_type : term;

    cstr_arity : nat;
  }.

  Record projection_body := {

    proj_name : ident;

    proj_relevance : relevance;

    proj_type : term;
  }.

  Record one_inductive_body := {

    ind_name : ident;

    ind_indices : context;

    ind_sort : Sort.t;

    ind_type : term;

    ind_kelim : allowed_eliminations;

    ind_ctors : list constructor_body;

    ind_projs : list projection_body;

    ind_relevance : relevance }.

  Record mutual_inductive_body := {

    ind_finite : recursivity_kind;

    ind_npars : nat;

    ind_params : context;

    ind_bodies : list one_inductive_body ;

    ind_universes : universes_decl;

    ind_variance : option (list Universes.Variance.t) }.

  Record constant_body := {

    cst_type : term;

    cst_body : option term;

    cst_universes : universes_decl;

    cst_relevance : relevance }.

  Inductive global_decl :=
  | ConstantDecl : constant_body -> global_decl
  | InductiveDecl : mutual_inductive_body -> global_decl.

  Definition global_declarations := list (kername * global_decl).

  Record global_env := mk_global_env
    { universes : ContextSet.t;
      declarations : global_declarations;
      retroknowledge : Retroknowledge.t }.
Fixpoint lookup_global (Σ : global_declarations) (kn : kername) : option global_decl.
Admitted.

  Definition lookup_env (Σ : global_env) (kn : kername) := lookup_global Σ.(declarations) kn.
Definition primitive_constant (Σ : global_env) (p : prim_tag) : option kername.
Admitted.
Definition tImpl (dom codom : term) : term.
Admitted.

  Definition array_uctx := ([nAnon], ConstraintSet.empty).

  Definition primitive_invariants (p : prim_tag) (cdecl : constant_body) :=
    match p with
    | primInt | primFloat | primString =>
     [/\ cdecl.(cst_type) = tSort Sort.type0, cdecl.(cst_body) = None &
          cdecl.(cst_universes) = Monomorphic_ctx]
    | primArray =>
      let s := sType (Universe.make' (Level.lvar 0)) in
      [/\ cdecl.(cst_type) = tImpl (tSort s) (tSort s), cdecl.(cst_body) = None &
        cdecl.(cst_universes) = Polymorphic_ctx array_uctx]
    end.
Definition global_env_ext : Type.
exact (global_env * universes_decl).
Defined.
Definition fst_ctx : global_env_ext -> global_env.
Admitted.
  Coercion fst_ctx : global_env_ext >-> global_env.

  Definition mkLambda_or_LetIn d t :=
    match d.(decl_body) with
    | None => tLambda d.(decl_name) d.(decl_type) t
    | Some b => tLetIn d.(decl_name) b d.(decl_type) t
    end.

  Definition it_mkLambda_or_LetIn (l : context) (t : term) :=
    List.fold_left (fun acc d => mkLambda_or_LetIn d acc) l t.
Fixpoint reln (l : list term) (p : nat) (Γ0 : list context_decl) {struct Γ0} : list term.
Admitted.

  Definition to_extended_list_k Γ k := reln [] k Γ.
  Definition to_extended_list Γ := to_extended_list_k Γ 0.

End Environment.

Module Type EnvironmentSig (T : Term).
 Include Environment T.
End EnvironmentSig.

Module Type EnvironmentDecide (T : Term) (Import E : EnvironmentSig T).
End EnvironmentDecide.

Module EnvironmentDecideReflectInstances (T : Term) (Import E : EnvironmentSig T) (Import EDec : EnvironmentDecide T E).
End EnvironmentDecideReflectInstances.

Module Type TermUtils (T: Term) (E: EnvironmentSig T).

End TermUtils.
Module Export EnvironmentTyping.
Import MetaRocq.Common.config.

Module Lookup (T : Term) (E : EnvironmentSig T).
Import E.

  Definition declared_constant (Σ : global_env) id decl := In (id,ConstantDecl decl) (declarations Σ).

  Definition declared_minductive Σ mind decl := In (mind,InductiveDecl decl) (declarations Σ).

  Definition declared_inductive Σ ind mdecl decl :=
    declared_minductive Σ (inductive_mind ind) mdecl /\
    List.nth_error mdecl.(ind_bodies) (inductive_ind ind) = Some decl.

  Definition declared_constructor Σ cstr mdecl idecl cdecl :=
    declared_inductive Σ (fst cstr) mdecl idecl /\
    List.nth_error idecl.(ind_ctors) (snd cstr) = Some cdecl.

  Definition declared_projection Σ (proj : projection) mdecl idecl cdecl pdecl
  : Prop :=
    declared_constructor Σ (proj.(proj_ind), 0) mdecl idecl cdecl /\
    List.nth_error idecl.(ind_projs) proj.(proj_arg) = Some pdecl /\
    mdecl.(ind_npars) = proj.(proj_npars).

  Definition lookup_minductive_gen (lookup : kername -> option global_decl) mind :=
    match lookup mind with
    | Some (InductiveDecl decl) => Some decl
    | _ => None
    end.

  Definition lookup_inductive_gen lookup ind :=
    match lookup_minductive_gen lookup (inductive_mind ind) with
    | Some mdecl =>
      match nth_error mdecl.(ind_bodies) (inductive_ind ind) with
      | Some idecl => Some (mdecl, idecl)
      | None => None
      end
    | None => None
    end.

  Definition lookup_constructor_gen lookup ind k :=
    match lookup_inductive_gen lookup ind with
    | Some (mdecl, idecl) =>
      match nth_error idecl.(ind_ctors) k with
      | Some cdecl => Some (mdecl, idecl, cdecl)
      | None => None
      end
    | _ => None
    end.
Definition global_ext_levels (Σ : global_env_ext) : LevelSet.t.
Admitted.
Definition global_ext_constraints (Σ : global_env_ext) : ConstraintSet.t.
Admitted.

  Coercion global_ext_constraints : global_env_ext >-> ConstraintSet.t.

  Definition consistent_instance `{checker_flags} (lvs : LevelSet.t) (φ : ConstraintSet.t) uctx (u : Instance.t) :=
    match uctx with
    | Monomorphic_ctx => List.length u = 0
    | Polymorphic_ctx c =>

      forallb (fun l => LevelSet.mem l lvs) u /\
      List.length u = List.length c.1 /\
      valid_constraints φ (subst_instance_cstrs u c.2)
    end.

  Definition consistent_instance_ext `{checker_flags} Σ :=
    consistent_instance (global_ext_levels Σ) (global_ext_constraints Σ).

  Definition wf_universe Σ (u : Universe.t) : Prop :=
    forall l, LevelExprSet.In l u -> LevelSet.In (LevelExpr.get_level l) (global_ext_levels Σ).

  Definition wf_sort Σ (s : sort) : Prop :=
    Sort.on_sort (wf_universe Σ) True s.

End Lookup.

Module Type LookupSig (T : Term) (E : EnvironmentSig T).
End LookupSig.

Module EnvTyping (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E).
Import T.
Import E.

  Definition on_def_type (P : context -> judgment -> Type) Γ d :=
    P Γ (TypRel d.(dtype) d.(dname).(binder_relevance)).

  Definition on_def_body (P : context -> judgment -> Type) types Γ d :=
    P (Γ ,,, types) (TermTypRel d.(dbody) (lift0 #|types| d.(dtype)) d.(dname).(binder_relevance)).

  Definition lift_sorting checking sorting : judgment -> Type :=
    fun j => option_default (fun tm => checking tm (j_typ j)) (j_term j) (unit : Type) ×
                                ∑ s, sorting (j_typ j) s ×
                                  option_default (fun u => u = s) (j_univ j) True /\
                                  isSortRelOpt s (j_rel j).

  Notation lift_sorting1 checking sorting := (fun Γ => lift_sorting (checking Γ) (sorting Γ)).

  Section TypeLocal.
    Context (typing : forall (Γ : context), judgment -> Type).

    Inductive All_local_env : context -> Type :=
    | localenv_nil :
        All_local_env []

    | localenv_cons_abs Γ na t :
        All_local_env Γ ->
        typing Γ (j_vass na t) ->
        All_local_env (Γ ,, vass na t)

    | localenv_cons_def Γ na b t :
        All_local_env Γ ->
        typing Γ (j_vdef na b t) ->
        All_local_env (Γ ,, vdef na b t).
  End TypeLocal.

    Definition All_local_rel P Γ Γ'
      := (All_local_env (fun Δ j => P (Γ ,,, Δ) j) Γ').

  Section TypeCtxInst.
    Context (typing : forall (Γ : context), term -> term -> Type).

    Inductive ctx_inst (Γ : context) : list term -> context -> Type :=
    | ctx_inst_nil : ctx_inst Γ [] []
    | ctx_inst_ass na t i inst Δ :
        typing Γ i t ->
        ctx_inst Γ inst (subst_telescope [i] 0 Δ) ->
        ctx_inst Γ (i :: inst) (vass na t :: Δ)
    | ctx_inst_def na b t inst Δ :
        ctx_inst Γ inst (subst_telescope [b] 0 Δ) ->
        ctx_inst Γ inst (vdef na b t :: Δ).
  End TypeCtxInst.
Definition option_default_size {A f} (fsize : forall (a : A), f a -> size) o (w : option_default f o (unit : Type)) : size.
admit.
Defined.

  Section lift_sorting_size_gen.
    Context {checking : term -> term -> Type}.
    Context {sorting : term -> sort -> Type}.
    Context (csize : forall (t T : term), checking t T -> size).
    Context (ssize : forall (t : term) (u : sort), sorting t u -> size).

    Definition lift_sorting_size_gen base j (w : lift_sorting checking sorting j) : size :=
      base + option_default_size (fun tm => csize tm _) (j_term j) w.1 + ssize _ _ w.2.π2.1.

  End lift_sorting_size_gen.

  Definition on_def_type_size_gen {c s} (ssize : forall Γ t u, s Γ t u -> size) base
                                      Γ d (w : on_def_type (lift_sorting1 c s) Γ d) : size :=
    base + ssize _ _ _ w.2.π2.1.
  Definition on_def_body_size_gen {c s} (csize : forall Γ t u, c Γ t u -> size) (ssize : forall Γ t u, s Γ t u -> size) base
                                      types Γ d (w : on_def_body (lift_sorting1 c s) types Γ d) : size :=
    base + csize _ _ _ w.1 + ssize _ _ _ w.2.π2.1.

  Notation lift_sorting_size csize ssize := (lift_sorting_size_gen csize ssize 1).
  Notation on_def_type_sorting_size ssize := (on_def_type_size_gen ssize 1).
  Notation on_def_body_sorting_size csize ssize := (on_def_body_size_gen csize ssize 1).

  Section All_local_env_size.
    Context {checking : forall (Γ : context), term -> term -> Type}.
    Context {sorting : forall (Γ : context), term -> sort -> Type}.
    Context (csize : forall Γ t T, checking Γ t T -> size).
    Context (ssize : forall Γ t u, sorting Γ t u -> size).

    Fixpoint All_local_env_size_gen base Γ (w : All_local_env (lift_sorting1 checking sorting) Γ) : size :=
      match w with
      | localenv_nil => base
      | localenv_cons_abs Γ' na t w' p => ssize _ _ _ p.2.π2.1 + All_local_env_size_gen base _ w'
      | localenv_cons_def Γ' na b t w' p => csize _ _ _ p.1 + ssize _ _ _ p.2.π2.1 + All_local_env_size_gen base _ w'
      end.
  End All_local_env_size.

  Notation All_local_rel_size_gen c s csize ssize base := (fun Γ Δ (w : All_local_rel (lift_sorting1 c s) Γ Δ) =>
    All_local_env_size_gen (fun Δ => csize (Γ ,,, Δ)) (fun Δ => ssize (Γ ,,, Δ)) base Δ w).

  Section Bidirectional.
    Context {checking : context -> term -> term -> Type} {sorting : context -> term -> sort -> Type}.
    Context (checking_size : forall Γ t T, checking Γ t T -> size).
    Context (sorting_size : forall Γ t s, sorting Γ t s -> size).
    Definition All_local_rel_sorting_size := All_local_rel_size_gen _ _ checking_size sorting_size 1.
  End Bidirectional.

End EnvTyping.

Module Type EnvTypingSig (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E).
End EnvTypingSig.

Module Conversion (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E) (ET : EnvTypingSig T E TU).

  End Conversion.

Module Type ConversionSig (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E) (ET : EnvTypingSig T E TU).
End ConversionSig.

Module GlobalMaps (T: Term) (E: EnvironmentSig T) (TU : TermUtils T E) (ET: EnvTypingSig T E TU) (C: ConversionSig T E TU ET) (L: LookupSig T E).

  End GlobalMaps.

Module Type GlobalMapsSig (T: Term) (E: EnvironmentSig T) (TU : TermUtils T E) (ET: EnvTypingSig T E TU) (C: ConversionSig T E TU ET) (L: LookupSig T E).
End GlobalMapsSig.

Module Type ConversionParSig (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E) (ET : EnvTypingSig T E TU).

End ConversionParSig.

Module Type Typing (T : Term) (E : EnvironmentSig T) (TU : TermUtils T E) (ET : EnvTypingSig T E TU)
  (CT : ConversionSig T E TU ET) (CS : ConversionParSig T E TU ET).

End Typing.
Module Export MetaRocq_DOT_PCUIC_DOT_utils_DOT_PCUICPrimitive_WRAPPED.
Module Export PCUICPrimitive.

Record array_model {term : Type} :=
  { array_level : Level.t;
    array_type : term;
    array_default : term;
    array_value : list term }.

Arguments array_model : clear implicits.

Inductive prim_model (term : Type) : prim_tag -> Type :=
| primIntModel (i : PrimInt63.int) : prim_model term primInt
| primFloatModel (f : PrimFloat.float) : prim_model term primFloat
| primStringModel (s : PrimString.string) : prim_model term primString
| primArrayModel (a : array_model term) : prim_model term primArray.

Arguments primIntModel {term}.
Arguments primFloatModel {term}.
Arguments primStringModel {term}.
Arguments primArrayModel {term}.

Definition prim_val term := ∑ t : prim_tag, prim_model term t.
Definition prim_val_tag {term} (s : prim_val term) := s.π1.

Inductive onPrims {term} (eq_term : term -> term -> Type) Re : prim_val term -> prim_val term -> Type :=
  | onPrimsInt i : onPrims eq_term Re (primInt; primIntModel i) (primInt; primIntModel i)
  | onPrimsFloat f : onPrims eq_term Re (primFloat; primFloatModel f) (primFloat; primFloatModel f)
  | onPrimsString s : onPrims eq_term Re (primString; primStringModel s) (primString; primStringModel s)
  | onPrimsArray a a' :
    Re (Universe.make' a.(array_level)) (Universe.make' a'.(array_level)) ->
    eq_term a.(array_default) a'.(array_default) ->
    eq_term a.(array_type) a'.(array_type) ->
    All2 eq_term a.(array_value) a'.(array_value) ->
    onPrims eq_term Re (primArray; primArrayModel a) (primArray; primArrayModel a').
Definition mapu_array_model {term term'} (fl : Level.t -> Level.t) (f : term -> term')
  (ar : array_model term) : array_model term'.
admit.
Defined.

Equations mapu_prim {term term'} (f : Level.t -> Level.t) (g : term -> term')
  (p : PCUICPrimitive.prim_val term) : PCUICPrimitive.prim_val term' :=
| _, _, (primInt; primIntModel i) => (primInt; primIntModel i)
| _, _, (primFloat; primFloatModel fl) => (primFloat; primFloatModel fl)
| _, _, (primString; primStringModel s) => (primString; primStringModel s)
| f, g, (primArray; primArrayModel ar) =>
  (primArray; primArrayModel (mapu_array_model f g ar)).
Notation map_prim := (mapu_prim id).

End PCUICPrimitive.
Module Export MetaRocq.
Module Export PCUIC.
Module Export utils.
Module Export PCUICPrimitive.
Include MetaRocq_DOT_PCUIC_DOT_utils_DOT_PCUICPrimitive_WRAPPED.PCUICPrimitive.
End PCUICPrimitive.

Record predicate {term} := mk_predicate {
  pparams : list term;
  puinst : Instance.t;
  pcontext : list (context_decl term);

  preturn : term;  }.
Arguments predicate : clear implicits.

Section map_predicate_k.
  Context {term : Type}.
  Context (uf : Instance.t -> Instance.t).
  Context (f : nat -> term -> term).

  Definition map_predicate_k k (p : predicate term) :=
    {| pparams := map (f k) p.(pparams);
        puinst := uf p.(puinst);
        pcontext := p.(pcontext);
        preturn := f (#|p.(pcontext)| + k) p.(preturn) |}.

End map_predicate_k.

Section Branch.
  Context {term : Type}.

  Record branch := mk_branch {
    bcontext : list (context_decl term);

    bbody : term;  }.

End Branch.
Arguments branch : clear implicits.

Section map_branch_k.
  Context {term term' : Type}.
  Context (f : nat -> term -> term').
  Context (g : list (BasicAst.context_decl term) -> list (BasicAst.context_decl term')).
  Definition map_branch_k k (b : branch term) :=
  {| bcontext := g b.(bcontext);
     bbody := f (#|b.(bcontext)| + k) b.(bbody) |}.
End map_branch_k.

Notation map_branches_k f h k brs :=
  (List.map (map_branch_k f h k) brs).

Inductive term :=
| tRel (n : nat)
| tVar (i : ident)
| tEvar (n : nat) (l : list term)
| tSort (u : sort)
| tProd (na : aname) (A B : term)
| tLambda (na : aname) (A t : term)
| tLetIn (na : aname) (b B t : term)
| tApp (u v : term)
| tConst (k : kername) (ui : Instance.t)
| tInd (ind : inductive) (ui : Instance.t)
| tConstruct (ind : inductive) (n : nat) (ui : Instance.t)
| tCase (indn : case_info) (p : predicate term) (c : term) (brs : list (branch term))
| tProj (p : projection) (c : term)
| tFix (mfix : mfixpoint term) (idx : nat)
| tCoFix (mfix : mfixpoint term) (idx : nat)
| tPrim (prim : prim_val term).

Notation prim_val := (prim_val term).

Fixpoint mkApps t us :=
  match us with
  | nil => t
  | u :: us => mkApps (tApp t u) us
  end.

Definition isLambda t :=
  match t with
  | tLambda _ _ _ => true
  | _ => false
  end.

Fixpoint lift n k t : term :=
  match t with
  | tRel i => tRel (if Nat.leb k i then (n + i) else i)
  | tEvar ev args => tEvar ev (List.map (lift n k) args)
  | tLambda na T M => tLambda na (lift n k T) (lift n (S k) M)
  | tApp u v => tApp (lift n k u) (lift n k v)
  | tProd na A B => tProd na (lift n k A) (lift n (S k) B)
  | tLetIn na b t b' => tLetIn na (lift n k b) (lift n k t) (lift n (S k) b')
  | tCase ind p c brs =>
    let p' := map_predicate_k id (lift n) k p in
    let brs' := map_branches_k (lift n) id k brs in
    tCase ind p' (lift n k c) brs'
  | tProj p c => tProj p (lift n k c)
  | tFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (lift n k) (lift n k')) mfix in
    tFix mfix' idx
  | tCoFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (lift n k) (lift n k')) mfix in
    tCoFix mfix' idx
  | tPrim p => tPrim (map_prim (lift n k) p)
  | x => x
  end.

Notation lift0 n := (lift n 0).

Fixpoint subst s k u :=
  match u with
  | tRel n =>
    if Nat.leb k n then
      match nth_error s (n - k) with
      | Some b => lift0 k b
      | None => tRel (n - List.length s)
      end
    else tRel n
  | tEvar ev args => tEvar ev (List.map (subst s k) args)
  | tLambda na T M => tLambda na (subst s k T) (subst s (S k) M)
  | tApp u v => tApp (subst s k u) (subst s k v)
  | tProd na A B => tProd na (subst s k A) (subst s (S k) B)
  | tLetIn na b ty b' => tLetIn na (subst s k b) (subst s k ty) (subst s (S k) b')
  | tCase ind p c brs =>
    let p' := map_predicate_k id (subst s) k p in
    let brs' := map_branches_k (subst s) id k brs in
    tCase ind p' (subst s k c) brs'
  | tProj p c => tProj p (subst s k c)
  | tFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (subst s k) (subst s k')) mfix in
    tFix mfix' idx
  | tCoFix mfix idx =>
    let k' := List.length mfix + k in
    let mfix' := List.map (map_def (subst s k) (subst s k')) mfix in
    tCoFix mfix' idx
  | tPrim p => tPrim (map_prim (subst s k) p)
  | x => x
  end.

Notation subst0 t := (subst t 0).
Definition subst1 t k u := subst [t] k u.
Notation "M { j := N }" := (subst1 N j M) (at level 10, right associativity).
#[global]
Instance subst_instance_constr : UnivSubst term.
Admitted.

Module PCUICTerm <: Term.

  Definition term := term.

  Definition tRel := tRel.
  Definition tSort := tSort.
  Definition tLambda := tLambda.
  Definition tLetIn := tLetIn.

  Definition lift := lift.
  Definition subst := subst.
End PCUICTerm.

Module PCUICEnvironment := Environment PCUICTerm.
Export PCUICEnvironment.

Fixpoint destArity Γ (t : term) :=
  match t with
  | tProd na t b => destArity (Γ ,, vass na t) b
  | tLetIn na b b_ty b' => destArity (Γ ,, vdef na b b_ty) b'
  | tSort s => Some (Γ, s)
  | _ => None
  end.

Definition inds ind u (l : list one_inductive_body) :=
  let fix aux n :=
      match n with
      | 0 => []
      | S n => tInd (mkInd ind n) u :: aux n
      end
  in aux (List.length l).

Module PCUICTermUtils <: TermUtils PCUICTerm PCUICEnvironment.

End PCUICTermUtils.

Module PCUICEnvTyping := EnvironmentTyping.EnvTyping PCUICTerm PCUICEnvironment PCUICTermUtils.

Module PCUICConversion := EnvironmentTyping.Conversion PCUICTerm PCUICEnvironment PCUICTermUtils PCUICEnvTyping.

Module PCUICLookup := EnvironmentTyping.Lookup PCUICTerm PCUICEnvironment.
Include PCUICLookup.
Definition set_preturn (p : predicate term) (pret' : term) : predicate term.
Admitted.
Definition set_pparams (p : predicate term) (pars' : list term) : predicate term.
Admitted.

Fixpoint decompose_app_rec (t : term) l :=
  match t with
  | tApp f a => decompose_app_rec f (a :: l)
  | _ => (t, l)
  end.

Definition decompose_app t := decompose_app_rec t [].

Definition isConstruct_app t :=
  match fst (decompose_app t) with
  | tConstruct _ _ _ => true
  | _ => false
  end.
Fixpoint decompose_prod_assum (Γ : context) (t : term) : context * term.
Admitted.

Coercion ci_ind : case_info >-> inductive.

Definition ind_predicate_context ind mdecl idecl : context :=
  let ictx := (expand_lets_ctx mdecl.(ind_params) idecl.(ind_indices)) in
  let indty := mkApps (tInd ind (abstract_instance mdecl.(ind_universes)))
    (to_extended_list (smash_context [] mdecl.(ind_params) ,,, ictx)) in
  let inddecl :=
    {| decl_name :=
      {| binder_name := nNamed (ind_name idecl); binder_relevance := idecl.(ind_relevance) |};
       decl_body := None;
       decl_type := indty |}
  in (inddecl :: ictx).

Definition inst_case_context params puinst (pctx : context) :=
  subst_context (List.rev params) 0 (subst_instance puinst pctx).

Definition inst_case_predicate_context (p : predicate term) :=
  inst_case_context p.(pparams) p.(puinst) p.(pcontext).

Definition inst_case_branch_context (p : predicate term) (br : branch term) :=
  inst_case_context p.(pparams) p.(puinst) br.(bcontext).

Definition iota_red npar p args br :=
  subst (List.rev (List.skipn npar args)) 0
    (expand_lets (inst_case_branch_context p br) (bbody br)).

Definition pre_case_predicate_context_gen ind mdecl idecl params puinst : context :=
  inst_case_context params puinst (ind_predicate_context ind mdecl idecl).

Definition case_predicate_context_gen ind mdecl idecl params puinst pctx :=
  map2 set_binder_name pctx (pre_case_predicate_context_gen ind mdecl idecl params puinst).

Definition case_predicate_context ind mdecl idecl p : context :=
  case_predicate_context_gen ind mdecl idecl p.(pparams) p.(puinst) (forget_types p.(pcontext)).

Definition cstr_branch_context ind mdecl cdecl : context :=
  expand_lets_ctx mdecl.(ind_params)
    (subst_context (inds (inductive_mind ind) (abstract_instance mdecl.(ind_universes))
       mdecl.(ind_bodies)) #|mdecl.(ind_params)|
      cdecl.(cstr_args)).

Definition pre_case_branch_context_gen ind mdecl cdecl params puinst : context :=
  inst_case_context params puinst (cstr_branch_context ind mdecl cdecl).

Definition case_branch_context_gen ind mdecl params puinst pctx cdecl :=
  map2 set_binder_name pctx (pre_case_branch_context_gen ind mdecl cdecl params puinst).

Definition case_branch_type_gen ind mdecl (idecl : one_inductive_body) params puinst bctx ptm i cdecl : context * term :=
  let cstr := tConstruct ind i puinst in
  let args := to_extended_list cdecl.(cstr_args) in
  let cstrapp := mkApps cstr (map (lift0 #|cdecl.(cstr_args)|) params ++ args) in
  let brctx := case_branch_context_gen ind mdecl params puinst bctx cdecl in
  let upars := subst_instance puinst mdecl.(ind_params) in
  let indices :=
    (map (subst (List.rev params) #|cdecl.(cstr_args)|)
      (map (expand_lets_k upars #|cdecl.(cstr_args)|)
        (map (subst (inds (inductive_mind ind) puinst mdecl.(ind_bodies))
                    (#|mdecl.(ind_params)| + #|cdecl.(cstr_args)|))
          (map (subst_instance puinst) cdecl.(cstr_indices))))) in
  let ty := mkApps (lift0 #|cdecl.(cstr_args)| ptm) (indices ++ [cstrapp]) in
  (brctx, ty).

Definition case_branch_type ind mdecl idecl p (b : branch term) ptm i cdecl : context * term :=
  case_branch_type_gen ind mdecl idecl p.(pparams) p.(puinst) (forget_types b.(bcontext)) ptm i cdecl.

Definition idecl_binder idecl :=
  {| decl_name :=
    {| binder_name := nNamed idecl.(ind_name);
        binder_relevance := idecl.(ind_relevance) |};
     decl_body := None;
     decl_type := idecl.(ind_type) |}.

Definition wf_predicate_gen mdecl idecl (pparams : list term) (pcontext : list aname) : Prop :=
  let decl := idecl_binder idecl in
  (#|pparams| = mdecl.(ind_npars)) /\
  (Forall2 (fun na decl => eq_binder_annot na decl.(decl_name))
    pcontext (decl :: idecl.(ind_indices))).

Definition wf_predicate mdecl idecl (p : predicate term) : Prop :=
  wf_predicate_gen mdecl idecl p.(pparams) (forget_types p.(pcontext)).

Definition wf_branch_gen cdecl (bctx : list aname) : Prop :=
  (Forall2 (fun na decl => eq_binder_annot na decl.(decl_name))
    bctx cdecl.(cstr_args)).

Definition wf_branch cdecl (b : branch term) : Prop :=
  wf_branch_gen cdecl (forget_types b.(bcontext)).

Definition wf_branches idecl (brs : list (branch term)) : Prop :=
  Forall2 wf_branch idecl.(ind_ctors) brs.

Definition fix_subst (l : mfixpoint term) :=
  let fix aux n :=
      match n with
      | 0 => []
      | S n => tFix l n :: aux n
      end
  in aux (List.length l).

Definition unfold_fix (mfix : mfixpoint term) (idx : nat) :=
  match List.nth_error mfix idx with
  | Some d => Some (d.(rarg), subst0 (fix_subst mfix) d.(dbody))
  | None => None
  end.

Definition cofix_subst (l : mfixpoint term) :=
  let fix aux n :=
      match n with
      | 0 => []
      | S n => tCoFix l n :: aux n
      end
  in aux (List.length l).

Definition unfold_cofix (mfix : mfixpoint term) (idx : nat) :=
  match List.nth_error mfix idx with
  | Some d => Some (d.(rarg), subst0 (cofix_subst mfix) d.(dbody))
  | None => None
  end.

Definition is_constructor n ts :=
  match List.nth_error ts n with
  | Some a => isConstruct_app a
  | None => false
  end.
Definition cmp_universe_instance (cmp_univ : Universe.t -> Universe.t -> Prop) : Instance.t -> Instance.t -> Prop.
Admitted.

Definition cmp_universe_variance (cmp_univ : conv_pb -> Universe.t -> Universe.t -> Prop) pb v u u' :=
  match v with
  | Variance.Irrelevant => True
  | Variance.Covariant => on_rel (cmp_univ pb) Universe.make' u u'
  | Variance.Invariant => on_rel (cmp_univ Conv) Universe.make' u u'
  end.

Definition cmp_universe_instance_variance cmp_univ pb v u u' :=
  Forall3 (cmp_universe_variance cmp_univ pb) v u u'.

Definition global_variance_gen lookup gr napp :=
  match gr with
  | IndRef ind =>
    match lookup_inductive_gen lookup ind with
    | Some (mdecl, idecl) =>
      match destArity [] idecl.(ind_type) with
      | Some (ctx, _) => if (context_assumptions ctx) <=? napp then
          match mdecl.(ind_variance) with
          | Some var => Variance var
          | None => AllEqual
          end
        else AllEqual
      | None => AllEqual
      end
    | None => AllEqual
    end
  | ConstructRef ind k =>
    match lookup_constructor_gen lookup ind k with
    | Some (mdecl, idecl, cdecl) =>
      if (cdecl.(cstr_arity) + mdecl.(ind_npars))%nat <=? napp then

        AllIrrelevant
      else AllEqual
    | _ => AllEqual
    end
  | _ => AllEqual
  end.

Definition cmp_opt_variance cmp_univ pb v :=
  match v with
  | AllEqual => cmp_universe_instance (cmp_univ Conv)
  | AllIrrelevant => fun l l' => #|l| = #|l'|
  | Variance v => fun u u' => cmp_universe_instance (cmp_univ Conv) u u' \/ cmp_universe_instance_variance cmp_univ pb v u u'
  end.

Definition cmp_global_instance_gen Σ cmp_universe pb gr napp :=
  cmp_opt_variance cmp_universe pb (global_variance_gen Σ gr napp).

Notation cmp_global_instance Σ := (cmp_global_instance_gen (lookup_env Σ)).

Definition cmp_ind_universes {cf:checker_flags} (Σ : global_env_ext) ind n i i' :=
  cmp_global_instance Σ (compare_universe (global_ext_constraints Σ)) Cumul (IndRef ind) n i i'.

Inductive eq_decl_upto_names : context_decl -> context_decl -> Type :=
  | compare_vass {na na' T} :
    eq_binder_annot na na' -> eq_decl_upto_names (vass na T) (vass na' T)
  | compare_vdef {na na' b T} :
    eq_binder_annot na na' -> eq_decl_upto_names (vdef na b T) (vdef na' b T).

Notation eq_context_upto_names := (All2 eq_decl_upto_names).

Definition eq_predicate (eq_term : term -> term -> Type) eq_universe p p' :=
  All2 eq_term p.(pparams) p'.(pparams) ×
  cmp_universe_instance eq_universe p.(puinst) p'.(puinst) ×
  eq_context_upto_names p.(pcontext) p'.(pcontext) ×
  eq_term p.(preturn) p'.(preturn).

Definition eq_branch (eq_term : term -> term -> Type) br br' :=
  eq_context_upto_names br.(bcontext) br'.(bcontext) ×
  eq_term br.(bbody) br'.(bbody).

Definition eq_branches eq_term brs brs' := All2 (eq_branch eq_term) brs brs'.

Definition eq_mfixpoint (eq_term : term -> term -> Type) mfix mfix' :=
  All2 (fun d d' =>
    eq_term d.(dtype) d'.(dtype) ×
    eq_term d.(dbody) d'.(dbody) ×
    d.(rarg) = d'.(rarg) ×
    eq_binder_annot d.(dname) d'.(dname)
  ) mfix mfix'.

Reserved Notation " Σ ⊢ t <==[ Rle , napp ] u" (at level 50, t, u at next level,
  format "Σ  ⊢  t  <==[ Rle , napp ]  u").

Inductive eq_term_upto_univ_napp Σ
  (cmp_universe : conv_pb -> Universe.t -> Universe.t -> Prop)
  (cmp_sort : conv_pb -> sort -> sort -> Prop)
  (pb : conv_pb) (napp : nat) : term -> term -> Type :=
| eq_Rel : forall n,
    Σ ⊢ tRel n <==[ pb , napp ] tRel n

| eq_Evar : forall e args args',
    All2 (fun arg arg' => (Σ ⊢ arg <==[ Conv , 0 ] arg')) args args' ->
    Σ ⊢ tEvar e args <==[ pb , napp ] tEvar e args'

| eq_Var : forall id,
    Σ ⊢ tVar id <==[ pb , napp ] tVar id

| eq_Sort : forall s s',
    cmp_sort pb s s' ->
    Σ ⊢ tSort s  <==[ pb , napp ] tSort s'

| eq_App : forall t t' u u',
    Σ ⊢ t <==[ pb , S napp ] t' ->
    Σ ⊢ u <==[ Conv , 0 ] u' ->
    Σ ⊢ tApp t u <==[ pb , napp ] tApp t' u'

| eq_Const : forall c u u',
    cmp_universe_instance (cmp_universe Conv) u u' ->
    Σ ⊢ tConst c u <==[ pb , napp ] tConst c u'

| eq_Ind : forall i u u',
    cmp_global_instance Σ cmp_universe pb (IndRef i) napp u u' ->
    Σ ⊢ tInd i u <==[ pb , napp ] tInd i u'

| eq_Construct : forall i k u u',
    cmp_global_instance Σ cmp_universe pb (ConstructRef i k) napp u u' ->
    Σ ⊢ tConstruct i k u <==[ pb , napp ] tConstruct i k u'

| eq_Lambda : forall na na' ty ty' t t',
    eq_binder_annot na na' ->
    Σ ⊢ ty <==[ Conv , 0 ] ty' ->
    Σ ⊢ t <==[ Conv , 0 ] t' ->
    Σ ⊢ tLambda na ty t <==[ pb , napp ] tLambda na' ty' t'

| eq_Prod : forall na na' a a' b b',
    eq_binder_annot na na' ->
    Σ ⊢ a <==[ Conv , 0 ] a' ->
    Σ ⊢ b <==[ pb , 0 ] b' ->
    Σ ⊢ tProd na a b <==[ pb , napp ] tProd na' a' b'

| eq_LetIn : forall na na' t t' ty ty' u u',
    eq_binder_annot na na' ->
    Σ ⊢ t <==[ Conv , 0 ] t' ->
    Σ ⊢ ty <==[ Conv , 0 ] ty' ->
    Σ ⊢ u <==[ Conv , 0 ] u' ->
    Σ ⊢ tLetIn na t ty u <==[ pb , napp ] tLetIn na' t' ty' u'

| eq_Case : forall indn p p' c c' brs brs',
    eq_predicate (fun t t' => Σ ⊢ t <==[ Conv , 0 ] t') (cmp_universe Conv) p p' ->
    Σ ⊢ c <==[ Conv , 0 ] c' ->
    eq_branches (fun t t' => Σ ⊢ t <==[ Conv , 0 ] t') brs brs' ->
    Σ ⊢ tCase indn p c brs <==[ pb , napp ] tCase indn p' c' brs'

| eq_Proj : forall p c c',
    Σ ⊢ c <==[ Conv , 0 ] c' ->
    Σ ⊢ tProj p c <==[ pb , napp ] tProj p c'

| eq_Fix : forall mfix mfix' idx,
    eq_mfixpoint (fun t t' => Σ ⊢ t <==[ Conv , 0 ] t') mfix mfix' ->
    Σ ⊢ tFix mfix idx <==[ pb , napp ] tFix mfix' idx

| eq_CoFix : forall mfix mfix' idx,
    eq_mfixpoint (fun t t' => Σ ⊢ t <==[ Conv , 0 ] t') mfix mfix' ->
    Σ ⊢ tCoFix mfix idx <==[ pb , napp ] tCoFix mfix' idx

| eq_Prim i i' :
    onPrims (fun t t' => Σ ⊢ t <==[ Conv , 0 ] t') (cmp_universe Conv) i i' ->
    Σ ⊢ tPrim i <==[ pb , napp ] tPrim i'
where " Σ ⊢ t <==[ pb , napp ] u " := (eq_term_upto_univ_napp Σ _ _ pb napp t u) : type_scope.

Notation eq_term_upto_univ Σ cmp_universe cmp_sort pb := (eq_term_upto_univ_napp Σ cmp_universe cmp_sort pb 0) (only parsing).

Definition compare_term `{checker_flags} Σ φ (pb : conv_pb) (t u : term) :=
  eq_term_upto_univ Σ (compare_universe φ) (compare_sort φ) pb t u.

Module PCUICConversionParSpec <: EnvironmentTyping.ConversionParSig PCUICTerm PCUICEnvironment PCUICTermUtils PCUICEnvTyping.
End PCUICConversionParSpec.
Import Equations.Type.Relation.

Reserved Notation " Σ ;;; Γ |- t ⇝ u " (at level 50, Γ, t, u at next level).

Definition set_array_default (ar : array_model term) (v : term) :=
  {| array_level := ar.(array_level);
     array_default := v;
     array_type := ar.(array_type);
     array_value := ar.(array_value) |}.

Definition set_array_type (ar : array_model term) (v : term) :=
  {| array_level := ar.(array_level);
     array_default := ar.(array_default);
     array_type := v;
     array_value := ar.(array_value) |}.

Definition set_array_value (ar : array_model term) (v : list term) :=
  {| array_level := ar.(array_level);
     array_default := ar.(array_default);
     array_type := ar.(array_type);
     array_value := v |}.

Inductive red1 (Σ : global_env) (Γ : context) : term -> term -> Type :=

| red_beta na t b a :
  Σ ;;; Γ |- tApp (tLambda na t b) a ⇝ b {0 := a}

| red_zeta na b t b' :
  Σ ;;; Γ |- tLetIn na b t b' ⇝ b' {0 := b}

| red_rel i body :
    option_map decl_body (nth_error Γ i) = Some (Some body) ->
    Σ ;;; Γ |- tRel i ⇝ lift0 (S i) body

| red_iota ci c u args p brs br :
    nth_error brs c = Some br ->
    #|args| = (ci.(ci_npar) + context_assumptions br.(bcontext))%nat ->
    Σ ;;; Γ |- tCase ci p (mkApps (tConstruct ci.(ci_ind) c u) args) brs
        ⇝ iota_red ci.(ci_npar) p args br

| red_fix mfix idx args narg fn :
    unfold_fix mfix idx = Some (narg, fn) ->
    is_constructor narg args = true ->
    Σ ;;; Γ |- mkApps (tFix mfix idx) args ⇝ mkApps fn args

| red_cofix_case ip p mfix idx args narg fn brs :
    unfold_cofix mfix idx = Some (narg, fn) ->
    Σ ;;; Γ |- tCase ip p (mkApps (tCoFix mfix idx) args) brs ⇝
         tCase ip p (mkApps fn args) brs

| red_cofix_proj p mfix idx args narg fn :
    unfold_cofix mfix idx = Some (narg, fn) ->
    Σ ;;; Γ |- tProj p (mkApps (tCoFix mfix idx) args) ⇝ tProj p (mkApps fn args)

| red_delta c decl body (isdecl : declared_constant Σ c decl) u :
    decl.(cst_body) = Some body ->
    Σ ;;; Γ |- tConst c u ⇝ subst_instance u body

| red_proj p args u arg:
    nth_error args (p.(proj_npars) + p.(proj_arg)) = Some arg ->
    Σ ;;; Γ |- tProj p (mkApps (tConstruct p.(proj_ind) 0 u) args) ⇝ arg

| abs_red_l na M M' N : Σ ;;; Γ |- M ⇝ M' -> Σ ;;; Γ |- tLambda na M N ⇝ tLambda na M' N
| abs_red_r na M M' N : Σ ;;; Γ ,, vass na N |- M ⇝ M' -> Σ ;;; Γ |- tLambda na N M ⇝ tLambda na N M'

| letin_red_def na b t b' r : Σ ;;; Γ |- b ⇝ r -> Σ ;;; Γ |- tLetIn na b t b' ⇝ tLetIn na r t b'
| letin_red_ty na b t b' r : Σ ;;; Γ |- t ⇝ r -> Σ ;;; Γ |- tLetIn na b t b' ⇝ tLetIn na b r b'
| letin_red_body na b t b' r : Σ ;;; Γ ,, vdef na b t |- b' ⇝ r -> Σ ;;; Γ |- tLetIn na b t b' ⇝ tLetIn na b t r

| case_red_param ci p params' c brs :
    OnOne2 (fun t u => Σ ;;; Γ |- t ⇝ u) p.(pparams) params' ->
    Σ ;;; Γ |- tCase ci p c brs ⇝ tCase ci (set_pparams p params') c brs

| case_red_return ci p preturn' c brs :
  Σ ;;; Γ ,,, inst_case_predicate_context p |- p.(preturn) ⇝ preturn' ->
  Σ ;;; Γ |- tCase ci p c brs ⇝ tCase ci (set_preturn p preturn') c brs

| case_red_discr ci p c c' brs :
  Σ ;;; Γ |- c ⇝ c' -> Σ ;;; Γ |- tCase ci p c brs ⇝ tCase ci p c' brs

| case_red_brs ci p c brs brs' :
    OnOne2 (fun br br' =>
      on_Trel_eq (fun t u => Σ ;;; Γ ,,, inst_case_branch_context p br |- t ⇝ u) bbody bcontext br br')
      brs brs' ->
    Σ ;;; Γ |- tCase ci p c brs ⇝ tCase ci p c brs'

| proj_red p c c' : Σ ;;; Γ |- c ⇝ c' -> Σ ;;; Γ |- tProj p c ⇝ tProj p c'

| app_red_l M1 N1 M2 : Σ ;;; Γ |- M1 ⇝ N1 -> Σ ;;; Γ |- tApp M1 M2 ⇝ tApp N1 M2
| app_red_r M2 N2 M1 : Σ ;;; Γ |- M2 ⇝ N2 -> Σ ;;; Γ |- tApp M1 M2 ⇝ tApp M1 N2

| prod_red_l na M1 M2 N1 : Σ ;;; Γ |- M1 ⇝ N1 -> Σ ;;; Γ |- tProd na M1 M2 ⇝ tProd na N1 M2
| prod_red_r na M2 N2 M1 : Σ ;;; Γ ,, vass na M1 |- M2 ⇝ N2 ->
                           Σ ;;; Γ |- tProd na M1 M2 ⇝ tProd na M1 N2

| evar_red ev l l' : OnOne2 (fun t u => Σ ;;; Γ |- t ⇝ u) l l' -> Σ ;;; Γ |- tEvar ev l ⇝ tEvar ev l'

| fix_red_ty mfix0 mfix1 idx :
    OnOne2 (on_Trel_eq (fun t u => Σ ;;; Γ |- t ⇝ u) dtype (fun x => (dname x, dbody x, rarg x))) mfix0 mfix1 ->
    Σ ;;; Γ |- tFix mfix0 idx ⇝ tFix mfix1 idx

| fix_red_body mfix0 mfix1 idx :
    OnOne2 (on_Trel_eq (fun t u => Σ ;;; Γ ,,, fix_context mfix0 |- t ⇝ u) dbody (fun x => (dname x, dtype x, rarg x)))
           mfix0 mfix1 ->
    Σ ;;; Γ |- tFix mfix0 idx ⇝ tFix mfix1 idx

| cofix_red_ty mfix0 mfix1 idx :
    OnOne2 (on_Trel_eq (fun t u => Σ ;;; Γ |- t ⇝ u) dtype (fun x => (dname x, dbody x, rarg x))) mfix0 mfix1 ->
    Σ ;;; Γ |- tCoFix mfix0 idx ⇝ tCoFix mfix1 idx

| cofix_red_body mfix0 mfix1 idx :
    OnOne2 (on_Trel_eq (fun t u => Σ ;;; Γ ,,, fix_context mfix0 |- t ⇝ u) dbody (fun x => (dname x, dtype x, rarg x))) mfix0 mfix1 ->
    Σ ;;; Γ |- tCoFix mfix0 idx ⇝ tCoFix mfix1 idx

| array_red_val arr value :
    OnOne2 (fun t u => Σ ;;; Γ |- t ⇝ u) arr.(array_value) value ->
    Σ ;;; Γ |- tPrim (primArray; primArrayModel arr) ⇝
               tPrim (primArray; primArrayModel (set_array_value arr value))

| array_red_def arr def :
    Σ ;;; Γ |- arr.(array_default) ⇝ def ->
    Σ ;;; Γ |- tPrim (primArray; primArrayModel arr) ⇝
               tPrim (primArray; primArrayModel (set_array_default arr def))

| array_red_type arr ty :
    Σ ;;; Γ |- arr.(array_type) ⇝ ty ->
    Σ ;;; Γ |- tPrim (primArray; primArrayModel arr) ⇝
          tPrim (primArray; primArrayModel (set_array_type arr ty))

where " Σ ;;; Γ |- t ⇝ u " := (red1 Σ Γ t u).

Definition red Σ Γ := clos_refl_trans (fun t u : term => Σ;;; Γ |- t ⇝ u).

Reserved Notation " Σ ;;; Γ |- t <=[ pb ] u" (at level 50, Γ, t, u at next level,
  format "Σ  ;;;  Γ  |-  t  <=[ pb ] u").

Notation " Σ ⊢ t <===[ pb ] u" := (compare_term Σ Σ pb t u) (at level 50, t, u at next level).

Inductive cumulAlgo_gen `{checker_flags} (Σ : global_env_ext) (Γ : context) (pb : conv_pb) : term -> term -> Type :=
| cumul_refl t u : Σ ⊢ t <===[ pb ] u -> Σ ;;; Γ |- t <=[pb] u
| cumul_red_l t u v : Σ ;;; Γ |- t ⇝ v -> Σ ;;; Γ |- v <=[pb] u -> Σ ;;; Γ |- t <=[pb] u
| cumul_red_r t u v : Σ ;;; Γ |- t <=[pb] v -> Σ ;;; Γ |- u ⇝ v -> Σ ;;; Γ |- t <=[pb] u
where " Σ ;;; Γ |- t <=[ pb ] u " := (cumulAlgo_gen Σ Γ pb t u) : type_scope.
Notation " Σ ;;; Γ |- t <= u " := (cumulAlgo_gen Σ Γ Cumul t u) (at level 50, Γ, t, u at next level) : type_scope.
Notation convAlgo Σ Γ := (cumulAlgo_gen Σ Γ Conv).

Module Export MetaRocq_DOT_PCUIC_DOT_PCUICTyping_WRAPPED.
Import MetaRocq.PCUIC.utils.PCUICPrimitive.

Implicit Types (cf : checker_flags) (Σ : global_env_ext).

Definition type_of_constructor mdecl (cdecl : constructor_body) (c : inductive * nat) (u : list Level.t) :=
  let mind := inductive_mind (fst c) in
  subst0 (inds mind u mdecl.(ind_bodies)) (subst_instance u (cstr_type cdecl)).

Include PCUICEnvTyping.

Inductive FixCoFix : Type := Fix | CoFix.

Class GuardChecker :=
{
  guard : FixCoFix -> global_env_ext -> context -> mfixpoint term -> Prop ;
}.

Axiom guard_checking : GuardChecker.
#[global]
Existing Instance guard_checking.

Definition fix_guard := guard Fix.
Definition cofix_guard := guard CoFix.

Definition destInd (t : term) :=
  match t with
  | tInd ind u => Some (ind, u)
  | _ => None
  end.

Definition isCoFinite (r : recursivity_kind) :=
  match r with
  | CoFinite => true
  | _ => false
  end.

Definition check_recursivity_kind
  (lookup: kername -> option global_decl) ind r :=
  match lookup ind with
  | Some (InductiveDecl mib) => ReflectEq.eqb mib.(ind_finite) r
  | _ => false
  end.

Definition check_one_fix d :=
  let '{| dname := na;
         dtype := ty;
         dbody := b;
         rarg := arg |} := d in
  let '(ctx, ty) := decompose_prod_assum [] ty in
  match nth_error (List.rev (smash_context [] ctx)) arg with
  | Some argd =>
    let (hd, args) := decompose_app argd.(decl_type) in
    match destInd hd with
    | Some (mkInd mind _, u) => Some mind
    | None => None
    end
  | None => None
  end.

Definition wf_fixpoint_gen
  (lookup: kername -> option global_decl) mfix :=
  forallb (isLambda ∘ dbody) mfix &&
  let checks := map check_one_fix mfix in
  match map_option_out checks with
  | Some (ind :: inds) =>

    forallb (eqb ind) inds &&
    check_recursivity_kind lookup ind Finite
  | _ => false
  end.

Definition wf_fixpoint (Σ : global_env) := wf_fixpoint_gen (lookup_env Σ).

Definition check_one_cofix d :=
  let '{| dname := na;
         dtype := ty;
         dbody := b;
         rarg := arg |} := d in
  let '(ctx, ty) := decompose_prod_assum [] ty in
  let (hd, args) := decompose_app ty in
  match destInd hd with
  | Some (mkInd ind _, u) => Some ind
  | None => None
  end.

Definition wf_cofixpoint_gen
  (lookup: kername -> option global_decl) mfix :=
  let checks := map check_one_cofix mfix in
  match map_option_out checks with
  | Some (ind :: inds) =>

    forallb (eqb ind) inds &&
    check_recursivity_kind lookup ind CoFinite
  | _ => false
  end.

Definition wf_cofixpoint (Σ : global_env) := wf_cofixpoint_gen (lookup_env Σ).

Variant primitive_typing_hyps `{checker_flags}
  (typingΣ : forall (Γ : context), term -> term -> Type)
  Σ Γ : prim_val term -> Type :=
| prim_int_hyps i : primitive_typing_hyps typingΣ Σ Γ (primInt; primIntModel i)
| prim_float_hyps f : primitive_typing_hyps typingΣ Σ Γ (primFloat; primFloatModel f)
| prim_string_hyps s : primitive_typing_hyps typingΣ Σ Γ (primString; primStringModel s)
| prim_array_hyps a
  (wfl : wf_universe Σ (Universe.make' a.(array_level)))
  (hty : typingΣ Γ a.(array_type) (tSort (sType (Universe.make' a.(array_level)))))
  (hdef : typingΣ Γ a.(array_default) a.(array_type))
  (hvalue : All (fun x => typingΣ Γ x a.(array_type)) a.(array_value)) :
  primitive_typing_hyps typingΣ Σ Γ (primArray; primArrayModel a).

Equations prim_type (p : prim_val term) (cst : kername) : term :=
prim_type (primInt; _) cst := tConst cst [];
prim_type (primFloat; _) cst := tConst cst [];
prim_type (primString; _) cst := tConst cst [];
prim_type (primArray; primArrayModel a) cst := tApp (tConst cst [a.(array_level)]) a.(array_type).

Module PCUICTypingDef <: EnvironmentTyping.Typing PCUICTerm PCUICEnvironment PCUICTermUtils PCUICEnvTyping PCUICConversion PCUICConversionParSpec.

End PCUICTypingDef.

Section CtxInstSize.
  Context {cf} (typing : global_env_ext -> context -> term -> term -> Type)
  (typing_size : forall {Σ Γ t T}, typing Σ Γ t T -> size).

  Fixpoint ctx_inst_size {Σ Γ args Δ} (c : ctx_inst (typing Σ) Γ args Δ) : size :=
  match c with
  | ctx_inst_nil => 0
  | ctx_inst_ass na t i inst Δ ty ctxi => (typing_size _ _ _ _ ty) + (ctx_inst_size ctxi)
  | ctx_inst_def na b t inst Δ ctxi => S (ctx_inst_size ctxi)
  end.
End CtxInstSize.

Section PrimitiveSize.
  Context {cf} (typing : global_env_ext -> context -> term -> term -> Type)
  (typing_size : forall {Σ Γ t T}, typing Σ Γ t T -> size).

  Definition primitive_typing_hyps_size Σ Γ p (h : primitive_typing_hyps (typing Σ) Σ Γ p) : size.
    destruct h.
    -
 exact 0.
    -
 exact 0.
    -
 exact 0.
    -
 exact (Nat.max (typing_size _ _ _ _ hty) (Nat.max (typing_size _ _ _ _ hdef)
        (all_size _ (fun x p => typing_size _ _ _ _ p) hvalue))).
  Defined.
End PrimitiveSize.

End MetaRocq_DOT_PCUIC_DOT_PCUICTyping_WRAPPED.

Implicit Types (cf : checker_flags) (Σ : global_env_ext) (Γ : context).

Reserved Notation " Σ ;;; Γ |- t ▹ T " (at level 50, Γ, t, T at next level).
Reserved Notation " Σ ;;; Γ |- t ▹□ u " (at level 50, Γ, t, u at next level).
Reserved Notation " Σ ;;; Γ |- t ▹Π ( na , A , B ) " (at level 50, Γ, t, na, A, B at next level).
Reserved Notation " Σ ;;; Γ |- t ▹{ ind } ( u , args )" (at level 50, Γ, t, ind, u, args at next level).
Reserved Notation " Σ ;;; Γ |- t ◃ T " (at level 50, Γ, t, T at next level).
Reserved Notation "'wf_local_bd' Σ Γ " (at level 9, Σ, Γ at next level).
Reserved Notation "'wf_local_bd_rel' Σ Γ Γ'" (at level 9, Σ, Γ, Γ' at next level).

Inductive infering `{checker_flags} (Σ : global_env_ext) (Γ : context) : term -> term -> Type :=
| infer_Rel n decl :
  nth_error Γ n = Some decl ->
  Σ ;;; Γ |- tRel n ▹ lift0 (S n) (decl_type decl)

| infer_Sort s :
  wf_sort Σ s ->
  Σ ;;; Γ |- tSort s ▹ tSort (Sort.super s)

| infer_Prod na A B s1 s2 :
  lift_sorting (checking Σ Γ) (infering_sort Σ Γ) (j_vass_s na A s1) ->
  Σ ;;; Γ ,, vass na A |- B ▹□ s2 ->
  Σ ;;; Γ |- tProd na A B ▹ tSort (Sort.sort_of_product s1 s2)

| infer_Lambda na A t B :
  lift_sorting (checking Σ Γ) (infering_sort Σ Γ) (j_vass na A) ->
  Σ ;;; Γ ,, vass na A |- t ▹ B ->
  Σ ;;; Γ |- tLambda na A t ▹ tProd na A B

| infer_LetIn na b B t A :
  lift_sorting (checking Σ Γ) (infering_sort Σ Γ) (j_vdef na b B) ->
  Σ ;;; Γ ,, vdef na b B |- t ▹ A ->
  Σ ;;; Γ |- tLetIn na b B t ▹ tLetIn na b B A

| infer_App t na A B u :
  Σ ;;; Γ |- t ▹Π (na,A,B) ->
  Σ ;;; Γ |- u ◃ A ->
  Σ ;;; Γ |- tApp t u ▹ B{0 := u}

| infer_Const cst u :
  forall decl (isdecl : declared_constant Σ.1 cst decl),
  consistent_instance_ext Σ (cst_universes decl) u ->
  Σ ;;; Γ |- tConst cst u ▹ subst_instance u (cst_type decl)

| infer_Ind ind u :
  forall mdecl idecl (isdecl : declared_inductive Σ.1 ind mdecl idecl),
  consistent_instance_ext Σ (ind_universes mdecl) u ->
  Σ ;;; Γ |- tInd ind u ▹ subst_instance u (ind_type idecl)

| infer_Construct ind i u :
  forall mdecl idecl cdecl (isdecl : declared_constructor Σ.1 (ind, i) mdecl idecl cdecl),
  consistent_instance_ext Σ (ind_universes mdecl) u ->
  Σ ;;; Γ |- tConstruct ind i u ▹ type_of_constructor mdecl cdecl (ind, i) u

| infer_Case ci p c brs args u ps mdecl idecl :
  let predctx := case_predicate_context ci.(ci_ind) mdecl idecl p in
  let ptm := it_mkLambda_or_LetIn predctx p.(preturn) in
  Σ ;;; Γ |- c ▹{ci} (u,args) ->
  declared_inductive Σ.1 ci.(ci_ind) mdecl idecl ->
  Σ ;;; Γ ,,, predctx |- p.(preturn) ▹□ ps ->

  mdecl.(ind_npars) = ci.(ci_npar) ->
  eq_context_upto_names p.(pcontext) (ind_predicate_context ci.(ci_ind) mdecl idecl) ->
  wf_predicate mdecl idecl p ->
  consistent_instance_ext Σ (ind_universes mdecl) (puinst p) ->
  wf_local_bd_rel Σ Γ predctx ->
  is_allowed_elimination Σ (ind_kelim idecl) ps ->
  isSortRel ps ci.(ci_relevance) ->
  ctx_inst (checking Σ) Γ (pparams p)
      (List.rev mdecl.(ind_params)@[p.(puinst)]) ->
  isCoFinite mdecl.(ind_finite) = false ->
  cmp_ind_universes Σ ci #|args| u (puinst p) ->
  All2 (convAlgo Σ Γ) (firstn (ci_npar ci) args) (pparams p) ->

  wf_branches idecl brs ->
  All2i (fun i cdecl br =>
    eq_context_upto_names br.(bcontext) (cstr_branch_context ci mdecl cdecl) ×
    let brctxty := case_branch_type ci.(ci_ind) mdecl idecl p br ptm i cdecl in
    wf_local_bd_rel Σ Γ brctxty.1 ×
    Σ ;;; Γ ,,, brctxty.1 |- br.(bbody) ◃ brctxty.2)
    0 idecl.(ind_ctors) brs ->
  Σ ;;; Γ |- tCase ci p c brs ▹ mkApps ptm (skipn ci.(ci_npar) args ++ [c])

| infer_Proj p c u mdecl idecl cdecl pdecl args :
  declared_projection Σ.1 p mdecl idecl cdecl pdecl ->
  Σ ;;; Γ |- c ▹{p.(proj_ind)} (u,args) ->
  #|args| = ind_npars mdecl ->
  Σ ;;; Γ |- tProj p c ▹ subst0 (c :: List.rev args) (subst_instance u pdecl.(proj_type))

| infer_Fix mfix n decl :
  fix_guard Σ Γ mfix ->
  nth_error mfix n = Some decl ->
  All (on_def_type (lift_sorting1 (checking Σ) (infering_sort Σ)) Γ) mfix ->
  All (on_def_body (lift_sorting1 (checking Σ) (infering_sort Σ)) (fix_context mfix) Γ) mfix ->
  wf_fixpoint Σ mfix ->
  Σ ;;; Γ |- tFix mfix n ▹ dtype decl

| infer_CoFix mfix n decl :
  cofix_guard Σ Γ mfix ->
  nth_error mfix n = Some decl ->
  All (on_def_type (lift_sorting1 (checking Σ) (infering_sort Σ)) Γ) mfix ->
  All (on_def_body (lift_sorting1 (checking Σ) (infering_sort Σ)) (fix_context mfix) Γ) mfix ->
  wf_cofixpoint Σ mfix ->
  Σ ;;; Γ |- tCoFix mfix n ▹ dtype decl

| infer_Prim p prim_ty cdecl :
   primitive_constant Σ (prim_val_tag p) = Some prim_ty ->
   declared_constant Σ prim_ty cdecl ->
   primitive_invariants (prim_val_tag p) cdecl ->
   primitive_typing_hyps (checking Σ) Σ Γ p ->
   Σ ;;; Γ |- tPrim p ▹ prim_type p prim_ty

with infering_sort `{checker_flags} (Σ : global_env_ext) (Γ : context) : term -> sort -> Type :=
| infer_sort_Sort t T u:
  Σ ;;; Γ |- t ▹ T ->
  red Σ Γ T (tSort u) ->
  Σ ;;; Γ |- t ▹□ u

with infering_prod `{checker_flags} (Σ : global_env_ext) (Γ : context) : term -> aname -> term -> term -> Type :=
| infer_prod_Prod t T na A B:
  Σ ;;; Γ |- t ▹ T ->
  red Σ Γ T (tProd na A B) ->
  Σ ;;; Γ |- t ▹Π (na,A,B)

with infering_indu `{checker_flags} (Σ : global_env_ext) (Γ : context) : inductive -> term -> Instance.t -> list term -> Type :=
| infer_ind_Ind ind t T u args:
  Σ ;;; Γ |- t ▹ T ->
  red Σ Γ T (mkApps (tInd ind u) args) ->
  Σ ;;; Γ |- t ▹{ind} (u,args)

with checking `{checker_flags} (Σ : global_env_ext) (Γ : context) : term -> term -> Type :=
| check_Cumul t T T':
  Σ ;;; Γ |- t ▹ T ->
  Σ ;;; Γ |- T <= T' ->
  Σ ;;; Γ |- t ◃ T'

where " Σ ;;; Γ |- t ▹ T " := (@infering _ Σ Γ t T) : type_scope
and " Σ ;;; Γ |- t ▹□ u " := (@infering_sort _ Σ Γ t u) : type_scope
and " Σ ;;; Γ |- t ▹Π ( na , A , B ) " := (@infering_prod _ Σ Γ t na A B) : type_scope
and " Σ ;;; Γ |- t ▹{ ind } ( u , args ) " := (@infering_indu _ Σ Γ ind t u args) : type_scope
and " Σ ;;; Γ |- t ◃ T " := (@checking _ Σ Γ t T) : type_scope
and "'wf_local_bd' Σ Γ" := (All_local_env (lift_sorting1 (checking Σ) (infering_sort Σ)) Γ)
and "'wf_local_bd_rel' Σ Γ Γ'" := (All_local_rel (lift_sorting1 (checking Σ) (infering_sort Σ)) Γ Γ').

Definition tybranches {cf} Σ Γ ci mdecl idecl p ptm n ctors brs :=
  All2i
  (fun (i : nat) (cdecl : constructor_body) (br : branch term) =>
    (eq_context_upto_names br.(bcontext) (cstr_branch_context ci mdecl cdecl)) ×
    let brctxty := case_branch_type ci mdecl idecl p br ptm i cdecl in
    (wf_local_bd_rel Σ Γ brctxty.1) ×
    Σ;;; Γ,,, brctxty.1 |- bbody br ◃ brctxty.2)
  n ctors brs.
Definition branches_size {cf} {Σ Γ ci mdecl idecl p ptm brs}
   (checking_size : forall Σ Γ t T, Σ ;;; Γ |- t ◃ T  -> size)
   (infering_size : forall Σ Γ t s, Σ ;;; Γ |- t ▹□ s -> size)
  {n ctors}
  (a : tybranches Σ Γ ci mdecl idecl p ptm n ctors brs) : size.
admit.
Defined.

Fixpoint infering_size `{checker_flags} {Σ Γ t T} (d : Σ ;;; Γ |- t ▹ T) {struct d} : size
with infering_sort_size `{checker_flags} {Σ Γ t u} (d : Σ ;;; Γ |- t ▹□ u) {struct d} : size
with infering_prod_size `{checker_flags} {Σ Γ t na A B} (d : Σ ;;; Γ |- t ▹Π (na, A,B)) {struct d} : size
with infering_indu_size `{checker_flags} {Σ Γ ind t ui args} (d : Σ ;;; Γ |- t ▹{ind} (ui,args)) {struct d} : size
with checking_size `{checker_flags} {Σ Γ t T} (d : Σ ;;; Γ |- t ◃ T) {struct d} : size.
Proof.
  all: destruct d ;
    repeat lazymatch goal with
          | H : infering _ _ _ _ |- _ => apply infering_size in H
          | H : infering_sort _ _ _ _ |- _ => apply infering_sort_size in H
          | H : infering_prod _ _ _ _ _ _ |- _ => apply infering_prod_size in H
          | H : infering_indu _ _ _ _ _ _ |- _ => apply infering_indu_size in H
          | H : checking _ _ _ _ |- _ => apply checking_size in H
          | H : wf_local_bd _ _ |- _ => apply (All_local_env_sorting_size _ _ (checking_size _ _) (infering_sort_size _ _) _) in H
          | H : wf_local_bd_rel _ _ _ |- _ => apply (All_local_rel_sorting_size (checking_size _ _) (infering_sort_size _ _) _) in H
          | H : primitive_typing_hyps _ _ _ _ |- _ => apply (primitive_typing_hyps_size _ (checking_size _)) in H
          end ;
    match goal with
    | H : lift_sorting _ _ _, H' : size |- _ => exact (S (Nat.max H' (lift_sorting_size (checking_size _ _ _) (infering_sort_size _ _ _) _ H)))
    | H : All2i _ _ _ _ |- _ => idtac
    | H : All _ _ |- _ => idtac
    | H1 : size, H2 : size, H3 : size |- _ => exact (S (Nat.max H1 (Nat.max H2 H3)))
    | H1 : size, H2 : size |- _ => exact (S (Nat.max H1 H2))
    | H1 : size |- _  => exact (S H1)
    | |- _ => exact 1
    end.
    -
 exact (S (Nat.max a0 (Nat.max i (Nat.max i0 (Nat.max (ctx_inst_size _ (checking_size _) c1) (branches_size (checking_size _) (infering_sort_size _) a2)))))).
    -
 exact (S (Nat.max
        (all_size _ (fun x p => on_def_type_sorting_size (infering_sort_size _ Σ) _ _ p) a)
        (all_size (on_def_body _ _ _) (fun x p => on_def_body_sorting_size (checking_size _ _) (infering_sort_size _ Σ) _ _ _ p) a0))).
    -
 exact (S (Nat.max
        (all_size _ (fun x p => on_def_type_sorting_size (infering_sort_size _ Σ) _ _ p) a)
        (all_size (on_def_body _ _ _) (fun x p => on_def_body_sorting_size (checking_size _ _) (infering_sort_size _ Σ) _ _ _ p) a0))).
  Defined.
