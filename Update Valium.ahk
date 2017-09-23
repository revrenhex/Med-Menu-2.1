#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDValium_Exp , MedList.ini , Valium, Exp , 
IniRead, OLDValium_Lot , MedList.ini , Valium, Lot , 
IniRead, OLDValium_Man , MedList.ini , Valium, Man , 
IniRead, OLDValium_NDC , MedList.ini , Valium, NDC , 

Inputbox, Valium_Lot , Lot, Enter Valium Lot Number, ,,,,,,9999,%OLDValium_Lot%
Inputbox, Valium_Exp , Exp, Enter Valium Expiration Date (in format mmddyyyy), ,,,,,,9999,%OLDValium_Exp%
Inputbox, Valium_Man , Manufacturer, Enter Valium Manufactuer, ,,,,,,9999,%OLDValium_Man%
Inputbox, Valium_NDC , NDC Number, Enter Valium NDC Number , ,,,,,,9999,%OLDValium_NDC%
IniWrite, %Valium_Lot% , MedList.ini, Valium, Lot
IniWrite, %Valium_Exp% , MedList.ini, Valium, Exp
IniWrite, %Valium_Man% , MedList.ini, Valium, Man
IniWrite, %Valium_NDC% , MedList.ini, Valium, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %Valium_Lot%: 
New Expiration Date %Valium_Exp% 
New Manufactuer %Valium_Man% 
New NDC %Valium_NDC%
)