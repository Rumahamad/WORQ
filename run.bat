@echo off
cd /d %~dp0
cd source
call npm install
start "WORQ API" cmd /k "cd /d %~dp0 && node backend\server.mjs"
npm run dev
