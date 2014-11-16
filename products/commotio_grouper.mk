#Squisher Choosing
DHO_VENDOR := commotio

KERNEL_SPAM := Faux Kernel v013u IN THE H1ZNOUSE

PRODUCT_PACKAGES += \
    Camera \
    LiveWallpapersPicker \
    Mira4U

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-GROUPER

# Tablet Overlays no radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/800x1280.zip:system/media/bootanimation.zip

# Inherit common product files.
$(call inherit-product, vendor/commotio/products/common_tabs.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Setup device specific product configuration.
PRODUCT_NAME := commotio_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/grouper:5.0/LRX21T/937116:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 5.0 LRX21T 937116 release-keys"
