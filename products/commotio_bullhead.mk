#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-bullhead

# Inherit vanir phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)

PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := commotio_bullhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5x
TARGET_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
    BUILD_FINGERPRINT="google/bullhead/bullhead:6.0/MDB08M/2353240:user/release-keys" \
    PRIVATE_BUILD_DESC="bullhead-user 6.0 MDB08M 2353240 release-key"

