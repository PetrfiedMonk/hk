@echo off
REM Publishes this site to https://hk-enterprisesllc.com (Firebase project hk-enterprises-b735f)
cd /d "%~dp0"
git pull
where firebase >nul 2>nul || call npm install -g firebase-tools
call firebase login
call firebase deploy --only hosting
pause
