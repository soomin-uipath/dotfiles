@ECHO off
:top
CLS
ECHO Choose a shell:
ECHO [1] cmder
ECHO [2] zsh
ECHO [3] PowerShell
ECHO.
ECHO [4] restart elevated
ECHO [5] exit
ECHO.

CHOICE /N /C:123456 /M "> "
CLS
IF ERRORLEVEL ==5 GOTO end
IF ERRORLEVEL ==4 powershell -Command "Start-Process hyper -Verb RunAs"
IF ERRORLEVEL ==3 powershell
IF ERRORLEVEL ==2 bash ~ --login -c zsh
IF ERRORLEVEL ==1 cmd /k "C:\\Program Files (x86)\\cmder\\vendor\\init.bat"

CLS
ECHO Switch or exit?
ECHO [1] Switch
ECHO [2] Exit

CHOICE /N /C:12 /D 2 /T 5 /M "> "
IF ERRORLEVEL ==2 GOTO end
IF ERRORLEVEL ==1 GOTO top

:end

EXIT /B 0
