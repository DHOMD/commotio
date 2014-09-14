#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=Commotio-klimtwifi

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/1600x2560.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/samsung/klimtwifi/full_klimtwifi.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)
$(call inherit-product, vendor/commotio/products/gsm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := klimtwifi
PRODUCT_NAME := commotio_klimtwifi
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SM-T700

PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_MODEL=SM-T700 \
PRODUCT_NAME=klimtwifi \
PRODUCT_DEVICE=klimtwifi \
TARGET_DEVICE=klimtwifi \