#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDSoluMedrol_Exp , MedList.ini , SoluMedrol, Exp , 
IniRead, OLDSoluMedrol_Lot , MedList.ini , SoluMedrol, Lot , 
IniRead, OLDSoluMedrol_Man , MedList.ini , SoluMedrol, Man , 
IniRead, OLDSoluMedrol_NDC , MedList.ini , SoluMedrol, NDC , 

Inputbox, SoluMedrol_Lot , Lot, Enter SoluMedrol Lot Number, ,,,,,,9999,%OLDSoluMedrol_Lot%
Inputbox, SoluMedrol_Exp , Exp, Enter SoluMedrol Expiration Date (in format mmddyyyy), ,,,,,,9999,%OLDSoluMedrol_Exp%
Inputbox, SoluMedrol_Man , Manufacturer, Enter SoluMedrol Manufactuer, ,,,,,,9999,%OLDSoluMedrol_Man%
Inputbox, SoluMedrol_NDC , NDC Number, Enter SoluMedrol NDC Number , ,,,,,,9999,%OLDSoluMedrol_NDC%
IniWrite, %SoluMedrol_Lot% , MedList.ini, SoluMedrol, Lot
IniWrite, %SoluMedrol_Exp% , MedList.ini, SoluMedrol, Exp
IniWrite, %SoluMedrol_Man% , MedList.ini, SoluMedrol, Man
IniWrite, %SoluMedrol_NDC% , MedList.ini, SoluMedrol, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %SoluMedrol_Lot%: 
New Expiration Date %SoluMedrol_Exp% 
New Manufactuer %SoluMedrol_Man% 
New NDC %SoluMedrol_NDC%
)