#!/usr/bin/env bash
# Convert the 1:1 SVGs to PDF and tile them to A4 using inkscape + pdfposter (if installed).
set -euo pipefail
SVG_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SVG_DIR"
if command -v inkscape >/dev/null 2>&1 && command -v pdfposter >/dev/null 2>&1; then
  inkscape MAINSAIL_refined_1to1_mm.svg --export-type=pdf --export-filename=MAINSAIL_1to1.pdf
  pdfposter -mA4 -pA4 MAINSAIL_1to1.pdf MAINSAIL_A4_tiled.pdf
  inkscape JIB_refined_1to1_mm.svg --export-type=pdf --export-filename=JIB_1to1.pdf
  pdfposter -mA4 -pA4 JIB_1to1.pdf JIB_A4_tiled.pdf
  echo "Generated MAINSAIL_A4_tiled.pdf and JIB_A4_tiled.pdf"
else
  echo "Inkscape and/or pdfposter not found. Install them to auto-generate PDFs, or export manually."
fi
