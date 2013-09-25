#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=Commotio-jfltevzw

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/jfltevzw/full_jfltevzw.mk)

$(call inherit-product, vendor/commotio/products/commotio_jf.mk)
$(call inherit-product, vendor/vanir/products/cdma.mk)

#... and then make the AOSP device configuration for toro get on its knees and sing the national anthem into our "microphones"
PRODUCT_LOCALES := en_US

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltevzw TARGET_DEVICE=jfltevzw BUILD_FINGERPRINT="Verizon/jfltevzw/jfltevzw:4.3/JLS36G/I545VRUAMDK:user/release-keys" PRIVATE_BUILD_DESC="jfltevzw-user 4.3 JLS36G I545VRUAMDK release-keys"

PRODUCT_NAME := commotio_jfltevzw
PRODUCT_DEVICE := jfltevzw
