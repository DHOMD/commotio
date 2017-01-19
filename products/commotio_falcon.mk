#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-falcon

# Boot Animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Inherit from those products. Most annoying first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/falcon/full_falcon.mk)

# Inherit common phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# device name
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := falcon
PRODUCT_RELEASE_NAME := MOTO G
PRODUCT_NAME := commotio_falcon
PRODUCT_MODEL := MOTO G
PRODUCT_MANUFACTURER := MOTOROLA