# Slimeblaster
A (kind of simple) AutoHotkey v2 script for automating GBF:Relink's Slimepede quest.

This script is a modification of [Wielkimati's Slimepede Farm script](https://github.com/Wielkimati/GBFR-Slimepede-Farm/tree/main), utilizing imagesearch to ensure tight timing on script activation and allow quest repetition beyond the 10-repeat limitation for long automated session.

## Features and drawbacks
### Features
- Allows player to automate the completion of the Slimepede quest on repeat for long period of time
- Loading time agnostic
- Supports colorblind settings

### Drawbacks
- Requires specific graphic settings due to the nature of the imagesearch function
- Players utilizing graphic setting/mod that deviates from requirement will most likely need to tinker with the script and images to ensure smooth operation
- The script was written by a lazy ass monkey randomly typing on typewriter so expect minimal support if you run into troubles

## Requirements and General Information

### Requirement
Due to the script using AHK's imagesearch function to detect certain elements on the screen, and the limitation of said function, any setting and/or mod that modifies the appearances of these elements will most likely make the script non-functional unless the user modifies the script and the comparison image files themselves. This means the script has the following soft requirement:
- The game needs to be ran at 1920x1080 borderless with no upscaling/downscaling involved
- The in-game brightness level should be at 5/10
- Windows' display calibration parameters should all be at default
- No post-processing effect (Sharpening/Softening/AA through NVidia/AMD driver settings, Reshade, AutoHDR ... etc) except the built-in colorblind options

### General Information
Just as Wielkimati's script, this script is intended to be used with a decently geared Rackham and squad.

On triggering the script, it will:
- Constantly search a small area on the top right of the screen to detect the quest marker next to the quest's objective "Defeat as many foes as possible"
- When the quest marker is detected, send control to the game to move Rackham to the back of the room in 7.5 seconds and start blasting for the remaining 172.5 seconds
- After 3 minutes are over, wait for 18 seconds for the results screen to pop up
- For 14 seconds, constantly perform the following steps:
 - If a rupies coin is detected and the repeat quest marker is not detected, press 3 then wait 0.3 sec
 - If an unselected "Yes" option from a prompt is detected, press Up then wait 0.3 sec
 - If neither is detected, press LMB and wait 0.3 sec
- Repeat the process

## Usage
### Setup
I will have to refrain from providing a compiled binary, as users may have to modify the script somewhat depending on their settings anyway. But generally, if you follow the soft requirements above, the script SHOULD be plug-and-play.

You will need to first install [AutoHotkey v2](https://www.autohotkey.com/). Afterwards, you can just download slimeblaster.rar from the latest release, and extract the entire archive into a folder of your choice.

The archive contains a few things:
- Multiple slimeblaster_***.ahk2 file. These are the main scripts for different colorblind setting.
- Multiple tester_***.ahk2 file. These scripts are the scripst you can quickly use to test the ability to detect the aforementioned elements on the screen, for different colorblind setting.
- A folder containing various yes_***.png and marker_\*\*\*.png files, to describe the elements that the script needs to detect on the screen depending on colorblind setting.

### Tester Script
Before going all in on the automating process, you can first use the tester.ahk script to check if AHK can detect the elements on screen.

Run tester_***.ahk for your colorblind setting and start up a Slimepede quest. Notice the quest marker on the top right part of the screen, to the left of the quest objective. Once this marker stops pulsing, press F1 to check if AHK can detect it. Open the main menu afterwards to obstruct this marker and press F1 again to see if AHK will falsely detect the marker or not.

Afterwards, you can abandon quest but stay on the Yes/No prompt, then press F2 to check if AHK can detect the Yes option is selected or not.

Finally, abandon the quest to go to the result screen. Press F3 to check if the script can detect the Rupies coin and the repeat quest marker or not.

If the test scripts can detect these elements correctly, the main scripts will most likely work fine. If not, you will have to utilize your image editor of choice to make your own comparison images, and perhaps edit the script's parameters.

### Main script
The script has two hotkeys, similar to Wielkimati's script:
- F1 to start the script
- Shift+ESC to kill the script

Run the slimeblaster_*** according to your colorblind setting, press F1 and initiate a Slimepede quest. That's it. You can now let the script do its things.

Press Shift+ESC at any time to kill the script.
