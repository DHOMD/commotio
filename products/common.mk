# Vanir files
PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/common

# DSPManager and NFC
$(call inherit-product, vendor/vanir/products/media_sexificators.mk)
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)

# Add some tones (if this grows to more than like... 5 ringtones and 5 notifications, old ones will be dropped)
$(call inherit-product, vendor/vanir/proprietary/ringtones/VanirRingtones.mk)

# CM Platform Library Resource Package
PRODUCT_PACKAGES += \
    org.cyanogenmod.platform \
    org.cyanogenmod.platform-res \
    org.cyanogenmod.platform.xml

# Build packages included in manifest
PRODUCT_PACKAGES += \
    AudioFX \
    Email \
    ExactCalculator \
    IndecentXposure \
    LatinIME \
    LockClock \
    LiveWallpapersPicker \
    Profiles \
    SoundRecorder \
    Trebuchet \
    toybox \
    CMSettingsProvider

#    Terminal \
#    VanirUpdater

# QuickBoot (included automagically for non-oppo qcom devices)
PRODUCT_PACKAGES += \
    QuickBoot \
    init.vanir.quickboot.rc

# FUCKING DISGUSTING SHIT
ifndef CM_PLATFORM_REV
  # For internal SDK revisions that are hotfixed/patched
  # Reset after each CM_PLATFORM_SDK_VERSION release
  # If you are doing a release and this is NOT 0, you are almost certainly doing it wrong
  CM_PLATFORM_REV := 0
endif
ifndef CM_PLATFORM_SDK_VERSION
  CM_PLATFORM_SDK_VERSION := 4
endif

# CyanogenMod Platform Internal
PRODUCT_PROPERTY_OVERRIDES += \
  ro.cm.build.version.plat.sdk=$(CM_PLATFORM_SDK_VERSION) \
  ro.cm.build.version.plat.rev=$(CM_PLATFORM_REV)

# Build Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1 \
    ro.config.ringtone=CanisMajor.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg \
    ro.build.selinux=1

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.hwfeature_wakeupkey=0 \
    ro.lge.proximity.delay=20 \
    mot.proximity.delay=20 \
    ro.vanir.base=6.0 \
    ro.rommanager.developerid=DHO \
    ro.goo.developerid=DHO \
    ro.modversion=Commotio-B100 \
    ro.goo.version=100

# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=MDB08M BUILD_ID=MDB08M BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_EST_DATE=$(shell date +"%s")

PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/xbin/sysrw:system/xbin/sysrw \
    vendor/vanir/proprietary/common/xbin/sysro:system/xbin/sysro \
    vendor/vanir/proprietary/common/xbin/cronlogger:system/xbin/cronlogger \
    vendor/vanir/proprietary/common/xbin/vanirflash:system/xbin/vanirflash \
    vendor/vanir/proprietary/common/init.vanir.rc:root/init.vanir.rc \
    vendor/vanir/proprietary/common/bin/otasigcheck.sh:system/bin/otasigcheck.sh \
    vendor/vanir/proprietary/common/bin/run-parts:system/bin/run-parts \
    vendor/vanir/proprietary/common/bin/sysinit:system/bin/sysinit \
    vendor/vanir/proprietary/common/etc/init.d/00firsties:system/etc/init.d/00firsties

ifeq ($(VANIR_FAILSAFE),)
# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/xbin/hunter:system/xbin/hunter \
    vendor/vanir/proprietary/common/xbin/testinitd:system/xbin/testinitd \
    vendor/vanir/proprietary/common/xbin/vanircheckcpu:system/xbin/vanircheckcpu \
    vendor/commotio/proprietary/system/xbin/vanirnice:system/xbin/vanirnice

# Misc Files
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/system/etc/hosts:system/etc/hosts \
    vendor/vanir/proprietary/common/etc/resolv.conf:system/etc/resolv.conf

