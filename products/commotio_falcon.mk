# Release name
PRODUCT_RELEASE_NAME := falcon

#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-falcon

#Booties
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip 

# Inherit common phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/falcon/full_falcon.mk)

# device name
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := falcon
PRODUCT_RELEASE_NAME := MOTO G
PRODUCT_NAME := commotio_falcon
PRODUCT_MODEL := MOTO G
PRODUCT_MANUFACTURER := MOTOROLA
