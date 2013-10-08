#Squisher Choosing
DHO_VENDOR := commotio

# Commotio
$(call inherit-product, vendor/commotio/products/common_commotio.mk)
$(call inherit-product, vendor/commotio/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/gsm.mk)

#Commotio theme files
    PRODUCT_PACKAGE_OVERLAYS += vendor/commotio/overlay/theme

# Inherit AOSP device configuration for yuga.
$(call inherit-product, device/sony/yuga/full_yuga.mk)

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/system/media/commotio-1080x1920.zip:system/media/bootanimation.zip

# Setup device specific product configuration.
PRODUCT_NAME := commotio_yuga
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := yuga
PRODUCT_RELEASE_NAME := Xperia Z
PRODUCT_MODEL := c6606
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6603 BUILD_FINGERPRINT=Sony/C6603_1270-6697/C6603:4.3/10.3.A.0.423/WP5_rg:user/release-keys PRIVATE_BUILD_DESC="C6603-user 4.3 10.3.A.0.423 WP5_rg test-keys"
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=Commotio-yuga
