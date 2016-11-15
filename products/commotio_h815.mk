#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=commotio-h815

# Boot Animation
PRODUCT_COPY_FILES += vendor/commotio/proprietary/boot_animations/1440x2560.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/lge/h815/full_h815.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := h815
PRODUCT_NAME := commotio_h815

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE="g4" PRODUCT_NAME="g4_global_com" BUILD_FINGERPRINT="lge/p1_global_com/p1:6.0/MRA58K/152940055675e:user/release-keys" PRIVATE_BUILD_DESC="p1_global_com-user 6.0 MRA58K 152940055675e release-keys"
