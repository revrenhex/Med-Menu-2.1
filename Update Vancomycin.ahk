#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


IniRead, OLDVancomycin_Exp , MedList.ini , Vancomycin, Exp , 
IniRead, OLDVancomycin_Lot , MedList.ini , Vancomycin, Lot , 
IniRead, OLDVancomycin_Man , MedList.ini , Vancomycin, Man , 
IniRead, OLDVancomycin_NDC , MedList.ini , Vancomycin, NDC , 

Inputbox, Vancomycin_Lot , Lot, Enter Vancomycin Lot Number, ,,,,,,9999,%OLDVancomycin_Lot%
Inputbox, Vancomycin_Exp , Exp, Enter Vancomycin Expiration Date (in format mmddyyyy), ,,,,,,9999,%OLDVancomycin_Exp%
Inputbox, Vancomycin_Man , Manufacturer, Enter Vancomycin Manufactuer, ,,,,,,9999,%OLDVancomycin_Man%
Inputbox, Vancomycin_NDC , NDC Number, Enter Vancomycin NDC Number , ,,,,,,9999,%OLDVancomycin_NDC%
IniWrite, %Vancomycin_Lot% , MedList.ini, Vancomycin, Lot
IniWrite, %Vancomycin_Exp% , MedList.ini, Vancomycin, Exp
IniWrite, %Vancomycin_Man% , MedList.ini, Vancomycin, Man
IniWrite, %Vancomycin_NDC% , MedList.ini, Vancomycin, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %Vancomycin_Lot%: 
New Expiration Date %Vancomycin_Exp% 
New Manufactuer %Vancomycin_Man% 
New NDC %Vancomycin_NDC%
)