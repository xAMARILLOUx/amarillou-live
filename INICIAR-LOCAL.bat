@echo off
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
  echo Instale o Node.js LTS 22.15 ou superior em https://nodejs.org e tente novamente.
  pause
  exit /b 1
)
echo Abra http://127.0.0.1:8787 no navegador quando aparecer Painel abaixo.
node local/server.mjs
pause
