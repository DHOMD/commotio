#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-kiwi

# Boot Animation
#PRODUCT_COPY_FILES += vendor/commotio/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/huawei/kiwi/full_kiwi.mk)

# Inherit common files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

PRODUCT_NAME := commotio_kiwi
PRODUCT_BRAND := HONOR
PRODUCT_MODEL := KIW-L24
BOARD_VENDOR := huawei

PRODUCT_GMS_CLIENTID_BASE := android-huawei
