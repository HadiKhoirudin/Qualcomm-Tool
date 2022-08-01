@echo off

cls
set dialog=***                  S E L E C T  O P E R A T I O N                  ***
call %page%
call %box%
Call %button%  5 12 "RESET FACTORY" 48 12 "RESET SAFE DATA" 5 15 "RESET ACCOUNT" 48 15 "RESET EFS  IMEI" 25 18 "      BACK      " # Press
call %setup_backup% %Model%
echo.
echo.
echo.
echo.
echo.------------------------------------------------------------------------
echo.Selected Device : Brand [%Devices%] Model [%Model%]
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


if %errorlevel%==5 call %Menu%
call %Menu%
