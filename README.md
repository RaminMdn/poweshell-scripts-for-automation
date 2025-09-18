# Useful PowerShell Scripts for Automation

<br>

## Overview

The goal behind the repository is to develop scripts which may be used for automation of procedures and ordered execution of tasks which might take some time from a system user or a developer. 

To put out a general image of what this repo may contain, a few examples can be states:

- A script for organizing files into different folders based on the file types: It may help specially for cleaning folders such as the default download folder.
- A script to go through all sub-folders of a root path and run 'git pull' on git folders to make them updated: this comes specifically handy for developers who are working on personal projects from different stations.
- A script to check connectivity, health and ping stats of multiple websites/servers: This helps if you want to make sure multiple servers are working correctly and are connected.

 <br>

## Developers, Supporters & Contributors

If you find this tool helpful, please consider ⭐ **starring the repository**!  
It helps others discover it and motivates development.

If you have any suggestions for improvements or want to contribute other scripts of your own to the repo, feel free to open an issue or submit a pull request please!


<br>

## Execution

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

**3. Running the scripts manually:**

You can manually run the scripts in Powershell either by copying-pasting the whole script or running it line by line.

Caution: As a general guideline, you should always be sure, or make sure about the content of a script to run it. The content of this repo are simple scripts that may be easily checked, but for longer scripts be always aware about this please.


 <br>

 
## 📄 License

This project is licensed under the **MIT License** – feel free to use, modify, and distribute it.

## Author’s Note

This project was developed as part of personal learning and practice.

At times, I consult pair programming tools, programming forums or relevant documentations — for purposes like:

- Proofreading code or comments
- Double-checking best practices
- Exploring alternative implementations

These tools were used in the same way any developer might use a second pair of eyes, and never as a substitute for understanding or authorship.

The goal was always clarity, correctness, and learning — with every line written and reviewed consciously and deliberately.