# init.d Tweaks
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/commotio/proprietary/system/etc/init.d/03dhokernel:system/etc/init.d/03dhokernel \
    vendor/vanir/proprietary/common/etc/init.d/90userinit:system/etc/init.d/90userinit \
    vendor/commotio/proprietary/system/etc/init.d/98cmplxth3ory:system/etc/init.d/98cmplxth3ory \
    vendor/vanir/proprietary/common/etc/cron/root:system/etc/cron/cron.d/root \
    vendor/vanir/proprietary/common/etc/cron/cron.minutely/00nicetweaks:/system/etc/cron/cron.minutely/00nicetweaks \
    vendor/vanir/proprietary/common/etc/cron/cron.daily/00sqlitespeed:/system/etc/cron/cron.daily/00sqlitespeed

# system and persistent /data boot.d Tweaks - triggered when ro.boot_complete is set to 1
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/bin/afterboot:system/bin/afterboot \
    vendor/vanir/proprietary/common/etc/boot.d/00vanirnice:system/etc/boot.d/00vanirnice


# Backup Tools
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/bin/automagic.sh:system/bin/automagic.sh \
    vendor/vanir/proprietary/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/vanir/proprietary/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/vanir/proprietary/common/bin/50-vanir.sh:system/addon.d/50-vanir.sh \
    vendor/vanir/proprietary/common/bin/blacklist:system/addon.d/blacklist \
    vendor/vanir/proprietary/common/bin/whitelist:system/addon.d/whitelist
endif

# Required CM packages
PRODUCT_PACKAGES += \
    Camera \
    LatinIME \
    su \
    BluetoothExt

# CM Hardware Abstraction Framework
PRODUCT_PACKAGES += \
    org.cyanogenmod.hardware \
    org.cyanogenmod.hardware.xml

# Optional CM packages
PRODUCT_PACKAGES += \
    Development \
    libemoji

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libstagefright_soft_ffmpegadec \
    libstagefright_soft_ffmpegvdec \
    libFFmpegExtractor \
    media_codecs_ffmpeg.xml

PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so

# Copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/vanir/prebuilt/common/lib/content-types.properties:system/lib/content-types.properties

# Extra tools in CM
PRODUCT_PACKAGES += \
    libsepol \
    mke2fs \
    tune2fs \
    mkfs.ntfs \
    fsck.ntfs \
    mount.ntfs \
    bash \
    vim \
    wget \
    unzip \
    7z \
    bzip2 \
    zip \
    unrar \
    nano \
    htop \
    gdbserver \
    micro_bench \
    oprofiled \
    procmem \
    procrank \
    sqlite3 \
    strace \
    curl \
    pigz

WITH_EXFAT ?= true
ifeq ($(WITH_EXFAT),true)
TARGET_USES_EXFAT := true
PRODUCT_PACKAGES += \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat
endif

ifneq ($(TARGET_ARCH),arm64)
PRODUCT_PACKAGES += \
    powertop
endif

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

# openvpwn
PRODUCT_PACKAGES += \
    openvpn

# Theme engine
PRODUCT_PACKAGES += \
    aapt \
    ThemeChooser \
    ThemesProvider

PRODUCT_COPY_FILES += \
    vendor/vanir/config/permissions/org.cyanogenmod.theme.xml:system/etc/permissions/org.cyanogenmod.theme.xml

## STREAMING DMESG?
PRODUCT_PACKAGES += \
    klogripper

## FOR HOTFIXING KERNELS MAINTAINED BY BUNGHOLES
PRODUCT_PACKAGES += \
    utility_mkbootimg \
    utility_unpackbootimg

# Allow installing apps that require cm permissions from the play store 
-include vendor/cyngn/product.mk

# Allow compiling on Jenkins
-include $(WORKSPACE)/build_env/image-auto-bits.mk

$(call inherit-product-if-exists, vendor/vanir-private/Private.mk)
$(call inherit-product-if-exists, vendor/extra/product.mk)


