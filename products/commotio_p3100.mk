#Squisher Choosing
DHO_VENDOR := commotio

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-p3100

# Inherit VANIR files.
$(call inherit-product, vendor/commotio/products/gsm.mk)
$(call inherit-product, vendor/commotio/products/common_tabs.mk)
$(call inherit-product, vendor/commotio/products/beats.mk)

# Copy VANIR files
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/600x1024.zip:system/media/bootanimation.zip

# Inherit VANIR overlays.
    PRODUCT_PACKAGE_OVERLAYS += vendor/commotio/overlay/tab_no_radio

# Inherit AOSP device configuration for Tab 2 7.0 WiFi + GSM
$(call inherit-product, device/samsung/p3100/full_p3100.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := commotio_p3100
PRODUCT_DEVICE := p3100
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-P3100

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=espressorfxx TARGET_DEVICE=espressorf BUILD_FINGERPRINT=samsung/espressorfxx/espressorf:4.4/KRT16S/P3100XWALE2:user/release-keys PRIVATE_BUILD_DESC="espressorfxx-user 4.4 KRT16S P3100XWALE2 release-keys"
