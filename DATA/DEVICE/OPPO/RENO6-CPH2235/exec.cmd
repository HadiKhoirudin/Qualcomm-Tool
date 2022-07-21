@echo off

cls
echo.
set Select_Menu_Oppo=
echo.Selected Model           : OPPO RENO6  (CPH 2235)
echo.Operation                : Factory Reset and Remove FRP
call %~dp2DATA\BIN\loading.cmd
call %~dp2DATA\CONFIG\USBPortCOM.cmd

IF (%USBComPort%) == () (GOTO :err_process_opporeno5) ELSE (GOTO :process_opporeno5) 

:err_process_opporeno6
echo.
echo.Error - QCUSB Port EDL Not Detected!
echo.
pause
call %~dp2DATA\DEVICE\OPPO\menu.cmd

:process_opporeno6
echo.
echo.Connecting To Device... [OK]
echo.Erasing FRP and Userdata.
echo.
%~dp2DATA\BIN\emmcdl -p %USBComPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v2.mbn -x %~dp2DATA\DEVICE\OPPO\RENO6-CPH2235\patch.xml -memoryname ufs >nul
echo.
echo.
echo.Rebooting Device...
%~dp2DATA\BIN\emmcdl -p %USBComPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v2.mbn -x %~dp2DATA\POWER\boot.xml -memoryname ufs >nul
echo.
echo.
pause
call %~dp2DATA\DEVICE\OPPO\menu.cmd
