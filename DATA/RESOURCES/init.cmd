@echo off
Title QUALCOMM TOOL V2.0
color 4f
Mode 72,34

set comPort=
set DateTime=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%%TIME:~0,2%%TIME:~3,2%
call %~dp2DATA\RESOURCES\cleanup.cmd
