#Squisher Choosing
DHO_VENDOR := commotio

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=commotio-flo

# Tablet Overlays no radios
PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Boot Animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

# Inherit common product files.
$(call inherit-product, vendor/commotio/products/common_tabs.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/asus/flo/device.mk)

# It's a Nexus
PRODUCT_IS_A_NEXUS := true

# Setup device specific product configuration.
PRODUCT_NAME := commotio_flo
PRODUCT_BRAND := google
PRODUCT_DEVICE := flo
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razor BUILD_FINGERPRINT=google/razor/flo:6.0.1/MOB30X/3036618:user/release-keys PRIVATE_BUILD_DESC="razor-user 6.0.1 MOB30X 3036618 release-keys"
