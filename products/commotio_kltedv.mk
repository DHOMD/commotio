#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-kltedv \
    ro.com.google.clientidbase=android-samsung \
    ro.com.google.clientidbase.gmm=android-samsung

# Boot Animation
#PRODUCT_COPY_FILES += \
#    vendor/commotio/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit common phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)

$(call inherit-product, device/samsung/kltedv/full_kltedv.mk)

PRODUCT_NAME := commotio_kltedv
