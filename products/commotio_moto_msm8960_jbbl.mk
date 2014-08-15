#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-moto_msm8960_jbbl

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/motorola/moto_msm8960_jbbl/full_moto_msm8960.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)
$(call inherit-product, vendor/commotio/products/gsm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := moto_msm8960_jbbl
PRODUCT_NAME := commotio_moto_msm8960_jbbl
PRODUCT_BRAND := Motorola
PRODUCT_MANUFACTURER := Motorola
PRODUCT_MODEL := MOTOROLA MSM8960