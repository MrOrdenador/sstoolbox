@echo off
md C:\SSToolBox
title By MrOrdenador on Youtube
color 06
Mode 130,45
setlocal EnableDelayedExpansion
rem By MrOrdenador on Youtube
rem Run as Admin
>nul 2>&1 reg add HKLM /F
if %errorlevel% neq 0 (
    start "" /wait /I /min powershell -NoProfile -Command start -verb runas "'%~s0'" && exit /b
)



REM Add ANSI escape sequences
>nul 2>&1 reg add HKCU\CONSOLE /v VirtualTerminalLevel /t REG_DWORD /d 1 /f

:menu
cls
echo  ::::::::   :::::::: ::::::::::: ::::::::   ::::::::  :::        :::::::::   ::::::::  :::    :::      
echo :+:    :+: :+:    :+:    :+:    :+:    :+: :+:    :+: :+:        :+:    :+: :+:    :+: :+:    :+:      
echo +:+        +:+           +:+    +:+    +:+ +:+    +:+ +:+        +:+    +:+ +:+    +:+  +:+  +:+       
echo +#++:++#++ +#++:++#++    +#+    +#+    +:+ +#+    +:+ +#+        +#++:++#+  +#+    +:+   +#++:+        
echo        +#+        +#+    +#+    +#+    +#+ +#+    +#+ +#+        +#+    +#+ +#+    +#+  +#+  +#+       
echo #+#    #+# #+#    #+#    #+#    #+#    #+# #+#    #+# #+#        #+#    #+# #+#    #+# #+#    #+#      
echo  ########   ########     ###     ########   ########  ########## #########   ########  ###    ###    
echo -------------------------------------------------------------------------------------- 
echo By MrOrdenador on [91mYoutube[33m
echo This is a free tool. IF YOU'VE PAID FOR IT, YOU'VE BEEN SCAMMED
echo.
echo [1] Services info
echo [2] Download SS Tools
set /p input=: 
if "%input%"=="1" goto 1
if "%input%"=="2" goto submenu


:1 
sc query "PcaSvc" | find "RUNNING" >nul 2>&1
if %errorlevel% equ 0 (
    set "PcaSvc=[33mPcaSvc: [92mRunning"
) else (
    set "PcaSvc=[33mPcaSvc: [91mStopped"
)

sc query "DPS" | find "RUNNING" >nul 2>&1
if %errorlevel% equ 0 (
    set "DPS=[33mDPS: [92mRunning"
) else (
    set "DPS=[33mDPS: [91mStopped"
)

sc query "SysMain" | find "RUNNING" >nul 2>&1
if %errorlevel% equ 0 (
    set "SysMain=[33mSysMain: [92mRunning"
) else (
    set "SysMain=[33mSysMain: [91mStopped"
)

sc query "EventLog" | find "RUNNING" >nul 2>&1
if %errorlevel% equ 0 (
    set "EventLog=[33mEventLog: [92mRunning"
) else (
    set "EventLog=[33mEventLog: [91mStopped"
)

sc query "DusmSvc" | find "RUNNING" >nul 2>&1
if %errorlevel% equ 0 (
    set "DusmSvc=[33mDusmSvc: [92mRunning"
) else (
    set "DusmSvc=[33mDusmSvc: [91mStopped"
)

sc query "AppInfo" | find "RUNNING" >nul 2>&1
if %errorlevel% equ 0 (
    set "AppInfo=[33mAppInfo: [92mRunning"
) else (
    set "AppInfo=[33mAppInfo: [91mStopped"
)

sc query "DiagTrack" | find "RUNNING" >nul 2>&1
if %errorlevel% equ 0 (
    set "DiagTrack=[33mDiagTrack: [92mRunning[33m"
) else (
    set "DiagTrack=[33mDiagTrack: [91mStopped[33m"
)

cls
echo --------------------------------------
echo         Services' status
echo --------------------------------------

echo %PcaSvc%
echo %Dps%
echo %SysMain%
echo %EventLog%
echo %DusmSvc%
echo %AppInfo%
echo %DiagTrack%
pause
goto :menu

:submenu


setlocal

echo Downloading ss tools...
curl -g -k -L -# -o "C:\SSToolBox\Tools.zip" "https://www.dropbox.com/scl/fi/3mhgzeka0jg1y1dz246l0/SSToolBox.zip?rlkey=s82ec1xck0losp14vaodd821a&st=s8sb0qfe&dl=0"

echo Extracting files...
powershell -Command "Expand-Archive -Path 'C:\SSToolBox\Tools.zip' -DestinationPath 'C:\SSToolBox\' -Force"
if %errorlevel% neq 0 (
    echo We couldn't extract the file D:
    pause
    exit /b %errorlevel%
)

echo Deleting the zip file...
del "C:\SSToolBox\Tools.zip"
if %errorlevel% neq 0 (
    echo We couldn't delete the zip file D:
    pause
    exit /b %errorlevel%
)


echo Done ;)

endlocal

:2
cls
echo --------------------------------------
echo              SS Tools
echo --------------------------------------
echo [1] Download Echo SS Tool
echo [2] Download Ocean SS Tool 
echo [3] Download Journal Tool 
echo [4] Download WinPrefetchView
echo [5] Download EveryThing
echo [6] Download Recaf
echo [7] Menu



set /p input=: 
if "%input%"=="1" goto download_echo
if "%input%"=="2" goto download_ocean
if "%input%"=="3" goto download_journal
if "%input%"=="4" goto download_prefetch
if "%input%"=="5" goto download_everything
if "%input%"=="6" goto download_recaf
if "%input%"=="7" goto menu



:download_echo
start C:\SSToolBox\echo.exe
echo Done
pause
goto :2

:download_ocean
start https://anticheat.ac
echo You must download it manually
echo Done
pause
goto :2

:download_journal
start C:\SSToolBox\journal-tool.exe
echo Done
pause
goto :2

:download_prefetch
start C:\SSToolBox\WinPrefetchView
echo Done
pause
goto :2

:download_everything
start C:\SSToolBox\Everything-1.4.1.1024.x86-Setup.exe
echo Done
pause
goto :2

:download_recaf
start C:\SSToolBox\recaf-2.21.14-J8-jar-with-dependencies.jar
echo Done
pause
goto :2

