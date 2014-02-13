#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-hlte

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/samsung/hlte/full_hlte.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)
$(call inherit-product, vendor/commotio/products/gsm.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hlte
PRODUCT_NAME := commotio_hlte