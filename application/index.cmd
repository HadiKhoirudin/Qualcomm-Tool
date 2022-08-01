@echo off
@shift /0
Mode 72,34
call %~dp2application\config\setup.cmd

%batbox% /h 0
call %main%
