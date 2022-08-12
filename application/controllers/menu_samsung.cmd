@echo off
:: Set-Up Controllers - > Models
set Menu=%menu_samsung%
set Devices=SAMSUNG
set totalpages=3

:: {###################################################################### ::
:: ############################# MENU SAMSUNG ############################ ::
:: ####################################################################### ::
:Menu_Samsung_1
set dialog=***             S A M S U N G   P A G E   1  OF  %totalpages%                  ***
call %page%
call %box%
call %button%  8 13 "SAMSUNG SM-A015F" 42 13 "SAMSUNG SM-A025F" 8 16 "SAMSUNG SM-A115A" 42 16 "SAMSUNG SM-A115F" 19 19 "    BACK    "  38 19 "    NEXT    " # Press
echo.
echo.
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
set Model=SM-A015F
set Loader=%ldr_samsung%\SM-A015F_loader_8937.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=SM-A025F
set Loader=%ldr_samsung%\SM-A025F_loader_8937.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=SM-A115A
set Loader=%ldr_samsung%\SM-A115A_loader_8953.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=SM-A115F
set Loader=%ldr_samsung%\SM-M115F_loader_8953.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==5 call %main%
if %errorlevel%==6 goto Menu_Samsung_2
goto Menu_Samsung_1


:Menu_Samsung_2
set dialog=***             S A M S U N G   P A G E   2  OF  %totalpages%                  ***
call %page%
call %box%
call %button%  8 13 "SAMSUNG SM-A115U" 42 13 "SAMSUNG SM-A705F" 8 16 "SAMSUNG SM-J415F" 42 16 "SAMSUNG SM-J610F" 19 19 "    BACK    "  38 19 "    NEXT    " # Press
echo.
echo.
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
set Model=SM-A115U
set Loader=%ldr_samsung%\SM-A115U_loader_8953.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=SM-A705F
set Loader=%ldr_samsung%\SM-A705F_loader_ddr.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=SM-J415F
set Loader=%ldr_samsung%\SM-J415F_loader_8917.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=SM-J610F
set Loader=%ldr_samsung%\SM-J610F_loader_8917.mbn
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)
if %errorlevel%==5 goto Menu_Samsung_1
if %errorlevel%==6 goto Menu_Samsung_3
goto Menu_Samsung_1


:Menu_Samsung_3
set dialog=***             S A M S U N G   P A G E   3  OF  %totalpages%                  ***
call %page%
call %box%
call %button%  8 13 "SAMSUNG SM-M025F" 42 13 "SAMSUNG SM-M115F" 19 19 "    BACK    " 38 19 "    NEXT    " # Press
echo.
echo.
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
set Model=SM-M025F
set Loader=%ldr_samsung%\SM-M025F_loader_8953.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=SM-M115F
set Loader=%ldr_samsung%\SM-M115F_loader_8953.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 goto Menu_Samsung_2
if %errorlevel%==4 goto Commingsoon
goto Menu_Samsung_3


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
goto Menu_Samsung_1
