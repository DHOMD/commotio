#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-d2att

# Boot Animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Inherit from those products. Most annoying first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/samsung/d2att/full_d2att.mk)

# Inherit common vanir stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)

PRODUCT_NAME := commotio_d2att
