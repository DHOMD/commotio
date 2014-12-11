#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-golden

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/480x800.zip:system/media/bootanimation.zip

# Low Volume In call fix - pure hack
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/u8500/CallService.apk:system/app/CallService.apk

# Inherit device configuration
$(call inherit-product, device/samsung/golden/full_golden.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := golden
PRODUCT_NAME := commotio_golden
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I8190

# Set build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=commotio_golden BUILD_FINGERPRINT=commotioaosp/commotio_golden/golden:5.0/$(BUILD_ID) PRIVATE_BUILD_DESC="GT-I8190  5.0"
