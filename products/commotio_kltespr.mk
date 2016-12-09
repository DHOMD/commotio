#Squisher Choosing
DHO_VENDOR := commotio

# Catchy but impractical something here

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-kltespr \
    ro.com.google.clientidbase=android-samsung \
    ro.com.google.clientidbase.gmm=android-samsung

# Boot Animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Inherit common phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)

$(call inherit-product, device/samsung/kltespr/full_kltespr.mk)

PRODUCT_NAME := commotio_kltespr
