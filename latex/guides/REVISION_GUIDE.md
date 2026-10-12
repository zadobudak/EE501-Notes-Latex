# Revision guide (pass 2: readability & formatting)

Goal: turn the transcription into a **clean, well-structured set of lecture notes** — NOT a replica of where things sat on the handwritten page. Content must stay complete and mathematically identical to the notes (don't drop anything, don't silently change math; existing `% note:` comments and `\unclear{}` stay).

Source page images: `/tmp/claude-1000/-home-zado-School-old-501/a7cb2ba9-d8eb-41fc-ad02-12b861a9b05d/scratchpad/pages/p-NN.png` (110 dpi). High-res crops: `pdftoppm -r 250 -f N -l N -x X -y Y -W W -H H -png "/home/zado/School-old/501/EE501 Lecture Notes of Umut Orguner (Fall 2024) by Elif Topaloglu.pdf" <your scratch dir>/c`.

New preamble tools (already in `latex/preamble.tex`, do not edit the preamble):
- `\sep` — thin full-width gray rule. Use it to separate logically distinct blocks inside a section (e.g. between two unrelated remarks/derivations, before a new topic chunk that isn't a subsection, between Case I / Case II blocks). Not directly before/after `\section`/`\subsection` (those already draw rules) and not between consecutive environments that are already framed unless it helps.
- `\explain{text}` — small italic "▷ text" line. Use it for side notes/annotations: place it directly **below** (or above) the equation/step it explains, instead of squeezing comments to the right of equations, in arrays, minipages, or via `\sidenote` when that causes misalignment. Short comments that fit naturally (e.g. `\quad\text{(commutativity)}`) can stay inline if they align cleanly.
- definition/theorem/lemma/... are framed with colored left bars; examples get a green left rule. `\origpage{N}` uses marginnote (fine inside boxes).

## What to fix
1. **Alignment.** Derivations: `align*` with `&` at the relation sign (`&=`, `&\Rightarrow`), consistent left edge. No ragged `gather`-like centering of lines that belong together. Lists of properties → `enumerate`/`itemize` with labels (A1), (A2)… or aligned `align*`. Remove hacks: `\hspace`, `\phantom`, manual `\\[-xpt]`, `\quad\quad\quad` chains, two-column `minipage` layouts that imitate page placement — linearize them into a logical top-to-bottom flow unless a side-by-side layout genuinely helps (e.g. a figure next to its short explanation, or two parallel cases).
2. **Side notes / arrows / braces annotations.** Convert into `\explain{}` lines under the math, `\underbrace{}_{\text{...}}` only when short (1–3 words), or a short sentence. Arrows like "→ not satisfied" become text like "⇒ not satisfied". Keep every annotation's content.
3. **Structure & readability.** Add `\sep` between parts; use `\paragraph{}`/`\subsection*{}` for headings consistently; turn bare "Case I:" lines into `\paragraph{Case I: ...}`; full sentences where the notes use fragments only if meaning is unambiguous (light touch — keep the author's wording). Make sure each example/proof has clear start and end. Keep boxed results (`\boxed`, `keybox`).
4. **Drawings / plots must be accurate.** For EVERY tikz/pgfplots figure: open the source page (high-res crop), compare, and redraw so it matches what is drawn: correct curves (use `pgfplots` `\addplot` with the real function when a function is plotted, e.g. e^{-n|t|}, t, t^2, sin, interpolating polynomials), correct axis labels, tick values, intersection points, vector directions & labels, subspace lines with correct slopes (e.g. sp{[1,1]} is the line y=x; N(A)=sp{[-2,1]} has slope -1/2), shaded regions, nested sets. Fix mislabeled or missing elements. Keep figures modest in size (≈ 5–8 cm wide), centered, with labels not overlapping.
5. **No overfull boxes**, no huge white gaps; long matrices/lines broken sensibly.

## Process
1. Read your part file fully and its compiled output: compile with `./test_part.sh K`, render pages with `pdftoppm -r 90 -png build/testK.pdf <scratch>/o` and look at EVERY page.
2. Go page by page (source image next to LaTeX), restructure as above, redraw figures.
3. Recompile, re-render, and look at every output page again; iterate until it reads like clean typeset notes. Check `grep -c Overfull build/testK.log` is 0.
4. Only edit your own part file. Report briefly: what you changed, figures redrawn/fixed, anything uncertain.
