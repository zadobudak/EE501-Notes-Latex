# EE501 — Linear System Theory I: Lecture Notes (LaTeX)

A typeset version of the handwritten EE501 lecture notes by Elif Topaloğlu (Umut Orguner's lectures, Fall 2024),
reorganized along the METU EE501 syllabus for Fall 2026–2027.

**[Download the PDF](EE501_Lecture_Notes_Latex_Transcribed.pdf)**

> **Note:** these notes were transcribed directly by AI from scans of the handwritten notes — the AI read the
> handwriting and wrote the LaTeX itself, and also produced the corrections, added explanations and layout. They
> have not been checked by the lecturer or the original author and may contain mistakes; they are not an official
> version of the course material. If you find a mistake, please
> [open an issue](https://github.com/zadobudak/EE501-Notes-Latex/issues).

## Contents

The 11 sections follow the syllabus weeks: fields and vector spaces, normed spaces, inner product spaces,
linear transformations, direct sums and projections, systems `Ax = b`, spectral analysis, characteristic and
minimal polynomials, Jordan canonical form, Hermitian and positive definite matrices, and functions of a matrix.
Appendix A (Corrections Log) lists every place where the handwritten notes were corrected.

In the PDF, the gray *p. N* in the margin gives the page of the original handwritten notes; yellow
"Explanation" boxes and *▷ italic lines* are additions that are not in the original.

## Repository layout

```
EE501_Lecture_Notes_Latex_Transcribed.pdf   compiled notes
build.sh                                    builds the PDF
test_section.sh                             compiles a single section (quick check)
latex/
  main.tex                                  document entry point (preamble + body)
  preamble.tex                              packages, layout, colors, macros
  body.tex                                  title page, course outline, list of sections
  sections/01-…11-*.tex                     one file per section
  sections/A-corrections-log.tex            appendix: corrections to the original
  guides/                                   style guides used while preparing the notes
```

## Building

Requires a TeX Live installation with `latexmk` (packages: tcolorbox, tikz/pgfplots, titlesec, needspace,
marginnote, mathtools, …).

```bash
./build.sh            # builds latex/main.tex and copies the PDF to the repository root
./build.sh clean      # removes LaTeX build artifacts
./test_section.sh 05  # compiles only section 05 -> latex/build/test05.pdf
```

Every section starts on a new page, so a section compiled with `test_section.sh` has the same page layout as in
the full document.
