#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDNorflex_Exp , MedList.ini , Norflex, Exp , 
IniRead, OLDNorflex_Lot , MedList.ini , Norflex, Lot , 
IniRead, OLDNorflex_Man , MedList.ini , Norflex, Man , 
IniRead, OLDNorflex_NDC , MedList.ini , Norflex, NDC , 

Inputbox, Norflex_Lot , Lot, Enter Norflex Lot Number, ,,,,,,9999,%OLDNorflex_Lot%
Inputbox, Norflex_Exp , Exp, Enter Norflex Expiration Date (in format mmddyyyy), ,,,,,,9999,%OLDNorflex_Exp%
Inputbox, Norflex_Man , Manufacturer, Enter Norflex Manufactuer, ,,,,,,9999,%OLDNorflex_Man%
Inputbox, Norflex_NDC , NDC Number, Enter Norflex NDC Number , ,,,,,,9999,%OLDNorflex_NDC%
IniWrite, %Norflex_Lot% , MedList.ini, Norflex, Lot
IniWrite, %Norflex_Exp% , MedList.ini, Norflex, Exp
IniWrite, %Norflex_Man% , MedList.ini, Norflex, Man
IniWrite, %Norflex_NDC% , MedList.ini, Norflex, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %Norflex_Lot%: 
New Expiration Date %Norflex_Exp% 
New Manufactuer %Norflex_Man% 
New NDC %Norflex_NDC%
)