#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDMorphine_Exp , MedList.ini , Morphine, Exp , 
IniRead, OLDMorphine_Lot , MedList.ini , Morphine, Lot , 
IniRead, OLDMorphine_Man , MedList.ini , Morphine, Man , 
IniRead, OLDMorphine_NDC , MedList.ini , Morphine, NDC , 

Inputbox, Morphine_Lot , Lot, Enter Morphine Lot Number, ,,,,,,9999,%OLDMorphine_Lot%
Inputbox, Morphine_Exp , Exp, Enter Morphine Expiration Date (in format mmddyyyy), ,,,,,,9999,%OLDMorphine_Exp%
Inputbox, Morphine_Man , Manufacturer, Enter Morphine Manufactuer, ,,,,,,9999,%OLDMorphine_Man%
Inputbox, Morphine_NDC , NDC Number, Enter Morphine NDC Number , ,,,,,,9999,%OLDMorphine_NDC%
IniWrite, %Morphine_Lot% , MedList.ini, Morphine, Lot
IniWrite, %Morphine_Exp% , MedList.ini, Morphine, Exp
IniWrite, %Morphine_Man% , MedList.ini, Morphine, Man
IniWrite, %Morphine_NDC% , MedList.ini, Morphine, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %Morphine_Lot%: 
New Expiration Date %Morphine_Exp% 
New Manufactuer %Morphine_Man% 
New NDC %Morphine_NDC%
)