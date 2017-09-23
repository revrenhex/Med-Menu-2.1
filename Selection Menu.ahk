#NoEnv
#SingleInstance Force
SetWorkingDir %A_ScriptDir%



;===================Update buttons starting here=====================

Gui Add, Button, x8 y8 w80 h28, Decadron
Gui Add, Button, x88 y8 w80 h28, Decadron Update
Gui Add, Button, x88 y40 w80 h28, DepoMedrol Update
Gui Add, Button, x8 y40 w80 h28, DepoMedrol
Gui Add, Button, x8 y72 w80 h28, SoluMedrol
Gui Add, Button, x8 y104 w80 h28, Kenalog
Gui Add, Button, x88 y72 w80 h28, SoluMedrol Update
Gui Add, Button, x88 y104 w80 h28, Kenalog Update
Gui Add, Button, x8 y184 w80 h28, Rocephin
Gui Add, Button, x88 y184 w80 h28, Rocephin Update
Gui Add, Button, x8 y216 w80 h28, Clindamycin
Gui Add, Button, x88 y216 w80 h28, Clindamycin Update
Gui Add, Button, x8 y248 w80 h28, Vancomycin
Gui Add, Button, x88 y248 w80 h28, Vancomycin Update
Gui Add, Button, x8 y296 w80 h28, Demerol
Gui Add, Button, x88 y296 w80 h28, Demerol Update
Gui Add, Button, x8 y328 w80 h28, Nubain
Gui Add, Button, x88 y328 w80 h28, Nubain Update
Gui Add, Button, x8 y360 w80 h28, Stadol
Gui Add, Button, x88 y360 w80 h28, Stadol Update
Gui Add, Button, x8 y392 w80 h28, Morphine
Gui Add, Button, x88 y392 w80 h28, Morphine Update
Gui Add, Button, x8 y136 w80 h28, Celestone
Gui Add, Button, x88 y136 w80 h28, Celestone Update
Gui Add, Button, x8 y424 w80 h28, Toradol
Gui Add, Button, x88 y424 w80 h28, Toradol Update
Gui Add, Button, x200 y8 w80 h28, Promethazine
Gui Add, Button, x280 y8 w80 h28, Promethazine Update
Gui Add, Button, x200 y40 w80 h28, ZofranInj
Gui Add, Button, x280 y40 w80 h28, ZofranInj Update
Gui Add, Button, x200 y72 w80 h28, Reglan
Gui Add, Button, x280 y72 w80 h28, Reglan Update
Gui Add, Button, x200 y104 w80 h28, Compazine
Gui Add, Button, x280 y104 w80 h28, Compazine Update
Gui Add, Button, x280 y104 w80 h28, Ativan
Gui Add, Button, x280 y152 w80 h28, Ativan Update
Gui Add, Button, x200 y184 w80 h28, Valium
Gui Add, Button, x280 y184 w80 h28, Valium Update
Gui Add, Button, x200 y224 w80 h28, ZofranODT
Gui Add, Button, x280 y224 w80 h28, ZofranODT Update
Gui Add, Button, x200 y264 w80 h28, B12
Gui Add, Button, x280 y264 w80 h28, B12 Update
Gui Add, Button, x200 y296 w80 h28, Pepcid
Gui Add, Button, x280 y296 w80 h28, Pepcid Update
Gui Add, Button, x200 y328 w80 h28, Benadryl
Gui Add, Button, x280 y328 w80 h28, Benadryl Update
Gui Add, Button, x200 y360 w80 h28, TB
Gui Add, Button, x280 y360 w80 h28, TB Update
Gui Add, Button, x8 y456 w80 h28, Norflex
Gui Add, Button, x88 y456 w80 h28, Norflex Update
Gui Add, Button, x200 y400 w80 h28, Lidocaine
Gui Add, Button, x280 y400 w80 h28, Lidocaine Update
Gui Add, Button, x200 y432 w80 h28, Albuterol and Atrovent
Gui Add, Button, x280 y432 w80 h28, Kenalog Warning
Gui Add, Button, x8 y504 w80 h28, Flu
Gui Add, Button, x88 y504 w80 h28, Flu Update
Gui Add, Button, x8 y536 w80 h28, Varicella
Gui Add, Button, x88 y536 w80 h28, Varicella Update
Gui Add, Button, x200 y152 w80 h28, Ativan
Gui Add, Button, x8 y568 w80 h28, TDap
Gui Add, Button, x88 y568 w80 h28, TDap Update
Gui Add, Button, x8 y600 w80 h28, TwinRix
Gui Add, Button, x88 y600 w80 h28, TwinRix Update
Gui Add, Button, x8 y632 w80 h28, Meningitis
Gui Add, Button, x88 y632 w80 h28, Meningitis Update
Gui Add, Button, x200 y496 w80 h28, Wound Repair Lidocaine
Gui Add, Button, x280 y496 w80 h28, Wound Repair Marcaine
Gui Add, Button, x8 y664 w80 h28, Hep B
Gui Add, Button, x88 y664 w80 h28, Hep B Update
Gui Add, Button, x200 y528 w80 h28, I and D Lidocaine
Gui Add, Button, x280 y528 w80 h28, I and D Marcaine
Gui Add, Button, x280 y464 w80 h28, Marcaine Update
Gui Add, Button, x8 y696 w80 h28, Hep A
Gui Add, Button, x88 y696 w80 h28, Hep A Update

