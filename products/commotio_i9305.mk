#Squisher Choosing
DHO_VENDOR := commotio

# Variable for zip installerscript spam about kernel
KERNEL_SPAM := CM Kernel

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-i9305

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit common phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/gsm.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Inherit AOSP device configuration for GS3 LTE (GSM).
$(call inherit-product, device/samsung/i9300/full_i9300.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := commotio_i9305
PRODUCT_DEVICE := i9305
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9305

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m3xx TARGET_DEVICE=m3 BUILD_FINGERPRINT="samsung/m3xx/m3:4.4.1/KOT49E/I9305XXBMA6:user/release-keys" PRIVATE_BUILD_DESC="m3xx-user 4.13 KOT49E I9305XXBMA6 release-keys"
