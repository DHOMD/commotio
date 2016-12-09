#Squisher Choosing
DHO_VENDOR := commotio
91_HACK:= true

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-mondrianwifi

# Tablet Overlays no radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Boot Animation
#PRODUCT_COPY_FILES += \
#    vendor/commotio/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/samsung/mondrianwifi/full_mondrianwifi.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/common_tabs.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := commotio_mondrianwifi
PRODUCT_DEVICE := mondrianwifi
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SM-T320
