# MarbleClay_TMD_PSX
Plugin and tools to create PlayStation TMD 3D models for MarbleClay 3D modeller
https://github.com/gwald/MarbleClay_TMD_PSX


# Install

1. Download MarbleClay: http://escargot.la.coocan.jp/MCLFrm.html
2. Extract zip file exactly to **C:\marbleclay** not C\MarbleCLAYb64
3. Download this plugin.
4. Extract plugin content into **C:\marbleclay** replacing everything.
5. Start MarbleClay, start "C:\MarbleCLAY\MarbleCLAY.exe"
6. Configure MarbleClay mouse interface via the wizard.
7. Open the tutorial file, "C:\MarbleCLAY\Sample\wood-script.mcl"
8. To start the tutorial, click the NY (in Orange and Cyan) button on the toolbar, next to the pencil. If you don't see the it, turn it on in the Window menu -> Show Toolbar -> [x] Image.
9. It will run the script file with the same name, "C:\MarbleCLAY\Sample\wood.script"
10. It will export the model and texture to PSX format and package it up into a PSX.EXE and run in the emulator, then export it as OBJ and display it in assimp. Lastly it will create a PSX ISO and run it.
![](https://github.com/gwald/MarbleClay_TMD_PSX/blob/main/HelpImg/eng_extra/multi_pos.jpg?raw=true)


# Running Options
RSD export runs a batch file: "C:\MarbleCLAY\Plugin\PSX\RSDN.bat" there are 3 alternatives depending on what you need, the default the native support.

**Native support**
It uses a Net Yaroze member created executable, RSDLINK2.exe which converts RSD to TMD. It's works and has more features than the Sony supplied RSDLINK.
English translation documentation is here: https://github.com/gwald/Net_Yaroze_related_binaries/blob/main/rsdlink2_eng.txt
To use this, replace RSDN.bat with "C:\MarbleCLAY\Plugin\PSX\RSDN-RSDLINK2.bat"


**ntvdmx64 support**
This script usines the Sony supplied RSDLINK.
But you have to have ntvdmx64 installed because RSDLINK is a 16bit DOS application.
See: https://mendelson.org/ntvdmx64.html
To use this, replace RSDN.bat with "C:\MarbleCLAY\Plugin\PSX\RSDN-ntvdmx64.bat"


**DOSBOX support**
If you don't want to install ntvdmx64 and still want to run the original RSDLINK tool, it can be run in a DOSBOX script, however it's about 20x times slower!!.
To use this, replace RSDN.bat with "C:\MarbleCLAY\Plugin\PSX\RSDN-DOSBOX.BAT"