Gui Show, x1500 y150 w370 h762, Med Fill 2.0.6

;=====================End button update here===========================

Gui, Color, 59677c
Return

GuiEscape:
GuiClose:
ExitApp

;===================End Menu GUI======================

;=============================================
;               Testing
;=============================================
;comment out lines not being used

;=============================================
;          Extras
;=============================================
ButtonKenalogWARNING:
ifWinExist, Injection
WinActivate, 
Send Patient was advised of the potential side effects of Intramuscular Kenalog injection, including lipodystrophy and muscle atrophy.  Despite the availability of alternatives, patient wished to proceed, verbalizing their understanding of the risks.
ExitApp

ButtonAlbuterolandAtrovent:
ifWinExist, Administer
WinActivate, Administer
Send 2.5mg Albuterol / 0.5mg Atrovent
ExitApp

;=============================================
;              Procedures
;=============================================

ButtonWoundRepairLidocaine:
IniRead, Lidocaine_Exp , MedList.ini , Lidocaine, Exp , 
IniRead, Lidocaine_Lot , MedList.ini , Lidocaine, Lot , 
IniRead, Lidocaine_Man , MedList.ini , Lidocaine, Man , 
IniRead, Lidocaine_NDC , MedList.ini , Lidocaine, NDC , 
IniRead, Marcaine_Exp , MedList.ini , Marcaine, Exp , 
IniRead, Marcaine_Lot , MedList.ini , Marcaine, Lot , 
IniRead, Marcaine_Man , MedList.ini , Marcaine, Man , 
IniRead, Marcaine_NDC , MedList.ini , Marcaine, NDC , 
;
ifWinExist, Wound
WinActivate, Wound
Send +{Tab}{Esc}%Lidocaine_Exp%{Tab}%Lidocaine_Lot%{Tab}%Lidocaine_Man%{Tab}{Esc}%Lidocaine_NDC%
ExitApp



ButtonWoundRepairMarcaine:
IniRead, Marcaine_Exp , MedList.ini , Marcaine, Exp , 
IniRead, Marcaine_Lot , MedList.ini , Marcaine, Lot , 
IniRead, Marcaine_Man , MedList.ini , Marcaine, Man , 
IniRead, Marcaine_NDC , MedList.ini , Marcaine, NDC , 
IniRead, Marcaine_Exp , MedList.ini , Marcaine, Exp , 
IniRead, Marcaine_Lot , MedList.ini , Marcaine, Lot , 
IniRead, Marcaine_Man , MedList.ini , Marcaine, Man , 
IniRead, Marcaine_NDC , MedList.ini , Marcaine, NDC , 
;
ifWinExist, Wound
WinActivate, Wound
Send +{Tab}{Esc}%Marcaine_Exp%{Tab}%Marcaine_Lot%{Tab}%Marcaine_Man%{Tab}
ExitApp



