#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-jflteatt

# Boot Animation
#PRODUCT_COPY_FILES += \
#    vendor/commotio/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device repo
$(call inherit-product, device/samsung/jflteatt/full_jflteatt.mk)

# Inherit common product files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

#Tagging
PRODUCT_NAME := commotio_jflteatt
