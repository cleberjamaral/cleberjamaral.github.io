---
description: Formal methods reference
---

# latex

### Variable Names

| Concept | Math | LaTeX | Notes |
| :--- | :--- | :--- | :--- |
| Sets | A,B,C | `A,B,C` | upper-case letters |
| Indexed sets | A1, A2, …, An | `A_1, A_2, \ldots, A_n` | the index may be of any type, not nec. an integer |
| Statements | P, Q, R, S | `P, Q, R, S` |  |
| Statements with variables | P\(x\), Q\(x\), R\(x\), S\(x\) | `P(x), Q(x), R(x), S(x)` |  |

### Set Theory

| Concept | Math | LaTeX | Notes |
| :--- | :--- | :--- | :--- |
| Set | {a,b,c} | `\{a,b,c\}` | set enumeration |
| Set | {x∣P\(x\)} or {x:P\(X\)} | `\{\,x \mid P(x)\,\}` or `\{\,x : P(X)\,\}` | set comprehension \(described implicitly with the property P\) aka set-builder notation |
| Infinite set | {1, 2, 3, …} | `\{1,2,3,\ldots\}` | and so on |
| Infinite set | {…, 1, 2, 3, …} | `\{\ldots,1,2,3,\ldots\}` | and so on |
| Empty set | ∅ or {} | `\varnothing` or `\emptyset` or `\{\}` |  |
| Powerset | P\(S\) | `\mathbb{P}(S)` or `\mathcal{P}(S)` | set of all possible subsets of set S, \|P\(S\)\| = 2^\|S\| |
| Member | x∈A | `x \in A` |  |
| Not member | x∉A | `x \not\in A` |  |
| Subset | A⊂B or A⊆B | `A \subset B` or `A \subseteq B` |  |
| Not subset | A⊄B or A⊈B | `A \not\subset B` or `A \nsubseteq B` |  |
| Set equality | A=B | `A = B` | A⊆B and B⊆A |
| Union | A∪B | `A \cup B` |  |
| Intersection | A∩B | `A \cap B` |  |
| Distributed or generalized union | ⋃SS | `\bigcup SS` | over set of sets |
| Distributed or generalized intersection | ⋂SS | `\bigcap SS` | over set of sets |
| Relative complement | A−B or A∖B | `A - B` or `A \setminus B` | {x∣x∈A and x∉B} |
| Absolute complement | A+B | `A + B` | \(A−B\)∪\(B−A\)\(A−B\)∪\(B−A\) |
| Disjoint sets |  |  | A∩B = ∅ |
| Set cardinality \(aka size\) | card\(S\) or \|S\| | `\mathbf{card}(S)` or `|S|` | number of members of S |
| Boolean set | B or {true,false} or {tt,ff} or {1,0} | `\mathbb{B}` or `\{\mathrm{true}, \mathrm{false}\}` or `\{tt, ff\}` or `\{1, 0\}` |  |
| Natural numbers set | N or N+ | `\mathbb{N}` or `\mathbb{N}^+` | N+ = N∖{0} |
| Integer numbers set | Z | `\mathbb{Z}` |  |
| Rational numbers set | Q | `\mathbb{Q}` | a/b, a - numerator, b - denominator, b≠0 |
| Real numbers set | R | `\mathbb{R}` |  |
| Set of prime numbers | N | `\mathbb{N}` |  |
| Set of irrational numbers | II | `\mathbb{I}` |  |
| Set of complex numbers | CC | `\mathbb{C}` |  |

### Cartesian Products

| Concept | Math | LaTeX | Notes |
| :--- | :--- | :--- | :--- |
| Ordered Pair | \(a,b\) | `(a,b)` |  |
| Triple | \(a,b,c\) | `(a,b,c)` |  |
| N-tuple | \(e1,…,en\) | `(e_1, \ldots, e_n)` |  |
| Cartesian product | A×B | `A \times B` | {\(a,b\)∣a∈A,b∈B} |
| Cartesian plane | R×R | `\mathbb{R} \times \mathbb{R}` | {\(x,y\)∣x,y∈R} |
| Cartesian power | An | `A^n` | A×A×…×A={x1,x2,…,xn\|x1,x2,…,xn∈A} |

