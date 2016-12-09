#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=commotio-find7s

# Boot Animation
#PRODUCT_COPY_FILES += vendor/commotio/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/oppo/find7s/find7s.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := commotio_find7s
PRODUCT_DEVICE := find7s
PRODUCT_BRAND := OPPO
PRODUCT_MANUFACTURER := OPPO
PRODUCT_MODEL := Find7

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=5.1.1/LMY47V/1441693976:user/release-keys PRIVATE_BUILD_DESC="msm8974-user 5.1.1 LMY47V 153 release-keys" TARGET_DEVICE="FIND7"
