# Alignment review (pass 7)

Goal: a page-by-page visual check of the CURRENT state after the consistency pass. Because every \section starts on a new page, `./test_section.sh NN` (run from latex/) produces exactly the same pages as the full document — review those.

Render every page of your sections at 100 dpi (`pdftoppm -r 100 -png build/testNN.pdf <scratch>/p`) and LOOK at each page image. Zoom (crop at 150 dpi) wherever something might be off. Fix in the .tex:

1. **Paragraph alignment:** text blocks must share the same left edge (parindent is 0); no stray indentation from `\noindent`/`\hspace`/leftover spaces or a `\point` line that is indented differently from the paragraphs around it; no text accidentally centered or inside an unintended `center`; paragraphs inside example/proof boxes aligned with each other.
2. **Run-in headings / labels:** \paragraph, proof/claim/remark labels followed by text on the same line where intended; no heading separated from its content by an odd gap, no doubled vertical space before/after them; a proof label or \paragraph label must not sit alone at the very bottom of a page (use \needspace before it).
3. **Lists:** item labels aligned, consistent left margins across similar lists, no list overflowing into the margin, nested list indentation sensible, list items not jammed against a following display.
4. **Displays:** multi-line derivations aligned at the relation sign; side comments (`&&\text{…}`) aligned in one column; displays not visibly off-center relative to each other in a sequence where they belong together; no display touching a box edge.
5. **Side-by-side layouts (minipages, figure + text):** tops aligned (`[t]`/`[c]` consistent), no figure overlapping text or margin tags, reasonable gap between columns.
6. **Boxes:** definition/theorem/example/insight/keybox content aligned, consistent inner spacing; QED square placement sane (not alone on a line after a box if avoidable — use \qedhere).
7. **Vertical rhythm:** remove unexpected large gaps or cramped spots; check page bottoms/tops for stranded single lines, lone headings, a \sep rule alone.
8. **Margin page tags (gray p. N):** not overlapping each other or box titles.

Rules: keep all content, math, colors and emphasis; 0 overfull boxes; only edit your assigned section files; no git. Re-render and re-check after fixing. Report briefly: issues found/fixed per file and anything left.
