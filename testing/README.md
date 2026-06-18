# Testing Scripts

This folder contains helper scripts for validating example FHIR JSON files against the CoBHRM IG using the HL7 FHIR validator CLI.

## Scripts

- `validate-example.bat` for Windows (`cmd`/PowerShell)
- `validate-example.sh` for Bash (Git Bash, Linux, macOS)

Both scripts perform the same workflow:

1. Resolve repository root from the script location.
2. Verify the input file exists.
3. Verify `java` is available.
4. Locate `validator_cli.jar` in common locations:
   - `input-cache/validator_cli.jar`
   - `validator_cli.jar`
   - `../validator_cli.jar`
5. Download the validator to `input-cache/validator_cli.jar` if it is missing.
6. Validate using IG package `us.co.bha-ig#current`.
7. If the package cannot be resolved, retry with fallback IG sources:
   - `output/package.tgz`
   - `fsh-generated/resources`

## IG package version handling

Both scripts are currently set to use this package reference:

- `us.co.bha-ig#current`

This is intentional for day-to-day validation in this repository.

If you need a different package reference (for example `#dev` or a pinned version such as `#0.3.0`), edit the script directly:

- Windows: update `IG_PACKAGE` in `testing/validate-example.bat`
- Bash: update `IG_PACKAGE` in `testing/validate-example.sh`

No runtime parameter is provided for package version selection.

## Prerequisites

- Java 11+ on PATH
- Network access if `validator_cli.jar` must be downloaded

## Basic usage

From repo root on Windows:

```powershell
cmd /c testing\validate-example.bat output\Bundle-AllOfExampleCentral.json -tx n/a
```

From repo root in Bash:

```bash
./testing/validate-example.sh output/Bundle-AllOfExampleCentral.json -tx n/a
```

General syntax:

```text
validate-example.<bat|sh> <path-to-example.json> [path-to-ignorewarnings.txt] [additional validator args]
```

## Ignore warnings behavior

Both scripts support an optional second positional argument for the advisor file (for example an `ignoreWarnings.txt` file).

The scripts do not default to `input/ignoreWarnings.txt`.

If you pass the second argument, the scripts add `-advisor-file <that-path>`.

If you do not pass the second argument, no advisor file is added unless you provide one yourself in additional validator args.

Examples:

```powershell
cmd /c testing\validate-example.bat output\Bundle-AllOfExampleCentral.json input\ignoreWarnings.txt -tx n/a
```

```bash
./testing/validate-example.sh output/Bundle-AllOfExampleCentral.json input/ignoreWarnings.txt -tx n/a
```

## Useful validator options

- default terminology server: `-tx http://tx.fhir.org`
- `-tx n/a` disable terminology server calls
- `-output <file>` write OperationOutcome output to a file
- `-profile <canonical-url>` validate against a specific profile
- `-advisor-file <file>` suppress accepted warnings/info messages

If you do not pass `-tx`, the scripts now add `-tx http://tx.fhir.org` automatically.

If you pass your own `-tx` argument, the scripts use yours instead.

Example with output file:

```powershell
cmd /c testing\validate-example.bat output\Bundle-AllOfExampleCentral.json -tx n/a -output temp\validation-central.json
```

## Troubleshooting

- `ERROR: Java is required but was not found on PATH.`
  - Install Java and ensure `java` is available in your shell.

- `validator_cli.jar not found. Downloading ...` fails
  - Check network/proxy access to GitHub releases.

- Warnings still appear even with `ignoreWarnings.txt`
  - The warning text must match entries expected by validator advisor handling.
  - Some warnings may be new or differ by validator version / runtime options (for example using `-tx n/a`).

- `us.co.bha-ig#current` not resolved
  - Build the IG (`_build.bat` / `_build.sh`) so `output/package.tgz` exists, or ensure local package cache is available.
