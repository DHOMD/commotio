# Commotio OTA Packaging
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := vendor/commotio/tools/ota/ota_from_target_files

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

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.checkjni=false \
    dalvik.vm.debug.alloc=0 \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.execution-mode=int:jit
    dalvik.vm.heapstartsize=16m \
    dalvik.vm.heapgrowthlimit=128m \
    dalvik.vm.heapsize=320m \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.stack-trace-file=/data/anr/traces.txt \
    dalvik.vm.verify-bytecode=false

# General
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    debug.sf.hw=1 \
    debug.performance.tuning=1 \
    video.accelerate.hw=1 \
    persist.sys.purgeable_assets=0 \
    persist.sys.use_dithering=0 \
    pm.sleep_mode=1 \
    ro.config.nocheckin=1 \
    ro.kernel.checkjni=0 \
    ro.kernel.android.checkjni=0 \
    ro.HOME_APP_ADJ=1 \
    ro.mot.eri.losalert.delay=800 \
    ro.ril.disable.power.collapse=0 \
    ro.ril.fast.dormancy.rule=0 \
    ro.vold.umsdirtyratio=20 \
    wifi.supplicant_scan_interval=300 \
    windowsmgr.max_events_per_sec=280

