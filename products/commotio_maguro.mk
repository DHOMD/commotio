#Squisher Choosing
DHO_VENDOR := commotio

# Commotio
$(call inherit-product, vendor/commotio/products/common_commotio.mk)
$(call inherit-product, vendor/commotio/products/common_phones.mk)

#Commotio theme files
    PRODUCT_PACKAGE_OVERLAYS += vendor/commotio/overlay/theme

# Vanir Config = awesome
$(call inherit-product, vendor/vanir/tweaks/tuna/tweaks.mk)

# Blobs necessary for Bootanimation
PRODUCT_COPY_FILES +=  \
   vendor/commotio/proprietary/system/media/bootanimation.zip:system/media/bootanimation.zip

# More Language support for Maguro LatinIME
PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/dictionaries

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/vanir_tuna.mk)

# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Setup device specific product configuration.
PRODUCT_NAME := commotio_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.3/JLS36G/737497:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.3 JLS36G 737497 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=Commotio-MAGURO 

