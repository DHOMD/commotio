#Squisher Choosing
DHO_VENDOR := commotio

KERNEL_SPAM := CM-AOSP 3.4.0-g8e41961

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=commotio-deb

# Tablet Overlays with radios
PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_radio

# Boot Animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200
TARGET_BOOTANIMATION_HALF_RES := true

# Inherit common product files.
$(call inherit-product, vendor/commotio/products/common_tabs.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit device configuration
$(call inherit-product, device/asus/deb/device.mk)
$(call inherit-product-if-exists, vendor/asus/deb/device-vendor.mk)

# It's a Nexus
PRODUCT_IS_A_NEXUS := true

# Setup device specific product configuration.
PRODUCT_NAME := commotio_deb
PRODUCT_BRAND := google
PRODUCT_DEVICE := deb
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razorg BUILD_FINGERPRINT=google/razorg/deb:6.0.1/MOB30X/3036618:user/release-keys PRIVATE_BUILD_DESC="razorg-user 6.0.1 MOB30X 3036618 release-keys"