### Types

| Concept | Math | LaTeX | Notes |
| :--- | :--- | :--- | :--- |
| User defined type | DEFINEDTYPE={2,4,8} | `\mathrm{DEFINEDTYPE} = \{2,4,8\}` | a set defined explicitly, or by set comprehension |
| Product type | B×B | `\mathbb{B} \times \mathbb{B}` | a set of tuples \(here, {\(tt,tt\),\(tt,ff\),\(ff,ff\),\(ff,tt\)}\) |
| Two-argument function signature | func:R×N→N | `\textrm{func}:\mathbb{R} \times \mathbb{N} \rightarrow \mathbb{N}` | type of arguments is product type |
| Enumerated type | signal=r \| y \| g | `\textrm{signal} = \textrm{r}~|~\textrm{y}~|~\textrm{g}` | type union of literals |

### Mathematical Operators

| Concept | Math | LaTeX | Notes |
| :--- | :--- | :--- | :--- |
| Absolute operator | abs −20=20 | `\mathbf{abs}\ {-20} = 20` | unary |
| Floor/integer part operator | floor 2.5=2 | `\mathbf{floor}\ 2.5 = 2` | unary |
| Integer division operator | 5 div 2=2 | `5\ \mathbf{div}\ 2 = 2` | binary |
| Remainder operator | 5 rem −2=1 | `5\ \mathbf{rem}\ {-2} = 1` | binary |
| Modulus operator | 5 mod −2=−1 | `5\ \mathbf{mod}\ {-2} = -1` | binary |
| Equality | a=b | `a = b` | binary |
| Inequality | a≠b | `a \neq b` | binary |
| Less than | a&gt;b | `a > b` | binary |
| Less than or equal | a≥b | `a \ge b` | binary |
| More than | a&lt;b | `a < b` | binary |
| More than or equal | a≤b | `a \le b` | binary |

### Bags

| Concept | Math | LaTeX | Notes |
| :--- | :--- | :--- | :--- |
| Bag | \[\[a,b,b,c,d\]\] | `[\![ a,b,b,c,d ]\!]` | Members can repeat, unordered, also `\llbracket` and `\rrbracket` from package `stmaryrd` look better |
| Count operator | count\[\[a,b,b,c,d\]\]b=2 | `\mathbf{count}[\![ a,b,b,c,d ]\!] b = 2` | How many times element bb occurs in bag |
| Bag cardinality | card\(B\) | `\mathbf{card}(B)` | Number of members of B |
| Bag union \(1\) | \[\[a,b,b,c,d\]\]∪\[\[a,b,c,c,d\]\]=\[\[a,b,b,c,c,d\]\] | `[\![ a,b,b,c,d ]\!] \cup [\![ a,b,c,c,d ]\!] = [\![ a,b,b,c,c,d ]\!]` | Maximum number an element occurs |
| Bag union \(2\) | \[\[a,b,b,c,d\]\]∪\[\[a,b,c,c,d\]\]=\[\[a,a,b,b,b,c,c,c,d,c\]\] | `[\![ a,b,b,c,d ]\!] \cup [\![ a,b,c,c,d ]\!] = [\![ a,a,b,b,b,c,c,c,d,c ]\!]` | Sum of elements |
| Bag intersection | \[\[a,b,b,c,d\]\]∩\[\[a,b,c,c,d\]\]=\[\[a,b,c,d\]\] | `[\![ a,b,b,c,d ]\!] \cap [\![ a,b,c,c,d ]\!] = [\![ a,b,c,d ]\!]` | Minimum number an element occurs |
| Bag difference | \[\[a,b,b,c,d\]\]−\[\[a,b,c,c,d\]\]=\[\[b,c\]\] | `[\![ a,b,b,c,d ]\!] - [\![ a,b,c,c,d ]\!] = [\![ b,c ]\!]` | Subtract the number of elements in the second bag from the first |

