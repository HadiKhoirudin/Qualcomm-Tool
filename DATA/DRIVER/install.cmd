@echo off

:: {###################################################################### ::
:: ############################ INSTALL DRIVER ########################### ::
:: ####################################################################### ::

IF DEFINED programfiles(x86) GOTO x64

:x86
ECHO Installing 32-bit driver ...
ECHO Please continue driver installation ...
%~dp2DATA\BIN\sleep 10
START /wait %~dp2DATA\DRIVER\QDLoader_HS-USB_x86 /f
GOTO FINISH
:x64
ECHO Installing 64-bit driver ...
ECHO Please continue driver installation ...
%~dp2DATA\BIN\sleep 10
START /wait %~dp2DATA\DRIVER\QDLoader_HS-USB_x64 /f
:FINISH
ECHO.
ECHO.
ECHO SUCCESSFULY....
%~dp2DATA\BIN\sleep 5
call %~dp2QC.cmd
:: ####################################################################### ::
:: ############################ INSTALL DRIVER ########################### ::
:: ######################################################################} ::
