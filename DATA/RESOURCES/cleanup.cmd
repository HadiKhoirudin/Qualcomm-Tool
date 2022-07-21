@echo off
set Select_Menu_Oppo=
set Select_Menu_Realme=
set Select_Menu_Vivo=
set Select_Menu_Xiaomi=
set Select_Menu_Samsung=
set MemoryName=
set Loader=

del /F /Q %~dp2DATA\TMP\patch.xml
del /F /Q %~dp2DATA\TMP\partition
del /F /Q %~dp2DATA\TMP\persist.img
del /F /Q %~dp2DATA\TMP\USBComPort.txt
