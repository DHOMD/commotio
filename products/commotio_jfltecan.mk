#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-jfltecan

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/jfltecan/full_jfltecan.mk)

$(call inherit-product, vendor/commotio/products/commotio_jf-common.mk)

$(call inherit-product, vendor/commotio/products/gsm.mk)

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltevl TARGET_DEVICE=jfltecan BUILD_FINGERPRINT="samsung/jfltevl/jfltecan:4.4.1/KOT49E/I337MVLUAMDJ:user/release-keys" PRIVATE_BUILD_DESC="jfltevl-user 4.4.1 KOT49E I337MVLUAMDJ release-keys"

PRODUCT_NAME := commotio_jfltecan
PRODUCT_DEVICE := jfltecan
