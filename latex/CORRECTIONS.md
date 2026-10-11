# Corrections log

Every place where the handwritten notes were changed, extracted from the `% corrected:` source comments.

## Part 1
- **p. 2:** notes had x \oplus y = x_1+y_1+j(y_1+y_2); the second component of x\oplus y is x_2+y_2
- **p. 3:** notes had "=>" between the members of this chain; they are equalities
- **p. 5:** the middle graph is labeled "\in W" in the notes; it is meant as \in W_2
- **p. 6:** notes had "Y u Z is not closed under addition but not closed under scalar multiplication"; Y u Z is always closed under scalar multiplication
- **p. 6:** notes had w_1 \oplus_V w_2 and \alpha \odot_V w_1; the second components use the operations of W
- **p. 9:** notes had "some of the vectors are nonzero"; it is the coefficients alpha_i - beta_i that are nonzero
- **p. 10:** notes had "P = [w_1]_{B_1}", "P = [w_2]_{B_1}" (subscript hard to read) and "P . [w_3]_{B_2}" on the right; each is the corresponding column of P, i.e. [w_j]_{B_1}
- **p. 11:** notes had \norm{x_i} in (1) and the sum without parentheses in (3)
- **p. 11:** notes had "1st quadrant: x_1 - x_2 = 1"; in the 1st quadrant |x_1|+|x_2| = x_1+x_2. 3rd/4th quadrants added.
- **p. 12:** notes had the L_p and L_2 integrals without dt, the L_1 norm without subscript, and max_t |f(t)| for L_infinity; the example below shows why sup is needed

## Part 2
- **p. 13:** notes had tr(A) on the left-hand side (the trace taken is that of A^T A)
- **p. 15:** notes have a stray "7" written below the "8"; the value of ||A||_1 is 8 (column sums 6 and 8); 7 is ||A||_inf from the previous page
- **p. 15:** notes had ||(-1)^n - 1|| = (-1)^n - 1 (absolute value missing; that expression is negative for odd n)
- **p. 15:** notes had the integral over (-infinity, infinity); functions in V live on [-1,1]
- **p. 16:** notes justified the inequality step "by absolute convergence"; it is the triangle inequality (and ||v - v_m|| = ||v_m - v|| by homogeneity with alpha = -1)
- **p. 18:** notes wrote lim_{n,m} ||f_n - f_m||_inf = |1 - n/m|; the distance itself equals |1 - n/m| (m >= n), and this does not tend to 0
- **p. 19:** notes had the row vector [y_1 y_2 ...]; y^H = conj(y)^T has conjugated entries
- **p. 19:** notes had B^T with rows b11 b12 / b12 b22 / b13 b23 (entry (1,2) must be b21)
- **p. 19:** notes stated equality iff x = cy; the case y = 0_V (x arbitrary) also gives equality 0 = 0, so the condition is linear dependence
- **p. 24:** notes had w_2 = \bar w_2 / ||w_2||; the normalisation divides by ||\bar w_2||. The last normalisation w_n = \bar w_n/||\bar w_n|| is implied by the pattern and added.

## Part 3
- **p. 25:** notes had the sums for v_1, v_2 starting at i=1 (constant term must be included; the next line already uses i=0)
- **p. 26:** notes had N(A_1) = 0_V (null space is a set: {0_V})
- **p. 28:** notes had the side note labelled N(A) = {poly degree <= 1}; this is the range of d/dt (cf. p.29), the null space is the constants
- **p. 28:** notes had "alpha w_1 = A(alpha v_1) = alpha A v_1 = alpha w_1 in R(A)" (circular chain); rewritten as an implication
- **p. 29:** notes had "dim R(A_1) = 0" in the last line; A_2 is meant.
- **p. 29:** notes had "R(A) \not\subseteq W"; R(A) is always a subset of W, so "proper subset" (\subsetneq) is meant
- **p. 31:** notes had [v]_B (no bar) in the second line; [v]_{\bar B} is meant. The last two lines are added (combine 1) and 2)).
- **p. 32:** notes had the first "\bar{\bar A} = Q^{-1}\bar A" line with a single bar on the left (double bar meant).
- **p. 34:** notes had "M_2 & M_2" in the first line; M_1 & M_2 meant.
- **p. 35:** notes labelled the un-orthogonalized vectors [1,0,0,0], [0,1,0,0] themselves as e_3, e_4 and wrote M^perp = sp{e_3,e_4};

## Part 4
- **p. 40:** notes had the third label as v_2 (meant v_3)
- **p. 41:** notes had "B x^H = [m_i^H x] = [<x,m_i>] = [Gram matrix]". B x^H is B^H x, and the Gram matrix
- **p. 41:** notes had "P_{M^perp} = (I-P_M) x" (the matrix is I-P_M; (I-P_M)x is the projected vector)
- **p. 41:** notes had "B(B^H B^{-1})B^H" in the last step; it is B(B^H B)^{-1}B^H
- **p. 42:** second small "C^m" label next to the zero vector; read as the subscript of 0 (0_{C^m}), consistent with N(A)={x: Ax=0_{C^m}}
- **p. 43:** notes had "= b+0 = 0" at the end (meant "= b") and "x is exact" (meant \hat x)
- **p. 44:** notes had the first term without the square, i.e. ||Ax-b_1|| + ||b_2||^2
- **p. 45:** notes had the multiplied vector as [1;1] (it is b=[2;1])

