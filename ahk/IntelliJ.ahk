
SetCapsLockState,AlwaysOff
SetStoreCapslockMode,Off

;高进程
Process Priority,,High

; Reload Ahk Script
CapsLock & \::Reload

;;; windows 快捷打开常用软件

capslock & f::
if WinExist("ahk_exe chrome.exe")
    WinActivate,ahk_exe chrome.exe
else
    Run,C:\Program Files\Google\Chrome\Application\chrome.exe
    return

;capslock & t::
;if WinExist("ahk_exe ConEmu64.exe")
;    WinActivate,ahk_exe ConEmu64.exe
;else
;    Run,C:\shortcut\cmder.lnk
;    return

; YoudaoNote.exe ydnote.lnk\
capslock & y::
if WinExist("ahk_exe Notion.exe")
    WinActivate,ahk_exe Notion.exe
else
    Run,C:\shortcut\Notion.lnk
    return

capslock & r::
if WinExist("ahk_exe idea64.exe")
    WinActivate,ahk_exe idea64.exe
else
    Run,C:\shortcut\idea.lnk
    return

capslock & i::
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
if WinExist("ahk_exe goland64.exe")
    WinActivate,ahk_exe goland64.exe
else
    Run,C:\shortcut\goland.lnk
    return

capslock & x::
if WinExist("ahk_exe Code.exe")
    WinActivate,ahk_exe Code.exe
else
    Run,C:\shortcut\vscode.lnk
    return


capslock & 2::
Send {F2}
return

capslock & 3::
if WinExist("ahk_exe notepad++.exe")
    WinActivate,ahk_exe notepad++.exe
else
    Run,C:\shortcut\notepad++.lnk
    return

;capslock & 3::
;if WinExist("ahk_exe navicat.exe")
;    WinActivate,ahk_exe navicat.exe
;else
;    Run,C:\shortcut\navicat.lnk
;    return


capslock & 4::
if WinExist("ahk_exe Postman.exe")
    WinActivate,ahk_exe Postman.exe
else
    Run,C:\shortcut\postman.lnk
    return

capslock & t::
if WinExist("ahk_exe MobaXterm.exe")
    WinActivate,ahk_exe MobaXterm.exe
else
    Run,C:\shortcut\mobaxterm.lnk
    return

;;; motion

;CapsLock::return

;  ^ - Ctrl ,  + - Shift ; ! - Alt
CapsLock & h::
if GetKeyState("Shift") {
    if GetKeyState("Alt") {
        Send ^+{Left}
        return
    }
    else if GetKeyState("Ctrl") {
        Send !+{Left}
        return
    }
    else {
        Send +{Left}
        return
    }
}
else if GetKeyState("Ctrl") {
    if (GetKeyState("Alt")) {
        ; ctrl + alt + Left
        Send ^!{Left}
        return
    }
    else {
        ; alt + Left
        Send !{Left}
        return
    }
}
else if GetKeyState("Alt"){
    ; ctrl + Left
    Send ^{Left}
    return
}
else {
    Send {Left}
    return
}

CapsLock & j::
if GetKeyState("Shift") {
    if GetKeyState("Alt") {
        Send ^+{Down}
        return
    }
    else if GetKeyState("Ctrl") {
        Send !+{Down}
        return
    }
    else {
        Send +{Down}
        return
    }
}
else if GetKeyState("Ctrl") {
    if (GetKeyState("Alt")) {
        ; ctrl + alt + Down
        Send ^!{Down}
        return
    }
    else {
        ; alt + Down
        Send !{Down}
        return
    }
}
else if GetKeyState("Alt"){
    ; ctrl + Down
    Send ^{Down}
    return
}
else {
    Send {Down}
    return
}


