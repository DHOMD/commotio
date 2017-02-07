#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=commotio-sailfish

# Boot Animation ***May need update***
TARGET_SCREEN_WIDTH := 1440
TARGET_SCREEN_HEIGHT := 2560

# Inherit aosp_sailfish
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/commotio/products/common_phones.mk)

PRODUCT_NAME := commotio_sailfish
PRODUCT_DEVICE := sailfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel
PRODUCT_MANUFACTURER := Google

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=marlin BUILD_FINGERPRINT=google/marlin/marlin:7.1.1/NOF26W/3637559:user/release-keys PRIVATE_BUILD_DESC="marlin-user 7.1.1 NOF26W 3637559 release-keys"
