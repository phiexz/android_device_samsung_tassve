# Copyright (C) 2007 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# config.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH:= $(call my-dir)

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

USE_CAMERA_STUB:= true
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Recovery


# CPU
TARGET_BOARD_PLATFORM := bcm21553
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi

#GPU
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
BOARD_EGL_CFG := device/samsung/tassve/prebuilt/egl.cfg

TARGET_OVERLAY_ALWAYS_DETERMINES_FORMAT := true
TARGET_USE_SOFTWARE_AUDIO_AAC := true

TARGET_BOOTLOADER_BOARD_NAME := tassve
TARGET_OTA_ASSERT_DEVICE := tassve,GT-S5570I
BOARD_USE_SCREENCAP := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_FORCE_STATIC_A2DP := true

WITH_JIT := true
ENABLE_JSC_JIT := true 

JS_ENGINE := v8

BOARD_MOBILEDATA_INTERFACE_NAME = "pdp0"

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/lm-2/gadget/lun0/file"
BOARD_UMS_LUNFILE := "/sys/devices/lm-2/gadget/lun0/file"

# fix this up by examining /proc/mtd on a running device
TARGET_USERIMAGES_USE_EXT4 := false
BOARD_BML_BOOT := "/dev/block/bml7"
BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 233308160
BOARD_USERDATAIMAGE_PARTITION_SIZE := 199491584
BOARD_FLASH_BLOCK_SIZE := 131072
TOUCHPAD_INPUT_DEVICE_ID := 1023
BOARD_KERNEL_BASE := 0x81600000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_NAND_PAGE_SIZE := 4096 -s 128


# Recovery
BOARD_HAS_NO_RECOVERY_PARTITION := true
BOARD_USES_BOOTMENU := false
BOARD_PROVIDES_BOOTMODE := true
BOARD_HAS_DATADATA := false
BOARD_USES_BMLUTILS := true
BOARD_HAS_SDCARD_INTERNAL := false
BOARD_HAS_DOWNLOAD_MODE := true
TARGET_PREBUILT_RECOVERY_KERNEL := device/samsung/tassve/prebuilt/kernel
TARGET_RECOVERY_INITRC := device/samsung/tassve/recovery.rc

BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_HAS_SMALL_RECOVERY := true
BOARD_LDPI_RECOVERY := true

BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/samsung/tassve/recovery/recovery_ui.c
BOARD_CUSTOM_GRAPHICS           := ../../../device/samsung/tassve/recovery/graphics.c
