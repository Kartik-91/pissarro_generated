#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from pissarro device
$(call inherit-product, device/xiaomi/pissarro/device.mk)

PRODUCT_DEVICE := pissarro
PRODUCT_NAME := lineage_pissarro
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := pissarro
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="missi-user 12 SP1A.210812.016 V13.0.2.0.SKTMIXM release-keys"

BUILD_FINGERPRINT := Redmi/vnd_pissarro/pissarro:12/SP1A.210812.016/V13.0.2.0.SKTMIXM:user/release-keys
