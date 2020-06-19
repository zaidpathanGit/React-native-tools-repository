@echo off
rem "Code to turn off echo to avoid printing code on console"

rem "Code to run script as administrator"
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

rem "Code to clear the screen"
cls

rem "NEW CODE : Code to read the first line from the reactConfiguration.settings file"
setlocal enableextensions enabledelayedexpansion
set targetDir=""
set firstLine=1
for /f "delims=" %%i in (reactConfiguration.settings) do (
    if !firstLine!==1 set targetDir=%%i
    set firstLine=0
)
endlocal

rem "Code to clear the screen"
cls

rem "List all the projects from path specified into the previous command"
cd %targetDir% 
dir /A

rem "Code to ask to the user for which project user want to start react server"
set /P ProjectName= Enter project name for which you want to start server :	

rem "Code to clear the screen"
cls

rem "Changing the current directory from project specified into the previous command"
cd %targetDir%
cd %ProjectName%

rem "Code to clear the screen"
cls

rem "Code to start the react native server"
npx react-native start
