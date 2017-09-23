#NoEnv
#SingleInstance Force
SetWorkingDir %A_ScriptDir%

;IniRead, OutputVar, Filename, Section, Key [, Default]
IniRead, OLDB12_Exp , MedList.ini , B12, Exp , 
IniRead, OLDB12_Lot , MedList.ini , B12, Lot , 
IniRead, OLDB12_Man , MedList.ini , B12, Man , 
IniRead, OLDB12_NDC , MedList.ini , B12, NDC , 

;InputBox, OutputVar [, Title, Prompt, HIDE, Width, Height, X, Y, Font, Timeout, Default]
Inputbox, B12_Lot , Lot, Enter B12 Lot Number, ,,,,,,9999,%OLDB12_Lot%
Inputbox, B12_Exp , Exp, Enter B12 Expiration Date (in format mmddyyyy), ,,,,,,9999,%OLDB12_Exp%
Inputbox, B12_Man , Manufacturer, Enter B12 Manufactuer, ,,,,,,9999,%OLDB12_Man%
Inputbox, B12_NDC , NDC Number, Enter B12 NDC Number , ,,,,,,9999,%OLDB12_NDC%

;IniWrite, Value, Filename, Section, Key
IniWrite, %B12_Lot% , MedList.ini, B12, Lot
IniWrite, %B12_Exp% , MedList.ini, B12, Exp
IniWrite, %B12_Man% , MedList.ini, B12, Man
IniWrite, %B12_NDC% , MedList.ini, B12, NDC

MsgBox ,, New Saved Information , 
(
New Lot# %B12_Lot%: 
New Expiration Date %B12_Exp% 
New Manufactuer %B12_Man% 
New NDC %B12_NDC%
)