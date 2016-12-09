# Variable for zip installerscript spam about kernel
KERNEL_SPAM := WHY DOESNT THIS JUST WORK AMGGGG #not related to the kernel... but this build step didn't work anyways, so lulpwned.

# Boot Animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Inherit common phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)

# It's a not a Nexus, but it has a dream!
PRODUCT_IS_A_NEXUS := true
