#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Ensures a single instance of the script running at one time

; Use Window Spy (indcluded with ahk) to get WinTitle, ahk_exe, ahk_class and other

Menu, Tray, Icon, Icons/wt_logo.png
#IfWinActive, ahk_exe WindowsTerminal.exe

; --------- Inne skrypty ---------

::ahktex::
Send, C:\Users\kamil\Documents\GitHub\LittleHelpers\AutoHotkey_scripts\TeXMaker.ahk
return

::ahkgid::
Send, C:\Users\kamil\Documents\GitHub\LittleHelpers\AutoHotkey_scripts\Construction.ahk
return

::ahkdia::
Send, C:\Users\kamil\Documents\GitHub\LittleHelpers\AutoHotkey_scripts\Diamond.ahk
return

; --------- Aktualne ---------

::urania::
Send, 'D:\Wszystko\Projekty_CR\OneDrive\CONSULTRISK\52_Hala_Urania - General\02_model\'
return

::uranial::
Send, D:\Wszystko\Projekty_CR\21_006_52_Hala_Urania\
return

; --------- GitHub ---------

::github::
Send, C:\Users\kamil\Documents\GitHub\
return

::ahks::
Send, C:\Users\kamil\Documents\GitHub\LittleHelpers\AutoHotkey_scripts\
return

::fireeng::
Send, C:\Users\kamil\Documents\GitHub\fireeng-tools\structures\
return

::mcsteel::
Send, C:\Users\kamil\Documents\GitHub\mcsteel\
return

::fdsafir2::
Send, C:\Users\kamil\Documents\GitHub\mcsteel\fdsafir2.py
return

; --------- Programy ---------
;VS code: code

::safirexe::
Send, C:\SAFIR\safir.exe
return

; --------- DYSK C ---------

::desk::
Send, C:\Users\kamil\Desktop\
return

::autostart::
Send, 'C:\Users\kamil\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup'
return

; --------- DYSK D ---------

::cr::
Send, D:\Wszystko\Projekty_CR\OneDrive\CONSULTRISK\
return

::crl::
Send, D:\Wszystko\Projekty_CR\
return

::wszystko::
Send, D:\Wszystko\
return
