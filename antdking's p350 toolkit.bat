@echo off
color 0c
title SYSTEM
set loader=:
:loading
cls
echo _______________________________________________________________________________
echo.
echo                                   LOADING
echo _______________________________________________________________________________
echo.
echo                            =======================
echo                            %loader%
echo                            =======================
ping localhost -n 1 >nul
if %loader%==:: goto l3
if %loader%==::: goto l4
if %loader%==:::: goto l5
if %loader%==::::: goto l6
if %loader%==:::::: goto l7
if %loader%==::::::: goto l8
if %loader%==:::::::: goto l9
if %loader%==::::::::: goto l10
if %loader%==:::::::::: goto l11
if %loader%==::::::::::: goto l12
if %loader%==:::::::::::: goto l13
if %loader%==::::::::::::: goto l14
if %loader%==:::::::::::::: goto l15
if %loader%==::::::::::::::: goto l16
if %loader%==:::::::::::::::: goto l17
if %loader%==::::::::::::::::: goto l18
if %loader%==:::::::::::::::::: goto l19
if %loader%==::::::::::::::::::: goto l20
if %loader%==:::::::::::::::::::: goto l21
if %loader%==::::::::::::::::::::: goto l22
if %loader%==:::::::::::::::::::::: goto l23
if %loader%==%done2% goto done2
if %loader%==::::::::::::::::::::::: goto done1
ping localhost -n 1 >nul

set loader=::
goto loading
:l3
set loader=:::
goto loading
:l4
set loader=::::
goto loading
:l5
set loader=:::::
goto loading
:l6
set loader=::::::
goto loading
:l7
set loader=:::::::
goto loading
:l8
set loader=::::::::
goto loading
:l9
set loader=:::::::::
goto loading
:l10
set loader=::::::::::
goto loading
:l11
set loader=:::::::::::
goto loading
:l12
set loader=::::::::::::
goto loading
:l13
set loader=:::::::::::::
goto loading
:l14
set loader=::::::::::::::
goto loading
:l15
set loader=:::::::::::::::
goto loading
:l16
set loader=::::::::::::::::
goto loading
:l17
set loader=:::::::::::::::::
goto loading
:l18
set loader=::::::::::::::::::
goto loading
:l19
set loader=:::::::::::::::::::
goto loading
:l20
set loader=::::::::::::::::::::
goto loading
:l21
set loader=:::::::::::::::::::::
goto loading
:l22
set loader=::::::::::::::::::::::
goto loading
:l23
set loader=:::::::::::::::::::::::
goto loading

:done1
ping localhost -n 2 >nul
cls
color 09
echo _______________________________________________________________________________
echo.
echo                           antdking's LG P350 Toolkit
echo _______________________________________________________________________________
ping localhost -n 2 >nul
echo.
echo welcome to antdking's P350 Toolkit
echo this will guide you through rooting your phone,  
echo choosing a recovery and fixing common problems
ping localhost -n 2 >nul
echo please report any suggestions and problems you have
echo to me
timeout /t 10

:start
echo this tool relies heavily on adb
ping localhost -n 2 >nul
echo is your phone connected?
set /p choice=y/n...
if '%choice%'=='y' goto adbdevice
if '%choice%'=='Y' goto adbdevice
if '%choice%'=='n' goto plugin
if '%choice%'=='N' goto plugin
if '%choice%'=='0' goto lastres
ECHO %choice% please use y or n
ping localhost -n 2 >nul
goto start

:plugin
echo please plug in your device
ping localhost -n 2 >nul
echo is it in yet?
set /p choice=y/n...
if '%choice%'=='y' goto adbdevice
if '%choice%'=='Y' goto adbdevice
if '%choice%'=='n' goto plugin
if '%choice%'=='N' goto plugin
if '%choice%'=='0' goto lastres
ECHO %choice%please use y or n
ping localhost -n 2 >nul
goto plugin

:adbdevice
cls
cd dependancies
echo connecting to device...
adb devices
cd..
goto adbdevice2

