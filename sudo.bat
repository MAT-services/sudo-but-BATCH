@echo off
if "%1"=="" goto noArg
if NOT EXIST %1 goto notExe
set process="Start-Process %* -Verb RunAs"
goto exec
:notExe
set process="Start-Process cmd -Verb RunAs -ArgumentList '/c %*'"
goto exec 
:exec
powershell -c %process%
goto :eof
:noArg
echo No arguments found. 