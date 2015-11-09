#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-huashan

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/sony/huashan/full_huashan.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := huashan
PRODUCT_NAME := commotio_huashan
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia SP 

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C5303 BUILD_FINGERPRINT=Sony/C5303/C5303:6.0/12.1.A.0.266/9f5_nw:user/release-keys PRIVATE_BUILD_DESC="C5303-user 6.0 JB-MR2-VISKAN-CAF-140119-1358 30 test-keys"