### Sequences

| Concept | Math | LaTeX | Notes |
| :--- | :--- | :--- | :--- |
| Empty sequence | \[\] | \[\] |  |
| Sequence \(explicit declaration\) | \[a,b,b,d\] | `[ a,b,b,d ]` | In that order. This is the typical representation. |
| Sequence \(implicit declaration\) | \[e∣P\(e\)\] | `[\,e \mid P(e)\,]` | Set comprehension \(described implicitly with the property P\) |
| Head of a sequence | hd A | `\mathbf{hd}~A` | hd \[a,b,b,c\]=a |
| Tail of a sequence | tl A | `\mathbf{tl}~A` | tl \[a,b,b,c\]=\[b,b,c\] |
| Length of a sequence | len A | `\mathbf{len}~A` | len \[a,b,b,c\]=4 |
| Element selection \(by application\) | A\(n\) | `A(n)` | Select the nn-th element of the sequence |
| Indices of a sequence | inds A | `\mathbf{inds}~A` | inds \[a,b,c\]={1,2,3} |
| Elements of a sequence | elems A | `\mathbf{elems}~A` | elems \[a,b,b,c\]={a,b,c} |
| Sequence concatenation |  |  | Symbol varies between notations |
| List | &lt;a,b,c&gt; or \(a,b,c\) or abc | `<a,b,c>` or `(a,b,c)` or `abc` | An alternative notation and naming used by some formal notations |
| Empty list | \(\) | `()` |  |

### Formal Logic

| Concept | Math | LaTeX | Notes |
| :--- | :--- | :--- | :--- |
| Conjunction \(AND\) | ∧or & or . | `\wedge` or `\&` or `.` | Alternatively `\with` from package `cmll` instead of `\&`. |
| Alternative \(OR\) | ∨or \|or + | `\vee` or `|` or `+` |  |
| Negation \(NOT\) | ¬ or ∼ | `\neg` or `\sim` |  |
| Implication | →or ⇒ or ⊃ | `\rightarrow` or `\Rightarrow` or `\supset` | premise→conclussion |
| Equivalence | ↔or ⇔ or ≡ | `\leftrightarrow` or `\Leftrightarrow` or `\equiv` |  |

#### Equivalence Laws

