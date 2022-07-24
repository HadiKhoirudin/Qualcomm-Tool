@echo off

:: {###################################################################### ::
:: ############################## MAIN MENU ############################## ::
:: ####################################################################### ::

:MainMenu
:: Tab Dialog
set dialog=***                            SELECT MENU                           ***
call %page%
call %box%
Call %button%  9 12 "    OPPO    " 26 12 "    REALME    " 45 12 "     VIVO     " 9 15 "   XIAOMI   " 45 15 "    SAMSUNG   " 26 18 "INSTALL DRIVER" 9 18 "  ABOUT ME  " 45 18 "     EXIT     " # Press
%getinput% /m %Press% /h 72
echo.
echo.

:: Check for the pressed button 
echo.
if %errorlevel%==1 call %menu_oppo%
if %errorlevel%==2 call %menu_realme%
if %errorlevel%==3 call %menu_vivo%
if %errorlevel%==4 call %menu_xiaomi%
if %errorlevel%==5 call %menu_samsung%
if %errorlevel%==6 call %driver%
if %errorlevel%==7 call %aboutme%
if %errorlevel%==8 call %confirm%
goto MainMenu