## Part 5
- **p. 49:** notes had "b in C^m  for all b in R(A)" (quantifiers swapped)
- **p. 49:** notes had Proj_{R(A^H)} x-hat = Proj_{R(A^H)} x-hat (first projection meant onto N^perp(A))
- **p. 50:** notes had "x-hat + m" (an element of N(A) is added)
- **p. 50:** notes had z = [x2; x3]; A_1 consists of the first two columns of A, so z = [x1; x2] (consistent with the final x-hat).
- **p. 51:** the notes write "not in M" for M_1; made explicit as M_1.
- **p. 53:** notes had "tr A := det A" (slip; the trace of the operator is the trace of its matrix)
- **p. 53:** notes had "R: rotation vectors"; R denotes the rotation matrix
- **p. 56:** notes had M_1 = sp{b_1^1, b_2^2}, M_2 = sp{b_1^1, b_2^2, b_3^3}; indices fixed to match P_1, P_2 below (b_i^j: j-th basis vector of M_i)
- **p. 56:** notes had M_2 = { b_2^1 } (set instead of span)
- **p. 57:** notes had P = [b_1^1 b_2^1 | b_2^1]; the basis of M_1 followed by that of M_2 is [b_1^1 b_1^2 | b_2^1], as in the next line.
- **p. 57:** the circled exponent 2 carries a small mark (*, +) in the notes linking it to the multiplicity in d(s); dropped.
- **p. 57:** notes had (A - lambda_2 I)e_2 in the second term (which would be 0); applying (A - lambda_1 I) gives (A - lambda_1 I)e_2, computed below.
- **p. 57:** notes had A in C^n

## Part 6
- **p. 58:** notes label the diagonal matrix "A"; it is \bar A = P^{-1}AP
- **p. 59:** notes had A_{31}=1, inconsistent with sI-A (entry 0) and with all following computations (A-lambda_i I, null spaces, the check AP); A_{31}=0 is meant
- **p. 60:** notes had "A - 4 + 3A^{-1} = 0" (identity matrix missing)
- **p. 61:** notes had m(A) = (A-2)(A-2)
- **p. 61:** notes had "d(s) = m(s) d(s)"
- **p. 61:** in the notes this is a scattered list of crossed-out candidates with checkmarks
- **p. 61:** notes had upper bound "k"; r_i is meant (cf. page 63)
- **p. 62:** notes had "\bar r(s) = r(\alpha)/\alpha"; the division d = mq + r was only implicit
- **p. 62:** notes had e_1 instead of e_i in two places, and a stray cancelled e_i inside the bracket
- **p. 63:** notes had exponent 2 on (s-lambda_2); all exponents are 1 in the distinct case
- **p. 63:** notes had "(A_2-I)(A_2-2I) = 0"; the product is nonzero, which is exactly why m_2 = (s-1)(s-2)^2
- **p. 65:** notes had N((A-2I)) in the last column; (A-2I)^3 is meant
- **p. 66:** notes omitted "=" between the two null spaces
- **p. 66:** notes write "A" instead of "A_1" in the dimension column and in the last row
- **p. 67:** notes had dim N(Sigma^{l+1}) - dim N(Sigma^l) = # JB's with size >= l (off by one);

## Part 7
- **p. 69:** notes had "Sigma_i^{m_i-1} != 0" (the vector x was missing)
- **p. 71:** notes had "# of JB w.s.=2 for lambda_2" and "# of JB with size=3 for lambda_2"; these counts are for lambda_1 and mean size >= 2, >= 3
- **p. 72:** notes had "1 <= 1" under N(Sigma_i) (i.e. dim N(Sigma_i) >= 1 and = 1)
- **p. 73:** notes had "(Sigma_i^{m_i-2}x) Sigma_i" (factor order) and "(lambda_i + Sigma_i)" (lambda_i I + Sigma_i)
- **p. 78:** notes had "lambda_i = lambda_j"; the hypothesis is lambda_i != lambda_j
- **p. 79:** notes had "1 <= m_i <= r_k" (meaning r_i)
- **p. 80:** notes had "For diagonalization, we need" (normality is needed for unitary diagonalization, not for diagonalization in general) and "N^2 = N^2" (meaning N^H N = N^2 = N N^H when N^H = N)
- **p. 80:** notes had "<=> A is normal"; normality implies the three statements, but a diagonalizable matrix need not be normal

## Part 8
- **p. 83:** notes had "||e_i||^2 is non-negative"; strict positivity (e_i != 0) is what is needed
- **p. 84:** notes had d^i f / dt^i; the variable is s
- **p. 86:** notes had "eigenvalues invariant under functions"; the eigenvectors e_j are what stays the same (eigenvalues become f(lambda_j))
- **p. 86:** notes had "log 0"; the eigenvalue is 1 and log 1 = 0
- **p. 86:** notes had "c_2"; c_0 is meant
- **p. 86:** notes had left-hand side "log s"; log A is meant
- **p. 86:** written like f'(lambda_j) in the notes; f(lambda_j) is meant
- **p. 86:** notes had "x-dot = [2 1; 1 2] x_0"; the ODE is x-dot = A x with x(0) = x_0
- **p. 89:** pass-2 transcription had c_1 struck through in p(1); c_1 = pi is not zero, it is substituted (giving c_3 + c_4 = -pi)
- **p. 89:** notes had f^{(t)}(A_j); lambda_j is meant
- **p. 89:** notes had "Square root function DNA."; read as "does not apply" (f'(0) does not exist), consistent with the remark above
- **p. 90:** notes labelled the generic block J_sigma (size d_t) and the last block of J^i as J_t^i; made consistent (blocks J_1..J_sigma, generic block J_t)
- **p. 92:** notes had \mp in both entries; the two signs can be chosen independently (4 matrices)