| Concept | Math | LaTeX | Notes |
| :--- | :--- | :--- | :--- |
| Commutation \(conjunctions\) | \(P∧Q\) ≡ \(Q∧P\) | `(P \wedge Q) \equiv (Q \wedge P)` |  |
| Commutation \(alternatives\) | \(P∨Q\) ≡ \(Q∨P\) | `(P \vee Q) \equiv (Q \vee P)` |  |
| Commutation \(equivalences\) | \(P↔Q\) ≡ \(Q↔P\) | `(P \leftrightarrow Q) \equiv (Q \leftrightarrow P)` |  |
| Association \(conjunctions\) | P∧\(Q∧R\) ≡ \(P∧Q\)∧R | `P \wedge (Q \wedge R) \equiv (P \wedge Q) \wedge R` |  |
| Association \(alternatives\) | P∨\(Q∨R\) ≡ \(P∨Q\)∨R | `P \vee (Q \vee R) \equiv (P \vee Q) \vee R` |  |
| Distribution \(1\) | P∨\(Q∧R\) ≡ \(P∨Q\)∧\(P∨R\) | `P \vee (Q \wedge R) \equiv (P \vee Q) \wedge (P \vee R)` |  |
| Distribution \(2\) | P∧\(Q∨R\) ≡ \(P∧Q\)∨\(P∧R\) | `P \wedge (Q \vee R) \equiv (P \wedge Q) \vee (P \wedge R)` |  |
| De Morgan’s Law \(negation of conjunction\) | ¬\(P∧Q\) ≡ ¬P∨¬Q | `\neg(P \wedge Q) \equiv \neg P \vee \neg Q` |  |
| De Morgan’s Law \(negation of alternative\) | ¬\(P∨Q\) ≡ ¬P∧¬Q | `\neg(P \vee Q) \equiv \neg P \wedge \neg Q` |  |
| Double Negation | ¬¬P ≡ P | `\neg\neg P \equiv P` |  |
| Excluded Middle | P∨¬P ≡ tt | `P \vee \neg P \equiv tt` |  |
| Contradiction | P∧¬P ≡ ff | `P \wedge \neg P \equiv ff` |  |
| Material Implication | P→Q ≡ ¬P∨Q | `P \rightarrow Q \equiv \neg P \vee Q` |  |
| Material Equivalence \(1\) | \(P↔Q\) ≡ \(P→Q\)∧\(Q→P\) | `(P \leftrightarrow Q) \equiv (P \rightarrow Q) \wedge (Q \rightarrow P)` |  |
| Material Equivalence \(2\) | \(P↔Q\) ≡ \(P∧Q\)∨\(¬Q∧¬P\) | `(P \leftrightarrow Q) \equiv (P \wedge Q) \vee (\neg Q \wedge \neg P)` |  |
| Exportation | \(P∧Q\)→R ≡ P→\(Q→R\) | `(P \wedge Q) \rightarrow R \equiv P \rightarrow (Q \rightarrow R)` |  |
| Or-Simplification | P∨P ≡ P | `P \vee P \equiv P` |  |
| Or-Simplification \(true\) | P∨tt ≡ tt | `P \vee tt \equiv tt` |  |
| Or-Simplification \(false\) | P∨ff ≡ P | `P \vee ff \equiv P` |  |
| And-Simplification | P∧P ≡ P | `P \wedge P \equiv P` |  |
| And-Simplification \(true\) | P∧tt ≡ P | `P \wedge tt \equiv P` |  |
| And-Simplification \(false\) | P∧ff ≡ ff | `P \wedge ff \equiv ff` |  |

#### Logic Forms

| Concept | Math | LaTeX | Notes |
| :--- | :--- | :--- | :--- |
| Modus Ponens | P→Q, P ⊢ Q | `P \rightarrow Q, P \vdash Q` | Andrew Harry uses `\uptherefore` from MnSymbol |
| Modus Tollens | P→Q, ¬Q ⊢ ¬P | `P \rightarrow Q, \neg Q \vdash \neg P` |  |
| Hypothetical Syllogism | P→Q, Q→R ⊢ P→R | `P \rightarrow Q, Q \rightarrow R \vdash P \rightarrow R` |  |
| Constructive Dillema | P→Q∧R→S, P∨R ⊢ Q∨S | `P \rightarrow Q \wedge R \rightarrow S, P \vee R \vdash Q \vee S` |  |
| Destructive Dillema | P→Q∧R→S, ¬Q∨¬S ⊢ ¬P∨¬R | `P \rightarrow Q \wedge R \rightarrow S, \neg Q \vee \neg S \vdash \neg P \vee \neg R` |  |
| Conjunction | P, Q ⊢ P∧Q | `P, Q \vdash P \wedge Q` |  |
| Addition | P ⊢ P∨Q | `P \vdash P \vee Q` |  |

#### Predicate Logic

