@echo off
:: Set-Up Controllers - > Models
set Menu=%menu_vivo%
set Devices=VIVO
set totalpages=3

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
set Loader=%ldr_vivo%\prog_firehose_ddr_vivo_v1.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=VIVO V9 Youth PD1730BF
set Loader=%ldr_vivo%\prog_firehose_ddr_vivo_v1.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=VIVO V11 PRO PD1814F
set Loader=%ldr_vivo%\prog_firehose_ddr_vivo_v1.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=VIVO Y91 Y91i PD1818F
set Loader=%ldr_vivo%\prog_firehose_ddr_vivo_v1.mbn
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
Call %button%  5 12 "VIVO   Y53/L (PD1628F)" 42 12 "VIVO   Y65  (PD1621BF)" 5 15 "VIVO Y71 (PD1818EF)   " 42 15 "VIVO  Y55/L  (PD1613F)" 19 18 "    BACK    "  38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.%msgw1%
echo.%msgw2%
%getinput% /m %Press% /h 72


:: Check for the pressed button 
if %errorlevel%==1 (

:: Set-Up Device Configuration
set Model=VIVO Y53/L PD1628F
set Loader=%ldr_vivo%\prog_emmc_firehose_8917_ddr_vivo_y53_y53l.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=VIVO Y65 PD1621BF
set Loader=%ldr_vivo%\prog_emmc_firehose_8917_ddr_vivo_y65.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=VIVO Y71 PD1818EF
set Loader=%ldr_vivo%\prog_emmc_firehose_8917_ddr_vivo_y71.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=VIVO Y51 Y51L PD1613F
set Loader=%ldr_vivo%\prog_emmc_firehose_8937_ddr_vivo_y55-y55l_pd1613f.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==5 goto Menu_Vivo_1
if %errorlevel%==6 goto Menu_Vivo_3
goto Menu_Vivo_2




:Menu_Vivo_3
cls
set dialog=***                  V I V O    P A G E   3  OF  %totalpages%                  ***
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
set Loader=%ldr_vivo%\prog_firehose_ddr_vivo_v1.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=VIVO Y95 PD1818F
set Loader=%ldr_vivo%\prog_firehose_ddr_vivo_v1.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==3 goto Menu_Vivo_2
if %errorlevel%==4 goto Commingsoon
goto Menu_Vivo_3


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

