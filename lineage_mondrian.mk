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
    BuildDesc="mondrian-user 12 SKQ1.230401.001 V816.0.10.0.UMNCNXM release-keys" \
    BuildFingerprint=Redmi/mondrian/mondrian:12/SKQ1.230401.001/V816.0.10.0.UMNCNXM:user/release-keys \
    DeviceProduct=mondrian \
    SystemName=mondrian

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := false
WITH_GMS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_STOCK_AICORE := true
TARGET_INCLUDE_NEXUS := false
