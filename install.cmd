@echo on
cd /d "%~dp0"
fltmc > nul
if %errorlevel% NEQ 0 (
    powershell start-process -verb runas "%~f0"
    exit /b
)
wsl --import RHEL C:\RHEL-WSL rhel.tar