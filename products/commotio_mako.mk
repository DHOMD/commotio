#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += drm.service.enabled=true ro.config.vc_call_vol_steps=7 ring.delay=0 ro.telephony.call_ring.delay=50 ro.ril.fast.dormancy.rule=0 ro.goo.rom=commotio-mako

# Boot Animation
TARGET_SCREEN_WIDTH := 768
TARGET_SCREEN_HEIGHT := 1280

# Vanir configuration
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Inherit AOSP device configuration for mako.
$(call inherit-product, device/lge/mako/full_mako.mk)

# Setup device specific product configuration.
PRODUCT_NAME := commotio_mako
PRODUCT_DEVICE := mako
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:5.1.1/LMY48M/2167285:user/release-keys PRIVATE_BUILD_DESC="occam-user 5.1.1 LMY48M 2167285 release-keys"


# Enable Torch
PRODUCT_PACKAGES += Torch