| Concept | Math | LaTeX | Notes |
| :--- | :--- | :--- | :--- |
| Universal qualifier \(all\) | ∀x | `\forall_x` |  |
| Universal specification | ∀x∙Px | `\forall_x \bullet P_x` | ∀x∙man\(x\)→mortal\(x\) |
| Existential qualifier \(exists\) | ∃x | `\exists_x` |  |
| Existential specification | ∃x∙Px | `\exists_x \bullet P_x` | ∃x∙Socrates\(x\)∧man\(x\)∃x∙Socrates\(x\)∧man\(x\) |
| Ranging over types \(1\) | ∀x∈X or ∀x:X | `\forall_x \in X` or `\forall_x : X` | The former suggests X is a set, the latter that it is a type |
| Ranging over types \(2\) | ∃x∈X or ∃x:X | `\exists_x \in X` or `\exists_x : X` | The former suggests X is a set, the latter that it is a type |
| Covnersion between qualifiers \(1\) | ∀x∙Px ≡ ¬∃x∙¬Px | `\forall_x \bullet P_x \equiv \neg\exists_x \bullet \neg P_x` | Alternatively ∄x |
| Covnersion between qualifiers \(2\) | ¬∀x∙Px ≡ ∃x∙¬Px | `\neg\forall_x \bullet P_x \equiv \exists_x \bullet \neg P_x` |  |
| Covnersion between qualifiers \(3\) | ¬∀x∙¬Px ≡ ∃x∙Px | `\neg\forall_x \bullet \neg P_x \equiv \exists_x \bullet P_x` |  |
| Covnersion between qualifiers \(4\) | ∀x∙¬Px ≡ ¬∃x∙Px | `\forall_x \bullet \neg P_x \equiv \neg\exists_x \bullet P_x` | Alternatively ∄x |

### Relationships and Functions

| Concept | Math | LaTeX | Notes |
| :--- | :--- | :--- | :--- |
| A mapping | x↦y or \(x,y\) | `x \mapsto y` or `(x, y)` |  |
| Function signiature | f: X→Y | `f:X \rightarrow Y` | Mapping from X \(domain\) to Y \(co-domain\). What is allowed to be in X, Y is described by the precondition, postcondition. |
| Function definition | square\(x\)=x2 where 1≤x≤5 | `\mathbf{square}(x) = x^2\ \text{where}\ 1 \le x \le 5` |  |
| Function defined as co-ordinates | square={\(1,2\),\(2,4\),\(3,9\),\(4,16\),\(5,25\)} | `\mathbf{square} = \{(1,2), (2,4), (3,9), (4,16), (5,25)\}` | The set of right coordinates \(here {2,4,9,16,25}\) is the range of a function |
| Range | range\(f\) | `\mathrm{range}(f)` | range\({\(1,a\),\(2,b\),\(3,c\)}\)={a,b,c} |
| Partial function signiature | f: X↛ Y | `f:X \nrightarrow Y` | Not all elements from X are mapped to elements from Y |

### Transactional Memory

| Concept | Math | LaTeX | Notes |
| :--- | :--- | :--- | :--- |
| History | H | `H` |  |
| Sequential witness history | S or S^ | `S` or `\hat{S}` |  |
| Completion |  |  |  |
| T-objects |  |  |  |
| Transaction | Ti, Tj, Tk | `T_i`, `T_j`, `T_k` |  |
| Subhistory – transaction | H\|Ti | `H|T_i` | A subhistory containing all operations in history HH that are executed within transaction TiTi |
| Subhistory – t-object | H\|x | `H|x` | A subhistory containing all operations in history HH that are executed on t-object xx |
| History prefix | H=H′∘H′ | `H = H' \circ H''` | H′H′ is a prefix of H′′H″ |
| Commit |  |  |  |
| Abort |  |  |  |
| Forced abort |  |  |  |
| Read |  |  |  |
| Write |  |  |  |
| Operation | π | `\pi` |  |

#### Notation for Presenting Histories

