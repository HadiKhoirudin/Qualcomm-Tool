@echo off

:: {###################################################################### ::
:: ################################ PROCESS ############################## ::
:: ####################################################################### ::
set dialog=***                          P R O C E S S                          ***
call %page%
echo.
echo.Selected Device          : Brand [%Devices%] Model [%Model%]
echo.Operation                : %Operation%

call %loading%
call %qcusb%
IF (%USBComPort%) == () (GOTO :err_process) ELSE (GOTO :process)


:err_process
echo.
%cecho% {04}Error - QCUSB Port EDL Not Detected! {0f}
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

:: Get Partition Map
%emmcdl% -p %USBComPort% -info >%cache%\info
for /F "Tokens=2 " %%x in ('findstr /I "SerialNumber" %cache%\info') do (
%cecho% IDS SN : {0b} %%x {0f}
echo.
)

for /F "Tokens=2 " %%y in ('findstr /I "MSM_HW_ID" %cache%\info') do (
%cecho% MSM HW : {0b} %%y {0f}
echo.
)

for /F "Tokens=2 delims=2 " %%z in ('findstr /I "OEM_PK_HASH" %cache%\info') do (
%cecho% OEM PK : {0b} %%z {0f}
echo.
)
echo.

%emmcdl% -p %USBComPort% -f %Loader% -gpt -memoryname %MemoryName% >%cache%\partition
%cecho% {0b}Configuring Firehose...{0f} [OK]
echo.

IF "%Operation%" == "RESET FACTORY" (call %process-reset-factory% %Devices% %Loader% %MemoryName%)
IF "%Operation%" == "RESET SAFE DATA" (call %process-reset-safe-data% %Devices% %Loader% %MemoryName%)
IF "%Operation%" == "RESET ACCOUNT" (call %process-reset-account% %Devices% %Loader% %MemoryName%)
IF "%Operation%" == "RESET EFS IMEI" (call %process-reset-efs-imei% %Devices% %Loader% %MemoryName%)
IF "%Operation%" == "UNLOCK BOOTLOADER" (call %process-unlock-bootloader% %Devices% %Loader% %MemoryName%)
IF "%Operation%" == "RELOCK BOOTLOADER" (call %process-relock-bootloader% %Devices% %Loader% %MemoryName%)

:: Cleanup
call %cleanup%

:: Done
%cecho% {0b}Rebooting Device... {0f}
echo.
%emmcdl% -p %USBComPort% -f %Loader% -x %reboot% -memoryname %MemoryName% >nul
echo.
pause
call %Menu%
