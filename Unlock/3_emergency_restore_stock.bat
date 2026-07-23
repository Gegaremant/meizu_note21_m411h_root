@echo off
cd /d "%~dp0"
echo ====================================================
echo STEP 3: EMERGENCY STOCK RESTORE (UNBRICK)
echo ====================================================
echo.
echo Use this script ONLY if the phone fails to boot or gets stuck in a black screen.
echo.
echo Please force-turn off the phone:
echo 1. Disconnect the USB cable.
echo 2. Press and hold Volume Up + Power buttons for 12-15 seconds.
echo    (The phone will vibrate or shut down, becoming completely black and off).
echo.
echo Once it is completely turned off:
echo Press any key in this window, then hold Volume Down and connect it to PC.
echo.
pause

.\spd_dump.exe --wait 300 exec_addr 0x65015f08 fdl fdl1-dl.bin 0x65000800 fdl fdl2-dl.bin 0x9efffe00 exec w splloader u-boot-spl-16k-sign.bin w uboot_a uboot_a_bak.bin w uboot_b uboot_bak.bin w misc misc-wipe.bin reset

echo.
echo Recovery process finished! The phone should now reboot normally into Android.
pause
