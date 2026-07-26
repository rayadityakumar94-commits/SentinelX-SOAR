@echo off
title SentinelX SOAR - Dev Server
color 0B

echo.
echo  ███████╗███████╗███╗   ██╗████████╗██╗███╗   ██╗███████╗██╗     ██╗  ██╗
echo  ██╔════╝██╔════╝████╗  ██║╚══██╔══╝██║████╗  ██║██╔════╝██║     ╚██╗██╔╝
echo  ███████╗█████╗  ██╔██╗ ██║   ██║   ██║██╔██╗ ██║█████╗  ██║      ╚███╔╝
echo  ╚════██║██╔══╝  ██║╚██╗██║   ██║   ██║██║╚██╗██║██╔══╝  ██║      ██╔██╗
echo  ███████║███████╗██║ ╚████║   ██║   ██║██║ ╚████║███████╗███████╗██╔╝ ██╗
echo  ╚══════╝╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚═╝╚═╝  ╚═══╝╚══════╝╚══════╝╚═╝  ╚═╝
echo.
echo  SOAR Platform - Security Orchestration, Automation and Response
echo  ================================================================
echo.

cd /d "%~dp0frontend"

echo  [1/2] Checking dependencies...
if not exist "node_modules" (
    echo  [!] node_modules not found. Installing...
    echo.
    npm install
    if errorlevel 1 (
        echo.
        echo  [ERROR] npm install failed. Make sure Node.js is installed.
        echo  Download: https://nodejs.org
        pause
        exit /b 1
    )
) else (
    echo  [OK] Dependencies found.
)

echo.
echo  [2/2] Starting development server...
echo.
echo  ----------------------------------------
echo   URL  :  http://localhost:3000
echo   Login:  demo@demo.com / demo123
echo  ----------------------------------------
echo.

start "" "http://localhost:3000"
npm run dev

pause