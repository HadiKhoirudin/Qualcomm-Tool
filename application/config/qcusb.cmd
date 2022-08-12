@echo off

%emmcdl%     -l  | findstr   "COM" > %cache%\Port.txt
echo.

for /F "tokens=5 delims=() " %%a in (%cache%\Port.txt) do (
   set USBComPort=%%a
   )
   del /F /Q %cache%\Port.txt >nul 2>&1
