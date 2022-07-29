@echo off

cls
set dialog=***                  S E L E C T  O P E R A T I O N                  ***
call %page%
Call %button%  5 12 "RESET FACTORY" 48 12 "RESET SAFE DATA" 5 15 "RESET ACCOUNT" 48 15 "RESET EFS  IMEI" 25 18 "      BACK      " # Press
echo.
echo.
echo.
echo.%msgw1%
echo.%msgw2%
%getinput% /m %Press% /h 72

:: Check for the pressed button 
echo.
if %errorlevel%==1 (

:: Set-Up Device Operation
set Operation=RESET FACTORY

:: Execute
call %process% %Devices% %Loader% %MemoryName% %Operation%
)


if %errorlevel%==2 (

:: Set-Up Device Operation
set Operation=RESET SAFE DATA

:: Execute
call %process% %Devices% %Loader% %MemoryName% %Operation%
)


if %errorlevel%==3 (

:: Set-Up Device Operation
set Operation=RESET ACCOUNT

:: Execute
call %process% %Devices% %Loader% %MemoryName% %Operation%
)


if %errorlevel%==4 (

:: Set-Up Device Operation
set Operation=RESET EFS IMEI

:: Execute
call %process% %Devices% %Loader% %MemoryName% %Operation%
)


if %errorlevel%==5 call %Menu%
call %Menu%
