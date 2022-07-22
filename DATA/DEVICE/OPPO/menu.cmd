@echo off

:: {###################################################################### ::
:: ############################## OPPO MENU ############################## ::
:: ####################################################################### ::
:Menu_Oppo_1OF3
cls
set Dialog=***                  O P P O    P A G E   1  OF  3                  ***
call %~dp2DATA\RESOURCES\page.cmd
Call %~dp2DATA\RESOURCES\Button.cmd  5 12 "OPPO A33 (CPH 2137) " 42 12 "OPPO A53 (CPH 2127)" 5 15 "OPPO A53s (CPH 2139)" 42 15 "OPPO A73 (CPH 2099)" 19 18 "    BACK    "  38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.Warning !!!
echo.This Operation Will Erase Userdata and Exsisting Data Account.
%~dp2DATA\BIN\Getinput.exe /m %Press% /h 72

:: Check for the pressed button 
echo.
if %errorlevel%==1 call %~dp2DATA\DEVICE\OPPO\A33-CPH2137\exec.cmd
if %errorlevel%==2 call %~dp2DATA\DEVICE\OPPO\A53-CPH2127\exec.cmd
if %errorlevel%==3 call %~dp2DATA\DEVICE\OPPO\A53s-CPH2139\exec.cmd
if %errorlevel%==4 call %~dp2DATA\DEVICE\OPPO\A73-CPH2099\exec.cmd
if %errorlevel%==5 call %~dp2QC.cmd
if %errorlevel%==6 goto Menu_Oppo_2OF3
goto Menu_Oppo_1OF3

:Menu_Oppo_2OF3
cls
set Dialog=***                  O P P O    P A G E   2  OF  3                  ***
call %~dp2DATA\RESOURCES\page.cmd
Call %~dp2DATA\RESOURCES\Button.cmd  5 12 "OPPO A74 (CPH 2219)" 42 12 "OPPO A95 (CPH 2365)" 5 15 "OPPO F17 (CPH 2095)" 42 15 "OPPO F19 (CPH 2219)" 19 18 "    BACK    "  38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.Warning !!!
echo.This Operation Will Erase Userdata and Exsisting Data Account.
%~dp2DATA\BIN\Getinput.exe /m %Press% /h 72

:: Check for the pressed button 
echo.
if %errorlevel%==1 call %~dp2DATA\DEVICE\OPPO\A74-CPH2219\exec.cmd
if %errorlevel%==2 call %~dp2DATA\DEVICE\OPPO\A95-CPH2365\exec.cmd
if %errorlevel%==3 call %~dp2DATA\DEVICE\OPPO\F17-CPH2095\exec.cmd
if %errorlevel%==4 call %~dp2DATA\DEVICE\OPPO\F19-CPH2219\exec.cmd
if %errorlevel%==5 goto Menu_Oppo_1OF3
if %errorlevel%==6 goto Menu_Oppo_3OF3
goto Menu_Oppo_2OF3


:Menu_Oppo_3OF3
cls
set Dialog=***                  O P P O    P A G E   3  OF  3                  ***
call %~dp2DATA\RESOURCES\page.cmd
Call %~dp2DATA\RESOURCES\Button.cmd  5 12 "OPPO RENO4 (CPH 2113)" 42 12 "OPPO RENO5 (CPH 2159)" 5 15 "OPPO RENO6 (CPH 2235)" 19 18 "    BACK    " 38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.Warning !!!
echo.This Operation Will Erase Userdata and Exsisting Data Account.
%~dp2DATA\BIN\Getinput.exe /m %Press% /h 72

:: Check for the pressed button 
echo.
if %errorlevel%==1 call %~dp2DATA\DEVICE\OPPO\RENO4-CPH2113\exec.cmd
if %errorlevel%==2 call %~dp2DATA\DEVICE\OPPO\RENO5-CPH2159\exec.cmd
if %errorlevel%==3 call %~dp2DATA\DEVICE\OPPO\RENO6-CPH2235\exec.cmd
if %errorlevel%==4 goto Menu_Oppo_2OF3
if %errorlevel%==5 goto Commingsoon
goto Menu_Oppo_3OF3


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
goto Menu_Oppo_1OF3

:: ####################################################################### ::
:: ############################## OPPO MENU ############################## ::
:: ######################################################################} ::
