# Commotio common
$(call inherit-product, vendor/commotio/products/common_commotio.mk)
$(call inherit-product, vendor/commotio/products/common.mk)

# World APN + SPN list
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/etc/apns-conf.xml:system/etc/apns-conf.xml


# Sensitive Phone Numbers list
PRODUCT_COPY_FILES += \
    vendor/vanir/prebuilt/common/etc/sensitive_pn.xml:system/etc/sensitive_pn.xml

PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    messaging \
    Stk

# Audio Packages
include frameworks/base/data/sounds/AudioPackage7.mk
