@echo off

set Loader=%~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v2.mbn
set MemoryName=ufs

cls
echo.
echo.Selected Model           : OPPO RENO4  (CPH 2113)
echo.Operation                : Factory Reset and Remove FRP
call %~dp2DATA\RESOURCES\loading.cmd

call %~dp2DATA\CONFIG\USBPortCOM.cmd
IF (%USBComPort%) == () (GOTO :err_process) ELSE (GOTO :process)

:err_process
echo.
echo.Error - QCUSB Port EDL Not Detected!
echo.
pause
call %~dp2DATA\DEVICE\OPPO\menu.cmd

:process
echo.
echo.Connecting To Device... [OK]
echo.Configuring Firehose... [OK]
call %~dp2DATA\RESOURCES\process-oppo.cmd %Loader% %MemoryName%
call %~dp2DATA\DEVICE\OPPO\menu.cmd
