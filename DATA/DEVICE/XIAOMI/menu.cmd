@echo off

:: {###################################################################### ::
:: ############################# XIAOMI MENU ############################# ::
:: ####################################################################### ::
:Menu_Xiaomi

cls
echo.
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.***                              MENU  XIAOMI                        ***
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.                      +1.  [   XIAOMI MI  6 PRO   ]
echo.                      +2.  [   XIAOMI MI  8 EE    ]
echo.                      +3.  [   XIAOMI MI  8 SE    ]
echo.                      +4.  [   XIAOMI MI  8 UD    ]
echo.                      +5.  [     XIAOMI MI A2     ]
echo.                      +6.  [   XIAOMI MI A2 LITE  ]
echo.                      +7.  [   XIAOMI MI MAX 2    ]
echo.                      +8.  [   XIAOMI MI MAX 3    ]
echo.                      +9.  [     XIAOMI MI MIX    ]
echo.                      +10. [   XIAOMI MI MIX 2S   ]
echo.                      +11. [   XIAOMI MI MIX 3    ]
echo.                      +12. [   XIAOMI MI NOTE 2   ]
echo.                      +13. [   XIAOMI MI NOTE 3   ]
echo.                      +14. [   XIAOMI MI NOTE 5   ]
echo.                      +15. [ XIAOMI MI NOTE 5 PRO ]
echo.                      +16. [   XIAOMI MI PAD 4    ]
echo.                      +17. [   XIAOMI MI POCO F1  ]
echo.                      +18. [    XIAOMI REDMI 7    ]
echo.                      +19. [ XIAOMI REDMI NOTE 5A ]
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.++++++++++++++++++++++++++++++[ Type 0 To Back ]++++++++++++++++++++++++
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo.

echo.Warning !!!
echo.This Operation Will Erase Userdata and Exsisting Data Account.

echo.
set /p Select_Menu_Xiaomi=Please Input Menu Number = 
IF '%Select_Menu_Xiaomi%' == '%Select_Menu_Xiaomi%' GOTO Xiaomi_%Select_Menu_Xiaomi%

:Xiaomi_
GOTO Menu_Xiaomi


:Xiaomi_0
call %~dp2QC.cmd


:Xiaomi_1
call %~dp2DATA\DEVICE\XIAOMI\MI6PRO\exec.cmd


:Xiaomi_2
call %~dp2DATA\DEVICE\XIAOMI\MI8EE\exec.cmd


:Xiaomi_3
call %~dp2DATA\DEVICE\XIAOMI\MI8SE\exec.cmd


:Xiaomi_4
call %~dp2DATA\DEVICE\XIAOMI\MI8UD\exec.cmd


:Xiaomi_5
call %~dp2DATA\DEVICE\XIAOMI\MIA2\exec.cmd


:Xiaomi_6
call %~dp2DATA\DEVICE\XIAOMI\MIA2LITE\exec.cmd


:Xiaomi_7
call %~dp2DATA\DEVICE\XIAOMI\MIMAX2\exec.cmd


:Xiaomi_8
call %~dp2DATA\DEVICE\XIAOMI\MIMAX3\exec.cmd


:Xiaomi_9
call %~dp2DATA\DEVICE\XIAOMI\MIMIX\exec.cmd


:Xiaomi_10
call %~dp2DATA\DEVICE\XIAOMI\MIMIX2S\exec.cmd


:Xiaomi_11
call %~dp2DATA\DEVICE\XIAOMI\MIMIX3\exec.cmd


:Xiaomi_12
call %~dp2DATA\DEVICE\XIAOMI\MINOTE2\exec.cmd


:Xiaomi_13
call %~dp2DATA\DEVICE\XIAOMI\MINOTE3\exec.cmd


:Xiaomi_14
call %~dp2DATA\DEVICE\XIAOMI\MINOTE5\exec.cmd


:Xiaomi_15
call %~dp2DATA\DEVICE\XIAOMI\MINOTE5PRO\exec.cmd


:Xiaomi_16
call %~dp2DATA\DEVICE\XIAOMI\MIPAD4\exec.cmd


:Xiaomi_17
call %~dp2DATA\DEVICE\XIAOMI\MIPOCOF1\exec.cmd


:Xiaomi_18
call %~dp2DATA\DEVICE\XIAOMI\REDMI7\exec.cmd


:Xiaomi_19
call %~dp2DATA\DEVICE\XIAOMI\REDMINOTE5A\exec.cmd


:: ####################################################################### ::
:: ############################# XIAOMI MENU ############################# ::
:: ######################################################################} ::
