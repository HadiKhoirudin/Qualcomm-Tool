@echo off
set Loader=
set MemoryName=

del /F /Q %cache%\patch.xml >nul 2>&1
del /F /Q %cache%\partition >nul 2>&1
del /F /Q %cache%\persist.img >nul 2>&1
del /F /Q %cache%\Port.txt >nul 2>&1
