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

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="mondrian_global-user 15 AQ3A.240912.001 OS2.0.5.0.VMNMIXM release-keys" \
    BuildFingerprint=POCO/mondrian_global/mondrian:15/AQ3A.240912.001/OS2.0.5.0.VMNMIXM:user/release-keys \
    DeviceProduct=mondrian \
    SystemName=mondrian

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

WITH_GMS := true
TARGET_HAS_UDFPS := true
