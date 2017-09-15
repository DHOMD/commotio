#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=commotio-hiaeul

# Boot Animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Inherit device configuration
$(call inherit-product, device/htc/hiaeul/full_hiaeul.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := commotio_hiaeul
BOARD_VENDOR := htc
TARGET_VENDOR := htc
PRODUCT_DEVICE := hiaeul

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE="htc_hiaeul" PRODUCT_NAME="hiaeul_00617" BUILD_FINGERPRINT="htc/hiaeul_00617/htc_hiaeul:7.0/NRD90M/861328.1:user/release-keys"
