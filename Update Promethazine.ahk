#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDPromethazine_Exp , MedList.ini , Promethazine, Exp , 
IniRead, OLDPromethazine_Lot , MedList.ini , Promethazine, Lot , 
IniRead, OLDPromethazine_Man , MedList.ini , Promethazine, Man , 
IniRead, OLDPromethazine_NDC , MedList.ini , Promethazine, NDC , 

Inputbox, Promethazine_Lot , Lot, Enter Promethazine Lot Number, ,,,,,,9999,%OLDPromethazine_Lot%
Inputbox, Promethazine_Exp , Exp, Enter Promethazine Expiration Date (in format mmddyyyy), ,,,,,,9999,%OLDPromethazine_Exp%
Inputbox, Promethazine_Man , Manufacturer, Enter Promethazine Manufactuer, ,,,,,,9999,%OLDPromethazine_Man%
Inputbox, Promethazine_NDC , NDC Number, Enter Promethazine NDC Number , ,,,,,,9999,%OLDPromethazine_NDC%
IniWrite, %Promethazine_Lot% , MedList.ini, Promethazine, Lot
IniWrite, %Promethazine_Exp% , MedList.ini, Promethazine, Exp
IniWrite, %Promethazine_Man% , MedList.ini, Promethazine, Man
IniWrite, %Promethazine_NDC% , MedList.ini, Promethazine, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %Promethazine_Lot%: 
New Expiration Date %Promethazine_Exp% 
New Manufactuer %Promethazine_Man% 
New NDC %Promethazine_NDC%
)