# Improvement guide (pass 3: correct & enrich the notes)

Goal: make these the best possible study notes for EE501 (Linear Systems Theory / linear algebra), while keeping the author's material. Your file is already formatted (pass 2) — keep the formatting conventions (see REVISION_GUIDE.md: \sep, \explain, framed environments, align* at relation signs, no layout hacks, 0 overfull boxes).

Source page images (to consult when something is ambiguous): `/tmp/claude-1000/-home-zado-School-old-501/a7cb2ba9-d8eb-41fc-ad02-12b861a9b05d/scratchpad/pages/p-NN.png`; high-res: `pdftoppm -r 250 -f N -l N -x X -y Y -W W -H H -png "/home/zado/School-old/501/EE501 Lecture Notes of Umut Orguner (Fall 2024) by Elif Topaloglu.pdf" <scratch>/c`.

## 1. Resolve every questionable spot
Find all `% note:` comments, `\unclear{...}`, "as written", "sic", "presumably" remarks in your file. For each:
- Work out the logically/mathematically correct expression (re-derive it; check numeric examples by actually computing — use `python3` with `fractions.Fraction` for exact matrix arithmetic; numpy/sympy are not installed).
- Put the CORRECT expression into the text. Remove the visible red `\unclear{}` / "(sic)" / "as written; presumably…" clutter.
- Keep a source comment documenting the change: `% corrected: notes had <original>`.
- If the original was genuinely ambiguous (can't be determined), choose the reading consistent with the surrounding math and say so in the comment.
- Also verify the calculations that were NOT flagged: every worked example (matrix products, inverses, determinants, null spaces, projections, eigenvalues, Jordan forms, integrals). Fix any errors you find the same way (correct in text + `% corrected:` comment).

## 2. Fill in thin spots
Where the notes are terse (a bare result, a jump in a derivation, a claim without reason, a list of fragments, an example with no conclusion), add explanation:
- Short step justifications → `\explain{...}` under the step, or an `\intertext{}` inside align*.
- Missing intermediate steps of a derivation → add the lines directly into the align* (they are math, keep them in the flow).
- Longer additions (intuition, why a theorem matters, a completed proof sketch the notes only hint at, a summary of a method, a check that an example's answer is right, a short recap at the end of a section) → the new `insight` environment:
  ```
  \begin{insight}            % default title "Explanation"
  ...
  \end{insight}
  \begin{insight}[Why this works]  ... \end{insight}
  ```
  `insight` = clearly-marked content not in the original notes. Use it judiciously (a few per page at most), not around every line.
- Sentences fragments like "→ not satisfied" may be turned into short proper sentences.
- Do not bloat: the aim is clarity. Prefer precise, compact, standard linear-algebra explanations (e.g. rank–nullity, orthogonality principle, normal equations, Jordan chains). Stay consistent with the notation used in the notes (sp, \Range, \Null, ^H, \F, etc.).
- Do not remove original content (except replacing wrong math by correct math as above).

## 3. Verify
Compile (`./test_part.sh K` or your wrapper), render pages (`pdftoppm -r 80`), look at every page, fix layout issues, 0 Overfull boxes. Only edit your part file. Report: list of corrections (original → corrected, page), list of main additions, anything still uncertain.
