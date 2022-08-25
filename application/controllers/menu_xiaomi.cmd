@echo off
:: Set-Up Controllers - > Models
set Menu=%menu_xiaomi%
set Devices=XIAOMI
set totalpages=15

:: {###################################################################### ::
:: ############################# XIAOMI MENU ############################# ::
:: ####################################################################### ::
:Menu_Xiaomi_1
set dialog=***               X I A O M I   P A G E   1  OF  %totalpages%                  ***
call %page%
call %box%
call %button%  8 13 "XIAOMI MI 4i     " 42 13 "XIAOMI MI 5      " 8 16 "XIAOMI MI 5s     " 42 16 "XIAOMI MI 5s PLUS" 19 19 "    BACK    "  38 19 "    NEXT    " # Press
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
set Model=XIAOMI MI 4i FERARRI
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_mi4i_ferarri.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=XIAOMI MI 5 GEMINI
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_mi5_gemini.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=XIAOMI MI 5s CAPRICORN
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_mi5s_capricorn.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=XIAOMI MI 5S PLUS NATRIUM
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_mi5splus_natrium.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==5 call %main%
if %errorlevel%==6 goto Menu_Xiaomi_2
goto Menu_Xiaomi_1

:Menu_Xiaomi_2
set dialog=***               X I A O M I   P A G E   2  OF  %totalpages%                  ***
call %page%
call %box%
call %button%  8 13 "XIAOMI MI 5x     " 42 13 "XIAOMI MI 6      " 8 16 "XIAOMI MI 6x     " 42 16 "XIAOMI MI 8      " 19 19 "    BACK    "  38 19 "    NEXT    " # Press
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
set Model=XIAOMI MI 5x TIFFANY
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_mi5x_tiffany.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=XIAOMI MI 6 SAGIT
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_mi6_sagit.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=XIAOMI MI 6x WAYNE
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_mi6x_wayne.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=XIAOMI MI 8 DIPPER
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_mi8_dipper.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==6 goto Menu_Xiaomi_3
goto Menu_Xiaomi_1

:Menu_Xiaomi_3
set dialog=***               X I A O M I   P A G E   3  OF  %totalpages%                  ***
call %page%
call %box%
call %button%  8 13 " XIAOMI MI 8 EE   " 42 13 " XIAOMI MI 8 LITE " 8 16 " XIAOMI MI 8 PRO  " 42 16 " XIAOMI MI 8 SE   "  19 19 "    BACK    "  38 19 "    NEXT    " # Press
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
set Model=XIAOMI MI 8 EE URSA
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_mi8ee_ursa.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=MI 8 LITE PLATINA
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_mi8lite_platina.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=XIAOMI MI 8 PRO EQUEEULUS
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_mi8pro_equeeulus.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=XIAOMI MI 8 SE SIRIUS
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_mi8_sirius.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)
if %errorlevel%==5 goto Menu_Xiaomi_2
if %errorlevel%==6 goto Menu_Xiaomi_4
goto Menu_Xiaomi_3

:Menu_Xiaomi_4
set dialog=***               X I A O M I   P A G E   4  OF  %totalpages%                  ***
call %page%
call %box%
call %button%  5 13 " XIAOMI MI 10 LITE    " 42 13 " XIAOMI MI 11T PRO    " 5 16 " XIAOMI MI A1         " 42 16 " XIAOMI MI A2         "  19 19 "    BACK    "  38 19 "    NEXT    " # Press
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
set Model=XIAOMI MI 10 LITE TOCO
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_mi10lite_toco.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=XIAOMI MI 11T PRO
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_mi11tpro_vili.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=XIAOMI MI A1 TISSOT
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_mia1_tissot.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=XIAOMI MI A2 JASMINE
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_mia2_jasmine.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)
if %errorlevel%==5 goto Menu_Xiaomi_3
if %errorlevel%==6 goto Menu_Xiaomi_5
goto Menu_Xiaomi_4


:Menu_Xiaomi_5 
set dialog=***               X I A O M I   P A G E   5  OF  %totalpages%                  ***
call %page%
call %box%
call %button%  5 13 " XIAOMI MI A2 LITE    " 42 13 " XIAOMI MI K20 PRO    " 5 16 " XIAOMI MI MAX 2      " 42 16 " XIAOMI MI MAX 3      " 19 19 "    BACK    " 38 19 "    NEXT    " # Press
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
set Model=XIAOMI MI A2 LITE DAISY
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_mia2lite_daisy.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=XIAOMI MI K20 PRO RAPHAEL
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_mik20_raphael.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=XIAOMI MI MAX 2 OXYGEN
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_mimax2_oxygen.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=XIAOMI MI MAX 3 NITROGEN
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_mimax3_nitrogen.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==5 goto Menu_Xiaomi_4
if %errorlevel%==6 goto Menu_Xiaomi_6
goto Menu_Xiaomi_5


