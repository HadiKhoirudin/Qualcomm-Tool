@echo off

IF "%Devices%" == "AMAZON" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "ASUS" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "BLACKBERRY" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "COOLPAD" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "FANCYMAKER" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "FOXCONN" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "GIONEE" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "HISENSE" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "HMD" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "HUAQIN" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "HUAWEI" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "LENOVO" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "LETV" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "LG" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "LONGCHEER" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "LYF" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "MEIZU" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "MICROMAX" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "MICROSOFT" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "MOTOROLA" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "NOKIA" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "ONEPLUS" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "OPPO" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)


IF "%Devices%" == "REALME" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)


IF "%Devices%" == "SAMSUNG" (
::: Partition Persistent -> FRP
    %emmcdl% -p %USBComPort% -f %Loader% -d persistent -o %backup_persistent% -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Backing-up persistent...{0f}[OK]
    echo.
    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)


IF "%Devices%" == "SHARP" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "SMARTISAN" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "SONY" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "TCL" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "TPLINK" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "VIVO" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "WINGTECH" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

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
::: Partition Userdata
        %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

        %cecho% {0b}Backing-up config...{0f}    [OK]
        echo.
        %cecho% {0b}Backing-up persist...{0f}   [OK]
        echo.
        %cecho% {0b}Backing-up persistbak...{0f}[OK]
        echo.
        %cecho% {0b}Erasing Account...{0f}      [OK]
        echo.
        %cecho% {0b}Erasing Userdata...{0f}     [OK]
        echo.
)

IF "%Devices%" == "YULONG" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "ZTE" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)

IF "%Devices%" == "OTHER" (
::: Partition FRP
    %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
::: Partition Userdata
    %emmcdl% -p %USBComPort% -f %Loader% -e userdata -memoryname %MemoryName% >nul

    %cecho% {0b}Erasing Account...{0f}      [OK]
    echo.
    %cecho% {0b}Erasing Userdata...{0f}     [OK]
    echo.
)
