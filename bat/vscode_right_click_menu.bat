REM --add the following to the top of your bat file--
@echo off

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------

set path_of_folder="C:\Program Files\Microsoft VS Code"

:: folder 结尾为 \
if exist %path_of_folder%\ (
    echo VSCode folder exists.
) else (
  echo Path does not exist.
  exit /B
)

echo add right key

:: open fodler
reg delete HKEY_CLASSES_ROOT\Directory\Background\shell\VSCode /f

reg add HKEY_CLASSES_ROOT\Directory\Background\shell\VSCode /f /ve /d "Open folder as Workspace"

reg add HKEY_CLASSES_ROOT\Directory\Background\shell\VSCode /f /v "Icon" /t REG_EXPAND_SZ /d """"C:\Program Files\Microsoft VS Code\Code.exe""""

reg add HKEY_CLASSES_ROOT\Directory\Background\shell\VSCode\Command /f /ve /d "\"C:\Program Files\Microsoft VS Code\Code.exe\" "\"%%V\""

:: open file
reg delete HKEY_CLASSES_ROOT\*\shell\Open" "with" "VSCode /f

reg add HKEY_CLASSES_ROOT\*\shell\Open" "with" "VSCode /f

reg add HKEY_CLASSES_ROOT\*\shell\Open" "with" "VSCode /f /v "Icon" /t REG_EXPAND_SZ /d """"C:\Program Files\Microsoft VS Code\Code.exe""""

reg add HKEY_CLASSES_ROOT\*\shell\Open" "with" "VSCode\command /f /ve /d "C:\Program Files\Microsoft VS Code\Code.exe "\"%%1\""

pause