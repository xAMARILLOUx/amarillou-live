@echo off
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
  echo Instale Node.js 22.15 ou superior: https://nodejs.org/en/download
  pause
  exit /b 1
)
echo Iniciando AMARILLOU Live Control. O painel abrira automaticamente.
node local/launch.mjs
if errorlevel 1 pause
