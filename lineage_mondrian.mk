#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mondrian device
$(call inherit-product, device/xiaomi/mondrian/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_mondrian
PRODUCT_DEVICE := mondrian
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23013RK75C

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="mondrian-user 15 SKQ1.240401.001 OS2.0.213.0.VMNCNXM release-keys" \
    BuildFingerprint=Redmi/mondrian/mondrian:15/SKQ1.230401.001/OS2.0.213.0.VMNCNXM:user/release-keys \
    DeviceName=mondrian \
    DeviceProduct=mondrian \
    SystemDevice=mondrian \
    SystemName=mondrian

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
