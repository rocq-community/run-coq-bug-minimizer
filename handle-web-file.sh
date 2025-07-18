#!/usr/bin/env bash
# handle-web-file.sh [LINK_TEXT] URL
#
# Downloads an archive and tries to guess how to build the coq
# development from it

set -ex

descr="$1"
url="$2"

if [ -z "$url" ]; then
    url="$descr"
    descr=""
fi

if [ -z "$url" ]; then
    >&2 printf "USAGE: %s [LINK_TEXT] URL\n" "$0"
    exit 1
fi

rawfname="$(basename "$url")"
extension="${rawfname##*.}"
base="${rawfname%%.*}"
fname="downloaded-$rawfname"
qfname="$(printf "%q" "$fname")"
qextension="$(printf "%q" "$extension")"
wget "$url" -O "$fname"

success="no"

function trial_extract_raw() {
    if [ "$success" == "no" ]; then
        rm -rf bug-output
        mkdir -p bug-output
        cd bug-output
        bash -c "$1" && { success="yes"; cd ..; } || { cd ..; rm -rf bug-output; }
    fi
}

function trial_extract() {
    trial_extract_raw "$(printf "%q " "$@")"
}

function succeed() {
    success="yes"
}

function run_unique_file_pattern() {
    count="$(find . -name "$1" -executable -type f | wc -l)"
    rv=1
    if [ "$count" -eq 1 ]; then
        rv=0
        f="$(find . -name "$1" -executable -type f)"
        dirf="$(dirname "$f")"
        f="$(basename "$f")"
        pushd "$dirf"
        ./"$f" || { rv=$?; }
        popd
    fi
    return $rv
}

function run_first_unique_file_patterns() {
    success="no"
    for name in "$@"; do
        test "$success" == "yes" || { run_unique_file_pattern "$name" && succeed || true; }
    done
    test "$success" == "yes"
}

function try_autogen() {
    run_first_unique_file_patterns autogen autogen.sh
}

function try_configure() {
    run_first_unique_file_patterns configure configure.sh
}

function try_make() {
    fs="$(find . \( -name GNUmakefile -o -name makefile -o -name Makefile \) -type f)"
    count="$(find . \( -name GNUmakefile -o -name makefile -o -name Makefile \) -type f | wc -l)"
    if [ "$count" -eq 1 ]; then
        dirf="$(dirname "$fs")"
        f="$(basename "$fs")"
        pushd "$dirf"
        make || true
        popd
        return 0
    fi
    return 1
}

function try_autogen_configure_make() {
    try_make || { try_configure && try_make; } || { try_autogen && try_configure && try_make; }
}

function try_coq_makefile() {
    fs="$(find . \( -name "_CoqProject" -o -name "CoqProject" \) -type f)"
    count="$(find . \( -name "_CoqProject" -o -name "CoqProject" \) -type f | wc -l)"
    if [ "$count" -eq 1 ]; then
        dirf="$(dirname "$fs")"
        f="$(basename "$fs")"
        pushd "$dirf"
        coq_makefile -f "$f" -o Makefile
        make || true
        popd
        return 0
    fi
    return 1
}

function try_coqc() {
    fs="$(find . -name "*.v" -type f)"
    count="$(find . -name "*.v" -type f | wc -l)"
    if [ "$count" -eq 1 ]; then
        dirf="$(dirname "$fs")"
        f="$(basename "$fs")"
        pushd "$dirf"
        coqc -q "$f" || true
        popd
        return 0
    elif [ "$count" -gt 1 ]; then
        find . -name "*.v" -type f | xargs coq_makefile -o Makefile
        make || true
        return 0
    else
        return 1
    fi
}

