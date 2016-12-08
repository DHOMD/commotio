#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += drm.service.enabled=true ro.goo.rom=commotio-oneplus2

# Boot Animation
PRODUCT_COPY_FILES += vendor/commotio/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/oneplus/oneplus2/full_oneplus2.mk)
$(call inherit-product, vendor/oneplus/oneplus2/oneplus2-vendor.mk)


# Inherit common oneplus2 files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := oneplus2
PRODUCT_NAME := commotio_oneplus2
PRODUCT_BRAND := oneplus
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := A2001
PRODUCT_GMS_CLIENTID_BASE := android-oneplus
TARGET_CONTINUOUS_SPLASH_ENABLED := true


PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=OnePlus2 PRODUCT_NAME=OnePlus2
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=OnePlus/OnePlus2/OnePlus2:6.0.1/MMB29M/1447840920:user/release-keys PRIVATE_BUILD_DESC="OnePlus2-user 6.0.1 MMB29M 20 dev-keys"
