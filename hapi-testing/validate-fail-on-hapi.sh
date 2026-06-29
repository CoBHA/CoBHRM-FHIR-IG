#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

VERBOSE=0
POSITIONAL=()
while [ "$#" -gt 0 ]; do
  case "$1" in
    -v|--verbose)
      VERBOSE=1
      shift
      ;;
    *)
      POSITIONAL+=("$1")
      shift
      ;;
  esac
done

BASE_URL="${POSITIONAL[0]:-http://localhost:8080/fhir}"
FAIL_DIR="${POSITIONAL[1]:-$ROOT_DIR/testing/fail/fsh-generated/resources}"

if [ ! -d "$FAIL_DIR" ]; then
  echo "ERROR: Fail resources directory not found: $FAIL_DIR"
  echo "Run SUSHI in testing/fail first (e.g. cd testing/fail && sushi .)"
  exit 1
fi

if ! command -v curl >/dev/null 2>&1; then
  echo "ERROR: curl is required but was not found on PATH."
  exit 1
fi

FAILURES=0
FOUND=0

while IFS= read -r -d '' FILE; do
  FOUND=1
  NAME="$(basename "$FILE")"

  if [ "$VERBOSE" -eq 1 ]; then
    echo
    echo "----"
    echo "Validating on HAPI: $NAME"
  fi

  RESOURCE_TYPE="$(sed -n 's/.*"resourceType"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' "$FILE" | head -n 1)"
  if [ -z "$RESOURCE_TYPE" ]; then
    echo "[FAIL] Could not determine resourceType: $FILE"
    FAILURES=$((FAILURES + 1))
    continue
  fi

  URL="$BASE_URL/$RESOURCE_TYPE/\$validate"
  RESP_FILE="${TMPDIR:-/tmp}/hapi-fail-validate-response.json"

  if [ "$VERBOSE" -eq 1 ]; then
    echo "POST $URL"
  fi

  STATUS="$(curl -sS -o "$RESP_FILE" -w "%{http_code}" -X POST "$URL" \
    -H "Content-Type: application/fhir+json" \
    -H "Accept: application/fhir+json" \
    --data-binary "@$FILE")"

  if [ "$VERBOSE" -eq 1 ]; then
    echo "OperationOutcome response:"
    cat "$RESP_FILE"
  fi

  if grep -Eiq '"severity"[[:space:]]*:[[:space:]]*"(error|fatal)"' "$RESP_FILE"; then
    echo "[PASS] $NAME (HTTP $STATUS) - validation produced expected error/fatal."
  else
    echo "[FAIL] $NAME (HTTP $STATUS) - expected OperationOutcome with error/fatal, none found."
    FAILURES=$((FAILURES + 1))
  fi
done < <(find "$FAIL_DIR" -maxdepth 1 -type f -name '*Fail*.json' -print0 | sort -z)

if [ "$FOUND" -eq 0 ]; then
  echo "ERROR: No fail JSON files found matching: $FAIL_DIR/*Fail*.json"
  exit 1
fi

if [ "$FAILURES" -gt 0 ]; then
  echo
  echo "Completed with $FAILURES unexpected result(s)."
  exit 1
fi

echo
echo "All fail examples produced error/fatal validation issues as expected."
