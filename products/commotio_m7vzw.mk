#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += drm.service.enabled=true ro.goo.rom=commotio-m7vzw

# Inherit AOSP device configuration for HTC One.
$(call inherit-product, device/htc/m7vzw/full_m7vzw.mk)

# Commotio
$(call inherit-product, vendor/commotio/products/multi_m7-common.mk)

# Inherit common Verizon Wireless Perms and Lib
$(call inherit-product, vendor/vanir/products/vzw.mk)

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT="htc/HTCOneVZW/m7wlv:5.0.2/LRX22G/495599.6:user/release-keys" BUILD_ID=LRX22G PRIVATE_BUILD_DESC="6.22.605.6 CL495599 release-keys" PRODUCT_NAME=HTCOneVZW

PRODUCT_NAME := commotio_m7vzw
PRODUCT_DEVICE := m7vzw
