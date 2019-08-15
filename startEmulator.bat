@echo off
rem "Code to turn off echo to avoid printing commands on console"

rem "Code to clear the screen"
cls

rem "NEW CODE : Code to read the second line from the reactConfiguration.settings file"
setlocal enableextensions enabledelayedexpansion
set firstLine=2
for /f "delims=" %%i in (reactConfiguration.settings) do (

    rem "Code to run the command without changing the directory"

    if !firstLine!==1 %%i\emulator -list-avds
    set firstLine=1
)
endlocal

rem "code to ask to the user about the device name want to start with emulator"
set /P DeviceName="Enter Device Name you want to start in emulator : "

rem "Code to clear the screen"
cls

rem "NEW CODE : Code to read the second line from the reactConfiguration.settings file"
setlocal enableextensions enabledelayedexpansion
set firstLine=2
for /f "delims=" %%i in (reactConfiguration.settings) do (

    rem "code to start the specific emulator by executing the command without changing the current directory"
    
    if !firstLine!==1 %%i\emulator -avd %DeviceName%
    set firstLine=1
)
endlocal
