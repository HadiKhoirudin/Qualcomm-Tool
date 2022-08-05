@echo off
:: Set-Up Controllers - > Models
set Menu=%menu_oppo%
set Devices=OPPO
set totalpages=4

:: {###################################################################### ::
:: ############################## OPPO MENU ############################## ::
:: ####################################################################### ::

:Menu_Oppo_1
set dialog=***                  O P P O    P A G E   1  OF  %totalpages%                  ***
call %page%
call %box%
Call %button%  5 12 "OPPO A33 (CPH 2137) " 43 12 "OPPO A53 (CPH 2127) " 5 15 "OPPO A53s (CPH 2139)" 43 15 "OPPO A73 (CPH 2099) " 19 18 "    BACK    "  38 18 "    NEXT    " # Press
echo.
echo.
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
set Loader=%ldr_oppo%\prog_firehose_ddr_Oppo_A33_A53_A53s.elf
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=OPPO A53 CPH 2127
set Loader=%ldr_oppo%\prog_firehose_ddr_Oppo_A33_A53_A53s.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=OPPO A53s CPH 2139
set Loader=%ldr_oppo%\prog_firehose_ddr_Oppo_A33_A53_A53s.elf
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=OPPO A73 CPH 2099
set Loader=%ldr_oppo%\prog_firehose_ddr_Oppo_Reno4NewSec2021CPH2113_Reno4ProCPH2109_Reno5CPH2159_Reno4G_Reno6CPH2235.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==5 call %main%
if %errorlevel%==6 goto Menu_Oppo_2
goto Menu_Oppo_1

:Menu_Oppo_2
set dialog=***                  O P P O    P A G E   2  OF  %totalpages%                  ***
call %page%
call %box%
Call %button%  5 12 "OPPO A74 (CPH 2219)" 44 12 "OPPO A76 (CPH 2375)" 5 15 "OPPO A95 (CPH 2365)" 44 15 "OPPO F17 (CPH 2095)" 19 18 "    BACK    "  38 18 "    NEXT    " # Press
echo.
echo.
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
set Loader=%ldr_oppo%\prog_firehose_ddr_Oppo_Reno4NewSec2021CPH2113_Reno4ProCPH2109_Reno5CPH2159_Reno4G_Reno6CPH2235.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=OPPO A76 CPH 2375
set Loader=%ldr_oppo%\prog_firehose_ddr_Oppo_Reno4NewSec2021CPH2113_Reno4ProCPH2109_Reno5CPH2159_Reno4G_Reno6CPH2235.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=OPPO A95 CPH 2365
set Loader=%ldr_oppo%\prog_firehose_ddr_Oppo_Reno4NewSec2021CPH2113_Reno4ProCPH2109_Reno5CPH2159_Reno4G_Reno6CPH2235.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=OPPO F17 CPH 2095
set Loader=%ldr_oppo%\prog_firehose_ddr_Oppo_Reno4NewSec2021CPH2113_Reno4ProCPH2109_Reno5CPH2159_Reno4G_Reno6CPH2235.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==5 goto Menu_Oppo_1
if %errorlevel%==6 goto Menu_Oppo_3
goto Menu_Oppo_2


:Menu_Oppo_3
set dialog=***                  O P P O    P A G E   3  OF  %totalpages%                  ***
call %page%
call %box%
Call %button%  5 12 "OPPO F19 (CPH 2219)     " 39 12 "OPPO F21 PRO (CPH 2219) " 5 15 "OPPO RENO 4 OLD SEC 2019" 39 15 "OPPO RENO 4 NEW SEC 2021" 19 18 "    BACK    "  38 18 "    NEXT    " # Press
echo.
echo.
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
set Model=OPPO F19 CPH 2219
set Loader=%ldr_oppo%\prog_firehose_ddr_Oppo_Reno4NewSec2021CPH2113_Reno4ProCPH2109_Reno5CPH2159_Reno4G_Reno6CPH2235.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=OPPO F21 PRO CPH 2363
set Loader=%ldr_oppo%\prog_firehose_ddr_Oppo_Reno4NewSec2021CPH2113_Reno4ProCPH2109_Reno5CPH2159_Reno4G_Reno6CPH2235.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=OPPO RENO 4 OLD SEC 2019 CPH 2113
set Loader=%ldr_oppo%\prog_firehose_ddr_OppoReno4OldSec2019.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=OPPO RENO 4 NEW SEC 2021 CPH 2113
set Loader=%ldr_oppo%\prog_firehose_ddr_Oppo_Reno4NewSec2021CPH2113_Reno4ProCPH2109_Reno5CPH2159_Reno4G_Reno6CPH2235.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==5 goto Menu_Oppo_2
if %errorlevel%==6 goto Menu_Oppo_4
goto Menu_Oppo_3



:Menu_Oppo_4
set dialog=***                  O P P O    P A G E   4  OF  %totalpages%                  ***
call %page%
call %box%
Call %button%  5 12 "OPPO RENO 4 PRO (CPH2109)" 41 12 "OPPO RENO 5 (CPH2159) " 5 15 "OPPO RENO 6     (CPH2235)" 41 15 "OPPO RENO 7 (CPH2363) " 19 18 "    BACK    "  38 18 "    NEXT    " # Press
echo.
echo.
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
set Model=OPPO RENO 4 PRO CPH 2109
set Loader=%ldr_oppo%\prog_firehose_ddr_Oppo_Reno4NewSec2021CPH2113_Reno4ProCPH2109_Reno5CPH2159_Reno4G_Reno6CPH2235.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=OPPO RENO 5 CPH 2159
set Loader=%ldr_oppo%\prog_firehose_ddr_Oppo_Reno4NewSec2021CPH2113_Reno4ProCPH2109_Reno5CPH2159_Reno4G_Reno6CPH2235.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=OPPO RENO 6 CPH 2235
set Loader=%ldr_oppo%\prog_firehose_ddr_Oppo_Reno4NewSec2021CPH2113_Reno4ProCPH2109_Reno5CPH2159_Reno4G_Reno6CPH2235.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=OPPO RENO 7 CPH 2363
set Loader=%ldr_oppo%\prog_firehose_ddr_OppoReno7CPH2363_OppoA73CPH2099_OppoA74CPH2119_OppoA76CPH2375_OppoA95CPH2365_OppoF17CPH2095_OppoF19CPH2219_OppoF21PRO.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==5 goto Menu_Oppo_3
if %errorlevel%==6 goto Commingsoon
goto Menu_Oppo_4


:Commingsoon
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
