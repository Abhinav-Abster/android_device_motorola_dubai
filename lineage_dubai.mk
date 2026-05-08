#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from dubai device
$(call inherit-product, device/motorola/dubai/device.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_dubai
PRODUCT_DEVICE := dubai
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="dubai_g-user 14 U1RDS34.80-40-5-6 ba4fd-68ef4 release-keys" \
    BuildFingerprint=motorola/dubai_g/dubai:14/U1RDS34.80-40-5-6/ba4fd-68ef4:user/release-keys \
    DeviceProduct=dubai_g

# Lunaris stuff
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true

TARGET_SUPPORTED_REFRESH_RATES := 60,90,120,144
TARGET_CUSTOM_UDFPS := true
WITH_GMS := true
WITH_BCR := true
TARGET_SUPPORTS_GOOGLE_TELEPHONY := true
USE_REALITY_ENGINE := true

# Perf Activity Anim Override
PERF_ANIM_OVERRIDE := true