ButtonIandDLidocaine:
IniRead, Lidocaine_Exp , MedList.ini , Lidocaine, Exp , 
IniRead, Lidocaine_Lot , MedList.ini , Lidocaine, Lot , 
IniRead, Lidocaine_Man , MedList.ini , Lidocaine, Man , 
IniRead, Lidocaine_NDC , MedList.ini , Lidocaine, NDC , 
IniRead, Marcaine_Exp , MedList.ini , Marcaine, Exp , 
IniRead, Marcaine_Lot , MedList.ini , Marcaine, Lot , 
IniRead, Marcaine_Man , MedList.ini , Marcaine, Man , 
IniRead, Marcaine_NDC , MedList.ini , Marcaine, NDC , 
;
ifWinExist, I&D
WinActivate, I&D
Send +{Tab}{Esc}%Lidocaine_Exp%{Tab}%Lidocaine_Lot%{Tab}%Lidocaine_Man%{Tab}{Esc}%Lidocaine_NDC%
ExitApp



ButtonIandDMarcaine:
IniRead, Marcaine_Exp , MedList.ini , Marcaine, Exp , 
IniRead, Marcaine_Lot , MedList.ini , Marcaine, Lot , 
IniRead, Marcaine_Man , MedList.ini , Marcaine, Man , 
IniRead, Marcaine_NDC , MedList.ini , Marcaine, NDC , 
IniRead, Marcaine_Exp , MedList.ini , Marcaine, Exp , 
IniRead, Marcaine_Lot , MedList.ini , Marcaine, Lot , 
IniRead, Marcaine_Man , MedList.ini , Marcaine, Man , 
IniRead, Marcaine_NDC , MedList.ini , Marcaine, NDC , 
;
ifWinExist, I&D
WinActivate, I&D
Send +{Tab}{Esc}%Marcaine_Exp%{Tab}%Marcaine_Lot%{Tab}%Marcaine_Man%{Tab}
ExitApp



ButtonMarcaineUpdate:
Run Update Marcaine.ahk
ExitApp
;=============================================
;              Decadron
;=============================================
ButtonDecadron:
IniRead, Decadron_Exp , MedList.ini , Decadron, Exp , 
IniRead, Decadron_Lot , MedList.ini , Decadron, Lot , 
IniRead, Decadron_Man , MedList.ini , Decadron, Man , 
IniRead, Decadron_NDC , MedList.ini , Decadron, NDC , 
;
ifWinExist, Injection
WinActivate, Injection
Send +{Tab 3}{Esc}%Decadron_Exp%{Tab}%Decadron_Lot%{Tab}%Decadron_Man%{Tab}{Esc}%Decadron_NDC%
ExitApp

ButtonDecadronUpdate:
Run Update Decadron.ahk
ExitApp


;=============================================
;              DepoMedrol
;=============================================
ButtonDepoMedrol:
IniRead, DepoMedrol_Exp , MedList.ini , DepoMedrol, Exp , 
IniRead, DepoMedrol_Lot , MedList.ini , DepoMedrol, Lot , 
IniRead, DepoMedrol_Man , MedList.ini , DepoMedrol, Man , 
IniRead, DepoMedrol_NDC , MedList.ini , DepoMedrol, NDC , 
;
ifWinExist, Injection
WinActivate, Injection
Send +{Tab 3}{Esc}%DepoMedrol_Exp%{Tab}%DepoMedrol_Lot%{Tab}%DepoMedrol_Man%{Tab}{Esc}%DepoMedrol_NDC%
ExitApp

ButtonDepoMedrolUpdate:
Run Update DepoMedrol.ahk
ExitApp


;=============================================
;              SoluMedrol
;=============================================
ButtonSoluMedrol:
IniRead, SoluMedrol_Exp , MedList.ini , SoluMedrol, Exp , 
IniRead, SoluMedrol_Lot , MedList.ini , SoluMedrol, Lot , 
IniRead, SoluMedrol_Man , MedList.ini , SoluMedrol, Man , 
IniRead, SoluMedrol_NDC , MedList.ini , SoluMedrol, NDC , 
;
ifWinExist, Injection
WinActivate, Injection
Send +{Tab 3}{Esc}%SoluMedrol_Exp%{Tab}%SoluMedrol_Lot%{Tab}%SoluMedrol_Man%{Tab}{Esc}%SoluMedrol_NDC%
ExitApp

ButtonSoluMedrolUpdate:
Run Update SoluMedrol.ahk
ExitApp


;=============================================
;              Kenalog
;=============================================
ButtonKenalog:
IniRead, Kenalog_Exp , MedList.ini , Kenalog, Exp , 
IniRead, Kenalog_Lot , MedList.ini , Kenalog, Lot , 
IniRead, Kenalog_Man , MedList.ini , Kenalog, Man , 
IniRead, Kenalog_NDC , MedList.ini , Kenalog, NDC , 
;
ifWinExist, Injection
WinActivate, Injection
Send +{Tab 3}{Esc}%Kenalog_Exp%{Tab}%Kenalog_Lot%{Tab}%Kenalog_Man%{Tab}{Esc}%Kenalog_NDC%
ExitApp

ButtonKenalogUpdate:
Run Update Kenalog.ahk
ExitApp


;=============================================
;              Celestone
;=============================================
ButtonCelestone:
IniRead, Celestone_Exp , MedList.ini , Celestone, Exp , 
IniRead, Celestone_Lot , MedList.ini , Celestone, Lot , 
IniRead, Celestone_Man , MedList.ini , Celestone, Man , 
IniRead, Celestone_NDC , MedList.ini , Celestone, NDC , 
;
ifWinExist, Injection
WinActivate, Injection
Send +{Tab 3}{Esc}%Celestone_Exp%{Tab}%Celestone_Lot%{Tab}%Celestone_Man%{Tab}{Esc}%Celestone_NDC%
ExitApp

ButtonCelestoneUpdate:
Run Update Celestone.ahk
ExitApp


;=============================================
;              Rocephin
;=============================================
ButtonRocephin:
IniRead, Rocephin_Exp , MedList.ini , Rocephin, Exp , 
IniRead, Rocephin_Lot , MedList.ini , Rocephin, Lot , 
IniRead, Rocephin_Man , MedList.ini , Rocephin, Man , 
IniRead, Rocephin_NDC , MedList.ini , Rocephin, NDC , 
;
ifWinExist, Injection
WinActivate, Injection
Send +{Tab 3}{Esc}%Rocephin_Exp%{Tab}%Rocephin_Lot%{Tab}%Rocephin_Man%{Tab}{Esc}%Rocephin_NDC%
ExitApp

ButtonRocephinUpdate:
Run Update Rocephin.ahk
ExitApp


;=============================================
;              Clindamycin
;=============================================
ButtonClindamycin:
IniRead, Clindamycin_Exp , MedList.ini , Clindamycin, Exp , 
IniRead, Clindamycin_Lot , MedList.ini , Clindamycin, Lot , 
IniRead, Clindamycin_Man , MedList.ini , Clindamycin, Man , 
IniRead, Clindamycin_NDC , MedList.ini , Clindamycin, NDC , 
;
ifWinExist, Injection
WinActivate, Injection
Send +{Tab 3}{Esc}%Clindamycin_Exp%{Tab}%Clindamycin_Lot%{Tab}%Clindamycin_Man%{Tab}{Esc}%Clindamycin_NDC%
ExitApp

ButtonClindamycinUpdate:
Run Update Clindamycin.ahk
ExitApp


