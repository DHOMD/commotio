#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=commotio-shamu

# Boot Animation
PRODUCT_COPY_FILES += vendor/commotio/proprietary/boot_animations/1440x2560.zip:system/media/bootanimation.zip

# Inherit Vanir phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# It's a Nexus
PRODUCT_IS_A_NEXUS := true

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := shamu
PRODUCT_NAME := commotio_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=shamu BUILD_FINGERPRINT=google/shamu/shamu:7.0/NBD91U/3408911:user/release-keys PRIVATE_BUILD_DESC="shamu-user 7.0 NBD91U 3408911 release-keys"
