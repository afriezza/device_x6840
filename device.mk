#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit dari konfigurasi dasar (PENTING: Harus ada)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

# Memanggil folder root recovery bawaan ramdisk asli
PRODUCT_PACKAGES += \
    otacerts

# Mengaktifkan update dynamic partitions saat di recovery
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# --- TAMBAHAN WAJIB UNTUK MEDIATEK ---
# Agar TWRP bisa membaca partisi super/dynamic
PRODUCT_PACKAGES += \
    fastbootd

# Flag tambahan agar boot image header terbaca dengan benar
PRODUCT_PROPERTY_OVERRIDES += \
    ro.boot.header_version=4

# Identitas build
PRODUCT_DEVICE := X6840
PRODUCT_NAME := twrp_X6840
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix SMART 20
PRODUCT_MANUFACTURER := Infinix

# Tambahkan ini ke device.mk lo
PRODUCT_PROPERTY_OVERRIDES += \
    ro.boot.header_version=4

