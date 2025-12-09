# Tiling & CNC Export Instructions

This file shows how to:
- produce tiled printable PDFs (A4 or Letter) from the 1:1 SVGs,
- convert SVG to DXF correctly (units, scale),
- prepare the DXF for CNC cutting.

General notes
- The included SVGs are exported at true scale in millimetres (1 unit = 1 mm).
- The DXF files are ASCII R12; units are mm. Verify units in your CAD/CAM chain (some software assumes inches).

A. Produce tiled printable PDF pages (recommended tools)
1) Using pdfposter (Linux / macOS with homebrew):
   - Install: sudo apt-get install pdfposter   (or brew install pdfposter)
   - Convert SVG to PDF (Inkscape step) then poster:
     a) Convert SVG -> PDF (Inkscape CLI):
        inkscape MAINSAIL_refined_1to1_mm.svg --export-type=pdf --export-filename=MAINSAIL_1to1.pdf
     b) Tile PDF into A4 (portrait) sheets with pdfposter:
        pdfposter -mA4 -pA4 MAINSAIL_1to1.pdf MAINSAIL_A4_tiled.pdf
