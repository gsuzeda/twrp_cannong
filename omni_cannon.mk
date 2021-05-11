#
# Copyright (C) 2020 Android Open Source Project
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
#

# Dynamic
PRODUCT_RELEASE_NAME := cannon
PRODUCT_USE_DYNAMIC_PARTITIONS := true
DEVICE_PATH := device/xiaomi/cannon
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)
## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cannon
PRODUCT_NAME := omni_cannon
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Note 9T
PRODUCT_MANUFACTURER := Xiaomi

