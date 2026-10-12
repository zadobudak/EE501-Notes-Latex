#!/bin/bash
# Compile a single section on its own (fast check while editing).
# Usage: ./test_section.sh 05   -> latex/build/test05.pdf   (A = Corrections Log appendix)
# Every section starts on a new page, so the pages match the full document.
N=$1; cd "$(dirname "$0")/latex"; mkdir -p build
F=$(ls sections/${N}-*.tex 2>/dev/null | head -1); [ -z "$F" ] && { echo "No section '$N' in latex/sections/"; exit 1; }
printf '\\documentclass[11pt]{article}\n\\input{preamble}\n\\begin{document}\n\\input{%s}\n\\end{document}\n' "${F%.tex}" > build/test$N.tex
pdflatex -interaction=nonstopmode -halt-on-error -output-directory=build build/test$N.tex > build/test$N.stdout 2>&1
st=$?; grep -E '^!|^l\.[0-9]+' build/test$N.stdout | head -20
echo "Overfull boxes: $(grep -c Overfull build/test$N.log)"
[ $st -eq 0 ] && echo "OK: latex/build/test$N.pdf" || echo "FAILED (see latex/build/test$N.stdout)"
