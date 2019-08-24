#
# Copyright 2018 The Android Open Source Project
# Copyright 2019 The PixelExperience Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/xiaomi/cepheus/cepheus-vendor.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-beast

# Properties
-include $(LOCAL_PATH)/system-props.mk

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.xml:system/etc/audio_effects.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml

# Bluetooth
PRODUCT_PACKAGES += \
    libbthost_if
	
# Bluetooth
PRODUCT_PACKAGES += \
    BluetoothResCommon

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \

# Camera
PRODUCT_PACKAGES += \
    Snap

# CNE
PRODUCT_PACKAGES += \
    cneapiclient \
    com.quicinc.cne \
    services-ext
	
# Device-specific settings
PRODUCT_PACKAGES += \
    XiaomiParts

# Display
PRODUCT_PACKAGES += \
    libdisplayconfig \
    libqdMetaData.system \
    libvulkan

# Fingerprint
PRODUCT_PACKAGES += \
    lineage.biometrics.fingerprint.inscreen@1.0-service.xiaomi_cepheus

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0_system \
    android.hidl.manager@1.0_system
	
#Hotspot
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/configs/hostapd.deny:system/etc/hostapd/hostapd.deny

# IMS
PRODUCT_PACKAGES += \
    ims-ext-common

# Init
PRODUCT_PACKAGES += \
    init.qcom.rc \
    init.mi_thermald.rc

# IR
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl \
    android.hardware.ir@1.0-service

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.xiaomi_msmnile
	
# LiveDisplay
PRODUCT_PACKAGES += \
    lineage.livedisplay@2.0-service-sdm

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles_vendor.xml:system/etc/media_profiles_vendor.xml \
    $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# NFC
PRODUCT_PACKAGES += \
    NfcNci \
    Tag \
    com.android.nfc_extras
	
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/nqnfcee_access.xml:system/etc/nqnfcee_access.xml \
    $(LOCAL_PATH)/nfc/nqnfcse_access.xml:system/etc/nqnfcse_access.xml
	
# OTA
PRODUCT_PACKAGES += \
    Updates

# Power
PRODUCT_PACKAGES += \
    power.qcom:64

# QCOM
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml \
    $(LOCAL_PATH)/permissions/privapp-permissions-qti.xml:system/etc/permissions/privapp-permissions-qti.xml

# QMI
PRODUCT_PACKAGES += \
    libjson

# RCS
PRODUCT_PACKAGES += \
    rcs_service_aidl \
    rcs_service_aidl.xml \
    rcs_service_api \
    rcs_service_api.xml

# Recovery
PRODUCT_PACKAGES += \
    librecovery_updater_xiaomi

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# TextClassifier
PRODUCT_PACKAGES += \
    textclassifier.bundle1
	
PRODUCT_PACKAGES += \
    vndk_package
