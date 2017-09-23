#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDRocephin_Exp , MedList.ini , Rocephin, Exp , 
IniRead, OLDRocephin_Lot , MedList.ini , Rocephin, Lot , 
IniRead, OLDRocephin_Man , MedList.ini , Rocephin, Man , 
IniRead, OLDRocephin_NDC , MedList.ini , Rocephin, NDC , 

Inputbox, Rocephin_Lot , Lot, Enter Rocephin Lot Number, ,,,,,,9999,%OLDRocephin_Lot%
Inputbox, Rocephin_Exp , Exp, Enter Rocephin Expiration Date (in format mmddyyyy), ,,,,,,9999,%OLDRocephin_Exp%
Inputbox, Rocephin_Man , Manufacturer, Enter Rocephin Manufactuer, ,,,,,,9999,%OLDRocephin_Man%
Inputbox, Rocephin_NDC , NDC Number, Enter Rocephin NDC Number , ,,,,,,9999,%OLDRocephin_NDC%
IniWrite, %Rocephin_Lot% , MedList.ini, Rocephin, Lot
IniWrite, %Rocephin_Exp% , MedList.ini, Rocephin, Exp
IniWrite, %Rocephin_Man% , MedList.ini, Rocephin, Man
IniWrite, %Rocephin_NDC% , MedList.ini, Rocephin, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %Rocephin_Lot%: 
New Expiration Date %Rocephin_Exp% 
New Manufactuer %Rocephin_Man% 
New NDC %Rocephin_NDC%
)