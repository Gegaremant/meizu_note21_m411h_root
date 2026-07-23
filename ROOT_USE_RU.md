# Использование Root

🌐 **[English version](ROOT_USE_ENG.md)** | 📖 **[Основная инструкция](README_RU.md)** | 🛠️ **[Джентльменский набор](GENTLEMAN_SET_RU.md)** | 🚀 **[Использование Root](ROOT_USE_RU.md)**

## Стартовый комплект: Обязательные приложения
| Приложение | Зачем оно нужно |
| :---: | :--- |
| **[Magisk](https://github.com/topjohnwu/Magisk)** | Официальный менеджер Root-доступа и модулей. |
| **[App Manager](https://github.com/MuntashirAkon/AppManager)** | Мощный менеджер и инспектор приложений с root-правами. |
| **[MiXplorer](https://mixplorer.com/)** | Продвинутый файловый менеджер с полным доступом к корню системы `/`. |
| **[AdAway](https://adaway.org/)** | Блокировщик рекламы без VPN на уровне системного файла `hosts`. |
| **[Droid-ify](https://f-droid.org/packages/com.looker.droidify)** | Современный и быстрый клиент магазина F-Droid с автообновлением. |

---

## Приложения и модули для Root

### Блокировщики рекламы и трекеров
- **[⭐ AdAway](https://github.com/AdAway/AdAway)** - Системный блокировщик рекламы через hosts-файл. `FOSS` | [🌱](https://f-droid.org/packages/org.adaway)
- **[⭐ Bindhosts](https://github.com/bindhosts/bindhosts)** - Автономный самообновляющийся модуль hosts для APatch, KernelSU и Magisk. `FOSS` `[M]` `[K]`
- **[AdAway Helper](https://github.com/DEMONNICA/AdAway-Helper)** - Помощник для работы AdAway на KernelSU через привязку путей hosts. `FOSS` `[M]` `[K]`
- **[AdClose](https://github.com/Xposed-Modules-Repo/com.close.hook.ads/)** - Блокирует рекламные SDK и запросы внутри приложений. `Proprietary` `[LSP]`
- **[AdGuard](https://adguard.com/en/adguard-android/overview.html)** - Комплексное решение для фильтрации трафика и рекламы. `Proprietary`
- **[AdGuardHome for Root](https://github.com/twoone-3/AdGuardHomeForRoot)** - Запуск локального сервера AdGuardHome прямо на Android. `FOSS` `[M]`
- **[BlockAds Module](https://github.com/pantsufan/BlockAds)** - Модуль Magisk для блокировки рекламы. `FOSS` `[M]` `[K]`
- **[F*ck AD](https://github.com/hujiayucc/Fuck-AD)** - Блокировщик рекламы на базе фреймворка Xposed. `FOSS` `[LSP]`

### ИИ и умные инструменты
- **[Breeno Source Changer](https://github.com/Xposed-Modules-Repo/com.niki.breeno.openai/)** - Настройка API нейросетей для ассистента Breeno в ColorOS. `FOSS` `[LSP]`
- **[Keyboard GPT](https://github.com/Mino260806/KeyboardGPT)** - Интеграция ChatGPT и других LLM прямо в клавиатуру Android. `FOSS` `[LSP]`
- **[Xposed Translate Text](https://github.com/tianci-sh/XPTranslateText)** - Перевод выделенного текста через MLKit/Gemini/Google API. `FOSS` `[LSP]`

### Магазины приложений
- **[⭐ Droid-ify](https://github.com/Droid-ify/client)** - Удобный Material-клиент для F-Droid с фоновым обновлением через root. `FOSS`
- **[Aurora Store](https://github.com/whyorean/AuroraStore)** - Неофициальный клиент Google Play для скачивания APK без сервисов Google. `FOSS`
- **[F-Droid Privileged Extension](https://gitlab.com/fdroid/privileged-extension)** - Системное расширение для бесшумной установки приложений из F-Droid. `FOSS`

### Менеджеры приложений
- **[⭐ App Manager](https://github.com/MuntashirAkon/AppManager)** - Самый функциональный менеджер пакетов и разрешений для Android. `FOSS`
- **[Inure](https://github.com/Hamza417/Inure)** - Красивый премиальный менеджер приложений с анализом трекеров и библиотек. `FOSS`
- **[Thor](https://github.com/trinadhthatakula/Thor)** - Простая утилита установки и управления APK-файлами. `FOSS`

### Разрешения и контроль приложений
- **[AppOps](https://play.google.com/store/apps/details?id=rikka.appops)** - Удобный контроль скрытых параметров AppOps Android. `Proprietary`
- **[PermissionManagerX](https://github.com/mirfatif/PermissionManagerX)** - Расширенное управление системными разрешениями и AppOps. `FOSS`
- **[Thanox](https://github.com/Tornaco/Thanox)** - Мощный контроль фоновой активности, автозапуска и оптимизации приложений. `FOSS` `[LSP]`

### Изоляция и клонирование приложений
- **[Insular](https://gitlab.com/secure-system/Insular)** - Безопасная изоляция приложений в рабочем профиле (форк Island). `FOSS`
- **[Shelter](https://gitea.angry.im/PeterCxy/Shelter)** - Изоляция и клонирование приложений в изолированный профиль. `FOSS`

### Контроль обновлений приложений
- **[⭐ Zygisk Detach](https://github.com/j-hc/zygisk-detach)** - Модуль Zygisk для отвязки выбранных приложений от обновлений в Google Play Store. `FOSS` `[M]` `[K]`
- **[Play Version Spoofer](https://github.com/byemaxx/PlayVersionSpoofer)** - Блокировка автоматического обновления самого Google Play Store. `FOSS` `[LSP]`

### Заморозка приложений
- **[⭐ Hail](https://github.com/aistra0528/Hail)** - Заморозка, скрытие и отключение приложений в один клик. `FOSS`
- **[Ice Box](https://play.google.com/store/apps/details?id=com.catchingnow.icebox)** - Популярный контейнер для заморозки редко используемого софта. `Proprietary`

### Управление пакетами и установка
- **[⭐ Disable Target API Block](https://github.com/buttercookie42/DisableTargetAPIBlock)** - Отключает блокировку установки старых приложений на Android 14+. `FOSS` `[LSP]`
- **[AlterInstaller](https://github.com/chenxiaolong/AlterInstaller)** - Обход ограничений установщика Android при прошивке пакетов. `FOSS` `[M]` `[K]`

### Подписи и проверка целостности
- **[⭐ CorePatch](https://github.com/LSPosed/CorePatch)** - Отключает системную проверку подписей APK в Android. `FOSS` `[LSP]`
- **[⭐ Pairipfix](https://github.com/ahmedmani/pairipfix)** - Обход предупреждения «Установите это приложение из Google Play» при установке сторонних APK. `FOSS` `[LSP]`
- **[Apk Protection Patch](https://github.com/Mods-Center/Apk-Protection-Patch)** - Удаление проверок подписей на прошивках OEM (HyperOS, ColorOS). `Proprietary` `[M]`

### Патчеры приложений
- **[⭐ Morphe](https://morphe.software/)** - Патчер нового поколения от разработчиков ReVanced с удобным интерфейсом. `FOSS`
- **[ReVanced](https://revanced.app/)** - Модификация YouTube, Spotify и других программ (блокировка рекламы, фоновый режим). `FOSS`
- **[Lucky Patcher](https://www.luckypatchers.com/)** - Классический инструмент для патчей и взлома приложений (использовать с осторожностью!). `Proprietary`

### Моды для браузеров
- **[⭐ ChromeXt](https://github.com/JingMatrix/ChromeXt)** - Добавление пользовательских скриптов (UserScript) и DevTools в браузеры на базе Chrome. `FOSS` `[LSP]`

### Модификации социальных сетей
- **[InstaEclipse](https://github.com/ReSo7200/InstaEclipse/)** - Instagram с режимом невидимки (Ghost Mode), отключением рекламы и меню разработчика. `FOSS` `[LSP]`
- **[Telegram Speed Hook](https://github.com/araafroyall/Telegram-Speed-Hook)** - Увеличение скорости загрузки медиафайлов в клиентах Telegram. `FOSS` `[LSP]`
- **[TeleVip](https://github.com/Xposed-Modules-Repo/com.my.televip/)** - Чтение удаленных сообщений, скрытие статуса нахождения в сети в Telegram. `Proprietary` `[LSP]`
- **[⭐ WA Enhancer](https://github.com/Dev4Mod/WaEnhancer)** - Модификации и скрытые настройки для WhatsApp. `FOSS` `[LSP]`
- **[⭐ Piko Patches](https://github.com/crimera/piko)** - Скрытие рекламы и промо-постов в клиенте X (Twitter) через Morphe. `FOSS`

### Модификации других приложений
- **[⭐ GPhotosUnlimited](https://github.com/Rev4N1/GPhotosUnlimited)** - Модуль Zygisk для получения безлимитного хранилища в Google Фото. `FOSS` `[M]` `[K]`
- **[LSpot](https://codeberg.org/dapsvi/LSpot)** - Блокировка рекламы в официальном приложении Spotify. `FOSS` `[LSP]`

### Улучшение звука
- **[⭐ ViPERFX_RE](https://github.com/likelikeslike/ViPERFX_RE)** - Переработанный современный эквалайзер и процессор эффектов ViPER4Android. `FOSS` `[M]` `[K]`
- **[JamesDSP](https://github.com/james34602/JamesDSPManager)** - Аудиопроцессор DSP на базе системного фреймворка Android. `FOSS` `[M]`

### Контроль и управление аудио
- **[DisableAudioFocus](https://github.com/auag0/DisableAudioFocus)** - Отключает фокус аудио, позволяя одновременно воспроизводить звук из разных приложений. `FOSS` `[LSP]`
- **[LibrePods](https://github.com/kavishdevar/librepods)** - Разблокировка эксклюзивных функций Apple AirPods на Android. `FOSS` `[LSP]`

### Резервное копирование и восстановление
- **[⭐ Swift Backup](https://play.google.com/store/apps/details?id=org.swiftapps.swiftbackup)** - Самое удобное облачное резервное копирование приложений, SMS, логов и WiFi-сетей с root. `Proprietary`
- **[Neo Backup](https://github.com/NeoApplications/Neo-Backup)** - Мощный open-source менеджер бэкапов (бывший OAndBackupX). `FOSS` | [🌱](https://f-droid.org/packages/com.machiav3lli.backup/)

### Оптимизация батареи
- **[Battery Guru](https://play.google.com/store/apps/details?id=com.paget96.batteryguru)** - Тонкий мониторинг и оптимизация энергопотребления. `Proprietary`
- **[EnforceDoze](https://github.com/farfromrefug/EnforceDoze)** - Немедленный уход в глубокий сон Doze при выключении экрана. `FOSS`

### Очистка мусора и удаление встроенного ПО (Debloat)
- **[⭐ SD Maid 2/SE](https://github.com/d4rken-org/sdmaid-se)** - Превосходный инструмент для очистки кэша, остатков удаленных приложений и мусора. `FOSS`
- **[⭐ Canta](https://github.com/samolego/Canta)** - Безопасное удаление любых системных и встроенных приложений без риска кирпича через Shizuku. `FOSS`
- **[De-Bloater](https://github.com/sunilpaulmathew/De-Bloater)** - Удобное замораживание и удаление bloatware через Magisk. `FOSS`

### Шрифты и Эмодзи
- **[FontCraft Pro](https://github.com/RipperHybrid/FontCraft)** - Установка кастомных шрифтов и эмодзи. `FOSS` `[M]` `[K]`
- **[Magisk-iOS-Emoji](https://github.com/Keinta15/Magisk-iOS-Emoji)** - Замена системных эмодзи на стиль iOS во всей системе. `FOSS` `[M]`

### Темы и визуальные модификации
- **[ColorBlendr](https://github.com/Mahmud0808/ColorBlendr)** - Настройка цветов Material You и динамических тем Android. `FOSS`
- **[Iconify](https://github.com/Mahmud0808/Iconify)** - Огромный каталог твиков интерфейса (стили статус-бара, QS-панели, кнопок громкости). `FOSS` `[M]`

### Лаунчеры и рабочий стол
- **[⭐ Lawnchair](https://github.com/Goooler/LawnchairRelease/)** - Легкий и быстрый лаунчер в стиле Pixel Launcher с поддержкой темных иконок. `FOSS`
- **[Pixel Launcher Enhanced](https://github.com/Mahmud0808/PixelLauncherEnhanced)** - Разблокировка скрытых настроек официального лаунчера Pixel. `FOSS` `[LSP]`

### Жесты и навигация
- **[Hide Navbar Keyboard](https://github.com/UNKNUW/Hide-Navbar-Keyboard)** - Скрытие навигационной полосы при открытой клавиатуре. `FOSS` `[M]`
- **[Three-Finger-Screenshot](https://github.com/hxreborn/three-finger-swipe)** - Жест скриншота тремя пальцами во всей системе через LSPosed. `FOSS` `[LSP]`

### Кастомизация ROM и OEM
- **[⭐ PixelXpert](https://github.com/siavash79/PixelXpert)** - Множество визуальных твиков для чистого Android (AOSP) и Pixel-устройств. `FOSS` `[M]` `[LSP]`
- **[⭐ HyperCeiler](https://github.com/ReChronoRain/HyperCeiler)** - Огромный набор твиков для Xiaomi HyperOS (настройка статус-бара, анимаций, скрытых функций). `FOSS` `[LSP]`
- **[⭐ KnoxPatch](https://github.com/salvogiangri/KnoxPatch)** - Восстановление работы защищенных приложений Samsung (S Health, Secure Folder, Samsung Pass) на рутованных устройствах. `FOSS` `[LSP]`

### Сеть и связь
- **[Basic Call Recorder (BCR)](https://github.com/chenxiaolong/BCR)** - Запись телефонных разговоров прямо из линии без предупреждения собеседника. `FOSS` `[M]` `[K]`
- **[NFCGate](https://github.com/nfcgate/nfcgate)** - Анализ, захват и эмуляция трафика NFC-карт. `FOSS` `[LSP]`

### Менеджеры Root и системы
- **[⭐ KernelSU](https://github.com/tiann/KernelSU)** - Root-доступ на уровне ядра Linux. `FOSS`
- **[⭐ Magisk](https://github.com/topjohnwu/Magisk)** - Самый популярный менеджер рута и системных модулей. `FOSS`
- **[APatch](https://github.com/bmax121/APatch)** - Альтернативное современное ядро рутинга. `FOSS`
- **[⭐ LSPosed](https://lsposed.zip)** - Современный фреймворк Xposed для модификация API на лету. `Proprietary`
- **[⭐ Vector](https://github.com/JingMatrix/Vector)** - Активный форк LSPosed с полной поддержкой Android 15 и 16. `FOSS` `[M]`
- **[⭐ MMRL](https://github.com/DerGoogler/MMRL)** - Продвинутый менеджер и магазин модулей для Magisk, KernelSU и APatch. `FOSS`

### Защита от Bootloop
- **[AshReXcue - Bootloop Protector](https://github.com/RipperHybrid/AshLooper)** - Защита от вечной перезагрузки при установке несовместимых модулей Magisk/KernelSU. `FOSS` `[M]` `[K]`

### Реализации Zygisk
- **[⭐ Zygisk Next](https://github.com/Dr-TSNG/ZygiskNext)** - Самый надежный автономный модуль Zygisk для скрытия рута и защиты от обнаружения. `Proprietary` `[M]` `[K]`
- **[NeoZygisk](https://github.com/JingMatrix/NeoZygisk)** - Легкий и скрытный Zygisk на базе ptrace-инъекций. `FOSS` `[M]` `[K]`

### Скрытие Root и Play Integrity
- **[⭐ Shamiko](https://github.com/LSPosed/LSPosed.github.io/releases)** - Модуль скрытия Magisk Root от обнаружения банковскими утилитами. `Proprietary` `[M]`
- **[⭐ HMA-OSS](https://github.com/frknkrc44/HMA-OSS)** - Форк Hide My Applist для сокрытия списка установленных программ от банковских систем безопасности. `FOSS` `[LSP]`
- **[Play Integrity Fork (PIF)](https://github.com/osm0sis/PlayIntegrityFork)** - Самый поддерживаемый модуль обхода Google Play Integrity API. `FOSS` `[M]`
- **[TrickyStore](https://github.com/5ec1cff/TrickyStore)** - Подмена аппаратного Keybox для обхода проверки сертификации Android Key Attestation. `Proprietary` `[M]` `[K]`

### Терминал и оболочка (Shell/Termux)
- **[⭐ Termux](https://github.com/termux/termux-app)** - Полноценный эмулятор терминала со средой Linux и пакетным менеджером для Android. `FOSS`
- **[aShell You](https://github.com/DP-Hridayan/aShellYou)** - Удобная графическая оболочка Material You для запуска adb/shell/root команд. `FOSS`

---

## Ресурсы и помощь
*   🌐 **Веб-версия**: [awesome-android-root.pages.dev](https://awesome-android-root.pages.dev)
*   📂 **GitHub репозиторий**: [github.com/awesome-android-root/awesome-android-root](https://github.com/awesome-android-root/awesome-android-root)

---

## Юридическая информация и безопасность

> [!IMPORTANT]
> **Вся информация предоставлена исключительно в ознакомительных целях. Вы действуете на свой страх и риск.**
> Получение root-прав может лишить ваше устройство гарантии, нарушить работу систем безопасности (Knox/Integrity) и заблокировать запуск банковских программ. Перед любыми действиями убедитесь, что у вас есть надежные резервные копии данных.
