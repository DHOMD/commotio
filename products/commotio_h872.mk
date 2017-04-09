#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=commotio-h872

# Boot Animation
TARGET_SCREEN_WIDTH := 1440
TARGET_SCREEN_HEIGHT := 2880

# Inherit from those products. Most annoying first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/lge/h872/full_h872.mk)
# Inherit vanir phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_NAME := commotio_h872
PRODUCT_DEVICE := h872
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H872
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g6" \
    PRODUCT_NAME="lucye_tmo_us" \
    BUILD_FINGERPRINT="lge/lucye_tmo_us/lucye:7.0/NRD90U/17062223981e1:user/release-keys" \
PRIVATE_BUILD_DESC="lucye_tmo_us-user 7.0 NRD90U 17062223981e1 release-keys"
