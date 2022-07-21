@echo off

set MemoryName=ufs
set Loader=%~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn

cls
echo.
set Select_Menu_Oppo=
echo.Selected Model           : OPPO A53  (CPH 2127)
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
