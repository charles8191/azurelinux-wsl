@echo off
cd /d "%~dp0"
fltmc > nul
if %errorlevel% NEQ 0 (
    powershell -command "start-process -verb runas '%~f0'"
    exit /b
)
wsl --import AzureLinux %systemdrive%\AzureLinux-WSL distro.tar
if %errorlevel% NEQ 0 (
    echo Something went wrong :(
    pause
    exit /b 1
)
echo Done!
pause
exit /b
