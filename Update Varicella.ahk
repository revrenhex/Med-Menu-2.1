#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDVaricella_Exp , MedList.ini , Varicella, Exp , 
IniRead, OLDVaricella_Lot , MedList.ini , Varicella, Lot , 
IniRead, OLDVaricella_Man , MedList.ini , Varicella, Man , 
IniRead, OLDVaricella_NDC , MedList.ini , Varicella, NDC , 

Inputbox, Varicella_Lot , Lot, Enter Varicella Lot Number, ,,,,,,9999,%OLDVaricella_Lot%
Inputbox, Varicella_Exp , Exp, Enter Varicella Expiration Date (in format mm/dd/yyyy) you MUST include the /'s, ,,,,,,9999,%OLDVaricella_Exp%
Inputbox, Varicella_Man , Manufacturer, Enter Varicella Manufactuer, ,,,,,,9999,%OLDVaricella_Man%
Inputbox, Varicella_NDC , NDC Number, Enter Varicella NDC Number , ,,,,,,9999,%OLDVaricella_NDC%
IniWrite, %Varicella_Lot% , MedList.ini, Varicella, Lot
IniWrite, %Varicella_Exp% , MedList.ini, Varicella, Exp
IniWrite, %Varicella_Man% , MedList.ini, Varicella, Man
IniWrite, %Varicella_NDC% , MedList.ini, Varicella, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %Varicella_Lot%: 
New Expiration Date %Varicella_Exp% 
New Manufactuer %Varicella_Man% 
New NDC %Varicella_NDC%
)