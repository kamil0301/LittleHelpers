#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Ensures a single instance of the script running at one time (reloads if open again)

; ahk_class HwndWrapper[DefaultDomain;;62773214-9e17-409a-b4ac-8a6aff5c0ee7]
; ahk_exe Diamond.exe
#IfWinActive, ahk_exe Diamond.exe
Menu, Tray, Icon, Icons/diamond.png

SetKeyDelay, 50, 50

; F7::Reload

; Add nodes or edges to the chart
::points::
nodes := StrSplit(Clipboard, A_Space)
Loop % nodes.MaxIndex(){
    Send, % nodes[A_Index]
    Send, {Tab}{Enter}{ShiftDown}{Tab}{ShiftUp}
}
Send, {ShiftDown}{Tab 4}{ShiftUp}{Enter}
return

; Generate displacement charts [from plotted add to selection]
::disp::
chart_names := ["d1", "d2", "d3", "d4", "d5", "d6", "d7"]
generate_charts(chart_names, "nodes")
return

; Generate reactions charts [from plotted add to selection]
::reac::
chart_names := ["r1", "r2", "r3", "r4", "r5", "r6", "r7"]
generate_charts(chart_names, "nodes")
return

; Generate beams charts (forces and moments) [from plotted add to selection]
::beams::
chart_names := ["N", "Vy", "Vz", "Mr2", "My", "Mz", "Mw"]
generate_charts(chart_names, "beams")
return

generate_charts(chart_names, chart_type)
{
    ; get diamond window title
    WinGetTitle, diamond_window_title
    ; MsgBox, Nazwa okna: %diamond_window_title%
    ; get the coordinates for scaling x axis of the chart
    MsgBox, 33, Opcje skalowania, Ustaw kursor myszy w miejscu`, gdzie ma być ustawiony `nkursor myszy do przeskalowania wykresów`,`nczyli w okolicy początu skali osi czasu.`nSkrypt w tej lokalizacji wykona`njeden obrót kółkiem myszy`, aby wykres nie nachodził na legendę.`nNastępnie naciśnij SPACJĘ i poczekaj., 30
    IfMsgBox, Cancel
    {
        MsgBox, 16, Opcje skalowania, Generowanie wykresów anulowane., 5
        return
    }
    IfMsgBox, Timeout
    {
        MsgBox, 16, Opcje skalowania, Czas na odpowiedź minął...`nGenerowanie wykresów anulowane., 7
        return
    }
    KeyWait, Space, D T20
    if ErrorLevel
    {
        MsgBox, 16, Opcje skalowania, Czas na wybranie miejsca minął...`nGenerowanie wykresów anulowane., 7
        return
    }
    KeyWait, Space
    MouseGetPos, scale_chart_x, scale_chart_y
    if !WinActive(diamond_window_title)
        Winactivate, %diamond_window_title%
    ; reload first chart
    if (chart_type = "nodes")
    {
        Send, {ShiftDown}{Tab 2}{ShiftUp}{Enter}
        Sleep, 100
        Send, {Down}
        Sleep, 1000
        Send, {Up 6}
    }
    else if (chart_type = "beams")
    {
        Send, {ShiftDown}{Tab 3}{ShiftUp}{Enter}
        Sleep, 100
        Send, {Down}
        Sleep, 1000
        Send, {Up 9}
        Sleep, 100
        Send, {Down}
    }
    else
    {
        MsgBox, 16, Błąd wywołania, Zły typ wykresów (błąd w kodzie).`nGenerowanie wykresów anulowane., 5
        return
    }
    Sleep, 3000
    ; scale the x axis of the chart
    Click, %scale_chart_x% %scale_chart_y% WheelDown
    Sleep, 200
    ; export to image
    if (chart_type = "nodes")
    {
        Send, {ShiftDown}{Tab 7}{ShiftUp}{Enter}
    }
    else if (chart_type = "beams")
    {
        Send, {ShiftDown}{Tab 6}{ShiftUp}{Enter}
    }
    WinWaitActive, Zapisywanie jako
    Sleep, 500
    Send, % chart_names[1]
    Sleep, 500
    ; Zapytaj czy wybrano prawidłowy folder
    WinWaitActive, %diamond_window_title%
    MsgBox, 36, Opcje zapisu, Czy zapisałeś pierwszy wykres`nwe właściwym miejscu?`n`nJeżeli wykresy już istnieją w wybranym folderze`nto zostaną one nadpisane!, 30
    IfMsgBox, No
    {
        MsgBox, 16, Opcje zapisu, Generowanie wykresów anulowane., 5
        return
    }
    IfMsgBox, Timeout
    {
        MsgBox, 16, Opcje zapisu, Czas na odpowiedź minął...`nGenerowanie wykresów anulowane., 5
        return
    }
    ; Pętla zapisująca pozostałe wykresy
    Loop % chart_names.MaxIndex()-1{
        ; go to next chart
        if (chart_type = "nodes")
        {   
            Send, {Tab 7}
        }
        if (chart_type = "beams")
        {
            Send, {Tab 6}
        }
        Sleep, 100
        Send, {Down}
        Sleep, 1000
        ; scale the x axis of the chart
        Click, %scale_chart_x% %scale_chart_y% WheelDown
        Sleep, 200
        ; export to image
        Sleep, 100
        if (chart_type = "nodes")
        {
            Send, {ShiftDown}{Tab 7}{ShiftUp}{Enter}
        }
        else if (chart_type = "beams")
        {
            Send, {ShiftDown}{Tab 6}{ShiftUp}{Enter}
        }
        WinWaitActive, Zapisywanie jako
        Sleep, 500
        Send, % chart_names[A_Index+1]
        Send, {Enter}
        Sleep, 500
        If WinActive("Zapisywanie jako", "już istnieje")
            Send, t
    }
    MsgBox, 64, Generowanie wykresów, Generowanie wykresów zakończone, 5
}


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

