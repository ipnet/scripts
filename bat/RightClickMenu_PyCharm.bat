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

echo Detect Idea Last Version

set path_of_folder=%localappdata%\JetBrains\Toolbox\apps\PyCharm-P\ch-0
set idea_version=000

set toolbox_dir_reg="^[0-9]*.[0-9]*.[0-9]*$"

:: folder 结尾为 \
if exist %path_of_folder%\ (
    :: 按时间排序
    for /f %%i in ('dir /OD /B %path_of_folder% ^| findstr /R %toolbox_dir_reg%') do (
        set idea_version=%%i
    )
) else (
  echo Path does not exist.
  exit /B
)

if "%idea_version%"=="000" (
    echo Cannot Detect Idea Version.
    pause
    exit /B
)

echo last version is %idea_version%

echo add right key

:: background
reg delete HKEY_CLASSES_ROOT\Directory\Background\shell\pycharm /f

:: Open folder as Project
reg add HKEY_CLASSES_ROOT\Directory\Background\shell\pycharm /f /ve /d "Open with PyCharm"

reg add HKEY_CLASSES_ROOT\Directory\Background\shell\pycharm /f /v "Icon" /t REG_EXPAND_SZ /d """"%path_of_folder%\%idea_version%\bin\pycharm64.exe""""

reg add HKEY_CLASSES_ROOT\Directory\Background\shell\pycharm\Command /f /ve /d "\"%path_of_folder%\%idea_version%\bin\pycharm64.exe\" "\"%%V\""

:: right click folder
reg delete HKEY_CLASSES_ROOT\Directory\shell\pycharm /f

reg add HKEY_CLASSES_ROOT\Directory\shell\pycharm /f /ve /d "Open with PyCharm"

reg add HKEY_CLASSES_ROOT\Directory\shell\pycharm /f /v "Icon" /t REG_EXPAND_SZ /d """"%path_of_folder%\%idea_version%\bin\pycharm64.exe""""

reg add HKEY_CLASSES_ROOT\Directory\shell\pycharm\Command /f /ve /d "\"%path_of_folder%\%idea_version%\bin\pycharm64.exe\" "\"%%V\""

pause