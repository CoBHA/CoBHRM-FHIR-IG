@echo off
setlocal EnableExtensions

set "SCRIPT_DIR=%~dp0"
for %%I in ("%SCRIPT_DIR%..") do set "ROOT_DIR=%%~fI"
set "PACKAGE_TGZ=%ROOT_DIR%\output\package.tgz"

if not exist "%PACKAGE_TGZ%" (
  echo ERROR: Required IG package not found: %PACKAGE_TGZ%
  echo Run _build.bat ^(or ./_build.sh^) first.
  exit /b 1
)

set "HAPI_IG_VERSION="
for /f %%I in ('powershell -NoProfile -Command "$pkg = tar -xOf '%PACKAGE_TGZ%' package/package.json | ConvertFrom-Json; $pkg.version"') do set "HAPI_IG_VERSION=%%I"
if "%HAPI_IG_VERSION%"=="" (
  echo ERROR: Could not determine IG package version from %PACKAGE_TGZ%
  exit /b 1
)
echo Using IG package version: %HAPI_IG_VERSION%

echo Starting HAPI Docker container using: %SCRIPT_DIR%docker-compose.yml
docker compose -f "%SCRIPT_DIR%docker-compose.yml" up -d
if errorlevel 1 exit /b 1

echo Waiting for server to respond at http://localhost:8080/fhir/metadata ...
set /a RETRIES=180
:waitLoop
curl -fsS "http://localhost:8080/fhir/metadata" >nul 2>&1
if not errorlevel 1 (
  echo HAPI is up.
  exit /b 0
)
set /a RETRIES-=1
if %RETRIES% LEQ 0 goto :timeout
powershell -NoProfile -Command "Start-Sleep -Seconds 2" >nul
goto :waitLoop

:timeout
echo WARNING: HAPI did not become ready within timeout.
echo Check logs: docker compose -f "%SCRIPT_DIR%docker-compose.yml" logs -f hapi
exit /b 1
