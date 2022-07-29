@echo off
@shift /0
Mode 72,34

call %cleanup%
call %~dp2application\index.cmd
