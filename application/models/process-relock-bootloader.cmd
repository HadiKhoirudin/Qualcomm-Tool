@echo off

IF "%Devices%" == "REALME" (
::: Partition Devinfo
    for /F "Tokens=2 skip=1 delims=SECTOR_SIZE_IN_BYTES= " %%a in ('findstr /I "SECTOR_SIZE_IN_BYTES" %cache%\partition') do (type %xml_devinfo_path%\REALME-relock-bl-patch.xml | %repl% "(SECTOR_SIZE_IN_BYTES=\q).*?(\q.*>)" $1%%a$2 xi >%cache%\tmp.xml)
    for /F "Tokens=7 " %%b in ('findstr /I "devinfo" %cache%\partition') do (type %cache%\tmp.xml | %repl% "(start_sector=\q).*?(\q.*>)" "$1%%b$2" xi >%cache%\patch.xml)
        %emmcdl% -p %USBComPort% -f %Loader% -d devinfo -o %backup_devinfo% -memoryname %MemoryName% >nul
        %emmcdl% -p %USBComPort% -f %Loader% -x %cache%\patch.xml -memoryname %MemoryName% >nul

        %cecho% {0b}Relocking Boot Loader...{0f}[OK]
        echo.
)

IF "%Devices%" == "OPPO" (
::: Partition Devinfo
    for /F "Tokens=2 skip=1 delims=SECTOR_SIZE_IN_BYTES= " %%a in ('findstr /I "SECTOR_SIZE_IN_BYTES" %cache%\partition') do (type %xml_devinfo_path%\OPPO-relock-bl-patch.xml | %repl% "(SECTOR_SIZE_IN_BYTES=\q).*?(\q.*>)" $1%%a$2 xi >%cache%\tmp.xml)
    for /F "Tokens=7 " %%b in ('findstr /I "devinfo" %cache%\partition') do (type %cache%\tmp.xml | %repl% "(start_sector=\q).*?(\q.*>)" "$1%%b$2" xi >%cache%\patch.xml)
        %emmcdl% -p %USBComPort% -f %Loader% -d devinfo -o %backup_devinfo% -memoryname %MemoryName% >nul
        %emmcdl% -p %USBComPort% -f %Loader% -x %cache%\patch.xml -memoryname %MemoryName% >nul

        %cecho% {0b}Relocking Boot Loader...{0f}[OK]
        echo.
)

IF "%Devices%" == "VIVO" (
::: Partition Devinfo
    for /F "Tokens=2 skip=1 delims=SECTOR_SIZE_IN_BYTES= " %%a in ('findstr /I "SECTOR_SIZE_IN_BYTES" %cache%\partition') do (type %xml_devinfo_path%\VIVO-relock-bl-patch.xml | %repl% "(SECTOR_SIZE_IN_BYTES=\q).*?(\q.*>)" $1%%a$2 xi >%cache%\tmp.xml)
    for /F "Tokens=7 " %%b in ('findstr /I "devinfo" %cache%\partition') do (type %cache%\tmp.xml | %repl% "(start_sector=\q).*?(\q.*>)" "$1%%b$2" xi >%cache%\patch.xml)
        %emmcdl% -p %USBComPort% -f %Loader% -d devinfo -o %backup_devinfo% -memoryname %MemoryName% >nul
        %emmcdl% -p %USBComPort% -f %Loader% -x %cache%\patch.xml -memoryname %MemoryName% >nul

        %cecho% {0b}Relocking Boot Loader...{0f}[OK]
        echo.
)

IF "%Devices%" == "XIAOMI" (
::: Partition Devinfo
    for /F "Tokens=2 skip=1 delims=SECTOR_SIZE_IN_BYTES= " %%a in ('findstr /I "SECTOR_SIZE_IN_BYTES" %cache%\partition') do (type %xml_devinfo_path%\XIAOMI-relock-bl-patch.xml | %repl% "(SECTOR_SIZE_IN_BYTES=\q).*?(\q.*>)" $1%%a$2 xi >%cache%\tmp.xml)
    for /F "Tokens=7 " %%b in ('findstr /I "devinfo" %cache%\partition') do (type %cache%\tmp.xml | %repl% "(start_sector=\q).*?(\q.*>)" "$1%%b$2" xi >%cache%\patch.xml)
        %emmcdl% -p %USBComPort% -f %Loader% -d devinfo -o %backup_devinfo% -memoryname %MemoryName% >nul
        %emmcdl% -p %USBComPort% -f %Loader% -x %cache%\patch.xml -memoryname %MemoryName% >nul

        %cecho% {0b}Relocking Boot Loader...{0f}[OK]
        echo.
)
