#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-jfltexx

$(call inherit-product, device/samsung/jfltexx/full_jfltexx.mk)

$(call inherit-product, vendor/commotio/products/commotio_jf-common.mk)

$(call inherit-product, vendor/commotio/products/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltexx TARGET_DEVICE=jflte BUILD_FINGERPRINT="samsung/jfltexx/jflte:4.4/KOT49E/I9505XXUAMDE:user/release-keys" PRIVATE_BUILD_DESC="jfltexx-user 4.4 KOT49E I9505XXUAMDE release-keys"

# Setup device specific product configuration.
PRODUCT_DEVICE := jfltexx
PRODUCT_NAME := commotio_jfltexx
