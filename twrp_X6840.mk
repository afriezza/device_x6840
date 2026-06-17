#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit dari konfigurasi dasar versi omni/twrp
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit dari file device.mk milik kita sendiri
$(call inherit-product, device/infinix/X6840/device.mk)

# Identitas Resmi Perangkat Infinix SMART 20
PRODUCT_DEVICE := X6840
PRODUCT_NAME := twrp_X6840
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix SMART 20
PRODUCT_MANUFACTURER := Infinix

# Info sidik jari build (Fingerprint) biar lolos verifikasi prop Android 16
PRODUCT_GMS_CLIENTID_BASE := android-infinix
