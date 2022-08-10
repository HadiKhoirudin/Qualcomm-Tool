@echo off

:: {###################################################################### ::
:: ############################## MAIN MENU ############################## ::
:: ####################################################################### ::

:MainMenu
:: Tab Dialog
set dialog=***                            SELECT MENU                           ***
call %page%
call %box%
Call %button%  8 12 "     OPPO     " 27 12 "    REALME    " 46 12 "     VIVO     " 8 15 "    XIAOMI    " 46 15 "    SAMSUNG   " 27 18 "INSTALL DRIVER" 8 18 "MANUAL  LOADER" 46 18 " FASTBOOT EDL " 46 21 "   ABOUT ME   " # Press
echo.
echo.
echo.
echo.                     Version 3.0  RC5 - 11/08/2022                     
echo. ______________________________________________________________________
echo. - Added Auto Backup                     - Added Manual Loader Function
echo. - Added Auto Generate Patch.xml         - Added Reset IMEI / EFS
echo. - Added Fastboot EDL                    - Added Un/ReLock Bootloader

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
if %errorlevel%==8 call %menu_fastboot_edl%
if %errorlevel%==9 call %aboutme%
goto MainMenu
