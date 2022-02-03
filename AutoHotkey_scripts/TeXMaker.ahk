#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Menu, Tray, Icon, Icons/tex-symbol-blue.png
#IfWinActive, ahk_exe texmaker.exe

; Paste a picture with defined filename, caption and label
::rysc::
InputBox, pic_filename, Figure - center - filename, Podaj nazwę pliku:
InputBox, pic_caption, Figure - center - caption, Wpisz podpis rysunku:
InputBox, pic_label, Figure - center - label, Podaj etykietę:
part1 =
(
\begin{figure}[htp]
\begin{center}
\includegraphics[width=0.9\textwidth]{
)
part2 =
(
}
\end{center}
\caption{
)
part3 =
(
}
\label{rys:
)
part4 =
(
}
\end{figure}
)
full_string = %part1%%pic_filename%%part2%%pic_caption%%part3%%pic_label%%part4%
Clipboard := full_string
Send, ^v
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
Clipboard := text_to_paste
Send, ^v
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
\includegraphics[width=\textwidth]{profile/l2c}
\end{center}
\caption{Przekrój profilu \emph{}}
\label{rys:profil}
\end{minipage}

\end{figure}
)
Clipboard := text_to_paste
Send, ^v
return


