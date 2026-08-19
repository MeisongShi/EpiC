# Publication scope

## Included in this public repository

- Client-side request objects and validation.
- Command-line wrappers for the two currently exposed tasks.
- HTTPS transport for a separately deployed service.
- Documentation, examples, synthetic tests, and release checks.

## Excluded from this public repository

- Neural-network architecture and forward-pass implementation.
- Model initialization, checkpoint loading, and weight conversion.
- Training, fine-tuning, evaluation, and downstream-task pipelines.
- Private data, databases, genomic tracks, and processed tensors.
- Private service deployment and authentication implementation.
- Model weights, optimizer states, and checkpoints in any format.

The exclusion is technical as well as documentary: this repository cannot perform
real inference without access to an independently operated EpiC service.

## Future releases

Model code, model weights, datasets, or a local runtime—if released—must be published
as separate, independently reviewed artifacts with their own versioning, access terms,
licenses, model cards, data statements, and cryptographic checksums.

