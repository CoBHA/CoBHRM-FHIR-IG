#!/usr/bin/env bash
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: $(basename "$0") <path-to-example.json> [base-url]"
  echo
  echo "Example: $(basename "$0") ../output/Bundle-AllOfExampleCentral.json"
  echo "Example: $(basename "$0") ../output/Bundle-AllOfExampleCentral.json http://localhost:8080/fhir"
  exit 2
fi

EXAMPLE_PATH="$1"
BASE_URL="http://localhost:8080/fhir"
shift

if [ $# -ge 1 ] && [[ "$1" =~ ^https?:// ]]; then
  BASE_URL="$1"
  shift
fi

if [ ! -f "$EXAMPLE_PATH" ]; then
  echo "ERROR: Example file not found: $EXAMPLE_PATH"
  exit 1
fi

if ! command -v curl >/dev/null 2>&1; then
  echo "ERROR: curl is required but was not found on PATH."
  exit 1
fi

echo "Posting bundle: $EXAMPLE_PATH"
echo "Target: $BASE_URL"

HTTP_CODE=$(curl -sS -o /tmp/cobhrm-hapi-post-response.json -w "%{http_code}" \
  -X POST "$BASE_URL" \
  -H "Content-Type: application/fhir+json" \
  -H "Accept: application/fhir+json" \
  --data-binary "@$EXAMPLE_PATH")

echo "HTTP status: $HTTP_CODE"
cat /tmp/cobhrm-hapi-post-response.json

if [[ "$HTTP_CODE" =~ ^2 ]]; then
  exit 0
fi

exit 1
