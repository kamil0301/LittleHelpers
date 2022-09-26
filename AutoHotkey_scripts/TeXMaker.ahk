#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Ensures a single instance of the script running at one time


; ahk_class Qt5152QWindowIcon
; ahk_exe texmaker.exe

Menu, Tray, Icon, Icons/tex-symbol-blue.png
#IfWinActive, ahk_exe texmaker.exe

; chart_names := ["d1", "d2", "d3", "d4", "d5", "d6", "d7"] ; displacements
; chart_names := ["r1", "r2", "r3", "r4", "r5", "r6", "r7"] ; reactions
; chart_names := ["N", "Vy", "Vz", "Mr2", "My", "Mz", "Mw"] ; beam charts

; wstaw wykresy oraz wizualizację przemieszczenia konstrukcji regałów
; wstawiane wykresy: "r3", "N", "Vy", "Vz", "My", "Mz", "Mw",
; "d1", "d2", "d3", "d4", "d5", "d6", "d7"
; Wstawiane są również 4 zestawy po 3 rysunki przemieszczeń konstrukcji
; Nazwy rysunków w formacie dla jednego zestawu to na przykład:
; "dispS100", "dispF100", "dispT100" 
; S - side, F - front, T - top, 100 - czas (sekundy)
; Po nazwie rysunku dodawany jest suffix, więc pełną nazwą może być np. "dispS100_x5"

::allcharts::
Gui, Font, s10
Gui Add, Text, xm section, Nazwa folderu z wykresami
Gui Add, Edit, ys x200 W200 vfolder_name, scenariusz
Gui Add, Text, xm section, Scenariusz (np. "1a")
Gui Add, Edit, ys x200 W200 vnr_scenariusza
Gui Add, Text, xm section, Skala rysunkow
Gui Add, Edit, ys x200 W200 vskala_rys
Gui Add, Text, xm section, Wpisz czas dla kolejnych zestawow rysunkow (np."100"):
Gui Add, Text, xm section, 1 zestaw rysunkow
Gui Add, Edit, ys x200 W200 vczas_1
Gui Add, Text, xm section, 2 zestaw rysunkow
Gui Add, Edit, ys x200 W200 vczas_2
Gui Add, Text, xm section, 3 zestaw rysunkow
Gui Add, Edit, ys x200 W200 vczas_3
Gui Add, Text, xm section, 4 zestaw rysunkow
Gui Add, Edit, ys x200 W200 vczas_4
Gui Add, Text, xm section, Suffix nazw plikow
Gui Add, Edit, ys x200 W200 vsuffix_plikow
Gui Add, Button, x200 w80 section Default, OK
Gui Add, Button, ys w80 gExit, Cancel
Gui, Show,, Dane do wykresow
return

GuiClose:
Exit:
    Gui, Destroy
    MsgBox, 16, Dane do wykresów, Anulowano wprowadzanie wykresów, 7
    return
