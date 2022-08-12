@echo off

:: {###################################################################### ::
:: ################################ PROCESS ############################## ::
:: ####################################################################### ::
set dialog=***                          P R O C E S S                          ***
call %page%
echo.
echo.Selected Device          : %Devices% %Model%
echo.Operation                : %Operation%

call %loading%
call %qcusb%
IF (%USBComPort%) == () (GOTO :err_process) ELSE (GOTO :process)


:err_process
echo.
%cecho% {04}Error - QCUSB Port EDL Not Detected! {0f}
call %cleanup%
echo.
echo.
echo.
echo.Press [Enter] to continue...
pause >nul
call %Menu%


:err_loader
echo.
%cecho% {04}Error - Firehose Loader Not Available!{0f}
call %cleanup%
echo.
echo.
echo.
echo.Press [Enter] to continue...
pause >nul
call %Menu%


:process
echo.
%cecho% {0a}Connecting To Device...{0f} [OK]
echo.

:: Get Device Info
%emmcdl% -p %USBComPort% -info >%cache%\info
for /F "Tokens=2 " %%x in ('findstr /I "SerialNumber" %cache%\info') do (set IDS_SN=%%x)
set IDS_SN=%IDS_SN:~2,8%
%cecho% IDS SN : {0b} %IDS_SN% {0f}
echo.

for /F "Tokens=2 " %%y in ('findstr /I "MSM_HW_ID" %cache%\info') do (set MSM_HW=%%y0000000000000000)
set MSM_HW=%MSM_HW:~2,16%
%cecho% MSM HW : {0b} %MSM_HW% {0f}
echo.

for /F "Tokens=2 delims=2 " %%z in ('findstr /I "OEM_PK_HASH" %cache%\info') do (set OEM_PK=%%z)
set OEM_PK=%OEM_PK:~2,16%
%cecho% OEM PK : {0b} %OEM_PK% {0f}
echo.
echo.

set ResultLoader=%MSM_HW%_%OEM_PK%
IF (%Loader%) == () (for /F "delims= " %%l in ('where /r %ldr_auto% %ResultLoader%*') do (set Loader=%%l))
IF (%Loader%) == () (GOTO :err_loader) ELSE (%cecho% {0a}Configuring Firehose...{0f} [OK])
echo.

:: Get Partition Info
%emmcdl% -p %USBComPort% -f %Loader% -gpt -memoryname %MemoryName% >%cache%\partition

IF "%Operation%" == "RESET FACTORY" (call %process-reset-factory% %Devices% %Loader% %MemoryName%)
IF "%Operation%" == "RESET SAFE DATA" (call %process-reset-safe-data% %Devices% %Loader% %MemoryName%)
IF "%Operation%" == "RESET ACCOUNT" (call %process-reset-account% %Devices% %Loader% %MemoryName%)
IF "%Operation%" == "RESET EFS IMEI" (call %process-reset-efs-imei% %Devices% %Loader% %MemoryName%)
IF "%Operation%" == "UNLOCK BOOTLOADER" (call %process-unlock-bootloader% %Devices% %Loader% %MemoryName%)
IF "%Operation%" == "RELOCK BOOTLOADER" (call %process-relock-bootloader% %Devices% %Loader% %MemoryName%)

:: Cleanup
call %cleanup%

:: Done
echo.
%cecho% {0a}Done! Rebooting Device... {0f}
echo.
%emmcdl% -p %USBComPort% -f %Loader% -x %reboot% -memoryname %MemoryName% >nul
echo.
pause
IF EXIST %app% (echo. >nul) ELSE (call %aboutme%)
call %Menu%
