#Squisher Choosing
DHO_VENDOR := commotio

# Variable for zip installerscript spam about kernel
KERNEL_SPAM := CM Kernel

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-i9300

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit common phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Inherit AOSP device configuration for GS3.
$(call inherit-product, device/samsung/i9300/full_i9300.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := commotio_i9300
PRODUCT_DEVICE := i9300
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9300

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m0xx TARGET_DEVICE=m0 BUILD_FINGERPRINT="samsung/m0xx/m0:5.1/LMY47X/I9300XXUGMJ9:user/release-keys" PRIVATE_BUILD_DESC="m0xx-user 5.1 LMY47X I9300XXUGMJ9 release-keys"
