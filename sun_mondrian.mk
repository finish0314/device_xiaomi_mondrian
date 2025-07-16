#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mondrian device
$(call inherit-product, device/xiaomi/mondrian/device.mk)

# Inherit from common sun configuration
$(call inherit-product, vendor/sun/config/common_full_phone.mk)

PRODUCT_NAME := sun_mondrian
PRODUCT_DEVICE := mondrian
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23013RK75C

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="mondrian-user 12 SKQ1.230401.001 OS2.0.202.0.VMNCNXM release-keys" \
    BuildFingerprint=Redmi/mondrian/mondrian:12/SKQ1.230401.001/OS2.0.202.0.VMNCNXM:user/release-keys \
    DeviceProduct=mondrian \
    SystemName=mondrian

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
