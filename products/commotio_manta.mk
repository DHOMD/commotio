#Squisher Choosing
DHO_VENDOR := commotio

# Commotio
$(call inherit-product, vendor/commotio/products/common_commotio.mk)
    
# Commotio theme files
    PRODUCT_PACKAGE_OVERLAYS += vendor/commotio/overlay/theme
    
# Beats Audio
# $(call inherit-product, vendor/commotio/products/common_vanir.mk)

# Make Tabs
$(call inherit-product, vendor/commotio/products/common_tabs.mk)

PRODUCT_PACKAGES += \
    LiveWallpapersPicker

# Blobs necessary for drm
PRODUCT_COPY_FILES += \
   vendor/vanir/proprietary/common/lib/libfrsdk.so:system/lib/libfrsdk.so \
   vendor/vanir/proprietary/common/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
   vendor/vanir/proprietary/common/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
   vendor/vanir/proprietary/common/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
   vendor/vanir/proprietary/common/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so

# bootanimation
PRODUCT_COPY_FILES += \
   vendor/vanir/proprietary/manta/media/bootanimation.zip:system/media/bootanimation.zip

# Tablet Overlays no radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Inherit AOSP device configuration for Manta.
$(call inherit-product, device/samsung/manta/full_manta.mk)

# More Language support for International LatinIME
PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/dictionaries

PRODUCT_NAME := commotio_manta
PRODUCT_DEVICE := manta
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mantaray BUILD_FINGERPRINT=google/mantaray/manta:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="mantaray-user 4.2.2 JDQ39 573038 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=Commotio-MANTA