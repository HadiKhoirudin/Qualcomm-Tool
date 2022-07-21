@echo off

set Loader=%~dp2DATA\LOADER\SAMSUNG\SM-A115U_loader_8953.mbn
set MemoryName=emmc

cls
echo.
echo.Selected Model           : SAMSUNG (SM-A115U)
echo.Operation                : Factory Reset and Remove FRP
call %~dp2DATA\RESOURCES\loading.cmd

call %~dp2DATA\CONFIG\USBPortCOM.cmd
IF (%USBComPort%) == () (GOTO :err_process) ELSE (GOTO :process)

:err_process
echo.
echo.Error - QCUSB Port EDL Not Detected!
echo.
pause
call %~dp2DATA\DEVICE\SAMSUNG\menu.cmd

:process
echo.
echo.Connecting To Device... [OK]
echo.Configuring Firehose... [OK]
call %~dp2DATA\RESOURCES\process-samsung.cmd %Loader% %MemoryName%
call %~dp2DATA\DEVICE\SAMSUNG\menu.cmd
