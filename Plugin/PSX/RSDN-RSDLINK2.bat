@echo off
set RSDNBAT=RSDN.BAT RSDLINK2.EXE VERSION 8
REM - RSDLINK2.EXE Version - This works without DOSBOX or ntvdmx64.bat, thanks to RSDLINK2.EXE
REM - RSDLINK2 has great features for programmers, exporting Faces, Verts, and Normals in seperate files, and seperating groups (Marbleclay PSX exporter doesn't support groups.) Read RSDLINK2.README
REM - Scale, tmdsort and tmdinfo are not supported features, marbleclay does scale via the RSD export so it shouldn't be an issue.

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

set RSDLINK=%PSXBIN%\rsdlink2.exe
set PACKDATA=%PSXBIN%\packdatahack.exe
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
echo .


REM more complicated command can go here, see rsdform(moving) and rsdcat (joining)
echo %RSDLINK% -v -s %scale% -o %1U.TMD %1.rsd >> %1.LOG
echo OLD %RSDLINK% -v -s %scale% -o %1U.TMD %1.rsd >> %1.LOG

 echo # > %1.RSD2

REM from https://stackoverflow.com/questions/15125143/add-text-between-two-lines-using-batch-file
REM This is hacky... MarbleClay does not create the .GRP file, as it's mostly redundent and tools seem to work without it, so this just insert the created dummy GRP file into the RSD file.
for %%f in (%1.RSD) do (
  for /f "eol= delims=" %%v in (%%f) do (
  
    if /I "%%v" == "NTEX=0" (
	 echo GRP=%1.grp >> %%f2
    ) 

	if /I "%%v" == "NTEX=1" (
	  echo GRP=%1.grp >> %%f2
    ) 	
	
	
	if /I "%%v" == "NTEX=2" (
	  echo GRP=%1.grp >> %%f2
    ) 	
	
		
      echo %%v>> %%f2
    
  )
)


rm -f %1.RSD-ORIG
move %1.RSD %1.RSD-ORIG
move %1.RSD2 %1.RSD


echo creating %1.GRP file  >> %1.LOG

echo @GRP940102 > %1.GRP
echo # Number of Groups >> %1.GRP
echo 1 >> %1.GRP
echo # Groups >> %1.GRP
echo Quadrangles	1  1 >> %1.GRP
echo 0-9999999 >> %1.GRP

echo deleting out faces verts and normals  >> %1.LOG
rm *.ofaces
rm *.overts
REM rm *.overtsNorms  -n %1.oVertsNorms

echo %RSDLINK% -p %1.oFaces -v %1.oVerts -o %1.TMD %1.rsd >> %1.LOG

%RSDLINK% -p %1.oFaces -v %1.oVerts -n %1.oVertsNorms -o %1.TMD %1.rsd >> %1.LOG

echo .  >> %1.LOG

if exist %1.TMD goto PACKDATA
echo RSDLINK failed; abort!
echo RSDLINK failed; abort! >> %1.LOG
msg *  /w "ERROR 10002: RSDLINK failed - Could not convert RSD to TMD"  
EXIT /B 10002


:PACKDATA
echo Packing TMD and TIM to create PCK ...
echo Packing TMD and TIM to create PCK >> %1.LOG
%PACKDATA% >> %1.LOG
echo %PACKDATA% %1 %1.TMD
%PACKDATA% %1 >> %1.LOG
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
REM %RSDLINK% -info %1.rsd  >> %1.LOG

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

