@echo off
::: Partition EFS
    %emmcdl% -p %USBComPort% -f %Loader% -d fsg %backup_efs_fsg% -memoryname %MemoryName% >nul
    %emmcdl% -p %USBComPort% -f %Loader% -d modemst1 %backup_efs_modemst1% -memoryname %MemoryName% >nul
    %emmcdl% -p %USBComPort% -f %Loader% -d modemst2 %backup_efs_modemst2% -memoryname %MemoryName% >nul
    %emmcdl% -p %USBComPort% -f %Loader% -e fsg -memoryname %MemoryName% >nul
    %emmcdl% -p %USBComPort% -f %Loader% -e modemst1 -memoryname %MemoryName% >nul
    %emmcdl% -p %USBComPort% -f %Loader% -e modemst2 -memoryname %MemoryName% >nul

    %cecho% {0a}Backing-up EFS IMEI...  {0f}[OK]
    echo.
    %cecho% {0a}Erasing EFS IMEI... {0f}    [OK]
    echo.
