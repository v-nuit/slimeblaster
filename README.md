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
- No post-processing effect (Sharpening/Softening/AA through NVidia/AMD driver settings, Reshade, AutoHDR ... etc)

### General Information
Just as Wielkimati's script, this script is intended to be used with a decently geared Rackham and squad.

On triggering the script, it will:
- Constantly search a small area on the top right of the screen to detect the quest marker next to the quest's objective "Defeat as many foes as possible"
- When the quest marker is detected, send control to the game to move Rackham to the back of the room in 7.5 seconds and start blasting for the remaining 172.5 seconds
- After 3 minutes are over, wait for 18 seconds for the results screen to pop up
- Constantly search a small area in the lower middle part of the screen to detect an unselected "Yes" option from a prompt that pops up every 10 quest repeats, for 14 seconds
- If this is detected, press Up and Enter to instruct the game to continue repeating the quest
- If this is not detected, constantly press LMB every 0.3 second to skip through the result screen and repeat the quest
- Repeat the process

### Usage
## Setup
I will have to refrain from providing a compiled binary, as users may have to modify the script somewhat depending on their settings anyway. But generally, if you follow the soft requirements above, the script SHOULD be plug-and-play.

You will need to first install [AutoHotkey v2](https://www.autohotkey.com/). Afterwards, you can just download slimeblaster.rar from the release page, extract the entire archive into a folder of your choice.

The archive contains a few things:
- A slimeblaster.ahk file. This is the main script.
- A tester.ahk file. This script is the script you can quickly use to test the ability to detect the aforementioned elements on the screen.
- A yes.png and a marker.png files, to describe the elements that the script needs to detect on the screen.

## Using the scripts
# Tester Script
Before going all in on the automating process, you can first use the tester.ahk script to check if AHK can detect the elements on screen.

Run tester.ahk and start up a Slimepede quest. Notice the quest marker on the top right part of the screen, to the left of the quest objective. Once this marker stops pulsing, press F1 to check if AHK can detect it. Open the main menu afterwards to obstruct this marker and press F1 again to see if AHK will falsely detect the marker or not.

Afterwards, you can abandon quest but stay on the Yes/No prompt, then press F2 to check if AHK can detect the Yes option is selected or not.

If the script can detect these elements correctly, the main script will most likely work fine. If not, you will have to utilize your image editor of choice to make your own comparison images, and perhaps edit the script's parameters.

# Main script
Run the 
