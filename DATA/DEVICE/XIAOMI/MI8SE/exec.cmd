@echo off

set Loader=%~dp2DATA\LOADER\XIAOMI\prog_emmc_firehose_Sdm670_ddr_xiaomi_mi8se_sirius_sig_rb1.mbn
set MemoryName=emmc

cls
echo.
echo.Selected Model           : XIAOMI MI 8 SE
echo.Operation                : Factory Reset Remove FRP and Unlock MiCloud
call %~dp2DATA\RESOURCES\loading.cmd

call %~dp2DATA\CONFIG\USBPortCOM.cmd
IF (%USBComPort%) == () (GOTO :err_process) ELSE (GOTO :process)

:err_process
echo.
echo.Error - QCUSB Port EDL Not Detected!
echo.
pause
call %~dp2DATA\DEVICE\XIAOMI\menu.cmd

:process
echo.
echo.Connecting To Device... [OK]
echo.Configuring Firehose... [OK]
call %~dp2DATA\RESOURCES\process-xiaomi.cmd %Loader% %MemoryName%
call %~dp2DATA\DEVICE\XIAOMI\menu.cmd