:adbdevice2
echo does your device show up?
set /p choice=y/n...
if '%choice%'=='y' goto choose
if '%choice%'=='Y' goto choose
if '%choice%'=='n' goto debug
if '%choice%'=='N' goto debug
if '%choice%'=='0' goto lastres
ECHO please use y or n
ping localhost -n 2 >nul
goto adbdevice2

:debug
echo was device debugging enabled on your phone
echo when you tried connecting to device?
set /p choice=y/n...
if '%choice%'=='y' goto dcheck
if '%choice%'=='Y' goto dcheck
if '%choice%'=='n' echo please enable device debugging & ping localhost -n 2 >nul & goto debug2
if '%choice%'=='N' echo please enable device debugging & ping localhost -n 2 >nul & goto debug2
if '%choice%'=='0' goto lastres
ECHO please use y or n
ping localhost -n 2 >nul
goto debug

:debug2
echo is device debugging now enabled?
set /p choice=y/n...
if '%choice%'=='y' goto adbdevice
if '%choice%'=='Y' goto adbdevice
if '%choice%'=='n' echo please enable device debugging & ping localhost -n 2 >nul & goto debug2
if '%choice%'=='N' echo please enable device debugging & ping localhost -n 2 >nul & goto debug2
if '%choice%'=='0' goto lastres
ECHO please use y or n
ping localhost -n 2 >nul
goto debug2

:dcheck
echo did you just press "y" because you've
echo only just turned device debugging on?
set /p choice=y/n...
if '%choice%'=='y' echo numpty & ping localhost -n 3 >nul & goto adbdevice
if '%choice%'=='Y' echo numpty & ping localhost -n 3 >nul & goto adbdevice
if '%choice%'=='n' goto compcheck
if '%choice%'=='N' goto compcheck
if '%choice%'=='0' goto lastres
ECHO please use y or n
ping localhost -n 2 >nul
goto dcheck

:compcheck
echo does your computer detect your phone?
control /name Microsoft.DevicesAndPrinters
ping localhost -n 2 >nul
set /p choice=y/n...
if '%choice%'=='y' goto lastres 
if '%choice%'=='Y' goto lastres
if '%choice%'=='n' goto driver
if '%choice%'=='N' goto driver
if '%choice%'=='0' goto lastres
ECHO please use y or n
ping localhost -n 2 >nul
goto compcheck

:driver
echo have you installed the driver for your phone?
set /p choice=y/n...
if '%choice%'=='y' goto lastres
if '%choice%'=='Y' goto lastres
if '%choice%'=='n' goto driver2
if '%choice%'=='N' goto driver2
if '%choice%'=='0' goto lastres
ECHO please use y or n
ping localhost -n 2 >nul
goto driver

:driver2
echo is your device lg p350?
set /p choice=y/n...
if '%choice%'=='y' goto getdriver1
if '%choice%'=='Y' goto getdriver1
if '%choice%'=='n' goto getdriver2
if '%choice%'=='N' goto getdriver2
if '%choice%'=='0' goto lastres
ECHO please use y or n
ping localhost -n 2 >nul
goto driver2

:getdriver1
echo download drivers?
echo 1.download and install the drivers automatically
echo 2.open link to the drivers
echo 3.find drivers yourself and go to device detect
set /p choice=1/2/3...
if '%choice%'=='1' goto getdriverins
if '%choice%'=='2' goto openlink
if '%choice%'=='3' goto adbdevice
if '%choice%'=='0' goto lastres
ECHO please choose a number between 1 and 3
ping localhost -n 2 >nul
goto getdriver1

:openlink
echo opening link...
rundll32 url.dll,FileProtocolHandler http://www.lg.com/uk/support-mobile/lg-LGP350
echo install your driver
ping localhost -n 5 >nul
echo then please plug in your phone
ping localhost -n 2 >nul
echo go to device detect?
pause
goto adbdevice


