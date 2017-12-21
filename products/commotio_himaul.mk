#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=commotio-himaul

# Boot Animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Inherit device configuration
$(call inherit-product, device/htc/himaul/full_himaul.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := commotio_himaul
BOARD_VENDOR := htc
TARGET_VENDOR := htc
PRODUCT_DEVICE := himaul

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE="htc_himaulatt" PRODUCT_NAME="himaulatt_na_gen_unlock" BUILD_FINGERPRINT="htc/himaulatt_na_gen_unlock/htc_himaulatt:7.0/NRD90M/870623.7:user/release-keys" PRIVATE_BUILD_DESC="4.27.502.7 CL870623 release-keys"
