#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDNubain_Exp , MedList.ini , Nubain, Exp , 
IniRead, OLDNubain_Lot , MedList.ini , Nubain, Lot , 
IniRead, OLDNubain_Man , MedList.ini , Nubain, Man , 
IniRead, OLDNubain_NDC , MedList.ini , Nubain, NDC , 

Inputbox, Nubain_Lot , Lot, Enter Nubain Lot Number, ,,,,,,9999,%OLDNubain_Lot%
Inputbox, Nubain_Exp , Exp, Enter Nubain Expiration Date (in format mmddyyyy), ,,,,,,9999,%OLDNubain_Exp%
Inputbox, Nubain_Man , Manufacturer, Enter Nubain Manufactuer, ,,,,,,9999,%OLDNubain_Man%
Inputbox, Nubain_NDC , NDC Number, Enter Nubain NDC Number , ,,,,,,9999,%OLDNubain_NDC%
IniWrite, %Nubain_Lot% , MedList.ini, Nubain, Lot
IniWrite, %Nubain_Exp% , MedList.ini, Nubain, Exp
IniWrite, %Nubain_Man% , MedList.ini, Nubain, Man
IniWrite, %Nubain_NDC% , MedList.ini, Nubain, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %Nubain_Lot%: 
New Expiration Date %Nubain_Exp% 
New Manufactuer %Nubain_Man% 
New NDC %Nubain_NDC%
)