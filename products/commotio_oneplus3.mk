#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=commotio-oneplus3

# Boot Animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Inherit device configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, device/oneplus/oneplus3/device.mk)

# Inherit common oneplus2 files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := commotio_oneplus3
PRODUCT_DEVICE := oneplus3
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

TARGET_VENDOR_PRODUCT_NAME := OnePlus3
TARGET_VENDOR_DEVICE_NAME := OnePlus3

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=OnePlus3 PRODUCT_NAME=OnePlus3
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=OnePlus/OnePlus3/OnePlus3:7.0/NRD90M/12251711:user/release-keys PRIVATE_BUILD_DESC="OnePlus3-user 7.0 NRD90M 89 dev-keys"


PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model

TARGET_VENDOR := oneplus
