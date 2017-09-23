#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDHepB_Exp , MedList.ini , HepB, Exp , 
IniRead, OLDHepB_Lot , MedList.ini , HepB, Lot , 
IniRead, OLDHepB_Man , MedList.ini , HepB, Man , 
IniRead, OLDHepB_NDC , MedList.ini , HepB, NDC , 

Inputbox, HepB_Lot , Lot, Enter HepB Lot Number, ,,,,,,9999,%OLDHepB_Lot%
Inputbox, HepB_Exp , Exp, Enter HepB Expiration Date (in format mm/dd/yyyy) you MUST include the /'s, ,,,,,,9999,%OLDHepB_Exp%
Inputbox, HepB_Man , Manufacturer, Enter HepB Manufactuer, ,,,,,,9999,%OLDHepB_Man%
Inputbox, HepB_NDC , NDC Number, Enter HepB NDC Number , ,,,,,,9999,%OLDHepB_NDC%
IniWrite, %HepB_Lot% , MedList.ini, HepB, Lot
IniWrite, %HepB_Exp% , MedList.ini, HepB, Exp
IniWrite, %HepB_Man% , MedList.ini, HepB, Man
IniWrite, %HepB_NDC% , MedList.ini, HepB, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %HepB_Lot%: 
New Expiration Date %HepB_Exp% 
New Manufactuer %HepB_Man% 
New NDC %HepB_NDC%
)