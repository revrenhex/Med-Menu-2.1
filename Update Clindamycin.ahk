#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDClindamycin_Exp , MedList.ini , Clindamycin, Exp , 
IniRead, OLDClindamycin_Lot , MedList.ini , Clindamycin, Lot , 
IniRead, OLDClindamycin_Man , MedList.ini , Clindamycin, Man , 
IniRead, OLDClindamycin_NDC , MedList.ini , Clindamycin, NDC , 

Inputbox, Clindamycin_Lot , Lot, Enter Clindamycin Lot Number, ,,,,,,9999,%OLDClindamycin_Lot%
Inputbox, Clindamycin_Exp , Exp, Enter Clindamycin Expiration Date (in format mmddyyyy), ,,,,,,9999,%OLDClindamycin_Exp%
Inputbox, Clindamycin_Man , Manufacturer, Enter Clindamycin Manufactuer, ,,,,,,9999,%OLDClindamycin_Man%
Inputbox, Clindamycin_NDC , NDC Number, Enter Clindamycin NDC Number , ,,,,,,9999,%OLDClindamycin_NDC%
IniWrite, %Clindamycin_Lot% , MedList.ini, Clindamycin, Lot
IniWrite, %Clindamycin_Exp% , MedList.ini, Clindamycin, Exp
IniWrite, %Clindamycin_Man% , MedList.ini, Clindamycin, Man
IniWrite, %Clindamycin_NDC% , MedList.ini, Clindamycin, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %Clindamycin_Lot%: 
New Expiration Date %Clindamycin_Exp% 
New Manufactuer %Clindamycin_Man% 
New NDC %Clindamycin_NDC%
)