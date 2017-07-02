# Copyright (C) 2014 The CyanogenMod Project
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

COMMON_PATH := device/sony/msm8974-common

# Include msm8974-common system properties
-include $(LOCAL_PATH)/systemprop.mk

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8974 \
    audio.r_submix.default \
    audio.usb.default \
    audio_policy.msm8974

PRODUCT_PACKAGES += \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessingdescriptors \
    libqcomvoiceprocessing \
    tinymix

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf

# Specific apps
PRODUCT_PACKAGES += \
    Snap \
    Jelly

# Display
PRODUCT_PACKAGES += \
    hwcomposer.msm8974 \
    gralloc.msm8974 \
    copybit.msm8974 \
    memtrack.msm8974 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer \
    libI420colorconvert

# Ion
PRODUCT_PACKAGES += \
    libion

# Lights
PRODUCT_PACKAGES += \
    lights.msm8974

# Init
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/init.msm8974-common.rc:root/init.msm8974-common.rc \
    $(COMMON_PATH)/rootdir/init.sony.usb.rc:root/init.sony.usb.rc \
    $(COMMON_PATH)/rootdir/init.recovery.qcom.rc:root/init.recovery.qcom.rc

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/sbin/wait4tad_static:root/sbin/wait4tad_static \
    $(COMMON_PATH)/rootdir/sbin/tad_static:root/sbin/tad_static

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/system/bin/credmgrfirstboot.sh:system/bin/credmgrfirstboot.sh

# Camera
PRODUCT_PACKAGES += \
	libshims_wvm \
	libshims_signal \
	libshims_idd \
    libsonycamera

# Media profile
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(COMMON_PATH)/media_profiles.xml:system/etc/media_profiles.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml

# Omx
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libOmxVdecHevc \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libstagefrighthw

# For android_filesystem_config.h
PRODUCT_PACKAGES += \
   fs_config_files

# GPS
PRODUCT_PACKAGES += \
    gps.msm8974 \
    libloc_core \
    libloc_eng \
    libgps.utils \
    libloc_ds_api \
    libloc_api_v02

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/gps/etc/gps.conf:system/etc/gps.conf

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(COMMON_PATH)/overlay
ifneq ($(BOARD_HAVE_RADIO),false)
    DEVICE_PACKAGE_OVERLAYS += $(COMMON_PATH)/overlay-radio
    $(call inherit-product, $(COMMON_PATH)/radio.mk)
else
    DEVICE_PACKAGE_OVERLAYS += $(COMMON_PATH)/overlay-wifionly
endif

# Power
PRODUCT_PACKAGES += \
    power.msm8974

# Recovery
PRODUCT_PACKAGES += \
    keycheck

PRODUCT_PACKAGES += \
    librmnetctl \
    libxml2

# Thermal management
PRODUCT_PACKAGES += \
    thermanager

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

# Include non-opensource parts
$(call inherit-product, vendor/sony/msm8974-common/msm8974-common-vendor.mk)
