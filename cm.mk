## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := lcsh92_wet_jb9

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/alps/lcsh92_wet_jb9/device_lcsh92_wet_jb9.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lcsh92_wet_jb9
PRODUCT_NAME := cm_lcsh92_wet_jb9
PRODUCT_BRAND := alps
PRODUCT_MODEL := lcsh92_wet_jb9
PRODUCT_MANUFACTURER := alps
