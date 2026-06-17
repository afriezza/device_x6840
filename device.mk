#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# CUKUP INHERIT DARI TWRP SAJA
$(call inherit-product, vendor/twrp/config/common.mk)

# Memanggil paket dasar
PRODUCT_PACKAGES += \
    otacerts \
    fastbootd

# Mengaktifkan update dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Identitas build
PRODUCT_DEVICE := X6840
PRODUCT_NAME := twrp_X6840
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix SMART 20
PRODUCT_MANUFACTURER := Infinix

# Property Overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.boot.header_version=4
