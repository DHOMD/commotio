#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=commotio-hiaeuhl

# Boot Animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Inherit device configuration
$(call inherit-product, device/htc/hiaeuhl/full_hiaeuhl.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := commotio_hiaeuhl
BOARD_VENDOR := htc
TARGET_VENDOR := htc
PRODUCT_DEVICE := hiaeuhl

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE="htc_hiaeuhl" PRODUCT_NAME="hiaeuhl_00401" BUILD_FINGERPRINT="htc/hiaeuhl_00401/htc_hiaeuhl:6.0/MRA58K/635503.7:user/release-keys" PRIVATE_BUILD_DESC="1.10.401.7 CL635503 release-keys"
