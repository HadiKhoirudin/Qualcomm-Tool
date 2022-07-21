@echo off

:: {###################################################################### ::
:: ############################## VIVO MENU ############################## ::
:: ####################################################################### ::
:Menu_Vivo

cls
echo.
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.***                               MENU  VIVO                         ***
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.                      +1.  [VIVO   V9    (PD1730F)]
echo.                      +2.  [VIVO V9 Yth (PD1730BF)]
echo.                      +3.  [VIVO V11 PRO (PD1814F)]
echo.                      +4.  [VIVO  Y91/i  (PD1818F)]
echo.                      +5.  [VIVO   Y93   (PD1818F)]
echo.                      +6.  [VIVO   Y95   (PD1818F)]
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.++++++++++++++++++++++++++++++[ Type 0 To Back ]++++++++++++++++++++++++
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo.

echo.Warning !!!
echo.This Operation Will Erase Userdata and Exsisting Data Account.

echo.
set /p Select_Menu_Vivo=Please Input Menu Number = 
IF '%Select_Menu_Vivo%' == '%Select_Menu_Vivo%' GOTO Vivo_%Select_Menu_Vivo%


:Vivo_
GOTO Menu_Vivo


:Vivo_0
call %~dp2QC.cmd


:Vivo_1
call %~dp2DATA\DEVICE\VIVO\V9-PD1730F\exec.cmd


:Vivo_2
call %~dp2DATA\DEVICE\VIVO\V9-Youth-PD1730BF\exec.cmd


:Vivo_3
call %~dp2DATA\DEVICE\VIVO\V11-PRO-PD1814F\exec.cmd


:Vivo_4
call %~dp2DATA\DEVICE\VIVO\Y91-Y91i-PD1818F\exec.cmd


:Vivo_5
call %~dp2DATA\DEVICE\VIVO\Y93-PD1818F\exec.cmd


:Vivo_6
call %~dp2DATA\DEVICE\VIVO\Y95-PD1818F\exec.cmd


:: ####################################################################### ::
:: ############################## VIVO MENU ############################## ::
:: ######################################################################} ::


