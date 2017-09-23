#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDStadol_Exp , MedList.ini , Stadol, Exp , 
IniRead, OLDStadol_Lot , MedList.ini , Stadol, Lot , 
IniRead, OLDStadol_Man , MedList.ini , Stadol, Man , 
IniRead, OLDStadol_NDC , MedList.ini , Stadol, NDC , 

Inputbox, Stadol_Lot , Lot, Enter Stadol Lot Number, ,,,,,,9999,%OLDStadol_Lot%
Inputbox, Stadol_Exp , Exp, Enter Stadol Expiration Date (in format mmddyyyy), ,,,,,,9999,%OLDStadol_Exp%
Inputbox, Stadol_Man , Manufacturer, Enter Stadol Manufactuer, ,,,,,,9999,%OLDStadol_Man%
Inputbox, Stadol_NDC , NDC Number, Enter Stadol NDC Number , ,,,,,,9999,%OLDStadol_NDC%
IniWrite, %Stadol_Lot% , MedList.ini, Stadol, Lot
IniWrite, %Stadol_Exp% , MedList.ini, Stadol, Exp
IniWrite, %Stadol_Man% , MedList.ini, Stadol, Man
IniWrite, %Stadol_NDC% , MedList.ini, Stadol, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %Stadol_Lot%: 
New Expiration Date %Stadol_Exp% 
New Manufactuer %Stadol_Man% 
New NDC %Stadol_NDC%
)