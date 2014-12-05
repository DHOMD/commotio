# Commotio OTA Packaging
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := vendor/commotio/tools/ota/ota_from_target_files

# Commotio files
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/commotio/overlay/commotio

#    vendor/commotio/overlay/theme \

#Gapps
GAPPS := false
ifeq ($(GAPPS),true)
$(call inherit-product, vendor/commotio/products/common_gapps.mk)
endif

# Also see overrides in common
# Sound 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=CanisMajor.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg \
    ro.telephony.call_ring.delay=50 \
    persist.sys.dun.override=0 \
    persist.sys.camera-sound=0 

# Video - Photo
PRODUCT_PROPERTY_OVERRIDES += \
    ro.media.enc.jpeg.quality=100

# General
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    debug.sf.hw=1 \
    video.accelerate.hw=1 \
    pm.sleep_mode=1 \
    ro.config.nocheckin=1 \
    ro.kernel.checkjni=0 \
    ro.kernel.android.checkjni=0 \
    ro.mot.eri.losalert.delay=800 \
    ro.ril.disable.power.collapse=0 \
    ro.ril.fast.dormancy.rule=0 \
    ro.vold.umsdirtyratio=20 \
    wifi.supplicant_scan_interval=300 \

# Doghouse

