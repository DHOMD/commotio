#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-ls990

# Boot Animation
#PRODUCT_COPY_FILES += \
#    vendor/commotio/proprietary/boot_animations/1440x2560.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/lge/ls990/full_ls990.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)
$(call inherit-product, vendor/commotio/products/cdma.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ls990
PRODUCT_NAME := commotio_ls990

