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

PRODUCT_EXTRA_VNDK_VERSIONS := 29

# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 1080p

$(call inherit-product, device/motorola/sm7250_common/omni-sm7250_common.mk)
$(call inherit-product, device/motorola/nairo/device.mk)

PRODUCT_SHIPPING_API_LEVEL := 29

# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_nairo
PRODUCT_DEVICE := nairo
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := moto g 5G plus

TARGET_DEVICE := nairo
PRODUCT_SYSTEM_NAME := nairo_retail

VENDOR_RELEASE := 10/QPN30.37-Q3-42-51/264b33:user/release-keys
BUILD_FINGERPRINT := motorola/nairo_retail/nairo:$(VENDOR_RELEASE)
OMNI_BUILD_FINGERPRINT := motorola/nairo_retail/nairo:$(VENDOR_RELEASE)
OMNI_PRIVATE_BUILD_DESC := "'nairo_retail-user 10 QPN30.37-Q3-42-51 264b33 release-keys'"

PLATFORM_SECURITY_PATCH_OVERRIDE := 2020-09-01

TARGET_VENDOR := motorola

DEVICE_PACKAGE_OVERLAYS += device/motorola/nairo/overlay/device

PRODUCT_PRODUCT_PROPERTIES += \
    debug.sf.enable_gl_backpressure=0 \
    debug.sf.enable_hwc_vds=1 \
    debug.sf.latch_unsignaled=1
