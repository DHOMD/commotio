#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-h811

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/1440x2560.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/lge/h811/full_h811.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := h811
PRODUCT_NAME := commotio_h811

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE="g4" PRODUCT_NAME="g4__tmo_us" BUILD_FINGERPRINT="lge/p1__tmo_us/p1:6.0/MRA58K/152940055675e:user/release-keys" PRIVATE_BUILD_DESC="p1__tmo_us-user 6.0 MRA58K 152940055675e release-keys"
