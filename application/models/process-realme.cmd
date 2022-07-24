@echo off

:: {###################################################################### ::
:: ########################### REALME PROCESS ############################ ::
:: ####################################################################### ::


:: Get Partition Map
%emmcdl% -p %USBComPort% -f %Loader% -gpt -memoryname %MemoryName% >%cache%\partition
%sleep% 1
echo.
%cecho% {0a}Configuring Device...{0f}   [OK]
echo.


::: Partition FRP
for /f "delims= " %%c in ('type %cache%\partition^|find "frp"') do (
  set "line=%%c"
  set "line=!line:*frp =!
  set /a "result_frp=!line:~1!" 2>nul
)
IF "%result_frp%" == "1" (for /F "Tokens=7 " %%d in ('findstr /I "frp" %cache%\partition') do (echo.Partition FRP Sector       : %%d)
	%sleep% 1
	%emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
	%cecho% {0a}Erasing FRP...{0f}          [OK]
	echo.
)


::: Partition Misc
for /f "delims= " %%e in ('type %cache%\partition^|find "misc"') do (
  set "line=%%e"
  set "line=!line:*misc =!
  set /a "result_misc=!line:~1!" 2>nul
)
IF "%result_misc%" == "1" (for /F "Tokens=7 " %%f in ('findstr /I "misc" %cache%\partition') do (echo.Partition Misc Sector      : %%f
type %xml_patch% | %repl% "(start_sector=\q).*?(\q.*>)" "$1%%f$2" xi >%cache%\patch.xml)
	 %sleep% 2
	 %emmcdl% -p %USBComPort% -f %Loader% -d misc %backup_misc%-misc.img -memoryname %MemoryName% >nul
	 %cecho% {0a}Backing-up misc...      {0f}[OK]
	 echo.
	 %emmcdl% -p %USBComPort% -f %Loader% -x %cache%\patch.xml -memoryname %MemoryName% >nul
	 %cecho% {0a}Erasing Userdata...{0f}     [OK]
	 echo.
) ELSE (
	%cecho% {04}Error %MemoryName% damaged! {0f}
	echo.
)


:: Cleanup
call %cleanup%


:: Done
%cecho% {0b}Rebooting Device... {0f}
echo.
%emmcdl% -p %USBComPort% -f %Loader% -x %reboot% -memoryname %MemoryName% >nul
echo.
echo.
pause
