#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-TORO

$(call inherit-product, vendor/commotio/products/commotio_tuna.mk)

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Setup device specific product configuration.
PRODUCT_NAME := commotio_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysid BUILD_FINGERPRINT="google/mysid/toro:4.4.2/KOT49H/937116:user/release-keys" PRIVATE_BUILD_DESC="mysid-user 4.4.2 KOT49H 937116 release-keys"
