#!/usr/bin/env bash
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: $(basename "$0") <path-to-example.json> [additional validator args]"
  echo
  echo "Example: $(basename "$0") ../input/fsh/examples/Patient-example.json -tx n/a"
  exit 2
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
EXAMPLE_PATH="$1"
shift

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

ADVISOR_FILE="$ROOT_DIR/input/ignoreWarnings.txt"
ADVISOR_ARGS=()
if [ -f "$ADVISOR_FILE" ]; then
  HAS_ADVISOR_ARG=false
  for ARG in "$@"; do
    case "$ARG" in
      -advisor-file|-advisor-file=*|--advisor-file|--advisor-file=*)
        HAS_ADVISOR_ARG=true
        break
        ;;
    esac
  done
  if [ "$HAS_ADVISOR_ARG" = false ]; then
    ADVISOR_ARGS=(-advisor-file "$ADVISOR_FILE")
    echo "Using advisor file: $ADVISOR_FILE"
  fi
fi

java -jar "$VALIDATOR_JAR" "$EXAMPLE_PATH" -version 4.0.1 -ig "$IG_SOURCE" "${ADVISOR_ARGS[@]}" "$@"
