#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDZofranInj_Exp , MedList.ini , ZofranInj, Exp , 
IniRead, OLDZofranInj_Lot , MedList.ini , ZofranInj, Lot , 
IniRead, OLDZofranInj_Man , MedList.ini , ZofranInj, Man , 
IniRead, OLDZofranInj_NDC , MedList.ini , ZofranInj, NDC , 

Inputbox, ZofranInj_Lot , Lot, Enter ZofranInj Lot Number, ,,,,,,9999,%OLDZofranInj_Lot%
Inputbox, ZofranInj_Exp , Exp, Enter ZofranInj Expiration Date (in format mmddyyyy), ,,,,,,9999,%OLDZofranInj_Exp%
Inputbox, ZofranInj_Man , Manufacturer, Enter ZofranInj Manufactuer, ,,,,,,9999,%OLDZofranInj_Man%
Inputbox, ZofranInj_NDC , NDC Number, Enter ZofranInj NDC Number , ,,,,,,9999,%OLDZofranInj_NDC%
IniWrite, %ZofranInj_Lot% , MedList.ini, ZofranInj, Lot
IniWrite, %ZofranInj_Exp% , MedList.ini, ZofranInj, Exp
IniWrite, %ZofranInj_Man% , MedList.ini, ZofranInj, Man
IniWrite, %ZofranInj_NDC% , MedList.ini, ZofranInj, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %ZofranInj_Lot%: 
New Expiration Date %ZofranInj_Exp% 
New Manufactuer %ZofranInj_Man% 
New NDC %ZofranInj_NDC%
)