@echo off

set Loader=%~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v2.mbn
set MemoryName=ufs

call %~dp2DATA\RESOURCES\page.cmd

echo.
echo.Selected Model           : OPPO RENO4  (CPH 2113)
echo.Operation                : Factory Reset and Remove FRP
call %~dp2DATA\RESOURCES\loading.cmd

call %~dp2DATA\CONFIG\USBPortCOM.cmd
IF (%USBComPort%) == () (GOTO :err_process) ELSE (GOTO :process)

:err_process
echo.
%cecho% {04}Error - QCUSB Port EDL Not Detected! {0f}
echo.
echo.
pause
call %~dp2DATA\DEVICE\OPPO\menu.cmd

:process
echo.
%cecho% {0a}Connecting To Device...{0f} [OK]
echo.
%cecho% {0b}Configuring Firehose...{0f} [OK]
call %~dp2DATA\RESOURCES\process-oppo.cmd %Loader% %MemoryName%
call %~dp2DATA\DEVICE\OPPO\menu.cmd
