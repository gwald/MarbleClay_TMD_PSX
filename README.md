# MarbleClay_TMD_PSX
Plugin and tools to create PlayStation TMD 3D models for MarbleClay 3D modeller.
Tested working in Windows 10 x64 (Windows 32bit XP should work but untested).

# About MarbleClay:
[MarbleClay](http://escargot.la.coocan.jp/MCLFrm.html) is a free, small and simple 3D modeller (and pose renderer) with modern tools and UI. \
**PLEASE NOTE: MarbleClay doesn't not support per vertex color so no Gouraud shading is possible!** \
Some MarbleClay videos: https://www.youtube.com/watch?list=PL7PuatOJN9g3UuLApfipLB09zn8p5NzqR

# MarbleClay_TMD_PSX Features
1. Better and verbose English translation from the original Japanese documentation.
2. Plugin for exporting RSD file format.
3. Plugin for running a script from the NY button.
4. View 3D asset via PlayStation emulator or Assimp

# Documentation
1. RSD Exporter Plugin: C:\MarbleCLAY\Plugin\PSX\RSDExporter.readme  https://github.com/gwald/MarbleClay_TMD_PSX/blob/main/Plugin/PSX/RSDExporter.readme
2. RunBatchScript Plugin: C:\MarbleCLAY\Plugin\PSX\runbatchscript.readme https://github.com/gwald/MarbleClay_TMD_PSX/blob/main/Plugin/PSX/runbatchscript.readme

# Install
1. Download MarbleClay: http://escargot.la.coocan.jp/MCLFrm.html
2. Extract zip file exactly to **C:\marbleclay** not C\MarbleCLAYb64
3. Download this [plugin](https://github.com/gwald/MarbleClay_TMD_PSX).
4. Extract plugin content into **C:\marbleclay** over writing everything when prompted.
5. Start MarbleClay, start "C:\MarbleCLAY\MarbleCLAY.exe"
6. Configure MarbleClay mouse interface via the wizard.
7. Open the tutorial file, "C:\MarbleCLAY\Sample\wood-script.mcl"
8. To start the tutorial, click the NY (in Orange and Cyan) button on the toolbar, next to the pencil. If you don't see the it, turn it on via: Window menu -> Show Toolbar -> [x] Image.
9. It will run the script file with the same name, "C:\MarbleCLAY\Sample\wood.script"
10. It will export the model and texture to PSX format and package it up into a PSX.EXE and run in the emulator, then export it as OBJ and display it in assimp. Lastly it will create a PSX ISO and run it.
11. If you plan on using MarbleClay, email the developer for a free registration key to remove the polygon limit, following the [Registration section](http://escargot.la.coocan.jp/MCLFrm.html).

![](https://github.com/gwald/MarbleClay_TMD_PSX/blob/main/HelpImg/eng_extra/multi_pos.jpg?raw=true)


# RunBatchScript Options
The RunBatchScript plugin works by running several programs from a batch file: "C:\MarbleCLAY\Plugin\PSX\RSDN.bat" there are 3 alternatives depending on what you need, the default is native support.

**1) Native support**
It uses a Net Yaroze member created executable, RSDLINK2.exe which converts RSD to TMD. It's works and has more features than the Sony supplied RSDLINK.
English translation documentation is here: https://github.com/gwald/Net_Yaroze_related_binaries/blob/main/rsdlink2_eng.txt
To use this, replace RSDN.bat with "C:\MarbleCLAY\Plugin\PSX\RSDN-RSDLINK2.bat"


**2) ntvdmx64 support**
This script uses the original Sony supplied RSDLINK.
But you have to have [ntvdmx64](https://mendelson.org/ntvdmx64.html) installed because RSDLINK is a 16bit DOS application.
To use this, replace RSDN.bat with "C:\MarbleCLAY\Plugin\PSX\RSDN-ntvdmx64.bat"


**3) DOSBOX support**
If you don't want to install ntvdmx64 and still want to run the original RSDLINK tool, it can be run in a DOSBOX script, however it's about 20x times slower!!.
To use this, replace RSDN.bat with "C:\MarbleCLAY\Plugin\PSX\RSDN-DOSBOX.BAT"



# Included source code
1. [RSDVIEW.C](https://github.com/gwald/MarbleClay_TMD_PSX/blob/main/Plugin/PSX/RSDVIEW.C) This is a replacement of the original Sony PSX RDS viewer which 3D clipped (Z fighting) a lot. You can also use it as a guide for displaying 3D models using [Sony's Net Yaroze SDK](http://netyaroze.com/Development/Toolchain).
2. [PACKDATAHACK.C](https://github.com/gwald/MarbleClay_TMD_PSX/blob/main/Plugin/PSX/packdatahack.c) The original Sony packer program was 16bit, and is limited to a single texture.

# Included external tools
1. No$psxtiny PlayStation emulator for viewing 3D models: https://problemkaputt.de/psx.htm
2. ImageMagick (convert) for 2D image convertion/correction: https://github.com/ImageMagick/ImageMagick
3. Img2tim for TIM format convertion: https://github.com/lameguy64/img2tim
4. Assimp for convertion and displaying 3D models: https://github.com/assimp/assimp
5. DOSBOX for RSDLINK: https://www.dosbox.com/
6. Mkpsxiso for creating PSX ISO: https://github.com/Lameguy64/mkpsxiso
7. Unix/Linux utility commands executables are from: https://gnuwin32.sourceforge.net/packages/coreutils.htm
8. Yarexe for creating PlayStation executable: https://github.com/gwald/Yarexe


# Old stuff
Old files were originally posted here: https://united3dartists.com/forum/viewtopic.php?t=6424
