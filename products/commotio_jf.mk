# Copy toro specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/system/media/commotio-1080x1920.zip:system/media/bootanimation.zip

# Inherit common product files.
NO_DRM_BLOBS := true
$(call inherit-product, vendor/vanir/products/beats.mk)

# Inherit common phone stuff
$(call inherit-product, vendor/commotio/products/common_commotio.mk)
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Default values used by 99vanir. copied to /sdcard on first run, and presently it lives there forever... todo: make a runonce script that adds new default values to the copy on the sdcard as we add them or something
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/jf/etc/vanir.cfg:system/etc/vanir.cfg
