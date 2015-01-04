#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-hltetmo

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/samsung/hltetmo/full_hltetmo.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hltetmo
PRODUCT_NAME := commotio_hltetmo
