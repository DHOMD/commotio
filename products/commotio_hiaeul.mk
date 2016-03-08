#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-hiaeul

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/htc/hiaeul/full_hiaeul.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := commotio_hiaeul
BOARD_VENDOR := htc
TARGET_VENDOR := htc
PRODUCT_DEVICE := hiaeul

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE="htc_hiaeul" PRODUCT_NAME="hiaeul_00617" BUILD_FINGERPRINT="htc/hiaeul_00617/htc_hiaeul:6.0.1/MMB29M/680768.4:user/release-keys" PRIVATE_BUILD_DESC="1.55.617.4 CL680768 release-keys"
