# Copyright (C) 2012 The Android Open Source Project
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

# /system/bin
PRODUCT_COPY_FILES += \
	device/softwinner/dragon/prebuilt/bin/fsck.exfat:system/bin/fsck.exfat \
	device/softwinner/dragon/prebuilt/bin/mkfs.exfat:system/bin/mkfs.exfat \
	device/softwinner/dragon/prebuilt/bin/mount.exfat:system/bin/mount.exfat \
	device/softwinner/dragon/prebuilt/bin/ntfs-3g:system/bin/ntfs-3g \
	device/softwinner/dragon/prebuilt/bin/ntfs-3g.probe:system/bin/ntfs-3g.probe \
	device/softwinner/dragon/prebuilt/bin/mkntfs:system/bin/mkntfs \
	device/softwinner/dragon/prebuilt/bin/reboot-recovery.sh:system/bin/reboot-recovery.sh \
	device/softwinner/dragon/prebuilt/bin/usb_modeswitch:system/bin/usb_modeswitch \
	device/softwinner/dragon/prebuilt/bin/rild:system/bin/rild

# /system/etc
PRODUCT_COPY_FILES += \
	device/softwinner/dragon/prebuilt/etc/ppp/ip-down:system/etc/ppp/ip-down \
	device/softwinner/dragon/prebuilt/etc/ppp/ip-up:system/etc/ppp/ip-up \
	device/softwinner/dragon/prebuilt/etc/ppp/call-pppd:system/etc/ppp/call-pppd \
	device/softwinner/dragon/prebuilt/etc/firmware/ath3k-1.fw:system/etc/firmware/ath3k-1.fw \
	device/softwinner/dragon/prebuilt/etc/firmware/ath3k-1.fw:system/vendor/firmware/ath3k-1.fw \
	device/softwinner/dragon/prebuilt/etc/3g_dongle.cfg:system/etc/3g_dongle.cfg \
	device/softwinner/dragon/prebuilt/etc/camera.cfg:system/etc/camera.cfg \
	device/softwinner/dragon/prebuilt/etc/gps.conf:system/etc/gps.conf \
	device/softwinner/dragon/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
	device/softwinner/dragon/prebuilt/etc/usb_modeswitch.sh:system/etc/usb_modeswitch.sh \
	device/softwinner/dragon/prebuilt/etc/vold.fstab:system/etc/vold.fstab

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/softwinner/dragon/prebuilt/etc/init.d,system/etc/init.d)

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/softwinner/dragon/prebuilt/etc/usb_modeswitch.d,system/etc/usb_modeswitch.d)

# /system/lib
PRODUCT_COPY_FILES += \
	device/softwinner/dragon/prebuilt/lib/egl/libEGL_mali.so:system/lib/egl/libEGL_mali.so \
	device/softwinner/dragon/prebuilt/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
	device/softwinner/dragon/prebuilt/lib/egl/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \
	device/softwinner/dragon/prebuilt/lib/egl/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \
	device/softwinner/dragon/prebuilt/lib/liballwinner-ril.so:system/lib/liballwinner-ril.so \
	device/softwinner/dragon/prebuilt/lib/hw/camera.exDroid.so:system/lib/hw/camera.exDroid.so \
	device/softwinner/dragon/prebuilt/lib/hw/sensors.exDroid.so:system/lib/hw/sensors.exDroid.so \
	device/softwinner/dragon/prebuilt/lib/libMali.so:system/lib/libMali.so \
	device/softwinner/dragon/prebuilt/lib/libUMP.so:system/lib/libUMP.so \
	device/softwinner/dragon/prebuilt/lib/libMali.so:obj/lib/libMali.so \
	device/softwinner/dragon/prebuilt/lib/libUMP.so:obj/lib/libUMP.so

# /system/usr
PRODUCT_COPY_FILES += \
	device/softwinner/dragon/prebuilt/usr/idc/ft5x_ts.idc:system/usr/idc/ft5x_ts.idc \
	device/softwinner/dragon/prebuilt/usr/idc/Goodix-TS-board-3.idc:system/usr/idc/Goodix-TS-board-3.idc \
	device/softwinner/dragon/prebuilt/usr/keylayout/axp20-supplyer.kl:system/usr/keylayout/axp20-supplyer.kl \
	device/softwinner/dragon/prebuilt/usr/keylayout/sun4i-keyboard.kl:system/usr/keylayout/sun4i-keyboard.kl \
	device/softwinner/dragon/prebuilt/usr/icu/icudt46l.dat:system/usr/icu/icudt46l.dat

# temporary prebuilt wpa_supplicant
PRODUCT_COPY_FILES += \
	device/softwinner/dragon/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# prebuilt kernel modules
#PRODUCT_COPY_FILES += \
#	$(call find-copy-subdir-files,*,device/softwinner/dragon/prebuilt/vendor/modules,system/vendor/modules)

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/softwinner/dragon/prebuilt/lib/modules,system/lib/modules)

# HACK by turl: Create some intermediate files to link with libMali/libUMP
$(shell mkdir -p out/target/product/dragon/obj/SHARED_LIBRARIES/libMali_intermediates)
$(shell mkdir -p out/target/product/dragon/obj/SHARED_LIBRARIES/libUMP_intermediates)
$(shell touch out/target/product/dragon/obj/SHARED_LIBRARIES/libMali_intermediates/export_includes)
$(shell touch out/target/product/dragon/obj/SHARED_LIBRARIES/libUMP_intermediates/export_includes)

# OMX codec support
PRODUCT_COPY_FILES += device/softwinner/dragon/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml

# Audio policy
PRODUCT_COPY_FILES += device/softwinner/dragon/libraries/audio/audio_policy.conf:system/etc/audio_policy.conf

