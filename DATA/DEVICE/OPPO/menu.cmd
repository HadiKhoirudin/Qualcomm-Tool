@echo off

set USBComPort=
set DateTime=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%%TIME:~0,2%%TIME:~3,2%
:: {###################################################################### ::
:: ############################## OPPO MENU ############################## ::
:: ####################################################################### ::
:Menu_Oppo
cls
echo.
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.***                               MENU OPPO                          ***
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.                      +1.  [OPPO A33   (CPH 2137)]
echo.                      +2.  [OPPO A53   (CPH 2127)]
echo.                      +3.  [OPPO A53s  (CPH 2139)]
echo.                      +4.  [OPPO A73   (CPH 2099)]
echo.                      +5.  [OPPO A74   (CPH 2219)]
echo.                      +6.  [OPPO A95   (CPH 2365)]
echo.                      +7.  [OPPO F17   (CPH 2095)]
echo.                      +8.  [OPPO F19   (CPH 2219)]
echo.                      +9.  [OPPO RENO4 (CPH 2113)]
echo.                      +10. [OPPO RENO5 (CPH 2159)]
echo.                      +11. [OPPO RENO6 (CPH 2235)]
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.+++++++++++++++++++++++++++++[ Type 0 To Back ]+++++++++++++++++++++++++
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo.

echo.Warning !!!
echo.This Operation Will Erase Userdata and Remove Exsisting Data Account.

echo.
set /p Select_Menu_Oppo=Please Input Menu Number = 
IF '%Select_Menu_Oppo%' == '%Select_Menu_Oppo%' GOTO Oppo_%Select_Menu_Oppo%
:Oppo_
GOTO Menu_Oppo

:Oppo_0
call %~dp2QC.cmd

:Oppo_1
call %~dp2DATA\DEVICE\OPPO\A33-CPH2137\exec.cmd

:Oppo_2
call %~dp2DATA\DEVICE\OPPO\A53-CPH2127\exec.cmd

:Oppo_3
call %~dp2DATA\DEVICE\OPPO\A53s-CPH2139\exec.cmd

:Oppo_4
call %~dp2DATA\DEVICE\OPPO\A73-CPH2099\exec.cmd

:Oppo_5
call %~dp2DATA\DEVICE\OPPO\A74-CPH2219\exec.cmd

:Oppo_6
call %~dp2DATA\DEVICE\OPPO\A95-CPH2365\exec.cmd

:Oppo_7
call %~dp2DATA\DEVICE\OPPO\F17-CPH2095\exec.cmd

:Oppo_8
call %~dp2DATA\DEVICE\OPPO\F19-CPH2219\exec.cmd

:Oppo_9
call %~dp2DATA\DEVICE\OPPO\RENO4-CPH2113\exec.cmd

:Oppo_10
call %~dp2DATA\DEVICE\OPPO\RENO5-CPH2159\exec.cmd

:Oppo_11
call %~dp2DATA\DEVICE\OPPO\RENO6-CPH2235\exec.cmd

:: ####################################################################### ::
:: ############################## OPPO MENU ############################## ::
:: ######################################################################} ::
