# Copy toro specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/system/media/commotio-1080x1920.zip:system/media/bootanimation.zip

# Inherit common product files.
NO_DRM_BLOBS := true
$(call inherit-product, vendor/vanir/products/beats.mk)

# Inherit common phone stuff
$(call inherit-product, vendor/commotio/products/common_commotio.mk)
$(call inherit-product, vendor/commotio/products/common_phones.mk)
