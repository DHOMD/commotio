#Squisher Choosing
DHO_VENDOR := commotio

# Commotio
$(call inherit-product, vendor/commotio/products/common_commotio.mk)
$(call inherit-product, vendor/commotio/products/common_phones.mk)

#Commotio theme files
    PRODUCT_PACKAGE_OVERLAYS += vendor/commotio/overlay/theme

# Vanir CDMA overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/vanir/overlay/cdma_phone

# Vanir Config = awesome
PRODUCT_COPY_FILES +=  \
    vendor/commotio/proprietary/system/etc/vanir.cfg:system/etc/vanir.cfg

# Blobs necessary for Bootanimation
PRODUCT_COPY_FILES +=  \
   vendor/commotio/proprietary/system/media/bootanimation.zip:system/media/bootanimation.zip

# Inherit AOSP device configuration for toroplus.
$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)

#... and then make the AOSP device configuration for toro get on its knees and sing the national anthem into our "microphones"
PRODUCT_LOCALES := en_US

# Setup device specific product configuration.
PRODUCT_NAME := commotio_toroplus
PRODUCT_BRAND := google
PRODUCT_DEVICE := toroplus
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysidspr BUILD_FINGERPRINT="google/mysidspr/toroplus:4.3/JSS15J/737497:user/release-keys" PRIVATE_BUILD_DESC="mysidspr-user 4.3 JSS15J 737497 release-keys"
        
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=Commotio-TOROPLUS
