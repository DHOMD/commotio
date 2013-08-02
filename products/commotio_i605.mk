#Squisher Choosing
DHO_VENDOR := commotio

# Commotio
$(call inherit-product, vendor/commotio/products/common_commotio.mk)
# $(call inherit-product, vendor/commotio/products/common_vanir.mk)
$(call inherit-product, vendor/commotio/products/common_phones.mk)

#Commotio theme files
    PRODUCT_PACKAGE_OVERLAYS += vendor/commotio/overlay/theme

# Vanir Config = awesome
PRODUCT_COPY_FILES +=  \
    vendor/commotio/proprietary/system/etc/vanir.cfg:system/etc/vanir.cfg

# Note 2 stuff
$(call inherit-product, device/samsung/i605/full_i605.mk)

# Blobs necessary for drm + Bootanimation
PRODUCT_COPY_FILES +=  \
   vendor/vanir/proprietary/common/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
   vendor/vanir/proprietary/common/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
   vendor/vanir/proprietary/common/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
   vendor/vanir/proprietary/common/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so

#... and then make the AOSP device configuration for toro get on its knees and sing the national anthem into our "microphones"
PRODUCT_LOCALES := en_US

# Discard inherited values and use our own instead.
PRODUCT_NAME := commotio_i605
PRODUCT_DEVICE := i605
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SCH-I605

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0ltevzw BUILD_FINGERPRINT="Verizon/t0ltevzw/t0ltevzw:4.3/JWR66V/737497:user/release-keys" PRIVATE_BUILD_DESC="t0ltevzw-user 4.3 JWR66V 737497 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=Commotio-I605 

