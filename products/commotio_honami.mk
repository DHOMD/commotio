#Squisher Choosing
DHO_VENDOR := commotio

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-honami

# Inherit VANIR files.
$(call inherit-product, vendor/commotio/products/gsm.mk)
$(call inherit-product, vendor/commotio/products/common_tabs.mk)

# Copy VANIR files
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit VANIR overlays.
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_radio

# Inherit AOSP device configuration for honami
$(call inherit-product, device/sony/honami/full_honami.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := commotio_honami
PRODUCT_DEVICE := honami
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := C609x

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6903 BUILD_FINGERPRINT=Sony/C6903_1276-7948/C6903:4.4.1/KOT49H/8Xl-jw:user/release-keys PRIVATE_BUILD_DESC="C6903-user 4.4.1 KOT49H 8Xl-jw test-keys"

