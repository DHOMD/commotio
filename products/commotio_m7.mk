#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-m7

$(call inherit-product, vendor/commotio/products/multi_m7-common.mk)

# Inherit AOSP device configuration for HTC One Unlocked edition.
$(call inherit-product, device/htc/m7/full_m7.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := commotio_m7
PRODUCT_DEVICE := m7
PRODUCT_BRAND := htc
PRODUCT_MANUFACTURER := htc
PRODUCT_MODEL := One

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=LRX22C.H3 BUILD_FINGERPRINT="htc/m7_google/m7:5.0.1/LRX22C.H3/434277:user/release-keys" PRIVATE_BUILD_DESC="5.11.1700.3 CL434277 release-keys"