:getdriverins
echo checking for previous installers
if not exist "driver" mkdir "driver"
cd driver\
if exist "*.exe" del /Q "*.exe" >nul
cd..
xcopy /q %0\..\dependancies\wget.exe %0\..\driver
echo initialising wget...
wget --output-document=driver.exe http://db.tt/PYKDKsUK
echo continue with installation?
echo CTRL + C to cancel job
timeout /t 10
echo the driver will now install
echo nothing is meant to pop up
del /Q wget.exe
driver.exe /s /sms
:wait
choice /t 1 /d Y > nul:
tasklist /FI "IMAGENAME eq driver.exe" | find /I "driver.exe" > nul:
if not errorlevel 1 goto wait
echo the driver is now installed
cd..
ping localhost -n 2 >nul
echo please plug in your phone
echo go to device detect?
pause
goto adbdevice

:getdriver2
echo please download and install the driver
echo from your phone's support page
ping localhost -n 6 >nul
:goback
echo if it is now installed, go to device detect?
set /p choice=y/n...
if '%choice%'=='y' goto adbdevice
if '%choice%'=='Y' goto adbdevice
if '%choice%'=='n' echo you can not continue without drivers & ping localhost -n 2>nul & now exiting... & ping localhost -n 2 >nul & exit
if '%choice%'=='N' echo you can not continue without drivers & ping localhost -n 2>nul & now exiting... & ping localhost -n 2 >nul & exit
if '%choice%'=='0' goto lastres
ECHO please use y or n
ping localhost -n 2 >nul
goto goback

:lastres
cls
echo choose any of these options to fix problems
echo 1. unplug and plug device back in, and return to device connect
echo. 
echo 2. attempt to reinstall drivers
echo. 
echo press 0 at any point to get back to this screen
echo. 
echo if you still can't get this to work, then there is a problem with your phone
echo I'm sorry that this did not work for you
echo good luck finding a way to install recovery :)
echo.
echo 3 exit
set /p choice=0-3...
if '%choice%'=='1' goto adbdevice
if '%choice%'=='2' goto driver2
if '%choice%'=='3' exit
if '%choice%'=='0' goto lastres
ECHO please choose a number between 0 and 3
ping localhost -n 2 >nul
goto lastres

