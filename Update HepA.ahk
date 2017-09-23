#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDHepA_Exp , MedList.ini , HepA, Exp , 
IniRead, OLDHepA_Lot , MedList.ini , HepA, Lot , 
IniRead, OLDHepA_Man , MedList.ini , HepA, Man , 
IniRead, OLDHepA_NDC , MedList.ini , HepA, NDC , 

Inputbox, HepA_Lot , Lot, Enter HepA Lot Number, ,,,,,,9999,%OLDHepA_Lot%
Inputbox, HepA_Exp , Exp, Enter HepA Expiration Date (in format mm/dd/yyyy) you MUST include the /'s, ,,,,,,9999,%OLDHepA_Exp%
Inputbox, HepA_Man , Manufacturer, Enter HepA Manufactuer, ,,,,,,9999,%OLDHepA_Man%
Inputbox, HepA_NDC , NDC Number, Enter HepA NDC Number , ,,,,,,9999,%OLDHepA_NDC%
IniWrite, %HepA_Lot% , MedList.ini, HepA, Lot
IniWrite, %HepA_Exp% , MedList.ini, HepA, Exp
IniWrite, %HepA_Man% , MedList.ini, HepA, Man
IniWrite, %HepA_NDC% , MedList.ini, HepA, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %HepA_Lot%: 
New Expiration Date %HepA_Exp% 
New Manufactuer %HepA_Man% 
New NDC %HepA_NDC%
)