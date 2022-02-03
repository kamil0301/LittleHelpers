#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Ensures a single instance of the script running at one time

; Move the current window to the top left of the screen
^F12::
WinMove, A,, 0, 0
return


; Switching between gid windows
^F11::
#IfWinActive, ahk_class TkTopLevel
GroupAdd, gid_windows_group, ahk_class TkTopLevel
if WinActive("ahk_class TkTopLevel")
    GroupActivate, gid_windows_group, r
else
    WinActivate ahk_class TkTopLevel 
return