:choose
cls
echo with first checks over we can now begin
ping localhost -n 2 >nul
echo what would you like to do today?
goto choose2
:choose2
echo [1]root your phone
echo [2]flash recovery onto your phone
echo [3]unroot device (only for stock rom!)
echo [X]Exit
set /p choice=1/2/3/X...
if '%choice%'=='1' goto root
if '%choice%'=='2' goto recoveryinstaller
if '%choice%'=='3' goto unroot
if '%choice%'=='x' echo I am sorry you want to leave :( & ping localhost -n 2 >nul & exiting.. & ping localhost n 2 >nul & exit
if '%choice%'=='X' echo I am sorry you want to leave :( & ping localhost -n 2 >nul & exiting.. & ping localhost n 2 >nul & exit
Echo please choose an option listed above
ping localhost -n 2 >nul
goto choose2

:recoveryinstaller
cls
echo loading...
ping localhost -n 2 >nul
cls
echo welcome to antdking's recovery installer
ping localhost -n 2 >nul
echo this will guide you through choosing a recovery
echo and installling
pause
goto pushrec

:pushrec
cls
echo please choose a recovery you want to use
echo [1] Drapalyuk's AmonRA 2.2.1
echo [2] Keyur's ClockworkMod 5.0.2.8
echo [3] Keyur's RZ Recovery
echo [4] Vivek's CWM touch Recovery 5.0.2.7
echo [5] Ron's ClockworkMod 6.0.1.0
echo [6] Stock Recovery (only flash if you have stock android and do not
echo want a custom recovery anymore)
set /p choice=1-5...
if '%choice%'=='1' goto drapamon
if '%choice%'=='2' goto keyurcwm
if '%choice%'=='3' goto keyurrz
if '%choice%'=='4' goto vivekcwmt
if '%choice%'=='5' goto roncwm
if '%choice%'=='6' goto stockrec
ECHO please choose a number between 1 and 5
ping localhost -n 2 >nul
goto pushrec

:drapamon
cls
echo are you sure you want to download and install AmonRA 2.2.1?
set /p choice=y/n...
if '%choice%'=='y' goto drapamon2
if '%choice%'=='Y' goto drapamon2
if '%choice%'=='n' goto pushrec
if '%choice%'=='N' goto pushrec
ECHO please use y or n
ping localhost -n 2 >nul
goto drapamon

:drapamon2
cls
echo credit to drapalyuk for creating this recovery
ping localhost -n 2 >nul
cd dependancies
if exist "recovery.img" del /q recovery.img
cd..
echo initialising wget...
if not exist "recoveries\" mkdir recoveries
cd recoveries
if not exist "amonra\" mkdir "amonra"
cd amonra\
if exist "*.*" del /Q *.*
cd..
cd..
xcopy /Q %0\..\dependancies\wget.exe %0\..\recoveries\amonra\ >nul
xcopy /Q %0\..\dependancies\7za.exe %0\..\recoveries\amonra\ >nul
cd recoveries\amonra\
echo downloading...
wget --output-document=amonra.zip http://db.tt/pUPLPCrv
cls
echo extracting zip...
ren *.zip recovery.zip
7za e -y recovery.zip >nul
echo zip extracted
echo configuring extracted files...
ren *.img recovery.img
cd..
cd..
xcopy /Q %0\..\recoveries\amonra\recovery.img %0\..\dependancies\
cd recoveries\amonra
if exist "*.*" del /q *.*
cd..
cd..
echo ready to flash Amonra to your phone
echo press enter to begin process
pause
goto flashrec

:keyurcwm
cls
echo are you sure you want to download and install ClockworkMod 5.0.2.8?
set /p choice=y/n...
if '%choice%'=='y' goto keyurcwm2
if '%choice%'=='Y' goto keyurcwm2
if '%choice%'=='n' goto pushrec
if '%choice%'=='N' goto pushrec
ECHO please use y or n
ping localhost -n 2 >nul
goto keyurcwm

:keyurcwm2
cls
echo credit to Keyur for creating this recovery
ping localhost -n 2 >nul
cd dependancies
if exist "recovery.img" del /q recovery.img
cd..
echo initialising wget...
if not exist "recoveries\" mkdir recoveries
cd recoveries
if not exist "keyurcwm\" mkdir "keyurcwm"
cd keyurcwm\
if exist "*.*" del /Q *.*
cd..
cd..
xcopy /Q %0\..\dependancies\wget.exe %0\..\recoveries\keyurcwm\ >nul
xcopy /Q %0\..\dependancies\7za.exe %0\..\recoveries\keyurcwm\ >nul
cd recoveries\keyurcwm\
echo downloading...
wget --output-document=keyurcwm.zip http://db.tt/wKJ78iXr
cls
echo extracting zip...
ren *.zip recovery.zip
7za e -y recovery.zip >nul
echo zip extracted
echo configuring extracted files...
ren *.img recovery.img
cd..
cd..
xcopy /Q %0\..\recoveries\keyurcwm\recovery.img %0\..\dependancies\
cd recoveries\keyurcwm
if exist "*.*" del /q *.*
cd..
cd..
echo ready to flash ClockworkMod to your phone
echo press enter to begin process
pause
goto flashrec

:keyurrz
cls
echo are you sure you want to download and install RZ recovery?
set /p choice=y/n...
if '%choice%'=='y' goto keyurrz2
if '%choice%'=='Y' goto keyurrz2
if '%choice%'=='n' goto pushrec
if '%choice%'=='N' goto pushrec
ECHO please use y or n
ping localhost -n 2 >nul
goto keyurrz

:keyurrz2
cls
echo credit to Keyur for creating this recovery
ping localhost -n 2 >nul
cd dependancies
if exist "recovery.img" del /q recovery.img
cd..
echo initialising wget...
if not exist "recoveries\" mkdir recoveries
cd recoveries
if not exist "keyurrz\" mkdir "keyurrz"
cd keyurrz\
if exist "*.*" del /Q *.*
cd..
cd..
xcopy /Q %0\..\dependancies\wget.exe %0\..\recoveries\keyurrz\ >nul
xcopy /Q %0\..\dependancies\7za.exe %0\..\recoveries\keyurrz\ >nul
cd recoveries\keyurrz\
echo downloading...
wget --output-document=keyurrz.zip http://db.tt/iydRzmde
cls
echo extracting zip...
ren *.zip recovery.zip
7za e -y recovery.zip >nul
echo zip extracted
echo configuring extracted files...
ren *.img recovery.img
cd..
cd..
xcopy /Q %0\..\recoveries\keyurrz\recovery.img %0\..\dependancies\
cd recoveries\keyurrz
if exist "*.*" del /q *.*
cd..
cd..
echo ready to flash RZ recovery to your phone
echo press enter to begin process
pause
goto flashrec

:vivekcwmt
cls
echo are you sure you want to download and install ClockworkMod 5 touch?
set /p choice=y/n...
if '%choice%'=='y' goto vivekcwmt2
if '%choice%'=='Y' goto vivekcwmt2
if '%choice%'=='n' goto pushrec
if '%choice%'=='N' goto pushrec
ECHO please use y or n
ping localhost -n 2 >nul
goto vivekcwmt

:vivekcwmt2
cls
echo credit to Vivek for creating this recovery
ping localhost -n 2 >nul
cd dependancies
if exist "recovery.img" del /q recovery.img
cd..
echo initialising wget...
if not exist "recoveries\" mkdir recoveries
cd recoveries
if not exist "vivekcwmt\" mkdir "vivekcwmt"
cd vivekcwmt\
if exist "*.*" del /Q *.*
cd..
cd..
xcopy /Q %0\..\dependancies\wget.exe %0\..\recoveries\vivekcwmt\ >nul
xcopy /Q %0\..\dependancies\7za.exe %0\..\recoveries\vivekcwmt\ >nul
cd recoveries\vivekcwmt\
echo downloading...
wget --output-document=vivekcwmt.zip http://db.tt/X8NNpwPt
cls
echo extracting zip...
ren *.zip recovery.zip
7za e -y recovery.zip >nul
echo zip extracted
echo configuring extracted files...
ren *.img recovery.img
cd..
cd..
xcopy /Q %0\..\recoveries\vivekcwmt\recovery.img %0\..\dependancies\
cd recoveries\vivekcwmt
if exist "*.*" del /q *.*
cd..
cd..
echo ready to flash ClockworkMod touch to your phone
echo press enter to begin process
pause
goto flashrec

:roncwm
cls
echo are you sure you want to download and install ClockworkMod 6?
set /p choice=y/n...
if '%choice%'=='y' goto roncwm2
if '%choice%'=='Y' goto roncwm2
if '%choice%'=='n' goto pushrec
if '%choice%'=='N' goto pushrec
ECHO please use y or n
ping localhost -n 2 >nul
goto romcwm

:roncwm2
cls
echo credit to Ron for creating this recovery
ping localhost -n 2 >nul
cd dependancies
if exist "recovery.img" del /q recovery.img
cd..
echo initialising wget...
if not exist "recoveries\" mkdir recoveries
cd recoveries
if not exist "roncwm\" mkdir "roncwm"
cd roncwm\
if exist "*.*" del /Q *.*
cd..
cd..
xcopy /Q %0\..\dependancies\wget.exe %0\..\recoveries\roncwm\ >nul
xcopy /Q %0\..\dependancies\7za.exe %0\..\recoveries\roncwm\ >nul
cd recoveries\roncwm\
echo downloading...
wget --output-document=roncwm.zip http://db.tt/ie5q24g2
cls
echo extracting zip...
ren *.zip recovery.zip
7za e -y recovery.zip >nul
echo zip extracted
echo configuring extracted files...
ren *.img recovery.img
cd..
cd..
xcopy /Q %0\..\recoveries\roncwm\recovery.img %0\..\dependancies\
cd recoveries\roncwm
if exist "*.*" del /q *.*
cd..
cd..
echo ready to flash ClockworkMod 6 to your phone
echo press enter to begin process
pause
goto flashrec

:stockrec
cls
echo WARNING!
echo this is only for those using stock android
echo DO NOT FLASH THIS ON CUSTOM ROMS
echo You will probably brick your phone
ping localhost -n 2 >nul
echo.
echo this recovery can also only do factory resets
echo you can not install custom roms with this
echo you must still have root permissions to flash this
echo do you wish to still install this recovery?
set /p choice=y/n...
if '%choice%'=='y' goto stockrec2
if '%choice%'=='Y' goto stockrec2
if '%choice%'=='n' goto pushrec
if '%choice%'=='N' goto pushrec
ECHO please use y or n
ping localhost -n 2 >nul
goto stockrec

:stockrec2
cls
echo credit to LG for creating this recovery
ping localhost -n 2 >nul
cd dependancies
if exist "recovery.img" del /q recovery.img
cd..
echo initialising wget...
if not exist "recoveries\" mkdir recoveries
cd recoveries
if not exist "stockrec\" mkdir "stockrec"
cd stockrec\
if exist "*.*" del /Q *.*
cd..
cd..
xcopy /Q %0\..\dependancies\wget.exe %0\..\recoveries\stockrec\ >nul
xcopy /Q %0\..\dependancies\7za.exe %0\..\recoveries\stockrec\ >nul
cd recoveries\stockrec\
echo downloading...
wget --output-document=stockrec.zip http://db.tt/pNHO1TX9
cls
echo extracting zip...
ren *.zip recovery.zip
7za e -y recovery.zip >nul
echo zip extracted
echo configuring extracted files...
ren *.img recovery.img
cd..
cd..
xcopy /Q %0\..\recoveries\stockrec\recovery.img %0\..\dependancies\
cd recoveries\stockrec
if exist "*.*" del /q *.*
cd..
cd..
echo ready to flash stock recovery to your phone
echo press enter to begin process
pause
goto flashrec

:flashrec
cls
cd dependancies
echo flashing recovery now...
adb -d wait-for-device shell "su -c 'rm sdcard/recovery.img'"
adb -d wait-for-device shell "su -c 'rm sdcard/flash_image'"
adb -d wait-for-device push recovery.img /sdcard/
adb -d wait-for-device push flash_image /sdcard/
adb -d wait-for-device shell "su -c 'mount -o remount,rw -t yaffs2 /dev/block/mtdblock1 /system'"
adb -d wait-for-device shell "su -c 'cat /sdcard/flash_image > /system/bin/flash_image'"
adb -d wait-for-device shell "su -c 'chmod 755 /system/bin/flash_image'"
adb -d wait-for-device shell "su -c 'sync'"
adb -d wait-for-device shell "su -c 'flash_image recovery /sdcard/recovery.img'"
adb -d wait-for-device shell "su -c 'sync'"

echo flashing now finished. rebooting to recovery..
echo press enter when ready to reboot
pause
echo rebooting...
adb -d wait-for-device shell "su -c 'reboot recovery'"
if exist "recovery.img" del /q recovery.img
cd..
echo your device has now rebooted
echo thank you for using antdking's recovery installer
ping localhost -n 2 >nul
echo exiting...
ping localhost -n 3 >nul
exit

:root
cls
echo hello and welcome to my rooting tool
ping localhost -n 2 >nul
echo hopefully I can root your device without any problems
ping localhost -n 2 >nul
echo WARNING!
echo rooting your device VOIDS your warranty
echo do this at your own risk
ping localhost -n 2 >nul
echo press CTRL + C to close
pause
goto root2

:root2
cd dependancies
adb devices
echo editing config file
adb -d wait-for-device shell "echo 1 > /data/local/lge_adb.conf"
echo your device will now be rebooted
echo hit enter to reboot
pause
echo after your device has rebooted, please enable usb debugging
echo settings>applications>development
adb -d wait-for-device reboot
echo press enter after usb debugging is enabled
pause
adb devices
echo pushing rooting script
adb -d wait-for-device push root\psneuter /data/local/tmp
echo running script
adb -d wait-for-device shell "cd /data/local/tmp ; chmod 777 psneuter ; ./psneuter"
echo script run. killing server
adb kill-server
ping localhost -n 2 >nul
adb devices
echo mounting system as re-writable
adb -d wait-for-device shell "mount -o remount,rw -t rfs /dev/block/st19 /system"
echo making root permanant
ping localhost -n 2 >nul
adb -d wait-for-device push root\busybox /system/bin
adb -d wait-for-device push root\su /system/bin
adb -d wait-for-device install root\Superuser.apk
ping localhost -n 2 >nul
adb -d wait-for-device shell "chmod 6755 /system/bin/busybox"
adb -d wait-for-device shell "chmod 6755 /system/bin/su"
adb -d wait-for-device shell "su -c /system/bin/busybox --install -s /system/bbin"
adb -d wait-for-device shell "mount -o remount,ro -t rfs /dev/block/st19 /system"
adb -d wait-for-device install root\RootCheckPro.apk
echo device must reboot
echo press enter to reboot
pause
adb -d reboot
echo rebooting...
eho press enter after enabling usb debugging
cd..
pause
echo please open the app "root check pro" and verify root access
ping localhost -n 2 >nul
echo if your device isn't rooted please contact me and close this window
ping localhost -n 2 >nul

:recoption
echo If you device is rooted, would you like to install a recovery?
echo recoveries allow you to add tweaks, install custom roms
echo and make backups
set /p choice=y/n...
if '%choice%'=='y' goto recoveryinstaller
if '%choice%'=='Y' goto recoveryinstaller
if '%choice%'=='n' echo I am sorry you want to leave :( & ping localhost -n 2 >nul & exiting.. & ping localhost n 2 >nul & exit
if '%choice%'=='N' echo I am sorry you want to leave :( & ping localhost -n 2 >nul & exiting.. & ping localhost n 2 >nul & exit
ECHO please use y or n
ping localhost -n 2 >nul
goto recoption

:unroot
cls
echo hello and welcome to antdking's unrooting tool
ping localhost -n 2 >nul
echo unrooting your phone is only recommended on stock roms
ping localhost -n 2 >nul
echo if you unroot your phone that isn't on a stock rom and
echo are unable to root your phone again, then that is your
echo own fault
ping localhost -n 2 >nul
echo do you wish to continue?
set /p choice=y/n...
if '%choice%'=='y' goto unroot2
if '%choice%'=='Y' goto unroot2
if '%choice%'=='n' goto choose
if '%choice%'=='N' goto choose
ECHO please use y or n
ping localhost -n 2 >nul
goto unroot

:unroot2
cls
echo please ensure that usb debugging is enabled
pause
echo unrooting device...
cd dependancies
adb devices
echo uninstalling superuser...
adb -d wait-for-device uninstall com.noshufou.android.su
echo uninstalling superSU if installed before...
adb -d wait-for-device uninstall eu.chainfire.supersu
echo mounting system as rw...
adb -d wait-for-devices shell "mount -o remount,rw -t rfs /dev/block/st19 /system"
adb -d wait-for-device shell "cd /system/bin ; rm busybox ; rm su"
adb -d wait-for-device shell "cd system/xbin ; rm busybox ; rm su"
echo your device should now be unrooted
echo rebooting your device...
pause
adb -d wait-for-device reboot
echo to check your device is unrooted, try running any app that
echo requires root access
ping localhost -n 2 >nul
:anythingelse
echo do you wish to do anything else?
set /p choice=y/n...
if '%choice%'=='y' goto choose
if '%choice%'=='Y' goto choose
if '%choice%'=='n' echo I am sorry you want to leave :( & ping localhost -n 2 >nul & exiting.. & ping localhost n 2 >nul & exit
if '%choice%'=='N' echo I am sorry you want to leave :( & ping localhost -n 2 >nul & exiting.. & ping localhost n 2 >nul & exit
ECHO please use y or n
ping localhost -n 2 >nul
goto anythingelse





