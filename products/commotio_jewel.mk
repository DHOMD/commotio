#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-jewel

# Inherit common phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/cdma.mk)

# Vanir Product Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/commotio/proprietary/boot_animations/800x1280.zip:system/media/bootanimation.zip 

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/htc/jewel/jewel.mk)

#... and then make the AOSP device configuration for Jewel get on its knees and sing the national anthem into our "microphones"
PRODUCT_LOCALES := en_US

# Setup device specific product configuration.
PRODUCT_NAME := commotio_jewel
PRODUCT_BRAND := htc
PRODUCT_DEVICE := jewel
PRODUCT_MODEL := EVO 4G LTE
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jewel BUILD_ID=JSS15Q BUILD_FINGERPRINT="htc/sprint_wwe/jewel:4.3/JSS15Q/310297.4:user/release-keys" PRIVATE_BUILD_DESC="4.13.651.4 CL310297 release-keys"
