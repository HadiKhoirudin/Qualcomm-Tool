@echo off
set info_backup=%Model%
set info_backup=%info_backup: =_%

set backup_config=%~dp2assets\backup\%info_backup%-%datetime%-config.bin
set backup_devinfo=%~dp2assets\backup\%info_backup%-%datetime%-devinfo.bin
set backup_persist=%~dp2assets\backup\%info_backup%-%datetime%-persist.bin
set backup_persistbak=%~dp2assets\backup\%info_backup%-%datetime%-persistbak.bin
set backup_persistent=%~dp2assets\backup\%info_backup%-%datetime%-persistent.bin

set backup_efs_fsg=%~dp2assets\backup\%info_backup%-%datetime%-efs_fsg.bin
set backup_efs_modemst1=%~dp2assets\backup\%info_backup%-%datetime%-efs_modemst1.bin
set backup_efs_modemst2=%~dp2assets\backup\%info_backup%-%datetime%-efs_modemst2.bin
