# Inherit dari vendor TWRP langsung, jangan panggil SRC_TARGET_DIR
$(call inherit-product, vendor/twrp/config/common.mk)

# Identitas perangkat
PRODUCT_DEVICE := X6840
PRODUCT_NAME := twrp_X6840
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix SMART 20
PRODUCT_MANUFACTURER := Infinix
