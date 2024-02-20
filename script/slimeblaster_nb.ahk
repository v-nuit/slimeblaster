#SingleInstance Force
#Requires AutoHotkey v2.0

;Timings in miliseconds
movingTime := 7500
questTime := 172500 
spamTime := 14000

$F1::{
	loop{
		try{
			if ImageSearch(&FoundX, &FoundY, 1400, 60, 1485, 120, "*TransBlack *80 " A_ScriptDir "\images\marker_nb.png"){
				GetInPosition()
	
				;Attack until quest finishes
				startTime := A_TickCount
				Loop {
					MoveAndAttack()
				} Until (A_TickCount - startTime > questTime)
				ClearKeys()
	
				;wait for results screen
				Sleep 18000
	
				;Spams LMB to get through result screen, press 3 if repeat marker not detected, press up to select yes if any prompt comes up
				startTime := A_TickCount
				Loop {
					try{
						if !ImageSearch(&FoundX, &FoundY, 435, 760, 465, 790, "*TransBlack *8 " A_ScriptDir "\images\repeat_nb.png") and ImageSearch(&FoundX, &FoundY, 530, 170, 570, 210, "*TransBlack *8 " A_ScriptDir "\images\coin_nb.png"){
							SendInput "{3 Down}"
							Sleep 5
							SendInput "{3 Up}"
							Sleep 295
						}
						if ImageSearch(&FoundX, &FoundY, 900, 550, 1100, 850, "*TransBlack *8 " A_ScriptDir "\images\yes_nb.png"){
							SendInput "{Up Down}"
							Sleep 5
							SendInput "{Up Up}"
							Sleep 295
						}
						else {
							SendEvent "{LButton Down}"
							Sleep 5
							SendEvent "{LButton Up}"
							Sleep 295
						}
					}
				} Until (A_TickCount - startTime > spamTime)
				ClearKeys()
			}
		}
	}
}

GetInPosition(){
	SendInput "{LShift down}{w down}"
	Sleep movingTime
	SendInput "{LShift up}{w up}"
}

MoveAndAttack(){
	SendInput "{w down}"
	Sleep 20
	FireWeapon()
	SendInput "{w up}"
	Sleep 20
	FireWeapon()

	SendInput "{d down}"
	Sleep 20
	FireWeapon()
	SendInput "{d up}"
	Sleep 20
	FireWeapon()

	SendInput "{s down}"
	Sleep 20
	FireWeapon()
	SendInput "{s up}"
	Sleep 20
	FireWeapon()

	SendInput "{a down}"
	Sleep 20
	FireWeapon()
	SendInput "{a up}"
	Sleep 20
	FireWeapon()
}

FireWeapon(){
	SendEvent "{LButton}"
	Sleep 5
	SendEvent "{LButton}"
	Sleep 5
}

ClearKeys(){
	SendInput "{w up}"
	Sleep 5
	SendInput "{a up}"
	Sleep 5
	SendInput "{s up}"
	Sleep 5
	SendInput "{d up}"
	Sleep 5
	SendEvent "{LButton up}"
	Sleep 5
}

$+esc::{
	ClearKeys()
	exitapp
}