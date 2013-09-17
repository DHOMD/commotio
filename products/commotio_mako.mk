#Squisher Choosing
DHO_VENDOR := commotio

# Commotio
$(call inherit-product, vendor/commotio/products/common_commotio.mk)
$(call inherit-product, vendor/commotio/products/common_phones.mk)
    
#Commotio theme files
    PRODUCT_PACKAGE_OVERLAYS += vendor/commotio/overlay/theme

# Vanir Config = awesome
PRODUCT_COPY_FILES +=  \
    vendor/commotio/proprietary/system/etc/mako-vanir.cfg:system/etc/vanir.cfg

# Blobs necessary for Bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/common/etc/mako-vanir.cfg:system/etc/vanir.cfg
    
# Inherit AOSP device configuration for mako.
$(call inherit-product, device/lge/mako/full_mako.mk)

# Setup device specific product configuration.
PRODUCT_NAME := commotio_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.3/JLS36C/737497:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.3 JLS36C 737497 release-keys"    

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=Commotio-MAKO
