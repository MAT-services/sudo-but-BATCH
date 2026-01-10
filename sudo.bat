@echo off
if "%1"=="" goto noArg
if NOT EXIST %1 goto notExe
set process="Start-Process %1 -Verb RunAs"
goto exec
:notExe
set process="Start-Process cmd -Verb RunAs -ArgumentList '/c %1'"
goto exec 
:noArg
echo No arguments found. 
goto :eof
:exec

powershell -c %process%
