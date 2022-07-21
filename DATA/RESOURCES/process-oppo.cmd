@echo off

:: {###################################################################### ::
:: ############################# OPPO PROCESS ############################ ::
:: ####################################################################### ::


:: Get Partition Map
%~dp2DATA\BIN\emmcdl -p %USBComPort% -f %Loader% -gpt -memoryname %MemoryName% >%~dp2DATA\TMP\partition
%~dp2DATA\BIN\sleep 1
echo.Configuring Device...   [OK]



::: Partition FRP
for /f "delims= " %%c in ('type %~dp2DATA\TMP\partition^|find "frp"') do (
  set "line=%%c"
  set "line=!line:*frp =!
  set /a "result_frp=!line:~1!" 2>nul
)
IF "%result_frp%" == "1" (for /F "Tokens=7 " %%d in ('findstr /I "frp" %~dp2DATA\TMP\partition') do (echo.Partition FRP Sector       : %%d)
	%~dp2DATA\BIN\sleep 1
	%~dp2DATA\BIN\emmcdl -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
	echo.Erasing FRP...          [OK]
)



::: Partition Misc
for /f "delims= " %%e in ('type %~dp2DATA\TMP\partition^|find "misc"') do (
  set "line=%%e"
  set "line=!line:*misc =!
  set /a "result_misc=!line:~1!" 2>nul
)
IF "%result_misc%" == "1" (for /F "Tokens=7 " %%f in ('findstr /I "misc" %~dp2DATA\TMP\partition') do (echo.Partition Misc Sector      : %%f
type %~dp2DATA\RESOURCES\MISC\patch.xml | %~dp2DATA\RESOURCES\repl.cmd "(start_sector=\q).*?(\q.*>)" "$1%%f$2" xi >%~dp2DATA\TMP\patch.xml)
	 %~dp2DATA\BIN\sleep 2
	 %~dp2DATA\BIN\emmcdl -p %USBComPort% -f %Loader% -x %~dp2DATA\TMP\patch.xml -memoryname %MemoryName% >nul
	echo.Erasing Userdata...     [OK]
) ELSE (
	echo.
	echo. Error %MemoryName% damaged!
)



:: Cleanup
call %~dp2DATA\RESOURCES\cleanup.cmd


:: Done
echo.Rebooting Device...
%~dp2DATA\BIN\emmcdl -p %USBComPort% -f %Loader% -x %~dp2DATA\POWER\boot.xml -memoryname %MemoryName% >nul
echo.
echo.
pause