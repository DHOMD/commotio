#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-p700

# place boot animation here once we make one
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/480x480.zip:system/media/bootanimation.zip

# Inherit common product files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Inherit AOSP device configuration for p700.
$(call inherit-product, device/lge/p700/p700.mk)

# Setup device specific product configuration.
PRODUCT_NAME := commotio_p700
PRODUCT_BRAND := lge
PRODUCT_DEVICE := p700
PRODUCT_MODEL := LG-P700
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=u0_open_eu BUILD_FINGERPRINT=lge/u0_open_eu/u0:5.0/LRX22C/lgp700-V10a.20120418.144808:user/release-keys PRIVATE_BUILD_DESC="u0_open_eu-user 5.0 LRX22C lgp700-V10a.20120418.144808 release-keys"
