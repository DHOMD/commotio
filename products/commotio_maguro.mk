#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-MAGURO

# More Language support for Maguro LatinIME
PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/dictionaries

# Inherit common product files.
$(call inherit-product, vendor/commotio/products/commotio_tuna.mk)
$(call inherit-product, vendor/commotio/products/gsm.mk)

# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Setup device specific product configuration.
PRODUCT_NAME := commotio_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.4.2/KOT49H/937116:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.4.2 KOT49H 937116 release-keys"
