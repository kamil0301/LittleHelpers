#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Ensures a single instance of the script running at one time (reloads if open again)

; ahk_class HwndWrapper[DefaultDomain;;62773214-9e17-409a-b4ac-8a6aff5c0ee7]
; ahk_exe Diamond.exe
#IfWinActive, ahk_exe Diamond.exe
Menu, Tray, Icon, Icons/diamond.png

; Add nodes or edges to the chart
::points::
nodes := StrSplit(Clipboard, A_Space)
Loop % nodes.MaxIndex(){
    Send, % nodes[A_Index]
    Send, {Tab}{Enter}{ShiftDown}{Tab}{ShiftUp}
}
return

; Generate displacement charts
::disp::
Send, {ShiftDown}{Tab 2}{ShiftUp}{Enter}
Sleep, 100
Send, {Down}
Sleep, 2000
Click, 340 1000 WheelDown
Click, 50 425
Sleep, 200
Send, dy{Enter}
Sleep, 300

chart_names := ["dz", "d4", "d5", "d6", "d7"]
Loop % chart_names.MaxIndex(){
    Click, 60 375
    Sleep, 200
    Send, {ShiftDown}{Tab 2}{ShiftUp}{Enter}
    Sleep, 200
    Send, {Down}
    Sleep, 2000
    Click, 340 1000 WheelDown
    Click, 50 425
    Sleep, 500
    Send, % chart_names[A_Index]
    Send, {Enter}
    Sleep, 250
}

return


; Generate beams charts (forces, moments)
::beams::
Click, 340 1000 WheelDown
Click, 50 425
Sleep, 200
Send, N{Enter}
Sleep, 300

chart_names := ["Vy", "Vz", "Mr2", "My", "Mz", "Mw"]
Loop % chart_names.MaxIndex(){
    Click, 60 375
    Sleep, 200
    Send, {ShiftDown}{Tab 3}{ShiftUp}{Enter}
    Sleep, 200
    Send, {Down}
    Sleep, 2000
    Click, 340 1000 WheelDown
    Click, 50 425
    Sleep, 500
    Send, % chart_names[A_Index]
    Send, {Enter}
    Sleep, 250
}

return


; Generate frame images with displacements (?)
