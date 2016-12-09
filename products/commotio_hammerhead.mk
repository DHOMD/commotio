#Squisher Choosing
DHO_VENDOR := commotio
91_HACK:= true

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=commotio-hammerhead

# Inherit VANIR files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Boot Animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Inherit device configuration
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hammerhead
PRODUCT_NAME := commotio_hammerhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=hammerhead BUILD_FINGERPRINT=google/hammerhead/hammerhead:6.0.1/M4B30X/3237893:user/release-keys PRIVATE_BUILD_DESC="hammerhead-user 6.0.1 M4B30X 3237893 release-keys"
