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