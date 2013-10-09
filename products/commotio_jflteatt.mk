#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=Commotio-jflteatt

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/jflteatt/full_jflteatt.mk)

$(call inherit-product, vendor/commotio/products/commotio_jf.mk)
$(call inherit-product, vendor/vanir/products/gsm.mk)

#... and then make the AOSP device configuration for toro get on its knees and sing the national anthem into our "microphones"
PRODUCT_LOCALES := en_US

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jflteuc TARGET_DEVICE=jflteatt BUILD_FINGERPRINT="samsung/jflteuc/jflteatt:4.3/JLS36I/I337UCUAMDL:user/release-keys" PRIVATE_BUILD_DESC="jflteuc-user 4.3 JLS36I I337UCUAMDL release-keys"

PRODUCT_NAME := commotio_jflteatt
PRODUCT_DEVICE := jflteatt
