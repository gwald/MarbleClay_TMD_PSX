@echo off
set RSDNBAT=RSDN.BAT NTVDMX64 VERSION 7


REM  RSDN.bat copy of rsdv.bat 
REM  Prestartnopsx RSD file (3D object data) in No$PSX
REM  Put this file where rsdv.bat is, ie c:\psx\psx\bin

REM v6 use no$psx Tiny, the full program has issue exiting and hangs - download, put program in path and rename to nopsxtiny.exe.
REM v5 MarbleClay batch script version- added 3rd param startnopsx
REM v4 MarbleClay export version
REM v3 added scale
REM v2 added NY home env var check
REM v1 working

REM RETURN ERRORS:
REM ERROR 10001: RSD file not found - Check your command or folder
REM ERROR 10002: RSDLINK failed - Could not convert RSD to TMD
REM ERROR 10003: TMDSORT failed -  Bad TMD? Check FILE.LOG
REM ERROR 10004: PACDATA failed -  BAD TMD? Check FILE.LOG
REM ERROR 10005:  FILE.SIO failed to be created - is the file locked?
REM ERROR 10006:  Yarexe failed to create psx.exe - check FILE.LOG


echo Note: MarbleClay does the scaling in the RSD, this scale value is used if used with your own models  > %1.LOG
echo scale = %scale%   >> %1.LOG



REM use NY var if set or default to NY installation 
REM if "%HOME%"=="" (set PSXBIN=C:\MarbleCLAY\Plugin\PSX) else (set PSXBIN=%HOME%\bin)
set PSXBIN=C:\MarbleCLAY\Plugin\PSX

set TMDINFO=%PSXBIN%\tmdinfo.exe
set RSDLINK=%PSXBIN%\rsdlink.exe
set TMDSORT=%PSXBIN%\tmdsort.exe
set PACKDATA=%PSXBIN%\packdata.exe
set YAREXE=%PSXBIN%\yarexe.exe
REM set DLOAD=%PSXBIN%\dload.exe
REM set LOAD=%PSXBIN%\load.exe
REM set WAIT=%PSXBIN%\wait.bat
REM set GO=%PSXBIN%\go
REM set SIOCONS=%PSXBIN%\siocons
set RSDVIEW=%PSXBIN%\rsdview
set scale=1.0
set startnopsx=1

if exist %1.TMD   del /F  %1.TMD
if exist %1U.TMD  del /F  %1U.TMD
if exist %1.PCK   del /F  %1.PCK
if exist %1.SIO   del /F  %1.SIO
if exist %1.EXE   del /F  %1.EXE
if exist %1.LOG   del /F  %1.LOG
if exist PSX.EXE  del /F  PSX.EXE

REM set cmd line params
IF NOT "%~2"=="", set scale=%~2
IF NOT "%~3"=="", set startnopsx=%~3

if exist %1.rsd goto RSDLINK
echo Error %*
echo rsdn.bat is a copy of rsdv.bat but lauches No$PSX instead of siocons.
echo Usage: rsdn yourRSDfile [scale] [launchNo$PSX]
echo Where 
echo       yourRSDfile is the rsd file without .rsd
echo       scale is a float value, default is 1.0. 
echo       launchNo$PSX is either 1 or 0, default is 1 to lauch emulator, 0 does not.
msg *  /w "ERROR 10001: RSD file not found - Check your command or folder"  
EXIT /B 10001

:RSDLINK
echo Starting %*
echo starting RSDN.BAT %* >> %1.LOG 
pwd  >> %1.LOG

echo %RSDNBAT%  >> %1.LOG
cecho Converting RSD to TMD. 
echo Converting RSD to TMD. >> %1.LOG


echo Confirm latest versions are be used: Rsdlink v3.72 Tmdsort v1.25   >> %1.LOG
echo %RSDLINK% >> %1.LOG
%RSDLINK% 2>> %1.LOG
echo .  >> %1.LOG
echo %TMDSORT%  >> %1.LOG
%TMDSORT% 2>> %1.LOG
echo .  >> %1.LOG
echo .  >> %1.LOG


