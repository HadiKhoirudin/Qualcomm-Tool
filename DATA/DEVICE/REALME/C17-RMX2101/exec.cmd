@echo off

set Loader=%~dp2DATA\LOADER\REALME\prog_firehose_ddr_realme_v1.mbn
set MemoryName=ufs

cls
echo.
echo.Selected Model           : REALME C17 (RMX 2101)
echo.Operation                : Factory Reset and Remove FRP
call %~dp2DATA\RESOURCES\loading.cmd

call %~dp2DATA\CONFIG\USBPortCOM.cmd
IF (%USBComPort%) == () (GOTO :err_process) ELSE (GOTO :process)

:err_process
echo.
echo.Error - QCUSB Port EDL Not Detected!
echo.
pause
call %~dp2DATA\DEVICE\REALME\menu.cmd

:process
echo.
echo.Connecting To Device... [OK]
echo.Configuring Firehose... [OK]
call %~dp2DATA\RESOURCES\process-realme.cmd %Loader% %MemoryName%
call %~dp2DATA\DEVICE\REALME\menu.cmd
