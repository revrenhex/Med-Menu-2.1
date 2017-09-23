#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDLidocaine_Exp , MedList.ini , Lidocaine, Exp , 
IniRead, OLDLidocaine_Lot , MedList.ini , Lidocaine, Lot , 
IniRead, OLDLidocaine_Man , MedList.ini , Lidocaine, Man , 
IniRead, OLDLidocaine_NDC , MedList.ini , Lidocaine, NDC , 

Inputbox, Lidocaine_Lot , Lot, Enter Lidocaine Lot Number, ,,,,,,9999,%OLDLidocaine_Lot%
Inputbox, Lidocaine_Exp , Exp, Enter Lidocaine Expiration Date (in format mmddyyyy), ,,,,,,9999,%OLDLidocaine_Exp%
Inputbox, Lidocaine_Man , Manufacturer, Enter Lidocaine Manufactuer, ,,,,,,9999,%OLDLidocaine_Man%
Inputbox, Lidocaine_NDC , NDC Number, Enter Lidocaine NDC Number , ,,,,,,9999,%OLDLidocaine_NDC%
IniWrite, %Lidocaine_Lot% , MedList.ini, Lidocaine, Lot
IniWrite, %Lidocaine_Exp% , MedList.ini, Lidocaine, Exp
IniWrite, %Lidocaine_Man% , MedList.ini, Lidocaine, Man
IniWrite, %Lidocaine_NDC% , MedList.ini, Lidocaine, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %Lidocaine_Lot%: 
New Expiration Date %Lidocaine_Exp% 
New Manufactuer %Lidocaine_Man% 
New NDC %Lidocaine_NDC%
)