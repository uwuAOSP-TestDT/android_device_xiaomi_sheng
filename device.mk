#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8550-common
$(call inherit-product, device/xiaomi/sm8550-common/common.mk)

# Use the kernel's predefined effects; sheng firmware has no Xiaomi effect-stream files.
$(call soong_config_set,qti_vibrator,effect_lib,libqtivibratoreffect)
$(call soong_config_set_bool,qti_vibrator,use_effect_stream,false)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/sheng/sheng-vendor.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths_kalama_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_kalama/mixer_paths_kalama_mtp.xml \
    $(LOCAL_PATH)/configs/audio/resourcemanager_kalama_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_kalama/resourcemanager_kalama_mtp.xml

# IFAAService
PRODUCT_PACKAGES += \
    IFAAService
    
# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/NVTCapacitiveTouchScreen.idc:$(TARGET_COPY_OUT_ODM)/usr/idc/NVTCapacitiveTouchScreen.idc \
    $(LOCAL_PATH)/configs/keylayout/NVTCapacitivePenP81c.idc:$(TARGET_COPY_OUT_ODM)/usr/idc/NVTCapacitivePenP81c.idc \
    $(LOCAL_PATH)/configs/keylayout/NVTCapacitivePenM80p.idc:$(TARGET_COPY_OUT_ODM)/usr/idc/NVTCapacitivePenM80p.idc

# Overlay
PRODUCT_PACKAGES += \
    FrameworkResOverlaySheng \
    SettingsOverlaySheng \
    SettingsProviderResSheng \
    SystemUIOverlaySheng \
    WifiResSheng

# Pen
PRODUCT_PACKAGES += \
    XiaomiPen

# Permission
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/tablet_core_hardware.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/sheng_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/sheng_hardware.xml

# Peripheral Manager
PRODUCT_PACKAGES += \
    XiaomiPeripheralManager

# Recovery
$(call soong_config_set_bool,recovery,target_recovery_uses_qti_drm,true)

# Rootdir
PRODUCT_PACKAGES += \
    init.device.rc

# Properties
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/properties/odm_CN.prop:$(TARGET_COPY_OUT_ODM)/etc/odm_CN.prop \
    $(LOCAL_PATH)/properties/odm_GL.prop:$(TARGET_COPY_OUT_ODM)/etc/odm_GL.prop

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
