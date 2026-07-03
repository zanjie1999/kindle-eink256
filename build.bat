@echo off
chcp 65001 >nul
setlocal

powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0tools\build-apks.ps1"

if errorlevel 1 exit /b %errorlevel%

endlocal