ButtonOK:
Gui Submit
text_to_paste = 
(
\newpage
\clearpage
\subsubsection{Scenariusz %nr_scenariusza%}

\begin{figure}[h!]
\begin{center}
\subfloat{\includegraphics[width=0.6\textwidth]{%folder_name%/legenda_1}}
\quad
\subfloat{\includegraphics[width=0.8\textwidth]{%folder_name%/legenda_2}}
\end{center}
\caption{Scenariusz %nr_scenariusza%. Model analizowanego ustroju z zaznaczonymi
elementami i~węzłami wyróżnionymi na wykresach}
\label{rys:mes%nr_scenariusza%-model}
\end{figure}


\begin{figure}[htp!]
\begin{center}
\includegraphics[width=0.9\textheight, angle=90]{%folder_name%/r3}
\end{center}
\caption{Scenariusz %nr_scenariusza%. Wykres zmiany reakcji w podporach $F$ w czasie dla
wybranych węzłów ustroju}
\label{rys:mes%nr_scenariusza%-1}
\end{figure}


\begin{figure}[htp!]
\begin{center}
\includegraphics[width=0.9\textheight, angle=90]{%folder_name%/N}
\end{center}
\caption{Scenariusz %nr_scenariusza%. Wykres zmiany sił osiowych $N$ w czasie dla
wybranych elementów ustroju}
\label{rys:mes%nr_scenariusza%-2}
\end{figure}

\begin{figure}[htp!]
\begin{center}
\includegraphics[width=0.9\textheight, angle=90]{%folder_name%/Vy}
\end{center}
\caption{Scenariusz %nr_scenariusza%. Wykres zmiany sił  $V_y$ w czasie dla
wybranych elementów ustroju}
\label{rys:mes%nr_scenariusza%-3}
\end{figure}

\begin{figure}[htp!]
\begin{center}
\includegraphics[width=0.9\textheight, angle=90]{%folder_name%/Vz}
\end{center}
\caption{Scenariusz %nr_scenariusza%. Wykres zmiany sił ścinających $V_z$ w czasie dla
wybranych elementów ustroju}
\label{rys:mes%nr_scenariusza%-4}
\end{figure}

\begin{figure}[htp!]
\begin{center}
\includegraphics[width=0.9\textheight, angle=90]{%folder_name%/My}
\end{center}
\caption{Scenariusz %nr_scenariusza%. Wykres zmiany momentów zginających $M_y$
w~czasie dla wybranych elementów ustroju}
\label{rys:mes%nr_scenariusza%-5}
\end{figure}

\begin{figure}[htp!]
\begin{center}
\includegraphics[width=0.9\textheight, angle=90]{%folder_name%/Mz}
\end{center}
\caption{Scenariusz %nr_scenariusza%. Wykres zmiany momentów zginających $M_z$
w~czasie dla wybranych elementów ustroju}
\label{rys:mes%nr_scenariusza%-6}
\end{figure}

\begin{figure}[htp!]
\begin{center}
\includegraphics[width=0.9\textheight, angle=90]{%folder_name%/Mw}
\end{center}
\caption{Scenariusz %nr_scenariusza%. Wykres zmiany momentów skręcających $M_w$
w~czasie dla wybranych elementów ustroju}
\label{rys:mes%nr_scenariusza%-7}
\end{figure}




\begin{figure}[htp!]
\begin{center}
\includegraphics[width=0.9\textheight, angle=90]{%folder_name%/d1}
\end{center}
\caption{Scenariusz %nr_scenariusza%. Wykres przemieszczeń w osi OX w czasie dla
wybranych węzłów ustroju}
\label{rys:mes%nr_scenariusza%-8}
\end{figure}

\begin{figure}[htp!]
\begin{center}
\includegraphics[width=0.9\textheight, angle=90]{%folder_name%/d2}
\end{center}
\caption{Scenariusz %nr_scenariusza%. Wykres przemieszczeń w osi OY w czasie dla
wybranych węzłów ustroju}
\label{rys:mes%nr_scenariusza%-9}
\end{figure}

\begin{figure}[htp!]
\begin{center}
\includegraphics[width=0.9\textheight, angle=90]{%folder_name%/d3}
\end{center}
\caption{Scenariusz %nr_scenariusza%. Wykres przemieszczeń w osi OZ w czasie dla
wybranych węzłów ustroju}
\label{rys:mes%nr_scenariusza%-10}
\end{figure}

\begin{figure}[htp!]
\begin{center}
\includegraphics[width=0.9\textheight, angle=90]{%folder_name%/d4}
\end{center}
\caption{Scenariusz %nr_scenariusza%. Wykres kąta obrotu względem osi OX w czasie
dla wybranych węzłów ustroju}
\label{rys:mes%nr_scenariusza%-11}
\end{figure}

\begin{figure}[htp!]
\begin{center}
\includegraphics[width=0.9\textheight, angle=90]{%folder_name%/d5}
\end{center}
\caption{Scenariusz %nr_scenariusza%. Wykres kąta obrotu względem osi OY w czasie
dla wybranych węzłów ustroju}
\label{rys:mes%nr_scenariusza%-12}
\end{figure}

\begin{figure}[htp!]
\begin{center}
\includegraphics[width=0.9\textheight, angle=90]{%folder_name%/d6}
\end{center}
\caption{Scenariusz %nr_scenariusza%. Wykres kąta obrotu względem osi OZ w czasie
dla wybranych węzłów ustroju}
\label{rys:mes%nr_scenariusza%-13}
\end{figure}

\begin{figure}[htp!]
\begin{center}
\includegraphics[width=0.9\textheight, angle=90]{%folder_name%/d7}
\end{center}
\caption{Scenariusz %nr_scenariusza%. Wykres kąta deplanacji w czasie dla wybranych
węzłów ustroju}
\label{rys:mes%nr_scenariusza%-14}
\end{figure}




\clearpage
\begin{figure}[htp!]
\begin{center}
\subfloat[Widok w poprzek regałów]{\includegraphics[height=.28\textheight]{%folder_name%/dispS%czas_1%%suffix_plikow%}}\quad
\subfloat[Widok wzdłuż regałów]{\includegraphics[height=.28\textheight]{%folder_name%/dispF%czas_1%%suffix_plikow%}}\quad
\subfloat[Widok z góry]{\includegraphics[height=.28\textheight]{%folder_name%/dispT%czas_1%%suffix_plikow%}}\quad
\end{center}
\caption{Scenariusz %nr_scenariusza%. Przemieszczenia konstrukcji (skala $\times$ %skala_rys%) (%czas_1%~s)}
\label{rys:mes%nr_scenariusza%-15}
\end{figure}

\clearpage
\begin{figure}[htp!]
\begin{center}
\subfloat[Widok w poprzek regałów]{\includegraphics[height=.28\textheight]{%folder_name%/dispS%czas_2%%suffix_plikow%}}\quad
\subfloat[Widok wzdłuż regałów]{\includegraphics[height=.28\textheight]{%folder_name%/dispF%czas_2%%suffix_plikow%}}\quad
\subfloat[Widok z góry]{\includegraphics[height=.28\textheight]{%folder_name%/dispT%czas_2%%suffix_plikow%}}\quad
\end{center}
\caption{Scenariusz %nr_scenariusza%. Przemieszczenia konstrukcji (skala $\times$ %skala_rys%) (%czas_2%~s)}
\label{rys:mes%nr_scenariusza%-16}
\end{figure}

\clearpage
\begin{figure}[htp!]
\begin{center}
\subfloat[Widok w poprzek regałów]{\includegraphics[height=.28\textheight]{%folder_name%/dispS%czas_3%%suffix_plikow%}}\quad
\subfloat[Widok wzdłuż regałów]{\includegraphics[height=.28\textheight]{%folder_name%/dispF%czas_3%%suffix_plikow%}}\quad
\subfloat[Widok z góry]{\includegraphics[height=.28\textheight]{%folder_name%/dispT%czas_3%%suffix_plikow%}}\quad
\end{center}
\caption{Scenariusz %nr_scenariusza%. Przemieszczenia konstrukcji (skala $\times$ %skala_rys%) (%czas_3%~s)}
\label{rys:mes%nr_scenariusza%-17}
\end{figure}

\clearpage
\begin{figure}[htp!]
\begin{center}
\subfloat[Widok w poprzek regałów]{\includegraphics[height=.28\textheight]{%folder_name%/dispS%czas_4%%suffix_plikow%}}\quad
\subfloat[Widok wzdłuż regałów]{\includegraphics[height=.28\textheight]{%folder_name%/dispF%czas_4%%suffix_plikow%}}\quad
\subfloat[Widok z góry]{\includegraphics[height=.28\textheight]{%folder_name%/dispT%czas_4%%suffix_plikow%}}\quad
\end{center}
\caption{Scenariusz %nr_scenariusza%. Przemieszczenia konstrukcji (skala $\times$ %skala_rys%) (%czas_4%~s)}
\label{rys:mes%nr_scenariusza%-18}
\end{figure}

)
PasteText(text_to_paste)
Reload
return



