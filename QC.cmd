@echo off
color 4f
Mode 73,33
Title QUALCOMM UNLOCK TOOL V1.0
:MainMenu
set comPort=
set DateTime=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%%TIME:~0,2%%TIME:~3,2%
cls
echo.
echo.                       QUALCOMM UNLOCK TOOL V1.0                   
echo.  Credit : 
echo.           - Bjoern Kerler (QUALCOMM FIREHOSE ATTACKER SOURCE CODE)
echo.           - Hary sulteng  (GSM SULTENG)
echo.           - HadiK IT      (SOFTWARE ENGINEER)
echo.
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.***                             MAIN MENU                            ***
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo."||"------------------------------"||"------------------------------"||"
echo."||" +1. [        OPPO        ]   "||" +4.  [        XIAOMI       ] "||"
echo."||"------------------------------"||"------------------------------"||"
echo."||" +2. [       REALME       ]   "||" +5.  [       SAMSUNG       ] "||"
echo."||"------------------------------"||"------------------------------"||"
echo."||" +3. [        VIVO        ]   "||" +6.  [    INSTALL DRIVER   ] "||"
echo."||"------------------------------"||"------------------------------"||"

echo.+++++++++++++++++++++++++++[ Type 0 To Exit ]+++++++++++++++++++++++++++

echo.

set /p Select_MainMenu=Please Input Menu Number = 
IF '%Select_MainMenu%' == '%Select_MainMenu%' GOTO Brand_%Select_MainMenu%

:Brand_
GOTO MainMenu


:Brand_0
exit


