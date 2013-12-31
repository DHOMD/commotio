#Squisher Choosing
DHO_VENDOR := Commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-xt1060

# Inherit AOSP device configuration for xt1060.
$(call inherit-product, device/motorola/xt1060/full_xt1060.mk)

NO_DRM_BLOBS := true

# Inherit common commotio files.
$(call inherit-product, vendor/vanir/products/beats.mk)
$(call inherit-product, vendor/commotio/products/cdma.mk)
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_BRAND=motorola \
    PRODUCT_NAME=XT1060 \
    BUILD_PRODUCT=ghost_verizon \
    BUILD_FINGERPRINT=motorola/ghost_verizon/ghost:4.4.2/13.9.0Q2.X-116-MX-17-53/5:user/release-keys

PRODUCT_NAME := commotio_xt1060
PRODUCT_DEVICE := xt1060
