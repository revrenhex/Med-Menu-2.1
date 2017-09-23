#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDMeningitis_Exp , MedList.ini , Meningitis, Exp , 
IniRead, OLDMeningitis_Lot , MedList.ini , Meningitis, Lot , 
IniRead, OLDMeningitis_Man , MedList.ini , Meningitis, Man , 
IniRead, OLDMeningitis_NDC , MedList.ini , Meningitis, NDC , 

Inputbox, Meningitis_Lot , Lot, Enter Meningitis Lot Number, ,,,,,,9999,%OLDMeningitis_Lot%
Inputbox, Meningitis_Exp , Exp, Enter Meningitis Expiration Date (in format mm/dd/yyyy) you MUST include the /'s, ,,,,,,9999,%OLDMeningitis_Exp%
Inputbox, Meningitis_Man , Manufacturer, Enter Meningitis Manufactuer, ,,,,,,9999,%OLDMeningitis_Man%
Inputbox, Meningitis_NDC , NDC Number, Enter Meningitis NDC Number , ,,,,,,9999,%OLDMeningitis_NDC%
IniWrite, %Meningitis_Lot% , MedList.ini, Meningitis, Lot
IniWrite, %Meningitis_Exp% , MedList.ini, Meningitis, Exp
IniWrite, %Meningitis_Man% , MedList.ini, Meningitis, Man
IniWrite, %Meningitis_NDC% , MedList.ini, Meningitis, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %Meningitis_Lot%: 
New Expiration Date %Meningitis_Exp% 
New Manufactuer %Meningitis_Man% 
New NDC %Meningitis_NDC%
)