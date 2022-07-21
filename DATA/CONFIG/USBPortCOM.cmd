@echo off

%~dp2DATA\BIN\emmcdl     -l  | findstr   "COM" > %~dp2DATA\TMP\Port.txt
echo.

for /F "tokens=5 delims=() " %%a in (%~dp2DATA\TMP\Port.txt) do (
   set USBComPort=%%a
   )
   del /F /Q %~dp2DATA\TMP\Port.txt
