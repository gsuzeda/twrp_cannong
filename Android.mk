#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

TWRP_REQUIRED_MODULES += \
    relink_libraries \
    relink_binaries \
    twrp_ramdisk \
    dump_image \
    erase_image \
    flash_image \
    mke2fs.conf \
    pigz \
    teamwin \
    twrp \
    fsck.fat \
    fatlabel \
    mkfs.fat \
    permissive.sh \
    simg2img_twrp \
    libbootloader_message \
    init.recovery.hlthchrg.rc \
    init.recovery.service.rc \
    init.recovery.ldconfig.rc \
    awk \
    toybox \
    toolbox \
    mkshrc_twrp \
    plat_hwservice_contexts \
    vendor_hwservice_contexts \
    minadbd \
    twrpbu \
    me.twrp.twrpapp.apk \
    privapp-permissions-twrpapp.xml

ifeq ($(TARGET_DEVICE), cannong)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif



ifeq ($(TW_INCLUDE_REPACKTOOLS), true)
TWRP_REQUIRED_MODULES += \
    magiskboot
endif

