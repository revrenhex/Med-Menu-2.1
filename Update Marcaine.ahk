#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDMarcaine_Exp , MedList.ini , Marcaine, Exp , 
IniRead, OLDMarcaine_Lot , MedList.ini , Marcaine, Lot , 
IniRead, OLDMarcaine_Man , MedList.ini , Marcaine, Man , 
IniRead, OLDMarcaine_NDC , MedList.ini , Marcaine, NDC , 

Inputbox, Marcaine_Lot , Lot, Enter Marcaine Lot Number, ,,,,,,9999,%OLDMarcaine_Lot%
Inputbox, Marcaine_Exp , Exp, Enter Marcaine Expiration Date (in format mmddyyyy), ,,,,,,9999,%OLDMarcaine_Exp%
Inputbox, Marcaine_Man , Manufacturer, Enter Marcaine Manufactuer, ,,,,,,9999,%OLDMarcaine_Man%
Inputbox, Marcaine_NDC , NDC Number, Enter Marcaine NDC Number , ,,,,,,9999,%OLDMarcaine_NDC%
IniWrite, %Marcaine_Lot% , MedList.ini, Marcaine, Lot
IniWrite, %Marcaine_Exp% , MedList.ini, Marcaine, Exp
IniWrite, %Marcaine_Man% , MedList.ini, Marcaine, Man
IniWrite, %Marcaine_NDC% , MedList.ini, Marcaine, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %Marcaine_Lot%: 
New Expiration Date %Marcaine_Exp% 
New Manufactuer %Marcaine_Man% 
New NDC %Marcaine_NDC%
)