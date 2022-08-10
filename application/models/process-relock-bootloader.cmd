@echo off

IF "%Devices%" == "REALME" (
::: Partition Devinfo
    for /F "Tokens=7 " %%d in ('findstr /I "devinfo" %cache%\partition') do (type %xml_devinfo_path%\REALME-relock-bl-patch.xml | %repl% "(start_sector=\q).*?(\q.*>)" "$1%%d$2" xi >%cache%\patch.xml)
        %emmcdl% -p %USBComPort% -f %Loader% -d devinfo %backup_devinfo% -memoryname %MemoryName% >nul
        %emmcdl% -p %USBComPort% -f %Loader% -x %cache%\patch.xml -memoryname %MemoryName% >nul

        %cecho% {0a}Relocking Boot Loader...{0f}     [OK]
        echo.
)

IF "%Devices%" == "OPPO" (
::: Partition Devinfo
    for /F "Tokens=7 " %%d in ('findstr /I "devinfo" %cache%\partition') do (type %xml_devinfo_path%\OPPO-relock-bl-patch.xml | %repl% "(start_sector=\q).*?(\q.*>)" "$1%%d$2" xi >%cache%\patch.xml)
        %emmcdl% -p %USBComPort% -f %Loader% -d devinfo %backup_devinfo% -memoryname %MemoryName% >nul
        %emmcdl% -p %USBComPort% -f %Loader% -x %cache%\patch.xml -memoryname %MemoryName% >nul

        %cecho% {0a}Relocking Boot Loader...{0f}     [OK]
        echo.
)

IF "%Devices%" == "VIVO" (
::: Partition Devinfo
    for /F "Tokens=7 " %%d in ('findstr /I "devinfo" %cache%\partition') do (type %xml_devinfo_path%\VIVO-relock-bl-patch.xml | %repl% "(start_sector=\q).*?(\q.*>)" "$1%%d$2" xi >%cache%\patch.xml)
        %emmcdl% -p %USBComPort% -f %Loader% -d devinfo %backup_devinfo% -memoryname %MemoryName% >nul
        %emmcdl% -p %USBComPort% -f %Loader% -x %cache%\patch.xml -memoryname %MemoryName% >nul

        %cecho% {0a}Relocking Boot Loader...{0f}     [OK]
        echo.
)

IF "%Devices%" == "XIAOMI" (
::: Partition Devinfo
    for /F "Tokens=7 " %%d in ('findstr /I "devinfo" %cache%\partition') do (type %xml_devinfo_path%\XIAOMI-relock-bl-patch.xml | %repl% "(start_sector=\q).*?(\q.*>)" "$1%%d$2" xi >%cache%\patch.xml)
        %emmcdl% -p %USBComPort% -f %Loader% -d devinfo %backup_devinfo% -memoryname %MemoryName% >nul
        %emmcdl% -p %USBComPort% -f %Loader% -x %cache%\patch.xml -memoryname %MemoryName% >nul

        %cecho% {0a}Relocking Boot Loader...{0f}     [OK]
        echo.
)
