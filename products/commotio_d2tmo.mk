#Squisher Choosing
DHO_VENDOR := commotio

# Variable for zip installerscript spam about kernel
KERNEL_SPAM := CM Kernel

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-d2tmo

# Inherit AOSP device configuration for GS3 TMO.
$(call inherit-product, device/samsung/d2tmo/full_d2tmo.mk)
# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/commotio_d2-common.mk)
$(call inherit-product, vendor/commotio/products/gsm.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := commotio_d2tmo
PRODUCT_DEVICE := d2tmo
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SGH-T999

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2uc TARGET_DEVICE=d2tmo BUILD_FINGERPRINT="samsung/d2uc/d2att:4.4/KRT16S/T999UVDMD5:user/release-keys" PRIVATE_BUILD_DESC="d2uc-user 4.4 KRT16S T999UVDMD5 release-keys"
