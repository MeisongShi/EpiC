"""Minimal Python API example. Requires approved EpiC API access."""

from epic_client import EpiCClient, ExpressionRequest


def main() -> None:
    client = EpiCClient.from_env()
    result = client.predict_expression(
        ExpressionRequest(
            cellline_name="CELL_LINE",
            gene_name="GENE_NAME",
            model_name="MODEL_NAME",
        )
    )
    print(result)


if __name__ == "__main__":
    main()

