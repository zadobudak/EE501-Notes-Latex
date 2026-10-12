# Polish guide (pass 5: consistency, spacing, equation layout, page breaks)

Goal: make the typeset notes read like a carefully edited book. Do NOT consult the handwritten scans; review the LaTeX/PDF on its own merits. Colors, boxes, \term/\key emphasis and explanations are approved — keep them. Keep all content and math (only fix genuine internal inconsistencies).

## 1. Consistency / discrepancies (read the text critically)
- Parallel structures must be treated the same way. Example found by the user: in the field axioms, (A1),(A2) carry "(commutativity)", "(associativity)" on the right but (M1),(M2) don't — every axiom in such a list must get its name (commutativity, associativity, identity, inverse, distributivity, …), same alignment. Check all such lists (field axioms, vector-space axioms, norm properties, inner-product properties, subspace tests, properties of P_M, theorem property lists, case lists).
- Same object → same notation everywhere in your part (e.g. 0_V vs 0, ^H vs ^*, sp vs span, \Null/\Range, ‖·‖ subscripts, vectors as columns, ⊕ symbols, "JB"/"Jordan block", "w.s."). Abbreviations explained at first use.
- Headings/paragraph titles: consistent capitalization and punctuation (paragraph run-in titles end with a period), example titles consistent.
- Statements that quote earlier results must match them (numbers, signs, dimensions). Flag/fix anything that contradicts itself inside the notes.
- Leftovers: stray symbols, duplicated lines, empty \explain, "?" markers that are not meaningful, mismatched brackets, wrong punctuation after displays, sentences that end abruptly.

## 2. Vertical spacing
- Unnecessary gaps: blank lines directly before/after `\[ … \]`, `align*` etc. create extra paragraph skips — remove the blank line (keep a `%` if needed). Remove manual `\\[..]`, `\vspace`, `\medskip`, `\bigskip`, `\smallskip`, `\par\vspace` hacks unless they fix a real problem.
- Too tight: text/\explain lines crammed against matrices, fractions, underbraces or box edges; consecutive displays touching; stacked big matrices without breathing room. Fix with structure (one align*, `\\[4pt]` between tall rows inside align*, `\intertext{}`), not random vspace.
- Consistent spacing before/after figures, keyboxes and insight boxes.

## 3. Equations
- No overfull lines (0 Overfull boxes) and no inline math broken by LaTeX across lines in an ugly place. Long inline formulas → display them.
- Long displays: break at logical points using `multline*`, `split`, `aligned`, or multi-line `align*` (break before = or + / ⇒), indent continuation lines. Don't shrink fonts globally; for very wide matrices consider `\setlength\arraycolsep{3pt}` locally or splitting the product into steps.
- A display should not end a sentence awkwardly; punctuation consistent.
- Equation-plus-comment lines: comment either in an aligned text column (`&&\text{…}`) or as \explain below — never squeezed so the line wraps.

## 4. Page breaks (readability)
- A heading, an "Example"/"Proof" start, or a lead-in sentence ("Then:", "We have") must not be stranded at the bottom of a page; a short block (≤ ~10 lines: a derivation, a figure + its explanation, a small table) should not be split across pages. Use `\needspace{N\baselineskip}` before such blocks (needspace is loaded) or `\pagebreak[3]` at natural break points. Don't use hard `\newpage` unless clearly better.
- Avoid huge empty areas caused by unbreakable objects; let long examples break between steps instead.
- Note: your standalone build's page positions differ from the full document; still fix obvious splits, and make blocks robust (needspace) so they behave in the final document too. A final full-document page-break pass will follow.

## Process
1. Compile your part (`./test_part.sh K`, or your wrapper for parts 6/7 — see the task), render EVERY page at 100 dpi (`pdftoppm -r 100 -png build/testK.pdf <scratch>/p`) and inspect each page image carefully; also read the .tex top to bottom.
2. Fix; recompile; re-render and re-inspect every page. `grep -c Overfull` must be 0; also check `Underfull \hbox` badness warnings for ugly lines.
3. Only edit your part file. Do NOT run git. Report: list of consistency fixes, layout fixes, anything you think needs a global (preamble) change.
