#
# Copyright (C) 2011 The Android Open-Source Project
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

PRODUCT_RELEASE_NAME := dragon

# Inherit some common OSR stuff.
$(call inherit-product, vendor/osr/config/common_full_tablet_wifionly.mk)

$(call inherit-product, device/softwinner/dragon/full_dragon.mk)

# Add Google apps
$(call inherit-product, vendor/google/minimal.mk)
$(call inherit-product, vendor/google/products/maps_support.mk)
$(call inherit-product, vendor/google/products/youtube_support.mk)

# Addons personal (call files from vendor/osr/prebuilt/app)
$(call inherit-product, vendor/osr/addons/superatmel.mk)

PRODUCT_NAME := osr_dragon
PRODUCT_BRAND := Allwinner
PRODUCT_DEVICE := dragon
PRODUCT_MODEL := Dragon
PRODUCT_MANUFACTURER := NVSBL