;=============================================
;              Toradol
;=============================================
ButtonToradol:
IniRead, Toradol_Exp , MedList.ini , Toradol, Exp , 
IniRead, Toradol_Lot , MedList.ini , Toradol, Lot , 
IniRead, Toradol_Man , MedList.ini , Toradol, Man , 
IniRead, Toradol_NDC , MedList.ini , Toradol, NDC , 
;
ifWinExist, Injection
WinActivate, Injection
Send +{Tab 3}{Esc}%Toradol_Exp%{Tab}%Toradol_Lot%{Tab}%Toradol_Man%{Tab}{Esc}%Toradol_NDC%
ExitApp

ButtonToradolUpdate:
Run Update Toradol.ahk
ExitApp



;=============================================
;              Promethazine
;=============================================
ButtonPromethazine:
IniRead, Promethazine_Exp , MedList.ini , Promethazine, Exp , 
IniRead, Promethazine_Lot , MedList.ini , Promethazine, Lot , 
IniRead, Promethazine_Man , MedList.ini , Promethazine, Man , 
IniRead, Promethazine_NDC , MedList.ini , Promethazine, NDC , 
;
ifWinExist, Injection
WinActivate, Injection
Send +{Tab 3}{Esc}%Promethazine_Exp%{Tab}%Promethazine_Lot%{Tab}%Promethazine_Man%{Tab}{Esc}%Promethazine_NDC%
ExitApp

ButtonPromethazineUpdate:
Run Update Promethazine.ahk
ExitApp



;=============================================
;              Norflex
;=============================================
ButtonNorflex:
IniRead, Norflex_Exp , MedList.ini , Norflex, Exp , 
IniRead, Norflex_Lot , MedList.ini , Norflex, Lot , 
IniRead, Norflex_Man , MedList.ini , Norflex, Man , 
IniRead, Norflex_NDC , MedList.ini , Norflex, NDC , 
;
ifWinExist, Injection
WinActivate, Injection
Send +{Tab 3}{Esc}%Norflex_Exp%{Tab}%Norflex_Lot%{Tab}%Norflex_Man%{Tab}{Esc}%Norflex_NDC%
ExitApp

ButtonNorflexUpdate:
Run Update Norflex.ahk
ExitApp



;=============================================
;              Demerol
;=============================================
ButtonDemerol:
IniRead, Demerol_Exp , MedList.ini , Demerol, Exp , 
IniRead, Demerol_Lot , MedList.ini , Demerol, Lot , 
IniRead, Demerol_Man , MedList.ini , Demerol, Man , 
IniRead, Demerol_NDC , MedList.ini , Demerol, NDC , 
;
ifWinExist, Injection
WinActivate, Injection
Send +{Tab 3}{Esc}%Demerol_Exp%{Tab}%Demerol_Lot%{Tab}%Demerol_Man%{Tab}{Esc}%Demerol_NDC%
ExitApp

ButtonDemerolUpdate:
Run Update Demerol.ahk
ExitApp



;=============================================
;              Vancomycin
;=============================================
ButtonVancomycin:
IniRead, Vancomycin_Exp , MedList.ini , Vancomycin, Exp , 
IniRead, Vancomycin_Lot , MedList.ini , Vancomycin, Lot , 
IniRead, Vancomycin_Man , MedList.ini , Vancomycin, Man , 
IniRead, Vancomycin_NDC , MedList.ini , Vancomycin, NDC , 
;
ifWinExist, Injection
WinActivate, Injection
Send +{Tab 3}{Esc}%Vancomycin_Exp%{Tab}%Vancomycin_Lot%{Tab}%Vancomycin_Man%{Tab}{Esc}%Vancomycin_NDC%
ExitApp

ButtonVancomycinUpdate:
Run Update Vancomycin.ahk
ExitApp



;=============================================
;              Nubain
;=============================================
ButtonNubain:
IniRead, Nubain_Exp , MedList.ini , Nubain, Exp , 
IniRead, Nubain_Lot , MedList.ini , Nubain, Lot , 
IniRead, Nubain_Man , MedList.ini , Nubain, Man , 
IniRead, Nubain_NDC , MedList.ini , Nubain, NDC , 
;
ifWinExist, Injection
WinActivate, Injection
Send +{Tab 3}{Esc}%Nubain_Exp%{Tab}%Nubain_Lot%{Tab}%Nubain_Man%{Tab}{Esc}%Nubain_NDC%
ExitApp

