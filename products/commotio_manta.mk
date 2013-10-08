#Squisher Choosing
DHO_VENDOR := commotio

# Commotio
$(call inherit-product, vendor/commotio/products/common_commotio.mk)
$(call inherit-product, vendor/commotio/products/common_tabs.mk)
    
# Commotio theme files
    PRODUCT_PACKAGE_OVERLAYS += vendor/commotio/overlay/theme

PRODUCT_PACKAGES += \
    LiveWallpapersPicker

# Boot Animation
PRODUCT_COPY_FILES += \
   vendor/commotio/proprietary/system/media/commotio-1280x800.zip:system/media/bootanimation.zip

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

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mantaray BUILD_FINGERPRINT=google/mantaray/manta:4.3/JLS36G/737497:user/release-keys PRIVATE_BUILD_DESC="mantaray-user 4.3 JLS36G 737497 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=Commotio-MANTA