@echo off
:: Set-Up Controllers - > Models
set Menu=%menu_manual_loader%

:Menu_Manual_Loader_1
cls
set dialog=***     S E L E C T                                 D E V I C E     ***
call %page%
call %box%
call %button%  8 16 "      XIAOMI      " 42 16 "       VIVO       " 28 19 "    BACK    " # Press
echo.
echo.
echo.
echo.
%getinput% /m %Press% /h 72
echo.


:: Check for the pressed button 
if %errorlevel%==1 (
   %xiaomiedl% reboot-edl
   %sleep% 3
   call %menu_xiaomi%
)

if %errorlevel%==2 (
   %vivoedl% reboot-edl
   %sleep% 3
   call %menu_vivo%
)

if %errorlevel%==3 call %main%
goto %main%
