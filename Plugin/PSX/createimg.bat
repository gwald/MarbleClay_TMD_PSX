@echo OFF
REM 1)"C:\source.bmp" 2)grey_scale   3)resizeX  4)resizeY   5)pixeldepth  6)pixelcolours   7)"C:\out.tim" 
REM 1)"c:\temp\tmd\left0.bmp"   2)greyNo   3)256   4)256   5)8    6)256  7)"C:\out.tim"

cd C:\MarbleCLAY\Plugin\PSX
echo. > createImg.txt
echo "createImg.bat" >>  createImg.txt
pwd >> createImg.txt
echo %* >> createImg.txt
echo. >> createImg.txt


if exist %1 goto CONV
msg *  /w "ERROR %1 not exported - do a manual .OBJ export first"  
echo "ERROR %1 not exported - do a manual .OBJ export first"  >> createImg.txt
exit /B 999

:CONV
echo C:\MarbleCLAY\Plugin\PSX\convert.exe %1 -verbose -colorspace %2  -auto-level -resize %3!x%4! -type palette -depth %5   -colors %6  tempimg.bmp >> createImg.txt
C:\MarbleCLAY\Plugin\PSX\convert.exe %1 -verbose -colorspace %2  -auto-level -resize %3!x%4! -type palette -depth %5   -colors %6  C:\MarbleCLAY\Plugin\PSX\tempimg.bmp

if exist C:\MarbleCLAY\Plugin\PSX\tempimg.bmp goto FIN
msg *  /w "ERROR file %1 failed to create C:\MarbleCLAY\Plugin\PSX\tempimg.bmp"  
echo "ERROR file %1 failed to create C:\MarbleCLAY\Plugin\PSX\tempimg.bmp"      >> createImg.txt
exit /B 999						

:FIN
exit /B 0 