:Menu_Xiaomi_6 
set dialog=***               X I A O M I   P A G E   6  OF  %totalpages%                  ***
call %page%
call %box%
call %button%  5 13 " XIAOMI MI MIX        " 42 13 " XIAOMI MI MIX 2     " 5 16 " XIAOMI MI MIX 2s     " 42 16 " XIAOMI MI MIX 3     " 19 19 "    BACK    " 38 19 "    NEXT    " # Press
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
set Model=XIAOMI MI MIX LITHIUM
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_mimix_lithium.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=XIAOMI MI MIX 2 CHIRON
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_mimix2_chiron.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=XIAOMI MI MIX 2S POLARIS
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_mimix2s_polaris.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=XIAOMI MI MIX 3 PERSEUS
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_mimix3_perseus.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==5 goto Menu_Xiaomi_5
if %errorlevel%==6 goto Menu_Xiaomi_7
goto Menu_Xiaomi_6

:Menu_Xiaomi_7 
set dialog=***               X I A O M I   P A G E   7  OF  %totalpages%                  ***
call %page%
call %box%
call %button%  5 13 " XIAOMI MI NOTE 2    " 40 13 " XIAOMI MI NOTE 3       " 5 16 " XIAOMI POCO F1      " 40 16 " XIAOMI POCO M2 PRO     " 19 19 "    BACK    " 38 19 "    NEXT    " # Press
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
set Model=XIAOMI MI NOTE 2 SCORPIO
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_minote2_scorpio.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=XIAOMI MI NOTE 3 JASON
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_minote3_jason.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=XIAOMI POCO F1 BERYLLIUM
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_pocof1_beryllium.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=XIAOMI POCO M2 PRO GRAM
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_pocom2pro_gram.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==5 goto Menu_Xiaomi_6
if %errorlevel%==6 goto Menu_Xiaomi_8
goto Menu_Xiaomi_7

:Menu_Xiaomi_8 
set dialog=***               X I A O M I   P A G E   8  OF  %totalpages%                  ***
call %page%
call %box%
call %button%  5 13 " XIAOMI POCO M3      " 40 13 " XIAOMI REDMI 3 PRO     " 5 16 " XIAOMI REDMI 3S / 3X" 40 16 " XIAOMI REDMI 4 PRADA   " 19 19 "    BACK    " 38 19 "    NEXT    " # Press
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
set Model=XIAOMI POCO M3 CITRUS
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_pocom3_citrus.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI 3 PRO IDO
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redmi3pro_ido.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI 3S/X LAND
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redmi3s_land.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI 4 PRADA
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redmi4_prada.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==5 goto Menu_Xiaomi_7
if %errorlevel%==6 goto Menu_Xiaomi_9
goto Menu_Xiaomi_8


:Menu_Xiaomi_9
set dialog=***               X I A O M I   P A G E   9  OF  %totalpages%                 ***
call %page%
call %box%
call %button%  5 13 " XIAOMI REDMI 4 PRO  " 40 13 " XIAOMI REDMI 4A        " 5 16 " XIAOMI REDMI 4X     " 40 16 " XIAOMI REDMI 4 PLUS    " 19 19 "    BACK    " 38 19 "    NEXT    " # Press
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
set Model=XIAOMI REDMI 4 PRO MARKW
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redmi4pro_markw.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI 4A ROLEX
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redmi4a_rolex.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI 4X SANTONI
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redmi4x_santoni.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI 5 PLUS VINCE
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redmi5plus_vince.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==5 goto Menu_Xiaomi_8
if %errorlevel%==6 goto Menu_Xiaomi_10
goto Menu_Xiaomi_9


:Menu_Xiaomi_10 
set dialog=***               X I A O M I   P A G E   10  OF  %totalpages%                ***
call %page%
call %box%
call %button%  5 13 " XIAOMI REDMI 5      " 40 13 " XIAOMI REDMI 5A        " 5 16 " XIAOMI REDMI 6 PRO  " 40 16 " XIAOMI REDMI 7A PINE   " 19 19 "    BACK    " 38 19 "    NEXT    " # Press
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
set Model=XIAOMI REDMI 5 ROSY
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redmi5_rosy.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI 5A RIVA
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redmi5a_riva.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI 6 PRO SAKURA
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redmi6pro_sakura.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI 7A PINE
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redmi7a_pine.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==5 goto Menu_Xiaomi_9
if %errorlevel%==6 goto Menu_Xiaomi_11
goto Menu_Xiaomi_10


