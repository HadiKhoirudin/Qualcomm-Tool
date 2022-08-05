@echo off

:: {###################################################################### ::
:: ############################ INSTALL DRIVER ########################### ::
:: ####################################################################### ::

IF DEFINED programfiles(x86) GOTO x64

:x86
ECHO. INFO!  Please continue driver x86 installation ...
%sleep% 5
START /wait %~dp2assets\driver\QDLoader_HS-USB_x86 /f
GOTO FINISH
:x64
ECHO. INFO!  Please continue driver x64 installation ...
%sleep% 5
START /wait %~dp2assets\driver\QDLoader_HS-USB_x64 /f
:FINISH
ECHO.        DONE ...
%sleep% 5