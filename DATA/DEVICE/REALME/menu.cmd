@echo off

:: {###################################################################### ::
:: ############################# REALME MENU ############################# ::
:: ####################################################################### ::
:Menu_Realme

cls
echo.
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.***                               MENU REALME                        ***
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.                      +1.  [REALME 7i   (RMX 2103)]
echo.                      +2.  [REALME C15  (RMX 2195)]
echo.                      +3.  [REALME C17  (RMX 2101)]
echo.                      +4.  [REALME 8PRO (RMX 3091)]
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.++++++++++++++++++++++++++++++[ Type 0 To Back ]++++++++++++++++++++++++
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo.

echo.Warning !!!
echo.This Operation Will Erase Userdata and Exsisting Data Account.

echo.
set /p Select_Menu_Realme=Please Input Menu Number = 
IF '%Select_Menu_Realme%' == '%Select_Menu_Realme%' GOTO Realme_%Select_Menu_Realme%


:Realme_
GOTO Menu_Realme


:Realme_0
call %~dp2QC.cmd

:Realme_1
call %~dp2DATA\DEVICE\REALME\7i-RMX2103\exec.cmd

:Realme_2
call %~dp2DATA\DEVICE\REALME\C15-RMX2195\exec.cmd

:Realme_3
call %~dp2DATA\DEVICE\REALME\C17-RMX2101\exec.cmd

:Realme_4
call %~dp2DATA\DEVICE\REALME\8PRO-RMX3091\exec.cmd

:: ####################################################################### ::
:: ############################# REALME MENU ############################# ::
:: ######################################################################} ::



