#Squisher Choosing
DHO_VENDOR := commotio

# Commotio
$(call inherit-product, vendor/commotio/products/common_commotio.mk)
$(call inherit-product, vendor/commotio/products/common_tabs.mk)

# Commotio theme files
    PRODUCT_PACKAGE_OVERLAYS += vendor/commotio/overlay/theme

# Vanir Config = awesome
PRODUCT_COPY_FILES +=  \
    vendor/commotio/proprietary/system/etc/vanir.cfg:system/etc/vanir.cfg

PRODUCT_PACKAGES += \
    LiveWallpapersPicker
    
# Tablet Overlays no radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Copy grouper specific prebuilt files
## FIX ME: bootanimation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/800x1280.zip:system/media/bootanimation.zip

# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Setup device specific product configuration.
PRODUCT_NAME := commotio_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/grouper:4.3/JSS15Q/737497:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 4.3 JSS15Q 737497 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=Commotio-GROUPER 