:: {###################################################################### ::
:: ############################## OPPO MENU ############################## ::
:: ####################################################################### ::
:Brand_1
cls
echo.
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.***                             MENU OPPO                            ***
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo."||"------------------------------"||"------------------------------"||"
echo."||" +1. [OPPO A33  (CPH 2137)]   "||" +8.  [OPPO F19   (CPH 2219)] "||"
echo."||"------------------------------"||"------------------------------"||"
echo."||" +2. [OPPO A53  (CPH 2127)]   "||" +9.  [OPPO RENO4 (CPH 2113)] "||"
echo."||"------------------------------"||"------------------------------"||"
echo."||" +3. [OPPO A53s (CPH 2139)]   "||" +10. [OPPO RENO5 (CPH 2159)] "||"
echo."||"------------------------------"||"------------------------------"||"
echo."||" +4. [OPPO A73  (CPH 2099)]   "||" +11. [OPPO RENO6 (CPH 2235)] "||"
echo."||"------------------------------"||"------------------------------"||"
echo."||" +5. [OPPO A74  (CPH 2219)]   "||"      [                     ] "||"
echo."||"------------------------------"||"------------------------------"||"
echo."||" +6. [OPPO A95  (CPH 2365)]   "||"      [                     ] "||"
echo."||"------------------------------"||"------------------------------"||"
echo."||" +7. [OPPO F17  (CPH 2095)]   "||"      [                     ] "||"
echo."||"------------------------------"||"------------------------------"||"

echo.+++++++++++++++++++++++++++[ Type 0 To Back ]+++++++++++++++++++++++++++

echo.

echo.Warning !!!
echo.This Operation Will Erase Userdata and Remove Exsisting Data Account.
echo.We Can't Take Any Responsibillity If Your Device Damaged With This Tools.
echo.
set /p Select_Brand_1=Please Input Menu Number = 
IF '%Select_Brand_1%' == '%Select_Brand_1%' GOTO Oppo_%Select_Brand_1%
:Oppo_
GOTO Brand_1


:Oppo_0
GOTO MainMenu


:Oppo_1
cls
echo.
echo.Selected Model           : OPPO A33  (CPH 2137)
echo.Operation                : Factory Reset and Remove FRP
%~dp2DATA\sleep 10
for /f "tokens=2*" %%a in ('reg query HKLM\hardware\devicemap\SERIALCOMM /v \Device\*QCUSB* 2^>nul ^| find "REG_SZ" 2^>nul') do set "comPort=%%~b"

IF "%comPort%" == "" (GOTO :err_process_oppoa33) ELSE (GOTO :process_oppoa33) 

:err_process_oppoa33
echo.
echo.Error - QCUSB Port Not Detected!
echo.
pause
GOTO Brand_1

:process_oppoa33
echo.
echo.Autenticating Device     ...
%~dp2DATA\sleep 10
echo.Erasing FRP and Userdata.
echo.
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn -x %~dp2DATA\DEVICE\OPPO\A33(CPH2137)\patch.xml -memoryname emmc
echo.
echo.
echo.Rebooting Device...
%~dp2DATA\sleep 10
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn -x %~dp2DATA\POWER\boot.xml -memoryname emmc
echo.
echo Please Press Any Key To Continue...
pause
GOTO Brand_1


:Oppo_2
cls
echo.
echo.Selected Model           : OPPO A53  (CPH 2127)
echo.Operation                : Factory Reset and Remove FRP
%~dp2DATA\sleep 10
for /f "tokens=2*" %%a in ('reg query HKLM\hardware\devicemap\SERIALCOMM /v \Device\*QCUSB* 2^>nul ^| find "REG_SZ" 2^>nul') do set "comPort=%%~b"

IF "%comPort%" == "" (GOTO :err_process_oppoa53 ) ELSE (GOTO :process_oppoa53) 

:err_process_oppoa53
echo.
echo.Error - QCUSB Port Not Detected!
echo.
pause
GOTO Brand_1

:process_oppoa53
echo.
echo.Autenticating Device     ...
%~dp2DATA\sleep 10
echo.Erasing FRP and Userdata.
echo.
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn -x -x %~dp2DATA\DEVICE\OPPO\A53(CPH2127)\patch.xml -memoryname ufs
echo.
echo.
echo.Rebooting Device...
%~dp2DATA\sleep 10
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn -x %~dp2DATA\POWER\boot.xml -memoryname ufs
echo.
echo Please Press Any Key To Continue...
pause
GOTO Brand_1


:Oppo_3
cls
echo.
echo.Selected Model           : OPPO A53s (CPH 2139)
echo.Operation                : Factory Reset and Remove FRP
%~dp2DATA\sleep 10
for /f "tokens=2*" %%a in ('reg query HKLM\hardware\devicemap\SERIALCOMM /v \Device\*QCUSB* 2^>nul ^| find "REG_SZ" 2^>nul') do set "comPort=%%~b"

IF "%comPort%" == "" (GOTO :err_process_oppoa53s ) ELSE (GOTO :process_oppoa53s) 

:err_process_oppoa53s
echo.
echo.Error - QCUSB Port Not Detected!
echo.
pause
GOTO Brand_1

:process_oppoa53s
echo.
echo.Autenticating Device     ...
%~dp2DATA\sleep 10
echo.Erasing FRP and Userdata.
echo.
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn -x %~dp2DATA\DEVICE\OPPO\A53s(CPH2139)\patch.xml -memoryname emmc
echo.
echo.
echo.Rebooting Device...
%~dp2DATA\sleep 10
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn -x %~dp2DATA\POWER\boot.xml -memoryname emmc
echo.
echo Please Press Any Key To Continue...
pause
GOTO Brand_1


:Oppo_4
cls
echo.
echo.Selected Model           : OPPO A73 (CPH 2099)
echo.Operation                : Factory Reset and Remove FRP
%~dp2DATA\sleep 10
for /f "tokens=2*" %%a in ('reg query HKLM\hardware\devicemap\SERIALCOMM /v \Device\*QCUSB* 2^>nul ^| find "REG_SZ" 2^>nul') do set "comPort=%%~b"

IF "%comPort%" == "" (GOTO :err_process_oppoa73 ) ELSE (GOTO :process_oppoa73) 

:err_process_oppoa73
echo.
echo.Error - QCUSB Port Not Detected!
echo.
pause
GOTO Brand_1

:process_oppoa73
echo.
echo.Autenticating Device     ...
%~dp2DATA\sleep 10
echo.Erasing FRP and Userdata.
echo.
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn -x %~dp2DATA\DEVICE\OPPO\A73(CPH2099)\patch.xml -memoryname ufs
echo.
echo.
echo.Rebooting Device...
%~dp2DATA\sleep 10
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn -x %~dp2DATA\POWER\boot.xml -memoryname ufs
echo.
echo Please Press Any Key To Continue...
pause
GOTO Brand_1


:Oppo_5
cls
echo.
echo.Selected Model           : OPPO A74  (CPH 2219)
echo.Operation                : Factory Reset and Remove FRP
%~dp2DATA\sleep 10
for /f "tokens=2*" %%a in ('reg query HKLM\hardware\devicemap\SERIALCOMM /v \Device\*QCUSB* 2^>nul ^| find "REG_SZ" 2^>nul') do set "comPort=%%~b"

IF "%comPort%" == "" (GOTO :err_process_oppoa73 ) ELSE (GOTO :process_oppoa73) 

:err_process_oppoa74
echo.
echo.Error - QCUSB Port Not Detected!
echo.
pause
GOTO Brand_1

:process_oppoa74
echo.
echo.Autenticating Device     ...
%~dp2DATA\sleep 10
echo.Erasing FRP and Userdata.
echo.
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn -x %~dp2DATA\DEVICE\OPPO\A74(CPH2219)\patch.xml -memoryname ufs
echo.
echo.
echo.Rebooting Device...
%~dp2DATA\sleep 10
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn -x %~dp2DATA\POWER\boot.xml -memoryname ufs
echo.
echo Please Press Any Key To Continue...
pause
GOTO Brand_1


:Oppo_6
cls
echo.
echo.Selected Model           : OPPO A95  (CPH 2365)
echo.Operation                : Factory Reset and Remove FRP
%~dp2DATA\sleep 10
for /f "tokens=2*" %%a in ('reg query HKLM\hardware\devicemap\SERIALCOMM /v \Device\*QCUSB* 2^>nul ^| find "REG_SZ" 2^>nul') do set "comPort=%%~b"

IF "%comPort%" == "" (GOTO :err_process_oppoa95 ) ELSE (GOTO :process_oppoa95) 

:err_process_oppoa95
echo.
echo.Error - QCUSB Port Not Detected!
echo.
pause
GOTO Brand_1

:process_oppoa95
echo.
echo.Autenticating Device     ...
%~dp2DATA\sleep 10
echo.Erasing FRP and Userdata.
echo.
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn -x %~dp2DATA\DEVICE\OPPO\A95(CPH2365)\patch.xml -memoryname ufs
echo.
echo.
echo.Rebooting Device...
%~dp2DATA\sleep 10
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn -x %~dp2DATA\POWER\boot.xml -memoryname ufs
echo.
echo Please Press Any Key To Continue...
pause
GOTO Brand_1


:Oppo_7
cls
echo.
echo.Selected Model           : OPPO F17  (CPH 2095)
echo.Operation                : Factory Reset and Remove FRP
%~dp2DATA\sleep 10
for /f "tokens=2*" %%a in ('reg query HKLM\hardware\devicemap\SERIALCOMM /v \Device\*QCUSB* 2^>nul ^| find "REG_SZ" 2^>nul') do set "comPort=%%~b"

IF "%comPort%" == "" (GOTO :err_process_oppof17 ) ELSE (GOTO :process_oppof17) 

:err_process_oppof17
echo.
echo.Error - QCUSB Port Not Detected!
echo.
pause
GOTO Brand_1

:process_oppof17
echo.
echo.Autenticating Device     ...
%~dp2DATA\sleep 10
echo.Erasing FRP and Userdata.
echo.
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn -x %~dp2DATA\DEVICE\OPPO\F17(CPH2095)\patch.xml -memoryname ufs
echo.
echo.
echo.Rebooting Device...
%~dp2DATA\sleep 10
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn -x %~dp2DATA\POWER\boot.xml -memoryname ufs
echo.
echo Please Press Any Key To Continue...
pause
GOTO Brand_1


:Oppo_8
cls
echo.
echo.Selected Model           : OPPO F19  (CPH 2219)
echo.Operation                : Factory Reset and Remove FRP
%~dp2DATA\sleep 10
for /f "tokens=2*" %%a in ('reg query HKLM\hardware\devicemap\SERIALCOMM /v \Device\*QCUSB* 2^>nul ^| find "REG_SZ" 2^>nul') do set "comPort=%%~b"

IF "%comPort%" == "" (GOTO :err_process_oppof19 ) ELSE (GOTO :process_oppof19) 

:err_process_oppof19
echo.
echo.Error - QCUSB Port Not Detected!
echo.
pause
GOTO Brand_1

:process_oppof19
echo.
echo.Autenticating Device     ...
%~dp2DATA\sleep 10
echo.Erasing FRP and Userdata.
echo.
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn -x %~dp2DATA\DEVICE\OPPO\F19(CPH2219)\patch.xml -memoryname ufs
echo.
echo.
echo.Rebooting Device...
%~dp2DATA\sleep 10
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn -x %~dp2DATA\POWER\boot.xml -memoryname ufs
echo.
echo Please Press Any Key To Continue...
pause
GOTO Brand_1


:Oppo_9
cls
echo.
echo.Selected Model           : OPPO RENO4  (CPH 2113)
echo.Operation                : Factory Reset and Remove FRP
%~dp2DATA\sleep 10
for /f "tokens=2*" %%a in ('reg query HKLM\hardware\devicemap\SERIALCOMM /v \Device\*QCUSB* 2^>nul ^| find "REG_SZ" 2^>nul') do set "comPort=%%~b"

IF "%comPort%" == "" (GOTO :err_process_opporeno4 ) ELSE (GOTO :process_opporeno4) 

:err_process_opporeno4
echo.
echo.Error - QCUSB Port Not Detected!
echo.
pause
GOTO Brand_1

:process_opporeno4
echo.
echo.Autenticating Device     ...
%~dp2DATA\sleep 10
echo.Erasing FRP and Userdata.
echo.
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v2.mbn -x %~dp2DATA\DEVICE\OPPO\RENO4(CPH2113)\patch.xml -memoryname ufs
echo.
echo.
echo.Rebooting Device...
%~dp2DATA\sleep 10
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v2.mbn -x %~dp2DATA\POWER\boot.xml -memoryname ufs
echo.
echo Please Press Any Key To Continue...
pause
GOTO Brand_1


:Oppo_10
cls
echo.
echo.Selected Model           : OPPO RENO5  (CPH 2159)
echo.Operation                : Factory Reset and Remove FRP
%~dp2DATA\sleep 10
for /f "tokens=2*" %%a in ('reg query HKLM\hardware\devicemap\SERIALCOMM /v \Device\*QCUSB* 2^>nul ^| find "REG_SZ" 2^>nul') do set "comPort=%%~b"

IF "%comPort%" == "" (GOTO :err_process_opporeno5 ) ELSE (GOTO :process_opporeno5) 

:err_process_opporeno5
echo.
echo.Error - QCUSB Port Not Detected!
echo.
pause
GOTO Brand_1

:process_opporeno5
echo.
echo.Autenticating Device     ...
%~dp2DATA\sleep 10
echo.Erasing FRP and Userdata.
echo.
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v2.mbn -x %~dp2DATA\DEVICE\OPPO\RENO5(CPH2159)\patch.xml -memoryname ufs
echo.
echo.
echo.Rebooting Device...
%~dp2DATA\sleep 10
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v2.mbn -x %~dp2DATA\POWER\boot.xml -memoryname ufs
echo.
echo Please Press Any Key To Continue...
pause
GOTO Brand_1


:Oppo_11
cls
echo.
echo.Selected Model           : OPPO RENO6  (CPH 2235)
echo.Operation                : Factory Reset and Remove FRP
%~dp2DATA\sleep 10
for /f "tokens=2*" %%a in ('reg query HKLM\hardware\devicemap\SERIALCOMM /v \Device\*QCUSB* 2^>nul ^| find "REG_SZ" 2^>nul') do set "comPort=%%~b"

IF "%comPort%" == "" (GOTO :err_process_opporeno5 ) ELSE (GOTO :process_opporeno5) 

:err_process_opporeno6
echo.
echo.Error - QCUSB Port Not Detected!
echo.
pause
GOTO Brand_1

:process_opporeno6
echo.
echo.Autenticating Device     ...
%~dp2DATA\sleep 10
echo.Erasing FRP and Userdata.
echo.
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v2.mbn -x %~dp2DATA\DEVICE\OPPO\RENO6(CPH2235)\patch.xml -memoryname ufs
echo.
echo.
echo.Rebooting Device...
%~dp2DATA\sleep 10
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v2.mbn -x %~dp2DATA\POWER\boot.xml -memoryname ufs
echo.
echo Please Press Any Key To Continue...
pause
GOTO Brand_1

:: ####################################################################### ::
:: ############################## OPPO MENU ############################## ::
:: ######################################################################} ::




































:: {###################################################################### ::
:: ############################# REALME MENU ############################# ::
:: ####################################################################### ::
:Brand_2

cls
echo.
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.***                            MENU REALME                           ***
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo."||"------------------------------"||"------------------------------"||"
echo."||" +1. [REALME  7i  (RMX 2103)] "||" +3. [REALME C17  (RMX 2101)] "||"
echo."||"------------------------------"||"------------------------------"||"
echo."||" +2. [REALME C15  (RMX 2195)] "||" +4. [REALME 8PRO (RMX 3091)] "||"
echo."||"------------------------------"||"------------------------------"||"

echo.+++++++++++++++++++++++++++[ Type 0 To Back ]+++++++++++++++++++++++++++

echo.

echo.Warning !!!
echo.This Operation Will Erase Userdata and Exsisting Data Account.
echo.We Can't Take Any Responsibillity If Your Device Damaged With This Tools.
echo.
set /p Select_Brand_2=Please Input Menu Number = 
IF '%Select_Brand_2%' == '%Select_Brand_2%' GOTO Realme_%Select_Brand_2%


:Realme_
GOTO Brand_2


:Realme_0
GOTO MainMenu

:Realme_1
cls
echo.
echo.Selected Model           : REALME 7i (RMX 2103)
echo.Operation                : Factory Reset and Remove FRP
%~dp2DATA\sleep 10
for /f "tokens=2*" %%a in ('reg query HKLM\hardware\devicemap\SERIALCOMM /v \Device\*QCUSB* 2^>nul ^| find "REG_SZ" 2^>nul') do set "comPort=%%~b"

IF "%comPort%" == "" (GOTO :err_process_realme7i ) ELSE (GOTO :process_realme7i) 

:err_process_realme7i
echo.
echo.Error - QCUSB Port Not Detected!
echo.
pause
GOTO Brand_2

:process_realme7i
echo.
echo.Autenticating Device     ...
%~dp2DATA\sleep 10
echo.Erasing FRP and Userdata.
echo.
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn -x %~dp2DATA\DEVICE\REALME\7i(RMX2103)\patch.xml -memoryname ufs
echo.
echo.
echo.Rebooting Device...
%~dp2DATA\sleep 10
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn -x %~dp2DATA\POWER\boot.xml -memoryname ufs
echo.
echo Please Press Any Key To Continue...
pause
GOTO Brand_2


:Realme_2
cls
echo.
echo.Selected Model           : REALME C15 (RMX 2195)
echo.Operation                : Factory Reset and Remove FRP
%~dp2DATA\sleep 10
for /f "tokens=2*" %%a in ('reg query HKLM\hardware\devicemap\SERIALCOMM /v \Device\*QCUSB* 2^>nul ^| find "REG_SZ" 2^>nul') do set "comPort=%%~b"

IF "%comPort%" == "" (GOTO :err_process_realme7i ) ELSE (GOTO :process_realme7i) 

:err_process_realmec15
echo.
echo.Error - QCUSB Port Not Detected!
echo.
pause
GOTO Brand_2

:process_realmec15
echo.
echo.Autenticating Device     ...
%~dp2DATA\sleep 10
echo.Erasing FRP and Userdata.
echo.
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn -x %~dp2DATA\DEVICE\REALME\C15(RMX2195)\patch.xml -memoryname emmc
echo.
echo.
echo.Rebooting Device...
%~dp2DATA\sleep 10
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn -x %~dp2DATA\POWER\boot.xml -memoryname emmc
echo.
echo Please Press Any Key To Continue...
pause
GOTO Brand_2


:Realme_3
cls
echo.
echo.Selected Model           : REALME C17 (RMX 2101)
echo.Operation                : Factory Reset and Remove FRP
%~dp2DATA\sleep 10
for /f "tokens=2*" %%a in ('reg query HKLM\hardware\devicemap\SERIALCOMM /v \Device\*QCUSB* 2^>nul ^| find "REG_SZ" 2^>nul') do set "comPort=%%~b"

IF "%comPort%" == "" (GOTO :err_process_realme7i ) ELSE (GOTO :process_realme7i) 

:err_process_realmec15
echo.
echo.Error - QCUSB Port Not Detected!
echo.
pause
GOTO Brand_2

:process_realmec15
echo.
echo.Autenticating Device     ...
%~dp2DATA\sleep 10
echo.Erasing FRP and Userdata.
echo.
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn -x %~dp2DATA\DEVICE\REALME\C17(RMX2101)\patch.xml -memoryname ufs
echo.
echo.
echo.Rebooting Device...
%~dp2DATA\sleep 10
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v1.mbn -x %~dp2DATA\POWER\boot.xml -memoryname ufs
echo.
echo Please Press Any Key To Continue...
pause
GOTO Brand_2


:Realme_4
cls
echo.
echo.Selected Model           : REALME 8PRO (RMX 3091)
echo.Operation                : Factory Reset and Remove FRP
%~dp2DATA\sleep 10
for /f "tokens=2*" %%a in ('reg query HKLM\hardware\devicemap\SERIALCOMM /v \Device\*QCUSB* 2^>nul ^| find "REG_SZ" 2^>nul') do set "comPort=%%~b"

IF "%comPort%" == "" (GOTO :err_process_realme8pro ) ELSE (GOTO :process_realme8pro) 

:err_process_realme8pro
echo.
echo.Error - QCUSB Port Not Detected!
echo.
pause
GOTO Brand_2

:process_realme8pro
echo.
echo.Autenticating Device     ...
%~dp2DATA\sleep 10
echo.Erasing FRP and Userdata.
echo.
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v2.mbn -x %~dp2DATA\DEVICE\REALME\8PRO(RMX3091)\patch.xml -memoryname ufs
echo.
echo.
echo.Rebooting Device...
%~dp2DATA\sleep 10
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\OPPO\prog_firehose_ddr_oppo_v2.mbn -x %~dp2DATA\POWER\boot.xml -memoryname ufs
echo.
echo Please Press Any Key To Continue...
pause
GOTO Brand_2


:: ####################################################################### ::
:: ############################# REALME MENU ############################# ::
:: ######################################################################} ::




































:: {###################################################################### ::
:: ############################## VIVO MENU ############################## ::
:: ####################################################################### ::
:Brand_3

cls
echo.
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.***                            MENU  VIVO                            ***
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo."||"------------------------------"||"------------------------------"||"
echo."||" +   [                     ]  "||" +   [                     ]  "||"
echo."||"------------------------------"||"------------------------------"||"
echo."||" +   [                     ]  "||" +   [                     ]  "||"
echo."||"------------------------------"||"------------------------------"||"

echo.+++++++++++++++++++++++++++[ Type 0 To Back ]+++++++++++++++++++++++++++

echo.

echo.Warning !!!
echo.This Operation Will Erase Userdata and Exsisting Data Account.
echo.We Can't Take Any Responsibillity If Your Device Damaged With This Tools.
echo.
set /p Select_Brand_3=Please Input Menu Number = 
IF '%Select_Brand_3%' == '%Select_Brand_3%' GOTO Vivo_%Select_Brand_3%


:Vivo_
GOTO Brand_3


:Vivo_0
GOTO MainMenu



:: ####################################################################### ::
:: ############################## VIVO MENU ############################## ::
:: ######################################################################} ::





































:: {###################################################################### ::
:: ############################# XIAOMI MENU ############################# ::
:: ####################################################################### ::
:Brand_4

cls
echo.
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.***                           MENU  XIAOMI                           ***
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo."||"------------------------------"||"------------------------------"||"
echo."||" +   [                     ]  "||" +   [                     ]  "||"
echo."||"------------------------------"||"------------------------------"||"
echo."||" +   [                     ]  "||" +   [                     ]  "||"
echo."||"------------------------------"||"------------------------------"||"

echo.+++++++++++++++++++++++++++[ Type 0 To Back ]+++++++++++++++++++++++++++

echo.

echo.Warning !!!
echo.This Operation Will Erase Userdata and Exsisting Data Account.
echo.We Can't Take Any Responsibillity If Your Device Damaged With This Tools.
echo.
set /p Select_Brand_4=Please Input Menu Number = 
IF '%Select_Brand_4%' == '%Select_Brand_4%' GOTO Xiaomi_%Select_Brand_4%

:Xiaomi_
GOTO Brand_4


:Xiaomi_0
GOTO MainMenu



:: ####################################################################### ::
:: ############################# XIAOMI MENU ############################# ::
:: ######################################################################} ::

:: {###################################################################### ::
:: ############################# MENU SAMSUNG ############################ ::
:: ####################################################################### ::
:Brand_5

cls
echo.
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.***                           MENU SAMSUNG                           ***
echo.++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo."||"------------------------------"||"------------------------------"||"
echo."||" +1. [   SAMSUNG SM-A115F   ] "||" +10. [   SAMSUNG SM-A015M  ] "||"
echo."||"------------------------------"||"------------------------------"||"
echo."||" +2. [   SAMSUNG SM-A115M   ] "||" +11. [   SAMSUNG SM-A015T  ] "||"
echo."||"------------------------------"||"------------------------------"||"
echo."||" +3. [   SAMSUNG SM-A115U1  ] "||" +12. [  SAMSUNG SM-A015T1  ] "||"
echo."||"------------------------------"||"------------------------------"||"
echo."||" +4. [   SAMSUNG SM-M115F   ] "||" +13. [   SAMSUNG SM-A015U  ] "||"
echo."||"------------------------------"||"------------------------------"||"
echo."||" +5. [   SAMSUNG SM-A705F   ] "||" +14. [   SAMSUNG SM-A015U1 ] "||"
echo."||"------------------------------"||"------------------------------"||"
echo."||" +6. [   SAMSUNG SM-A015A   ] "||" +15. [   SAMSUNG SM-A015V  ] "||"
echo."||"------------------------------"||"------------------------------"||"
echo."||" +7. [   SAMSUNG SM-A015AZ  ] "||" +16. [   SAMSUNG SM-A025F  ] "||"
echo."||"------------------------------"||"------------------------------"||"
echo."||" +8. [   SAMSUNG SM-A015F   ] "||" +17. [   SAMSUNG SM-A025G  ] "||"
echo."||"------------------------------"||"------------------------------"||"
echo."||" +9. [   SAMSUNG SM-A015G   ] "||" +18. [   SAMSUNG SM-A025M  ] "||"
echo."||"------------------------------"||"------------------------------"||"

echo.+++++++++++++++++++++++++++[ Type 0 To Back ]+++++++++++++++++++++++++++

echo.

echo.Warning !!!
echo.This Operation Will Erase Userdata and Exsisting Data Account.
echo.We Can't Take Any Responsibillity If Your Device Damaged With This Tools.
echo.
set /p Select_Brand_5=Please Input Menu Number = 
IF '%Select_Brand_5%' == '%Select_Brand_5%' GOTO Samsung_%Select_Brand_5%

:Samsung_
GOTO Brand_5


:Samsung_0
GOTO MainMenu


:Samsung_1
cls
echo.
echo.Selected Model           : SAMSUNG GALAXY A11 SM-A115F 
echo.Operation                : Factory Reset and Remove FRP
%~dp2DATA\sleep 10
for /f "tokens=2*" %%a in ('reg query HKLM\hardware\devicemap\SERIALCOMM /v \Device\*QCUSB* 2^>nul ^| find "REG_SZ" 2^>nul') do set "comPort=%%~b"

IF "%comPort%" == "" (GOTO :err_process_A115F ) ELSE (GOTO :process_A115F) 

:err_process_A115F
echo.
echo.Error - QCUSB Port Not Detected!
echo.
pause
GOTO Brand_5

:process_A115F
echo.
echo.Autenticating Device     ...
%~dp2DATA\sleep 10
echo.Erasing FRP and Userdata.
echo.
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\SAMSUNG\prog_emmc_firehose_8953_A11_ddr.mbn -e persistent
echo.
echo.
%~dp2DATA\sleep 10
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\SAMSUNG\prog_emmc_firehose_8953_A11_ddr.mbn -e userdata
echo.
echo.
echo.Rebooting Device...
%~dp2DATA\sleep 10
%~dp2DATA\emmcdl -p %comPort% -f %~dp2DATA\LOADER\SAMSUNG\prog_emmc_firehose_8953_A11_ddr.mbn -x %~dp2DATA\POWER\boot.xml -memoryname emmc
echo.
echo Please Press Any Key To Continue...
pause
GOTO Brand_5


:: ####################################################################### ::
:: ############################# XIAOMI MENU ############################# ::
:: ######################################################################} ::



































:: {###################################################################### ::
:: ############################ INSTALL DRIVER ########################### ::
:: ####################################################################### ::
:Brand_6

IF DEFINED programfiles(x86) GOTO x64

:x86
ECHO Installing 32-bit driver ...
ECHO Please continue driver installation ...
%~dp2DATA\sleep 10
START /wait %~dp2DATA\DRIVER\QDLoader_HS-USB_x86 /f
GOTO FINISH
:x64
ECHO Installing 64-bit driver ...
ECHO Please continue driver installation ...
%~dp2DATA\sleep 10
START /wait %~dp2DATA\DRIVER\QDLoader_HS-USB_x64 /f
:FINISH
ECHO.
ECHO.
ECHO SUCCESSFULY....
%~dp2DATA\sleep 5
GOTO MainMenu
:: ####################################################################### ::
:: ############################ INSTALL DRIVER ########################### ::
:: ######################################################################} ::