; Paste a picture with defined filename, caption and label
::rysc::
InputBox, figure_filename, Figure - center - filename, Podaj nazwę pliku:
InputBox, figure_caption, Figure - center - caption, Wpisz podpis rysunku:
InputBox, figure_label, Figure - center - label, Podaj etykietę:
text_to_paste =
(
\begin{figure}[htp]
\begin{center}
\includegraphics[width=0.9\textwidth]{%figure_filename%}
\end{center}
\caption{%figure_caption%}
\label{rys:%figure_label%}
\end{figure}
)
PasteText(text_to_paste)
return



::1rysc::
MsgBox, 1rysc_works
return

::tablc::
text_to_paste = 
(
\begin{table}[htp]
\caption{}
\label{tab:}
\begin{center}
\begin{tabular}{l c}
\hline
\textbf{Parametr} & \textbf{Wartość} \\
\hline
\hline



\hline 
\end{tabular}
\end{center}
\end{table}
)
PasteText(text_to_paste)
return

::rysquad::
text_to_paste = 
(
\clearpage
\begin{figure}[htbp!]

\begin{minipage}[b]{0.5\textwidth}
\begin{center}
\includegraphics[width=\textwidth]{profile/}
\end{center}
\caption{Przekrój profilu \emph{}}
\label{rys:profil}
\end{minipage}
\begin{minipage}[b]{0.5\textwidth}
\begin{center}
\includegraphics[width=\textwidth]{profile/}
\end{center}
\caption{Przekrój profilu \emph{}}
\label{rys:profil}
\end{minipage}

\end{figure}



\begin{figure}[htbp!]

\begin{minipage}[b]{0.5\textwidth}
\begin{center}
\includegraphics[width=0.8\textwidth]{profile/}
\end{center}
\caption{Przekrój profilu \emph{}}
\label{rys:profil}
\end{minipage}
\begin{minipage}[b]{0.5\textwidth}
\begin{center}
\includegraphics[width=\textwidth]{profile/}
\end{center}
\caption{Przekrój profilu \emph{}}
\label{rys:profil}
\end{minipage}

\end{figure}
)
PasteText(text_to_paste)
return


PasteText(text_to_paste){
    Clipboard := text_to_paste
    if WinActive("ahk_exe texmaker.exe")
        Send, ^v
    else{
        WinActivate ahk_exe texmaker.exe  
        Send, ^v
    }
}
