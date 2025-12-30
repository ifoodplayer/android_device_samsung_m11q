# Copyright (C) 2025 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from common msm8953-common
include device/samsung/sdm450_439-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/m11q
BUILD_TOP := $(shell pwd)

# Plataform
TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506

# Kernel
TARGET_KERNEL_ARCH := arm64
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_SECOND_OFFSET := 0x00f00000
BOARD_TAGS_OFFSET := 0x01e00000
BOARD_RECOVERY_DTBO_SIZE := 2347796
BOARD_RECOVERY_DTBO_OFFSET := 21106688
BOARD_HEADER_SIZE := 1660
BOARD_DTB_SIZE := 859398
BOARD_DTB_OFFSET := 0x101f00000
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_CMDLINE := console=null androidboot.console=ttyMSM0 androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 androidboot.usbconfigfs=true loop.max_part=7 printk.devkmsg=on androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_BOOT_HEADER_VERSION := 2

BOARD_MKBOOTIMG_ARGS += \
	--base $(BOARD_KERNEL_BASE) \
	--pagesize $(BOARD_KERNEL_PAGESIZE) \
	--ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
	--tags_offset $(BOARD_TAGS_OFFSET) \
	--kernel_offset $(BOARD_KERNEL_OFFSET) \
	--second_offset $(BOARD_SECOND_OFFSET) \
	--dtb_offset $(BOARD_DTB_OFFSET) \
	--board $(TARGET_BOARD_PLATFORM) \
	--header_version $(BOARD_BOOT_HEADER_VERSION) \
	--dtb $(TARGET_PREBUILT_DTB)

# Kernel config
TARGET_KERNEL_VERSION := 4.9
TARGET_KERNEL_CONFIG := m11q_open_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/m11q

# Partition sizes
BOARD_VENDORIMAGE_PARTITION_SIZE := 767557632

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# NFC
NXP_CHIP_TYPE := pn553

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml

# Properties
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP := $(DEVICE_PATH)/vendor.prop

# Assert
TARGET_OTA_ASSERT_DEVICE := a11q,m11q,sdm450

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/recovery.fstab

# SElinux - TODO
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Security patch level
VENDOR_SECURITY_PATCH := 2021-03-01

# Inherit the proprietary files
-include vendor/samsung/m11q/BoardConfigVendor.mk