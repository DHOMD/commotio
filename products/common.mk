#Commotio Header
    PRODUCT_PACKAGE_OVERLAYS += vendor/commotio/overlay/commotio

# DSPManager and bravia
$(call inherit-product, vendor/vanir/products/media_sexificators.mk)
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk) 

# Build packages included in manifest
PRODUCT_PACKAGES += \
    AppWidgetPicker \
    busybox \
    CellBroadcastReceiver \
    DSPManager \
    Email \
    libcyanogen-dsp \
    VoicePlus

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
    ro.modversion=Commotio-B60 \
    ro.goo.version=60

# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JWR66V BUILD_ID=JLS36G BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_EST_DATE=$(shell date +"%s")

PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/xbin/sysrw:system/xbin/sysrw \
    vendor/vanir/proprietary/common/xbin/sysro:system/xbin/sysro \
    vendor/vanir/proprietary/common/xbin/vanirinteractivegovernorgovernor:system/xbin/vanirinteractivegovernorgovernor \
    vendor/vanir/proprietary/common/xbin/vanirflash:system/xbin/vanirflash \
    vendor/vanir/proprietary/common/init.vanir.rc:root/init.vanir.rc \
    vendor/vanir/proprietary/common/bin/sysinit:system/bin/sysinit \
    vendor/vanir/proprietary/common/etc/init.d/00firsties:system/etc/init.d/00firsties \
    vendor/vanir/proprietary/common/xbin/purgethumbnails:system/xbin/purgethumbnails

PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so \
    vendor/vanir/proprietary/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinime.so

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/vanir/proprietary/common/xbin/hunter:system/xbin/hunter \
    vendor/vanir/proprietary/common/xbin/testinitd:system/xbin/testinitd \
    vendor/vanir/proprietary/common/xbin/vanircheckcpu:system/xbin/vanircheckcpu \
    vendor/commotio/proprietary/system/xbin/vanirnice:system/xbin/vanirnice

#Imoseyon's zram script
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/xbin/zram:system/xbin/zram

# Misc Files
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/etc/hosts:system/etc/hosts \
    vendor/vanir/proprietary/common/etc/resolv.conf:system/etc/resolv.conf

# proprietary guts
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/vanir/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# entropy mumbo jump
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/xbin/CB_RunHaveged:system/xbin/CB_RunHaveged \
    vendor/vanir/proprietary/common/xbin/haveged:system/xbin/haveged \
    vendor/vanir/proprietary/common/xbin/vanirentropy:system/xbin/vanirentropy \
    vendor/vanir/proprietary/common/bin/cronlogger:system/bin/cronlogger

# init.d Tweaks
PRODUCT_COPY_FILES +=  \
    vendor/commotio/proprietary/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/commotio/proprietary/system/etc/init.d/01dhotheory:system/etc/init.d/01dhotheory \
    vendor/commotio/proprietary/system/etc/init.d/03dhokernel:system/etc/init.d/03dhokernel \
    vendor/vanir/proprietary/common/etc/init.d/06ENTROPY:system/etc/init.d/06ENTROPY \
    vendor/vanir/proprietary/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/commotio/proprietary/system/etc/init.d/15cmplxfilesystem:system/etc/init.d/15cmplxfilesystem \
    vendor/commotio/proprietary/system/etc/init.d/91cmplxzipalign:system/etc/init.d/91cmplxzipalign \
    vendor/commotio/proprietary/system/etc/init.d/98cmplxth3ory:system/etc/init.d/98cmplxth3ory \
    vendor/vanir/proprietary/common/etc/init.d/99vanir:system/etc/init.d/99vanir \
    vendor/commotio/proprietary/system/etc/init.d/ZZafterboot:system/etc/init.d/ZZafterboot \
    vendor/vanir/proprietary/common/etc/cron/cron.minutely/00nicetweaks:/system/etc/cron/cron.minutely/00nicetweaks \
    vendor/vanir/proprietary/common/etc/cron/cron.daily/00sqlitespeed:/system/etc/cron/cron.daily/00sqlitespeed

# Backup Tools
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/vanir/proprietary/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/vanir/proprietary/common/bin/50-vanir.sh:system/addon.d/50-vanir.sh

# LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/vanir/overlay/dictionaries

#Define thirdparty for Koush's SU
#SUPERUSER_PACKAGE := com.vanir.superuser
SUPERUSER_EMBEDDED := true

# Required CM packages
PRODUCT_PACKAGES += \
    BluetoothExt \
    Camera \
    LatinIME \
    PhotoTable \
    SoundRecorder\
    Superuser \
    su

# CM Hardware Abstraction Framework
PRODUCT_PACKAGES += \
    org.cyanogenmod.hardware \
    org.cyanogenmod.hardware.xml 

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
    ntfs-3g

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

# sqlite3 - for bad voodoo :-D
PRODUCT_PACKAGES += \
    sqlite3

PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/etc/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml