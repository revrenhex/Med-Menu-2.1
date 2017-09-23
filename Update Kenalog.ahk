#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDKenalog_Exp , MedList.ini , Kenalog, Exp , 
IniRead, OLDKenalog_Lot , MedList.ini , Kenalog, Lot , 
IniRead, OLDKenalog_Man , MedList.ini , Kenalog, Man , 
IniRead, OLDKenalog_NDC , MedList.ini , Kenalog, NDC , 

Inputbox, Kenalog_Lot , Lot, Enter Kenalog Lot Number, ,,,,,,9999,%OLDKenalog_Lot%
Inputbox, Kenalog_Exp , Exp, Enter Kenalog Expiration Date (in format mmddyyyy), ,,,,,,9999,%OLDKenalog_Exp%
Inputbox, Kenalog_Man , Manufacturer, Enter Kenalog Manufactuer, ,,,,,,9999,%OLDKenalog_Man%
Inputbox, Kenalog_NDC , NDC Number, Enter Kenalog NDC Number , ,,,,,,9999,%OLDKenalog_NDC%
IniWrite, %Kenalog_Lot% , MedList.ini, Kenalog, Lot
IniWrite, %Kenalog_Exp% , MedList.ini, Kenalog, Exp
IniWrite, %Kenalog_Man% , MedList.ini, Kenalog, Man
IniWrite, %Kenalog_NDC% , MedList.ini, Kenalog, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %Kenalog_Lot%: 
New Expiration Date %Kenalog_Exp% 
New Manufactuer %Kenalog_Man% 
New NDC %Kenalog_NDC%
)