#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-jflteusc

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/jflteusc/full_jflteusc.mk)

$(call inherit-product, vendor/commotio/products/commotio_jf-common.mk)

$(call inherit-product, vendor/commotio/products/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jflteusc TARGET_DEVICE=jflteusc BUILD_FINGERPRINT="samsung/jflteusc/jflteusc:4.4.2/KOT49H/R970VXUAMD9:user/release-keys" PRIVATE_BUILD_DESC="jflteusc-user 4.4.2 KOT49H R970VXUAMD9 release-keys"

PRODUCT_NAME := commotio_jflteusc
PRODUCT_DEVICE := jflteusc

