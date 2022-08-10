@echo off
IF "%Devices%" == "OPPO" (


::: Partition FRP
    for /f "delims= " %%c in ('type %cache%\partition^|find "frp"') do (
      set "line=%%c"
      set "line=!line:*frp =!
      set /a "result_frp=!line:~1!" 2>nul
    )
        IF "%result_frp%" == "1" (for /F "Tokens=7 " %%d in ('findstr /I "frp" %cache%\partition') do (echo.Partition FRP Sector       : %%d)
            ) ELSE (
                %cecho% {04}Error please disconnect battery and try again! {0f}
                echo.
                pause
                call %Menu%
            )
            %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
            %cecho% {0a}Erasing FRP...{0f}          [OK]
            echo.
)


IF "%Devices%" == "REALME" (


::: Partition FRP
    for /f "delims= " %%c in ('type %cache%\partition^|find "frp"') do (
      set "line=%%c"
      set "line=!line:*frp =!
      set /a "result_frp=!line:~1!" 2>nul
    )
        IF "%result_frp%" == "1" (for /F "Tokens=7 " %%d in ('findstr /I "frp" %cache%\partition') do (echo.Partition FRP Sector       : %%d)
            ) ELSE (
                %cecho% {04}Error please disconnect battery and try again! {0f}
                echo.
                pause
                call %Menu%
            )
            %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
            %cecho% {0a}Erasing FRP...{0f}          [OK]
            echo.
)



IF "%Devices%" == "VIVO" (


::: Partition FRP
    for /f "delims= " %%c in ('type %cache%\partition^|find "frp"') do (
      set "line=%%c"
      set "line=!line:*frp =!
      set /a "result_frp=!line:~1!" 2>nul
    )
        IF "%result_frp%" == "1" (for /F "Tokens=7 " %%d in ('findstr /I "frp" %cache%\partition') do (echo.Partition FRP Sector       : %%d)
            ) ELSE (
                %cecho% {04}Error please disconnect battery and try again! {0f}
                echo.
                pause
                call %Menu%
            )
            %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
            %cecho% {0a}Erasing FRP...{0f}          [OK]
            echo.
)



IF "%Devices%" == "XIAOMI" (


::: Partition Config -> FRP
    for /f "delims= " %%a in ('type %cache%\partition^|find "config"') do (
    set "line=%%a"
    set "line=!line:*config =!
    set /a "result_config=!line:~1!" 2>nul
    )
        IF "%result_config%" == "1" (for /F "Tokens=7 skip=1 " %%b in ('findstr /I "config" %cache%\partition') do (echo.Partition Config Sector    : %%b)
            ) ELSE (
                %cecho% {04}Error please disconnect battery and try again! {0f}
                echo.
                pause
                call %Menu%
            )
            %emmcdl% -p %USBComPort% -f %Loader% -d config %backup_config% -memoryname %MemoryName% >nul
            %cecho% {0a}Backing-up config...{0f}    [OK]
            echo.
            %emmcdl% -p %USBComPort% -f %Loader% -e config -memoryname %MemoryName% >nul
            %cecho% {0a}Erasing FRP...{0f}          [OK]
            echo.


::: Partition Persist -> MiCloud
    for /f "delims= " %%c in ('type %cache%\partition^|find "persist"') do (
    set "line=%%c"
    set "line=!line:*persist =!
    set /a "result_persist=!line:~1!" 2>nul
    )
        IF "%result_persist%" == "1" (for /F "Tokens=7 " %%d in ('findstr /I "persist" %cache%\partition') do (echo.Partition Persist Sector   : %%d))
            %emmcdl% -p %USBComPort% -f %Loader% -d persist %backup_persist% -memoryname %MemoryName% >nul
            %cecho% {0a}Backing-up persist...{0f}   [OK]
            echo.
            %emmcdl% -p %USBComPort% -f %Loader% -d persistbak %backup_persistbak% -memoryname %MemoryName% >nul
            %cecho% {0a}Backing-up persistbak...{0f}[OK]
            echo.
            %emmcdl% -p %USBComPort% -f %Loader% -e persist -memoryname %MemoryName% >nul
            %emmcdl% -p %USBComPort% -f %Loader% -e persistbak -memoryname %MemoryName% >nul
            %cecho% {0a}Erasing MiCloud...{0f}      [OK]
            echo.

)


IF "%Devices%" == "SAMSUNG" (


::: Partition Config -> FRP
    for /f "delims= " %%a in ('type %cache%\partition^|find "persistent"') do (
    set "line=%%a"
    set "line=!line:*persistent =!
    set /a "result_persistent=!line:~1!" 2>nul
    )
        IF "%result_persistent%" == "1" (for /F "Tokens=7 skip=1 " %%b in ('findstr /I "persistent" %cache%\partition') do (echo.Partition Persistent Sector: %%b)
            ) ELSE (
                %cecho% {04}Error please disconnect battery and try again! {0f}
                echo.
                pause
                call %Menu%
            )
            %emmcdl% -p %USBComPort% -f %Loader% -d persistent %backup_persistent% -memoryname %MemoryName% >nul
            %cecho% {0a}Backing-up persistent...{0f}[OK]
            echo.
            %emmcdl% -p %USBComPort% -f %Loader% -e config -memoryname %MemoryName% >nul
            %cecho% {0a}Erasing Account...{0f}      [OK]
            echo.

)

IF "%Devices%" == "OTHER" (


::: Partition FRP
    for /f "delims= " %%c in ('type %cache%\partition^|find "frp"') do (
      set "line=%%c"
      set "line=!line:*frp =!
      set /a "result_frp=!line:~1!" 2>nul
    )
        IF "%result_frp%" == "1" (for /F "Tokens=7 " %%d in ('findstr /I "frp" %cache%\partition') do (echo.Partition FRP Sector       : %%d)
            ) ELSE (
                %cecho% {04}Error please disconnect battery and try again! {0f}
                echo.
                pause
                call %Menu%
            )
            %emmcdl% -p %USBComPort% -f %Loader% -e frp -memoryname %MemoryName% >nul
            %cecho% {0a}Erasing FRP...{0f}          [OK]
            echo.
)
