@echo off
:: Check for the pressed button 
echo.
set Dialog=***                           CONFIRM EXIT                           ***
call %~dp2DATA\RESOURCES\page.cmd
call %~dp2DATA\RESOURCES\control.cmd
Call %~dp2DATA\RESOURCES\Button.cmd 19 14 "    YES    "  38 14 "     NO     " # Press
%~dp2DATA\BIN\Getinput.exe /m %Press% /h 72
if %errorlevel%==1 (exit)
if %errorlevel%==2 call %~dp2QC.cmd
