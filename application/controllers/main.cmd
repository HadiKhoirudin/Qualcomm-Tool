@echo off

:: {###################################################################### ::
:: ############################## MAIN MENU ############################## ::
:: ####################################################################### ::

:MainMenu
:: Tab Dialog
set dialog=***                            SELECT MENU                           ***
call %page%
call %box%
Call %button%  8 12 "     OPPO     " 27 12 "    REALME    " 46 12 "     VIVO     " 8 15 "    XIAOMI    " 46 15 "    SAMSUNG   " 27 18 "INSTALL DRIVER" 8 18 "MANUAL  LOADER" 46 18 "   ABOUT ME   " # Press
echo.
echo.
echo.
echo.
echo. Version 3.0 RC3 - 02/08/2022
echo. Added Auto Backup - Added Some Devices - Added Manual Loader Function
echo. Added Auto Generate Patch.xml Function - etc...

%getinput% /m %Press% /h 72
:: Check for the pressed button 
echo.
if %errorlevel%==1 call %menu_oppo%
if %errorlevel%==2 call %menu_realme%
if %errorlevel%==3 call %menu_vivo%
if %errorlevel%==4 call %menu_xiaomi%
if %errorlevel%==5 call %menu_samsung%
if %errorlevel%==6 call %driver%
if %errorlevel%==7 call %menu_manual_loader%
if %errorlevel%==8 call %aboutme%
goto MainMenu
