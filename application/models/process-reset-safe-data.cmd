@echo off

:: Get Partition Info
%emmcdl% -p %USBComPort% -f %Loader% -gpt -memoryname %MemoryName% >%cache%\partition

IF "%Devices%" == "OPPO" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Misc
    for /F "Tokens=2 skip=1 delims=SECTOR_SIZE_IN_BYTES= " %%a in ('findstr /I "SECTOR_SIZE_IN_BYTES" %cache%\partition') do (type %xml_misc_patch% | %repl% "(SECTOR_SIZE_IN_BYTES=\q).*?(\q.*>)" $1%%a$2 xi >%cache%\tmp.xml)
    for /F "Tokens=7 " %%b in ('findstr /I "misc" %cache%\partition') do (type %cache%\tmp.xml | %repl% "(start_sector=\q).*?(\q.*>)" "$1%%b$2" xi >%cache%\patch.xml)
        %emmcdl% -p %USBComPort% -f %Loader% -x %cache%\patch.xml -memoryname %MemoryName% >nul

        %cecho% {0b}Erasing Account...{0f}      [OK]
        echo.
        %cecho% {0b}Erasing Userdata...{0f}     [OK]
        echo.
)

IF "%Devices%" == "REALME" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Misc
    for /F "Tokens=2 skip=1 delims=SECTOR_SIZE_IN_BYTES= " %%a in ('findstr /I "SECTOR_SIZE_IN_BYTES" %cache%\partition') do (type %xml_misc_patch% | %repl% "(SECTOR_SIZE_IN_BYTES=\q).*?(\q.*>)" $1%%a$2 xi >%cache%\tmp.xml)
    for /F "Tokens=7 " %%b in ('findstr /I "misc" %cache%\partition') do (type %cache%\tmp.xml | %repl% "(start_sector=\q).*?(\q.*>)" "$1%%b$2" xi >%cache%\patch.xml)
        %emmcdl% -p %USBComPort% -f %Loader% -x %cache%\patch.xml -memoryname %MemoryName% >nul

        %cecho% {0b}Erasing Account...{0f}      [OK]
        echo.
        %cecho% {0b}Erasing Userdata...{0f}     [OK]
        echo.
)


IF "%Devices%" == "VIVO" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Misc
    for /F "Tokens=2 skip=1 delims=SECTOR_SIZE_IN_BYTES= " %%a in ('findstr /I "SECTOR_SIZE_IN_BYTES" %cache%\partition') do (type %xml_misc_patch% | %repl% "(SECTOR_SIZE_IN_BYTES=\q).*?(\q.*>)" $1%%a$2 xi >%cache%\tmp.xml)
    for /F "Tokens=7 " %%b in ('findstr /I "misc" %cache%\partition') do (type %cache%\tmp.xml | %repl% "(start_sector=\q).*?(\q.*>)" "$1%%b$2" xi >%cache%\patch.xml)
        %emmcdl% -p %USBComPort% -f %Loader% -x %cache%\patch.xml -memoryname %MemoryName% >nul

        %cecho% {0b}Erasing Account...{0f}      [OK]
        echo.
        %cecho% {0b}Erasing Userdata...{0f}     [OK]
        echo.
)


IF "%Devices%" == "XIAOMI" (
::: Partition Config -> FRP
    %emmcdl% -p %USBComPort% -f %Loader% -d config -o %backup_config% -memoryname %MemoryName% >nul
    %emmcdl% -p %USBComPort% -f %Loader% -e config -memoryname %MemoryName% >nul
::: Partition Persist -> MiCloud
        %emmcdl% -p %USBComPort% -f %Loader% -d persist -o %backup_persist% -memoryname %MemoryName% >nul
        %emmcdl% -p %USBComPort% -f %Loader% -d persistbak -o %backup_persistbak% -memoryname %MemoryName% >nul
        %emmcdl% -p %USBComPort% -f %Loader% -e persist -memoryname %MemoryName% >nul
        %emmcdl% -p %USBComPort% -f %Loader% -e persistbak -memoryname %MemoryName% >nul

        %cecho% {0b}Backing-up config...{0f}    [OK]
        echo.
        %cecho% {0b}Backing-up persist...{0f}   [OK]
        echo.
        %cecho% {0b}Backing-up persistbak...{0f}[OK]
        echo.
        %cecho% {0b}Erasing Account...{0f}      [OK]
        echo.
)


IF "%Devices%" == "SAMSUNG" (
::: Partition Config -> FRP
    %emmcdl% -p %USBComPort% -f %Loader% -d persistent -o %backup_persistent% -memoryname %MemoryName% >nul
    %emmcdl% -p %USBComPort% -f %Loader% -e persistent -memoryname %MemoryName% >nul

    %cecho% {0b}Backing-up persistent...{0f}[OK]
    echo.
    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
)


IF "%Devices%" == "OTHER" (
    for /F "Tokens=2 skip=1 delims=SECTOR_SIZE_IN_BYTES= " %%a in ('findstr /I "SECTOR_SIZE_IN_BYTES" %cache%\partition') do (type %xml_misc_patch% | %repl% "(SECTOR_SIZE_IN_BYTES=\q).*?(\q.*>)" $1%%a$2 xi >%cache%\tmp.xml)
    for /F "Tokens=7 " %%b in ('findstr /I "misc" %cache%\partition') do (type %cache%\tmp.xml | %repl% "(start_sector=\q).*?(\q.*>)" "$1%%b$2" xi >%cache%\patch.xml)
::: Partition FRP
        %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
        %emmcdl% -p %USBComPort% -f %Loader% -x %cache%\patch.xml -memoryname %MemoryName% >nul

        %cecho% {0b}Erasing FRP...{0f}          [OK]
        echo.
        %cecho% {0b}Erasing Userdata...{0f}     [OK]
        echo.
)
