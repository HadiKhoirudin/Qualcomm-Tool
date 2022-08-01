@echo off

:: {###################################################################### ::
:: ############################ INSTALL DRIVER ########################### ::
:: ####################################################################### ::
set Dialog=***                        INSTALLING DRIVER                         ***

IF DEFINED programfiles(x86) GOTO x64

:x86
ECHO.
ECHO. Installing 32-bit driver ...
ECHO. Please continue driver installation ...
%sleep% 5
START /wait %~dp2assets\driver\QDLoader_HS-USB_x86 /f
GOTO FINISH
:x64
ECHO.
ECHO. Installing 64-bit driver ...
ECHO. Please continue driver installation ...
%sleep% 5
START /wait %~dp2assets\driver\QDLoader_HS-USB_x64 /f
:FINISH
ECHO.
ECHO.
ECHO. DONE ...
%sleep% 5