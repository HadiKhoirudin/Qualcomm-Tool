@echo off
:: Set-Up Controllers - > Models
set Menu=%menu_xiaomi%
set Devices=XIAOMI
set totalpages=5

:: {###################################################################### ::
:: ############################# XIAOMI MENU ############################# ::
:: ####################################################################### ::
:Menu_Xiaomi_1
cls
set dialog=***               X I A O M I   P A G E   1  OF  %totalpages%                  ***
call %page%
Call %button%  10 12 "XIAOMI MI  6 PRO" 42 12 "XIAOMI MI  8 EE" 10 15 "XIAOMI MI  8 SE " 42 15 "XIAOMI MI  8 UD" 19 18 "    BACK    "  38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.%msgw1%
echo.%msgw2%
%getinput% /m %Press% /h 72


:: Check for the pressed button 
if %errorlevel%==1 (

:: Set-Up Device Configuration
set Model=XIAOMI MI 6 PRO
set Loader=%ldr_xiaomi%\prog_emmc_firehose_8953_ddr_xiaomi_6pro_sakura_rb1.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=XIAOMI MI 8 EE
set Loader=%ldr_xiaomi%\prog_ufs_firehose_sdm845_ddr_mi8ee_ursa_sig_rb1.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=XIAOMI MI 8 SE
set Loader=%ldr_xiaomi%\prog_emmc_firehose_Sdm670_ddr_xiaomi_mi8se_sirius_sig_rb1.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=XIAOMI MI 8 UD
set Loader=%ldr_xiaomi%\prog_ufs_firehose_sdm845_ddr_mi8ud_equuleus_sig_rb1.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==5 call %main%
if %errorlevel%==6 goto Menu_Xiaomi_2
goto Menu_Xiaomi_1

:Menu_Xiaomi_2
cls
set dialog=***               X I A O M I   P A G E   2  OF  %totalpages%                  ***
call %page%
Call %button%  8 12 "XIAOMI MI A2     " 42 12 "XIAOMI MI A2 LITE" 8 15 "XIAOMI MI MAX 2  " 42 15 "XIAOMI MI MAX 3  " 19 18 "    BACK    "  38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.%msgw1%
echo.%msgw2%
%getinput% /m %Press% /h 72


:: Check for the pressed button 
if %errorlevel%==1 (

:: Set-Up Device Configuration
set Model=XIAOMI MI A2
set Loader=%ldr_xiaomi%\prog_emmc_firehose_Sdm660_ddr_mia2_jasmine_rb2.elf
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=XIAOMI MI A2 LITE
set Loader=%ldr_xiaomi%\prog_emmc_firehose_8953_ddr_mia2lite_daisy_rb1.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=XIAOMI MI MAX 2
set Loader=%ldr_xiaomi%\prog_ufs_firehose_8998_ddr_xiaomi_mimax2_chiron_rb1.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=XIAOMI MI MAX 3
set Loader=%ldr_xiaomi%\prog_emmc_firehose_Sdm660_ddr_xiaomi1_mimax3_nitrogen_rb4.elf
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==6 goto Menu_Xiaomi_3
goto Menu_Xiaomi_1

:Menu_Xiaomi_3
cls
set dialog=***               X I A O M I   P A G E   3  OF  %totalpages%                  ***
call %page%
Call %button%  7 12 " XIAOMI MI MIX    " 42 12 " XIAOMI MI MIX 2S " 7 15 " XIAOMI MI MIX 3  " 42 15 " XIAOMI MI NOTE 2 "  19 18 "    BACK    "  38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.%msgw1%
echo.%msgw2%
%getinput% /m %Press% /h 72


:: Check for the pressed button 
if %errorlevel%==1 (

:: Set-Up Device Configuration
set Model=XIAOMI MI MIX LITHIUM
set Loader=%ldr_xiaomi%\prog_ufs_firehose_8996_ddr_xiaomi_mimix_lithium_rb1.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model= XIAOMI MI MIX 2S
set Loader=%ldr_xiaomi%\prog_ufs_firehose_Sdm845_ddr_xiaomi_sig_mimix2s_polaris_rb1.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=XIAOMI MI MIX 3
set Loader=%ldr_xiaomi%\prog_ufs_firehose_sdm845_ddr_sig_mimix3_perseus_rb2.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=XIAOMI MI NOTE 2
set Loader=%ldr_xiaomi%\prog_ufs_firehose_8996_ddr_xiaomi_minote2_scorpio_rb1.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)
if %errorlevel%==5 goto Menu_Xiaomi_2
if %errorlevel%==6 goto Menu_Xiaomi_4
goto Menu_Xiaomi_3

:Menu_Xiaomi_4
cls
set dialog=***               X I A O M I   P A G E   4  OF  %totalpages%                  ***
call %page%
Call %button%  5 12 " XIAOMI MI NOTE 3     " 42 12 " XIAOMI MI NOTE 5    " 5 15 " XIAOMI MI NOTE 5 PRO " 42 15 " XIAOMI MI PAD 4     "  19 18 "    BACK    "  38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.%msgw1%
echo.%msgw2%
%getinput% /m %Press% /h 72


:: Check for the pressed button 
if %errorlevel%==1 (

:: Set-Up Device Configuration
set Model=XIAOMI MI NOTE 3
set Loader=%ldr_xiaomi%\prog_emmc_firehose_Sdm660_ddr_xiaomi_minote3_jason_rb1.elf
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=XIAOMI MI NOTE 5
set Loader=%ldr_xiaomi%\prog_emmc_firehose_Sdm660_ddr_xiaomi_note5_whyred_s_rb4.elf
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=XIAOMI MI NOTE 5 PRO
set Loader=%ldr_xiaomi%\prog_emmc_firehose_Sdm660_ddr_xiaomi_note5pro_whyred_s_rb4.elf
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=XIAOMI MI PAD 4
set Loader=%ldr_xiaomi%\prog_emmc_firehose_Sdm660_ddr_xiaomi_mipad4_clover_s_rb4.elf
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)
if %errorlevel%==5 goto Menu_Xiaomi_3
if %errorlevel%==6 goto Menu_Xiaomi_5
goto Menu_Xiaomi_4


:Menu_Xiaomi_5
cls
set dialog=***               X I A O M I   P A G E   5  OF  %totalpages%                  ***
call %page%
Call %button%  5 12 " XIAOMI MI POCO F1    " 42 12 " XIAOMI REDMI 7      " 5 15 " XIAOMI REDMI NOTE 5A " 19 18 "    BACK    " 38 18 "    NEXT    " # Press
echo.
echo.
echo.
echo.%msgw1%
echo.%msgw2%
%getinput% /m %Press% /h 72


:: Check for the pressed button 
if %errorlevel%==1 (

:: Set-Up Device Configuration
set Model=XIAOMI MI POCO F1
set Loader=%ldr_xiaomi%\prog_firehose_ddr_XIAOMI_v1.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI 7
set Loader=%ldr_xiaomi%\prog_emmc_firehose_8953_ddr_redmi7_onc_onclite.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI NOTE 5A
set Loader=%ldr_xiaomi%\prog_emmc_firehose_8917_note5a_ugglite_ddr.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==4 goto Menu_Xiaomi_4
if %errorlevel%==5 goto Commingsoon
goto Menu_Xiaomi_5


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
goto Menu_Xiaomi_1

:: ####################################################################### ::
:: ############################# XIAOMI MENU ############################# ::
:: ######################################################################} ::
