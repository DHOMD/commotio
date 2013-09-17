#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=Commotio-jfltetmo

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/jfltetmo/full_jfltetmo.mk)

$(call inherit-product, vendor/commotio/products/commotio_jf.mk)
$(call inherit-product, vendor/vanir/products/gsm.mk)

#... and then make the AOSP device configuration for toro get on its knees and sing the national anthem into our "microphones"
PRODUCT_LOCALES := en_US

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltetmo TARGET_DEVICE=jfltetmo BUILD_FINGERPRINT="samsung/jfltetmo/jfltetmo:4.3/JLS36C/M919UVUAMDB:user/release-keys" PRIVATE_BUILD_DESC="jfltetmo-user 4.3 JLS36C M919UVUAMDB release-keys"

PRODUCT_NAME := commotio_jfltetmo
PRODUCT_DEVICE := jfltetmo
