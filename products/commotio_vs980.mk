#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-vs980

# Inherit device configuration
$(call inherit-product, device/lge/vs980/vs980.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/multi_g2-common.mk)
$(call inherit-product, vendor/commotio/products/cdma.mk)

# Inherit common Verizon Wireless Perms and Lib
$(call inherit-product, vendor/vanir/products/vzw.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vs980
PRODUCT_NAME := commotio_vs980
PRODUCT_BRAND := lge
PRODUCT_MODEL := VS980 4G
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=lge/g2_vzw/g2:5.1/LMY47I/VS98011A.1378346052:user/release-keys PRIVATE_BUILD_DESC="g2_vzw-user 5.1 LMY47I VS98011A.1378346052 release-keys"
