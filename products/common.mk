# Theme files
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/commotio/overlay/theme

# DSPManager and bravia
$(call inherit-product, vendor/commotio/products/media_sexificators.mk)
$(call inherit-product, vendor/commotio/config/nfc_enhanced.mk)

# Add some tones (if this grows to more than like... 5 ringtones and 5 notifications, old ones will be dropped)
$(call inherit-product, vendor/commotio/proprietary/ringtones/VanirRingtones.mk)

# Build packages included in manifest
PRODUCT_PACKAGES += \
    busybox \
    Email \
    Launcher3 \
    VanirUpdater

# Build Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1 \
    ro.config.ringtone=CanisMajor.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg \
    ro.build.selinux=1 \
    persist.sys.root_access=3

# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    net.bt.name=Android \
    ro.config.hwfeature_wakeupkey=0 \
    ro.ext4fs=1 \
    debug.composition.type=gpu \
    ro.HOME_APP_MEM=8192 \
    ro.FOREGROUND_APP_MEM=8192 \
    ro.VISIBLE_APP_MEM=8192 \
    ro.max.fling_velocity=15000 \
    ro.min.fling_velocity=10000 \
    ro.lge.proximity.delay=20 \
    mot.proximity.delay=20 \
    movfilter=40 \
    movehyst=0 \
    per_sec=300 \
    TCHTHR=28 \
    ro.rommanager.developerid=DHO \
    ro.goo.developerid=DHO \
    ro.modversion=Commotio-B62 \
    ro.goo.version=62


# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=KRT16S BUILD_ID=KRT16S BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_EST_DATE=$(shell date +"%s")

PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/common/xbin/sysrw:system/xbin/sysrw \
    vendor/commotio/proprietary/common/xbin/sysro:system/xbin/sysro \
    vendor/commotio/proprietary/common/xbin/commotiointeractivegovernorgovernor:system/xbin/commotiointeractivegovernorgovernor \
    vendor/commotio/proprietary/common/xbin/commotioflash:system/xbin/commotioflash \
    vendor/commotio/proprietary/common/init.commotio.rc:root/init.commotio.rc \
    vendor/commotio/proprietary/common/bin/sysinit:system/bin/sysinit \
    vendor/commotio/proprietary/common/etc/init.d/00firsties:system/etc/init.d/00firsties \
    vendor/commotio/proprietary/common/xbin/purgethumbnails:system/xbin/purgethumbnails

PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/common/lib/liblightcycle.so:system/lib/liblightcycle.so \
    vendor/commotio/proprietary/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so \
    vendor/commotio/proprietary/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinime.so

ifeq ($(VANIR_FAILSAFE),)
# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/commotio/proprietary/common/xbin/hunter:system/xbin/hunter \
    vendor/commotio/proprietary/common/xbin/testinitd:system/xbin/testinitd \
    vendor/commotio/proprietary/common/xbin/commotiocheckcpu:system/xbin/commotiocheckcpu \
    vendor/commotio/proprietary/common/xbin/commotionice:system/xbin/commotionice

#Imoseyon's zram script
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/common/xbin/zram:system/xbin/zram

# Misc Files
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/common/etc/hosts:system/etc/hosts \
    vendor/commotio/proprietary/common/etc/resolv.conf:system/etc/resolv.conf

# proprietary guts
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/commotio/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# entropy mumbo jump
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/common/xbin/CB_RunHaveged:system/xbin/CB_RunHaveged \
    vendor/commotio/proprietary/common/xbin/haveged:system/xbin/haveged \
    vendor/commotio/proprietary/common/xbin/commotioentropy:system/xbin/commotioentropy \
    vendor/commotio/proprietary/common/bin/cronlogger:system/bin/cronlogger

# init.d Tweaks
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/commotio/proprietary/common/etc/init.d/06ENTROPY:system/etc/init.d/06ENTROPY \
    vendor/commotio/proprietary/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/commotio/proprietary/common/etc/init.d/99vanir:system/etc/init.d/99vanir \
    vendor/commotio/proprietary/common/etc/init.d/ZZafterboot:system/etc/init.d/ZZafterboot \
    vendor/commotio/proprietary/common/etc/cron/cron.minutely/00nicetweaks:/system/etc/cron/cron.minutely/00nicetweaks \
    vendor/commotio/proprietary/common/etc/cron/cron.daily/00sqlitespeed:/system/etc/cron/cron.daily/00sqlitespeed


    vendor/commotio/proprietary/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/commotio/proprietary/system/etc/init.d/01dhotheory:system/etc/init.d/01dhotheory \
    vendor/commotio/proprietary/system/etc/init.d/03dhokernel:system/etc/init.d/03dhokernel \
    vendor/commotio/proprietary/system/etc/init.d/15cmplxfilesystem:system/etc/init.d/15cmplxfilesystem \
    vendor/commotio/proprietary/system/etc/init.d/91cmplxzipalign:system/etc/init.d/91cmplxzipalign \
    vendor/commotio/proprietary/system/etc/init.d/98cmplxth3ory:system/etc/init.d/98cmplxth3ory \
    vendor/commotio/proprietary/system/etc/init.d/ZZafterboot:system/etc/init.d/ZZafterboot \



# Backup Tools
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/commotio/proprietary/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/commotio/proprietary/common/bin/50-commotio.sh:system/addon.d/50-commotio.sh
endif

PRODUCT_PACKAGE_OVERLAYS += \
    vendor/commotio/overlay/dictionaries

#Define thirdparty for Koush's SU
SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.commotio.superuser

# Required CM packages
PRODUCT_PACKAGES += \
    Camera \
    LatinIME \
    Superuser \
    su \
    BluetoothExt

# CM Hardware Abstraction Framework
PRODUCT_PACKAGES += \
    org.cyanogenmod.hardware \
    org.cyanogenmod.hardware.xml

# Optional CM packages
PRODUCT_PACKAGES += \
    Basic \
    SoundRecorder \
    libemoji

# Extra tools in CM
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    vim \
    nano \
    htop \
    powertop \
    lsof \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g \
    gdbserver \
    micro_bench \
    oprofiled \
    procmem \
    procrank \
    sqlite3 \
    strace

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

# T-Mobile theme engine
PRODUCT_PACKAGES += \
    ThemeManager \
    ThemeChooser \
    com.tmobile.themes \
    Vanir_Inverted

## STREAMING DMESG?
PRODUCT_PACKAGES += \
    klogripper

PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/common/etc/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml
