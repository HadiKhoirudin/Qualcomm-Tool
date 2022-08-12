@echo off
:: Set-Up Controllers - > Models
set Menu=%menu_auto_loader%
set totalpages=5

:Menu_Auto_Loader_1
cls
set dialog=***     S E L E C T   T Y P E   O F   M E M O R Y   D E V I C E     ***
call %page%
call %box%
Call %button%  8 13 "        EMMC        " 41 13 "        UFS        " 29 18 "    BACK    " # Press
echo.
echo.
echo.
echo.
%getinput% /m %Press% /h 72
echo.


:: Check for the pressed button 
if %errorlevel%==1 (

:: Set-Up Device Configuration
set Model=Auto Loader
set MemoryName=emmc

goto Menu_Auto_Loader_2
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=Auto Loader
set MemoryName=ufs

goto Menu_Auto_Loader_2
)

if %errorlevel%==3 call %main%
goto Menu_Auto_Loader_1

:Menu_Auto_Loader_2

cls
set dialog=***          S E L E C T   D E V I C E   P A G E  1  OF  %totalpages%           ***
call %page%
call %box%
Call %button% 9 13 " AMAZON     " 28 16 "    ASUS    " 47 13 " BLACKBERRY " 9 16 " COOLPAD    " 47 16 " FANCYMAKER " 9 19 " GIONEE     " 47 19 " HISENSE    " 19 22 "    BACK    " 38 22 "    NEXT    " # Press
%getinput% /m %Press% /h 72
echo.
echo.

:: Check for the pressed button 
echo.
if %errorlevel%==1 (
set Devices=AMAZON
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==2 (
set Devices=ASUS
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==3 (
set Devices=BLACKBERRY
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==4 (
set Devices=COOLPAD
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==5 (
set Devices=FANCYMAKER
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==6 (
set Devices=GIONEE
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==7 (
set Devices=HISENSE
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==8 goto Menu_Auto_Loader_1
if %errorlevel%==9 goto Menu_Auto_Loader_3
goto Menu_Auto_Loader_2

:Menu_Auto_Loader_3

cls
set dialog=***          S E L E C T   D E V I C E   P A G E  2  OF  %totalpages%           ***
call %page%
call %box%
Call %button% 9 13 " HMD        " 28 16 "   HUAQIN   " 47 13 " HUAWEI     " 9 16 " LENOVO     " 47 16 " LETV       " 9 19 " LG         " 47 19 " LONGCHEER  " 19 22 "    BACK    " 38 22 "    NEXT    " # Press
%getinput% /m %Press% /h 72
echo.
echo.

:: Check for the pressed button 
echo.
if %errorlevel%==1 (
set Devices=HMD
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==2 (
set Devices=HUAQIN
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==3 (
set Devices=HUAWEI
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==4 (
set Devices=LENOVO
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==5 (
set Devices=LETV
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==6 (
set Devices=LG
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==7 (
set Devices=LONGCHEER
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==8 goto Menu_Auto_Loader_2
if %errorlevel%==9 goto Menu_Auto_Loader_4
goto Menu_Auto_Loader_3

:Menu_Auto_Loader_4

cls
set dialog=***          S E L E C T   D E V I C E   P A G E  3  OF  %totalpages%           ***
call %page%
call %box%
Call %button% 9 13 " LYF        " 28 16 "   ME-IZU   " 47 13 " MICROMAX   " 9 16 " MICROSOFT  " 47 16 " LETV       " 9 19 " MOTOROLA   " 47 19 " NOKIA      " 19 22 "    BACK    " 38 22 "    NEXT    " # Press
%getinput% /m %Press% /h 72
echo.
echo.

:: Check for the pressed button 
echo.
if %errorlevel%==1 (
set Devices=LYF
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==2 (
set Devices=MEIZU
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==3 (
set Devices=MICROMAX
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==4 (
set Devices=MICROSOFT
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==5 (
set Devices=FANCYMAKER
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==6 (
set Devices=MOTOROLA
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==7 (
set Devices=NOKIA
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==8 goto Menu_Auto_Loader_3
if %errorlevel%==9 goto Menu_Auto_Loader_5
goto Menu_Auto_Loader_4

:Menu_Auto_Loader_5

cls
set dialog=***          S E L E C T   D E V I C E   P A G E  4  OF  %totalpages%           ***
call %page%
call %box%
Call %button% 9 13 " ONEPLUS    " 28 16 "   OPPO   " 47 13 " SAMSUNG    " 9 16 " SHARP      " 47 16 " SMARTISAN  " 9 19 " SONY       " 47 19 " TCL        " 19 22 "    BACK    " 38 22 "    NEXT    " # Press
%getinput% /m %Press% /h 72
echo.
echo.

:: Check for the pressed button 
echo.
if %errorlevel%==1 (
set Devices=ONEPLUS
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==2 (
set Devices=OPPO
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==3 (
set Devices=SAMSUNG
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==4 (
set Devices=SHARP
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==5 (
set Devices=SMARTISAN
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==6 (
set Devices=SONY
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==7 (
set Devices=TCL
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==8 goto Menu_Auto_Loader_4
if %errorlevel%==9 goto Menu_Auto_Loader_6
goto Menu_Auto_Loader_5

:Menu_Auto_Loader_6

cls
set dialog=***          S E L E C T   D E V I C E   P A G E  5  OF  %totalpages%           ***
call %page%
call %box%
Call %button% 9 13 " TPLINK    " 28 16 "   VIVO   " 47 13 " WINGTECH   " 9 16 " XIAOMI    " 47 16 " YULONG     " 9 19 " ZTE        " 47 19 " OTHER      " 19 22 "    BACK    " 38 22 "    NEXT    " # Press
%getinput% /m %Press% /h 72
echo.
echo.

:: Check for the pressed button 
echo.
if %errorlevel%==1 (
set Devices=TPLINK
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==2 (
set Devices=VIVO
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==3 (
set Devices=WINGTECH
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==4 (
set Devices=XIAOMI
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==5 (
set Devices=YULONG
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==6 (
set Devices=ZTE
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==7 (
set Devices=OTHER
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==8 goto Menu_Auto_Loader_5
if %errorlevel%==9 goto Commingsoon
goto Menu_Auto_Loader_6

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
goto Menu_Auto_Loader_6