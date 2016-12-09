# Variable for zip installerscript spam about kernel
KERNEL_SPAM := WHY DOESNT THIS JUST WORK AMGGGG #not related to the kernel... but this build step didn't work anyways, so lulpwned.

# Boot Animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# OPT OUT of moto blobs
QCOM_FORCE_NONMOTO_DALVIK := true

# Inherit common phone stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)
