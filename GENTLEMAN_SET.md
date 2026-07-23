# Gentleman's Root Set for Meizu Note 21 (Magisk)

Unlocking the bootloader and obtaining Root access on Android 14 (Flyme OS 14) opens up advanced customization. Below is a curated list of essential Magisk modules, Xposed tools, and root utilities to improve your system control, block ads system-wide, and hide root from sensitive apps like banking clients.

---

## 1. Magisk System Modules (flash via Magisk -> Modules)

### [Play Integrity Fix](https://github.com/chiteroman/PlayIntegrityFix)
*   **Why you need it**: Google blocks contactless payments (Google Pay / Wallet), banking applications, and certain games (like Pokémon GO) on devices with unlocked bootloaders. This module patches device certification fingerprints on-the-fly, bringing your Google Play Integrity status back to "Passed".
*   **How to use**: Download the latest `.zip` release, install it in Magisk Manager (Modules -> Install from storage), and reboot your device.

### [Zygisk Next](https://github.com/Dr-TSNG/ZygiskNext)
*   **Why you need it**: A high-performance independent implementation of Zygisk that runs outside standard Magisk constraints. It improves root hiding and module compatibility.
*   **Link**: [Zygisk Next on GitHub](https://github.com/Dr-TSNG/ZygiskNext)

---

## 2. Xposed / LSPosed Modules (require Zygisk enabled in Magisk)

To run Xposed modules on Android 14+, you first need to install the active fork of the **LSPosed** framework:
*   [LSPosed (JingMatrix Fork) on GitHub](https://github.com/JingMatrix/LSPosed) (actively maintained fork supporting Android 14).

### [Hide My Applist](https://github.com/Dr-TSNG/Hide-My-Applist) (LSPosed Module)
*   **Why you need it**: Many apps (e.g. banking clients, game anti-cheats) scan your device for root manager apps (Magisk, Termux, LSPosed) and block access, even if root is hidden. This module allows you to create whitelist templates to hide root apps from target lists.

### [CorePatch](https://github.com/LSPosed/CorePatch) (LSPosed Module)
*   **Why you need it**: Disables system-wide APK signature verification in Android. It allows you to downgrade installed apps without losing data, install modded APKs over original ones, and bypass package installer restrictions.

---

## 3. Recommended Root Apps

### [AdAway](https://adaway.org/)
*   **Why you need it**: The most efficient ad blocker for Android. It operates at the system level by modifying `/etc/hosts`. It blocks ads in all web browsers, apps, and games. Unlike local VPN blockers, it consumes zero battery.
*   **Link**: [Download AdAway on F-Droid](https://f-droid.org/packages/org.adaway/)

### [MiXplorer](https://forum.xda-developers.com/t/app-2-2-mixplorer-v6-x-released-fully-featured-file-manager.1523691/)
*   **Why you need it**: A powerful file manager with complete root directory (`/`) access. You can use it to modify system properties (e.g., `/system/build.prop`), edit `/etc/hosts` manually, and adjust file permissions (chmod/chown).
*   **Link**: [Official MiXplorer thread on XDA](https://forum.xda-developers.com/t/app-2-2-mixplorer-v6-x-released-fully-featured-file-manager.1523691/)

### [Termux](https://termux.dev/)
*   **Why you need it**: A complete terminal emulator with an integrated Linux package environment. Use it to run bash scripts and admin tools with root permissions via the `su` command.
*   **Link**: [Download Termux on F-Droid](https://f-droid.org/packages/termux/)

### [Shizuku](https://shizuku.rikka.app/) + [App Ops](https://play.google.com/store/apps/details?id=web.carisok.appops)
*   **Why you need it**: Shizuku utilizes root to expose low-level Android APIs to user-space apps. In combination with App Ops, it allows you to manage hidden application permissions (e.g., denying background clipboard access or notification permissions) with fine granularity.
