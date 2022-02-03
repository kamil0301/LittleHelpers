#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Ensures a single instance of the script running at one time


; ahk_class Qt5152QWindowIcon
; ahk_exe texmaker.exe

Menu, Tray, Icon, Icons/tex-symbol-blue.png
#IfWinActive, ahk_exe texmaker.exe

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