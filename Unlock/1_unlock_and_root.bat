@echo off
setlocal enabledelayedexpansion
cd /d "%~dp0"

echo ====================================================
echo MEIZU NOTE 21 UNIFIED BOOTLOADER UNLOCK & ROOT TOOL
echo ====================================================
echo.
echo This script will perform a safe, customized unlock and root process
echo using the phone's OWN backups instead of pre-existing bootloaders.
echo.
echo WARNING: This will completely WIPE all data on the phone!
echo.
echo Please prepare the target Meizu Note 21:
echo 1. Turn off the phone completely.
echo 2. DO NOT connect the USB cable yet.
echo.
echo Press any key to start, then IMMEDIATELY:
echo Press and hold the Volume Down button and connect the USB cable.
echo.
pause

echo.
echo [STEP 1/5] Dumping stock partitions for safety...
.\spd_dump.exe --wait 300 exec_addr 0x65015f08 fdl fdl1-dl.bin 0x65000800 fdl fdl2-dl.bin 0x9efffe00 exec r splloader r uboot_a r uboot_b r vbmeta_a r vbmeta_b r boot_b reset

:: Check if dump files exist
if not exist "splloader.bin" (
    echo [ERROR] Failed to dump partitions. Make sure connection is stable.
    pause
    exit /b
)

:: Rename files to keep them separate from the first phone's backups
move /y splloader.bin splloader_new.bin >nul
move /y uboot_a.bin uboot_a_new.bin >nul
move /y uboot_b.bin uboot_b_new.bin >nul
move /y vbmeta_a.bin vbmeta_a_new.bin >nul
move /y vbmeta_b.bin vbmeta_b_new.bin >nul
move /y boot_b.bin boot_b_new.bin >nul

echo.
echo Stocks successfully dumped from the phone:
echo - splloader_new.bin
echo - uboot_a_new.bin
echo - uboot_b_new.bin
echo - vbmeta_a_new.bin
echo - vbmeta_b_new.bin
echo - boot_b_new.bin
echo.

echo [STEP 2/5] Patching vbmeta images and checking boot compatibility...
python patch_vbmeta_new.py > vbmeta_patch.log
type vbmeta_patch.log
findstr /C:"VBMETA PATCH SUCCESS" vbmeta_patch.log >nul
if !errorlevel! neq 0 (
    echo [ERROR] Failed to patch vbmeta. Make sure Python is installed.
    pause
    exit /b
)

python check_boot_compat.py > boot_check.log
type boot_check.log
set use_magisk_boot=1
findstr /C:"BOOT COMPATIBILITY: IDENTICAL" boot_check.log >nul
if !errorlevel! neq 0 (
    echo.
    echo [WARNING] The dumped boot image is different from the first phone!
    echo We CANNOT use the pre-patched root_boot.img directly.
    echo You will need to manually patch boot_b_new.bin in the Magisk app later.
    set use_magisk_boot=0
)
echo.

echo [STEP 3/5] Starting bootloader unlock exploit...
echo Disconnect the phone. Turn it off (hold Vol Up + Power for 15 seconds).
echo.
echo Press any key in this window, then immediately:
echo Press and hold the Volume Down button and connect the USB cable.
echo.
pause

.\spd_dump.exe --wait 300 exec_addr 0x65015f08 fdl fdl1-dl.bin 0x65000800 fdl fdl2-dl.bin 0x9efffe00 exec w uboot_a fdl2-cboot.bin w uboot_b fdl2-cboot.bin e splloader reset

echo.
echo Exploit stage 1 complete. Custom loader flashed.
echo IMPORTANT: DO NOT DISCONNECT THE CABLE OR PRESS ANY BUTTONS!
echo The phone has reset and returned to BootROM mode automatically.
echo Waiting 5 seconds for the USB handshake...
timeout /t 5 /nobreak

echo Loading spl-unlock in RAM to boot the custom uboot...
.\spd_dump.exe exec_addr 0x65015f08 fdl spl-unlock.bin 0x65000800

echo.
echo Exploit executed successfully! The key has been written to miscdata.
echo Waiting 5 seconds for the write to finish and phone to return to BootROM...
timeout /t 5 /nobreak

echo.
echo Restoring the phone's OWN stock bootloaders...
.\spd_dump.exe exec_addr 0x65015f08 fdl fdl1-dl.bin 0x65000800 fdl fdl2-dl.bin 0x9efffe00 exec w splloader splloader_new.bin w uboot_a uboot_a_new.bin w uboot_b uboot_b_new.bin w misc misc-wipe.bin reset

echo.
echo ====================================================
echo BOOTLOADER UNLOCKED SUCCESSFULLY!
echo ====================================================
echo.
echo [STEP 4/5] Waiting for system initialization...
echo.
echo Please let the phone boot up. It will automatically perform a factory reset.
echo Once the phone boots into Android and you see Flyme OS:
echo 1. Complete the Android setup wizard.
echo 2. Copy the Magisk-v30.7.apk to the phone and install it.
if %use_magisk_boot% equ 0 (
    echo 3. Copy boot_b_new.bin to the phone, open Magisk, click "Install" -> "Select and Patch a File".
    echo 4. Patch boot_b_new.bin and copy the resulting patched file back to this folder as "root_boot.img".
) else (
    echo 3. Since the boot is compatible, we will use the pre-patched root_boot.img.
)
echo.
echo Once ready to flash Root:
echo 1. Turn off the phone.
echo 2. Press and hold Volume Down + Power buttons to enter FASTBOOT Mode.
echo 3. Connect the phone to a USB 2.0 port.
echo 4. Press any key in this window to start flashing Root.
echo.
pause

echo.
echo [STEP 5/5] Flashing Root ^& vbmeta via Fastboot...
..\platform-tools\fastboot.exe devices

..\platform-tools\fastboot.exe flash vbmeta_a vbmeta_a_new.bin
..\platform-tools\fastboot.exe flash vbmeta_b vbmeta_b_new.bin

if %use_magisk_boot% equ 1 (
    ..\platform-tools\fastboot.exe flash boot_a root_boot.img
    ..\platform-tools\fastboot.exe flash boot_b root_boot.img
) else (
    ..\platform-tools\fastboot.exe flash boot_a root_boot.img
    ..\platform-tools\fastboot.exe flash boot_b root_boot.img
)

echo.
echo Done! Rebooting the phone...
..\platform-tools\fastboot.exe reboot
echo.
echo Once the phone boots, open Magisk, click OK to "Additional Setup", and let it reboot.
echo Root installation complete!
pause
