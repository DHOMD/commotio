# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/800x1280.zip:system/media/bootanimation.zip

# Vanir configuration
$(call inherit-product, vendor/commotio/products/common_phones.mk)
 $(call inherit-product, vendor/commotio/products/beats.mk)
$(call inherit-product, vendor/commotio/products/gsm.mk)
