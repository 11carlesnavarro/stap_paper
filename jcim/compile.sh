#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")"
source /fast_shared/users/carles/miniforge3/etc/profile.d/conda.sh
conda activate tex
mkdir -p .build
tectonic --keep-intermediates --outdir .build supporting_information.tex
tectonic --keep-intermediates --outdir .build main.tex
tectonic --keep-intermediates --outdir .build supporting_information.tex
tectonic --keep-intermediates --outdir .build main.tex
cp .build/main.pdf main.pdf
cp .build/supporting_information.pdf supporting_information.pdf
echo "Done. PDFs: main.pdf, supporting_information.pdf"
