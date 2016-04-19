#Squisher Choosing
DHO_VENDOR := commotio
91_HACK:= true

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-hammerhead

# Inherit VANIR files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Copy VANIR files
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hammerhead
PRODUCT_NAME := commotio_hammerhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=hammerhead BUILD_FINGERPRINT=google/hammerhead/hammerhead:6.0.1/MOB30D/2704746:user/release-keys PRIVATE_BUILD_DESC="hammerhead-user 6.0.1 MOB30D 2704746 release-keys"
