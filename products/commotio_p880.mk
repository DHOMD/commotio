#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-p880

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Vanir configuration
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Inherit CM device configuration for p880.
$(call inherit-product, device/lge/p880/p880.mk)

# Setup device specific product configuration.
PRODUCT_NAME := commotio_p880
PRODUCT_DEVICE := p880
PRODUCT_BRAND := lge
PRODUCT_MODEL := Optimus 4X HD
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=x3_open_eu BUILD_FINGERPRINT=lge/x3_open_eu/x3:5.1/LMY47V/P88020a.1e56bb4c69:user/release-keys PRIVATE_BUILD_DESC="x3_open_eu-user 5.1 LMY47V P88020a.1e56bb4c69 release-keys"
