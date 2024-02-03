@echo off
:menu
cls
echo Choose EduBleach_11 script which you need to run:
echo 1. All UWP apps
echo 2. Except Store
echo 3. Except Store and Xbox services
echo 4. Exit

set /p choice=Enter your choice: 

if /i "%choice%"=="1" (
    powershell.exe -ExecutionPolicy Bypass -File "EduBleach_11_(all_uwp_apps).ps1"
) else if /i "%choice%"=="2" (
    powershell.exe -ExecutionPolicy Bypass -File "EduBleach_11_(except_store).ps1"
) else if /i "%choice%"=="3" (
    powershell.exe -ExecutionPolicy Bypass -File "EduBleach_11_(except_store_and_xbox_services).ps1"
) else if /i "%choice%"=="4" (
    goto :end
) else (
    echo Invalid choice. Please try again.
    timeout /nobreak /t 2 >nul
    goto :menu
)

:end