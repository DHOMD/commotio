# Commotio common
$(call inherit-product, vendor/commotio/products/common_commotio.mk)
$(call inherit-product, vendor/commotio/products/common.mk)

# World APN + SPN list
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/vanir/proprietary/common/etc/selective-spn-conf.xml:system/etc/selective-spn-conf.xml

PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    Mms \
    Stk \
    Torch

# Audio Packages
include frameworks/base/data/sounds/AudioPackage7.mk
