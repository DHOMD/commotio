#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-MASERATI

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/540x960.zip:system/media/bootanimation.zip

# Vanir configuration
$(call inherit-product, vendor/commotio/products/common_phones.mk)
$(call inherit-product, vendor/commotio/products/cdma.mk)
# $(call inherit-product, vendor/vanir/products/beats.mk)

# Inherit AOSP device configuration for maserati.
$(call inherit-product, device/motorola/maserati/full_maserati.mk)

#
# Setup device specific product configuration.
#
# Setup device specific product configuration.
PRODUCT_NAME := commotio_maserati
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := maserati
PRODUCT_RELEASE_NAME := Droid4
PRODUCT_MODEL := XT894
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=maserati BUILD_FINGERPRINT=verizon/maserati/maserati:5.0/LRX22C/937116:user/release-keys PRIVATE_BUILD_DESC="maserati-user 5.0 LRX22C 937116 release-keys"

