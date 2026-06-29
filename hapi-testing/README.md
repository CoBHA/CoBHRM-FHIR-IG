# HAPI Local Docker Test Harness

This folder mirrors the workflow style of `testing/` but runs a local HAPI FHIR server in Docker and submits CoBHRM examples via HTTP `POST`.

## What this does

1. Runs latest `hapiproject/hapi` in Docker.
2. Mounts this repository's `output/` folder into the container.
3. Auto-loads the current IG package from `output/package.tgz` at startup.
4. Applies local config as an overlay while preserving HAPI image defaults.
5. Auto-detects IG package version from `output/package.tgz` before startup.
6. Provides scripts to POST the same bundle examples used in day-to-day testing:
   - `Bundle-AllOfExampleCentral.json`
   - `Bundle-AllOfExampleEmma.json`
   - `Bundle-AllOfExampleNorth.json`
   - `Bundle-AllOfExampleSouth.json`

## Prerequisites

- Docker Desktop (or Docker Engine + Compose plugin)
- `curl`
- Built IG package at `output/package.tgz` (run `_build.bat` / `_build.sh` first)

## Start / stop HAPI

Windows:

```powershell
cmd /c hapi-testing\start-hapi.bat
cmd /c hapi-testing\stop-hapi.bat
```

Bash:

```bash
./hapi-testing/start-hapi.sh
./hapi-testing/stop-hapi.sh
```

By default, server base URL is `http://localhost:8080/fhir`.

## Submit one example bundle

Windows:

```powershell
cmd /c hapi-testing\post-example.bat output\Bundle-AllOfExampleCentral.json
```

Bash:

```bash
./hapi-testing/post-example.sh output/Bundle-AllOfExampleCentral.json
```

Syntax:

```text
post-example.<bat|sh> <path-to-example.json> [base-url]
```

Defaults:

- Base URL: `http://localhost:8080/fhir`
- Endpoint: POST to `<base-url>` (FHIR transaction/Bundle endpoint)

## Submit all four bundle examples

Windows:

```powershell
cmd /c hapi-testing\post-all-examples.bat
```

Bash:

```bash
./hapi-testing/post-all-examples.sh
```

Optional first argument overrides base URL, for example:

```powershell
cmd /c hapi-testing\post-all-examples.bat http://localhost:8080/fhir
```

## Validate negative fail fixtures against local HAPI

These scripts submit generated fail fixtures from `testing/fail/fsh-generated/resources` to local HAPI using FHIR `$validate` and assert each response includes at least one `OperationOutcome.issue.severity` of `error` or `fatal`.

Windows:

```powershell
cmd /c hapi-testing\validate-fail-on-hapi.bat
```

Bash:

```bash
./hapi-testing/validate-fail-on-hapi.sh
```

Optional arguments:

```text
validate-fail-on-hapi.<bat|sh> [--verbose|-v] [base-url] [fail-resources-dir]
```

Example with explicit base URL:

```powershell
cmd /c hapi-testing\validate-fail-on-hapi.bat http://localhost:8080/fhir
```

Verbose example:

```powershell
cmd /c hapi-testing\validate-fail-on-hapi.bat --verbose http://localhost:8080/fhir
```

## Notes

- If `output/package.tgz` is missing, startup scripts stop with an error.
- If container startup is healthy but package installation fails, inspect logs:

```bash
docker compose -f hapi-testing/docker-compose.yml logs -f hapi
```
