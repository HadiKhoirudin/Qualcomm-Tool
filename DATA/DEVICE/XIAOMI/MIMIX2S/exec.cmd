@echo off

set Loader=%~dp2DATA\LOADER\XIAOMI\prog_ufs_firehose_Sdm845_ddr_xiaomi_sig_mimix2s_polaris_rb1.elf
set MemoryName=ufs

cls
echo.
echo.Selected Model           : XIAOMI MI MIX 2S
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
