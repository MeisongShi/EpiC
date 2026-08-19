#!/usr/bin/env bash
set -euo pipefail

epic-expression-predict \
  --cellline-name CELL_LINE \
  --gene-name GENE_NAME \
  --model-name MODEL_NAME \
  --output results/expression.json

