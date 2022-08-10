@echo off
:: Set-Up Controllers - > Models
set Menu=%menu_manual_loader%
set Devices=GENERIC

:Menu_Manual_Loader_1
cls
set dialog=***     S E L E C T                                 D E V I C E     ***
call %page%
call %box%
Call %button%  8 13 "      XIAOMI      " 41 13 "       VIVO       " 29 18 "    BACK    " # Press
echo.
echo.
echo.
echo.
%getinput% /m %Press% /h 72
echo.


:: Check for the pressed button 
if %errorlevel%==1 %xiaomiedl% reboot-edl

if %errorlevel%==2 %vivoedl% reboot-edl

if %errorlevel%==3 call %main%
goto %main%
