#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from whyred device
$(call inherit-product, device/xiaomi/whyred/device.mk)

PRODUCT_DEVICE := whyred
PRODUCT_NAME := omni_whyred
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi Note 5
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="whyred-user 9 PKQ1.180904.001 V12.0.2.0.PEIMIXM release-keys"

BUILD_FINGERPRINT := xiaomi/whyred/whyred:9/PKQ1.180904.001/V12.0.2.0.PEIMIXM:user/release-keys
