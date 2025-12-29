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

# Inherit from msm8953-common
$(call inherit-product, device/samsung/sdm450_439-common/sdm450-439.mk)

# Call the proprietary setup
$(call inherit-product, vendor/samsung/m01q/m01q-vendor.mk)

LOCAL_PATH := device/samsung/m11q

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

PRODUCT_ENFORCE_RRO_TARGETS += *

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage/lineage-sdk \
    $(LOCAL_PATH)/overlay-lineage/packages/apps/Updater

# Boot animation
TARGET_SCREEN_HEIGHT := 1560
TARGET_SCREEN_WIDTH := 720

# Properties
-include $(LOCAL_PATH)/vendor_prop.mk

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.boot.qcom \
    fstab.qcom \
	init.hq.common.rc \
	init.hq.shipping.rc \
	init.m11q.rc \
    init.msm.usb.configfs.rc \
    init.qcom.rc \
	init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
	init.samsung.bsp.rc \
	init.samsung.rc \
    init.target.rc

# Audio
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    NfcNci \
    SecureElement \
    Tag

# NFC configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp_RF.conf:$(TARGET_COPY_OUT_VENDOR)/etc/nfc/libnfc-nxp_RF.conf \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/nfc/permissions/,$(TARGET_COPY_OUT_ODM)/etc/permissions) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/nfc/vintf/,$(TARGET_COPY_OUT_ODM)/etc/vintf)

# Media codecs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/media/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Wifi
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/wifi/,$(TARGET_COPY_OUT_VENDOR)/etc/wifi)

# Seccomp
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/seccomp/,$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy)

# Call the proprietary setup
$(call inherit-product, vendor/samsung/m11q/m11q-vendor.mk)

