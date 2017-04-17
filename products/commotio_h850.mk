#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=commotio-h850

# Boot Animation
TARGET_SCREEN_WIDTH := 1440
TARGET_SCREEN_HEIGHT := 2560

# Inherit from those products. Most annoying first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/lge/h850/full_h850.mk)
# Inherit vanir phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_NAME := commotio_h850
PRODUCT_DEVICE := h850
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H850
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE="g5" PRODUCT_NAME="h1_global_com" BUILD_FINGERPRINT="lge/h1_global_com/h1:7.0/NRD90U/163041049db12:user/release-keys" PRIVATE_BUILD_DESC="h1_global_com-user 7.0 NRD90U 163041049db12 release-keys"
