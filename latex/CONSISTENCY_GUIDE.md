# Consistency guide (pass 6: small things & visible structure)

The notes are one document; the same kind of thing must look the same everywhere. Colors/boxes/emphasis scheme stays as it is (see preamble.tex). Keep all content and math. 0 overfull boxes. Do not run git. Edit only your assigned section files in latex/sections/.

## Conventions to enforce
1. **List markers.** The handwritten notes used ad-hoc stars/arrows. Now:
   - A *sequence of parallel items* (properties, cases, conditions, consequences, steps) → `enumerate` (numbered: `1.`/`(i)`/`(a)` — keep an existing labelled scheme such as (A1), (N1), (S1), I)/II)/III) if the text refers to it) or `itemize` (plain bullets) when order/number has no meaning.
   - A *single standalone point* that opens a new idea inside running text (formerly ★, ⋆, ∗, ▶, ►, "→" at line start) → `\point` (preamble macro: blue ▸ marker at the start of a paragraph), e.g. `\point Existence of eigenvectors: …`.
   - Never mix: no `$\bigstar$`, `$\star$`, `$\ast$`, `$\blacktriangleright$`, `\item[$\ast$]`, `\item[$\star$]`, `\bullet` text markers left. `\item[...]` custom labels only for meaningful labels like `\item[(A1)]`.
   - Within one list use one label style; nested lists use the standard next level.
2. **Proofs, claims, remarks, notes, facts.** Any proof (also "Proof sketch", "Proof of …", "Part I/Part II" of a proof) → `\begin{proof}[Proof sketch]…\end{proof}` (optional title), never plain text like "Proof:" or an italic word. Claims → `claim` env; remarks → `remark`; notes → `note`. These now render with a bold dark-blue label — make sure every such thing uses them. A proof/claim/remark must start on its own line (new paragraph), never glued to the end of the previous sentence or display. Parts inside a proof (Part 1, Case 1, ⇒ direction, ⇐ direction) → `\paragraph{Part 1.}` style run-in headings or bold `\textbf{(⇒)}` consistently — pick `\paragraph{…}` (bold dark blue, run-in).
3. **Run-in labels.** Lead-ins such as "Case I:", "Method II", "Step 2", "Procedure", "Check", "Summary", "Special case", "For λ₁ = 1", "Solution" that start a block → `\paragraph{Case I: …}` (sentence case, ending with a period) — never bare text, `\textbf{}` alone, or underlined text. Same level of thing → same markup in every section.
4. **Statements that matter** (a conclusion "∴ …", "Hence …", the answer of an example) should stand out: put them on their own line; the key phrase in `\key{}` (bold) as already done elsewhere; boxed final results stay boxed. Don't over-bold: at most a few per page.
5. **Small typography:** "i.e."/"e.g." with `\ `; "iff" vs "if and only if" consistent within a section; "s.t." spelled out in prose ("such that") except inside math; abbreviations JB/JCF introduced once; numbers of cases (Case I/II vs Case 1/2) consistent within a section; ✓/× marks via `\checkmark`/`\times` consistently; consistent "w.r.t."; units of list punctuation (items end with "." if sentences, nothing if fragments — consistent within a list); \qed squares only via proof env (no manual `\qed`/`\square` duplicates).
6. **Spacing around environments:** no blank lines that create extra gaps; environments and \point paragraphs start on new lines.

## Process
- Read `latex/preamble.tex` (macros: \point, \paragraph style, proof/remark/claim/note/fact, \key, \term, \explain, insight, keybox, \sep, \needspace).
- Read each assigned file fully; fix everything above.
- Compile each with `./test_section.sh NN` (from latex/), render all pages at 90 dpi (`pdftoppm -r 90 -png build/testNN.pdf <scratch>/p`), and look at every page; fix and repeat. Overfull boxes must be 0.
- Report briefly per file: what kinds of things you unified, anything ambiguous.
