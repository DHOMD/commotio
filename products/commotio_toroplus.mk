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
    
# Inherit AOSP device configuration for toroplus.
$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)

#... and then make the AOSP device configuration for toro get on its knees and sing the national anthem into our "microphones"
PRODUCT_LOCALES := en_US

# Inherit common product files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Setup device specific product configuration.
PRODUCT_NAME := commotio_toroplus
PRODUCT_BRAND := google
PRODUCT_DEVICE := toroplus
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysidspr BUILD_FINGERPRINT=google/mysidspr/toroplus:4.2.2/JDQ39/336647:user/release-keys PRIVATE_BUILD_DESC="mysidspr-user 4.2.2 JDQ39 336647 release-keys" BUILD_NUMBER=235179
    
# Commotio
$(call inherit-product, vendor/commotio/products/common_commotio.mk)
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=Commotio-TOROPLUS
