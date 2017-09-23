#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDFlu_Exp , MedList.ini , Flu, Exp , 
IniRead, OLDFlu_Lot , MedList.ini , Flu, Lot , 
IniRead, OLDFlu_Man , MedList.ini , Flu, Man , 
IniRead, OLDFlu_NDC , MedList.ini , Flu, NDC , 

Inputbox, Flu_Lot , Lot, Enter Flu Lot Number, ,,,,,,9999,%OLDFlu_Lot%
Inputbox, Flu_Exp , Exp, Enter Flu Expiration Date (in format mm/dd/yyyy) you MUST include the /'s, ,,,,,,9999,%OLDFlu_Exp%
Inputbox, Flu_Man , Manufacturer, Enter Flu Manufactuer, ,,,,,,9999,%OLDFlu_Man%
Inputbox, Flu_NDC , NDC Number, Enter Flu NDC Number , ,,,,,,9999,%OLDFlu_NDC%
IniWrite, %Flu_Lot% , MedList.ini, Flu, Lot
IniWrite, %Flu_Exp% , MedList.ini, Flu, Exp
IniWrite, %Flu_Man% , MedList.ini, Flu, Man
IniWrite, %Flu_NDC% , MedList.ini, Flu, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %Flu_Lot%: 
New Expiration Date %Flu_Exp% 
New Manufactuer %Flu_Man% 
New NDC %Flu_NDC%
)