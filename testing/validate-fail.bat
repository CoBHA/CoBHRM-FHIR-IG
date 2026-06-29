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
set "FAIL_DIR=%ROOT_DIR%\testing\fail\fsh-generated\resources"
if not "%ARG1%"=="" for %%I in ("%ARG1%") do set "FAIL_DIR=%%~fI"

set "ADVISOR_FILE="
if not "%ARG2%"=="" for %%I in ("%ARG2%") do set "ADVISOR_FILE=%%~fI"

if not exist "%FAIL_DIR%" (
  echo ERROR: Fail resources directory not found: %FAIL_DIR%
  echo Run SUSHI in testing\fail first ^(e.g. cd testing\fail ^&^& sushi .^)
  exit /b 1
)

dir /b "%FAIL_DIR%\*Fail*.json" >nul 2>&1
if errorlevel 1 (
  echo ERROR: No fail JSON files found matching: %FAIL_DIR%\*Fail*.json
  exit /b 1
)

set "FAILURES=0"
set "OUT_FILE=%TEMP%\validation-operationoutcome.json"

for %%F in (%FAIL_DIR%\*Fail*.json) do (
  if "%VERBOSE%"=="1" (
    echo.
    echo ----
    echo Validating with CLI: %%~nxF
  )
  if defined ADVISOR_FILE (
    if "%VERBOSE%"=="1" (
      call "%SCRIPT_DIR%validate-example.bat" "%%~fF" "%ADVISOR_FILE%" -tx n/a -output "%OUT_FILE%"
    ) else (
      call "%SCRIPT_DIR%validate-example.bat" "%%~fF" "%ADVISOR_FILE%" -tx n/a -output "%OUT_FILE%" >nul 2>&1
    )
  ) else (
    if "%VERBOSE%"=="1" (
      call "%SCRIPT_DIR%validate-example.bat" "%%~fF" -tx n/a -output "%OUT_FILE%"
    ) else (
      call "%SCRIPT_DIR%validate-example.bat" "%%~fF" -tx n/a -output "%OUT_FILE%" >nul 2>&1
    )
  )

  if not exist "%OUT_FILE%" (
    echo [FAIL] %%~nxF - validator did not produce OperationOutcome output.
    set /a FAILURES+=1
  ) else (
    findstr /R /I "\"severity\"[ ]*:[ ]*\"error\" \"severity\"[ ]*:[ ]*\"fatal\"" "%OUT_FILE%" >nul
    if errorlevel 1 (
      echo [FAIL] %%~nxF - expected error/fatal in validator output, none found.
      set /a FAILURES+=1
    ) else (
      echo [PASS] %%~nxF - validator produced expected error/fatal.
    )
  )
)

if %FAILURES% GTR 0 (
  echo.
  echo Completed with %FAILURES% unexpected result^(s^).
  exit /b 1
)

echo.
echo All fail examples produced validator error/fatal issues as expected.
exit /b 0

:usage
echo Usage: %~nx0 [--verbose^|-v] [fail-resources-dir] [path-to-ignorewarnings.txt]
exit /b 2
