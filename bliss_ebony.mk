#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ebony device
$(call inherit-product, device/lenovo/ebony/device.mk)

# Inherit some common Lineage stuff.
#$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, vendor/bliss/config/common_full_tablet.mk)

PRODUCT_LOCALES := ja_JP en_US

PRODUCT_NAME := bliss_ebony
PRODUCT_DEVICE := ebony
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := KNTO_Gusion

#### ChatGPT accessable
#PRODUCT_NAME := lineage_ebony
#PRODUCT_DEVICE := ebony
#PRODUCT_MANUFACTURER := Lenovo
#PRODUCT_BRAND := lenovo
#PRODUCT_MODEL := A301LV
#PRODUCT_MODEL := 関東機関(司書官用第11号指定端末)

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

#PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="rhodep_g-user 13 T1SUS33.1-124-6-16 5406e-b418a2 release-keys" \
    BuildFingerprint=motorola/rhodep_g/rhodep:13/T1SUS33.1-124-6-16/5406e-b418a2:user/release-keys \
    DeviceProduct=rhodep_g

#GAPPS(MTG)
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)
