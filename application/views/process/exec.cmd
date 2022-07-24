@echo off

call %page%
echo.
echo.Selected Model           : %Model%
echo.Operation                : Factory Reset and Remove Existing Account

call %loading%
call %qcusb%
IF (%USBComPort%) == () (GOTO :err_process) ELSE (GOTO :process)

:err_process
echo.
%cecho% {04}Error - QCUSB Port EDL Not Detected! {0f}
echo.
echo.
pause
call %Menu%

:process
echo.
%cecho% {0a}Connecting To Device...{0f} [OK]
echo.
%cecho% {0b}Configuring Firehose...{0f} [OK]

call %Devices% %Loader% %MemoryName%
call %Menu%
