@echo off
setlocal EnableExtensions

set "SCRIPT_DIR=%~dp0"
for %%I in ("%SCRIPT_DIR%..") do set "ROOT_DIR=%%~fI"

set "BASE_URL=http://localhost:8080/fhir"
if not "%~1"=="" set "BASE_URL=%~1"

call "%SCRIPT_DIR%post-example.bat" "%ROOT_DIR%\output\Bundle-AllOfExampleCentral.json" "%BASE_URL%" || exit /b 1
call "%SCRIPT_DIR%post-example.bat" "%ROOT_DIR%\output\Bundle-AllOfExampleEmma.json" "%BASE_URL%" || exit /b 1
call "%SCRIPT_DIR%post-example.bat" "%ROOT_DIR%\output\Bundle-AllOfExampleNorth.json" "%BASE_URL%" || exit /b 1
call "%SCRIPT_DIR%post-example.bat" "%ROOT_DIR%\output\Bundle-AllOfExampleSouth.json" "%BASE_URL%" || exit /b 1

echo All example submissions completed.
exit /b 0
