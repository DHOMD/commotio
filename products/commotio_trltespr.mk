#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-trltespr

$(call inherit-product, device/samsung/trltespr/full_trltespr.mk)

# Boot Animation
#PRODUCT_COPY_FILES += \
#    vendor/commotio/proprietary/boot_animations/1440x2560.zip:system/media/bootanimation.zip

# Inherit common phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)

PRODUCT_DEVICE := trltespr
PRODUCT_NAME := commotio_trltespr
