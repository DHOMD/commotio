#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-himawhl

# Boot Animation
#PRODUCT_COPY_FILES += \
#    vendor/commotio/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/htc/himawhl/full_himawhl.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := commotio_himawhl

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE="htc_himawhlspr" PRODUCT_NAME="himawhlspr_na_gen_unlock" BUILD_FINGERPRINT="htc/HTCOneM9spr/htc_himawhl:5.0.2/LRX22G/511781.15:user/release-keys" PRIVATE_BUILD_DESC="1.33.605.15 CL511781 release-keys"
