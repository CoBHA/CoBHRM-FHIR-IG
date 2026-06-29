@echo off
setlocal EnableExtensions

if "%~1"=="" goto :usage

set "EXAMPLE_PATH=%~f1"
if not exist "%EXAMPLE_PATH%" (
  echo ERROR: Example file not found: %EXAMPLE_PATH%
  exit /b 1
)

set "BASE_URL=http://localhost:8080/fhir"
if not "%~2"=="" set "BASE_URL=%~2"

echo Posting bundle: %EXAMPLE_PATH%
echo Target: %BASE_URL%

for /f %%I in ('curl -sS -o "%TEMP%\cobhrm-hapi-post-response.json" -w "%%{http_code}" -X POST "%BASE_URL%" -H "Content-Type: application/fhir+json" -H "Accept: application/fhir+json" --data-binary "@%EXAMPLE_PATH%"') do set "HTTP_CODE=%%I"
echo HTTP status: %HTTP_CODE%
type "%TEMP%\cobhrm-hapi-post-response.json"

echo %HTTP_CODE% | findstr /R "^2" >nul
if not errorlevel 1 exit /b 0
exit /b 1

:usage
echo Usage: %~nx0 ^<path-to-example.json^> [base-url]
echo.
echo Example: %~nx0 output\Bundle-AllOfExampleCentral.json
echo Example: %~nx0 output\Bundle-AllOfExampleCentral.json http://localhost:8080/fhir
exit /b 2
