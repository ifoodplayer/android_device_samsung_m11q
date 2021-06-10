# Copyright (C) 2017-2020 The LineageOS Project
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


LOCAL_PATH := device/samsung/m11q

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false

# Ramdisk
PRODUCT_PACKAGES += \
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
    init.target.rc \
    ueventd.qcom.rc


# Call the proprietary setup
$(call inherit-product, vendor/samsung/m11q/m11q-vendor.mk)

