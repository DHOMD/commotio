#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=commotio-bullhead

# Inherit vanir phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)

# Boot Animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Inherit device configuration
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

# It's a Nexus
PRODUCT_IS_A_NEXUS := true

## Device identifier. This must come after all inclusions
PRODUCT_NAME := commotio_bullhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5X
TARGET_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=bullhead BUILD_FINGERPRINT="google/bullhead/bullhead:7.1.2/N2G47Z/4045513:user/release-keys" PRIVATE_BUILD_DESC="bullhead-user 7.1.2 N2G47Z 4045513 release-keys"

