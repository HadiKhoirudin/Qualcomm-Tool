@echo off

:: {###################################################################### ::
:: ############################# REALME MENU ############################# ::
:: ####################################################################### ::
:Menu_Realme
cls
set Dialog=***                            R E A L M E                           ***
call %~dp2DATA\RESOURCES\page.cmd
Call %~dp2DATA\RESOURCES\Button.cmd  5 12 "REALME C15 (RMX 2195)" 42 12 "REALME C17 (RMX 2101) " 5 15 "REALME 7i (RMX 2103) " 42 15 "REALME 8PRO (RMX 3091)" 28 18 "    BACK    " # Press
echo.
echo.
echo.
echo.Warning !!!
echo.This Operation Will Erase Userdata and Exsisting Data Account.
%~dp2DATA\BIN\Getinput.exe /m %Press% /h 72

:: Check for the pressed button 
echo.
if %errorlevel%==1 call %~dp2DATA\DEVICE\REALME\C15-RMX2195\exec.cmd 
if %errorlevel%==2 call %~dp2DATA\DEVICE\REALME\C17-RMX2101\exec.cmd
if %errorlevel%==3 call %~dp2DATA\DEVICE\REALME\7i-RMX2103\exec.cmd
if %errorlevel%==4 call %~dp2DATA\DEVICE\REALME\8PRO-RMX3091\exec.cmd
if %errorlevel%==5 call %~dp2QC.cmd
goto Menu_Realme
