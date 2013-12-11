#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-jfltetmo

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/jfltetmo/full_jfltetmo.mk)

$(call inherit-product, vendor/commotio/products/commotio_jf-common.mk)

$(call inherit-product, vendor/commotio/products/gsm.mk)

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltetmo TARGET_DEVICE=jfltetmo BUILD_FINGERPRINT="samsung/jfltetmo/jfltetmo:4.4.1/KOT49H/M919UVUAMDB:user/release-keys" PRIVATE_BUILD_DESC="jfltetmo-user 4.4.1 KOT49H M919UVUAMDB release-keys"

PRODUCT_NAME := commotio_jfltetmo
PRODUCT_DEVICE := jfltetmo
