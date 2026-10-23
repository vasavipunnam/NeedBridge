@echo off
title NeedBridge AI Frontend
cd /d "%~dp0"
where npm >nul 2>nul
if errorlevel 1 (
  echo Node.js/npm is not installed or not available in PATH.
  echo Install Node.js LTS, reopen Command Prompt, and run this file again.
  pause
  exit /b 1
)
if not exist node_modules (
  echo Installing frontend packages...
  call npm install
  if errorlevel 1 (
    echo npm install failed.
    pause
    exit /b 1
  )
)
echo Starting NeedBridge frontend on http://localhost:5173
call npm run dev
