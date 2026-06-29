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

FAIL_DIR="${POSITIONAL[0]:-$ROOT_DIR/testing/fail/fsh-generated/resources}"
ADVISOR_FILE="${POSITIONAL[1]:-}"

if [ ! -d "$FAIL_DIR" ]; then
  echo "ERROR: Fail resources directory not found: $FAIL_DIR"
  echo "Run SUSHI in testing/fail first (e.g. cd testing/fail && sushi .)"
  exit 1
fi

mapfile -t FAIL_FILES < <(find "$FAIL_DIR" -maxdepth 1 -type f -name '*Fail*.json' | sort)
if [ "${#FAIL_FILES[@]}" -eq 0 ]; then
  echo "ERROR: No fail JSON files found matching: $FAIL_DIR/*Fail*.json"
  exit 1
fi

FAILURES=0
OUT_FILE="${TMPDIR:-/tmp}/validation-operationoutcome.json"

for FILE in "${FAIL_FILES[@]}"; do
  NAME="$(basename "$FILE")"

  if [ "$VERBOSE" -eq 1 ]; then
    echo
    echo "----"
    echo "Validating with CLI: $NAME"
  fi

  if [ -n "$ADVISOR_FILE" ]; then
    if [ "$VERBOSE" -eq 1 ]; then
      "$SCRIPT_DIR/validate-example.sh" "$FILE" "$ADVISOR_FILE" -tx n/a -output "$OUT_FILE" || true
    else
      "$SCRIPT_DIR/validate-example.sh" "$FILE" "$ADVISOR_FILE" -tx n/a -output "$OUT_FILE" >/dev/null 2>&1 || true
    fi
  else
    if [ "$VERBOSE" -eq 1 ]; then
      "$SCRIPT_DIR/validate-example.sh" "$FILE" -tx n/a -output "$OUT_FILE" || true
    else
      "$SCRIPT_DIR/validate-example.sh" "$FILE" -tx n/a -output "$OUT_FILE" >/dev/null 2>&1 || true
    fi
  fi

  if [ ! -f "$OUT_FILE" ]; then
    echo "[FAIL] $NAME - validator did not produce OperationOutcome output."
    FAILURES=$((FAILURES + 1))
    continue
  fi

  if grep -Eiq '"severity"[[:space:]]*:[[:space:]]*"(error|fatal)"' "$OUT_FILE"; then
    echo "[PASS] $NAME - validator produced expected error/fatal."
  else
    echo "[FAIL] $NAME - expected error/fatal in validator output, none found."
    FAILURES=$((FAILURES + 1))
  fi
done

if [ "$FAILURES" -gt 0 ]; then
  echo
  echo "Completed with $FAILURES unexpected result(s)."
  exit 1
fi

echo
echo "All fail examples produced validator error/fatal issues as expected."
