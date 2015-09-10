#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-tf700

# Vanir Overlays
# Vanir config should be updated
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/1280x1920.zip:system/media/bootanimation.zip

# Vanir specific overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Inherit common Vanir stuff
$(call inherit-product, vendor/commotio/products/common_tabs.mk)

# Inherit AOSP device configuration for Transformer Prime.
$(call inherit-product, device/asus/tf700t/full_tf700t.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := commotio_tf700
PRODUCT_DEVICE := tf700t
PRODUCT_BRAND := Asus
PRODUCT_MANUFACTURER := Asus
PRODUCT_MODEL := ASUS Transformer Pad TF700T

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=EeePad BUILD_FINGERPRINT=asus/US_epad/EeePad:5.1/LMY48P/US_epad-10.6.1.14.10-20130801:user/release-keys PRIVATE_BUILD_DESC="US_epad-user 5.1 LMY48P US_epad-10.6.1.14.10-20130801 release-keys"
