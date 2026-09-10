@echo off
chcp 65001 >nul
setlocal

if "%~1"=="" (
    powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0tools\build-apks.ps1"
) else (
    powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0tools\build-apks.ps1" "%~1"
)

if errorlevel 1 exit /b %errorlevel%

endlocal
