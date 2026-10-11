# Outline & emphasis guide (pass 4)

The notes are restructured to follow the official EE501 syllabus (Fall 2026–2027, see `../syllabus_2026_2027.pdf`).
Use **numbered** `\section{}` / `\subsection{}` (and `\subsubsection{}` sparingly) exactly as listed below, at the original page given (`\origpage{N}` markers in the files show where each original page begins). Every \section gets the given `\label{}` and directly after the heading a `\syllabusweek{...}` line. Subsections get the given labels.

Remove/replace the old headings (`\section{...}`, `\subsection*{...}`, `\subsection{...}`) so that only this outline remains at section/subsection level. Old minor headings that are not in the outline become `\paragraph{...}` (run-in bold) — keep them where they help. Don't move content between pages beyond what's needed to place a heading at a natural break (a heading must come right before the material it names; if the topic starts mid-page, put it at that point).

| # | Heading | Starts at (orig. page, landmark) | label |
|---|---|---|---|
| 1 | \section{Fields and Vector Spaces} + \syllabusweek{Weeks 1--2 --- algebraic structures, fields, vector spaces, subspaces, linear independence, basis} | p1 | sec:fields-vs |
| 1.1 | Fields | p1 | ss:fields |
| 1.2 | Vector Spaces | p3 (Definition of linear space) | ss:vector-spaces |
| 1.3 | Subspaces | p5 (Definition of subspace) | ss:subspaces |
| 1.4 | Sums, Intersections and Products of Subspaces | p6 (Definition of sum Y+Z) | ss:sums |
| 1.5 | Linear Combinations, Span and Linear Independence | p7 (Definition of linear combination) | ss:span-li |
| 1.6 | Basis, Dimension and Coordinates | p8 (Definition of basis) | ss:basis |
| 1.7 | Change of Basis | p9 (Theorem: [v]_{B1} = P[v]_{B2}) | ss:change-basis |
| 2 | \section{Normed Vector Spaces} + \syllabusweek{Week 3 --- normed spaces, sequences and convergence, matrix norms} | p10 | sec:normed |
| 2.1 | Norms | p10 | ss:norms |
| 2.2 | The $\ell_p$ Norms and Unit Spheres | p11 ($\ell_2$ / $\ell_p$ part) | ss:lp |
| 2.3 | Norms on Function Spaces | p11/12 (existing heading) | ss:function-norms |
| 2.4 | Matrix Norms | p12 (existing heading); inside use \subsubsection{Entrywise Norms (Frobenius)} and \subsubsection{Induced Matrix Norms} (2nd method, p13) | ss:matrix-norms |
| 2.5 | Convergence of Sequences | p15 | ss:convergence |
| 2.6 | Cauchy Sequences and Completeness | p16 (Definition of Cauchy sequence) | ss:cauchy |
| 3 | \section{Inner Product Spaces} + \syllabusweek{Week 4 --- inner product spaces, orthogonality, Gram--Schmidt} | p18 | sec:ips |
| 3.1 | Inner Products | p18 | ss:inner-products |
| 3.2 | The Cauchy--Schwarz Inequality and the Induced Norm | p19 | ss:cauchy-schwarz |
| 3.3 | Orthogonality and Orthogonal Expansions | p21 (Definition of orthogonal) | ss:orthogonality |
| 3.4 | Gram--Schmidt Orthogonalization | p23 | ss:gram-schmidt |
| 4 | \section{Linear Transformations} + \syllabusweek{Week 5 --- linear transformations, null space, range space, matrix representations} | p24 | sec:lt |
| 4.1 | Definition and Examples | p24 | ss:lt-def |
| 4.2 | Null Space | p26 | ss:null |
| 4.3 | One-to-One Transformations | p27 | ss:one-to-one |
| 4.4 | Range Space, Onto Transformations and the Rank--Nullity Theorem | p28 | ss:range |
| 4.5 | Matrix Representations | p29 | ss:matrix-rep |
| 4.6 | Change of Basis and Similar Matrices | p31 | ss:basis-change-rep |
| 5 | \section{Direct Sums and Orthogonal Projections} + \syllabusweek{Week 6 --- direct sum decompositions, projection theorem, orthogonal projections} | p32 | sec:direct-sum |
| 5.1 | Direct Sums | p32 | ss:direct-sums |
| 5.2 | Orthogonal Direct Sums and Orthogonal Complements | p33 | ss:orth-complement |
| 5.3 | The Projection Theorem | p36 | ss:projection-thm |
| 5.4 | Computing Projections: the Gram Matrix and Normal Equations | p39 ("General space") — "Specific case: orthogonal basis" becomes \paragraph | ss:gram |
| 5.5 | Orthogonal Projections in $\C^n$: Projection Matrices | p40 | ss:proj-matrices |
| 6 | \section{Systems of Linear Equations $Ax=b$} + \syllabusweek{Week 7 --- systems of linear equations of the form $Ax=b$} | p42 | sec:axb |
| 6.1 | Existence and Uniqueness of Solutions | p42 | ss:exist-unique |
| 6.2 | Least-Squares Solutions | p44 ("Least squares problem") | ss:least-squares |
| 6.3 | Minimum-Norm Solutions | p45 ("Minimum norm solution") | ss:min-norm |
| 6.4 | General Procedure and the Fundamental Theorem | p47 | ss:procedure |
| 6.5 | Special Cases by Rank | p48 ("Special Cases"); Cases I–IV as \subsubsection{Case I: Full Column Rank} etc. | ss:rank-cases |
| 7 | \section{Spectral Analysis of Linear Transformations} + \syllabusweek{Weeks 8--9 --- eigenvalues and eigenvectors, invariance under operators, block diagonal forms} | p51 | sec:spectral |
| 7.1 | Invariant Subspaces | p51 | ss:invariant |
| 7.2 | Powers and Polynomials of a Linear Transformation | p52 (Definition: powers) | ss:powers |
| 7.3 | Eigenvalues and Eigenvectors | p53 (matrix representation / Definition of eigenvalues) | ss:eigen |
| 7.4 | Block Diagonal Representations | p55 (Theorem: block diagonal representation) | ss:block-diag |
| 7.5 | Distinct Eigenvalues and Diagonalization | p57 ("Distinct eigenvalues") | ss:diagonalization |
| 8 | \section{Characteristic and Minimal Polynomials} + \syllabusweek{Week 10 --- Cayley--Hamilton theorem, characteristic and minimal polynomials} | p59 ("Similar matrices have the same characteristic polynomial") | sec:polys |
| 8.1 | Similar Matrices and the Characteristic Polynomial | p59 | ss:charpoly |
| 8.2 | The Cayley--Hamilton Theorem | p59/60 (Theorem CHT) | ss:cht |
| 8.3 | The Minimal Polynomial | p61 | ss:minpoly |
| 8.4 | Minimal Polynomial and Null-Space Decomposition | p63 ("Distinct eigenvalue case"/general statement before it) | ss:minpoly-decomp |
| 9 | \section{Jordan Canonical Form} + \syllabusweek{Weeks 11--12 --- Jordan canonical forms} | p64 | sec:jordan |
| 9.1 | Generalized Eigenspaces and the Jordan Form | p64 | ss:gen-eigenspaces |
| 9.2 | Chains of Null Spaces | p66 ("Let Σ_i ≜ A − λ_i I") | ss:nullspace-chains |
| 9.3 | Counting Jordan Blocks | p67 ("Counting Jordan blocks") | ss:counting-jb |
| 9.4 | Generalized Eigenvectors and Jordan Chains | p69 ("Generalized eigenvectors") | ss:chains |
| 9.5 | Computing $J$ and $P$: Worked Examples | p70 (Example with A 3×3, d(s)=?) | ss:jordan-examples |
| 9.6 | Special Cases | p72 | ss:jordan-special |
| 9.7 | Further Examples | p75 (6×6 example) | ss:jordan-more |
| 10 | \section{Hermitian and Positive Definite Matrices} + \syllabusweek{Week 13 --- Hermitian, positive definite and positive semi-definite matrices} | p77 | sec:hermitian |
| 10.1 | Hermitian Matrices and Their Eigenstructure | p77 | ss:hermitian-props |
| 10.2 | Unitary Diagonalization | p81 (Theorem: unitary P) | ss:unitary |
| 10.3 | Spectral Decomposition | p83 | ss:spectral-decomp |
| 10.4 | Positive Definite and Positive Semi-Definite Matrices | p83 (Definition of positive definite) | ss:posdef |
| 11 | \section{Functions of a Matrix} + \syllabusweek{Week 14 --- functions of a matrix} | p84 | sec:functions |
| 11.1 | Definition via Power Series | p84 | ss:fn-def |
| 11.2 | Method I: Interpolating Polynomial (Diagonalizable Case) | p85 | ss:method1-diag |
| 11.3 | Method I: Non-Diagonalizable and General Case | p87 | ss:method1-general |
| 11.4 | Method II: Jordan Canonical Form | p90 | ss:method2 |

