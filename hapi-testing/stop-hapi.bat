@echo off
setlocal EnableExtensions

set "SCRIPT_DIR=%~dp0"

echo Stopping HAPI Docker container ...
docker compose -f "%SCRIPT_DIR%docker-compose.yml" down
exit /b %ERRORLEVEL%
