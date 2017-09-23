#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

IniRead, OLDDepoMedrol_Exp , MedList.ini , DepoMedrol, Exp , 
IniRead, OLDDepoMedrol_Lot , MedList.ini , DepoMedrol, Lot , 
IniRead, OLDDepoMedrol_Man , MedList.ini , DepoMedrol, Man , 
IniRead, OLDDepoMedrol_NDC , MedList.ini , DepoMedrol, NDC , 

Inputbox, DepoMedrol_Lot , Lot, Enter DepoMedrol Lot Number, ,,,,,,9999, %OLDDepoMedrol_Lot%
	IniWrite, %DepoMedrol_Lot% , MedList.ini, DepoMedrol, Lot
Inputbox, DepoMedrol_Exp , Exp, Enter DepoMedrol Expiration Date (in format mmddyyyy), ,,,,,,9999, %OLDDepoMedrol_Exp%
	IniWrite, %DepoMedrol_Exp% , MedList.ini, DepoMedrol, Exp
Inputbox, DepoMedrol_Man , Manufacturer, Enter DepoMedrol Manufactuer, ,,,,,,9999, %OLDDepoMedrol_Man%
	IniWrite, %DepoMedrol_Man% , MedList.ini, DepoMedrol, Man
Inputbox, DepoMedrol_NDC , NDC Number, Enter DepoMedrol NDC Number , ,,,,,,9999, %OLDDepoMedrol_NDC%
	IniWrite, %DepoMedrol_NDC% , MedList.ini, DepoMedrol, NDC


MsgBox ,, New Saved Information , 
(
New Lot# %DepoMedrol_Lot%: 
New Expiration Date %DepoMedrol_Exp% 
New Manufactuer %DepoMedrol_Man% 
New NDC %DepoMedrol_NDC%
)