@echo off

:: {###################################################################### ::
:: ############################## VIVO MENU ############################## ::
:: ####################################################################### ::
:Menu_Vivo_1OF2
cls
set Dialog=***                  V I V O    P A G E   1  OF  2                  ***
call %~dp2DATA\RESOURCES\page.cmd
Call %~dp2DATA\RESOURCES\Button.cmd  5 12 "VIVO   V9 (PD1730F)   " 42 12 "VIVO V9 Yth (PD1730BF)" 5 15 "VIVO V11 PRO (PD1814F)" 42 15 "VIVO  Y91/i  (PD1818F)" 19 18 "    BACK    "  38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.Warning !!!
echo.This Operation Will Erase Userdata and Exsisting Data Account.
%~dp2DATA\BIN\Getinput.exe /m %Press% /h 72

:: Check for the pressed button 
echo.
if %errorlevel%==1 call %~dp2DATA\DEVICE\VIVO\V9-PD1730F\exec.cmd
if %errorlevel%==2 call %~dp2DATA\DEVICE\VIVO\V9-Youth-PD1730BF\exec.cmd
if %errorlevel%==3 call %~dp2DATA\DEVICE\VIVO\V11-PRO-PD1814F\exec.cmd
if %errorlevel%==4 call %~dp2DATA\DEVICE\VIVO\Y91-Y91i-PD1818F\exec.cmd
if %errorlevel%==5 call %~dp2QC.cmd
if %errorlevel%==6 goto Menu_Vivo_2OF2
goto Menu_Vivo_1OF2

:Menu_Vivo_2OF2
cls
set Dialog=***                  V I V O    P A G E   2  OF  2                  ***
call %~dp2DATA\RESOURCES\page.cmd
Call %~dp2DATA\RESOURCES\Button.cmd  7 12 "VIVO Y93 (PD1818F)" 42 12 "VIVO Y95 (PD1818F)" 19 18 "    BACK    " 38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.Warning !!!
echo.This Operation Will Erase Userdata and Exsisting Data Account.
%~dp2DATA\BIN\Getinput.exe /m %Press% /h 72

:: Check for the pressed button 
echo.
if %errorlevel%==1 call %~dp2DATA\DEVICE\VIVO\Y93-PD1818F\exec.cmd
if %errorlevel%==2 call %~dp2DATA\DEVICE\VIVO\Y95-PD1818F\exec.cmd
if %errorlevel%==3 goto Menu_Vivo_1OF2
if %errorlevel%==4 goto Commingsoon
goto Menu_Vivo_2OF2


:Commingsoon
cls
set Dialog=***                                                                 ***
call %~dp2DATA\RESOURCES\page.cmd
echo.
echo.
echo.
echo.                      C  O  M  I  N  G  S  O  O  N
echo.
echo.          C  L  I  C  K      T  O      C  O  N  T  I  N  U  E

%~dp2DATA\BIN\Getinput.exe /m %Press% /h 72
goto Menu_Vivo_1OF2

:: ####################################################################### ::
:: ############################## VIVO MENU ############################## ::
:: ######################################################################} ::


