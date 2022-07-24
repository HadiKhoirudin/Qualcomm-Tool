@echo off
:: Set-Up Controllers - > Models
set Menu=%menu_vivo%
set Devices=%process-vivo%
set totalpages=2

:: {###################################################################### ::
:: ############################## VIVO MENU ############################## ::
:: ####################################################################### ::
:Menu_Vivo_1
cls
set dialog=***                  V I V O    P A G E   1  OF  %totalpages%                  ***
call %page%
Call %button%  5 12 "VIVO   V9 (PD1730F)   " 42 12 "VIVO V9 Yth (PD1730BF)" 5 15 "VIVO V11 PRO (PD1814F)" 42 15 "VIVO  Y91/i  (PD1818F)" 19 18 "    BACK    "  38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.%msgw1%
echo.%msgw2%
%getinput% /m %Press% /h 72


:: Check for the pressed button 
if %errorlevel%==1 (

:: Set-Up Device Configuration
set Model=VIVO V9 PD1730F
set Loader=%ldr_realme%\prog_firehose_ddr_realme_v1.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=VIVO V9 Youth PD1730BF
set Loader=%ldr_realme%\prog_firehose_ddr_realme_v1.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=VIVO V11 PRO PD1814F
set Loader=%ldr_realme%\prog_firehose_ddr_realme_v1.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=VIVO Y91 Y91i PD1818F
set Loader=%ldr_realme%\prog_firehose_ddr_realme_v1.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==5 call %main%
if %errorlevel%==6 goto Menu_Vivo_2
goto Menu_Vivo_1

:Menu_Vivo_2
cls
set dialog=***                  V I V O    P A G E   2  OF  %totalpages%                  ***
call %page%
Call %button%  7 12 "VIVO Y93 (PD1818F)" 42 12 "VIVO Y95 (PD1818F)" 19 18 "    BACK    " 38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.%msgw1%
echo.%msgw2%
%getinput% /m %Press% /h 72


:: Check for the pressed button 
if %errorlevel%==1 (

:: Set-Up Device Configuration
set Model=VIVO Y93 PD1818F
set Loader=%ldr_realme%\prog_firehose_ddr_realme_v1.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=VIVO Y95 PD1818F
set Loader=%ldr_realme%\prog_firehose_ddr_realme_v1.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==3 goto Menu_Vivo_1
if %errorlevel%==4 goto Commingsoon
goto Menu_Vivo_2


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
goto Menu_Vivo_1
