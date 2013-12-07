#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-jflteatt

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/jflteatt/full_jflteatt.mk)

$(call inherit-product, vendor/commotio/products/commotio_jf-common.mk)

$(call inherit-product, vendor/commotio/products/gsm.mk)

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jflteuc TARGET_DEVICE=jflteatt BUILD_FINGERPRINT="samsung/jflteuc/jflteatt:4.4.1/KOT49E/I337UCUAMDL:user/release-keys" PRIVATE_BUILD_DESC="jflteuc-user 4.4.1 KOT49E I337UCUAMDL release-keys"

PRODUCT_NAME := commotio_jflteatt
PRODUCT_DEVICE := jflteatt
