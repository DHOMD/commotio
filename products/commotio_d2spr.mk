#Squisher Choosing
DHO_VENDOR := commotio

# Variable for zip installerscript spam about kernel
KERNEL_SPAM := CM Kernel

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-d2spr

# Inherit AOSP device configuration for GS3 SPR.
$(call inherit-product, device/samsung/d2spr/full_d2spr.mk)
# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/commotio_d2-common.mk)
$(call inherit-product, vendor/commotio/products/cdma.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := commotio_d2spr
PRODUCT_DEVICE := d2spr
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SPH-L710

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2spr TARGET_DEVICE=d2spr BUILD_FINGERPRINT="samsung/d2spr/d2spr:4.4.1/KOT49H/L710VPBMD4:user/release-keys" PRIVATE_BUILD_DESC="d2spr-user 4.4.1 KOT49H L710VPBMD4 release-keys"