# A map of Coq path prefixes to the opam packages that provide them.
declare -A OPAM_PACKAGE_MAP=(
    ["UniMath"]="coq-unimath coq-unimath-category-theory coq-unimath-dedekind coq-unimath-foundations coq-unimath-ktheory coq-unimath-substitution-systems coq-unimath-tactics"
    ["AAC_tactics"]="coq-aac-tactics"
    ["Abel"]="coq-mathcomp-abel"
    ["ABP"]="coq-abp"
    ["AbstractRenaming"]="coq-smlms"
    ["Actuary"]="coq-actuary"
    ["additions"]="coq-addition-chains"
    ["Additions"]="coq-additions"
    ["agm"]="coq-pi-agm"
    ["AILS"]="coq-ails"
    ["ALEA"]="coq-alea"
    ["Algebra"]="coq-algebra coq-lin-alg coq-orb-stab"
    ["Algorand"]="coq-algorand"
    ["AlmostFull"]="coq-almost-full"
    ["AMM11262"]="coq-amm11262"
    ["Angles"]="coq-angles"
    ["Antivalence"]="coq-antivalence"
    ["ApproxModels"]="coq-approx-models"
    ["AreaMethod"]="coq-area-method"
    ["AsyncTest"]="coq-async-test"
    ["ATBR"]="coq-atbr"
    ["Automata"]="coq-automata"
    ["Autosubst"]="coq-autosubst"
    ["AxiomaticABP"]="coq-axiomatic-abp"
    ["bbv"]="coq-bbv"
    ["BDDs"]="coq-bdds"
    ["bedrock"]="coq-bytestring"
    ["bedrock2"]="coq-bedrock2 coq-bedrock2-compiler"
    ["BelGames"]="coq-belgames"
    ["BellantoniCook"]="coq-bellantonicook"
    ["Bertrand"]="coq-bertrand"
    ["Bignums"]="coq-bignums"
    ["Bits"]="coq-bits"
    ["Buchberger"]="coq-buchberger"
    ["CanonBDDs"]="coq-canon-bdds"
    ["Cantor"]="coq-cantor"
    ["Category"]="coq-category-theory"
    ["CatsInZFC"]="coq-cats-in-zfc"
    ["CCS"]="coq-ccs"
    ["Cdcl"]="coq-itauto"
    ["CDS4LTL"]="coq-cds4ltl"
    ["Cecoa"]="coq-cecoa"
    ["Ceres"]="coq-ceres"
    ["CertiCoq"]="coq-certicoq"
    ["CFGV"]="coq-cfgv"
    ["CFML.Stdlib"]="coq-cfml-stdlib"
    ["CFML"]="coq-cfml coq-cfml-basis"
    ["Chapar"]="coq-chapar"
    ["Checker"]="coq-checker"
    ["Chinese"]="coq-chinese"
    ["Circuits"]="coq-circuits"
    ["ClassicalRealizability"]="coq-classical-realizability"
    ["Coalgebras"]="coq-coalgebras"
    ["Coinduction"]="coq-coinduction"
    ["CoinductiveExamples"]="coq-coinductive-examples"
    ["CoinductiveReals"]="coq-coinductive-reals"
    ["CoLoR"]="coq-color"
    ["CommutativeDiagrams"]="coq-commutative-diagrams"
    ["compcert"]="coq-compcert"
    ["compcert32"]="coq-compcert-32"
    ["compcert64"]="coq-compcert-64"
    ["CompDecModal"]="coq-comp-dec-modal"
    ["Complexity"]="coq-library-complexity"
    ["ConCaT"]="coq-concat"
    ["Concurrency"]="coq-concurrency-system"
    ["ConstructiveGeometry"]="coq-constructive-geometry"
    ["Constructors"]="coq-constructors"
    ["Containers"]="coq-containers coq-ergo"
    ["Continuations"]="coq-continuations"
    ["coq-scev"]="coq-scev"
    ["CoqEAL_refinements"]="coq-coqeal-refinements"
    ["CoqEAL_theory"]="coq-coqeal-theory"
    ["CoqEAL"]="coq-coqeal"
    ["CoqFFI"]="coq-coqffi"
    ["CoqInCoq"]="coq-coq-in-coq"
    ["CoqMatrix"]="coq-matrix"
    ["Coqoban"]="coq-coqoban"
    ["Coqprime"]="coq-coqprime" # coq-coqprime-generator
    ["coqrel"]="coq-coqrel"
    ["Coqtail"]="coq-coqtail"
    ["Coquelicot"]="coq-coquelicot"
    ["coqutil"]="coq-coqutil"
    ["CoqWord"]="coq-mathcomp-word"
    ["CoRN"]="coq-corn"
    ["Counting"]="coq-counting coq-ergo"
    ["CoursDeCoq"]="coq-cours-de-coq"
    ["Crypto"]="coq-fiat-crypto"
    ["CTLTCTL"]="coq-ctltctl"
    ["CUnit"]="coq-cunit"
    ["Cybele"]="coq-cybele"
    ["Dblib"]="coq-dblib"
    ["Demos"]="coq-demos"
    ["DepMap"]="coq-dep-map"
    ["deriving"]="coq-deriving"
    ["DescenteInfinie"]="coq-descente-infinie"
    ["Dictionaries"]="coq-dictionaries"
    ["Dijkstra"]="coq-dijkstra"
    ["dioid"]="coq-mathcomp-dioid"
    ["Diqt"]="coq-diqt"
    ["DiSeL"]="coq-disel coq-disel-examples"
    ["DistributedReferenceCounting"]="coq-distributed-reference-counting"
    ["DomainTheory"]="coq-domain-theory"
    ["dpdgraph"]="coq-dpdgraph"
    ["ElmExtraction"]="coq-elm-extraction"
    ["elpi"]="coq-elpi"
    ["Equations"]="coq-equations"
    ["Ergo"]="coq-ergo"
    ["ErrorHandlers"]="coq-error-handlers"
    ["EuclideanGeometry"]="coq-euclidean-geometry"
    ["EulerFormula"]="coq-euler-formula"
    ["ExactRealArithmetic"]="coq-exact-real-arithmetic"
    ["Exceptions"]="coq-exceptions"
    ["ExtLib"]="coq-ext-lib"
    ["extructures"]="coq-extructures"
    ["Fairisle"]="coq-fairisle"
    ["fcsl"]="coq-fcsl-pcm"
    ["Fermat4"]="coq-fermat4"
    ["FileSync"]="coq-file-sync"
    ["FingerTree"]="coq-finger-tree"
    ["FinMatrix"]="coq-finmatrix"
    ["FiringSquad"]="coq-firing-squad"
    ["Float"]="coq-float"
    ["Flocq"]="coq-flocq"
    ["FlocqQuickChick"]="coq-flocq-quickchick"
    ["FOL"]="coq-library-fol"
    ["formalv"]="coq-formalv-check_range coq-formalv-prim63_mathcomp coq-formalv-time"
    ["FOUnify"]="coq-founify"
    ["fourcolor.reals"]="coq-fourcolor-reals"
    ["fourcolor"]="coq-fourcolor"
    ["fpmods"]="coq-fpmods"
    ["FreeGroups"]="coq-free-groups"
    ["FreeSim"]="coq-freesim"
    ["FreeSpec.Core"]="coq-freespec-core"
    ["FreeSpec.Exec"]="coq-freespec-exec"
    ["FreeSpec.FFI"]="coq-freespec-ffi"
    ["FriedmanTREE"]="coq-friedman-tree"
    ["FSets"]="coq-fsets"
    ["FSSecModel"]="coq-fssec-model"
    #   ["functional-algebra"]="coq-functional-algebra"
    ["FunctionNinjas"]="coq-function-ninjas"
    ["FunctionsInZFC"]="coq-functions-in-zfc"
    ["FundamentalArithmetics"]="coq-fundamental-arithmetics"
    ["gaia_hydras"]="coq-gaia-hydras"
    ["gaia.numbers"]="coq-gaia-numbers"
    ["gaia.ordinals"]="coq-gaia-ordinals"
    ["gaia.schutte"]="coq-gaia-schutte"
    ["gaia.sets"]="coq-gaia-theory-of-sets"
    ["gaia.stern"]="coq-gaia-stern"
    ["gaia"]="coq-gaia"
    ["Games"]="coq-games"
    ["Gappa"]="coq-gappa"
    ["GC"]="coq-gc"
    ["GenericEnvironments"]="coq-generic-environments"
    ["GeoCoq.Algebraic"]="coq-geocoq-algebraic"
    ["GeoCoq"]="coq-geocoq coq-geocoq-axioms coq-geocoq-coinc coq-geocoq-elements coq-geocoq-main coq-geocoq-pof"
    ["GeometricAlgebra"]="coq-geometric-algebra"
    ["Giskard"]="coq-giskard"
    ["git"]="coq-unimath-category-theory coq-unimath-dedekind coq-unimath-foundations coq-unimath-ktheory coq-unimath-substitution-systems coq-unimath-tactics"
    ["Goedel"]="coq-goedel"
    ["GraphBasics"]="coq-graph-basics"
    ["Graphs"]="coq-graphs"
    ["GraphTheory.planar"]="coq-graph-theory-planar"
    ["GraphTheory"]="coq-graph-theory"
    ["Groups"]="coq-groups"
    ["GroupTheory"]="coq-group-theory"
    ["Hammer"]="coq-hammer coq-hammer-tactics"
    ["hanoi"]="coq-hanoi"
    ["Hardware"]="coq-hardware"
    ["Hask"]="coq-haskell"
    ["HB"]="coq-hierarchy-builder coq-hierarchy-builder-shim"
    ["Hedges"]="coq-hedges"
    ["HighSchoolGeometry"]="coq-high-school-geometry"
    ["HigmanCF"]="coq-higman-cf"
    ["HigmanNW"]="coq-higman-nw"
    ["HigmanS"]="coq-higman-s"
    ["HistoricalExamples"]="coq-historical-examples"
    ["HoareTut"]="coq-hoare-tut"
    ["HOLLight_Real_With_N"]="coq-hol-light-real-with-N"
    ["HOLLight_Real"]="coq-hol-light-real-with-nat"
    ["HOLLight"]="coq-hol-light"
    ["HoTT"]="coq-hott"
    ["htt"]="coq-htt-core"
    ["HTT"]="coq-htt"
    ["HTTP"]="coq-http"
    ["Huffman"]="coq-huffman"
    ["hydras"]="coq-hydra-battles"
    ["Icharate"]="coq-icharate"
    ["idt"]="coq-idt"
    ["IdxAssoc"]="coq-idxassoc"
    ["IEEE754"]="coq-ieee754"
    ["improper_integrals"]="coq-improper-integrals"
    ["inconsequential_modus_ponens"]="coq-inconsequential_modus_ponens"
    ["infotheo"]="coq-infotheo"
    ["Interval"]="coq-interval"
    ["IntMap"]="coq-int-map"
    ["Io.System"]="coq-io-system"
    ["Io"]="coq-io coq-io-evaluate coq-io-exception coq-io-list"
    ["IPC"]="coq-ipc"
    ["iris_ora"]="coq-vst-ora"
    ["iris_string_ident"]="coq-iris-string-ident"
    ["iris.heap_lang"]="coq-iris-heap-lang"
    ["iris"]="coq-iris"
    ["ISL"]="coq-pil"
    ["Iterable"]="coq-iterable"
    ["ITree.Extra"]="coq-itree-extra"
    ["ITree"]="coq-itree"
    ["ITreeIO"]="coq-itree-io"
    ["IZF"]="coq-izf"
    ["JML"]="coq-jmlcoq"
    ["JordanCurveTheorem"]="coq-jordan-curve-theorem"
    ["JProver"]="coq-jprover"
    ["JsAst"]="coq-jsast"
    ["JSON"]="coq-json"
    ["kami"]="coq-kami"
    ["Karatsuba"]="coq-karatsuba"
    ["KarpMiller"]="coq-karp-miller"
    ["Katamaran"]="coq-katamaran"
    ["Kildall"]="coq-kildall"
    ["KruskalAfProp"]="coq-kruskal-almostfull"
    ["KruskalFanProp"]="coq-kruskal-fan"
    ["KruskalFinite"]="coq-kruskal-finite"
    ["KruskalHigmanProp"]="coq-kruskal-higman"
    ["KruskalThmProp"]="coq-kruskal-theorems"
    ["KruskalTrees"]="coq-kruskal-trees"
    ["KruskalVeldmanProp"]="coq-kruskal-veldman"
    ["Lambda"]="coq-lambda"
    ["Lambek"]="coq-lambek"
    ["lazyPCF"]="coq-lazy-pcf"
    ["lc"]="coq-lc"
    ["Lebesgue"]="coq-num-analysis"
    ["LegacyRing"]="coq-legacy-ring"
    ["LemmaOverloading"]="coq-lemma-overloading"
    ["Lens"]="coq-lens"
    ["LesniewskiMereology"]="coq-lesniewski-mereology"
    ["LibHyps"]="coq-libhyps"
    ["libValidSDP"]="coq-libvalidsdp"
    ["LinAlg"]="coq-lin-alg coq-orb-stab"
    ["Linearscan"]="coq-linearscan"
    ["ListPlus"]="coq-list-plus"
    ["ListString"]="coq-list-string"
    ["Ltac2"]="coq-ltac2"
    ["LtacIter"]="coq-ltac-iter"
    ["LTL"]="coq-ltl"
    ["Malfunction"]="coq-verified-extraction"
    ["MapleMode"]="coq-maple-mode"
    ["Markov"]="coq-markov"
    ["MathClasses"]="coq-math-classes"
    ["mathcomp.algebra_tactics"]="coq-mathcomp-algebra-tactics"
    ["mathcomp.algebra"]="coq-mathcomp-algebra"
    ["mathcomp.analysis"]="coq-mathcomp-analysis"
    ["mathcomp.apery"]="coq-mathcomp-apery"
    ["mathcomp.bigenough"]="coq-mathcomp-bigenough"
    ["mathcomp.character"]="coq-mathcomp-character"
    ["mathcomp.classical"]="coq-mathcomp-classical"
    ["mathcomp.contrib.sum_of_two_square"]="coq-mathcomp-sum-of-two-square"
    ["mathcomp.experimental_reals"]="coq-mathcomp-experimental-reals"
    ["mathcomp.field"]="coq-mathcomp-field"
    ["mathcomp.fingroup"]="coq-mathcomp-fingroup"
    ["mathcomp.finmap"]="coq-mathcomp-finmap"
    ["mathcomp.reals_stdlib"]="coq-mathcomp-analysis-stdlib coq-mathcomp-reals-stdlib"
    ["mathcomp.reals"]="coq-mathcomp-reals"
    ["mathcomp.solvable"]="coq-mathcomp-solvable"
    ["mathcomp.ssreflect"]="coq-mathcomp-ssreflect"
    ["mathcomp.tarjan"]="coq-mathcomp-tarjan"
    ["mathcomp.zify"]="coq-mathcomp-zify"
    ["mathcomp"]="coq-mathcomp-field-extra coq-mathcomp-real-closed"
    ["Maths"]="coq-maths"
    ["Matrices"]="coq-matrices"
    ["McExamples"]="coq-mirror-core"
    ["MenhirLib"]="coq-menhirlib"
    ["MetaCoq.Template"]="coq-metacoq coq-metacoq-erasure coq-metacoq-pcuic coq-metacoq-safechecker coq-metacoq-template coq-metacoq-translations"
    ["MetaCoq.Utils"]="coq-metacoq-common coq-metacoq-erasure-plugin coq-metacoq-quotation coq-metacoq-safechecker-plugin coq-metacoq-template-pcuic coq-metacoq-utils"
    ["MetaRocq.Utils"]="coq-metacoq coq-metacoq-common coq-metacoq-erasure coq-metacoq-erasure-plugin coq-metacoq-pcuic coq-metacoq-quotation coq-metacoq-safechecker coq-metacoq-safechecker-plugin coq-metacoq-template coq-metacoq-template-pcuic coq-metacoq-translations coq-metacoq-utils"
    ["Michocoq"]="coq-mi-cho-coq"
    ["MiniC"]="coq-minic"
    ["MiniCompiler"]="coq-mini-compiler"
    ["MiniML"]="coq-miniml"
    ["MirrorCore"]="coq-mirror-core"
    ["MKACs"]="coq-mk-choice-axiom-and-equivalent-propositions"
    ["MKReals"]="coq-mk-reals-axioms"
    ["MMaps"]="coq-mmaps"
    ["ModRed"]="coq-mod-red"
    ["Moment"]="coq-moment"
    ["monae"]="coq-monae"
    ["MorseKelley"]="coq-morse-kelley-axiomatic-set-theory"
    ["MSetsExtra"]="coq-msets-extra"
    ["Mtac"]="coq-mtac"
    ["Mtac2"]="coq-mtac2"
    ["Multiplier"]="coq-multiplier"
    ["Nfix"]="coq-ergo coq-nfix"
    ["NumAnalysis.Algebra"]="coq-num-analysis-algebra"
    ["NumAnalysis.FEM"]="coq-num-analysis-fem"
    ["NumAnalysis.Lebesgue"]="coq-num-analysis-lebesgue"
    ["NumAnalysis.LM"]="coq-num-analysis-lax-milgram"
    ["NumAnalysis.Requisite"]="coq-num-analysis-subset"
    ["OCaml"]="coq-of-ocaml"
    ["OLlibs"]="coq-ollibs"
    ["OpamWebsite"]="coq-opam-website"
    ["Operads"]="coq-operads"
    ["OrbStab"]="coq-orb-stab"
    ["Ordinal"]="coq-ordinal"
    ["Ott"]="coq-ott"
    ["OtwayRees"]="coq-otway-rees"
    ["Paco"]="coq-paco"
    ["Paradoxes"]="coq-paradoxes"
    ["Param"]="coq-paramcoq"
    ["ParamPi"]="coq-param-pi"
    ["Parsec"]="coq-parsec"
    ["parseque"]="coq-parseque"
    ["PAutomata"]="coq-pautomata"
    ["PersistentUnionFind"]="coq-persistent-union-find"
    ["PiCalc"]="coq-pi-calc"
    ["Plouffe"]="coq-plouffe"
    ["PluginUtils"]="coq-plugin-utils"
    ["Pocklington"]="coq-pocklington"
    ["PolTac"]="coq-poltac"
    ["PP"]="coq-ppsimpl"
    ["Presburger"]="coq-presburger"
    ["Prfx"]="coq-prfx"
    ["Printf"]="coq-printf"
    ["ProbHash"]="coq-ceramist"
    ["Procrastination"]="coq-procrastination"
    ["ProjectiveGeometry"]="coq-projective-geometry"
    ["PropCalc"]="coq-propcalc"
    ["prosa"]="coq-prosa"
    ["PTS"]="coq-pts"
    ["PTSATR"]="coq-ptsatr"
    ["PTSF"]="coq-ptsf"
    ["QArith"]="coq-qarith"
    ["QArithSternBrocot"]="coq-qarith-stern-brocot"
    ["Qcert"]="coq-qcert"
    ["QuantumLib"]="coq-quantumlib"
    ["QuickChick"]="coq-quickchick"
    ["QuicksortComplexity"]="coq-quicksort-complexity"
    ["RailroadCrossing"]="coq-railroad-crossing"
    ["Ramsey"]="coq-ramsey"
    ["Random"]="coq-random"
    ["Rational"]="coq-rational"
    ["RecordUpdate"]="coq-record-update"
    ["ReductionEffect"]="coq-reduction-effects"
    ["Reflective"]="coq-tree-calculus"
    ["ReflexiveFirstOrder"]="coq-reflexive-first-order"
    ["RegExp"]="coq-regexp"
    ["RegexpBrzozowski"]="coq-regexp-brzozowski"
    ["RegLang"]="coq-reglang"
    ["RelationAlgebra"]="coq-relation-algebra"
    ["Rem"]="coq-rem"
    ["Rewriter"]="coq-rewriter"
    ["riscv"]="coq-riscv"
    ["robot"]="coq-robot"
    ["RSA"]="coq-rsa"
    ["RulerCompassGeometry"]="coq-ruler-compass-geometry"
    ["Rupicola"]="coq-rupicola"
    ["RustExtraction"]="coq-rust-extraction"
    ["Sail"]="coq-sail coq-sail-stdpp"
    ["Schroeder"]="coq-schroeder"
    ["SearchTrees"]="coq-search-trees"
    ["Semantics"]="coq-semantics"
    ["SemiAlgebraic"]="coq-mathcomp-cad"
    ["Shuffle"]="coq-shuffle"
    ["SimpleIO"]="coq-simple-io"
    ["SMC"]="coq-smc"
    ["smpl"]="coq-smpl"
    ["SMT"]="coq-smt-check"
    ["SMTCoq"]="coq-smtcoq"
    ["Sniper"]="coq-sniper"
    ["SquareMatrices"]="coq-square-matrices"
    ["SquiggleEq"]="coq-squiggle-eq"
    ["SSProve"]="coq-ssprove"
    ["Ssreflect"]="coq-ssreflect"
    ["SsrMultinomials"]="coq-mathcomp-multinomials"
    ["Stalmarck.Tactic"]="coq-stalmarck-tactic"
    ["Stalmarck"]="coq-stalmarck"
    ["stdpp.bitvector"]="coq-stdpp-bitvector"
    ["stdpp"]="coq-stdpp"
    ["Streams"]="coq-streams"
    ["String"]="coq-string"
    ["sub/coq"]="coq-unimath-category-theory coq-unimath-dedekind coq-unimath-foundations coq-unimath-ktheory coq-unimath-substitution-systems coq-unimath-tactics"
    ["submodule"]="coq-unimath-category-theory coq-unimath-dedekind coq-unimath-foundations coq-unimath-ktheory coq-unimath-substitution-systems coq-unimath-tactics"
    ["Subst"]="coq-subst"
    ["Sudoku"]="coq-sudoku"
    ["SumOfTwoSquare"]="coq-sum-of-two-square"
    ["Switch"]="coq-switch"
    ["Tactician"]="coq-tactician coq-tactician-dummy coq-tactician-stdlib"
    ["TacticianApi"]="coq-tactician-api"
    ["Tait"]="coq-tait"
    ["TarskiGeometry"]="coq-tarski-geometry"
    ["Template"]="coq-template-coq"
    ["Tests"]="coq-ergo"
    ["ThreeGap"]="coq-three-gap"
    ["TLC"]="coq-tlc"
    ["to"]="coq-descente-infinie"
    ["Topology"]="coq-topology"
    ["TortoiseHareAlgorithm"]="coq-tortoise-hare-algorithm"
    ["Trakt"]="coq-trakt"
    ["TraversableFincontainer"]="coq-traversable-fincontainer"
    ["TreeAutomata"]="coq-tree-automata"
    ["TreeDiameter"]="coq-tree-diameter"
    ["Trocq"]="coq-tcoq-hott coq-tcoq-hott-examples coq-tcoq-std coq-tcoq-std-examples"
    ["TypeInfer"]="coq-type-infer"
    ["TypingFlags"]="coq-typing-flags"
    ["Undecidability"]="coq-library-undecidability"
    ["Unicoq"]="coq-unicoq"
    ["UniMath"]="coq-unimath"
    ["UniverseComparator"]="coq-universe-comparator"
    ["update"]="coq-unimath-category-theory coq-unimath-dedekind coq-unimath-foundations coq-unimath-ktheory coq-unimath-substitution-systems coq-unimath-tactics"
    ["ValidSDP"]="coq-validsdp"
    ["VCFloat"]="coq-vcfloat"
    ["Vellvm"]="coq-vellvm"
    ["VerifiedExtraction"]="coq-verified-extraction"
    ["VLSM"]="coq-vlsm"
    ["void"]="coq-void"
    ["VST"]="coq-vst coq-vst-32 coq-vst-64 coq-vst-iris"
    ["VSTlib"]="coq-vst-lib"
    ["Wasm"]="coq-wasm"
    ["Waterproof"]="coq-waterproof"
    ["WeakUpTo"]="coq-weak-up-to"
    ["Yalla"]="coq-yalla"
    ["ZChinese"]="coq-zchinese"
    ["ZF"]="coq-zf"
    ["ZFC"]="coq-zfc"
    ["ZornsLemma"]="coq-zorns-lemma"
    ["ZSearchTrees"]="coq-zsearch-trees"
)

