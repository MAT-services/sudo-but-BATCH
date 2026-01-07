@echo off
if "%1"=="" goto noArg
if NOT EXIST %1 goto notExe
set process=%1
goto exec
:notExe
set process="cmd -c %1"
goto exec 
:noArg
echo No arguments found. 
goto :eof
:exec
powershell -c Start-process %process% -Verb RunAs