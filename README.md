# Meizu Note 21 (m411h) Bootloader Unlock & Magisk Root

🌐 **[Русская версия](README_RU.md)** | 📱 **[Awesome Android Root Directory](../root%20access%20using/README.md)**

This repository contains tools, scripts, and instructions to unlock the bootloader and install Magisk (Root) on the **Meizu Note 21** (`m411h`, Unisoc T606, Android 14 / Flyme OS 14).

This exploit uses the low-level Spreadtrum/Unisoc BootROM (BROM) mode interface to temporarily bypass boot integrity checks and write the unlock state directly to the `miscdata` partition. It then restores the stock signed bootloaders, leaving the device in a secure, fully unlocked state ready to flash custom partitions.

---

## Repository Structure

```
├── Driver/               # USB drivers for Spreadtrum/Unisoc diagnostic & BROM modes
├── Unlock/
│   ├── 1_unlock_and_root.bat          # Main master script (step-by-step wizard)
│   ├── 3_emergency_restore_stock.bat  # Emergency restoration script (unbrick tool)
│   ├── ryzen_usb3_fastboot_fix.reg    # Registry fix for USB 3.x / AMD Ryzen fastboot error
│   ├── patch_vbmeta_new.py            # Python helper to disable AVB on dumped vbmeta images
│   ├── check_boot_compat.py           # Python helper to verify boot image firmware compatibility
│   ├── spd_dump.exe                   # Unisoc BROM exploit tool
│   ├── fdl1-dl.bin / fdl2-dl.bin      # Stock flash download loaders
│   ├── fdl2-cboot.bin                 # Patched custom u-boot payload
│   ├── spl-unlock.bin                 # Signature-bypassed SPL loader payload
│   ├── u-boot-spl-16k-sign.bin        # Stock signed SPL profile
│   ├── uboot_a_bak.bin / uboot_bak.bin# Stock signed U-boot profiles
│   ├── boot.img                       # Stock boot image profile
│   ├── root_boot.img                  # Pre-patched Magisk boot image (compatible with MEIZU_Note21_14.0.1)
│   └── Magisk-v30.7.apk               # Magisk Manager application
├── .gitignore            # File exclusions (excludes dumps, logs, and platform tools)
└── README.md             # This document (English)
```

---

## Prerequisites

1. A PC running **Windows**.
2. **Google USB Drivers** and **Spreadtrum/Unisoc Drivers** installed (available in the `Driver/` folder).
3. **Python 3.x** installed on your PC (ensure "Add Python to PATH" was selected during installation).
4. A high-quality USB-C data cable.

---

## Step-by-Step Instructions

> [!WARNING]
> Unlocking the bootloader will trigger a factory reset and **completely wipe all user data** on the phone! Make sure to back up your data beforehand.

### Step 1: Run the Master Script
1. Turn off your phone completely and keep it disconnected from the PC.
2. Go to the `Unlock` folder and run **`unlock_and_root.bat`**.
3. Press any key in the console window.
4. **IMMEDIATELY** press and hold the **Volume Down** button on the phone and connect the USB cable to the PC.
5. The script will start dumping your phone's stock partitions (`splloader`, `uboot_a`, `uboot_b`, `vbmeta_a`, `vbmeta_b`, `boot_b`) to the computer.

### Step 2: Verification & Exploit
1. The script will run the Python helper to verify your bootloader version.
   - If it outputs `BOOT COMPATIBILITY: IDENTICAL`, the tool will automatically use the pre-patched `root_boot.img` for root installation.
   - If it outputs `DIFFERENT`, you will be prompted to manually patch the dumped `boot_b_new.bin` inside the Magisk app on the phone later.
2. Disconnect the USB cable and force-restart the phone to BROM mode (hold **Volume Up + Power** for 15 seconds until the screen is off).
3. Press any key in the console, hold **Volume Down** on the phone, and reconnect the USB cable.
4. The script will:
   - Temporarily erase `splloader` and flash the custom uboot payload.
   - Load `spl-unlock.bin` in RAM to trigger the unlock write on `miscdata`.
   - Restore the phone's **own original bootloaders** from the Step 1 backup.
5. Once complete, the phone will reboot, format userdata, and boot into Flyme OS.

### Step 3: Install Magisk
1. Complete the Android setup wizard.
2. Transfer `Magisk-v30.7.apk` to your phone and install it.
3. Open Magisk. If it asks to perform **"Additional Setup"**, click **OK** and let the phone reboot automatically.
4. Set a lock screen credential (PIN, pattern, or password) in Android Settings (required by Magisk on Android 14 to authorize superuser requests). Alternatively, change Magisk setting "Automatic Response" to "Grant".

### Step 4: Flashing Root via Fastboot
1. Turn off the phone.
2. Press and hold **Volume Down + Power** buttons until you see **FASTBOOT** on the screen.
3. Connect the phone to a **USB 2.0 port** on the PC.
4. Press any key in the script console to start flashing the root image.
5. Once done, the phone will reboot. Open Magisk, confirm root privileges using any root checker app, and grant access.

---

## Troubleshooting

### Error: `FAILED (Status read failed (Too many links))` in Fastboot
This is a known compatibility bug between Unisoc Fastboot and USB 3.0/3.2 ports (especially on AMD Ryzen motherboards).
- **Fix 1**: Double-click **`ryzen_usb3_fastboot_fix.reg`** in the `Unlock` folder, merge it into the registry, and **reboot your PC**.
- **Fix 2**: Connect your phone through a USB 2.0 Hub or using an older USB 2.0 port.

### Unbricking / Emergency Restore
If the phone gets stuck on a black screen or fails to boot:
1. Disconnect the USB cable.
2. Hold **Volume Up + Power** for 15 seconds to turn the device off.
3. Run **`3_emergency_restore_stock.bat`** on the PC.
4. Press any key in the console, hold **Volume Down** on the phone, and connect the USB cable. The script will restore the default stock firmware profile.
