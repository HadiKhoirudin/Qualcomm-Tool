@echo off

:: {###################################################################### ::
:: ############################# MENU SAMSUNG ############################ ::
:: ####################################################################### ::
:Menu_Samsung_1OF3
cls
set Dialog=***             S A M S U N G   P A G E   1  OF  3                  ***
call %~dp2DATA\RESOURCES\page.cmd
Call %~dp2DATA\RESOURCES\Button.cmd  8 12 "SAMSUNG SM-A015F" 42 12 "SAMSUNG SM-A025F" 8 15 "SAMSUNG SM-A115A" 42 15 "SAMSUNG SM-A115F" 19 18 "    BACK    "  38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.Warning !!!
echo.This Operation Will Erase Userdata and Exsisting Data Account.
%~dp2DATA\BIN\Getinput.exe /m %Press% /h 72

:: Check for the pressed button 
echo.
if %errorlevel%==1 call %~dp2DATA\DEVICE\SAMSUNG\SM-A015F\exec.cmd
if %errorlevel%==2 call %~dp2DATA\DEVICE\SAMSUNG\SM-A025F\exec.cmd
if %errorlevel%==3 call %~dp2DATA\DEVICE\SAMSUNG\SM-A115A\exec.cmd
if %errorlevel%==4 call %~dp2DATA\DEVICE\SAMSUNG\SM-A115F\exec.cmd
if %errorlevel%==5 call %~dp2QC.cmd
if %errorlevel%==6 goto Menu_Samsung_2OF3
goto Menu_Samsung_1OF3


:Menu_Samsung_2OF3
cls
set Dialog=***             S A M S U N G   P A G E   2  OF  3                  ***
call %~dp2DATA\RESOURCES\page.cmd
Call %~dp2DATA\RESOURCES\Button.cmd  8 12 "SAMSUNG SM-A115U" 42 12 "SAMSUNG SM-A705F" 8 15 "SAMSUNG SM-J415F" 42 15 "SAMSUNG SM-J610F" 19 18 "    BACK    "  38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.Warning !!!
echo.This Operation Will Erase Userdata and Exsisting Data Account.
%~dp2DATA\BIN\Getinput.exe /m %Press% /h 72

:: Check for the pressed button 
echo.
if %errorlevel%==1 call %~dp2DATA\DEVICE\SAMSUNG\SM-A115U\exec.cmd
if %errorlevel%==2 call %~dp2DATA\DEVICE\SAMSUNG\SM-A705F\exec.cmd
if %errorlevel%==3 call %~dp2DATA\DEVICE\SAMSUNG\SM-J415F\exec.cmd
if %errorlevel%==4 call %~dp2DATA\DEVICE\SAMSUNG\SM-J610F\exec.cmd
if %errorlevel%==5 goto Menu_Samsung_1OF3
if %errorlevel%==6 goto Menu_Samsung_3OF3
goto Menu_Samsung_1OF3


:Menu_Samsung_3OF3
cls
set Dialog=***             S A M S U N G   P A G E   3  OF  3                  ***
call %~dp2DATA\RESOURCES\page.cmd
Call %~dp2DATA\RESOURCES\Button.cmd  8 12 "SAMSUNG SM-M025F" 42 12 "SAMSUNG SM-M115F" 19 18 "    BACK    " 38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.Warning !!!
echo.This Operation Will Erase Userdata and Exsisting Data Account.
%~dp2DATA\BIN\Getinput.exe /m %Press% /h 72

:: Check for the pressed button 
echo.
if %errorlevel%==1 call %~dp2DATA\DEVICE\SAMSUNG\SM-M025F\exec.cmd
if %errorlevel%==2 call %~dp2DATA\DEVICE\SAMSUNG\SM-M115F\exec.cmd
if %errorlevel%==3 goto Menu_Samsung_2OF3
if %errorlevel%==4 goto Commingsoon
goto Menu_Samsung_3OF3


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
goto Menu_Samsung_1OF3

:: ####################################################################### ::
:: ############################# MENU SAMSUNG ############################ ::
:: ######################################################################} ::








