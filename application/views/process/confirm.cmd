@echo off
:: Check for the pressed button 
echo.
set dialog=***                           CONFIRM EXIT                           ***
call %page%
call %box%
Call %button% 19 14 "    YES    "  38 14 "     NO     " # Press
%getinput% /m %Press% /h 72
if %errorlevel%==1 (exit)
if %errorlevel%==2 call %main%
