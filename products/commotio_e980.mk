#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.config.vc_call_vol_steps=7 \
    ring.delay=0 \
    ro.telephony.call_ring.delay=50 \
    ro.ril.fast.dormancy.rule=0 \
    ro.goo.rom=commotio-e980

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Vanir configuration
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Inherit AOSP device configuration for Optimus G Pro.
$(call inherit-product, device/lge/e980/e980.mk)

# Setup device specific product configuration.
PRODUCT_NAME := commotio_e980
PRODUCT_DEVICE := e980
PRODUCT_BRAND := lge
PRODUCT_MODEL := Optimus G Pro
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=>geefhd_open_eu BUILD_FINGERPRINT=lge/geefhd_open_eu/geefhd:5.1/LMY48G/E98610b.1373081564:user/release-keys PRIVATE_BUILD_DESC="geefhd_open_eu-user 5.1 LMY48G E98610b.1373081564 release-keys"
