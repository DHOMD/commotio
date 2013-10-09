#Squisher Choosing
DHO_VENDOR := commotio

# Commotio
$(call inherit-product, vendor/commotio/products/common_commotio.mk)
$(call inherit-product, vendor/commotio/products/common_phones.mk)

#Commotio theme files
    PRODUCT_PACKAGE_OVERLAYS += vendor/commotio/overlay/theme

# place boot animation here once we make one
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/system/media/commotio-768x1280.zip:system/media/bootanimation.zip

# Note 2 stuff
$(call inherit-product, device/samsung/i605/full_i605.mk)

# Need boot

#... and then make the AOSP device configuration for toro get on its knees and sing the national anthem into our "microphones"
PRODUCT_LOCALES := en_US

# Discard inherited values and use our own instead.
PRODUCT_NAME := commotio_i605
PRODUCT_DEVICE := i605
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SCH-I605

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0ltevzw TARGET_DEVICE=t0ltevzw BUILD_FINGERPRINT="Verizon/t0ltevzw/t0ltevzw:4.3.1/JLS36I/737497:user/release-keys" PRIVATE_BUILD_DESC="t0ltevzw-user 4.3.1 JLS36I 737497 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=Commotio-I605 

