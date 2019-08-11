@echo off
rem "Code to turn off echo to avoid printing commands on console"

rem "code to change current directory to a specific directory where android sdk tools installed"
rem "OLD CODE : cd C:\Android\sdk\tools"

rem "Code to clear the screen"
cls

rem "NEW CODE : Code to read the second line from the reactConfiguration.settings file"
setlocal enableextensions enabledelayedexpansion
set firstLine=2
for /f "delims=" %%i in (reactConfiguration.settings) do (
    if !firstLine!==1 cd %%i
    set firstLine=1
)
endlocal

rem "Code to clear the screen"
cls

rem "code to display available or created emulator devices list"
emulator -list-avds

rem "code to ask to the user about the device name want to start with emulator"
set /P DeviceName="Enter Device Name you want to start in emulator : "

rem "Code to clear the screen"
cls

rem "code to start the specific emulator"
emulator -avd %DeviceName%

rem "code to change specific directory to previous directory from where execution starts"
rem "OLD CODE : cd C:\Users\COOL ZAID\Documents\React_Native_Projects"

rem "NEW CODE : Code to read the first line from the reactConfiguration.settings file"
setlocal enableextensions enabledelayedexpansion
set firstLine=1
for /f "delims=" %%i in (reactConfiguration.settings) do (
    if !firstLine!==1 cd %%i
    set firstLine=0
)
endlocal