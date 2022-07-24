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


::: Partition Userdata
for /f "delims= " %%e in ('type %cache%\partition^|find "userdata"') do (
  set "line=%%e"
  set "line=!line:*userdata =!
  set /a "result_userdata=!line:~1!" 2>nul
)
IF "%result_userdata%" == "1" (for /F "Tokens=7 " %%f in ('findstr /I "userdata" %cache%\partition') do (echo.Partition Userdata Sector  : %%f
	 %sleep% 1
	 %emmcdl% -p %USBComPort% -f %Loader% -b userdata %userdata% -memoryname %MemoryName% >nul
	 %cecho% {0a}Erasing Userdata...{0f}     [OK]
	 echo.
) ELSE (
	echo.
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
echo.Please Wipe Data from recovery...
echo.
pause
