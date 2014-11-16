#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-jfltetmo

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device repo
$(call inherit-product, device/samsung/jfltetmo/full_jfltetmo.mk)

# MPDecision and thermal(d/-engine) auto-disablers for KT-based kernels (like ours)
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/jf/etc/boot.d/69nuclearwinter:system/etc/boot.d/69nuclearwinter \
    vendor/vanir/proprietary/jf/bin/nuclearwinter:system/bin/nuclearwinter \
    vendor/vanir/proprietary/jf/bin/nuclearwinterinternal:system/bin/nuclearwinterinternal

# Inherit common product files.
NO_DRM_BLOBS := true
$(call inherit-product, vendor/vanir/products/beats.mk)
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Unified device flag for Verizon permissions
VZW_UNIFIED := true

#Tagging
PRODUCT_NAME := commotio_jfltetmo
