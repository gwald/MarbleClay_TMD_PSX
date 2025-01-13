echo make time lapse:   ffmpeg -i tut_boning.gif  -filter:v "setpts=0.02 5*PTS" -an -y  tut_boning-timelapse.gif
echo slow it down:      ffmpeg -y -i tut_boning-timelapse.gif  -framerate 30  -filter:v "setpts=10.0 50*PTS" -an tut_boning-timelapse-slow.gif
ffmpeg -y -i tut_boning-timelapse-slow.gif  -framerate 60   -an tut_boning-right-click-open-with.wmv
ffmpeg -y -i tut_text-slow.gif  -framerate 60   -an tut_text-right-click-open-with.wmv



@echo.
@echo.
@echo. 
@echo Right click wmv file, open with... select media player, click always use selected program... and okay.
@echo.
@echo. 
pause