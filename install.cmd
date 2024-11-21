@echo off
cd /d "%~dp0"
fltmc > nul
if %errorlevel% NEQ 0 (
    powershell start-process -verb runas "%~f0"
    exit /b
)
wsl --import RHEL C:\RHEL-WSL rhel.tar
if %errorlevel% NEQ 0 (
    echo Something went wrong :(
    pause
    exit /b 1
)
echo Done!
pause
exit /b