Parts and page ranges: part1 p1–12, part2 p13–24, part3 p25–35, part4 p36–46, part5 p47–57, part6 p58–68, part7 p69–80, part8 p81–92. A part that starts mid-subsection must NOT re-open it.

## Emphasis (bold faces)
Preamble macros: `\term{...}` (bold, dark blue) and `\key{...}` (bold).
- Every term at the place it is **defined** → `\term{}` (e.g. "A \term{field} is…", \term{linearly independent}, \term{basis}, \term{dimension}, \term{norm}, \term{Cauchy sequence}, \term{Banach space}, \term{inner product}, \term{Hilbert space}, \term{null space}, \term{one-to-one}, \term{onto}, \term{rank}, \term{direct sum}, \term{orthogonal complement}, \term{invariant}, \term{eigenvalue}, \term{characteristic polynomial}, \term{minimal polynomial}, \term{Jordan canonical form}, \term{generalized eigenvector}, \term{Hermitian}, \term{unitary}, \term{positive definite}, …). Replace existing \emph/\textit used for defined terms.
- The decisive phrase of important statements → `\key{}`: iff-conditions, main conclusions (e.g. "\key{exact solution exists iff $b\in\Range(A)$}", "\key{unique iff $\Null(A)=\{0\}$}", "\key{distinct eigenvalues $\Rightarrow$ diagonalizable}", "\key{$m_i$ = size of the largest Jordan block}"). Also the "∴ …" conclusion lines of key examples may be \key.
- Keep it selective (a few per page); math formulas stay as they are; boxed results remain boxed. Theorem-like environments can get a short title in brackets if the notes or standard usage name them (e.g. \begin{theorem}[Cayley--Hamilton]).

## Verify
Compile (test_part.sh K, or your wrapper for parts 6/7), look at pages, 0 overfull boxes. Only edit your part file. Report the headings you placed (with page) and anything that didn't fit.
