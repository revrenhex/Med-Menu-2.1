#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDTwinRix_Exp , MedList.ini , TwinRix, Exp , 
IniRead, OLDTwinRix_Lot , MedList.ini , TwinRix, Lot , 
IniRead, OLDTwinRix_Man , MedList.ini , TwinRix, Man , 
IniRead, OLDTwinRix_NDC , MedList.ini , TwinRix, NDC , 

Inputbox, TwinRix_Lot , Lot, Enter TwinRix Lot Number, ,,,,,,9999,%OLDTwinRix_Lot%
Inputbox, TwinRix_Exp , Exp, Enter TwinRix Expiration Date (in format mm/dd/yyyy) you MUST include the /'s, ,,,,,,9999,%OLDTwinRix_Exp%
Inputbox, TwinRix_Man , Manufacturer, Enter TwinRix Manufactuer, ,,,,,,9999,%OLDTwinRix_Man%
Inputbox, TwinRix_NDC , NDC Number, Enter TwinRix NDC Number , ,,,,,,9999,%OLDTwinRix_NDC%
IniWrite, %TwinRix_Lot% , MedList.ini, TwinRix, Lot
IniWrite, %TwinRix_Exp% , MedList.ini, TwinRix, Exp
IniWrite, %TwinRix_Man% , MedList.ini, TwinRix, Man
IniWrite, %TwinRix_NDC% , MedList.ini, TwinRix, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %TwinRix_Lot%: 
New Expiration Date %TwinRix_Exp% 
New Manufactuer %TwinRix_Man% 
New NDC %TwinRix_NDC%
)