#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-vs985

# Boot Animation
#PRODUCT_COPY_FILES += \
#    vendor/commotio/proprietary/boot_animations/1440x2560.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/lge/vs985/full_vs985.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)
$(call inherit-product, vendor/commotio/products/cdma.mk)
$(call inherit-product, vendor/vanir/products/vzw.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vs985
PRODUCT_NAME := commotio_vs985

