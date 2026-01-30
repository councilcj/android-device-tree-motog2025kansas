#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/motorola/kansas

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := kansas
TARGET_NO_BOOTLOADER := true

# --- THE "STABLE GRAPHICS" FIX ---
DEVICE_SCREEN_WIDTH := 720
DEVICE_SCREEN_HEIGHT := 1604
TARGET_SCREEN_DENSITY := 280

# MediaTek Kernel 5.15+ Display Settings
RECOVERY_GRAPHICS_FORCE_USE_LINUX_FB := true
TW_NO_UI := false
TW_RECOVERY_BUTTONS := true

# --- BUTTONS & INPUT ---
BOARD_HAS_NO_SELECT_BUTTON := false
TW_INPUT_BLACKLIST := "hbtp_vm,fts_ts"

# Kernel Configuration - HEADER V4
BOARD_BOOTIMG_HEADER_VERSION := 4
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

# --- THE "PREBUILT DNA" ---
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel

# DTB & DTBO Settings - Updated for Header V4/Ninja Rules
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_PREBUILT_DTB := $(DEVICE_PATH)/dtb.img
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/dtb.img
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/dtbo.img

# --- THE "NO-PANIC" COMMAND LINE ---
BOARD_KERNEL_CMDLINE := androidboot.boot_devices=soc/11270000.ufshci
BOARD_KERNEL_CMDLINE += androidboot.init_fatal_reboot_target=fastboot
BOARD_KERNEL_CMDLINE += loop.max_part=7
BOARD_KERNEL_CMDLINE += mtk_disp_mgr.wait_vblank=0
BOARD_KERNEL_CMDLINE += video=720x1604@60

# Platform & Partitions
TARGET_BOARD_PLATFORM := mt6835
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
TARGET_COPY_OUT_VENDOR := vendor

# Recovery UI - High Visibility
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 150
TW_NO_SCREEN_BLANK := true

# Anti-rollback bypass
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.2
