@echo off
:: Set-Up Controllers - > Models
set Menu=%menu_realme%
set Devices=REALME
set totalpages=2

:: {###################################################################### ::
:: ############################# REALME MENU ############################# ::
:: ####################################################################### ::
:Menu_Realme_1
set dialog=***               R E A L M E   P A G E   1  OF  %totalpages%                  ***
call %page%
call %box%
Call %button%  5 12 "REALME 6 PRO (RMX 2061)" 40 12 "REALME 7 PRO (RMX 2170)" 5 15 "REALME 7i    (RMX 2103)" 40 15 "REALME 8 PRO (RMX 3081)" 19 18 "    BACK    " 38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.
echo.%msgw1%
echo.%msgw2%
%getinput% /m %Press% /h 72


:: Check for the pressed button 
if %errorlevel%==1 (

:: Set-Up Device Configuration
set Model=REALME 6 PRO RMX 2061
set Loader=%ldr_realme%\prog_firehose_ddr_Realme6Pro_Realme7Pro_Realme8Pro.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=REALME 7 PRO RMX 2170
set Loader=%ldr_realme%\prog_firehose_ddr_Realme6Pro_Realme7Pro_Realme8Pro.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=REALME 7i RMX 2103
set Loader=%ldr_realme%\prog_firehose_ddr_Realme7iRMX2103_Realme9RMX3521.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=REALME 8PRO RMX 3081
set Loader=%ldr_realme%\prog_firehose_ddr_Realme6Pro_Realme7Pro_Realme8Pro.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==5 call %main%
if %errorlevel%==6 goto Menu_Realme_2
goto Menu_Realme_1

:Menu_Realme_2
set dialog=***               R E A L M E   P A G E   2  OF  %totalpages%                  ***
call %page%
call %box%
Call %button%  5 12 "REALME 9   (RMX 3521)" 40 12 "REALME C15 (RMX 2195)" 5 15 "REALME C17 (RMX 2101)" 19 18 "    BACK    " 38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.
echo.%msgw1%
echo.%msgw2%
%getinput% /m %Press% /h 72


:: Check for the pressed button 
if %errorlevel%==1 (

:: Set-Up Device Configuration
set Model=REALME 9 RMX 3521
set Loader=%ldr_realme%\prog_firehose_ddr_Realme6Pro_Realme7Pro_Realme8Pro.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=REALME C15 RMX 2195
set Loader=%ldr_realme%\prog_firehose_ddr_RealmeC15RMX2195_RealmeC17_RMX2101.elf
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=REALME C17 RMX 2101
set Loader=%ldr_realme%\prog_firehose_ddr_RealmeC15RMX2195_RealmeC17_RMX2101.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==4 goto Menu_Realme_1
if %errorlevel%==5 goto Commingsoon
goto Menu_Realme_2

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
goto Menu_Realme_1
