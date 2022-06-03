#
# Copyright (C) 2017 The LineageOS Project
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

# Set shipping API level here as not all ROMs have the relevant mk in
# their build system.
PRODUCT_SHIPPING_API_LEVEL := 25

# Inherit from teos device
$(call inherit-product, device/vestel/teos/device.mk)

# Inherit some common XenonHD stuff.
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

PRODUCT_BRAND := Vestel
PRODUCT_DEVICE := teos
PRODUCT_NAME := xenonhd_teos
PRODUCT_MANUFACTURER := Vestel
PRODUCT_MODEL := Venus V5

PRODUCT_GMS_CLIENTID_BASE := android-vestel

TARGET_VENDOR_PRODUCT_NAME := Teos
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=Teos \
    PRODUCT_DEVICE=Teos \
    PRIVATE_BUILD_DESC="Teos-user 7.1.2 VTE1190 131806 release-keys" \
    BUILD_FINGERPRINT=Vestel/Teos/Teos:7.1.2/VTE1190/131806:user/release-keys

# More Xenon stuff
PRODUCT_PROPERTY_OVERRIDES += ro.xenonhd.maintainer="Beru S. Hinode (windowz414) & Nick (nift4) x AkumaHunt3r & Bruno Lange (brvn0)"
PRODUCT_PACKAGES += \
    AdAway \
    KernelAdiutor \
    Snap