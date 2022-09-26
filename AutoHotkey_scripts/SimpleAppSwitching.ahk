#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Ensures a single instance of the script running at one time

; for HwndWrapper[DefaultDomain;;ffa5699b-fdee-485a-bb85-7ee53438c266]
; and HwndWrapper[OneCommander.exe;;bcd2d438-5355-4498-9ef2-8ca9bf8624e6]
; https://stackoverflow.com/questions/47338659/autohotkey-wildcard-ahk-class-match

Menu, Tray, Icon, Icons/switch.png

;________________________HOTKEY ASSIGNMENT____________________________

F12::Suspend

F13::switch_to_gid()
F14::switch_to_onecommander()
F15::swtich_to_foxit()
F16::switch_to_libreoffice()
F17::switch_to_notepadplusplus()
F18::back()
F19::switch_to_dwgtrueview()

switch_to_firefox()
switch_to_diamond()
switch_to_freecad()

;********************* Current window management START *********************

; Move the current window to the top left of the screen
; ^F12::
; WinMove, A,, 0, 0
; return


; Testing switching between gid windows
; ^F11::
; #IfWinActive, ahk_class TkTopLevel
; GroupAdd, gid_windows_group, ahk_class TkTopLevel
; if WinActive("ahk_class TkTopLevel")
;     GroupActivate, gid_windows_group, r
; else
;     WinActivate ahk_class TkTopLevel 
; return

;********************* Current window management END *********************

;********************* Instant app switching START *********************

; Go back
back(){
    ;; if WinActive("ahk_class MozillaWindowClass")
    ;tooltip, baaaack
    if WinActive("ahk_exe firefox.exe")
        Send ^+{tab}
    if WinActive("ahk_exe OneCommander.exe")
        Send, ^+{Tab}
    if WinActive("ahk_class classFoxitReader")
        Send, ^+{Tab}
    if WinActive("ahk_class Chrome_WidgetWin_1")
        Send ^+{tab}
    if WinActive("ahk_class Notepad++")
        Send ^{PgUp}
    if WinActive("ahk_exe dwgviewr.exe")
        Send, ^+{Tab}
    if WinActive("ahk_exe explorer.exe")
        Send !{left} ;alt left is the explorer shortcut to go "back" or "down" one folder level.
}

; Firefox 
; ahk_class MozillaWindowClass 
; ahk_exe firefox.exe
switch_to_firefox(){
    IfWinNotExist, ahk_class MozillaWindowClass
        Run, C:\Program Files\Mozilla Firefox\firefox.exe
    if WinActive("ahk_class MozillaWindowClass")
        Send, ^{Tab}
    else
        WinActivate ahk_class MozillaWindowClass
}


; GiD 
; ahk_class TkTopLevel 
; ahk_exe gid.exe
switch_to_gid(){
    IfWinNotExist, ahk_class TkTopLevel
        Run, C:\Program Files\GiD\GiD 15.0.3\gid.exe
    WinActivate ahk_class TkTopLevel
}

; Diamond 
; ahk_class HwndWrapper[DefaultDomain;;ffa5699b-fdee-485a-bb85-7ee53438c266] 
; ahk_exe Diamond.exe
switch_to_diamond(){
    IfWinNotExist, ahk_exe Diamond.exe
        Run, C:\Users\kamil\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Diamond\Diamond 2016.appref-ms
    WinActivate ahk_exe Diamond.exe
}

; Notepad++ 
; ahk_class Notepad++ 
; ahk_exe notepad++.exe
switch_to_notepadplusplus(){
    IfWinNotExist, ahk_class Notepad++
        Run, C:\Program Files\Notepad++\notepad++.exe
    if WinActive("ahk_class Notepad++")
        Send, ^{PgDn}
    else
        WinActivate ahk_class Notepad++
}

; LibreOffice Calc
; Those work for all LibreOffice apps
; ahk_class SALFRAME
; ahk_exe soffice.bin
switch_to_libreoffice(){
    IfWinNotExist, ahk_class SALFRAME
        Run, "C:\Program Files\LibreOffice\program\scalc.exe"
    GroupAdd, libreoffice_window_group, ahk_class SALFRAME
    if WinActive("ahk_class ahk_class SALFRAME")
        GroupActivate, libreoffice_window_group, r
    WinActivate ahk_class SALFRAME
}


; Foxit PDF Reader 
; ahk_class classFoxitReader
; ahk_exe FoxitPDFReader.exe
swtich_to_foxit(){
    IfWinNotExist, ahk_class classFoxitReader
        Run, "C:\Program Files (x86)\Foxit Software\Foxit PDF Reader\FoxitPDFReader.exe"
    if WinActive("ahk_class classFoxitReader")
        Send, ^{Tab}
    else
        WinActivate ahk_class classFoxitReader
}

; OneCommader
; ahk_class HwndWrapper[OneCommander.exe;;bcd2d438-5355-4498-9ef2-8ca9bf8624e6]
; ahk_exe OneCommander.exe
switch_to_onecommander(){
    IfWinNotExist, ahk_exe OneCommander.exe
        Run, D:\Programy\OneCommander\OneCommander.exe
    if WinActive("ahk_exe OneCommander.exe")
        Send, ^{Tab}
    WinActivate ahk_exe OneCommander.exe
}

; FreeCAD
; ahk_class Qt5152QWindowIcon
; ahk_exe FreeCAD.exe
switch_to_freecad(){
    IfWinNotExist, ahk_exe FreeCAD.exe
        Run, "C:\Program Files\FreeCAD 0.19\bin\FreeCAD.exe"
    if WinActive("ahk_exe FreeCAD.exe")
        Send, ^{Tab}
    WinActivate ahk_exe FreeCAD.exe
}

; DWG TrueView
; ahk_class AfxMDIFrame140u
; ahk_exe dwgviewr.exe
switch_to_dwgtrueview(){
    IfWinNotExist, ahk_exe dwgviewr.exe
        Run, "C:\Program Files\Autodesk\DWG TrueView 2023 - English\dwgviewr.exe"
    if WinActive("ahk_exe dwgviewr.exe")
        Send, ^{Tab}
    WinActivate ahk_exe dwgviewr.exe
}


; 8
; Explorer
; 9
; Edge
; 10
; ZoomIt
; 11
; VSCode
; 12
; 13
; 14




;********************* Instant app switching END *********************


; Double click for a different funciton in ahk

; F5::
; if (A_TimeSincePriorHotkey != -1 && A_TimeSincePriorHotkey < 150)
;     cnt += 1
; else if (A_TimeSincePriorHotkey > 300)
;     cnt := 0

; if (cnt == 0)
;     var := "one"
; if (cnt == 1)
;     var := "two"

; SetTimer SwitchTabs, -300
; return

; SwitchTabs:
; if (var == "one")
;     Send, ^{Tab}
; if (var == "two")
;     Send, ^+{Tab}
; return
