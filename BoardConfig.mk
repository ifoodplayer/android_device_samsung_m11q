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
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img

# Kernel config
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