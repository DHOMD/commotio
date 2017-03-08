#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += drm.service.enabled=true ro.goo.rom=commotio-oneplus2

# Boot Animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/oneplus/oneplus2/device.mk)
$(call inherit-product, vendor/oneplus/oneplus2/oneplus2-vendor.mk)

# Inherit common oneplus2 files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# AptX b/c we can
$(call inherit-product, vendor/qcom/binaries/bluetooth/bluetooth-vendor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := commotio_oneplus2
PRODUCT_BRAND := OnePlus
PRODUCT_DEVICE := oneplus2
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

TARGET_VENDOR_PRODUCT_NAME := OnePlus2
TARGET_VENDOR_DEVICE_NAME := OnePlus2
TARGET_VENDOR := oneplus

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=OnePlus2 PRODUCT_NAME=OnePlus2
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=OnePlus/OnePlus2/OnePlus2:6.0.1/MMB29M/1447840920:user/release-keys PRIVATE_BUILD_DESC="OnePlus2-user 6.0.1 MMB29M 20 dev-keys"