ButtonNubainUpdate:
Run Update Nubain.ahk
ExitApp



;=============================================
;              Stadol
;=============================================
ButtonStadol:
IniRead, Stadol_Exp , MedList.ini , Stadol, Exp , 
IniRead, Stadol_Lot , MedList.ini , Stadol, Lot , 
IniRead, Stadol_Man , MedList.ini , Stadol, Man , 
IniRead, Stadol_NDC , MedList.ini , Stadol, NDC , 
;
ifWinExist, Injection
WinActivate, Injection
Send +{Tab 3}{Esc}%Stadol_Exp%{Tab}%Stadol_Lot%{Tab}%Stadol_Man%{Tab}{Esc}%Stadol_NDC%
ExitApp

ButtonStadolUpdate:
Run Update Stadol.ahk
ExitApp



;=============================================
;              Morphine
;=============================================
ButtonMorphine:
IniRead, Morphine_Exp , MedList.ini , Morphine, Exp , 
IniRead, Morphine_Lot , MedList.ini , Morphine, Lot , 
IniRead, Morphine_Man , MedList.ini , Morphine, Man , 
IniRead, Morphine_NDC , MedList.ini , Morphine, NDC , 
;
ifWinExist, Injection
WinActivate, Injection
Send +{Tab 3}{Esc}%Morphine_Exp%{Tab}%Morphine_Lot%{Tab}%Morphine_Man%{Tab}{Esc}%Morphine_NDC%
ExitApp

ButtonMorphineUpdate:
Run Update Morphine.ahk
ExitApp



;=============================================
;              ZofranInj
;=============================================
ButtonZofranInj:
IniRead, ZofranInj_Exp , MedList.ini , ZofranInj, Exp , 
IniRead, ZofranInj_Lot , MedList.ini , ZofranInj, Lot , 
IniRead, ZofranInj_Man , MedList.ini , ZofranInj, Man , 
IniRead, ZofranInj_NDC , MedList.ini , ZofranInj, NDC , 
;
ifWinExist, Injection
WinActivate, Injection
Send +{Tab 3}{Esc}%ZofranInj_Exp%{Tab}%ZofranInj_Lot%{Tab}%ZofranInj_Man%{Tab}{Esc}%ZofranInj_NDC%
ExitApp

ButtonZofranInjUpdate:
Run Update ZofranInj.ahk
ExitApp



;=============================================
;              TB
;=============================================
ButtonTB:
IniRead, TB_Exp , MedList.ini , TB, Exp , 
IniRead, TB_Lot , MedList.ini , TB, Lot , 
IniRead, TB_Man , MedList.ini , TB, Man , 
IniRead, TB_NDC , MedList.ini , TB, NDC , 
;
ifWinExist, Tuberculosis
WinActivate, Tuberculosis
Send 5{Tab}Left Forearm{Tab}%TB_Lot%{Tab}{Esc}%TB_Exp%{Tab}{Esc}{Tab 4}Manufactuer: %TB_Man%{Enter}NDC: %TB_NDC%
ExitApp

ButtonTBUpdate:
Run Update TB.ahk
ExitApp



