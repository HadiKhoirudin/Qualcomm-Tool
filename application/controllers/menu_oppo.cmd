@echo off
:: Set-Up Controllers - > Models
set Menu=%menu_oppo%
set Devices=%process-oppo%
set totalpages=3

:: {###################################################################### ::
:: ############################## OPPO MENU ############################## ::
:: ####################################################################### ::

:Menu_Oppo_1
cls
set dialog=***                  O P P O    P A G E   1  OF  %totalpages%                  ***
call %page%
Call %button%  5 12 "OPPO A33 (CPH 2137) " 42 12 "OPPO A53 (CPH 2127)" 5 15 "OPPO A53s (CPH 2139)" 42 15 "OPPO A73 (CPH 2099)" 19 18 "    BACK    "  38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.%msgw1%
echo.%msgw2%
%getinput% /m %Press% /h 72
echo.


:: Check for the pressed button 
if %errorlevel%==1 (

:: Set-Up Device Configuration
set Model=OPPO A33 CPH 2137
set Loader=%ldr_oppo%\prog_firehose_ddr_oppo_v1.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=OPPO A53 CPH 2127
set Loader=%ldr_oppo%\prog_firehose_ddr_oppo_v1.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=OPPO A53s CPH 2139
set Loader=%ldr_oppo%\prog_firehose_ddr_oppo_v1.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=OPPO A73 CPH 2099
set Loader=%ldr_oppo%\prog_firehose_ddr_oppo_v1.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==5 call %main%
if %errorlevel%==6 goto Menu_Oppo_2
goto Menu_Oppo_1

:Menu_Oppo_2
cls
set dialog=***                  O P P O    P A G E   2  OF  %totalpages%                  ***
call %page%
Call %button%  5 12 "OPPO A74 (CPH 2219)" 42 12 "OPPO A95 (CPH 2365)" 5 15 "OPPO F17 (CPH 2095)" 42 15 "OPPO F19 (CPH 2219)" 19 18 "    BACK    "  38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.%msgw1%
echo.%msgw2%
%getinput% /m %Press% /h 72

:: Check for the pressed button 
echo.
if %errorlevel%==1 (

:: Set-Up Device Configuration
set Model=OPPO A74 CPH 2219
set Loader=%ldr_oppo%\prog_firehose_ddr_oppo_v1.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=OPPO A95 CPH 2365
set Loader=%ldr_oppo%\prog_firehose_ddr_oppo_v1.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=OPPO F17 CPH 2095
set Loader=%ldr_oppo%\prog_firehose_ddr_oppo_v1.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=OPPO F19 CPH 2219
set Loader=%ldr_oppo%\prog_firehose_ddr_oppo_v1.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==5 goto Menu_Oppo_1
if %errorlevel%==6 goto Menu_Oppo_3
goto Menu_Oppo_2


:Menu_Oppo_3
cls
set dialog=***                  O P P O    P A G E   3  OF  %totalpages%                  ***
call %page%
Call %button%  5 12 "OPPO RENO4 (CPH 2113)" 42 12 "OPPO RENO5 (CPH 2159)" 5 15 "OPPO RENO6 (CPH 2235)" 19 18 "    BACK    " 38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.%msgw1%
echo.%msgw2%
%getinput% /m %Press% /h 72

:: Check for the pressed button 
echo.
if %errorlevel%==1 (

:: Set-Up Device Configuration
set Model=OPPO RENO4 CPH 2113
set Loader=%ldr_oppo%\prog_firehose_ddr_oppo_v2.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=OPPO RENO5 CPH 2159
set Loader=%ldr_oppo%\prog_firehose_ddr_oppo_v2.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=OPPO RENO6 CPH 2235
set Loader=%ldr_oppo%\prog_firehose_ddr_oppo_v2.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==4 goto Menu_Oppo_2
if %errorlevel%==5 goto Commingsoon
goto Menu_Oppo_3


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
goto Menu_Oppo_1

:: ####################################################################### ::
:: ############################## OPPO MENU ############################## ::
:: ######################################################################} ::
