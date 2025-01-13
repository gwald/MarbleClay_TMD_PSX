@echo OFF
REM 1)pixeldepth  2)VRAMImgX    3)VRAMVImgY   4)VRAMCLUTX   5)VRAMCLUTY    6)"C:\out.tim"  7)-T_TIM_TRANS_OR_EMPTY
REM 1)8   2)640  3)0  4)640  5)256   6)"c:\temp\tmd\left0.tim"    7)-t 

cd C:\MarbleCLAY\Plugin\PSX
echo. > createTim.txt
echo "createTim.bat" >>  createTim.txt
pwd >> createTim.txt
echo %* >> createTim.txt
echo. >> createTim.txt

if exist C:\MarbleCLAY\Plugin\PSX\tempimg.bmp goto CONV
msg *  /w "ERROR C:\MarbleCLAY\Plugin\PSX\tempimg.bmp doesnt exist"  
echo "ERROR C:\MarbleCLAY\Plugin\PSX\tempimg.bmp doesnt exist"    >> createImg.txt
exit /B 999

:CONV

C:\MarbleCLAY\Plugin\PSX\img2tim.exe %7   -bpp %1  -tcol 0 0 0 -org %2 %3 -plt %4 %5  -o %6   tempimg.bmp  >> createTim.txt
C:\MarbleCLAY\Plugin\PSX\img2tim.exe %7   -bpp %1  -tcol 0 0 0 -org %2 %3 -plt %4 %5  -o %6   tempimg.bmp 




if exist %6 goto FIN
msg *  /w "ERROR file %6 failed to create from C:\MarbleCLAY\Plugin\PSX\tempimg.bmp"  
echo "ERROR file %6 failed to create from C:\MarbleCLAY\Plugin\PSX\tempimg.bmp"    >> createImg.txt
exit /B 999						

:FIN
echo del tempimg.bmp
echo FINISHED  >>  createTim.txt
									
exit /B 0