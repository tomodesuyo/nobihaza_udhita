@echo off
cls
echo XY | choice > nul
cls
set /a memory=1
:mem
cls
echo MEMORY %memory%MB OK
set /a memory=512+%memory%
powershell -Command "sleep -m 0"
if %memory%==8193 (goto :loop1)
goto :mem
:loop1
Ping -n 3 99999 > nul
cls
Ping -n 3 99999 > nul
setlocal
for /f "usebackq delims=" %%A in (`ver`) do set ver=%%A
echo %ver%
echo (c) Microsoft Corporation. All rights reserved.
echo;
cd %USERPROFILE% >nul
:loop > nul
set /p command="%CD%>"
%command%
echo;
goto :loop > nul
pause