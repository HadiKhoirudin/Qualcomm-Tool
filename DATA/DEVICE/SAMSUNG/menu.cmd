
@echo off

:: {###################################################################### ::
:: ############################# MENU SAMSUNG ############################ ::
:: ####################################################################### ::
:Menu_Samsung

cls
echo.
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.***                              MENU SAMSUNG                        ***
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.                      +1.  [   SAMSUNG SM-A015F   ]
echo.                      +2.  [   SAMSUNG SM-A025F   ]
echo.                      +3.  [   SAMSUNG SM-A115A   ]
echo.                      +4.  [   SAMSUNG SM-A115F   ]
echo.                      +5.  [   SAMSUNG SM-A115U   ]
echo.                      +6.  [   SAMSUNG SM-A705F   ]
echo.                      +7.  [   SAMSUNG SM-J415F   ]
echo.                      +8.  [   SAMSUNG SM-J610F   ]
echo.                      +9.  [   SAMSUNG SM-M025F   ]
echo.                      +10. [   SAMSUNG SM-M115F   ]
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.++++++++++++++++++++++++++++++[ Type 0 To Back ]++++++++++++++++++++++++
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo.

echo.Warning !!!
echo.This Operation Will Erase Userdata and Exsisting Data Account.

echo.
set /p Select_Menu_Samsung=Please Input Menu Number = 
IF '%Select_Menu_Samsung%' == '%Select_Menu_Samsung%' GOTO Samsung_%Select_Menu_Samsung%

:Samsung_
GOTO Menu_Samsung


:Samsung_0
call %~dp2QC.cmd


:Samsung_1
call %~dp2DATA\DEVICE\SAMSUNG\SM-A015F\exec.cmd

:Samsung_2
call %~dp2DATA\DEVICE\SAMSUNG\SM-A025F\exec.cmd

:Samsung_3
call %~dp2DATA\DEVICE\SAMSUNG\SM-A115A\exec.cmd

:Samsung_4
call %~dp2DATA\DEVICE\SAMSUNG\SM-A115F\exec.cmd

:Samsung_5
call %~dp2DATA\DEVICE\SAMSUNG\SM-A115U\exec.cmd

:Samsung_6
call %~dp2DATA\DEVICE\SAMSUNG\SM-A705F\exec.cmd

:Samsung_7
call %~dp2DATA\DEVICE\SAMSUNG\SM-J415F\exec.cmd

:Samsung_8
call %~dp2DATA\DEVICE\SAMSUNG\SM-J610F\exec.cmd

:Samsung_9
call %~dp2DATA\DEVICE\SAMSUNG\SM-M025F\exec.cmd

:Samsung_10
call %~dp2DATA\DEVICE\SAMSUNG\SM-M115F\exec.cmd


:: ####################################################################### ::
:: ############################# XIAOMI MENU ############################# ::
:: ######################################################################} ::








