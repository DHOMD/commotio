#Squisher Choosing
DHO_VENDOR := commotio

# Commotio
$(call inherit-product, vendor/commotio/products/common_commotio.mk)
$(call inherit-product, vendor/commotio/products/common_tabs.mk)
    
# Commotio theme files
#    PRODUCT_PACKAGE_OVERLAYS += vendor/commotio/overlay/theme

PRODUCT_PACKAGES += \
    LiveWallpapersPicker

# bootanimation
# PRODUCT_COPY_FILES += \
#   vendor/vanir/proprietary/manta/media/bootanimation.zip:system/media/bootanimation.zip

# Tablet Overlays no radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Inherit AOSP device configuration for 7--.
$(call inherit-product, device/asus/tf700t/full_tf700t.mk)

# More Language support for International LatinIME
# PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/dictionaries

PRODUCT_NAME := commotio_700
PRODUCT_DEVICE := tf700t
PRODUCT_BRAND := Asus
PRODUCT_MODEL := ASUS Transformer Pad TF700T
PRODUCT_MANUFACTURER := Asus

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=EeePad BUILD_FINGERPRINT=asus/US_epad/EeePad:4.4/KRT16M/573038:user/release-keys PRIVATE_BUILD_DESC="EeePad-user 4.4 KRT16M 573038 release-keys"

#
# Setup device specific product configuration.
#
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=Commotio-700
