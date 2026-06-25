#!/usr/bin/env bash
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: $(basename "$0") <path-to-example.json> [path-to-ignorewarnings.txt] [--operationoutcome|-oo] [additional validator args]"
  echo
  echo "Example: $(basename "$0") ../output/Bundle-AllOfExampleCentral.json ../input/ignoreWarnings.txt -tx n/a"
  echo "Example: $(basename "$0") ../output/Bundle-AllOfExampleCentral.json ../input/ignoreWarnings.txt --operationoutcome"
  exit 2
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
EXAMPLE_PATH="$1"
ADVISOR_ARGS=()

if [ $# -ge 2 ] && [[ "$2" != -* ]]; then
  ADVISOR_FILE="$2"
  if [ ! -f "$ADVISOR_FILE" ]; then
    echo "ERROR: Advisor file not found: $ADVISOR_FILE"
    exit 1
  fi
  ADVISOR_ARGS=(-advisor-file "$ADVISOR_FILE")
  shift 2
else
  shift
fi

if [ ! -f "$EXAMPLE_PATH" ]; then
  echo "ERROR: Example file not found: $EXAMPLE_PATH"
  exit 1
fi

if ! command -v java >/dev/null 2>&1; then
  echo "ERROR: Java is required but was not found on PATH."
  exit 1
fi

VALIDATOR_JAR="$ROOT_DIR/input-cache/validator_cli.jar"
if [ ! -f "$VALIDATOR_JAR" ]; then
  VALIDATOR_JAR="$ROOT_DIR/validator_cli.jar"
fi
if [ ! -f "$VALIDATOR_JAR" ]; then
  VALIDATOR_JAR="$ROOT_DIR/../validator_cli.jar"
fi

if [ ! -f "$VALIDATOR_JAR" ]; then
  VALIDATOR_JAR="$ROOT_DIR/input-cache/validator_cli.jar"
  mkdir -p "$ROOT_DIR/input-cache"
  echo "validator_cli.jar not found. Downloading to $VALIDATOR_JAR ..."
  if command -v curl >/dev/null 2>&1; then
    curl -L "https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar" -o "$VALIDATOR_JAR"
  elif command -v wget >/dev/null 2>&1; then
    wget -O "$VALIDATOR_JAR" "https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar"
  else
    echo "ERROR: curl or wget is required to download validator_cli.jar"
    exit 1
  fi
fi

IG_PACKAGE="us.co.bha-ig#current"
IG_SOURCE="$IG_PACKAGE"

if [ ! -f "$HOME/.fhir/packages/us.co.bha-ig#current/package/package.json" ]; then
  IG_SOURCE="$ROOT_DIR/output/package.tgz"
  if [ ! -f "$IG_SOURCE" ]; then
    IG_SOURCE="$ROOT_DIR/fsh-generated/resources"
  fi
fi

echo "Using validator: $VALIDATOR_JAR"
echo "Validating: $EXAMPLE_PATH"
echo "Using IG source: $IG_SOURCE"
if [ ${#ADVISOR_ARGS[@]} -gt 0 ]; then
  echo "Using advisor file: $ADVISOR_FILE"
fi

HAS_TX=false
HAS_OUTPUT=false
OO_REQUEST=false
FORWARD_ARGS=()
for ARG in "$@"; do
  case "$ARG" in
    --operationoutcome|-oo)
      OO_REQUEST=true
      continue
      ;;
    -tx|-tx=*)
      HAS_TX=true
      ;;
    -output|-output=*)
      HAS_OUTPUT=true
      ;;
  esac
  FORWARD_ARGS+=("$ARG")
done

TX_ARGS=(-tx http://tx.fhir.org)
if [ "$HAS_TX" = true ]; then
  TX_ARGS=()
fi

OO_ARGS=()
if [ "$OO_REQUEST" = true ] && [ "$HAS_OUTPUT" = false ]; then
  OO_OUTPUT="validation-operationoutcome.json"
  OO_ARGS=(-output "$OO_OUTPUT")
  echo "Writing OperationOutcome output: $(pwd)/$OO_OUTPUT"
fi

java -jar "$VALIDATOR_JAR" "$EXAMPLE_PATH" -version 4.0.1 -ig "$IG_SOURCE" "${ADVISOR_ARGS[@]}" "${TX_ARGS[@]}" "${OO_ARGS[@]}" "${FORWARD_ARGS[@]}"
