#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-kiwi

# Boot Animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Inherit device configuration
$(call inherit-product, device/huawei/kiwi/full_kiwi.mk)

# Inherit common files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

PRODUCT_NAME := commotio_kiwi
PRODUCT_BRAND := HONOR
PRODUCT_MODEL := KIW-L24
BOARD_VENDOR := huawei

PRODUCT_GMS_CLIENTID_BASE := android-huawei
