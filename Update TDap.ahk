#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDTDap_Exp , MedList.ini , TDap, Exp , 
IniRead, OLDTDap_Lot , MedList.ini , TDap, Lot , 
IniRead, OLDTDap_Man , MedList.ini , TDap, Man , 
IniRead, OLDTDap_NDC , MedList.ini , TDap, NDC , 

Inputbox, TDap_Lot , Lot, Enter TDap Lot Number, ,,,,,,9999,%OLDTDap_Lot%
Inputbox, TDap_Exp , Exp, Enter TDap Expiration Date (in format mm/dd/yyyy) you MUST include the /'s, ,,,,,,9999,%OLDTDap_Exp%
Inputbox, TDap_Man , Manufacturer, Enter TDap Manufactuer, ,,,,,,9999,%OLDTDap_Man%
Inputbox, TDap_NDC , NDC Number, Enter TDap NDC Number , ,,,,,,9999,%OLDTDap_NDC%
IniWrite, %TDap_Lot% , MedList.ini, TDap, Lot
IniWrite, %TDap_Exp% , MedList.ini, TDap, Exp
IniWrite, %TDap_Man% , MedList.ini, TDap, Man
IniWrite, %TDap_NDC% , MedList.ini, TDap, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %TDap_Lot%: 
New Expiration Date %TDap_Exp% 
New Manufactuer %TDap_Man% 
New NDC %TDap_NDC%
)