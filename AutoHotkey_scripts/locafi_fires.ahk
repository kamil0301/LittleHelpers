#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Ensures a single instance of the script running at one time


; not working
; paste many locafi fires to a txt
::lotsafires::
fires =
(
-10.5986	4.0557	-10.212
-0.4974	5.0506	-10.212
9.6037	6.0454	-10.212
-5.0506	-0.4974	-10.212
5.0506	0.4974	-10.212
-9.6037	-6.0454	-10.212
0.4974	-5.0506	-10.212
10.5986	-4.0557	-10.212
)
fire_locations := StrSplit(fires, "`n")
nubmer_of_fires := fire_locations.MaxIndex()
Send, {Space} NFIRE %nubmer_of_fires%{Enter}{Enter}
Loop % fire_locations.MaxIndex(){
    Send, FIRE_POS{Space}
    Send, % fire_locations[A_Index]
    text_to_paste =
    (

 Z_CEILING 5
PLUME_TYPE CONIC
    
  DIAMETER
	0	    0
    1825	10
  END_DIAM
  
       RHR
	0		0
	10		587
	20		2345
	30		5276
	40		9378
	50		14654
	60		21101
	70		28721
	80		37512
	90		47477
	100		58613
	120		84402
	160		150048
	200		234450
	240		337608
	280		459522
	320		600192
	360		759618
	400		937800
	440		1134738
	480		1350432
	520		1584882
	560		1838088
	600		2110050
	640		2400768
	680		2710242
	720		3038472
	760		3385458
	800		3751200
	840		4135698
	880		4538952
	920		4960962
	960		5401728
	1000	5861250
	1040	6339528
	1080	6836562
	1120	7352352
	1160	7886898
	1200	8440200
	1240	9012258
	1280	9603072
	1320	10212642
	1360	10840968
	1400	11488050
	1440	12153888
	1480	12838482
	1520	13541832
	1560	14263938
	1600	15004800
	1640	15764418
	1680	16542792
	1720	17339922
	1760	18155808
	1800	18990450
	1825	19521625
   END_RHR

  
    )
    Clipboard := text_to_paste
    Send, ^v
}
return