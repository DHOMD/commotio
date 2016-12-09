# Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-amami \
    drm.service.enabled=true

# Boot Animation
#PRODUCT_COPY_FILES += \
#    vendor/commotio/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit commotio common Phone stuff.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

#Go and build Amami
$(call inherit-product, device/sony/amami/full_amami.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := amami
PRODUCT_NAME := commotio_amami
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia Z1 Compact
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D5503
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/D5503/D5503:5.0.2/14.5.A.0.270/3750474323:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="D5503-user 5.0.2 14.5.A.0.270 3750474323 release-keys"
