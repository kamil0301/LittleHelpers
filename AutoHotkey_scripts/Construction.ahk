#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

counter = 1 ;For the Counter


;********************* Copy and pasting START *********************
;UNUSED
;All of them are defined in Logitech Gaming Software currently

;Copy all
^F13::
Send, {Ctrl Down}ac{Ctrl Up}
return

;Replace 
^F14::
Send, {Ctrl Down}av{Ctrl Up}
return

;Select all
^F15::
Send, {Ctrl Down}a{Ctrl Up}
return

;Copy filename with extention
^F16::
Send, {F2}{Ctrl Down}ac{Ctrl Up}{Escape}
return

;********************* Copy and pasting END *********************
;********************* Counter START *********************

;Reset the counter
^F1::
ToolTip, Counter: %counter%
SetTimer, RemoveToolTip, -3000
return

;Change the current value of the counter
^F2::
InputBox, counter, Counter, Input the value starting value of the counter 
return

;Display the counter value
^F3::
ToolTip, Counter: %counter%
SetTimer, RemoveToolTip, -3000
return

;Paste the counter value
^F4::
Send, %counter%
return

;Paste and increment the counter value
^F5::
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
^F6::
Send, {Ctrl Down}av{Ctrl Up}
Send, %counter%
counter += 1
return

;Increment and display the counter value
^F7::
counter += 1
ToolTip, Counter: %counter%
SetTimer, RemoveToolTip, -3000
return

;Decrement and display the counter value
^F8::
counter -= 1
ToolTip, Counter: %counter%
SetTimer, RemoveToolTip, -3000
return

RemoveToolTip:
ToolTip
return

;********************* Counter END *********************
