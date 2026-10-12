#!/bin/bash
# Usage: ./test_section.sh 05   -> compiles sections/05-*.tex standalone into build/test05.pdf
N=$1; cd "$(dirname "$0")"; mkdir -p build
F=$(ls sections/${N}-*.tex | head -1); [ -z "$F" ] && { echo "no section $N"; exit 1; }
printf '\\documentclass[11pt]{article}\n\\input{preamble}\n\\begin{document}\n\\input{%s}\n\\end{document}\n' "${F%.tex}" > build/test$N.tex
pdflatex -interaction=nonstopmode -halt-on-error -output-directory=build build/test$N.tex > build/test$N.stdout 2>&1
st=$?; grep -E '^!|^l\.[0-9]+' build/test$N.stdout | head -20
echo "Overfull boxes: $(grep -c Overfull build/test$N.log)"
[ $st -eq 0 ] && echo "OK: build/test$N.pdf" || echo "FAILED (see build/test$N.stdout)"
