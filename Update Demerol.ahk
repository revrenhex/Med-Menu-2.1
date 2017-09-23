#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDDemerol_Exp , MedList.ini , Demerol, Exp , 
IniRead, OLDDemerol_Lot , MedList.ini , Demerol, Lot , 
IniRead, OLDDemerol_Man , MedList.ini , Demerol, Man , 
IniRead, OLDDemerol_NDC , MedList.ini , Demerol, NDC , 

Inputbox, Demerol_Lot , Lot, Enter Demerol Lot Number, ,,,,,,9999,%OLDDemerol_Lot%
Inputbox, Demerol_Exp , Exp, Enter Demerol Expiration Date (in format mmddyyyy), ,,,,,,9999,%OLDDemerol_Exp%
Inputbox, Demerol_Man , Manufacturer, Enter Demerol Manufactuer, ,,,,,,9999,%OLDDemerol_Man%
Inputbox, Demerol_NDC , NDC Number, Enter Demerol NDC Number , ,,,,,,9999,%OLDDemerol_NDC%
IniWrite, %Demerol_Lot% , MedList.ini, Demerol, Lot
IniWrite, %Demerol_Exp% , MedList.ini, Demerol, Exp
IniWrite, %Demerol_Man% , MedList.ini, Demerol, Man
IniWrite, %Demerol_NDC% , MedList.ini, Demerol, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %Demerol_Lot%: 
New Expiration Date %Demerol_Exp% 
New Manufactuer %Demerol_Man% 
New NDC %Demerol_NDC%
)