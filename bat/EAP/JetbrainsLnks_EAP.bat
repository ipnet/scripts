@echo off

:: 延迟变量
setlocal EnableDelayedExpansion

set shortcut_folder=C:\shortcut\

for %%t in (idea,datagrip) do (

    :: 删除工具原有的快捷方式
    del /f /q "C:\shortcut\%%t.lnk"
    
    :: idea特殊处理
    if "%%t"=="idea" (
        set tool_folder=%localappdata%\JetBrains\Toolbox\apps\IDEA-U\ch-1
    ) else (
        set tool_folder=%localappdata%\JetBrains\Toolbox\apps\%%t\ch-1
    )
    
    
    set tool_last_version=000
    
    set toolbox_dir_reg="^[0-9]*.[0-9]*.[0-9]*$"
    if exist !tool_folder!\ (
        for /f %%i in ('dir /OD /B !tool_folder! ^| findstr /R !toolbox_dir_reg!') do (
            set tool_last_version=%%i
        )
    ) else (
      echo %%t does not exist.
    )
    
    echo %%t last version is !tool_last_version!

    if "!tool_last_version!"=="000" (
        echo Cannot find idea !
    ) else (
        echo Create %%t.lnk on %shortcut_folder%
        cd /d %shortcut_folder%
        
        :: set "LinkName=idea.lnk"
        set LnkName=%%t.lnk
        set WrkDir=!tool_folder!\!tool_last_version!\bin
        set ThePath=!tool_folder!\!tool_last_version!\bin\%%t64.exe
        
        :: 创建工具最新的快捷方式
        mshta VBScript:Execute("Set Shell=CreateObject(""WScript.Shell""):Set Link=Shell.CreateShortcut(""!LnkName!""):Link.TargetPath=""!ThePath!"":Link.WorkingDirectory=""!WrkDir!"":Link.Save:close"^)

        dir | findstr %%t
    )
    
    :: 版本重置
    set tool_last_version=000
)

pause








