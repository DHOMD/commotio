#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=commotio-angler

# Boot Animation
TARGET_SCREEN_WIDTH := 1440
TARGET_SCREEN_HEIGHT := 2560

# Inherit device configuration
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

# Inherit vanir phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# AptX will not work in /vendor if vendor images
#$(call inherit-product, vendor/qcom/binaries/bluetooth/bluetooth-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/angler/overlay-cm

# It's a Nexus
PRODUCT_IS_A_NEXUS := true

## Device identifier. This must come after all inclusions
PRODUCT_NAME := commotio_angler
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6P
TARGET_VENDOR := huawei

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=angler BUILD_FINGERPRINT=google/angler/angler:7.1.2/N2G48C/4104010:user/release-keys PRIVATE_BUILD_DESC="angler-user 7.1.2 N2G48C 4104010 release-keys"
