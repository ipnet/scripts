@echo off

set path_of_folder=%localappdata%\JetBrains\Toolbox\apps\IDEA-U\ch-0
set last_version=000
set toolbox_dir_reg="^[0-9]*.[0-9]*.[0-9]*$"

if exist %path_of_folder%\ (
    for /f %%i in ('dir /OD /B %path_of_folder% ^| findstr /R %toolbox_dir_reg%') do (
        set last_version=%%i
    )
) else (
  echo Path does not exist.
  exit /B
)

if "%last_version%"=="000" (
    echo Cannot Detect Idea Version.
    pause
    exit /B
)


echo last_version is %last_version%

pause