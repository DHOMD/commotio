# Vanir files
PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/common

# Audio
$(call inherit-product, vendor/vanir/products/media_sexificators.mk)

# Add some tones (if this grows to more than like... 5 ringtones and 5 notifications, old ones will be dropped)
$(call inherit-product, vendor/vanir/proprietary/ringtones/VanirRingtones.mk)

# QuickBoot (included automagically for non-oppo qcom devices)
PRODUCT_PACKAGES += \
    QuickBoot \
    init.vanir.quickboot.rc

VANIR_VERSION:=7.1
Vanir_BUILD:=$(VANIR_VERSION)-$(shell date +".%m%d%y")
CM_VERSION:=$(VANIR_VERSION)
LINEAGE_VERSION:=$(VANIR_VERSION)

#Java 1.8
EXPERIMENTAL_USE_JAVA8 := true

# Build Properties Legacy???
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL

# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.hwfeature_wakeupkey=0 \
    ro.lge.proximity.delay=20 \
    mot.proximity.delay=20 \
    ro.vanir.base=7.0 \
    ro.goo.developerid=DHO \
    ro.modversion=Commotio-B126 \
    ro.goo.version=126

# Gello and it's complex nature, to get it work:
# cd external/gello_build && . gello_build.sh --depot
# The following line will do the rest
# WITH_GELLO_SOURCE := true

PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/xbin/sysrw:system/xbin/sysrw \
    vendor/vanir/proprietary/common/xbin/sysro:system/xbin/sysro \
    vendor/vanir/proprietary/common/xbin/vanirflash:system/xbin/vanirflash \
    vendor/vanir/proprietary/common/init.vanir.rc:root/init.vanir.rc \
    vendor/vanir/proprietary/common/bin/otasigcheck.sh:system/bin/otasigcheck.sh \
    vendor/vanir/proprietary/common/bin/run-parts:system/bin/run-parts \
    vendor/vanir/proprietary/common/bin/sysinit:system/bin/sysinit \
    vendor/vanir/proprietary/common/etc/init.d/00firsties:system/etc/init.d/00firsties

ifeq ($(VANIR_FAILSAFE),)
# Blobs common to all devices
PRODUCT_COPY_FILES += \
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
    vendor/commotio/proprietary/system/etc/init.d/98cmplxth3ory:system/etc/init.d/98cmplxth3ory

# system and persistent /data boot.d Tweaks - triggered when ro.boot_complete is set to 1
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/bin/afterboot:system/bin/afterboot \
    vendor/vanir/proprietary/common/etc/boot.d/00vanirnice:system/etc/boot.d/00vanirnice

# Backup Tools
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/bin/automagic.sh:install/bin/automagic.sh \
    vendor/vanir/proprietary/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/vanir/proprietary/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/vanir/proprietary/common/bin/50-vanir.sh:system/addon.d/50-vanir.sh \
    vendor/vanir/proprietary/common/bin/71-calendar.sh:system/addon.d/71-calendar.sh \
    vendor/vanir/proprietary/common/bin/blacklist:system/addon.d/blacklist \
    vendor/vanir/proprietary/common/bin/whitelist:system/addon.d/whitelist
endif

# Backup Services whitelist
PRODUCT_COPY_FILES += \
    vendor/vanir/config/permissions/backup.xml:system/etc/sysconfig/backup.xml

# Always build packages
PRODUCT_PACKAGES += \
    Camera \
    LatinIME

# Build Vanir packages
PRODUCT_PACKAGES += \
    gello \
    IndecentXposure \
    klogripper \
    openvpn \
    VpnDialogs

# Build Substratium packages
PRODUCT_PACKAGES += \
    aapt \
    aopt
#    masquerade

#    VanirUpdater

# FOR HOTFIXING KERNELS MAINTAINED BY BUNGHOLES
PRODUCT_PACKAGES += \
    utility_mkbootimg \
    utility_unpackbootimg

ifeq ($(OTA_PACKAGE_SIGNING_KEY),)
    PRODUCT_EXTRA_RECOVERY_KEYS += \
        vendor/vanir/build/target/product/security/cm \
        vendor/vanir/build/target/product/security/cm-devkey
endif

# Keyboard Files
    PRODUCT_COPY_FILES += vendor/vanir/proprietary/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinime.so
    PRODUCT_PACKAGES += Latinimegoogle

#
#
#
#
#


ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

ifneq ($(TARGET_BUILD_VARIANT),user)
# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += persist.sys.dun.override=0
endif

ifeq ($(TARGET_BUILD_VARIANT),user)
# Disable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
else
# Enable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
endif

# Copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/vanir/prebuilt/common/lib/content-types.properties:system/lib/content-types.properties

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# Theme engine
#PRODUCT_PACKAGES += \
#    aapt \
#    ThemeChooser \
#    ThemesProvider \
#    HexoLibre

# Is this needed?
#     ThemeManagerService \

# CMSDK
include vendor/vanir/config/cmsdk_common.mk

# Required CM packages
PRODUCT_PACKAGES += \
    BluetoothExt \
    CMAudioService \
    CMParts \
    Profiles \
    Trebuchet \
    WeatherManagerService

#    Launcher3 \  -- not present ATM
#    Development \

# Optional CM packages
PRODUCT_PACKAGES += \
    libemoji \
    LiveWallpapersPicker \
    PhotoTable \
    Terminal

# Includes explicitly to workaround GMS issue
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librsjni

# Custom CM packages
PRODUCT_PACKAGES += \
    AudioFX \
    CMSettingsProvider \
    ExactCalculator \
    LiveLockScreenService \
    LockClock \
    Screencast \
    SoundRecorder \
    WallpaperPicker \
    WeatherProvider

# Exchange support
PRODUCT_PACKAGES += \
    Exchange2

# Extra tools in CM
PRODUCT_PACKAGES += \
    7z \
    bash \
    bzip2 \
    curl \
    fsck.ntfs \
    gdbserver \
    htop \
    lib7z \
    libsepol \
    micro_bench \
    mke2fs \
    mkfs.ntfs \
    mount.ntfs \
    oprofiled \
    pigz \
    powertop \
    sqlite3 \
    strace \
    tune2fs \
    unrar \
    unzip \
    vim \
    wget \
    zip

# Custom off-mode charger
ifneq ($(WITH_CM_CHARGER),false)
PRODUCT_PACKAGES += \
    charger_res_images \
    cm_charger_res_images \
    font_log.png \
    libhealthd.cm
endif

# ExFAT support
WITH_EXFAT ?= true
ifeq ($(WITH_EXFAT),true)
TARGET_USES_EXFAT := true
PRODUCT_PACKAGES += \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat
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

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so

# Storage manager
PRODUCT_PROPERTY_OVERRIDES += \
    ro.storage_manager.enabled=true

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
telephony-ext

# These packages are excluded from user builds
ifneq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_PACKAGES += \
    procmem \
    procrank \
    su
endif

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=0

# Allow compiling on Jenkins
-include $(WORKSPACE)/build_env/image-auto-bits.mk

PRODUCT_PACKAGES += \
	commotioanimation.zip

# Any other Vanir calls?
$(call inherit-product-if-exists, vendor/vanir-private/Private.mk)
$(call prepend-product-if-exists, vendor/extra/product.mk)


