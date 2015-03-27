#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-m7spr

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/cdma.mk)

# Inherit model specific configuration.
$(call inherit-product, vendor/commotio/products/multi_m7-common.mk)

# Inherit AOSP device configuration for HTC One.
$(call inherit-product, device/htc/m7spr/full_m7spr.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := commotio_m7spr
PRODUCT_DEVICE := m7spr
PRODUCT_BRAND := HTC
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := One

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m7wls BUILD_ID=LMY47I BUILD_FINGERPRINT="htc/m7wls/m7wls:5.0/LMY47I/166937.7:user/release-keys" PRIVATE_BUILD_DESC="1.29.651.7 CL166937 release-keys"
