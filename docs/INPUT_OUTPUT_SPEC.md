# Input and output specification

This document separates the stable calling interface from scientific details that
must be confirmed before publication. Placeholder values must not be interpreted as
model constraints.

## Publicly stable fields

### Expression prediction

- `cellline_name`: public cell-line identifier.
- `gene_name`: public gene symbol or approved identifier.
- `model_name`: name of an API-accessible EpiC release.

### Perturbation

- `gene_id`, `gene_name`, `cellline`, and `model_name` identify the request target.
- The current CLI exposes H3K4me1, H3K4me2, H3K4me3, H3K27ac, H3K9ac,
  H3K27me3, and WGBS controls.

## Release-blocking scientific definitions

The EpiC team must replace this section with approved definitions before representing
the interface as scientifically complete:

- [ ] Supported genome build and gene-identifier namespace.
- [ ] Supported sequence/context length and padding behavior.
- [ ] Authoritative list and spelling of all 11 histone-modification modalities.
- [ ] Authoritative tissue/cell-type vocabulary and aliases.
- [ ] Exact schema and permitted provenance of the uploaded input file.
- [ ] Units, baseline, and valid ranges for every perturbation factor.
- [ ] Output JSON fields, shapes, units, normalization, and uncertainty.
- [ ] Supported perturbation operations and how multiple operations compose.
- [ ] Model-version compatibility and retirement policy.

Until these items are approved, users should obtain request-specific guidance through
the access channel described in `MODEL_ACCESS.md`.

