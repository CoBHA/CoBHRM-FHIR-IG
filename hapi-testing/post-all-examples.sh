#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
BASE_URL="http://localhost:8080/fhir"

if [ $# -ge 1 ] && [[ "$1" =~ ^https?:// ]]; then
  BASE_URL="$1"
fi

EXAMPLES=(
  "$ROOT_DIR/output/Bundle-AllOfExampleCentral.json"
  "$ROOT_DIR/output/Bundle-AllOfExampleEmma.json"
  "$ROOT_DIR/output/Bundle-AllOfExampleNorth.json"
  "$ROOT_DIR/output/Bundle-AllOfExampleSouth.json"
)

for EXAMPLE in "${EXAMPLES[@]}"; do
  "$SCRIPT_DIR/post-example.sh" "$EXAMPLE" "$BASE_URL"
done

echo "All example submissions completed."
