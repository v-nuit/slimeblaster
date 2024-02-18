$F1::{
	try{
		if ImageSearch(&FoundX, &FoundY, 1400, 60, 1485, 120, "*TransBlack *80 " A_ScriptDir "\images\marker_prota.png"){
			msgbox "Quest marker found. `n`nIf this isn't supposed to be the case, your tolerance parameter (the number after the * before A_ScriptDir, default is 80) is too high. `nModify this parameter before trying again."
		}
		else msgbox "Quest marker not found. `n`nIf this isn't supposed to be the case, you can try modifying the tolerance parameter (the number after the * before A_ScriptDir, default is 80) between 0 and 255 before trying again. `n`nMake sure you perform the check while the marker is not pulsing."
	}
}

$F2::{
	try{
		if ImageSearch(&FoundX, &FoundY, 900, 550, 1100, 850, "*TransBlack *4 " A_ScriptDir "\images\yes_prota.png"){
			msgbox "`"Yes`" option not selected. `n`nIf this isn't supposed to be the case, your tolerance parameter (the number after the * before A_ScriptDir, default is 8) is too high. `nModify this parameter before trying again."
		}
		else msgbox "`"Yes`" option selected. `n`nIf this isn't supposed to be the case, you can try modifying the tolerance parameter (the number after the * before A_ScriptDir, default is 8) between 0 and 255 before trying again. `n`nMake sure you perform the check while the marker is not pulsing."
	}
}