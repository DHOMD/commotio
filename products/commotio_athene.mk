#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=commotio-athene

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920
TARGET_BOOTANIMATION_HALF_RES := true

# Inherit some common vanir stuff.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

$(call inherit-product, device/motorola/athene/full_athene.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := commotio_athene
PRODUCT_DEVICE := athene
PRODUCT_BRAND := Motorola
PRODUCT_MANUFACTURER := Motorola
PRODUCT_RELEASE_NAME := athene
