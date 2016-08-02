#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-angler

PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/1440x2560.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

# Inherit vanir phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/angler/overlay-cm

## Device identifier. This must come after all inclusions
PRODUCT_NAME := commotio_angler
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6P
TARGET_VENDOR := huawei

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=angler BUILD_FINGERPRINT=google/angler/angler:6.0.1/MTC20F/3031278:user/release-keys PRIVATE_BUILD_DESC="angler-user 6.0.1 MTC20F 3031278 release-keys"
