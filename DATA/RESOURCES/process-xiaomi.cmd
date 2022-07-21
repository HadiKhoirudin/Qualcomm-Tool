@echo off
:: {###################################################################### ::
:: ########################### XIAOMI PROCESS ############################ ::
:: ####################################################################### ::


:: Get Partition Map
%~dp2DATA\BIN\emmcdl -p %USBComPort% -f %Loader% -gpt -memoryname %MemoryName% >%~dp2DATA\TMP\partition
%~dp2DATA\BIN\sleep 1
echo.Configuring Device...   [OK]




::: Partition Config -> FRP
for /f "delims= " %%a in ('type %~dp2DATA\TMP\partition^|find "config"') do (
  set "line=%%a"
  set "line=!line:*config =!
  set /a "result_config=!line:~1!" 2>nul
)
IF "%result_config%" == "1" (for /F "Tokens=7 skip=1 " %%b in ('findstr /I "config" %~dp2DATA\TMP\partition') do (echo.Partition Config Sector    : %%b)
	%~dp2DATA\BIN\sleep 1
	%~dp2DATA\BIN\emmcdl -p %USBComPort% -f %Loader% -d config %~dp2DATA\DEVICE\XIAOMI\BACKUP\%DateTime%-config.bin -memoryname %MemoryName% >nul
	%~dp2DATA\BIN\emmcdl -p %USBComPort% -f %Loader% -e config -memoryname %MemoryName% >nul
	echo.Erasing FRP...          [OK]
)



::: Partition Persist -> MiCloud
for /f "delims= " %%c in ('type %~dp2DATA\TMP\partition^|find "persist"') do (
  set "line=%%c"
  set "line=!line:*persist =!
  set /a "result_persist=!line:~1!" 2>nul
)

IF "%result_persist%" == "1" (for /F "Tokens=7 " %%d in ('findstr /I "persist" %~dp2DATA\TMP\partition') do (echo.Partition Persist Sector   : %%d)
	%~dp2DATA\BIN\sleep 1
	%~dp2DATA\BIN\emmcdl -p %USBComPort% -f %Loader% -d persist %~dp2DATA\DEVICE\XIAOMI\BACKUP\%DateTime%-persist.img -memoryname %MemoryName% >nul
	%~dp2DATA\BIN\emmcdl -p %USBComPort% -f %Loader% -d persistbak %~dp2DATA\DEVICE\XIAOMI\BACKUP\%DateTime%-persistbak.img -memoryname %MemoryName% >nul
	%~dp2DATA\BIN\emmcdl -p %USBComPort% -f %Loader% -e persist -memoryname %MemoryName% >nul
	%~dp2DATA\BIN\emmcdl -p %USBComPort% -f %Loader% -e persistbak -memoryname %MemoryName% >nul
	echo.Erasing MiCloud...      [OK]
)



::: Partition Userdata
for /f "delims= " %%e in ('type %~dp2DATA\TMP\partition^|find "userdata"') do (
  set "line=%%e"
  set "line=!line:*userdata =!
  set /a "result_userdata=!line:~1!" 2>nul
)
IF "%result_misc%" == "1" (for /F "Tokens=7 " %%f in ('findstr /I "userdata" %~dp2DATA\TMP\partition') do (echo.Partition Userdata Sector  : %%f
	 %~dp2DATA\BIN\sleep 1
	 %~dp2DATA\BIN\emmcdl -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul
	 echo.Erase Userdata...       [OK]
) ELSE (
	echo.
	echo. Error %MemoryName% damaged!
)



:: Cleanup
call %~dp2DATA\RESOURCES\cleanup.cmd


::: Done
echo.Rebooting Device...
%~dp2DATA\BIN\emmcdl -p %USBComPort% -f %Loader% -x %~dp2DATA\POWER\boot.xml -memoryname %MemoryName% >nul
echo.
echo.
pause