# 
# Copyright (C) 2017-2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from jason device
$(call inherit-product, device/xiaomi/jason/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

# Vendor security patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lineage.build.vendor_security_patch=2018-07-01

PRODUCT_NAME := xenonhd_jason
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := jason
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi Note 3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="jason" \
    PRODUCT_NAME="jason" \
    PRIVATE_BUILD_DESC="jason-user 8.1.0 OPM1.171019.019 V10.0.2.0.OCHCNFH release-keys"

BUILD_FINGERPRINT := "Xiaomi/jason/jason:8.1.0/OPM1.171019.019/V10.0.2.0.OCHCNFH:user/release-keys"

TARGET_VENDOR := Xiaomi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.xenonhd.maintainer=AlexM0rtis
