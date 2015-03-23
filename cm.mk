# Inherit some common CM stuff
## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := Redmi Note

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/icsh92_wet_jb9/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := icsh92_wet_jb9
PRODUCT_NAME := cm_icsh92_wet_jb9
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := icsh92_wet_jb9
PRODUCT_MANUFACTURER := Xiaomi
