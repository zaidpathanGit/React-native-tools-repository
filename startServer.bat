@echo off
rem "Code to turn off echo to avoid printing code on console"

rem "Code to change users current directory to the directory where all react native projects are stored"
rem "OLD CODE : Cd C:\Users\COOL ZAID\Documents\react_native_projects\"

rem "Code to clear the screen"
cls

rem "NEW CODE : Code to read the first line from the reactConfiguration.settings file"
setlocal enableextensions enabledelayedexpansion
set firstLine=1
for /f "delims=" %%i in (reactConfiguration.settings) do (
    if !firstLine!==1 cd %%i
    set firstLine=0
)
endlocal

rem "Code to clear the screen"
cls

rem "List all the projects from path specified into the previous command"
dir /A

rem "Code to ask to the user for which project user want to start react server"
set /P ProjectName= Enter project name for which you want to start server :	

rem "Code to clear the screen"
cls

rem "Changing the current directory from project specified into the previous command"
cd %ProjectName%

rem "Code to clear the screen"
cls

rem "Code to start the react native server"
react-native start
