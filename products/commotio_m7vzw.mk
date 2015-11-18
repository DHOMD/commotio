#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-m7vzw

# Inherit AOSP device configuration for HTC One.
$(call inherit-product, device/htc/m7vzw/full_m7vzw.mk)

# Commotio
$(call inherit-product, vendor/commotio/products/multi_m7-common.mk)
$(call inherit-product, vendor/commotio/products/cdma.mk)

# Inherit common Verizon Wireless Perms and Lib
$(call inherit-product, vendor/vanir/products/vzw.mk)

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=HTCOneVZW BUILD_ID=KTU84L BUILD_FINGERPRINT="VERIZON/HTCOneVZW/m7wlv:4.4.3/KTU84L/365669.2:user/release-keys" PRIVATE_BUILD_DESC="5.28.605.2 CL365669 release-keys"

PRODUCT_NAME := commotio_m7vzw
PRODUCT_DEVICE := m7vzw
