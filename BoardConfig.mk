# Copyright (C) 2021 The OmniROM Project
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

#
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Inherit from dynamic_common
-include device/motorola/sm7250_common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := nairo

TARGET_BOOTLOADER_BOARD_NAME := trinket
TARGET_BOARD_PLATFORM := trinket
TARGET_BOARD_PLATFORM_GPU := qcom-adreno610

TARGET_KERNEL_CONFIG := vendor/omni_nairo_defconfig

BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 116995371008

BOARD_SUPER_PARTITION_SIZE := 8690597888
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 4341104640

BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 100663296
BOARD_DTBOIMG_PARTITION_SIZE := 4194304
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26843545600
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 536870912

