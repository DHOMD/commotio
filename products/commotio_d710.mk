#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=Commotio-d710

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/480x800.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/samsung/d710/full_d710.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)
$(call inherit-product, vendor/commotio/products/cdma.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d710
PRODUCT_NAME := commotio_d710
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SPH-D710 

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SPH-D710 TARGET_DEVICE=SPH-D710 BUILD_FINGERPRINT=samsung/SPH-D710/SPH-D710:4.4.2/KOT49L/SPH-D710.GB27:user/release-keys PRIVATE_BUILD_DESC="SPH-D710-user 4.4.2 KOT49L SPH-D710.GB27 release-keys"
