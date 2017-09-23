#NoEnv
#SingleInstance Force
SetWorkingDir %A_ScriptDir%

;IniRead, OutputVar, Filename, Section, Key [, Default]
IniRead, OLDAtivan_Exp , MedList.ini , Ativan, Exp , 
IniRead, OLDAtivan_Lot , MedList.ini , Ativan, Lot , 
IniRead, OLDAtivan_Man , MedList.ini , Ativan, Man , 
IniRead, OLDAtivan_NDC , MedList.ini , Ativan, NDC , 

;InputBox, OutputVar [, Title, Prompt, HIDE, Width, Height, X, Y, Font, Timeout, Default]
Inputbox, Ativan_Lot , Lot, Enter Ativan Lot Number, ,,,,,,9999,%OLDAtivan_Lot%
Inputbox, Ativan_Exp , Exp, Enter Ativan Expiration Date (in format mmddyyyy), ,,,,,,9999,%OLDAtivan_Exp%
Inputbox, Ativan_Man , Manufacturer, Enter Ativan Manufactuer, ,,,,,,9999,%OLDAtivan_Man%
Inputbox, Ativan_NDC , NDC Number, Enter Ativan NDC Number , ,,,,,,9999,%OLDAtivan_NDC%

;IniWrite, Value, Filename, Section, Key
IniWrite, %Ativan_Lot% , MedList.ini, Ativan, Lot
IniWrite, %Ativan_Exp% , MedList.ini, Ativan, Exp
IniWrite, %Ativan_Man% , MedList.ini, Ativan, Man
IniWrite, %Ativan_NDC% , MedList.ini, Ativan, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %Ativan_Lot%: 
New Expiration Date %Ativan_Exp% 
New Manufactuer %Ativan_Man% 
New NDC %Ativan_NDC%
)