::: Init Page
@echo off
@shift /0
set datetime=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%%TIME:~0,2%%TIME:~3,2%
set header=          Q U A L C O M M    T O O L    V 3 . 0    -    R C 3  
set title=QUALCOMM TOOL V3.0 - RC3
set USBComPort=



::: Set-Up Assets
set ldr_oppo=%~dp2assets\devices\loaders\oppo
set ldr_realme=%~dp2assets\devices\loaders\realme
set ldr_vivo=%~dp2assets\devices\loaders\vivo
set ldr_xiaomi=%~dp2assets\devices\loaders\xiaomi
set ldr_samsung=%~dp2assets\devices\loaders\samsung

set reboot=%~dp2assets\resources\power\boot.xml
set xml_patch=%~dp2assets\resources\misc\patch.xml

set userdata=%~dp2assets\resources\userdata\userdata.img
set backup_config=%~dp2assets\backup\%datetime%-config.bin
set backup_misc=%~dp2assets\backup\%datetime%-misc.img
set backup_persist=%~dp2assets\backup\%datetime%-persist.bin
set backup_persistbak=%~dp2assets\backup\%datetime%-persistbak.bin
set backup_persistent=%~dp2assets\backup\%datetime%-persistent.bin


set backup_efs_fsg=%~dp2assets\backup\%datetime%-efs_fsg.bin
set backup_efs_modemst1=%~dp2assets\backup\%datetime%-efs_modemst1.bin
set backup_efs_modemst2=%~dp2assets\backup\%datetime%-efs_modemst2.bin

::: Set-Up Application
set cache=%~dp2application\cache
set page=%~dp2application\views\template\page.cmd
set setup=%~dp2application\config\setup.cmd
set qcusb=%~dp2application\config\qcusb.cmd



::: Set-Up Helper
:: Button
set batbox=%~dp2application\helpers\batbox.exe
set box=%~dp2application\helpers\box.cmd
set button=%~dp2application\helpers\button.cmd

:: Color Echo
set cecho=%~dp2application\helpers\cecho.exe

:: Messagges
set msgw1=Warning !!!
set msgw2=This Operation Will Erase Userdata and Exsisting Data Account.



:: Set-Up Program
set aboutme=explorer "https://www.youtube.com/c/HadiKIT"
set cleanup=%~dp2application\helpers\cleanup.cmd
set confirm=%~dp2application\views\process\confirm.cmd
set driver=%~dp2application\helpers\driver.cmd
set emmcdl=%~dp2application\helpers\emmcdl.exe
set getinput=%~dp2application\helpers\getinput.exe
set loading=%~dp2application\helpers\loading.cmd
set repl=%~dp2application\helpers\repl.cmd
set sleep=%~dp2application\helpers\sleep.exe



::: Set-Up Controller
set application=%~dp2application\index.cmd
set main=%~dp2application\controllers\main.cmd
set menu_oppo=%~dp2application\controllers\menu_oppo.cmd
set menu_realme=%~dp2application\controllers\menu_realme.cmd
set menu_vivo=%~dp2application\controllers\menu_vivo.cmd
set menu_xiaomi=%~dp2application\controllers\menu_xiaomi.cmd
set menu_samsung=%~dp2application\controllers\menu_samsung.cmd



::: Set-Up Models
set process=%~dp2application\models\process.cmd
set process-manual=%~dp2application\models\process-manual.cmd
set process-reset-factory=%~dp2application\models\process-reset-factory.cmd
set process-reset-safe-data=%~dp2application\models\process-reset-safe-data.cmd
set process-reset-account=%~dp2application\models\process-reset-account.cmd
set process-reset-efs-imei=%~dp2application\models\process-efs-imei.cmd
