#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-tf701

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/1600x2560.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/asus/tf701t/tf701t.mk)

# Tablet Overlays no radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_tabs.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tf701t
PRODUCT_NAME := commotio_tf701
PRODUCT_BRAND := asus
PRODUCT_MODEL := K00C
PRODUCT_MANUFACTURER := asus
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=K00C BUILD_FINGERPRINT=asus/US_epad/K00C:4.4.4/LRX21T/US_epad-10.26.1.18-20131217:user/release-keys PRIVATE_BUILD_DESC="US_epad-user 4.4.4 LRX21T US_epad-10.26.1.18-20131217 release-keys"
