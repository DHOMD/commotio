# Commotio common
$(call inherit-product, vendor/commotio/products/common_commotio.mk)
$(call inherit-product, vendor/commotio/products/common.mk)

# World APN list
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# World SPN overrides list
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/etc/spn-conf.xml:system/etc/spn-conf.xml

# SIM Toolkit
PRODUCT_PACKAGES += \
    Stk

PRODUCT_PACKAGES += \
    SpeakerProximity \
    CellBroadcastReceiver \
    Mms \
    Torch

# Audio Packages
include frameworks/base/data/sounds/AudioPackage7.mk
