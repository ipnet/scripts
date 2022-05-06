;;; ==========================================
;;; Author  : ipcrystal
;;; Email   : mimotronik@gmail.com
;;; Desc    : Windows Expand AutoHotkey Script
;;; ==========================================
;;;    #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;;;    ; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
;;;    SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;管理员运行
;if not A_IsAdmin
;{
;   Run *RunAs "%A_ScriptFullPath%"
;   ExitApp
;}

SetCapsLockState,AlwaysOff
SetStoreCapslockMode,Off

;高进程
Process Priority,,High

; Reload Ahk Script
CapsLock &  \::Reload

;;; windows 快捷打开常用软件

capslock & f::
if WinExist("ahk_exe chrome.exe")
    WinActivate,ahk_exe chrome.exe
else
    Run,C:\Program Files\Google\Chrome\Application\chrome.exe
    return

capslock & t::
if WinExist("ahk_exe ConEmu64.exe")
    WinActivate,ahk_exe ConEmu64.exe
else
    Run,C:\shortcut\cmder.lnk
    return

capslock & y::
if WinExist("ahk_exe YoudaoNote.exe")
    WinActivate,ahk_exe YoudaoNote.exe
else
    Run,C:\shortcut\ydnote.lnk
    return

capslock & r::
if WinExist("ahk_exe idea64.exe")
    WinActivate,ahk_exe idea64.exe
else
    Run,C:\shortcut\idea.lnk
    return

capslock & d::
if WinExist("ahk_exe datagrip64.exe")
    WinActivate,ahk_exe datagrip64.exe
else
    Run,C:\shortcut\datagrip.lnk
    return

capslock & g::
if WinExist("ahk_exe GithubDesktop.exe")
    WinActivate,ahk_exe GithubDesktop.exe
else
    Run,C:\shortcut\GithubDesktop.lnk
    return

capslock & z::
if WinExist("ahk_exe Code.exe")
    WinActivate,ahk_exe Code.exe
else
    Run,C:\shortcut\vscode.lnk
    return

capslock & 3::
if WinExist("ahk_exe navicat.exe")
    WinActivate,ahk_exe navicat.exe
else
    Run,C:\shortcut\navicat.lnk
    return

capslock & 2::
if WinExist("ahk_exe notepad++.exe")
    WinActivate,ahk_exe notepad++.exe
else
    Run,C:\shortcut\notepad++.lnk
    return

capslock & 4::
if WinExist("ahk_exe Postman.exe")
    WinActivate,ahk_exe Postman.exe
else
    Run,C:\shortcut\postman.lnk
    return


capslock & x::
if WinExist("ahk_exe MobaXterm.exe")
    WinActivate,ahk_exe MobaXterm.exe
else
    Run,C:\shortcut\mobaxterm.lnk
    return

;;; motion
CapsLock & h::
if GetKeyState("Shift", "D") {
    if GetKeyState("Alt", "D") {
        Send +!{Left}
        return
    }
    else if GetKeyState("Ctrl", "D") {
        Send ^+{Left}
        return
    }
    else {
        Send +{Left}
        return
    }
}
else if GetKeyState("Ctrl", "D") {
    if (GetKeyState("Alt", "D")) {
        Send ^!{Left}
        return
    }
    else {
        Send ^{Left}
        return
    }
}
else if GetKeyState("Alt", "D"){
    Send !{Left}
    return
}
else {
    Send {Left}
    return
}

CapsLock & j::
if GetKeyState("Shift", "D") {
    if GetKeyState("Alt", "D") {
        Send +!{Down}
        return
    }
    else if GetKeyState("Ctrl", "D") {
        Send ^+{Down}
        return
    }
    else {
        Send +{Down}
        return
    }
}
else if GetKeyState("Ctrl", "D") {
    if (GetKeyState("Alt", "D")) {
        Send ^!{Down}
        return
    }
    else {
        Send ^{Down}
        return
    }
}
else if GetKeyState("Alt", "D"){
    Send !{Down}
    return
}
else {
    Send {Down}
    return
}

CapsLock & k::
if GetKeyState("Shift", "D") {
    if GetKeyState("Alt", "D") {
        Send +!{Up}
        return
    }
    else if GetKeyState("Ctrl", "D") {
        Send ^+{Up}
        return
    }
    else {
        Send +{Up}
        return
    }
}
else if GetKeyState("Ctrl", "D") {
    if (GetKeyState("Alt", "D")) {
        Send ^!{Up}
        return
    }
    else {
        Send ^{Up}
        return
    }
}
else if GetKeyState("Alt", "D"){
    Send !{Up}
    return
}
else {
    Send {Up}
    return
}

CapsLock & l::
if GetKeyState("Shift", "D") {
    if GetKeyState("Alt", "D") {
        Send +!{Right}
        return
    }
    else if GetKeyState("Ctrl", "D") {
        Send ^+{Right}
        return
    }
    else {
        Send +{Right}
        return
    }
}
else if GetKeyState("Ctrl", "D") {
    if (GetKeyState("Alt", "D")) {
        Send ^!{Right}
        return
    }
    else {
        Send ^{Right}
        return
    }
}
else if GetKeyState("Alt", "D"){
    Send !{Right}
    return
}
else {
    Send {Right}
    return
}

; emacs
capslock & a::
if GetKeyState("Ctrl", "D")
    Send ^{Home}
