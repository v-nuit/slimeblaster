$F1::{
	try{
		if ImageSearch(&FoundX, &FoundY, 1400, 60, 1485, 120, "*TransBlack *80 " A_ScriptDir "\images\marker_deute.png"){
			msgbox "Quest marker found. `n`nIf this isn't supposed to be the case, your tolerance parameter (the number after the * before A_ScriptDir, default is 80) is too high. `nModify this parameter before trying again."
		}
		else msgbox "Quest marker not found. `n`nIf this isn't supposed to be the case, you can try modifying the tolerance parameter (the number after the * before A_ScriptDir, default is 80) between 0 and 255 before trying again. `n`nMake sure you perform the check while the marker is not pulsing."
	}
}

$F2::{
	try{
		if ImageSearch(&FoundX, &FoundY, 900, 550, 1100, 850, "*TransBlack *8 " A_ScriptDir "\images\yes_deute.png"){
			msgbox "`"Yes`" option not selected. `n`nIf this isn't supposed to be the case, your tolerance parameter (the number after the * before A_ScriptDir, default is 8) is too high. `nModify this parameter before trying again."
		}
		else msgbox "`"Yes`" option selected. `n`nIf this isn't supposed to be the case, you can try modifying the tolerance parameter (the number after the * before A_ScriptDir, default is 8) between 0 and 255 before trying again."
	}
}

$F3::{
	try{
		if ImageSearch(&FoundX, &FoundY, 435, 760, 465, 790, "*TransBlack *12 " A_ScriptDir "\images\repeat_deute.png"){
			msgbox "Repeat marker detected. `n`nIf this isn't supposed to be the case, your tolerance parameter (the number after the * before A_ScriptDir, default is 12) is too high. `nModify this parameter before trying again."
		}
		else msgbox "Repeat marker not detected. `n`nIf this isn't supposed to be the case, you can try modifying the tolerance parameter (the number after the * before A_ScriptDir, default is 12) between 0 and 255 before trying again."
	}
}

$F4::{
	try{
		if ImageSearch(&FoundX, &FoundY, 530, 170, 570, 210, "*TransBlack *8 " A_ScriptDir "\images\coin_deute.png"){
			msgbox "Coin detected. `n`nIf this isn't supposed to be the case, your tolerance parameter (the number after the * before A_ScriptDir, default is 8) is too high. `nModify this parameter before trying again."
		}
		else msgbox "Coin not detected. `n`nIf this isn't supposed to be the case, you can try modifying the tolerance parameter (the number after the * before A_ScriptDir, default is 8) between 0 and 255 before trying again."
	}
}