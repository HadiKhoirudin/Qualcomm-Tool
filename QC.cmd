@echo off
call %~dp2DATA\RESOURCES\init.cmd

:MainMenu
cls
echo.
echo.                           QUALCOMM TOOL V2.0                         
echo.                 A    S I M P L E    U N L O C K E R                        
echo. ______________________________________________________________________
echo. Credit : 
echo.          - Bjoern Kerler (QUALCOMM FIREHOSE ATTACKER SOURCE CODE)
echo.          - Hary Sulteng  (GSM SULTENG)
echo.          - HadiK IT      (Hadi Khoirudin, S. Kom. - SOFTWARE ENGINEER)
echo. ______________________________________________________________________
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.***                            SELECT MENU                           ***
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo."||"------------------------------"||"------------------------------"||"
echo."||" +1. [        OPPO        ]   "||" +4.  [        XIAOMI       ] "||"
echo."||"------------------------------"||"------------------------------"||"
echo."||" +2. [       REALME       ]   "||" +5.  [       SAMSUNG       ] "||"
echo."||"------------------------------"||"------------------------------"||"
echo."||" +3. [        VIVO        ]   "||" +6.  [    INSTALL DRIVER   ] "||"
echo."||"------------------------------"||"------------------------------"||"
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.+++++++++++++++++++++++++++[ Type 0 To Exit ]+++++++++++++++++++++++++++
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.

set /p Select_MainMenu=Please Input Menu Number = 
IF '%Select_MainMenu%' == '%Select_MainMenu%' GOTO Menu_%Select_MainMenu%

:Menu_
GOTO MainMenu

:Menu_0
exit

:Menu_1
call %~dp2DATA\DEVICE\OPPO\menu.cmd

:Menu_2
call %~dp2DATA\DEVICE\REALME\menu.cmd

:Menu_3
call %~dp2DATA\DEVICE\VIVO\menu.cmd

:Menu_4
call %~dp2DATA\DEVICE\XIAOMI\menu.cmd

:Menu_5
call %~dp2DATA\DEVICE\SAMSUNG\menu.cmd

:Menu_6
call %~dp2DATA\DRIVER\install.cmd

:Menu_x
call %~dp2DATA\RESOURCES\process.cmd
