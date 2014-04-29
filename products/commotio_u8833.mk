#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=Commotio-u8833

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/480x800.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/huawei/u8833/full_u8833.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)
$(call inherit-product, vendor/commotio/products/gsm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := commotio_u8833
PRODUCT_DEVICE := u8833
PRODUCT_BRAND := Huawei
PRODUCT_MANUFACTURER := HUAWEI
PRODUCT_MODEL := Ascend Y300