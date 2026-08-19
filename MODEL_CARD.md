# EpiC model card

## Model summary

EpiC is a multimodal model for studying gene regulation across human tissues and cell
types. It combines genomic sequence, DNA methylation, and histone-modification
information and supports gene-expression prediction and programmable computational
epigenetic perturbation.

## Intended use

- Research on gene regulation and epigenetic state.
- Hypothesis generation for experimental follow-up.
- Evaluation through the documented EpiC interface.

## Out-of-scope use

- Clinical diagnosis, prognosis, or treatment selection.
- Use as the sole evidence for medical or safety-critical decisions.
- Claims about unsupported organisms, genome builds, cell types, or assays.
- Attempts to recover restricted model assets or private training data.

## Inputs and outputs

The currently exposed tasks are described in `docs/INPUT_OUTPUT_SPEC.md`. Scientific
definitions that remain under release review are not inferred or invented by this
client repository.

## Limitations

Computational predictions may be inaccurate, sensitive to input provenance, and less
reliable outside evaluated biological contexts. Performance can vary across genes,
cell types, tissues, regions, and perturbations. Users should independently validate
results and account for dataset bias and uncertainty.

## Access and transparency

This model card describes the public interface. The architecture, weights, training
pipeline, private data, and service implementation are not part of this release. See
`MODEL_ACCESS.md` and `docs/PUBLICATION_SCOPE.md`.

## Citation

See `CITATION.cff`. Replace the submission placeholder with the final DOI and author
list once the manuscript is published.

