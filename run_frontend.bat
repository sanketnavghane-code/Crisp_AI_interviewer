@echo off
echo Starting Interview Assistant Frontend...
cd /d "%~dp0"
set "PATH=%PATH%;C:\Program Files\nodejs"

WHERE npm >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
    echo ========================================================
    echo ERROR: Node.js is not installed or not in your PATH.
    echo ========================================================
    echo The Frontend requires Node.js to run.
    echo 1. Download and install Node.js (LTS) from https://nodejs.org/
    echo 2. Restart your terminal/VS Code after installation.
    echo 3. Run this script again.
    echo ========================================================
    pause
    exit /b 1
)

if not exist "node_modules" (
    echo Installing dependencies...
    call npm install
)

echo Starting development server...
call npm run dev
pause
