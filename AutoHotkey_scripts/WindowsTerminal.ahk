#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Ensures a single instance of the script running at one time

; Use Window Spy (indcluded with ahk) to get WinTitle, ahk_exe, ahk_class and other

Menu, Tray, Icon, Icons/wt_logo.png

; Uruchom PowerToys Run i wpisz "<" - zmiana aktywnych okien
^!+g::
Send {ControlDown}{ShiftDown}{AltDown}f{ControlUp}{ShiftUp}{AltUp}<
return

#IfWinActive, ahk_exe WindowsTerminal.exe

; --------- Aktualne ---------



; --------- Inne skrypty ---------

::ahktex::D:\GitHub\LittleHelpers\AutoHotkey_scripts\TeXMaker.ahk
::ahkgid::D:\GitHub\LittleHelpers\AutoHotkey_scripts\Construction.ahk
::ahkdia::D:\GitHub\LittleHelpers\AutoHotkey_scripts\Diamond.ahk
::ahkswitch::D:\GitHub\LittleHelpers\AutoHotkey_scripts\SimpleAppSwitching.ahk

; --------- GitHub Folder ---------

::github::D:\GitHub\
::ahks::D:\GitHub\LittleHelpers\AutoHotkey_scripts\
::fireeng::D:\GitHub\fireeng-tools\structures\
::mcsteel::D:\GitHub\mcsteel\
::iso2nf::python D:\GitHub\fireeng-tools\structures\iso2nf.py -s C:\SAFIR\safir.exe -c .\config\ -r 
::repairrelax::python D:\GitHub\fireeng-tools\structures\safir_tools.py repair_relax 

; --------- Programy ---------

::safirexe::C:\SAFIR\safir.exe

; --------- DYSK C ---------

::desk::C:\Users\kamil\Desktop\
::autostart::'C:\Users\kamil\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup'

; --------- DYSK D ---------

::cr::D:\CONSULTRISK\

::crl::D:\CR\1_Projekty\

; --------- Aktywne w PowerToys Run ---------

#IfWinActive, ahk_exe PowerToys.PowerLauncher.exe
::ahktex::D:\GitHub\LittleHelpers\AutoHotkey_scripts\TeXMaker.ahk
::ahkgid::D:\GitHub\LittleHelpers\AutoHotkey_scripts\Construction.ahk
::ahkdia::D:\GitHub\LittleHelpers\AutoHotkey_scripts\Diamond.ahk
::ahkswitch::D:\GitHub\LittleHelpers\AutoHotkey_scripts\SimpleAppSwitching.ahk
::github::D:\GitHub\
::vial::D:\Wszystko\Klawiatura\Vial\Vial.exe