#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=commotio-himawl

# Boot Animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Inherit device configuration
$(call inherit-product, device/htc/himawl/full_himawl.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

PRODUCT_GMS_CLIENTID_BASE := android-verizon

## Device identifier. This must come after all inclusions
PRODUCT_NAME := commotio_himawl

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE="htc_himawl" PRODUCT_NAME="HTCOneM9vzw" BUILD_FINGERPRINT="htc/HTCOneM9vzw/htc_himawl:6.0/MRA58K/669662.7:user/release-keys" PRIVATE_BUILD_DESC="3.37.605.7 CL669662 release-keys"
