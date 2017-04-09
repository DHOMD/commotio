#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=commotio-h830

# Boot Animation
TARGET_SCREEN_WIDTH := 1440
TARGET_SCREEN_HEIGHT := 2560

# Inherit from those products. Most annoying first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/lge/h830/full_h830.mk)
# Inherit vanir phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_NAME := commotio_h830
PRODUCT_DEVICE := h830
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H830
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g5" \
    PRODUCT_NAME="h1_tmo_us" \
    BUILD_FINGERPRINT="lge/h1_tmo_us/h1:7.0/NRD90U/1631213003394:user/release-keys" \
PRIVATE_BUILD_DESC="h1_tmo_us-user 7.0 NRD90U 1631213003394 release-keys"
