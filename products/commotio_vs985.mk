# when this builds, it will probably mess your phone up.
# you might want to wait to try this unless you have a giant pair of low-hanging huevos

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-vs985 \
    ro.com.google.clientidbase=android-samsung \
    ro.com.google.clientidbase.gmm=android-samsung

$(call inherit-product, device/lge/vs985/full_vs985.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/1440x2560.zip:system/media/bootanimation.zip

# Inherit common product files.
NO_DRM_BLOBS := true
$(call inherit-product, vendor/vanir/products/beats.mk)
$(call inherit-product, vendor/vanir/products/vzw.mk)
$(call inherit-product, vendor/commotio/products/cdma.mk)

# Inherit common phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)

PRODUCT_DEVICE := vs985
PRODUCT_NAME := commotio_vs985
