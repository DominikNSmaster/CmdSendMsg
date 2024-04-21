@echo off
echo [91mWARNING:[0m [41mThis Program will only work on Windows 10 / 11 Pro.[0m
echo [93mNote:[0m [43mThis will not work unless you are connected at the same network as the receiver.[0m
pause
set /p ip="[94mEnter Ipv4 address: [0m"
:b
set /p msg="[93mEnter Text: [0m"
msg * /server:%ip% "%msg%"
if %errorlevel% EQU 0 echo [92mMessage sent successfully![0m
if %errorlevel% EQU 1722 echo [91mError 1722: IP address does not exist.[0m
if %errorlevel% EQU 1 echo [91mError 1: Syntax / IP inexistent error.[0m 
if %errorlevel% GTR 1 echo [91mError %errorlevel%: Unknown error.[0m
set /p smt="[95mSend more things? (y/n)[0m "
if %smt% EQU y goto b
exit