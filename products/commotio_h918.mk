#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=commotio-h918

# Boot Animation
TARGET_SCREEN_WIDTH := 1440
TARGET_SCREEN_HEIGHT := 2560

# Inherit device configuration
$(call inherit-product, device/lge/h918/full_h918.mk)
# Inherit vanir phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_NAME := commotio_h918

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE="v20" PRODUCT_NAME="elsa_tmo_us" BUILD_FINGERPRINT="lge/elsa_tmo_us/elsa:7.0/NRD90M/1625821141c30:user/release-keys" PRIVATE_BUILD_DESC="elsa_tmo_us-user 7.0 NRD90M 1625821141c30 release-keys"
