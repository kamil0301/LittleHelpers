﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Ensures a single instance of the script running at one time

Menu, Tray, Icon, Icons/construction.png
counter = 1 ;For the Counter


;********************* Copy and pasting START *********************
;------UNUSED
;All of them are defined in Logitech Gaming Software currently

;Copy all
;-----------------------------------Hotkey to assign
; Send, {Ctrl Down}ac{Ctrl Up}
; return

;Replace 
;-----------------------------------Hotkey to assign
; Send, {Ctrl Down}av{Ctrl Up}
; return

;Select all
;-----------------------------------Hotkey to assign
; Send, {Ctrl Down}a{Ctrl Up}
; return

;Cut
F24::
Send, {Ctrl Down}x{Ctrl Up}
return

;Copy filename
^F15::
Send, {F2}{Ctrl Down}c{Ctrl Up}{Escape}
return

;Copy filename with extention
^F16::
Send, {F2}{Ctrl Down}ac{Ctrl Up}{Escape}
return

;********************* Copy and pasting END *********************
;********************* Counter START *********************

;Reset the counter
^F17::
counter = 1
ToolTip, Counter: %counter%
SetTimer, RemoveToolTip, -3000
return

;Change the current value of the counter
^F18::
InputBox, counter, Counter, Input the value starting value of the counter 
return

;Display the counter value
^F19::
ToolTip, Counter: %counter%
SetTimer, RemoveToolTip, -3000
return

;Paste the counter value
^F20::
Send, %counter%
return

;Paste and increment the counter value
^F21::
Send, %counter%
counter += 1
return

;Paste the clipboard and the counter value, then increment counter
;-----------------------------------Hotkey to assign
; Send, {Ctrl Down}v{Ctrl Up}
; Send, %counter%
; counter += 1
; return

;Replace with clipboard and the counter value, then increment counter
^F22::
Send, {Ctrl Down}av{Ctrl Up}
Send, %counter%
counter += 1
return

;Increment and display the counter value
^F23::
counter += 1
ToolTip, Counter: %counter%
SetTimer, RemoveToolTip, -3000
return

;Decrement and display the counter value
^F24::
counter -= 1
ToolTip, Counter: %counter%
SetTimer, RemoveToolTip, -3000
return

RemoveToolTip:
ToolTip
return

;********************* Counter END *********************
;********************* Active in GiD START *********************
#IfWinActive, ahk_class TkTopLevel

;Replace , with . (for numpad usage in GiD)
:*?:,::.

; Hold Shift + Left Mouse Click when holding Mouse wheel/middle mouse button
; AKA CAD navigation (panning) in GiD
; A bug: when gid window active, and panning in autocad, it f***s up your left mouse button? and then it needs a computer restart? 

; MButton::
; if (not GetKeyState("LShift", "P"))
;     Send, {ShiftDown}{RButton Down}
; return
; MButton Up::
; Send, {ShiftUp}{RButton Up}
; return


;********************* Active in GiD END *********************
;********************* Active in AutoCAD START *********************
#IfWinActive, ahk_exe acad.exe

:*?:,::.


;********************* Active in AutoCAD END *********************