; Generate visualization of (temperatures) [from timestep dropdown]
::gv::
; MsgBox, %A_ScriptDir%
; FileSelectFile, xml_file_path, 1,, Wybierz plik XML, *.xml
; if ErrorLevel
; {
;     MsgBox, 16, Wizualizacja odkształceń, Generowanie anulowane, 7
;     return
; }
; MsgBox, %xml_file_path%
; commands=
; (join&
;  python "%A_ScriptDir%\diamond.py" "%xml_file_path%"`n
; )
; Run, cmd /c %commands%  
; return

; FileSelectFolder, output_dir,, 3, Wybierz folder do zapisu rysunków
; if ErrorLevel
; {
;     MsgBox, 16, Wizualizacja odkształceń, Generowanie anulowane, 7
;     return
; }
WinGetTitle, diamond_window_title
Gui, dv:Default
Gui, Font, s10
Gui Add, Text, xm section, Folder do zapisu rysunków: 
Gui Add, Edit, xm section W350 voutput_dir
Gui Add, Button, ys gdvButtonPrzegladaj, Przegladaj
Gui Add, Text, xm section, Typ rysunkow (Front/Side/Top)
Gui Add, DropDownList, ys x230 W80 vtype, F|S|T
Gui Add, Text, xm section, Wpisz czasy dla kolejnych rysunkow oddzielone spacją:
Gui Add, Text, xm section, np."100 163 194 225":
Gui Add, Edit, xm section W420 vinput_fig_names
Gui Add, Button, x150 w80 section Default gdvButtonOK, OK
Gui Add, Button, ys w80 gdvExit, Cancel
Gui, Show,, Dane do rysunkow
return

dvGuiClose:
dvExit:
    Gui, Destroy
    MsgBox, 16, Dane do rysunków, Anulowano generowanie rysunków, 7
    return
dvButtonPrzegladaj:
    FileSelectFolder, dir_path,, 3, Wybierz folder do zapisu rysunków
    GuiControl,, output_dir, %dir_path%
    return
dvButtonOK:
Gui Submit
fig_names := StrSplit(input_fig_names, A_Space)
if !WinActive(diamond_window_title)
        Winactivate, %diamond_window_title%

Loop % fig_names.MaxIndex(){
    Send, % fig_names[A_Index]
    Sleep, 2000
    Send, {CtrlDown}{ShiftDown}{Tab}{ShiftUp}{CtrlUp}{Enter}
    WinWaitActive, Enregistrer sous
    Sleep, 500
    Send, %output_dir%\disp%type%
    Send, % fig_names[A_Index]
    Send, .png{Enter}
    Sleep, 700
    If WinActive("Enregistrer sous", "już istnieje")
        Send, t
    Sleep, 1000
    Send, {CtrlDown}{Tab}{CtrlUp}{Enter}
    Sleep, 100
}
MsgBox, 64, Generowanie rysunków, Generowanie rysunków zakończone, 5

Reload
return




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


; before running the script make sure the save button was selected before in the file management section
; displacement visualization [press while timestep selection active]
::dvv2::
WinGetTitle, diamond_window_title
Gui, dvv2:Default
Gui, Font, s10
Gui Add, Text, xm section, Folder do zapisu rysunków: 
Gui Add, Edit, xm section W350 voutput_dir
Gui Add, Button, ys gdvv2ButtonPrzegladaj, Przegladaj
Gui Add, Text, xm section, Typ rysunkow (Front/Side/Top)
Gui Add, DropDownList, ys x230 W80 vtype, F|S|T
Gui Add, Text, xm section, Wpisz czasy dla kolejnych rysunkow oddzielone spacją:
Gui Add, Text, xm section, np."100 163 194 225":
Gui Add, Edit, xm section W420 vinput_fig_names
Gui Add, Button, x150 w80 section Default gdvv2ButtonOK, OK
Gui Add, Button, ys w80 gdvv2Exit, Cancel
Gui, Show,, Dane do rysunkow
return

dvv2GuiClose:
dvv2Exit:
    Gui, Destroy
    MsgBox, 16, Dane do rysunków, Anulowano generowanie rysunków, 7
    return
dvv2ButtonPrzegladaj:
    FileSelectFolder, dir_path,, 3, Wybierz folder do zapisu rysunków
    GuiControl,, output_dir, %dir_path%
    return
dvv2ButtonOK:
Gui Submit
fig_names := StrSplit(input_fig_names, A_Space)
if !WinActive(diamond_window_title)
        Winactivate, %diamond_window_title%

Loop % fig_names.MaxIndex(){
    Send, % fig_names[A_Index]
    Sleep, 2000
    Send, {CtrlDown}{ShiftDown}{Tab}{ShiftUp}{CtrlUp}{Enter}
    WinWaitActive, Enregistrer sous
    Sleep, 500
    Send, %output_dir%\disp%type%
    Send, % fig_names[A_Index]
    Send, .png{Enter}
    Sleep, 700
    If WinActive("Enregistrer sous", "już istnieje")
        Send, t
    Sleep, 1000
    Send, {CtrlDown}{Tab}{CtrlUp}{Enter}
    Sleep, 100
}
MsgBox, 64, Generowanie rysunków, Generowanie rysunków zakończone, 5
Reload
return