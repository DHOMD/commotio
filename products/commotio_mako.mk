#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=CanisMajor.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg \
    dalvik.vm.dexopt-flags=v=n,o=v,u=n,m=y \
    dalvik.vm.heapstartsize=16m \
    dalvik.vm.heapgrowthlimit=128m \
    dalvik.vm.heapsize=320m \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.stack-trace-file=/data/anr/traces.txt \
    dalvik.vm.verify-bytecode=false \
    ro.config.vc_call_vol_steps=12 
    
#Commotio theme files
    PRODUCT_PACKAGE_OVERLAYS += vendor/commotio/overlay/theme

# Blobs necessary for drm + Bootanimation
PRODUCT_COPY_FILES +=  \
   vendor/vanir/proprietary/common/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
   vendor/vanir/proprietary/common/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
   vendor/vanir/proprietary/common/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
   vendor/vanir/proprietary/common/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
   vendor/commotio/proprietary/system/media/bootanimation.zip:system/media/bootanimation.zip

# Beats Audio
$(call inherit-product, vendor/commotio/products/common_vanir.mk)
    
# Inherit AOSP device configuration for mako.
$(call inherit-product, device/lge/mako/full_mako.mk)

#... and then make the AOSP device configuration for toro get on its knees and sing the national anthem into our "microphones"
PRODUCT_LOCALES := en_US

# Inherit common product files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Setup device specific product configuration.
PRODUCT_NAME := commotio_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.2/JOP40C/527662:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2 JOP40C 527662 release-keys" BUILD_NUMBER=527662
    
# Commotio
$(call inherit-product, vendor/commotio/products/common_commotio.mk)
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=Commotio-MAKO