| Concept | Math | LaTeX | Notes |
| :--- | :--- | :--- | :--- |
| Variables | x, y, z | `x,y,z` |  |
| Variable local copy or buffer | x\_ | `\underline{x}` | Transaction’s copy of x |
| Variable versioning | xn | `\overset{n}{x}` | Variable x with version n |
| Transaction identifiers | Ti, Tj, Tk | `T_i`, `T_j`, `T_k` |  |
| Retried transaction identifiers | T′i, T′′i, T′′′i | `T_i'`, `T_i''`, `T_i'''` | Transaction Ti‘s first, second, etc. retry |
| Read operation | r\(x\)v | `r(x)v` | Reads value vv from variable xx, can be used with specific values, e.g., r\(x\)1 |
| Write operation | w\(x\)v | `w(x)v` | Writes value vv to variable xx, can be used with specific values, e.g., w\(x\)1 |
| Read-write operation | {x→vy} or {y←vx} | `\{x \xrightarrow{v} y\}` or `\{y \xleftarrow{v} x\}` | Shorthand for the sequence r\(x\)v,w\(y\)v |
| Read operation with explicit membership | ri\(x\)v | `r_i(x)v` | Read operation executed within Ti |
| Write operation with explicit membership | wi\(x\)v | `w_i(x)v` | Write operation executed within Ti |
| Operation identifier | op, opr, opw, opi | `\mathit{op}, \mathit{op}^r, \mathit{op}^w, \mathit{op}_i` | Operation, read operation, write operation, operation within Ti |
| Operation membership | op∈Ti | `\mathit{op} \in T_i` | Shorthand for op∈H\|Ti |
| Transaction start | \[\[ or \llbracket | `[\![` or `\llbracket` | \llbracket requires the stmaryrd package |
| Transaction commit | \]\] or \rrbracket | `]\!]` or `\rrbracket` | \rrbracket requires the stmaryrd package |
| Transaction abort | ↻ or \righttoleftarrowor ↶ | `\circlearrowright` or `\righttoleftarrow` or `\curvearrowleft` | in amsmath or mathabx or amssymb, respectively |
| Weak transaction start | \[ | `[` | Used to indicate transactions with relaxed properties, e.g. eventually consistent transactions |
| Weak transaction commit | \] | `]` | Used to indicate transactions with relaxed properties, e.g. eventually consistent transactions |
| Irrevocable operation | irr or ir | `\mathit{irr}` or `\mathit{ir}` |  |
| Happens-before relation | ↘ | `\searrow` | Often rotated by about 22 degrees to be more visually appealing |
| Point in time | τ | `\tau` | E.g. transaction Ti starts at time τi |
| State at point in time | {x=1,y=2,z=3} | `\{ x\!=\!1,y\!=\!2,z\!=\!3 \}` |  |

### Theorems

| Concept | Math | LaTeX | Notes |
| :--- | :--- | :--- | :--- |
| Proof | \begin{proof} ... \end{proof} | `\begin{proof} ... \end{proof}` |  |
| Named proof | \begin{proof}\[name\] ... \end{proof} | `\begin{proof}[name] ... \end{proof}` |  |

### Various

| Concept | Math | LaTeX | Notes |
| :--- | :--- | :--- | :--- |
| Binominal coefficient | \(nk\) = n!k!\(n−k\)! | `\binom{n}{k} = \frac{n!}{k!(n-k)!}` | aka choose function \(pl. _symbol Newtona_\) |
| Divisor | a\|b | `a | b` | ax=b and a, b, x ∈ Z |

### Sources

* [Konrad Siek LaTex Formal Methods Reference](http://www.cs.put.poznan.pl/ksiek/latexmath.html)
* [OEIS Foundation LaTex mathematical symbols](https://oeis.org/wiki/List_of_LaTeX_mathematical_symbols)
* [The Comprehensive LATEX Symbol List](http://linorg.usp.br/CTAN/info/symbols/comprehensive/symbols-a4.pdf)
* Handwriting characters tool to find most suitable latex symbol: [Detexify](http://detexify.kirelabs.org/classify.html)

