#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Ensures a single instance of the script running at one time

; Use Window Spy (indcluded with ahk) to get WinTitle, ahk_exe, ahk_class and other

Menu, Tray, Icon, Icons/wt_logo.png
#IfWinActive, ahk_exe WindowsTerminal.exe

; --------- Aktualne ---------



; --------- Inne skrypty ---------

::ahktex::C:\Users\kamil\Documents\GitHub\LittleHelpers\AutoHotkey_scripts\TeXMaker.ahk
::ahkgid::C:\Users\kamil\Documents\GitHub\LittleHelpers\AutoHotkey_scripts\Construction.ahk
::ahkdia::C:\Users\kamil\Documents\GitHub\LittleHelpers\AutoHotkey_scripts\Diamond.ahk
::ahkswitch::C:\Users\kamil\Documents\GitHub\LittleHelpers\AutoHotkey_scripts\SimpleAppSwitching.ahk

; --------- GitHub Folder ---------

::github::C:\Users\kamil\Documents\GitHub\
::ahks::C:\Users\kamil\Documents\GitHub\LittleHelpers\AutoHotkey_scripts\
::fireeng::C:\Users\kamil\Documents\GitHub\fireeng-tools\structures\
::mcsteel::C:\Users\kamil\Documents\GitHub\mcsteel\
::iso2nf::python C:\Users\kamil\Documents\GitHub\fireeng-tools\structures\iso2nf.py -s C:\SAFIR\safir.exe -c .\config\ -r 
::repair::python C:\Users\kamil\Documents\GitHub\fireeng-tools\structures\safir_tools.py repair_relax 

; --------- Programy ---------

::safirexe::C:\SAFIR\safir.exe

; --------- DYSK C ---------

::desk::C:\Users\kamil\Desktop\
::autostart::'C:\Users\kamil\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup'

; --------- DYSK D ---------

::cr::D:\Wszystko\Projekty_CR\OneDrive\CONSULTRISK\

::crl::D:\Wszystko\Projekty_CR\

; --------- Aktywne w PowerToys Run ---------

#IfWinActive, ahk_exe PowerToys.PowerLauncher.exe
::ahktex::C:\Users\kamil\Documents\GitHub\LittleHelpers\AutoHotkey_scripts\TeXMaker.ahk
::ahkgid::C:\Users\kamil\Documents\GitHub\LittleHelpers\AutoHotkey_scripts\Construction.ahk
::ahkdia::C:\Users\kamil\Documents\GitHub\LittleHelpers\AutoHotkey_scripts\Diamond.ahk
::ahkswitch::C:\Users\kamil\Documents\GitHub\LittleHelpers\AutoHotkey_scripts\SimpleAppSwitching.ahk
::github::C:\Users\kamil\Documents\GitHub\