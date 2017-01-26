# Squisher Choosing
DHO_VENDOR := commotio

# Boot
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-cancro

# Inherit some common commotio stuff 
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/cancro/full_cancro.mk)

PRODUCT_NAME := commotio_cancro
PRODUCT_DEVICE := cancro
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := MI Cancro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
