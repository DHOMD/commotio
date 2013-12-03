# Vanir common
$(call inherit-product, vendor/commotio/products/common.mk)

# World APN list
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# World SPN overrides list
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/common/etc/spn-conf.xml:system/etc/spn-conf.xml

# SIM Toolkit
PRODUCT_PACKAGES += \
    Stk

PRODUCT_PACKAGES += \
    SpeakerProximity \
    CellBroadcastReceiver

# Audio Packages
include frameworks/base/data/sounds/AudioPackage7.mk