CapsLock & k::
if GetKeyState("Shift") {
    if GetKeyState("Alt") {
        Send ^+{Up}
        return
    }
    else if GetKeyState("Ctrl") {
        Send !+{Up}
        return
    }
    else {
        Send +{Up}
        return
    }
}
else if GetKeyState("Ctrl") {
    if (GetKeyState("Alt")) {
        ; ctrl + alt + Up
        Send ^!{Up}
        return
    }
    else {
        ; alt + Up
        Send !{Up}
        return
    }
}
else if GetKeyState("Alt"){
    ; ctrl + Up
    Send ^{Up}
    return
}
else {
    Send {Up}
    return
}

CapsLock & l::
if GetKeyState("Shift") {
    if GetKeyState("Alt") {
        Send ^+{Right}
        return
    }
    else if GetKeyState("Ctrl") {
        Send !+{Right}
        return
    }
    else {
        Send +{Right}
        return
    }
}
else if GetKeyState("Ctrl") {
    if (GetKeyState("Alt")) {
        ; ctrl + alt + Right
        Send ^!{Right}
        return
    }
    else {
        ; alt + Right
        Send !{Right}
        return
    }
}
else if GetKeyState("Alt"){
    ; ctrl + Right
    Send ^{Right}
    return
}
else {
    Send {Right}
    return
}

; emacs
capslock & a::
if GetKeyState("Alt")
    Send ^{Home}
else
    send {Home}
return

capslock & e::
if GetKeyState("Alt", "D")
    Send ^{End}
else
    send {End}
return

capslock & '::
Send ```
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
Send {Raw}-- ----------------------------`n
Send {Raw}-- `n
Send {Raw}-- ----------------------------`n
Send {UP 2}{END}
return

::ahkjdbcurl::
Send {Raw}jdbc:mysql://localhost:3306/mysql?characterEncoding=utf-8&autoReconnect=true&failOverReadOnly=false&useSSL=false&serverTimezone=Asia/Shanghai
return

;;; gradle
::gmaven::
Send maven {{} url 'https://maven.aliyun.com/repository/public/' {}}
return

::glang3::
Send {Raw}implementation 'org.apache.commons:commons-lang3:3.12.0'
return

::gguava::
Send {Raw}implementation 'com.google.guava:guava:31.0.1-jre'
return

::gio::
Send {Raw}implementation 'commons-io:commons-io:2.11.0'
return

::gfastjson::
Send {Raw}implementation 'com.alibaba:fastjson:1.2.75'
return

::gstarterweb::
Send {Raw}implementation 'org.springframework.boot:spring-boot-starter-web'
return

::gredis::
Send {Raw}implementation 'org.springframework.boot:spring-boot-starter-data-redis'`n
Send {Raw}implementation 'org.apache.commons:commons-pool2:2.9.0'
return

::gmybatis::
Send {Raw}implementation 'com.baomidou:mybatis-plus-boot-starter:3.4.1'
return

::gjdbcdriver::
Send {Raw}implementation 'mysql:mysql-connector-java'
return

::gaop::
Send {Raw}implementation 'org.springframework.boot:spring-boot-starter-aop'
return

::gsharding::
Send {Raw}implementation 'org.apache.shardingsphere:sharding-jdbc-spring-boot-starter:4.1.1'
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
        Send ``create_time`` datetime not null DEFAULT now() comment 'create_time',`n
        Send ``update_time`` datetime not null DEFAULT now() ON UPDATE now() comment 'update_time'`,`n
        Send primary key (``id``)
        Send {Home}{Down 2}{END}
        Send engine = InnoDB ROW_FORMAT = DYNAMIC CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci comment = '%TableComment%'`;
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

::nohupnull::
Send {Raw}nohup    >/dev/null 2>&1 &
Send {LEFT 19}
return

::nohuplog::
Send {Raw}nohup  > nohup.log 2>&1&
Send {LEFT 18}
return

::nohuppid::
Send {Raw}nohup  >/dev/null 2>&1 & echo $! > nohup.pid
Send {LEFT 38}
return

::nohupall::
Send {Raw}nohup  > nohup.log 2>&1& echo $! > nohup.pid
Send {LEFT 38}
return