# CLAUDE.md

## Project Overview

LaTeX-based academic paper repository for "Speak To A Protein", a research paper on a multimodal agentic co-scientist for protein analysis. Formatted for JCIM (Journal of Chemical Information and Modeling).

## Writing style
Concise, precise academic English. 
No em-dashes, no filler phrases. 
Write in prose, use good writing, and only format when it adds value. 
Citations are placed where they naturally support a claim. 
Methods sections describe without overclaiming novelty. 
Exact numerical hyperparameters go to the Supporting Information; the main text focuses on what and why, not exhaustive configuration details.

## Build Commands

You need to activate the "tex" conda environment with Tectonic installed to compile the paper.
Compile the paper (from repository root):
```bash
bash jcim/compile.sh
```

Or manually:
```bash
cd jcim
tectonic main.tex
tectonic supporting_information.tex
```

**Outputs:** `jcim/main.pdf` and `jcim/supporting_information.pdf`

**Requirements:** Tectonic TeX engine in a conda environment named "tex"

## Repository Structure

- `jcim/` - Main paper content
  - `main.tex` - Primary paper source
  - `supporting_information.tex` - Supplementary material
  - `references.bib` - Bibliography
  - `imgs/` - Figure assets 

## References
Speak To A Protein is a version of PlayMoleculeAI without playmolecule tools. We don't put any reference to playmolecule in the paper because it needs to be anonymous. The playmoleculeAI agent repo is in: /fast_shared/users/carles/repos/carles/playmoleculeAI