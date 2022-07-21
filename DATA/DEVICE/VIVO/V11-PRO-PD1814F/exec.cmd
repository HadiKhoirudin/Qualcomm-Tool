@echo off

set Loader=%~dp2DATA\LOADER\VIVO\prog_emmc_firehose_8937_y91_y93_y95_v11.mbn
set MemoryName=emmc

cls
echo.
echo.Selected Model           : VIVO V11 PRO (PD1814F)
echo.Operation                : Factory Reset and Remove FRP
call %~dp2DATA\RESOURCES\loading.cmd

call %~dp2DATA\CONFIG\USBPortCOM.cmd
IF (%USBComPort%) == () (GOTO :err_process) ELSE (GOTO :process)

:err_process
echo.
echo.Error - QCUSB Port EDL Not Detected!
echo.
pause
call %~dp2DATA\DEVICE\VIVO\menu.cmd

:process
echo.
echo.Connecting To Device... [OK]
echo.Configuring Firehose... [OK]
call %~dp2DATA\RESOURCES\process-vivo.cmd %Loader% %MemoryName%
call %~dp2DATA\DEVICE\VIVO\menu.cmd
