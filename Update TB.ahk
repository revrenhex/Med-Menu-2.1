#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDTB_Exp , MedList.ini , TB, Exp , 
IniRead, OLDTB_Lot , MedList.ini , TB, Lot , 
IniRead, OLDTB_Man , MedList.ini , TB, Man , 
IniRead, OLDTB_NDC , MedList.ini , TB, NDC , 

Inputbox, TB_Lot , Lot, Enter TB Lot Number, ,,,,,,9999,%OLDTB_Lot%
Inputbox, TB_Exp , Exp, Enter TB Expiration Date (in format mm/dd/yyyy), ,,,,,,9999,%OLDTB_Exp%
Inputbox, TB_Man , Manufacturer, Enter TB Manufactuer, ,,,,,,9999,%OLDTB_Man%
Inputbox, TB_NDC , NDC Number, Enter TB NDC Number , ,,,,,,9999,%OLDTB_NDC%
IniWrite, %TB_Lot% , MedList.ini, TB, Lot
IniWrite, %TB_Exp% , MedList.ini, TB, Exp
IniWrite, %TB_Man% , MedList.ini, TB, Man
IniWrite, %TB_NDC% , MedList.ini, TB, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %TB_Lot%: 
New Expiration Date %TB_Exp% 
New Manufactuer %TB_Man% 
New NDC %TB_NDC%
)