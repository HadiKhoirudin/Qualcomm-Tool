@echo off

::: Partition EFS
    for /f "delims= " %%c in ('type %cache%\partition^|find "fsg"') do (
      set "line=%%c"
      set "line=!line:*fsg =!
      set /a "result_fsg=!line:~1!" 2>nul
    )
        IF "%result_frp%" == "1" (for /F "Tokens=7 " %%d in ('findstr /I "fsg" %cache%\partition') do (echo.Partition EFS Sector       : %%d)
            ) ELSE (
                %cecho% {04}Error please disconnect battery and try again! {0f}
                echo.
                pause
                call %Menu%
            )
            %emmcdl% -p %USBComPort% -f %Loader% -d fsg %backup_efs_fsg% -memoryname %MemoryName% >nul
            %emmcdl% -p %USBComPort% -f %Loader% -d modemst1 %backup_efs_modemst1% -memoryname %MemoryName% >nul
            %emmcdl% -p %USBComPort% -f %Loader% -d modemst2 %backup_efs_modemst2% -memoryname %MemoryName% >nul
            %cecho% {0a}Backing-up EFS IMEI...  {0f}[OK]
            echo.
            %emmcdl% -p %USBComPort% -f %Loader% -e fsg -memoryname %MemoryName% >nul
            %emmcdl% -p %USBComPort% -f %Loader% -e modemst1 -memoryname %MemoryName% >nul
            %emmcdl% -p %USBComPort% -f %Loader% -e modemst2 -memoryname %MemoryName% >nul
            %cecho% {0a}Erasing EFS IMEI... {0f}    [OK]
            echo.
