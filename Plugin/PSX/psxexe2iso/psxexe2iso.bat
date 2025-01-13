@echo off

set BINPSXISO=C:\MarbleCLAY\Plugin\PSX\psxexe2iso
set MKPSXISO=%BINPSXISO%\mkpsxiso.exe
 
echo psxexe2iso.bat takes a PSX.EXE and creates a bootable PSX image.
echo Usage: psxexe2iso.bat projectName SCE_Region
echo psxexe2iso.bat %*
echo    %1 is the project path/name (no extentions)
echo    %2 is the region (SCEE, SCEI or SCEA) of the CDROM image 
echo Note:
echo Make sure your video matches your region!
echo If you only need an iso file, rename the .bin file to .iso
echo If you are using the MarbleClay's to view a 3D model,
echo    it should be region SCEA or SCEI because it uses NTSC video.
echo.
echo.


if "%1"=="" goto END

if "%2"=="SCEE" goto PSXEXE

if "%2"=="SCEI" goto PSXEXE

if "%2"=="SCEA" goto PSXEXE

echo %2 is not a correct PSX region
echo it can only be SCEE, SCEI or SCEA
goto END

:PSXEXE

if exist %1.exe goto GOOD

echo PSX file with no extension (%1) does not exist!
echo trying to load %1.exe
goto END


:GOOD
if %TEMP%=="" (
set TEMP=C:\TEMP2 
echo creating new temp... C:\TEMP2
mkdir C:\TEMP2
) else (
echo TEMP location: %TEMP%
)


set PSXTMP=%TEMP%\PSXEXE2ISO
rmdir /Q /S  %PSXTMP%
mkdir %PSXTMP%


copy /Y %BINPSXISO%\%2.DAT %PSXTMP%\ >NUL
copy /Y %BINPSXISO%\SYSTEM.CNF %PSXTMP%\ >NUL
copy /Y %1.exe  %PSXTMP%\PSX.EXE >NUL
 
fsutil file createnew %PSXTMP%\DUMMY.DAT 40000000

REM echo ^<!-- FROM: https://github.com/Wituz/wituz-youtube/blob/master/ps1-game-tutorial/PART%209%20-%20CD%20Loading/resources/ --^> > %PSXTMP%\PSX.XML 
echo ^<?xml version="1.0" encoding="UTF-8"?^> > %PSXTMP%\PSX.XML 
echo ^<iso_project image_name="PSX-%2.bin" cue_sheet="PSX-%2.cue" no_xa="1"^> >> %PSXTMP%\PSX.XML 
echo          ^<track type="data"^> >> %PSXTMP%\PSX.XML 
echo                ^<license file="%2.DAT"/^> >> %PSXTMP%\PSX.XML 
echo                    ^<directory_tree^> >> %PSXTMP%\PSX.XML 
echo                        ^<file name="SYSTEM.CNF"   type="data"   source="SYSTEM.CNF"/^> >> %PSXTMP%\PSX.XML 
echo                        ^<file name="DUMMY.DAT"   type="data"   source="DUMMY.DAT"/^> >> %PSXTMP%\PSX.XML 
echo                        ^<file name="PSX.EXE"   type="data"   source="PSX.EXE"/^> >> %PSXTMP%\PSX.XML 
echo                        ^<!-- FROM: https://github.com/Wituz/wituz-youtube --^> >> %PSXTMP%\PSX.XML 
echo                        ^<dummy sectors="1024"/^> >> %PSXTMP%\PSX.XML 
echo                    ^</directory_tree^> >> %PSXTMP%\PSX.XML 
echo         ^</track^> >> %PSXTMP%\PSX.XML 
echo ^</iso_project^> >> %PSXTMP%\PSX.XML 

echo cd  %PSXTMP% > %PSXTMP%\runpsxiso.bat
echo %MKPSXISO% -y  PSX.XML  >> %PSXTMP%\runpsxiso.bat
echo exit >> %PSXTMP%\runpsxiso.bat

REM has to run in the background and still hold control
C:\MarbleCLAY\Plugin\PSX\wincmd cmd /c "%PSXTMP%\runpsxiso.bat && exit"

REM wait 5sec just in case batch is running in the background!
REM C:\MarbleCLAY\Plugin\PSX\sleep.exe 5

copy /Y  %PSXTMP%\*.cue . 
copy /Y  %PSXTMP%\*.bin . 

echo temp files are here %PSXTMP% and cleared each time this is run!


:END
echo  PSXEXE2ISO finished
