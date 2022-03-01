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



; Generate beams charts (temperatures) [from plotted add to selection]
::temp::
dir := Clipboard
chart_names := ["temp_chart2", "temp_chart3"]
Loop % chart_names.MaxIndex(){
    Send, {Tab 8} ; export image
    Send, {Enter}
    Sleep, 1000
    Send, % dir
    Send, % chart_names[A_Index]
    Send,  _1
    Sleep, 1000
    Send, {Enter}
    Sleep, 1000
    Send, {ShiftDown}{Tab 10} ; point section
    Send, {Down}
    Send, {Tab 10} ; export image
    Send, {Enter}
    Sleep, 1000
    Send, % dir
    Send, % chart_names[A_Index]
    Send,  _2
    Sleep, 1000
    Send, {Enter}
    Sleep, 1000
    Send, {ShiftDown}{Tab 10} ; point section
    Send, {Up}
    Send, {ShiftDown}{Tab 1} ; element section
    Send, {Down}
    Send, {Tab 3}  ; plotted add to selection
}

return



range(start, stop:="", step:=1) {
	static range := { _NewEnum: Func("_RangeNewEnum") }
	if !step
		throw "range(): Parameter 'step' must not be 0 or blank"
	if (stop == "")
		stop := start, start := 0
	; Formula: r[i] := start + step*i ; r = range object, i = 0-based index
	; For a postive 'step', the constraints are i >= 0 and r[i] < stop
	; For a negative 'step', the constraints are i >= 0 and r[i] > stop
	; No result is returned if r[0] does not meet the value constraint
	if (step > 0 ? start < stop : start > stop) ;// start == start + step*0
		return { base: range, start: start, stop: stop, step: step }
}

_RangeNewEnum(r) {
	static enum := { "Next": Func("_RangeEnumNext") }
	return { base: enum, r: r, i: 0 }
}

_RangeEnumNext(enum, ByRef k, ByRef v:="") {
	stop := enum.r.stop, step := enum.r.step
	, k := enum.r.start + step*enum.i
	if (ret := step > 0 ? k < stop : k > stop)
		enum.i += 1
	return ret
}

; Generate visualization of (temperatures) [from plotted add to selection]
::gv::
dir := "D:\CONSULTRISK\22_02_Monheimer_Tor - General\03_results\cfd_heating\"


chart_name := "section_"

chart_names := ["6_1\", "6_2\", "7_1\", "7_2\", "8_1\", "8_2\", "9_1\", "9_2\", "10_1\", "10_2\"]
Loop % chart_names.MaxIndex(){
    Send, {Down 4}
    i := 50
    subdir := % chart_names[A_Index]
    
    Loop, 24{
        Send, {Ctrl Down}{Tab 3}{Ctrl Up} ; export image
        Send, {Enter}
        Sleep, 1000
        Send, % dir
        Send, % subdir
        Send, % chart_name
        Send, % i
        Send,  .png
        Sleep, 1000
        Send, {Enter}
        Sleep, 1000
        Send, {Ctrl Down}{Tab}{Ctrl Up} ; time steps
        Send, {Down 5}
        Sleep, 100
        i := i + 50

}
    Send, {Up 3}


}
return



; Generate frame images with displacements (?)
