# Commotio OTA Packaging
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := vendor/commotio/tools/ota/ota_from_target_files

#A Theory in fixing random breaks
PRODUCT_BRAND ?= commotio

#A Theory in fixing Boot Animation
BOOT_ANIMATION_VENDOR ?= commotio
PRODUCT_PACKAGES += bootanimation.zip

# Commotio files
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/commotio/overlay/commotio

#    vendor/commotio/overlay/theme \

# Also see overrides in common
# Sound 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=CanisMajor.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.call_ring.delay=50 \
    persist.sys.camera-sound=0 

# Video - Photo
PRODUCT_PROPERTY_OVERRIDES += \
    ro.media.enc.jpeg.quality=100

# General
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    debug.sf.hw=1 \
    video.accelerate.hw=1 \
    persist.service.adb.enable=1
    pm.sleep_mode=1 \
    ro.config.nocheckin=1 \
    ro.kernel.checkjni=0 \
    ro.kernel.android.checkjni=0 \
    ro.mot.eri.losalert.delay=800 \
    ro.ril.disable.power.collapse=0 \
    ro.ril.fast.dormancy.rule=0 \
    ro.vold.umsdirtyratio=20 \
    wifi.supplicant_scan_interval=300

# Doghouse

