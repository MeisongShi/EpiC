#!/usr/bin/env bash
set -euo pipefail

epic-perturbation \
  --gene-id GENE_ID \
  --gene-name GENE_NAME \
  --cellline CELL_LINE \
  --model-name MODEL_NAME \
  --H3K4me1-factor 1.0 \
  --H3K4me2-factor 1.0 \
  --H3K4me3-factor 1.0 \
  --H3K27ac-factor 1.0 \
  --H3K9ac-factor 1.0 \
  --H3K27me3-factor 1.0 \
  --WGBS-factor 1.0 \
  --dry-run

