#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-m8

# Boot Animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Inherit device configuration
$(call inherit-product, device/htc/m8/device.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# AptX b/c we can
$(call inherit-product, vendor/qcom/binaries/bluetooth/bluetooth-vendor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m8
PRODUCT_NAME := commotio_m8
PRODUCT_BRAND := HTC
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := m8
