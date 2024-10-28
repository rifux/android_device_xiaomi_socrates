#
# Copyright (C) 2024 The LineageOS Project, Vladimir `rifux` Blinkov
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := socrates

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/xiaomi/socrates/voltage/product_launched_with_t.mk)

# Inherit device-specific configurations
$(call inherit-product, device/xiaomi/socrates/device.mk)

# Inherit VoltageOS configurations
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_DOESNT_LIKE_FLIPENDO := true
TARGET_ENABLE_BLUR := true

# Inherit extras
# <placeholder>

# Official-ify
VOLTAGE_BUILD_TYPE := UNOFFICIAL

# UDFPS animations
EXTRA_UDFPS_ANIMATIONS := true

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 3200

# Device info
PRODUCT_DEVICE := socrates
PRODUCT_NAME := voltage_socrates
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K60 Pro
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Redmi/socrates/socrates:13/UKQ1.230804.001/V816.0.11.0.UMKCNXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="socrates-user 13 UKQ1.230804.001 V816.0.11.0.UMKCNXM:user release-keys" \
    PRODUCT_NAME="socrates" \
    TARGET_DEVICE="socrates"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi