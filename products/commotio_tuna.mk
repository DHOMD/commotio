# Variable for zip installerscript spam about kernel
KERNEL_SPAM := Vanir Kernel v12 just rolled up in a retro custom van with an airbrushed Dan Trifan the Wizard on the side

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit common product files.
$(call inherit-product, vendor/commotio/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

$(call inherit-product, vendor/commotio/tweaks/tuna/tweaks.mk)
