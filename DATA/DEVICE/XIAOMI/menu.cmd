@echo off

:: {###################################################################### ::
:: ############################# XIAOMI MENU ############################# ::
:: ####################################################################### ::
:Menu_Xiaomi_1OF5
cls
set Dialog=***               X I A O M I   P A G E   1  OF  5                  ***
call %~dp2DATA\RESOURCES\page.cmd
Call %~dp2DATA\RESOURCES\Button.cmd  10 12 "XIAOMI MI  6 PRO" 42 12 "XIAOMI MI  8 EE" 10 15 "XIAOMI MI  8 SE " 42 15 "XIAOMI MI  8 UD" 19 18 "    BACK    "  38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.Warning !!!
echo.This Operation Will Erase Userdata and Exsisting Data Account.
%~dp2DATA\BIN\Getinput.exe /m %Press% /h 72

:: Check for the pressed button 
echo.
if %errorlevel%==1 call %~dp2DATA\DEVICE\XIAOMI\MI6PRO\exec.cmd
if %errorlevel%==2 call %~dp2DATA\DEVICE\XIAOMI\MI8EE\exec.cmd
if %errorlevel%==3 call %~dp2DATA\DEVICE\XIAOMI\MI8SE\exec.cmd
if %errorlevel%==4 call %~dp2DATA\DEVICE\XIAOMI\MI8UD\exec.cmd
if %errorlevel%==5 call %~dp2QC.cmd
if %errorlevel%==6 goto Menu_Xiaomi_2OF5
goto Menu_Xiaomi_1OF5

:Menu_Xiaomi_2OF5
cls
set Dialog=***               X I A O M I   P A G E   2  OF  5                  ***
call %~dp2DATA\RESOURCES\page.cmd
Call %~dp2DATA\RESOURCES\Button.cmd  8 12 "XIAOMI MI A2     " 42 12 "XIAOMI MI A2 LITE" 8 15 "XIAOMI MI MAX 2  " 42 15 "XIAOMI MI MAX 3  " 19 18 "    BACK    "  38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.Warning !!!
echo.This Operation Will Erase Userdata and Exsisting Data Account.
%~dp2DATA\BIN\Getinput.exe /m %Press% /h 72

:: Check for the pressed button 
echo.
if %errorlevel%==1 call %~dp2DATA\DEVICE\XIAOMI\MIA2\exec.cmd
if %errorlevel%==2 call %~dp2DATA\DEVICE\XIAOMI\MIA2LITE\exec.cmd
if %errorlevel%==3 call %~dp2DATA\DEVICE\XIAOMI\MIMAX2\exec.cmd
if %errorlevel%==4 call %~dp2DATA\DEVICE\XIAOMI\MIMAX3\exec.cmd
if %errorlevel%==5 goto Menu_Xiaomi_1OF5
if %errorlevel%==6 goto Menu_Xiaomi_3OF5
goto Menu_Xiaomi_2OF5

:Menu_Xiaomi_3OF5
cls
set Dialog=***               X I A O M I   P A G E   3  OF  5                  ***
call %~dp2DATA\RESOURCES\page.cmd
Call %~dp2DATA\RESOURCES\Button.cmd  7 12 " XIAOMI MI MIX    " 42 12 " XIAOMI MI MIX 2S " 7 15 " XIAOMI MI MIX 3  " 42 15 " XIAOMI MI NOTE 2 "  19 18 "    BACK    "  38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.Warning !!!
echo.This Operation Will Erase Userdata and Exsisting Data Account.
%~dp2DATA\BIN\Getinput.exe /m %Press% /h 72

:: Check for the pressed button 
echo.
if %errorlevel%==1 call %~dp2DATA\DEVICE\XIAOMI\MIMIX\exec.cmd
if %errorlevel%==2 call %~dp2DATA\DEVICE\XIAOMI\MIMIX2S\exec.cmd
if %errorlevel%==3 call %~dp2DATA\DEVICE\XIAOMI\MIMIX3\exec.cmd
if %errorlevel%==4 call %~dp2DATA\DEVICE\XIAOMI\MINOTE2\exec.cmd
if %errorlevel%==5 goto Menu_Xiaomi_2OF5
if %errorlevel%==6 goto Menu_Xiaomi_4OF5
goto Menu_Xiaomi_3OF5

:Menu_Xiaomi_4OF5
cls
set Dialog=***               X I A O M I   P A G E   4  OF  5                  ***
call %~dp2DATA\RESOURCES\page.cmd
Call %~dp2DATA\RESOURCES\Button.cmd  5 12 " XIAOMI MI NOTE 3     " 42 12 " XIAOMI MI NOTE 5    " 5 15 " XIAOMI MI NOTE 5 PRO " 42 15 " XIAOMI MI PAD 4     "  19 18 "    BACK    "  38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.Warning !!!
echo.This Operation Will Erase Userdata and Exsisting Data Account.
%~dp2DATA\BIN\Getinput.exe /m %Press% /h 72

:: Check for the pressed button 
echo.
if %errorlevel%==1 call %~dp2DATA\DEVICE\XIAOMI\MINOTE3\exec.cmd
if %errorlevel%==2 call %~dp2DATA\DEVICE\XIAOMI\MINOTE5\exec.cmd
if %errorlevel%==3 call %~dp2DATA\DEVICE\XIAOMI\MINOTE5PRO\exec.cmd
if %errorlevel%==4 call %~dp2DATA\DEVICE\XIAOMI\MIPAD4\exec.cmd
if %errorlevel%==5 goto Menu_Xiaomi_3OF5
if %errorlevel%==6 goto Menu_Xiaomi_5OF5
goto Menu_Xiaomi_4OF5


:Menu_Xiaomi_5OF5
cls
set Dialog=***               X I A O M I   P A G E   5  OF  5                  ***
call %~dp2DATA\RESOURCES\page.cmd
Call %~dp2DATA\RESOURCES\Button.cmd  5 12 " XIAOMI MI POCO F1    " 42 12 " XIAOMI REDMI 7      " 5 15 " XIAOMI REDMI NOTE 5A " 19 18 "    BACK    " 38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.Warning !!!
echo.This Operation Will Erase Userdata and Exsisting Data Account.
%~dp2DATA\BIN\Getinput.exe /m %Press% /h 72

:: Check for the pressed button 
echo.
if %errorlevel%==1 call %~dp2DATA\DEVICE\XIAOMI\MIPOCOF1\exec.cmd
if %errorlevel%==2 call %~dp2DATA\DEVICE\XIAOMI\REDMI7\exec.cmd
if %errorlevel%==3 call %~dp2DATA\DEVICE\XIAOMI\REDMINOTE5A\exec.cmd
if %errorlevel%==4 goto Menu_Xiaomi_4OF5
if %errorlevel%==5 goto Commingsoon
goto Menu_Xiaomi_5OF5


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
goto Menu_Xiaomi_1OF5

:: ####################################################################### ::
:: ############################# XIAOMI MENU ############################# ::
:: ######################################################################} ::
