@echo off

cls
set dialog=***                  S E L E C T  O P E R A T I O N                  ***
call %page%
call %box%
call %process-devices-model% %Devices%
call %setup_backup% %Model%
echo.
echo.
echo.
echo.
echo.------------------------------------------------------------------------
echo.Selected Device : %Devices% %Model%
echo.Memory Name     : %MemoryName%
echo.------------------------------------------------------------------------
%getinput% /m %Press% /h 72

:: Check for the pressed button 
echo.
if %errorlevel%==1 (

:: Set-Up Device Operation
set Operation=RESET FACTORY

:: Execute
call %process% %info_backup% %Devices% %Loader% %MemoryName% %Operation%
)


if %errorlevel%==2 (

:: Set-Up Device Operation
set Operation=RESET SAFE DATA

:: Execute
call %process% %info_backup% %Devices% %Loader% %MemoryName% %Operation%
)


if %errorlevel%==3 (

:: Set-Up Device Operation
set Operation=RESET ACCOUNT

:: Execute
call %process% %info_backup% %Devices% %Loader% %MemoryName% %Operation%
)


if %errorlevel%==4 (

:: Set-Up Device Operation
set Operation=RESET EFS IMEI

:: Execute
call %process% %info_backup% %Devices% %Loader% %MemoryName% %Operation%
)


if %errorlevel%==5 (

:: Set-Up Device Operation
set Operation=REBOOT DEVICE

:: Execute
call %process% %info_backup% %Devices% %Loader% %MemoryName% %Operation%
)

if %errorlevel%==6 call %Menu%

if %errorlevel%==7 (

:: Set-Up Device Operation
set Operation=UNLOCK BOOTLOADER

:: Execute
call %process% %info_backup% %Devices% %Loader% %MemoryName% %Operation%
)

if %errorlevel%==8 (

:: Set-Up Device Operation
set Operation=RELOCK BOOTLOADER

:: Execute
call %process% %info_backup% %Devices% %Loader% %MemoryName% %Operation%
)

call %Menu%
