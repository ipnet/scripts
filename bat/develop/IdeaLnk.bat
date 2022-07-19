@echo off

setlocal EnableDelayedExpansion

:: 创建idea最新的快捷方式
:: 1. 删除原来的快捷方式
del /f /q "idea.lnk"
set idea_folder=%localappdata%\JetBrains\Toolbox\apps\IDEA-U\ch-0
set idea_last_version=000
set toolbox_dir_reg="^[0-9]*.[0-9]*.[0-9]*$"

if exist %idea_folder%\ (
    for /f %%i in ('dir /OD /B %idea_folder% ^| findstr /R %toolbox_dir_reg%') do (
        set idea_last_version=%%i
    )
) else (
  echo %idea_folder% Path does not exist.
)

if "%idea_last_version%"=="000" (
    echo Cannot find idea !
) else (
    echo Create idea.lnk on %shortcut_folder%


    set idea_lnk_name=idea.lnk
    set idea_lnk_path=%idea_folder%\%idea_last_version%
    set idea_lnk_exec=%idea_folder%\%idea_last_version%\bin\idea64.exe
    
    :: set "LinkName=idea.lnk"
    set WrkDir=%idea_folder%\%idea_last_version%\bin
    set ThePath=%idea_folder%\%idea_last_version%\bin\idea64.exe
    
    
    mshta VBScript:Execute("Set Shell=CreateObject(""WScript.Shell""):Set Link=Shell.CreateShortcut(""idea.lnk""):Link.TargetPath=""!ThePath!"":Link.WorkingDirectory=""!WrkDir!"":Link.Save:close"^)

    dir | findstr idea
)

pause









