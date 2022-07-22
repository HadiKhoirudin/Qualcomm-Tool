@echo off

set Loader=%~dp2DATA\LOADER\VIVO\prog_emmc_firehose_8937_y91_y93_y95_v11.mbn
set MemoryName=emmc

call %~dp2DATA\RESOURCES\page.cmd

echo.
echo.Selected Model           : VIVO Y91/i(PD1818F)
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
call %~dp2DATA\DEVICE\VIVO\menu.cmd

:process
echo.
%cecho% {0a}Connecting To Device...{0f} [OK]
echo.
%cecho% {0b}Configuring Firehose...{0f} [OK]
call %~dp2DATA\RESOURCES\process-vivo.cmd %Loader% %MemoryName%
call %~dp2DATA\DEVICE\VIVO\menu.cmd
