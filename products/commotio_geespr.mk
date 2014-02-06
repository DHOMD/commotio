#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ring.delay=0 \
    ro.telephony.call_ring.delay=50 \
    ro.goo.rom=commotio-geespr

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/768x1280.zip:system/media/bootanimation.zip

# commotio configuration
$(call inherit-product, vendor/commotio/products/common_phones.mk)
$(call inherit-product, vendor/commotio/products/cdma.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Inherit AOSP device configuration for geespr.
$(call inherit-product, device/lge/geespr/full_geespr.mk)

# Setup device specific product configuration.
PRODUCT_NAME := commotio_geespr
PRODUCT_DEVICE := geespr
PRODUCT_BRAND := LGE
PRODUCT_MODEL := Optimus G
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

# Enable Torch
PRODUCT_PACKAGES += Torch
