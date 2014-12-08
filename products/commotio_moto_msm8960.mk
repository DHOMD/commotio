#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-moto_msm8960

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/540x960.zip:system/media/bootanimation.zip
# Inherit common phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)

$(call inherit-product, device/motorola/moto_msm8960/full_moto_msm8960.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=moto_msm8960 \
    TARGET_DEVICE=moto_msm8960

PRODUCT_NAME := commotio_moto_msm8960
PRODUCT_DEVICE := moto_msm8960