:Menu_Xiaomi_11
set dialog=***               X I A O M I   P A G E   11  OF  %totalpages%                ***
call %page%
call %box%
call %button%  5 13 " XIAOMI REDMI 8      " 40 13 " XIAOMI REDMI 8A DUAL   " 5 16 " XIAOMI REDMI 8A PRO " 40 16 " XIAOMI REDMI 9 POWER   " 19 19 "    BACK    " 38 19 "    NEXT    " # Press
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
set Model=XIAOMI REDMI 8 OLIVE
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_pocom3_citrus.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI 8A DUAL OLIVELITE
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redmi8a_olivelite.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI 8A PRO OLIVELITE
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redmi8apro_olivelite.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI 9 POWER LIME
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_redmi9power_lime.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==5 goto Menu_Xiaomi_10
if %errorlevel%==6 goto Menu_Xiaomi_12
goto Menu_Xiaomi_11


:Menu_Xiaomi_12 
set dialog=***               X I A O M I   P A G E   12  OF  %totalpages%                ***
call %page%
call %box%
call %button%  5 13 " XIAOMI REDMI 9T     " 40 13 " XIAOMI REDMI NOTE 3    " 5 16 " XIAOMI REDMI NOTE 4X" 40 16 " XIAOMI REDMI NOTE 5    " 19 19 "    BACK    " 38 19 "    NEXT    " # Press
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
set Model=XIAOMI REDMI 9T LIME
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_redmi9t_lime.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI NOTE 3 KENZO
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redminote3_kenzo.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI NOTE 4X MIDO
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redminote4x_mido.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI NOTE 5 WHYRED
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redminote5_whyred.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==5 goto Menu_Xiaomi_11
if %errorlevel%==6 goto Menu_Xiaomi_13
goto Menu_Xiaomi_12


:Menu_Xiaomi_13 
set dialog=***               X I A O M I   P A G E   13  OF  %totalpages%                ***
call %page%
call %box%
call %button%  4 13 " XIAOMI REDMI NOTE 5A   " 37 13 " XIAOMI REDMI NOTE 5A PRIME" 4 16 " XIAOMI REDMI NOTE 6 PRO" 37 16 " XIAOMI REDMI NOTE 7       " 19 19 "    BACK    " 38 19 "    NEXT    " # Press
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
set Model=XIAOMI REDMI NOTE 5A UGGLITE
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redminote5a_ugglite.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI NOTE 5A Prime UGG
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redminote5a_ugg.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI NOTE 6 PRO TULIP
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redminote6pro_tulip.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI NOTE 7 LAVENDER
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redminote7_lavender.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==5 goto Menu_Xiaomi_12
if %errorlevel%==6 goto Menu_Xiaomi_14
goto Menu_Xiaomi_13


:Menu_Xiaomi_14 
set dialog=***               X I A O M I   P A G E   14  OF  %totalpages%                ***
call %page%
call %box%
call %button%  5 13 " XIAOMI REDMI 7S     " 40 13 " XIAOMI REDMI NOTE 8    " 5 16 " XIAOMI REDMI NOTE 8T" 40 16 " XIAOMI REDMI NOTE 9 4G " 19 19 "    BACK    " 38 19 "    NEXT    " # Press
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
set Model=XIAOMI REDMI NOTE 7S LAVENDER
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redmi7s_lavender.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI NOTE 8 GINKGO
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redminote8_ginkgo.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==3 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI NOTE 8T WILLOW
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redmi8t_willow.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==4 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI NOTE 9 4G LIME
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_redminote94g_lime.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==5 goto Menu_Xiaomi_13
if %errorlevel%==6 goto Menu_Xiaomi_15
goto Menu_Xiaomi_14


:Menu_Xiaomi_15
set dialog=***               X I A O M I   P A G E   15  OF  %totalpages%                ***
call %page%
call %box%
call %button%  5 14 " XIAOMI REDMI NOTE 10" 40 14 " XIAOMI REDMI S2 / Y2   " 19 19 "    BACK    " 38 19 "    NEXT    " # Press
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
set Model=XIAOMI REDMI NOTE 10 MOJITO
set Loader=%ldr_xiaomi%\prog_ufs_xiaomi_redminote10_mojito.elf
set MemoryName=ufs

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=XIAOMI REDMI S2 / Y2 YSL
set Loader=%ldr_xiaomi%\prog_emmc_xiaomi_redmis2y2_ysl.mbn
set MemoryName=emmc

:: Execute
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==3 goto Menu_Xiaomi_14
if %errorlevel%==4 goto Commingsoon
goto Menu_Xiaomi_15


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
goto Menu_Xiaomi_1

:: ####################################################################### ::
:: ############################# XIAOMI MENU ############################# ::
:: ######################################################################} ::
