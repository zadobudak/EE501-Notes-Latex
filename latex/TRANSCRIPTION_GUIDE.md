# Transcription guide (shared by all parts)

Source: `/home/zado/School-old/501/EE501 Lecture Notes of Umut Orguner (Fall 2024) by Elif Topaloglu.pdf` (92 pages, handwritten, scanned).
Page images (110 dpi): `/tmp/claude-1000/-home-zado-School-old-501/a7cb2ba9-d8eb-41fc-ad02-12b861a9b05d/scratchpad/pages/p-NN.png` (NN = 01..92).

## Workflow per page
1. Read the page image with the Read tool.
2. Wherever anything is small, dense or ambiguous (subscripts, exponents, matrix entries, signs, H vs T, primes, side notes), render a high-res crop and read it:
   `pdftoppm -r 250 -f N -l N -x X -y Y -W W -H H -png "<pdf>" <scratchdir>/crop_N_k`
   (coordinates are in 250-dpi pixels; full page is ~2067x2923 at 250 dpi). Use your own scratch subdir: `.../scratchpad/partK/`.
3. Transcribe EVERYTHING on the page, top to bottom, in order: headings, definitions, every equation line, matrices, side remarks, arrows/annotations ("not satisfied", "unique", ...), checkmarks (✓ → `\checkmark`), crosses (✗ → `\times` or `$\times$`), crossed-out text (use `\cancel{}` for math or omit pure scribble-corrections, noting obvious corrections), boxed results (use `\boxed{}` for single formulas or the `keybox` environment for larger blocks).
4. Diagrams/plots: redraw with TikZ (axes, vectors, lines, labels, subspaces, block diagrams) faithfully but cleanly, inside a `center` environment. Do not skip them.
5. Start each original page with `\origpage{N}` (puts a gray "p. N" in the margin) and a comment `% ===== Page N =====`.
6. Do NOT "correct" the mathematics silently. If the notes contain an obvious slip, transcribe as written and optionally add `\unclear{...}` or a short `% note:` comment. If a word/symbol is truly illegible, use `\unclear{best guess}`. Fix plain English spelling mistakes (e.g. "stadart" → "standard", "satisfıed").

## Formatting conventions
- Preamble is in `latex/preamble.tex` — read it first; use its macros: `\R \C \F` (field), `\V \W`, `\Span` (sp), `\Range` (R(A)), `\Null` (N(A)), `\rank`, `\tr`, `\Hm` (^H), `\T` (^T), `\inner{x}{y}`, `\norm{x}`, `\0`, `\1` (0_F,1_F), `\bmat{...}`, `\sidenote{...}`, `\unclear{...}`, `keybox` env.
- Environments: `definition`, `theorem`, `lemma`, `corollary`, `proposition`, `example`, `remark`, `note`, `claim`, `fact`, `proof`. "Example:" in the notes → `\begin{example} ... \end{example}`; "Definition:" → `definition`; "Theorem" → `theorem`; "Proof" → `proof`.
- Major new topics (big underlined headings, e.g. "Vector Spaces", "Linear Operators", "Eigenvalues", "Jordan Form", "Functions of Matrices") → `\section{...}`; smaller headings ("Case II:", "Addition", "General Case", "Method I") → `\subsection*{}` / `\paragraph{}` as appropriate. Do NOT add `\section` at the very start of your part unless the first page clearly starts a new topic (adjacent parts are concatenated).
- Use `align*` for multi-line derivations, `\left/\right` or `bmatrix`. Equations that sit side by side with comments: put comments via `&& \text{...}` or `\sidenote{}`. Two-column side-by-side layouts on a page may be linearized (left then right) or put in `minipage`s if it helps readability.
- The notes write the imaginary unit as "J"/"j" → use `j`.
- No `\documentclass`, no `\begin{document}` — your file is `\input` into main.tex.

## Verify
Compile with `/home/zado/School-old/501/latex/test_part.sh K` (K = your part number). Fix all errors. Then convert a couple of output pages (`pdftoppm -r 60 -png build/testK.pdf ...`) and look at them to check the layout and TikZ figures look right. Finally do a second pass: re-read each source page next to your LaTeX and fix omissions/misreadings.
