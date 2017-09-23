#NoEnv
#SingleInstance Force
SetWorkingDir %A_ScriptDir%

;IniRead, OutputVar, Filename, Section, Key [, Default]
IniRead, OLDDecadron_Exp , MedList.ini , Decadron, Exp , 
IniRead, OLDDecadron_Lot , MedList.ini , Decadron, Lot , 
IniRead, OLDDecadron_Man , MedList.ini , Decadron, Man , 
IniRead, OLDDecadron_NDC , MedList.ini , Decadron, NDC , 

;InputBox, OutputVar [, Title, Prompt, HIDE, Width, Height, X, Y, Font, Timeout, Default]
Inputbox, Decadron_Lot , Lot, Enter DECADRON Lot Number, ,,,,,,9999,%OLDDecadron_Lot%
Inputbox, Decadron_Exp , Exp, Enter DECADRON Expiration Date (in format mmddyyyy), ,,,,,,9999,%OLDDecadron_Exp%
Inputbox, Decadron_Man , Manufacturer, Enter DECADRON Manufactuer, ,,,,,,9999,%OLDDecadron_Man%
Inputbox, Decadron_NDC , NDC Number, Enter DECADRON NDC Number , ,,,,,,9999,%OLDDecadron_NDC%

;IniWrite, Value, Filename, Section, Key
IniWrite, %Decadron_Lot% , MedList.ini, Decadron, Lot
IniWrite, %Decadron_Exp% , MedList.ini, Decadron, Exp
IniWrite, %Decadron_Man% , MedList.ini, Decadron, Man
IniWrite, %Decadron_NDC% , MedList.ini, Decadron, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %Decadron_Lot%: 
New Expiration Date %Decadron_Exp% 
New Manufactuer %Decadron_Man% 
New NDC %Decadron_NDC%
)