function get_opam_deps() {
    # Exit if no .v files are found
    if [ -z "$(find . -name '*.v' -print -quit)" ]; then
        >&2 echo "No .v files found, skipping opam dependency installation."
        return 0
    fi

    local require_lines
    require_lines=$(find . -name '*.v' -type f -exec sh -c 'for file; do cat "$file"; printf " "; done' sh {} + 2>/dev/null | tr '\r\n\t)' ' ' | tr -s ' ' |
      sed 's/\. /.~/g' | tr '~' '\n' | grep 'Require ')

    if [ -z "$require_lines" ]; then
        >&2 echo "No 'Require' statements found, skipping opam dependency installation."
        return 0
    fi

    local paths=()
    while IFS= read -r line; do
        line=$(echo "$line" | sed 's/^[ \t]*//;s/[ \t]*$//')
        if echo "$line" | grep -q '^From .* Require '; then
            local path=$(echo "$line" | sed 's/^From \(.*\) Require .*/\1/')
            paths+=("$path")
        elif echo "$line" | grep -q '^Require '; then
            local path=$(echo "$line" | sed 's/^Require //')
            paths+=("$path")
        fi
    done <<< "$require_lines"

    local all_words=""
    for path in "${paths[@]}"; do
        local cleaned=$(printf '%s\n' "$path" | tr -d '~!@#$%^&*()[]{}<>|:;,?`/+=')
        all_words="$all_words $cleaned"
    done

    declare -A prefixes
    for word in $all_words; do
        local parts=(${word//./ })
        local prefix="${parts[0]}"
        if [[ "$prefix" =~ ^[_a-zA-Z] ]]; then
            prefixes["$prefix"]=1
        fi
        # Handle dot-separated paths - check if prefix.second_part exists in the map
        if [ ${#parts[@]} -ge 2 ]; then
            local extended_prefix="${parts[0]}.${parts[1]}"
            if [[ -n "${OPAM_PACKAGE_MAP[$extended_prefix]:-}" ]]; then
                prefixes["$extended_prefix"]=1
            fi
        fi
    done

    local all_prefixes=("${!prefixes[@]}")

    printf '%s\n' "${all_prefixes[@]}" | sort
}

function try_install_opam_deps() {
    local all_prefixes=($(get_opam_deps))

    if [ ${#all_prefixes[@]} -eq 0 ]; then
        >&2 echo "No opam dependencies found, skipping opam dependency installation."
        return 0
    fi

    # Map prefixes to packages and build a deduplicated list.
    declare -A pkg_sources
    local no_pkg_prefixes=()
    local package_candidates=""
    for prefix in "${prefixes[@]}"; do
        local pkgs="${OPAM_PACKAGE_MAP[$prefix]:-""}"
        if [ -z "$pkgs" ]; then
            no_pkg_prefixes+=("$prefix")
        else
            package_candidates="$package_candidates $pkgs"
            for pkg in $pkgs; do
                if [ -z "${pkg_sources[$pkg]:-}" ]; then
                    pkg_sources[$pkg]="$prefix"
                else
                    pkg_sources[$pkg]="${pkg_sources[$pkg]} $prefix"
                fi
            done
        fi
    done

    local final_package_list
    final_package_list=$(echo "$package_candidates" | tr ' ' '\n' | sort -u | tr '\n' ' ')

    if [ -z "$final_package_list" ]; then
        >&2 echo "Found prefixes, but none mapped to known opam packages."
        return 0
    fi

    local succeeded=()
    local failed=()
    for pkg in "${!pkg_sources[@]}"; do
        echo "::group::Installing $pkg"
        if opam install -y "$pkg"; then
            succeeded+=("$pkg")
        elif [[ "$pkg" == coq-* ]] && opam install -y "rocq-${pkg#coq-}"; then
            succeeded+=("rocq-${pkg#coq-}")
        elif [[ "$pkg" == coq-*coq* ]] && opam install -y "${pkg//coq/rocq}"; then
            succeeded+=("${pkg//coq/rocq}")
        else
            failed+=("$pkg")
        fi
        echo "::endgroup::"
    done

    # Write a summary to the GitHub Actions summary file, if available.
    if [ -n "${GITHUB_STEP_SUMMARY:-}" ] && [ -w "$GITHUB_STEP_SUMMARY" ]; then
        {
            echo "### 📦 Opam Dependency Installation Summary"
            echo
            if [ ${#succeeded[@]} -eq 0 ] && [ ${#failed[@]} -eq 0 ]; then
                echo "No opam packages were identified for installation."
            else
                echo "**Prefixes found:** \`$(printf '%s ' "${prefixes[@]}" | tr ' ' '\n' | sort | tr '\n' ' ' | sed 's/ /, /g')\`"
                echo
                echo "**Attempted Package Installations:**"
                echo "| Package | Status | Triggered By Prefixes |"
                echo "|---------|--------|-----------------------|"
                for pkg in $(printf '%s\n' "${succeeded[@]}" | sort); do
                    echo "| \`$pkg\` | ✅ Success | \`$(echo "${pkg_sources[$pkg]}" | tr ' ' '\n' | sort | tr '\n' ' ' | sed 's/ /, /g')\` |"
                done
                for pkg in $(printf '%s\n' "${failed[@]}" | sort); do
                    echo "| \`$pkg\` | ❌ Failure | \`$(echo "${pkg_sources[$pkg]}" | tr ' ' '\n' | sort | tr '\n' ' ' | sed 's/ /, /g')\` |"
                done
                echo
            fi
            if [ ${#no_pkg_prefixes[@]} -gt 0 ]; then
                echo "**Unrecognized Prefixes:**"
                echo "> The following prefixes were found but did not map to any known opam package: \`$(printf '%s ' "${no_pkg_prefixes[@]}" | tr ' ' '\n' | sort | tr '\n' ' ' | sed 's/ /, /g')\`"
                echo
            fi
        } >> "$GITHUB_STEP_SUMMARY"
    fi
}

trial_extract tar -xvf "../$fname"
trial_extract unzip "../$fname"
trial_extract_raw "file ../$qfname | grep -q text && cp ../$qfname downloaded_bug.v"
trial_extract_raw "test x$qextension == xtxt && cp ../$qfname downloaded_bug.v"
for kind in --bzip2 --xz --lzip --lzma --lzop --gunzip --uncompress --zstd; do
    trial_extract tar $kind -xvf "../$fname"
done

if [ "$success" == "no" ]; then
    >&2 printf "ERROR: Could not recognize %s as archive or .v file\n" "$fname"
    >&2 file "$fname"
    exit 1
fi

cd bug-output
try_install_opam_deps || true
try_autogen_configure_make || try_coq_makefile || try_coqc
