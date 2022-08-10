@echo off

IF "%Devices%" == "OPPO" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0a}Erasing Account...{0f}          [OK]
    echo.
    %cecho% {0a}Erasing Userdata...{0f}     [OK]
    echo.
)


IF "%Devices%" == "REALME" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0a}Erasing Account...{0f}          [OK]
    echo.
    %cecho% {0a}Erasing Userdata...{0f}     [OK]
    echo.
)


IF "%Devices%" == "VIVO" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0a}Erasing Account...{0f}          [OK]
    echo.
    %cecho% {0a}Erasing Userdata...{0f}     [OK]
    echo.
)


IF "%Devices%" == "XIAOMI" (
::: Partition Config -> FRP
    %emmcdl% -p %USBComPort% -f %Loader% -d config %backup_config% -memoryname %MemoryName% >nul
    %emmcdl% -p %USBComPort% -f %Loader% -e config -memoryname %MemoryName% >nul
::: Partition Persist -> MiCloud
        %emmcdl% -p %USBComPort% -f %Loader% -d persist %backup_persist% -memoryname %MemoryName% >nul
        %emmcdl% -p %USBComPort% -f %Loader% -d persistbak %backup_persistbak% -memoryname %MemoryName% >nul
        %emmcdl% -p %USBComPort% -f %Loader% -e persist -memoryname %MemoryName% >nul
        %emmcdl% -p %USBComPort% -f %Loader% -e persistbak -memoryname %MemoryName% >nul
::: Partition Userdata
        %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

        %cecho% {0a}Backing-up config...{0f}    [OK]
        echo.
        %cecho% {0a}Backing-up persist...{0f}   [OK]
        echo.
        %cecho% {0a}Backing-up persistbak...{0f}[OK]
        echo.
        %cecho% {0a}Erasing Account...{0f}      [OK]
        echo.
        %cecho% {0a}Erasing Userdata...{0f}     [OK]
        echo.
)


IF "%Devices%" == "SAMSUNG" (
::: Partition Persistent -> FRP
    %emmcdl% -p %USBComPort% -f %Loader% -d persistent %backup_persistent% -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0a}Backing-up persistent...{0f}[OK]
    echo.
    %cecho% {0a}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0a}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "OTHER" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0a}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0a}Erasing Userdata...{0f}     [OK]
    echo.
)
