#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=Commotio-jfltespr

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/jfltespr/full_jfltespr.mk)

$(call inherit-product, vendor/commotio/products/commotio_jf.mk)
$(call inherit-product, vendor/vanir/products/cdma.mk)

#... and then make the AOSP device configuration for toro get on its knees and sing the national anthem into our "microphones"
PRODUCT_LOCALES := en_US

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltespr TARGET_DEVICE=jfltespr BUILD_FINGERPRINT="samsung/jfltespr/jfltespr:4.3/JLS36C/L720VPUAMDL:user/release-keys" PRIVATE_BUILD_DESC="jfltespr-user 4.3 JLS36C L720VPUAMDL release-keys"
PRODUCT_NAME := commotio_jfltespr
PRODUCT_DEVICE := jfltespr