;=============================================
;              Lidocaine
;=============================================
ButtonLidocaine:
IniRead, Lidocaine_Exp , MedList.ini , Lidocaine, Exp , 
IniRead, Lidocaine_Lot , MedList.ini , Lidocaine, Lot , 
IniRead, Lidocaine_Man , MedList.ini , Lidocaine, Man , 
IniRead, Lidocaine_NDC , MedList.ini , Lidocaine, NDC , 
;
ifWinExist, Injection
WinActivate, Injection
Send 2.8ml{Tab}{Esc}%Lidocaine_Exp%{Tab}%Lidocaine_Lot%{Tab}%Lidocaine_Man%{Tab}{Esc%Lidocaine_NDC%
ExitApp

ButtonLidocaineUpdate:
Run Update Lidocaine.ahk
ExitApp



;=============================================
;              Valium
;=============================================
ButtonValium:
IniRead, Valium_Exp , MedList.ini , Valium, Exp , 
IniRead, Valium_Lot , MedList.ini , Valium, Lot , 
IniRead, Valium_Man , MedList.ini , Valium, Man , 
IniRead, Valium_NDC , MedList.ini , Valium, NDC , 
;
ifWinExist, Injection
WinActivate, Injection
Send +{Tab 3}{Esc}%Valium_Exp%{Tab}%Valium_Lot%{Tab}%Valium_Man%{Tab}{Esc}%Valium_NDC%
ExitApp

ButtonValiumUpdate:
Run Update Valium.ahk
ExitApp



;=============================================
;              Flu
;=============================================
ButtonFlu:
IniRead, Flu_Exp , MedList.ini , Flu, Exp , 
IniRead, Flu_Lot , MedList.ini , Flu, Lot , 
IniRead, Flu_Man , MedList.ini , Flu, Man , 
IniRead, Flu_NDC , MedList.ini , Flu, NDC , 
;
ifWinExist, Vaccine
WinActivate, Vaccine
Send %Flu_NDC%{Tab}%Flu_lot%{Tab}%Flu_Exp%{Tab}{Down 2}{Tab 4}{Space}{Tab 2}Cliff Harris RN{Tab 2}{Del}0.5}{Tab}{Down}
ExitApp

ButtonFluUpdate:
Run Update Flu.ahk
ExitApp



;=============================================
;              Varicella
;=============================================
ButtonVaricella:
IniRead, Varicella_Exp , MedList.ini , Varicella, Exp , 
IniRead, Varicella_Lot , MedList.ini , Varicella, Lot , 
IniRead, Varicella_Man , MedList.ini , Varicella, Man , 
IniRead, Varicella_NDC , MedList.ini , Varicella, NDC , 
;
ifWinExist, Vaccine
WinActivate, Vaccine
Send %Varicella_NDC%{Tab}%Varicella_lot%{Tab}%Varicella_Exp%{Tab}{Down 4}{Tab 4}{Space}{Tab 2}Cliff Harris RN{Tab 2}{Del}0.5}{Tab}{Down}
ExitApp

ButtonVaricellaUpdate:
Run Update Varicella.ahk
ExitApp



;=============================================
;              TDap
;=============================================
ButtonTDap:
IniRead, TDap_Exp , MedList.ini , TDap, Exp , 
IniRead, TDap_Lot , MedList.ini , TDap, Lot , 
IniRead, TDap_Man , MedList.ini , TDap, Man , 
IniRead, TDap_NDC , MedList.ini , TDap, NDC , 
;
ifWinExist, Vaccine
WinActivate, Vaccine
Send %TDap_NDC%{Tab}%TDap_lot%{Tab}%TDap_Exp%{Tab}{Down 2}{Tab 4}{Space}{Tab 2}Cliff Harris RN{Tab 2}{Del}0.5}{Tab}{Down}
ExitApp

ButtonTDapUpdate:
Run Update TDap.ahk
ExitApp



;=============================================
;              TwinRix
;=============================================
ButtonTwinRix:
IniRead, TwinRix_Exp , MedList.ini , TwinRix, Exp , 
IniRead, TwinRix_Lot , MedList.ini , TwinRix, Lot , 
IniRead, TwinRix_Man , MedList.ini , TwinRix, Man , 
IniRead, TwinRix_NDC , MedList.ini , TwinRix, NDC , 
;
ifWinExist, Vaccine
WinActivate, Vaccine
Send %TwinRix_NDC%{Tab}%TwinRix_lot%{Tab}%TwinRix_Exp%{Tab}{Down 2}{Tab 4}{Space}{Tab 2}Cliff Harris RN{Tab 2}{Del}0.5}{Tab}{Down}
ExitApp

