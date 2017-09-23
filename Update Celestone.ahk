#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDCelestone_Exp , MedList.ini , Celestone, Exp , 
IniRead, OLDCelestone_Lot , MedList.ini , Celestone, Lot , 
IniRead, OLDCelestone_Man , MedList.ini , Celestone, Man , 
IniRead, OLDCelestone_NDC , MedList.ini , Celestone, NDC , 

Inputbox, Celestone_Lot , Lot, Enter Celestone Lot Number, ,,,,,,9999,%OLDCelestone_Lot%
Inputbox, Celestone_Exp , Exp, Enter Celestone Expiration Date (in format mmddyyyy), ,,,,,,9999,%OLDCelestone_Exp%
Inputbox, Celestone_Man , Manufacturer, Enter Celestone Manufactuer, ,,,,,,9999,%OLDCelestone_Man%
Inputbox, Celestone_NDC , NDC Number, Enter Celestone NDC Number , ,,,,,,9999,%OLDCelestone_NDC%
IniWrite, %Celestone_Lot% , MedList.ini, Celestone, Lot
IniWrite, %Celestone_Exp% , MedList.ini, Celestone, Exp
IniWrite, %Celestone_Man% , MedList.ini, Celestone, Man
IniWrite, %Celestone_NDC% , MedList.ini, Celestone, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %Celestone_Lot%: 
New Expiration Date %Celestone_Exp% 
New Manufactuer %Celestone_Man% 
New NDC %Celestone_NDC%
)