#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES := drm.service.enabled=true

# Inherit common product files.
$(call inherit-product, vendor/commotio/products/common_tabs.mk)

PRODUCT_PACKAGES += LiveWallpapersPicker

# Boot Animation
TARGET_SCREEN_WIDTH := 1280
TARGET_SCREEN_HEIGHT := 800

# Tablet Overlays no radios
PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# It's a Nexus
PRODUCT_IS_A_NEXUS := true

# Inherit AOSP device configuration for Manta.
$(call inherit-product, device/samsung/manta/full_manta.mk)

PRODUCT_NAME := commotio_manta
PRODUCT_DEVICE := manta
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mantaray BUILD_FINGERPRINT=google/mantaray/manta:5.1.1/LMY49J/2640980:user/release-keys PRIVATE_BUILD_DESC="mantaray-user 5.1.1 LMY49J 2640980 release-keys"
PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=commotio-manta
