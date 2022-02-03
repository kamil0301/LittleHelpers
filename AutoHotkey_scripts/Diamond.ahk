#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ahk_class HwndWrapper[DefaultDomain;;62773214-9e17-409a-b4ac-8a6aff5c0ee7]
; ahk_exe Diamond.exe
#IfWinActive, ahk_exe Diamond.exe
Menu, Tray, Icon, Icons/diamond.png

; Add nodes or edges to the chart
::points::
nodes := StrSplit(Clipboard, A_Space)
Loop % nodes.MaxIndex(){
    ; MsgBox % "Element number " . A_Index . " is " . nodes[A_Index]
    Send, % nodes[A_Index]
    Send, {Tab}{Enter}{ShiftDown}{Tab}{ShiftUp}
}
return

; Generate displacement charts
::disp::
; chart_names := [dx, dy, dz, d4, d5, d6, d7]

Send, {ShiftDown}{Tab 2}{ShiftUp}{Enter}
Sleep, 100
Send, {Down}
Sleep, 2000
; Loop 2 {
;     Send, {Up}
;     Sleep, 1000
; }
MouseMove, 340, 1000
Send, {WheelDown}
MouseMove, 50, 425
Click
Sleep, 200
Send, dy{Enter}
Sleep, 300

; chart_names := [dz, d4, d5, d6, d7]
chart_names := ["dz", "d4", "d5", "d6", "d7"]

Loop % chart_names.MaxIndex(){
    MouseMove, 60, 375
    Click
    Sleep, 200
    Send, {ShiftDown}{Tab 2}{ShiftUp}{Enter}
    Sleep, 200
    Send, {Down}
    Sleep, 2000
    MouseMove, 340, 1000
    Send, {WheelDown}
    MouseMove, 50, 425
    Click
    Sleep, 500
    Send, % chart_names[A_Index]
    Send, {Enter}
    Sleep, 250
}

return

::beams::
MouseMove, 340, 1000
Send, {WheelDown}
MouseMove, 50, 425
Click
Sleep, 200
Send, N{Enter}
Sleep, 300

; chart_names := ["N", "Vy"]
chart_names := ["Vy", "Vz", "Mr2", "My", "Mz", "Mw"]
Loop % chart_names.MaxIndex(){
    MouseMove, 60, 375
    Click
    Sleep, 200
    Send, {ShiftDown}{Tab 3}{ShiftUp}{Enter}
    Sleep, 200
    Send, {Down}
    Sleep, 2000
    MouseMove, 340, 1000
    Send, {WheelDown}
    MouseMove, 50, 425
    Click
    Sleep, 500
    Send, % chart_names[A_Index]
    Send, {Enter}
    Sleep, 250
}

return



; Generate beams charts (forces, moments)

; Generate frame images with displacements (?)