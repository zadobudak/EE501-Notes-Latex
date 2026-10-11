#!/bin/bash
# Usage: ./test_part.sh N   -> compiles parts/partN.tex standalone into build/testN.pdf
N=$1; cd "$(dirname "$0")"; mkdir -p build
printf '\\documentclass[11pt]{article}\n\\input{preamble}\n\\begin{document}\n\\input{parts/part%s}\n\\end{document}\n' "$N" > build/test$N.tex
pdflatex -interaction=nonstopmode -halt-on-error -output-directory=build build/test$N.tex > build/test$N.stdout 2>&1
st=$?; grep -E '^!|^l\.[0-9]+|Undefined control' build/test$N.stdout | head -30
[ $st -eq 0 ] && echo "OK: build/test$N.pdf" || echo "FAILED (see build/test$N.stdout)"
