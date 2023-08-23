#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from RE8D4B device
$(call inherit-product, device/realme/RE8D4B/device.mk)

PRODUCT_DEVICE := RE8D4B
PRODUCT_NAME := twrp_RE8D4B
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3615
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_k6833v1_64_k419-user 12 SP1A.210812.016 1686542029674 release-keys"

BUILD_FINGERPRINT := realme/RMX3615/RE8D4B:12/SP1A.210812.016/S.202306121204:user/release-keys
