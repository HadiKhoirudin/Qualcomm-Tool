::: Init Page
@echo off
@shift /0
set datetime=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%%TIME:~0,2%%TIME:~3,2%
set header=          Q U A L C O M M    T O O L    V 3 . 0    -    R C 4  
set title=QUALCOMM TOOL V3.0 - RC4
set USBComPort=



::: Set-Up Assets
set ldr_oppo=%~dp2assets\devices\loaders\oppo
set ldr_realme=%~dp2assets\devices\loaders\realme
set ldr_vivo=%~dp2assets\devices\loaders\vivo
set ldr_xiaomi=%~dp2assets\devices\loaders\xiaomi
set ldr_samsung=%~dp2assets\devices\loaders\samsung

set reboot=%~dp2assets\resources\power\boot.xml
set xml_misc_patch=%~dp2assets\resources\misc\patch.xml
set xml_devinfo_path=%~dp2assets\resources\devinfo

set userdata=%~dp2assets\resources\userdata\userdata.img

::: Set-Up Application
set cache=%~dp2application\cache
set box=%~dp2application\views\template\box.cmd
set browse_loader=%~dp2assets\input_file_manual_loader\
set page=%~dp2application\views\template\page.cmd
set setup=%~dp2application\config\setup.cmd
set setup_backup=%~dp2application\config\setup_backup.cmd
set qcusb=%~dp2application\config\qcusb.cmd



::: Set-Up Helper
:: Button
set batbox=%~dp2application\helpers\batbox.exe
set button=%~dp2application\helpers\button.cmd

:: Color Echo
set cecho=%~dp2application\helpers\cecho.exe

:: Messagges
set msgw1= Info ! Auto Backup Feature [ON]
set msgw2= Backup file will be saving at ~\Qualcomm-Tool\assets\backup\...



:: Set-Up Program
set aboutme=explorer "https://www.youtube.com/c/hadikit?sub_confirmation=1"
set cleanup=%~dp2application\helpers\cleanup.cmd
set confirm=%~dp2application\views\process\confirm.cmd
set driver=%~dp2application\helpers\driver.cmd
set emmcdl=%~dp2application\helpers\emmcdl.exe
set getinput=%~dp2application\helpers\getinput.exe
set loading=%~dp2application\helpers\loading.cmd
set repl=%~dp2application\helpers\repl.cmd
set sleep=%~dp2application\helpers\sleep.exe
set xiaomiedl=%~dp2application\helpers\xiaomiedl.exe
set vivoedl=%~dp2application\helpers\vivoedl.exe



::: Set-Up Controller
set application=%~dp2application\index.cmd
set main=%~dp2application\controllers\main.cmd
set menu_oppo=%~dp2application\controllers\menu_oppo.cmd
set menu_realme=%~dp2application\controllers\menu_realme.cmd
set menu_vivo=%~dp2application\controllers\menu_vivo.cmd
set menu_xiaomi=%~dp2application\controllers\menu_xiaomi.cmd
set menu_samsung=%~dp2application\controllers\menu_samsung.cmd
set menu_fastboot_edl=%~dp2application\controllers\menu_fastboot_edl.cmd
set menu_manual_loader=%~dp2application\controllers\menu_manual_loader.cmd



::: Set-Up Models
set process=%~dp2application\models\process.cmd
set process-reset-factory=%~dp2application\models\process-reset-factory.cmd
set process-reset-safe-data=%~dp2application\models\process-reset-safe-data.cmd
set process-reset-account=%~dp2application\models\process-reset-account.cmd
set process-reset-efs-imei=%~dp2application\models\process-efs-imei.cmd
set process-unlock-bootloader=%~dp2application\models\process-unlock-bootloader.cmd
set process-relock-bootloader=%~dp2application\models\process-relock-bootloader.cmd
