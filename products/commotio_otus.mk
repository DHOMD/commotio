#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-otus

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/540x960.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/motorola/otus/full_otus.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_RELEASE_NAME := MOTO E 3G
PRODUCT_NAME := commotio_otus