ButtonTwinRixUpdate:
Run Update TwinRix.ahk
ExitApp



;=============================================
;              Ativan
;=============================================
ButtonAtivan:
IniRead, Ativan_Exp , MedList.ini , Ativan, Exp , 
IniRead, Ativan_Lot , MedList.ini , Ativan, Lot , 
IniRead, Ativan_Man , MedList.ini , Ativan, Man , 
IniRead, Ativan_NDC , MedList.ini , Ativan, NDC , 
;
ifWinExist, Injection
WinActivate, Injection
Send +{Tab 3}{Esc}%Ativan_Exp%{Tab}%Ativan_Lot%{Tab}%Ativan_Man%{Tab}{Esc}%Ativan_NDC%
ExitApp

ButtonAtivanUpdate:
Run Update Ativan.ahk
ExitApp



;=============================================
;              B12
;=============================================
ButtonB12:
IniRead, B12_Exp , MedList.ini , B12, Exp , 
IniRead, B12_Lot , MedList.ini , B12, Lot , 
IniRead, B12_Man , MedList.ini , B12, Man , 
IniRead, B12_NDC , MedList.ini , B12, NDC , 
;
ifWinExist, Injection
WinActivate, Injection
Send +{Tab 3}{Esc}%B12_Exp%{Tab}%B12_Lot%{Tab}%B12_Man%{Tab}{Esc}%B12_NDC%
ExitApp

ButtonB12Update:
Run Update B12.ahk
ExitApp



;=============================================
;              Meningitis
;=============================================
ButtonMeningitis:
IniRead, Meningitis_Exp , MedList.ini , Meningitis, Exp , 
IniRead, Meningitis_Lot , MedList.ini , Meningitis, Lot , 
IniRead, Meningitis_Man , MedList.ini , Meningitis, Man , 
IniRead, Meningitis_NDC , MedList.ini , Meningitis, NDC , 
;
ifWinExist, Vaccine
WinActivate, Vaccine
Send %Meningitis_NDC%{Tab}%Meningitis_lot%{Tab}%Meningitis_Exp%{Tab}{Down 2}{Tab 4}{Space}{Tab 2}Cliff Harris RN{Tab 2}{Del}0.5}{Tab}{Down}
ExitApp

ButtonMeningitisUpdate:
Run Update Meningitis.ahk
ExitApp



;=============================================
;              HepB
;=============================================
ButtonHepB:
IniRead, HepB_Exp , MedList.ini , HepB, Exp , 
IniRead, HepB_Lot , MedList.ini , HepB, Lot , 
IniRead, HepB_Man , MedList.ini , HepB, Man , 
IniRead, HepB_NDC , MedList.ini , HepB, NDC , 
;
ifWinExist, Vaccine
WinActivate, Vaccine
Send %HepB_NDC%{Tab}%HepB_lot%{Tab}%HepB_Exp%{Tab}{Down 2}{Tab 4}{Space}{Tab 2}Cliff Harris RN{Tab 2}{Del}0.5}{Tab}{Down}
ExitApp

ButtonHepBUpdate:
Run Update HepB.ahk
ExitApp



;=============================================
;              HepA
;=============================================
ButtonHepA:
IniRead, HepA_Exp , MedList.ini , HepA, Exp , 
IniRead, HepA_Lot , MedList.ini , HepA, Lot , 
IniRead, HepA_Man , MedList.ini , HepA, Man , 
IniRead, HepA_NDC , MedList.ini , HepA, NDC , 
;
ifWinExist, Vaccine
WinActivate, Vaccine
Send %HepA_NDC%{Tab}%HepA_lot%{Tab}%HepA_Exp%{Tab}{Down 2}{Tab 4}{Space}{Tab 2}Cliff Harris RN{Tab 2}{Del}0.5}{Tab}{Down}
ExitApp

ButtonHepAUpdate:
Run Update HepA.ahk
ExitApp