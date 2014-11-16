# Variable for zip installerscript spam about kernel
KERNEL_SPAM := CM Kernel

PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/480x480.zip:system/media/bootanimation.zip

# Inherit common phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/vanir/products/beats.mk)

# inherit AOSP configuration for apache.
$(call inherit-product, device/samsung/apache/full_apache.mk)
# Setup device configuration
PRODUCT_NAME := commotio_apache
PRODUCT_DEVICE := apache
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SGH-I847

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=samsung/SGH-I847/SGH-I847:5.0/LRX21T/SGH-I847:user/release-keys PRIVATE_BUILD_DESC="SGH-I847-user 5.0 LRX21T SGH-I847 release-keys"
