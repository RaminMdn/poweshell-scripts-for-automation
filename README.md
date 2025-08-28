# useful-poweshell-scripts

If there are any issues in running the scripts in Powershell, it might be due to execution policies in some versions of Windows. For simple actions such moving or copying files, there might be restrictions set by 
Windows. If you run the scripts separately, it will be fine and they will run, but when you run the whole script, it might not do anything, which is actually because windows stops the action.

There are different approaches recommended in such a situation:

**1. Create shortcut and set the target as:**

Target: powershell.exe -NoExit -ExecutionPolicy Bypass -File "Drive:\path\to\YourScript.ps1"

Double-click to run now.

**2. Batch wrapper approach:**

Create a .bat file. Open the file in an editor and write the following two lines in the file:

@echo off
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "Drive:\path\to\YourScript.ps1"

Make sure to change the path of the file to your desired Powershell script. Execute the .bat, and the script runs properly—portable and policy-safe.

**3. Running the scropts manually:**

You can manually run the scripts in Powershell either by copying-pasting the whole script or running it line by line.

Caution: As a general guideline, you should always be sure, or make sure about the content of a script to run it. The content of this repo are simple scripts that may be easily checked, but for longer scripts be always aware about this please.
