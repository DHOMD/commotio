#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += drm.service.enabled=true ro.goo.rom=commotio-find7

# Boot Animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/oppo/find7/find7.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# AptX b/c we can
$(call inherit-product, vendor/qcom/binaries/bluetooth/bluetooth-vendor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := commotio_find7
PRODUCT_DEVICE := find7
PRODUCT_BRAND := OPPO
PRODUCT_MANUFACTURER := OPPO
PRODUCT_MODEL := Find7

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=5.1.1/LMY47V/1441693976:user/release-keys PRIVATE_BUILD_DESC="msm8974-user 5.1.1 LMY47V 153 release-keys" TARGET_DEVICE="FIND7"
