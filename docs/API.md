# EpiC public API reference

The public package exposes typed request objects and an HTTP client. It does not
contain an inference implementation.

## Create a client

```python
from epic_client import EpiCClient

client = EpiCClient.from_env()
```

`from_env()` reads `EPIC_API_URL` and `EPIC_API_KEY`. An optional JSON config may
set `api_url`, `timeout_seconds`, and `verify_tls`; keys are rejected in config files.

## Expression prediction

```python
from epic_client import ExpressionRequest

result = client.predict_expression(
    ExpressionRequest(
        cellline_name="CELL_LINE",
        gene_name="GENE_NAME",
        model_name="MODEL_NAME",
    )
)
```

Transport contract:

```text
POST /v1/expression/predict
Content-Type: application/json
Authorization: Bearer <API key>
```

## Epigenetic perturbation

```python
from pathlib import Path
from epic_client import PerturbationFactors, PerturbationRequest

request = PerturbationRequest(
    gene_id="GENE_ID",
    gene_name="GENE_NAME",
    cellline="CELL_LINE",
    model_name="MODEL_NAME",
    cre_length=1000,
    notrain_data_path=Path("approved_input.bin"),
    factors=PerturbationFactors(
        H3K4me1=1.0,
        H3K4me2=1.0,
        H3K4me3=1.0,
        H3K27ac=1.0,
        H3K9ac=1.0,
        H3K27me3=1.0,
        WGBS=1.0,
    ),
    mean_value=0.0,
    limit_up_factor=1.0,
    limit_down_factor=1.0,
)
result = client.simulate_perturbation(request)
```

Transport contract:

```text
POST /v1/perturbation/simulate
Content-Type: multipart/form-data
Authorization: Bearer <API key>

request: JSON metadata
input_file: binary file
```

## Responses and errors

Successful responses are returned as JSON objects. Their scientifically defined
fields will be documented in `INPUT_OUTPUT_SPEC.md` after public-release approval.
The client intentionally does not print unsuccessful response bodies because they
may contain service internals. An HTTP status and `X-Request-ID` are reported instead.

Expected client exceptions inherit from `EpiCClientError`:

- `ConfigurationError`
- `ValidationError`
- `APIError`