else
    send {Home}
return

capslock & e::
if GetKeyState("Ctrl", "D")
    Send ^{End}
else
    send {End}
return

capslock & b::
Send ^{Left}
return

;capslock & ,::
;Send {PgUp}
;return

capslock & .::
Send {RButton}
return

capslock & p::
send {XButton1}
return

capslock & n::
send {XButton2}
return

capslock & [::
send {Esc}
return

; windows 复制
capslock & c::
send ^{Insert}
return

; windows 粘贴
capslock & v::
send +{Insert}
return

capslock & -::
WinMinimize,A
return

; 最大化当前窗口
capslock & +::
WinMaximize,A
return

; 最小化当前窗口
capslock & w::
WinMinimize,A
return

; 关闭当前窗口
capslock & q::
WinClose,A
return

; 音量静音
capslock & F10::
Send {Volume_Mute}
return

; 音量静音
capslock & F11::
Send {Volume_Down}
return

; 音量静音
capslock & F12::
Send {Volume_UP}
return

; F1
capslock & 1::
Send {F1}
return

; F5
>!Enter::
Send {F5}
return

; F5
capslock & 5::
Send {F5}
return

; RightAlt + Backspace -> Del
>!Backspace::
Send {Delete}
return

Capslock & Backspace::
Send ^{Backspace}
return

; win + space 切换输入法
capslock & space::
Send #{Space}
return

;;; markdown
::fc2::
Send {# 2} <font color=navy></font>{LEFT 7}
return

::fc3::
Send {# 3} <font color=indigo></font>{LEFT 7}
return

::fc4::
Send {# 4} <font color=purple></font>{LEFT 7}
return

::fc5::
Send {# 5} <font color=brown></font>{LEFT 7}
return

::fred::
Send <font color=red></font>{LEFT 7}
return

::fblue::
Send <font color=blue></font>{LEFT 7}
return

::mdcd::
Send ```````n`n``````{UP 2}
return

::mdapi::
Send {# 2} 请求参数`n``````json`n`n```````n{# 2} 返回结果`n``````json`n`n``````
return

;;; sql comments
::sqlcmt::
Send -- ----------------------------`n
Send -- `n
Send -- ----------------------------`n
Send {UP 2}{END}
return

::githubclone::
Send git clone https://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@github.com/ipcrystal/
return

::gitckclean::
Send git checkout . && git clean -xdf
return


::myjdbcurl::
Send jdbc:mysql://localhost:3306/mysql?characterEncoding=utf-8&autoReconnect=true&failOverReadOnly=false&useSSL=false&serverTimezone=Asia/Shanghai
return

;;; gradle
::gmaven::
Send maven {{} url 'https://maven.aliyun.com/repository/public/' {}}
return

::glang3::
Send implementation 'org.apache.commons:commons-lang3:3.12.0'
return

::gguava::
Send implementation 'com.google.guava:guava:31.0.1-jre'
return

::gio::
Send implementation 'commons-io:commons-io:2.11.0'
return

::gradlefastjson::
Send implementation 'com.alibaba:fastjson:1.2.75'
return

::gweb::
Send implementation 'org.springframework.boot:spring-boot-starter-web'
return

::gredis::
Send implementation 'org.springframework.boot:spring-boot-starter-data-redis'`n    implementation 'org.apache.commons:commons-pool2:2.9.0'
return

::gmybatis::
Send implementation 'com.baomidou:mybatis-plus-boot-starter:3.4.1'
return

::gjdbcdriver::
Send implementation 'mysql:mysql-connector-java'
return

::gaop::
Send implementation 'org.springframework.boot:spring-boot-starter-aop'
return

::gsharding::
Send implementation 'org.apache.shardingsphere:sharding-jdbc-spring-boot-starter:4.1.1'
return

::dockerexec::
Send docker exec -it  /bin/bash{LEFT 10}
return

::mysqllogin::
Send mysql -P 3306 -u root -h -p{LEFT 3}
return

::oracledate::
Send to_date('2020/01/01 00:00:00', 'YYYY/MM/DD HH24:MI:SS'){LEFT 42}
return

CapsLock & m::
InputBox, TableName, Table Name, Please enter a table name., , 640, 120
if ErrorLevel {
    MsgBox, CANCEL was pressed.
}
else {
    InputBox, TableComment, Table Comment, Please enter a table comment., , 640, 120
    if ErrorLevel {
        MsgBox, CANCEL was pressed.
    }
    else {
        ; fix input bug
        Send x^{Backspace}
        Send drop table if exists %TableName%`;`n`n
        Send create table %TableName%`(`){LEFT}`n`n{UP}
        Send ``id``  bigint(20) unsigned not null auto_increment comment 'id',`n`n
        Send ``create_time`` datetime not null DEFAULT CURRENT_TIMESTAMP comment 'create_time',`n
        Send ``update_time`` datetime not null DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment 'update_time'`,`n
        Send primary key (``id``)
        Send {Home}{Down 2}{END}
        Send engine = InnoDB ROW_FORMAT = DYNAMIC comment = '%TableComment%'`;
    }
}
return


;Centos
::fwaddport::
Send firewall-cmd --zone=public --add-port=-/tcp --permanent{LEFT 16}
return

::fwrmport::
Send firewall-cmd --zone=public --remove-port=-/tcp --permanent{LEFT 16}
return
