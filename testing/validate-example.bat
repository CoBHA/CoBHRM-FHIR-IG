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

set "ADVISOR_FILE=%ROOT_DIR%\input\ignoreWarnings.txt"
set "ADVISOR_ARG="
if exist "%ADVISOR_FILE%" (
  set "ADVISOR_ARG=-advisor-file ""%ADVISOR_FILE%"""
  echo %* | findstr /I /C:"-advisor-file" >nul && set "ADVISOR_ARG="
)

echo Using validator: %VALIDATOR_JAR%
echo Validating: %EXAMPLE_PATH%
echo Primary IG source: %IG_SOURCE%
echo Fallback IG source: %IG_FALLBACK%
if defined ADVISOR_ARG echo Using advisor file: %ADVISOR_FILE%

shift
java -jar "%VALIDATOR_JAR%" "%EXAMPLE_PATH%" -version 4.0.1 -ig "%IG_SOURCE%" %ADVISOR_ARG% %*
if not errorlevel 1 exit /b 0

echo.
echo Primary IG source failed; retrying with fallback.
java -jar "%VALIDATOR_JAR%" "%EXAMPLE_PATH%" -version 4.0.1 -ig "%IG_FALLBACK%" %ADVISOR_ARG% %*
exit /b %ERRORLEVEL%

:usage
echo Usage:
echo   %~nx0 ^<path-to-example.json^> [additional validator args]
echo.
echo Example:
echo   %~nx0 ..\input\fsh\examples\Patient-example.json -tx n/a
exit /b 2
