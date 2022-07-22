::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHzeyGM+LAlbRQC9CGS1CqYg2f364+mIr0BQYO0wdLP/+4CvQA==
::fBE1pAF6MU+EWHzeyGM+LAlbRQC9CGS1CqYg2cu17OeDwg==
::YAwzoRdxOk+EWAjk
::fBw5plQjdCqDJHiK8FA/IR9reAuNMHiGN6Ad5Ov04ufKlkISWN4bWbv65oarE88m2GbBRqoc9TRTm8Rs
::YAwzuBVtJxjWCl3EqQJhSA==
::ZR4luwNxJguZRRmM9UY5IxJALA==
::Yhs/ulQjdF65
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBNQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJjZks0
::ZQ05rAF9IBncCkqN+0xwdVsHAlTi
::ZQ05rAF9IAHYFVzEqQIBPRpYTwuPMSuOCboQiA==
::eg0/rx1wNQPfEVWB+kM9LVsJDDWhXA==
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQIRaChdQRSOOSuPCLkT6+P+/arK4mUcUOsUOKbvug==
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCqDJHiK8FA/IR9reAuNMHiGN6Ad5Ov04ufKlkISWN4ObY7X2buDLa0n5UroOK0F135Ts4YlOCYWewquDg==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
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
