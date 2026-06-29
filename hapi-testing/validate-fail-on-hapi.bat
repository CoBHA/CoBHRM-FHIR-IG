@echo off
setlocal EnableExtensions EnableDelayedExpansion

set "SCRIPT_DIR=%~dp0"
for %%I in ("%SCRIPT_DIR%..") do set "ROOT_DIR=%%~fI"

set "VERBOSE=0"
set "ARG1="
set "ARG2="

:parseArgs
if "%~1"=="" goto :argsDone
if /I "%~1"=="-v" (
  set "VERBOSE=1"
  shift
  goto :parseArgs
)
if /I "%~1"=="--verbose" (
  set "VERBOSE=1"
  shift
  goto :parseArgs
)
if "%ARG1%"=="" (
  set "ARG1=%~1"
) else if "%ARG2%"=="" (
  set "ARG2=%~1"
) else (
  echo ERROR: Too many arguments.
  goto :usage
)
shift
goto :parseArgs

:argsDone
set "BASE_URL=http://localhost:8080/fhir"
if not "%ARG1%"=="" set "BASE_URL=%ARG1%"

set "FAIL_DIR=%ROOT_DIR%\testing\fail\fsh-generated\resources"
if not "%ARG2%"=="" for %%I in ("%ARG2%") do set "FAIL_DIR=%%~fI"

if not exist "%FAIL_DIR%" (
  echo ERROR: Fail resources directory not found: %FAIL_DIR%
  echo Run SUSHI in testing\fail first ^(e.g. cd testing\fail ^&^& sushi .^)
  exit /b 1
)

where curl >nul 2>&1
if errorlevel 1 (
  echo ERROR: curl is required but was not found on PATH.
  exit /b 1
)

dir /b "%FAIL_DIR%\*Fail*.json" >nul 2>&1
if errorlevel 1 (
  echo ERROR: No fail JSON files found matching: %FAIL_DIR%\*Fail*.json
  exit /b 1
)

set "FAILURES=0"

for %%F in (%FAIL_DIR%\*Fail*.json) do (
  set "FILE=%%~fF"

  if "%VERBOSE%"=="1" (
    echo.
    echo ----
    echo Validating on HAPI: %%~nxF
  )

  set "RESOURCE_TYPE="
  for /f "usebackq delims=" %%R in (`powershell -NoProfile -Command "$x = Get-Content -Raw -Path '%%~fF' | ConvertFrom-Json; $x.resourceType"`) do set "RESOURCE_TYPE=%%R"

  if "!RESOURCE_TYPE!"=="" (
    echo [FAIL] Could not determine resourceType: !FILE!
    set /a FAILURES+=1
  ) else (
    set "URL=%BASE_URL%/!RESOURCE_TYPE!/$validate"
    set "RESP_FILE=%TEMP%\hapi-fail-validate-response.json"

    if "%VERBOSE%"=="1" echo POST !URL!

    for /f %%S in ('curl -sS -o "!RESP_FILE!" -w "%%{http_code}" -X POST "!URL!" -H "Content-Type: application/fhir+json" -H "Accept: application/fhir+json" --data-binary "@!FILE!"') do set "STATUS=%%S"

    if "%VERBOSE%"=="1" (
      echo OperationOutcome response:
      type "!RESP_FILE!"
    )

    findstr /R /I "\"severity\"[ ]*:[ ]*\"error\" \"severity\"[ ]*:[ ]*\"fatal\"" "!RESP_FILE!" >nul
    if errorlevel 1 (
      echo [FAIL] %%~nxF ^(HTTP !STATUS!^) - expected OperationOutcome with error/fatal, none found.
      set /a FAILURES+=1
    ) else (
      echo [PASS] %%~nxF ^(HTTP !STATUS!^) - validation produced expected error/fatal.
    )
  )
)

if %FAILURES% GTR 0 (
  echo.
  echo Completed with %FAILURES% unexpected result^(s^).
  exit /b 1
)

echo.
echo All fail examples produced error/fatal validation issues as expected.
exit /b 0

:usage
echo Usage: %~nx0 [--verbose^|-v] [base-url] [fail-resources-dir]
exit /b 2
