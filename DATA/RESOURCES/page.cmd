@echo off
@shift /0
Mode 72,34
%~dp2DATA\BIN\batbox.exe /h 0
set cecho= %~dp2DATA\BIN\cecho.exe
Title QUALCOMM TOOL V3.0 - RC1
set comPort=
set DateTime=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%%TIME:~0,2%%TIME:~3,2%
call %~dp2DATA\RESOURCES\cleanup.cmd
cls
echo.
%cecho% {0f}
echo.          Q U A L C O M M    T O O L    V 3 . 0    -    R C 1           
echo.                   A    S I M P L E    U N L O C K E R                  
echo. ______________________________________________________________________
%cecho% {0b}
echo. Credit : 
echo.          - Bjoern Kerler (QUALCOMM FIREHOSE ATTACKER SOURCE CODE)
echo.          - Hary Sulteng  (GSM SULTENG)
echo.          - HadiK IT      (Hadi Khoirudin, S. Kom. - SOFTWARE ENGINEER)
%cecho% {0f}
echo. ______________________________________________________________________
echo.
echo.%Dialog%

