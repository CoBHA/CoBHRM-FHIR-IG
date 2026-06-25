@echo off
setlocal EnableExtensions

if "%~1"=="" goto :usage

set "SCRIPT_DIR=%~dp0"
for %%I in ("%SCRIPT_DIR%..") do set "ROOT_DIR=%%~fI"

for %%I in ("%~1") do set "EXAMPLE_PATH=%%~fI"
if not exist "%EXAMPLE_PATH%" (
  echo ERROR: Example file not found: %EXAMPLE_PATH%
  exit /b 1
)

set "ADVISOR_FILE="
set "ADVISOR_ARG="
set "ARG2=%~2"
if not "%ARG2%"=="" (
  if not "%ARG2:~0,1%"=="-" (
    for %%I in ("%~2") do set "ADVISOR_FILE=%%~fI"
  )
)
if not "%ADVISOR_FILE%"=="" (
  if not exist "%ADVISOR_FILE%" (
    echo ERROR: Advisor file not found: %ADVISOR_FILE%
    exit /b 1
  )
  set "ADVISOR_ARG=-advisor-file ""%ADVISOR_FILE%"""
)

where java >nul 2>&1
if errorlevel 1 (
  echo ERROR: Java is required but was not found on PATH.
  exit /b 1
)

set "VALIDATOR_JAR=%ROOT_DIR%\input-cache\validator_cli.jar"
if not exist "%VALIDATOR_JAR%" set "VALIDATOR_JAR=%ROOT_DIR%\validator_cli.jar"
if not exist "%VALIDATOR_JAR%" set "VALIDATOR_JAR=%ROOT_DIR%\..\validator_cli.jar"

if not exist "%VALIDATOR_JAR%" (
  set "VALIDATOR_JAR=%ROOT_DIR%\input-cache\validator_cli.jar"
  echo validator_cli.jar not found. Downloading to %VALIDATOR_JAR% ...
  if not exist "%ROOT_DIR%\input-cache" mkdir "%ROOT_DIR%\input-cache"
  powershell -NoProfile -ExecutionPolicy Bypass -Command "Invoke-WebRequest -UseBasicParsing -Uri 'https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar' -OutFile '%VALIDATOR_JAR%'"
  if errorlevel 1 (
    echo ERROR: Failed to download validator_cli.jar
    exit /b 1
  )
)

set "IG_PACKAGE=us.co.bha-ig#current"
set "IG_SOURCE=%IG_PACKAGE%"
set "IG_FALLBACK=%ROOT_DIR%\output\package.tgz"
if not exist "%IG_FALLBACK%" set "IG_FALLBACK=%ROOT_DIR%\fsh-generated\resources"

echo Using validator: %VALIDATOR_JAR%
echo Validating: %EXAMPLE_PATH%
echo Primary IG source: %IG_SOURCE%
echo Fallback IG source: %IG_FALLBACK%
if defined ADVISOR_ARG echo Using advisor file: %ADVISOR_FILE%

set "FORWARD_ARGS="
set "HAS_TX="
set "HAS_OUTPUT="
set "OO_REQUEST="
shift
if defined ADVISOR_ARG shift
:collectArgs
if "%~1"=="" goto :runPrimary
if /I "%~1"=="--operationoutcome" (
  set "OO_REQUEST=1"
  shift
  goto :collectArgs
)
if /I "%~1"=="-oo" (
  set "OO_REQUEST=1"
  shift
  goto :collectArgs
)
if /I "%~1"=="-tx" set "HAS_TX=1"
if /I "%~1:~0,4%"=="-tx=" set "HAS_TX=1"
if /I "%~1"=="-output" set "HAS_OUTPUT=1"
if /I "%~1:~0,8%"=="-output=" set "HAS_OUTPUT=1"
set "FORWARD_ARGS=%FORWARD_ARGS% %1"
shift
goto :collectArgs

:runPrimary
set "TX_ARGS=-tx http://tx.fhir.org"
if defined HAS_TX set "TX_ARGS="
set "OO_ARGS="
if defined OO_REQUEST if not defined HAS_OUTPUT (
  set "OO_ARGS=-output ""validation-operationoutcome.json"""
  echo Writing OperationOutcome output: %CD%\validation-operationoutcome.json
)
java -jar "%VALIDATOR_JAR%" "%EXAMPLE_PATH%" -version 4.0.1 -ig "%IG_SOURCE%" %ADVISOR_ARG% %TX_ARGS% %OO_ARGS% %FORWARD_ARGS%
if not errorlevel 1 exit /b 0

echo.
echo Primary IG source failed; retrying with fallback.
java -jar "%VALIDATOR_JAR%" "%EXAMPLE_PATH%" -version 4.0.1 -ig "%IG_FALLBACK%" %ADVISOR_ARG% %TX_ARGS% %OO_ARGS% %FORWARD_ARGS%
exit /b %ERRORLEVEL%

:usage
echo Usage:
echo   %~nx0 ^<path-to-example.json^> [path-to-ignorewarnings.txt] [--operationoutcome ^| -oo] [additional validator args]
echo.
echo Example:
echo   %~nx0 ..\output\Bundle-AllOfExampleCentral.json ..\input\ignoreWarnings.txt -tx n/a
echo   %~nx0 ..\output\Bundle-AllOfExampleCentral.json ..\input\ignoreWarnings.txt --operationoutcome
exit /b 2
