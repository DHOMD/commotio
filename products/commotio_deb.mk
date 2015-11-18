#Squisher Choosing
DHO_VENDOR := commotio

KERNEL_SPAM := CM-AOSP 3.4.0-g8e41961

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-deb

# Tablet Overlays with radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_radio

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit common product files.
$(call inherit-product, vendor/commotio/products/common_tabs.mk)

# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/deb/full_deb.mk)


# Setup device specific product configuration.
PRODUCT_NAME := commotio_deb
PRODUCT_BRAND := google
PRODUCT_DEVICE := deb
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razor TARGET_DEVICE=deb BUILD_FINGERPRINT=google/razor/deb:6.0/MDB08M/2353240:user/release-keys PRIVATE_BUILD_DESC="razor-user 6.0 MDB08M 2353240 release-keys"
