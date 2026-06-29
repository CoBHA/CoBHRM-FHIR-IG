#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
PACKAGE_TGZ="$ROOT_DIR/output/package.tgz"

if [ ! -f "$PACKAGE_TGZ" ]; then
  echo "ERROR: Required IG package not found: $PACKAGE_TGZ"
  echo "Run ./_build.sh (or _build.bat on Windows) first."
  exit 1
fi

HAPI_IG_VERSION="$(tar -xOf "$PACKAGE_TGZ" package/package.json | sed -n 's/.*"version"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -n 1)"
if [ -z "$HAPI_IG_VERSION" ]; then
  echo "ERROR: Could not determine IG package version from $PACKAGE_TGZ"
  exit 1
fi
export HAPI_IG_VERSION
echo "Using IG package version: $HAPI_IG_VERSION"

echo "Starting HAPI Docker container using: $SCRIPT_DIR/docker-compose.yml"
docker compose -f "$SCRIPT_DIR/docker-compose.yml" up -d

echo "Waiting for server to respond at http://localhost:8080/fhir/metadata ..."
for i in {1..180}; do
  if curl -fsS "http://localhost:8080/fhir/metadata" >/dev/null 2>&1; then
    echo "HAPI is up."
    exit 0
  fi
  sleep 2
done

echo "WARNING: HAPI did not become ready within timeout."
echo "Check logs: docker compose -f $SCRIPT_DIR/docker-compose.yml logs -f hapi"
exit 1
