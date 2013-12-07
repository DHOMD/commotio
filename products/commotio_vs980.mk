#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-d802

# Inherit device configuration
$(call inherit-product, device/lge/vs980/vs980.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/commotio_g2-common.mk)
$(call inherit-product, vendor/commotio/products/cdma.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vs980
PRODUCT_NAME := commotio_vs980
PRODUCT_BRAND := lge
PRODUCT_MODEL := VS980 4G
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=lge/g2_vzw/g2:4.4.1/KOT49E/VS98011A.1378346052:user/release-keys PRIVATE_BUILD_DESC="g2_vzw-user 4.4.1 KOT49E VS98011A.1378346052 release-keys"
