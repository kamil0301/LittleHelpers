#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Ensures a single instance of the script running at one time

;#IfWinActive, ahk_exe gid.exe

SetKeyDelay, 50, 50

;A script for automating areas creation in GiD (IGES files)

;Button positions (active window):

;Open file:
OpenFileX := 50
OpenFileY := 65
;Dont save changes to project:
DontSaveX := 160
DontSaveY := 115
;Current project:
CurrentProjectX := 200
CurrentProjectY := 110
;Open project:
OpenProjectX := 765
OpenProjectY := 300
;
;Delete:
DeleteX := 20
DeleteY := 400
;Surfaces:
SurfacesX := 100
SurfacesY := 475

;Files:
FilesX := 25
FilesY := 40
;Export:
ExportX := 100
ExportY := 180
;IGES:
IgesX := 300
IgesY := 180
;SaveIges:
SaveIgesX := 430
SaveIgesY := 410


;Open the file again
F13::
MouseMove, OpenFileX, OpenFileY
Click
Sleep, 300
MouseMove, DontSaveX, DontSaveY
Click
Sleep, 300
MouseMove, CurrentProjectX, CurrentProjectY
Click
MouseMove, OpenProjectX, OpenProjectY
Click
return

;Delete -> Surfaces
F14::
MouseMove, DeleteX, DeleteY
Click
Sleep, 300
MouseMove, SurfacesX, SurfacesY
Click
return

;Export Iges file
F15::
MouseMove, FilesX, FilesY
Sleep, 100
Click
Sleep, 1000
MouseMove, ExportX, ExportY
Click
Sleep, 500
MouseMove, IgesX, IgesY
Click
Sleep, 300
MouseMove, SaveIgesX, SaveIgesY
return

;Click and open the project again, and click delete surfaces
F16::
Click
Sleep, 2000
Send, {F13}
Sleep, 5500
Send, {F14}
return

;Save current project mouse position
F17::
MouseGetPos, CurrentProjectX, CurrentProjectY
ToolTip, Position Saved
SetTimer, RemoveToolTip, -3000
return

RemoveToolTip:
ToolTip
return

;End the selection, and export to dxf with the correct name
F18::
Send, {Esc}
Sleep, 100
Send, {F15}
Sleep, 400
Send, {CtrlDown}{F6}{CtrlUp}
Sleep, 50
Send, {F16}
return