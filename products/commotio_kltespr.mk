#Squisher Choosing
DHO_VENDOR := commotio

# Catchy but impractical something here

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-kltespr \
    ro.com.google.clientidbase=android-samsung \
    ro.com.google.clientidbase.gmm=android-samsung

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit common phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# MPDecision and thermal(d/-engine) auto-disablers for KT-based kernels (like ours)
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/jf/etc/boot.d/69nuclearwinter:system/etc/boot.d/69nuclearwinter \
    vendor/vanir/proprietary/jf/bin/nuclearwinter:system/bin/nuclearwinter \
    vendor/vanir/proprietary/jf/bin/nuclearwinterinternal:system/bin/nuclearwinterinternal

$(call inherit-product, device/samsung/kltespr/full_kltespr.mk)

PRODUCT_NAME := commotio_kltespr
