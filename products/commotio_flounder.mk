#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += drm.service.enabled=true persist.sys.isUsbOtgEnabled=true ro.goo.rom=commotio-flounder

# Boot Animation
TARGET_SCREEN_WIDTH := 1536
TARGET_SCREEN_HEIGHT := 2048

# Inherit device configuration
$(call inherit-product, device/htc/flounder/full_flounder.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_tabs.mk)

# CM Overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/flounder/overlay-cm

# It's a Nexus
PRODUCT_IS_A_NEXUS := true

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := flounder
PRODUCT_NAME := commotio_flounder
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 9

$(call inherit-product-if-exists, vendor/htc/flounder/device-vendor.mk)

BOARD_NEEDS_VENDORIMAGE_SYMLINK := true

# Inline kernel building
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-linux-android-4.9/bin
KERNEL_TOOLCHAIN_PREFIX := aarch64-linux-android-
TARGET_KERNEL_SOURCE := kernel/htc/flounder
TARGET_KERNEL_CONFIG := flounder_defconfig
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_CMDLINE := androidboot.selinux=enforcing
TARGET_PREBUILT_KERNEL := false

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=flounder BUILD_FINGERPRINT=google/volantis/flounder:7.1.1/NMF26F/3425388:user/release-keys PRIVATE_BUILD_DESC="volantis-user 7.1.1 NMF26F 3425388 release-keys" BUILD_ID=NMF26F
