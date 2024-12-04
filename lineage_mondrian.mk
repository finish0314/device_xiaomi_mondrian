#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mondrian device
$(call inherit-product, device/xiaomi/mondrian/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Add miuicamera-mondrian and some other apps
$(call inherit-product-if-exists, device/xiaomi/miuicamera-mondrian/device.mk)
-include vendor/xiaomi/addions/packages.mk

PRODUCT_NAME := lineage_mondrian
PRODUCT_DEVICE := mondrian
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23013RK75C

PRODUCT_SYSTEM_NAME := mondrian
PRODUCT_SYSTEM_DEVICE := mondrian

#PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRIVATE_BUILD_DESC="mondrian_global-user 14 UKQ1.230804.001 V816.0.10.0.UMNMIXM release-keys" \
#    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
#    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Redmi/mondrian/mondrian:12/SKQ1.230804.001/V816.0.10.0.UMNMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi


PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon 8+ Gen1" \
    RisingMaintainer="Finish(@Finish0314)"

RISING_MAINTAINER="Finish(@Finish0314)"
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := false
TARGET_DEFAULT_PIXEL_LAUNCHER := false
WITH_GMS := true
