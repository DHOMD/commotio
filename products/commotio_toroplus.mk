#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.config.vc_call_vol_steps=7 \
    ring.delay=0 \
    ro.telephony.call_ring.delay=50 \
    ro.ril.fast.dormancy.rule=0 \
    ro.goo.rom=commotio-TOROPLUS

# Inherit common product files.
$(call inherit-product, vendor/commotio/products/commotio_tuna.mk)

# Inherit AOSP device configuration for toroplus.
$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)

# Setup device specific product configuration.
PRODUCT_NAME := commotio_toroplus
PRODUCT_BRAND := google
PRODUCT_DEVICE := toroplus
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysidspr BUILD_FINGERPRINT="google/mysidspr/toroplus:4.4.4/KTU84P/937116:user/release-keys" PRIVATE_BUILD_DESC="mysidspr-user 4.4.4 KTU84P 937116 release-keys"
