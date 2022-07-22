@echo off
set MemoryName=
set Loader=

del /F /Q %~dp2DATA\TMP\patch.xml >nul 2>&1
del /F /Q %~dp2DATA\TMP\partition >nul 2>&1
del /F /Q %~dp2DATA\TMP\persist.img >nul 2>&1
del /F /Q %~dp2DATA\TMP\USBComPort.txt >nul 2>&1

