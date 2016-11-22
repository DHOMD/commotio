# Commotio common
$(call inherit-product, vendor/commotio/products/common_commotio.mk)
$(call inherit-product, vendor/commotio/products/common.mk)

# World APN + SPN list
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/etc/apns-conf.xml:system/etc/apns-conf.xml

PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    messaging \
    Stk

# Audio Packages
include frameworks/base/data/sounds/AudioPackage7.mk

#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
