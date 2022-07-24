@echo off
:: Set-Up Controllers - > Models
set Menu=%menu_realme%
set Devices=%process-realme%
set totalpages=1

:: {###################################################################### ::
:: ############################# REALME MENU ############################# ::
:: ####################################################################### ::
:Menu_Realme
cls
set dialog=***               R E A L M E   P A G E   1  OF  %totalpages%                  ***
call %page%
Call %button%  5 12 "REALME C15 (RMX 2195)" 42 12 "REALME C17 (RMX 2101) " 5 15 "REALME 7i (RMX 2103) " 42 15 "REALME 8PRO (RMX 3091)" 19 18 "    BACK    " 38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.%msgw1%
echo.%msgw2%
%getinput% /m %Press% /h 72


:: Check for the pressed button 
if %errorlevel%==1 (

:: Set-Up Device Configuration
set Model=REALME C15 RMX 2195
set Loader=%ldr_realme%\prog_firehose_ddr_realme_v1.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=REALME C17 RMX 2101
set Loader=%ldr_realme%\prog_firehose_ddr_realme_v1.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=REALME 7i RMX 2103
set Loader=%ldr_realme%\prog_firehose_ddr_realme_v1.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=REALME 8PRO RMX 3091
set Loader=%ldr_realme%\prog_firehose_ddr_realme_v1.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==5 call %main%
if %errorlevel%==6 goto Commingsoon


:Commingsoon
cls
set dialog=***                                                                 ***
call %page%
echo.
echo.
echo.
echo.                      C  O  M  I  N  G  S  O  O  N
echo.
echo.          C  L  I  C  K      T  O      C  O  N  T  I  N  U  E

%getinput% /m %Press% /h 72
goto Menu_Realme
