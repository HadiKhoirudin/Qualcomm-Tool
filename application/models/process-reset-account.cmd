@echo off
IF "%Devices%" == "OPPO" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}[OK]
    echo.
)

IF "%Devices%" == "REALME" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}[OK]
    echo.
)

IF "%Devices%" == "VIVO" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}[OK]
    echo.
)

IF "%Devices%" == "XIAOMI" (
::: Partition Config -> FRP
    %emmcdl% -p %USBComPort% -f %Loader% -d config -o %backup_config% -memoryname %MemoryName% >nul
    %emmcdl% -p %USBComPort% -f %Loader% -e config -memoryname %MemoryName% >nul
::: Partition Persist -> MiCloud
    %emmcdl% -p %USBComPort% -f %Loader% -d persist -o %backup_persist%-memoryname %MemoryName% >nul
    %emmcdl% -p %USBComPort% -f %Loader% -d persistbak -o %backup_persistbak% -memoryname %MemoryName% >nul
    %emmcdl% -p %USBComPort% -f %Loader% -e persist -memoryname %MemoryName% >nul
    %emmcdl% -p %USBComPort% -f %Loader% -e persistbak -memoryname %MemoryName% >nul

    %cecho% {0b}Backing-up config...{0f}    [OK]
    echo.
    %cecho% {0b}Backing-up persist...{0f}   [OK]
    echo.
    %cecho% {0b}Backing-up persistbak...{0f}[OK]
    echo.
    %cecho% {0b}Erasing MiCloud...{0f}      [OK]
    echo.
)


IF "%Devices%" == "SAMSUNG" (
::: Partition Config -> FRP
    %emmcdl% -p %USBComPort% -f %Loader% -d persistent -o %backup_persistent% -memoryname %MemoryName% >nul
    %emmcdl% -p %USBComPort% -f %Loader% -e config -memoryname %MemoryName% >nul

    %cecho% {0b}Backing-up persistent...{0f}[OK]
    echo.
    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
)

IF "%Devices%" == "OTHER" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
)
