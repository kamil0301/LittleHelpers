#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Ensures a single instance of the script running at one time

;Source: https://lifehacker.com/choose-which-applications-launch-on-startup-with-autoho-5651042

; Auto-Execute: 
GoTo CheckKeyboardStatus 

; On startup, this script checks the status of Numlock, Capslock, and Scrolllock. 
; Depending on the unique combination of these 3 variables, 1 of 8 commands will be executed. 
; The status is then reset (Numlock on, Capslock off, Scrolllock off) 
; 
; To use this script, place it in your startup folder. 
; Then, every time you power up your computer, toggle the keyboard status 
; to specify which apps you want to run at startup. 
NumOffCapsOffScrollOff: ; Looks like: . . . 
Run Notepad.exe 
Run firefox.exe 
Return 

NumOnCapsOffScrollOff: ; Looks like: o . . (Default) 
Run firefox.exe 
Return 

NumOffCapsOnScrollOff: ; Looks like: . o . 
Run iexplore.exe 
Return 

NumOnCapsOnScrollOff: ; Looks like: o o . 
Return 

NumOffCapsOffScrollOn: ; Looks like: . . o 
Return 

NumOnCapsOffScrollOn: ; Looks like: o . o 
Return 

NumOffCapsOnScrollOn: ; Looks like: . o o 
Return 

NumOnCapsOnScrollOn: ; Looks like: o o o 
Return 

CheckKeyboardStatus: 
; Read the keyboard status: 
Status = 
Status .= "Num" . (GetKeyState("Numlock", "T") ? "On" : "Off") 
Status .= "Caps" . (GetKeyState("Capslock", "T") ? "On" : "Off") 
Status .= "Scroll" . (GetKeyState("Scrolllock", "T") ? "On" : "Off") 
; Reset the keyboard status: 
SetNumLockState On 
SetCapsLockState Off 
SetScrollLockState Off 
; Execute the appropriate script: 
If (IsLabel(Status)) 
GoTo %Status% 
Return 