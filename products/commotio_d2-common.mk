# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip
# Inherit common phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)
