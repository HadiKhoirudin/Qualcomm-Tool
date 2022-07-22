@echo off
:MainMenu
set Dialog=***                            SELECT MENU                           ***
call %~dp2DATA\RESOURCES\page.cmd
call %~dp2DATA\RESOURCES\control.cmd
Call %~dp2DATA\RESOURCES\Button.cmd  9 12 "    OPPO    " 26 12 "    REALME    " 45 12 "     VIVO     " 9 15 "   XIAOMI   " 26 18 "INSTALL DRIVER" 45 15 "    SAMSUNG   " 9 18 "  ABOUT ME  " 45 18 "     EXIT     " # Press
%~dp2DATA\BIN\Getinput.exe /m %Press% /h 72
echo.
echo.

:: Check for the pressed button 
echo.
if %errorlevel%==1 call %~dp2DATA\DEVICE\OPPO\menu.cmd
if %errorlevel%==2 call %~dp2DATA\DEVICE\REALME\menu.cmd
if %errorlevel%==3 call %~dp2DATA\DEVICE\VIVO\menu.cmd
if %errorlevel%==4 call %~dp2DATA\DEVICE\XIAOMI\menu.cmd
if %errorlevel%==5 call %~dp2DATA\DRIVER\install.cmd
if %errorlevel%==6 call %~dp2DATA\DEVICE\SAMSUNG\menu.cmd
if %errorlevel%==7 explorer "https://www.youtube.com/c/HadiKIT"
if %errorlevel%==8 call %~dp2DATA\RESOURCES\confirm.cmd
goto MainMenu
