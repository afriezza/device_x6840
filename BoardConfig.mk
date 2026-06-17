#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Architecture (Helio G81 Ultimate - Rumpun MT6768/MT6769)
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic

# Platform & Kernel Info (Dual Flag Biar Gak Kebingungan Driver)
BOARD_HAS_MTK_HARDWARE := true
TARGET_BOARD_PLATFORM := mt6768
TARGET_BOOTLOADER_BOARD_NAME := mt6769

# Header Boot Image (Wajib Versi 4 untuk Infinix OS Baru)
BOARD_BOOTIMG_HEADER_VERSION := 4
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

# Konfigurasi Partisi Dynamic (EROFS + EXT4)
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_SUPER_PARTITION_GROUPS := main
BOARD_MAIN_PARTITION_LIST := system system_ext vendor product odm

# Data Sinkronisasi Android 16 (April 2026) sesuai HP lo
PLATFORM_VERSION := 16
PLATFORM_VERSION_LAST_STABLE := 16
PLATFORM_SECURITY_PATCH := 2026-04-01

# Pengaturan Enkripsi Data (FBE v2 & Metadata)
BOARD_USES_METADATA_ENCRYPTION := true
BOARD_USES_RECOVERY_AS_BOOT := false
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Resolusi Layar Infinix SMART 20 (720x1576) Biar TWRP Pas Gak Kepotong
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1576

# TWRP Configuration Flags
TW_THEME := portrait_hd_resizable
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true

# Tambahan Batasan Ukuran Maksimal Recovery (Optional)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864 # 64MB standar mtk

# Boot image header versioning
PRODUCT_PROPERTY_OVERRIDES += \
    ro.boot.header_version=$(BOARD_BOOTIMG_HEADER_VERSION)

# Hapus atau nonaktifkan ini
# BOARD_RECOVERYIMAGE_PARTITION_SIZE := ... 

# Tambahkan ini untuk perangkat dengan vendor_boot
BOARD_USES_RECOVERY_AS_BOOT := false
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_NO_RECOVERY := true
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false

    
