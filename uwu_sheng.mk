#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from sheng device
$(call inherit-product, device/xiaomi/sheng/device.mk)

# Inherit from common uwuAOSP configuration
UWU_DEVICE_TYPE := tablet
UWU_SUPPORTS_TELEPHONY := false
UWU_MAINTAINER := bk233
$(call inherit-product, vendor/uwu/config/common.mk)

PRODUCT_DEVICE := sheng
PRODUCT_NAME := uwu_sheng
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 24018RPACG
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=Xiaomi/sheng_global/sheng:16/BP2A.250605.031.A3/OS3.0.303.0.WNXMIXM:user/release-keys
