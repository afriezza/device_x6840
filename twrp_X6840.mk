# SPDX-License-Identifier: Apache-2.0

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# MANDRA UTAMA: Panggil konfigurasi resmi milik OrangeFox
$(call inherit-product, vendor/fox/config/fox.mk)

# Menunjuk ke repo ini sendiri
$(call inherit-product, device/infinix/X6840/device.mk)

PRODUCT_DEVICE := X6840
PRODUCT_NAME := twrp_X6840
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix SMART 20
PRODUCT_MANUFACTURER := Infinix
PRODUCT_GMS_CLIENTID_BASE := android-infinix
