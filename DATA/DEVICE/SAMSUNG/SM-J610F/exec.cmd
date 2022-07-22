@echo off

set Loader=%~dp2DATA\LOADER\SAMSUNG\SM-J610F_loader_8917.mbn
set MemoryName=ufs

call %~dp2DATA\RESOURCES\page.cmd

echo.
echo.Selected Model           : SAMSUNG (SM-J610F)
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
call %~dp2DATA\DEVICE\SAMSUNG\menu.cmd

:process
echo.
%cecho% {0a}Connecting To Device...{0f} [OK]
echo.
%cecho% {0b}Configuring Firehose...{0f} [OK]
call %~dp2DATA\RESOURCES\process-samsung.cmd %Loader% %MemoryName%
call %~dp2DATA\DEVICE\SAMSUNG\menu.cmd
