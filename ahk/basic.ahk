;;; ==========================================
;;; Author  : ipcrystal
;;; Email   : mimotronik@gmail.com
;;; Desc    : Windows Expand AutoHotkey Script
;;; ==========================================
;;;    #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;;;    ; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
;;;    SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapsLockState,AlwaysOff
SetStoreCapslockMode,Off

;高进程
Process Priority,,High

; Reload Ahk Script
CapsLock &  \::Reload


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

capslock & c::
send ^{Insert}
return

capslock & v::
send +{Insert}
return

capslock & -::
WinMinimize,A
return

capslock & +::
WinMaximize,A
return

capslock & w::
WinMinimize,A
return

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

; F5
>!Enter::
Send {F5}
return

; F5
capslock & 5::
Send {F5}
return

; F5
capslock & Enter::
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