echo Confirm latest versions are be used: Rsdlink v3.72 Tmdsort v1.25 
echo %RSDLINK% 
%RSDLINK% 
echo %TMDSORT% 
%TMDSORT% 
echo .
echo .


REM more complicated command can go here, see rsdform(moving) and rsdcat (joining)
echo %RSDLINK% -v -s %scale% -o %1U.TMD %1.rsd >> %1.LOG
%RSDLINK% -v -s %scale% -o %1U.TMD %1.rsd >> %1.LOG
echo .  >> %1.LOG

if exist %1U.TMD goto TMDSORT
echo RSDLINK failed; abort!
echo RSDLINK failed; abort! >> %1.LOG
msg *  /w "ERROR 10002: RSDLINK failed - Could not convert RSD to TMD"  
EXIT /B 10002

:TMDSORT
echo %TMDSORT%  -o %1U.TMD  %1U.TMD  >> %1.LOG
%TMDSORT% -o %1.TMD  %1U.TMD  >> %1.LOG
echo .  >> %1.LOG

echo RSDLINK automatically created the default a.tmd going to delete it now! >> %1.LOG
del /F  a.TMD
echo del /F  %1U.TMD
echo del /F  %1U.TMD  >> %1.LOG
echo .  >> %1.LOG

del /F  %1U.TMD

if exist %1.TMD goto PACKDATA
echo TMDSORT failed; abort!
echo TMDSORT failed; abort! >> %1.LOG
msg *  /w "ERROR 10003: TMDSORT failed -  Bad TMD? Check %1.LOG"  
EXIT /B 10003

:PACKDATA
echo Packing TMD and TIM to create PCK ...
echo Packing TMD and TIM to create PCK >> %1.LOG
echo %PACKDATA% -o %1.PCK %1.rsd %1.TMD
%PACKDATA% -o %1.PCK %1.rsd %1.TMD >> %1.LOG
echo .  >> %1.LOG

if exist %1.PCK goto DLOAD
echo PACDATA failed; abort!
echo PACDATA failed; abort! >> %1.LOG
msg *  /w "ERROR 10004: PAKDATA failed -  BAD TMD? Check %1.LOG"  
EXIT /B 10004

:DLOAD
echo Creating yaroze siocons batch %1.SIO
echo Creating yaroze siocons batch %1.SIO >> %1.LOG
echo dload -n%1.PCK -a80100000 >> %1.LOG
echo local dload  %1.PCK 80100000 > %1.SIO
echo local load  %RSDVIEW% >> %1.SIO
echo go >> %1.SIO

if exist %1.SIO  goto LOAD
echo %1.SIO failed to be created; abort!
echo %1.SIO failed to be created; abort! >> %1.LOG
msg *  /w "ERROR 10005:  %1.SIO failed to be created - is the file locked?"  
EXIT /B 10005

:LOAD
echo ---- %1.SIO ---- >> %1.LOG
type %1.SIO >> %1.LOG
echo ---- %1.SIO ---- >> %1.LOG
type %1.SIO
echo .  >> %1.LOG

echo creating psx.exe...
echo creating psx.exe. >> %1.LOG
echo yarexe %1.SIO >> %1.LOG
%YAREXE% %1.SIO  >> %1.LOG
echo .  >> %1.LOG


if exist PSX.EXE  goto GO
echo LOAD failed; abort!
echo LOAD failed; abort! >> %1.LOG
msg *  /w "ERROR 10006:  Yarexe failed to create psx.exe - check %1.LOG"  
EXIT /B 10006


:GO
REM TO UNCOMMENT OBJECT DETAILS
%RSDLINK% -info %1.rsd  >> %1.LOG
%TMDINFO% -v  %1U.TMD >> %1.LOG

copy /Y psx.exe %1.EXE >>  %1.LOG
copy /Y psx.exe %1.EXE

REM  if param 3 is 0, skip nopsx
IF %startnopsx%==0,GOTO END
echo  no$psxtiny %1.EXE
echo  no$psxtiny %1.EXE >> %1.LOG
%PSXBIN%\no$psxtiny.exe  %1.EXE
GOTO END

:END
EXIT /B 0
