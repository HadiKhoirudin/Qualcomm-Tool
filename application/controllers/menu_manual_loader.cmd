@echo off
:: Set-Up Controllers - > Models
set Menu=%menu_manual_loader%

:Menu_Manual_Loader_1
cls
set dialog=***     S E L E C T   T Y P E   O F   M E M O R Y   D E V I C E     ***
call %page%
call %box%
call %button%  8 16 "        EMMC        " 41 16 "        UFS        " 29 19 "    BACK    " # Press
echo.
echo.
echo.
echo.
%getinput% /m %Press% /h 72
echo.


:: Check for the pressed button 
if %errorlevel%==1 (

:: Set-Up Device Configuration
set Model=Manual Loader
set MemoryName=emmc

goto Menu_Manual_Loader_2
)


if %errorlevel%==2 (

:: Set-Up Device Configuration
set Model=Manual Loader
set MemoryName=ufs

goto Menu_Manual_Loader_2
)


if %errorlevel%==3 call %main%
goto Menu_Manual_Loader_1

:Menu_Manual_Loader_2
cls
set dialog=***           S E L E C T   F I R E H O S E   L O A D E R           ***
call %page%
call %box%
call %button%  24 15 "        BROWSE        "  29 19 "    BACK    " # Press
echo.
echo.
echo.
echo.
echo.
echo.
echo.------------------------------------------------------------------------
echo.Selected Device : %Model%
echo.Memory Name     : %MemoryName%
echo.------------------------------------------------------------------------
%getinput% /m %Press% /h 72

:: Check for the pressed button 
if %errorlevel%==1 (
del /F /Q %~dp2assets\manual-loader\*.*ELF >nul 2>&1
del /F /Q %~dp2assets\manual-loader\*.*MBN >nul 2>&1
del /F /Q %~dp2assets\manual-loader\*.*BIN >nul 2>&1
echo. INFO ! Please copy one firehose loader proggrammer *ELF *MBN *BIN file
echo.        to ~\Qualcomm-Tool\assets\manual-loader folder.
echo. 
echo.        Then press [Enter] key to continue...
explorer %~dp2assets\manual-loader
pause >nul

for %%f in (%~dp2assets\manual-loader\*) do (
        if "%%~xf"==".elf" (
        echo.        File found: %%f
        set Loader=%%f
        goto Menu_Manual_Loader_3
        
        )

        if "%%~xf"==".mbn" (
        echo.        File found: %%f
        set Loader=%%f
        goto Menu_Manual_Loader_3
        )

        if "%%~xf"==".bin" (
        echo.        File found: %%f
        set Loader=%%f
        goto Menu_Manual_Loader_3
        )else (
        echo.
        echo.        Error file not found! Press [Enter] to continue...
        pause >nul
        call %main%
        )
    )
)

if %errorlevel%==2 goto Menu_Manual_Loader_1
goto Menu_Manual_Loader_2


:Menu_Manual_Loader_3
cls
set dialog=***                    S E L E C T   D E V I C E                    ***
call %page%
call %box%
call %button%  8 13 "     OPPO     " 27 13 "    REALME    " 46 13 "     VIVO     " 8 16 "    XIAOMI    " 46 16 "    SAMSUNG   " 27 16 "     OTHER    " 20 19 "            CANCEL            " # Press
%getinput% /m %Press% /h 72
echo.
echo.

:: Check for the pressed button 
echo.
if %errorlevel%==1 (
set Devices=OPPO
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==2 (
set Devices=REALME
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==3 (
set Devices=VIVO
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==4 (
set Devices=XIAOMI
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==5 (
set Devices=SAMSUNG
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==6 (
set Devices=OTHER
call %~dp2application\views\process\exec.cmd %Devices% %Loader% %MemoryName%
)

if %errorlevel%==7 call %main%

goto Menu_Manual_Loader_3
