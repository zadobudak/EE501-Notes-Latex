#!/bin/bash
# Build the EE501 notes and place the PDF in the repository root.
# Usage: ./build.sh          (incremental build)
#        ./build.sh clean    (remove LaTeX build artifacts)
set -e
cd "$(dirname "$0")/latex"
OUT=../EE501_Lecture_Notes_Latex_Transcribed.pdf
if [ "$1" = "clean" ]; then
  latexmk -C main.tex >/dev/null 2>&1; rm -rf build; echo "Cleaned."; exit 0
fi
latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex >/dev/null 2>&1 || {
  echo "Build failed — see latex/main.log"; grep -E '^!' -A3 main.log | head -20; exit 1; }
cp main.pdf "$OUT"
echo "Built $(basename "$OUT") ($(pdfinfo main.pdf | awk '/^Pages/{print $2}') pages)."
grep -q 'Overfull' main.log && echo "Warning: overfull boxes in latex/main.log" || true
