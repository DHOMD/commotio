#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=commotio-marlin

# Boot Animation ***May need update***
TARGET_SCREEN_WIDTH := 1440
TARGET_SCREEN_HEIGHT := 2560

# Inherit from our custom product configuration
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Inherit Marlin
$(call inherit-product, device/google/marlin/aosp_marlin.mk)
-include device/google/marlin/marlin/device-lineage.mk

PRODUCT_NAME := commotio_marlin
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
TARGET_MANUFACTURER := HTC
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=marlin BUILD_FINGERPRINT=google/marlin/marlin:7.1.2/NJH47F/4146041:user/release-keys PRIVATE_BUILD_DESC="marlin-user 7.1.2 NJH47F 4146041 release-keys"

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
