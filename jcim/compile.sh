#!/bin/bash
cd "$(dirname "$0")"
source /fast_shared/users/carles/miniforge3/etc/profile.d/conda.sh
conda activate tex
tectonic main.tex
tectonic supporting_information.tex
echo "Done. PDFs: main.pdf, supporting_information.pdf"
