#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDToradol_Exp , MedList.ini , Toradol, Exp , 
IniRead, OLDToradol_Lot , MedList.ini , Toradol, Lot , 
IniRead, OLDToradol_Man , MedList.ini , Toradol, Man , 
IniRead, OLDToradol_NDC , MedList.ini , Toradol, NDC , 

Inputbox, Toradol_Lot , Lot, Enter Toradol Lot Number, ,,,,,,9999,%OLDToradol_Lot%
Inputbox, Toradol_Exp , Exp, Enter Toradol Expiration Date (in format mmddyyyy), ,,,,,,9999,%OLDToradol_Exp%
Inputbox, Toradol_Man , Manufacturer, Enter Toradol Manufactuer, ,,,,,,9999,%OLDToradol_Man%
Inputbox, Toradol_NDC , NDC Number, Enter Toradol NDC Number , ,,,,,,9999,%OLDToradol_NDC%
IniWrite, %Toradol_Lot% , MedList.ini, Toradol, Lot
IniWrite, %Toradol_Exp% , MedList.ini, Toradol, Exp
IniWrite, %Toradol_Man% , MedList.ini, Toradol, Man
IniWrite, %Toradol_NDC% , MedList.ini, Toradol, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %Toradol_Lot%: 
New Expiration Date %Toradol_Exp% 
New Manufactuer %Toradol_Man% 
New NDC %Toradol_NDC%
)