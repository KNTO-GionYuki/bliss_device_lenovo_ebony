#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Boot animation
TARGET_SCREEN_HEIGHT := 1200
TARGET_SCREEN_WIDTH := 2000

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1440

# Screen
TARGET_SCREEN_DENSITY := 320

# AAPT
PRODUCT_AAPT_CONFIG := normal xhdpi nodpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_AAPT_PREBUILT_DPI := xhdpi nodpi

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 31

# Inherit from lenovo sm6375-common
$(call inherit-product, device/lenovo/sm6375-common/common.mk)

# Overlays
#PRODUCT_PACKAGES += \
    FrameworksResDevice \
    LineageApertureAppDevice \
    LineageSystemUIDevice \
    SystemUIResDevice \
    WifiResDevice

DEVICE_PACKAGE_OVERLAYS +=	\
	$(LOCAL_PATH)/overlay

# Audio
PRODUCT_PACKAGES += \
    audio_amplifier.lahaina \
    firmware_aw_cali.bin_symlink

#PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_io_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_io_policy.conf \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/audio/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

#PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/audio-config/acdbdata




PRODUCT_COPY_FILES +=	\
$(LOCAL_PATH)/audio-config/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_configuration.xml


PRODUCT_COPY_FILES +=	\
$(LOCAL_PATH)/audio-config/audio/sku_holi/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/a2dp_audio_policy_configuration.xml	\
$(LOCAL_PATH)/audio-config/audio/sku_holi/audio_effects.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/audio_effects.conf	\
$(LOCAL_PATH)/audio-config/audio/sku_holi/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/audio_effects.xml	\
$(LOCAL_PATH)/audio-config/audio/sku_holi/audio_io_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/audio_io_policy.conf	\
$(LOCAL_PATH)/audio-config/audio/sku_holi/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/audio_platform_info.xml	\
$(LOCAL_PATH)/audio-config/audio/sku_holi/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/audio_platform_info_intcodec.xml	\
$(LOCAL_PATH)/audio-config/audio/sku_holi/audio_platform_info_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/audio_platform_info_qrd.xml		\
$(LOCAL_PATH)/audio-config/audio/sku_holi/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/audio_policy_configuration.xml		\
$(LOCAL_PATH)/audio-config/audio/sku_holi/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/audio_policy_volumes.xml		\
$(LOCAL_PATH)/audio-config/audio/sku_holi/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/audio_tuning_mixer.txt			\
$(LOCAL_PATH)/audio-config/audio/sku_holi/bluetooth_qti_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/bluetooth_qti_audio_policy_configuration.xml		\
$(LOCAL_PATH)/audio-config/audio/sku_holi/bluetooth_qti_hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/bluetooth_qti_hearing_aid_audio_policy_configuration.xml	\
$(LOCAL_PATH)/audio-config/audio/sku_holi/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/default_volume_tables.xml		\
$(LOCAL_PATH)/audio-config/audio/sku_holi/media_codecs_vendor_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/media_codecs_vendor_audio.xml		\
$(LOCAL_PATH)/audio-config/audio/sku_holi/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/mixer_paths.xml	\
$(LOCAL_PATH)/audio-config/audio/sku_holi/mixer_paths_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/mixer_paths_qrd.xml		\
$(LOCAL_PATH)/audio-config/audio/sku_holi/mixer_paths_qrdsku1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/mixer_paths_qrdsku1.xml		\
$(LOCAL_PATH)/audio-config/audio/sku_holi/mixer_paths_usbc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/mixer_paths_usbc.xml		\
$(LOCAL_PATH)/audio-config/audio/sku_holi/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/r_submix_audio_policy_configuration.xml	\
$(LOCAL_PATH)/audio-config/audio/sku_holi/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/sound_trigger_mixer_paths.xml		\
$(LOCAL_PATH)/audio-config/audio/sku_holi/sound_trigger_mixer_paths_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/sound_trigger_mixer_paths_qrd.xml	\
$(LOCAL_PATH)/audio-config/audio/sku_holi/sound_trigger_mixer_paths_qrdsku1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/sound_trigger_mixer_paths_qrdsku1.xml		\
$(LOCAL_PATH)/audio-config/audio/sku_holi/sound_trigger_mixer_paths_usbc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/sound_trigger_mixer_paths_usbc.xml			\
$(LOCAL_PATH)/audio-config/audio/sku_holi/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/sound_trigger_platform_info.xml		\
$(LOCAL_PATH)/audio-config/audio/sku_holi/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/usb_audio_policy_configuration.xml





PRODUCT_COPY_FILES +=	\
$(LOCAL_PATH)/audio-config/audio_effects.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.conf	\
$(LOCAL_PATH)/audio-config/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml	\
$(LOCAL_PATH)/audio-config/audio_io_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_io_policy.conf	\
$(LOCAL_PATH)/audio-config/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml	\
$(LOCAL_PATH)/audio-config/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml	\
$(LOCAL_PATH)/audio-config/audio_platform_info_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_qrd.xml	\
$(LOCAL_PATH)/audio-config/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml	\
$(LOCAL_PATH)/audio-config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml	\
$(LOCAL_PATH)/audio-config/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer.txt	\
$(LOCAL_PATH)/audio-config/bluetooth_qti_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_qti_audio_policy_configuration.xml	\
$(LOCAL_PATH)/audio-config/bluetooth_qti_hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_qti_hearing_aid_audio_policy_configuration.xml	\
$(LOCAL_PATH)/audio-config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml	\
$(LOCAL_PATH)/audio-config/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml	\
$(LOCAL_PATH)/audio-config/mixer_paths_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd.xml	\
$(LOCAL_PATH)/audio-config/mixer_paths_qrdsku1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrdsku1.xml	\
$(LOCAL_PATH)/audio-config/mixer_paths_usbc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_usbc.xml	\
$(LOCAL_PATH)/audio-config/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml	\
$(LOCAL_PATH)/audio-config/sound_trigger_mixer_paths_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_qrd.xml	\
$(LOCAL_PATH)/audio-config/sound_trigger_mixer_paths_qrdsku1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_qrdsku1.xml	\
$(LOCAL_PATH)/audio-config/sound_trigger_mixer_paths_usbc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_usbc.xml	\
$(LOCAL_PATH)/audio-config/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml	\
$(LOCAL_PATH)/audio-config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml



# FM
#TARGET_HAS_FM := true
#PRODUCT_PACKAGES += \
    FM2

# Init
#PRODUCT_PACKAGES += \
    init.mmi.overlay.rc

#    init.oem.fingerprint2.sh

# NFC
#PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service.samsung \
    com.android.nfc_extras \
    Tag

# Permissions
#PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.uicc.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nxp.mifare.xml

#DEVICE_SKUS := b d

#PRODUCT_COPY_FILES += \
$(foreach DEVICE_SKU, $(DEVICE_SKUS), \
    $(LOCAL_PATH)/permissions/unavail.android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_$(DEVICE_SKU)/unavail.android.hardware.nfc.hce.xml \
    $(LOCAL_PATH)/permissions/unavail.android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_$(DEVICE_SKU)/unavail.android.hardware.nfc.hcef.xml \
    $(LOCAL_PATH)/permissions/unavail.android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_$(DEVICE_SKU)/unavail.android.hardware.nfc.uicc.xml \
    $(LOCAL_PATH)/permissions/unavail.android.hardware.nfc.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_$(DEVICE_SKU)/unavail.android.hardware.nfc.xml)

# Recovery
TARGET_RECOVERY_DEFAULT_ROTATION := ROTATION_DOWN

# Sensors
#PRODUCT_PACKAGES += \
    sensors.rhodep

#PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# Inherit from vendor blobs
$(call inherit-product, vendor/lenovo/ebony/ebony-vendor.mk)

# Vulkan
TARGET_USES_VULKAN := true

###KNTOFW
#$(LOCAL_PATH)/fw/a615_zap.fw:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/a615_zap.fw
PRODUCT_COPY_FILES +=	\
$(LOCAL_PATH)/fw/a615_zap.mdt:$(TARGET_COPY_OUT_VENDOR)/firmware/a615_zap.mdt	\
$(LOCAL_PATH)/fw/a615_zap.b00:$(TARGET_COPY_OUT_VENDOR)/firmware/a615_zap.b00	\
$(LOCAL_PATH)/fw/a615_zap.b01:$(TARGET_COPY_OUT_VENDOR)/firmware/a615_zap.b01	\
$(LOCAL_PATH)/fw/a615_zap.b02:$(TARGET_COPY_OUT_VENDOR)/firmware/a615_zap.b02	\
$(LOCAL_PATH)/fw/Himax_firmware_tg.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/Himax_firmware_tg.bin	\
$(LOCAL_PATH)/fw/ipa_fws.b00:$(TARGET_COPY_OUT_VENDOR)/firmware/ipa_fws.b00		\
$(LOCAL_PATH)/fw/ipa_fws.b01:$(TARGET_COPY_OUT_VENDOR)/firmware/ipa_fws.b01		\
$(LOCAL_PATH)/fw/ipa_fws.b02:$(TARGET_COPY_OUT_VENDOR)/firmware/ipa_fws.b02		\
$(LOCAL_PATH)/fw/ipa_fws.b03:$(TARGET_COPY_OUT_VENDOR)/firmware/ipa_fws.b03		\
$(LOCAL_PATH)/fw/ipa_fws.b04:$(TARGET_COPY_OUT_VENDOR)/firmware/ipa_fws.b04		\
$(LOCAL_PATH)/fw/ipa_fws.elf:$(TARGET_COPY_OUT_VENDOR)/firmware/ipa_fws.elf		\
$(LOCAL_PATH)/fw/ipa_fws.mdt:$(TARGET_COPY_OUT_VENDOR)/firmware/ipa_fws.mdt

#Audio?
PRODUCT_COPY_FILES +=	\
	$(LOCAL_PATH)/fw/aw882xx_acf.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/aw882xx_acf.bin


#ADSP
#PRODUCT_COPY_FILES +=	\
$(LOCAL_PATH)/fw/adsp.b00:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b00	\
$(LOCAL_PATH)/fw/adsp.b01:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b01	\
$(LOCAL_PATH)/fw/adsp.b02:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b02	\
$(LOCAL_PATH)/fw/adsp.b03:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b03	\
$(LOCAL_PATH)/fw/adsp.b04:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b04	\
$(LOCAL_PATH)/fw/adsp.b05:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b05	\
$(LOCAL_PATH)/fw/adsp.b06:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b06	\
$(LOCAL_PATH)/fw/adsp.b07:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b07	\
$(LOCAL_PATH)/fw/adsp.b08:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b08	\
$(LOCAL_PATH)/fw/adsp.b09:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b09	\
$(LOCAL_PATH)/fw/adsp.b10:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b10	\
$(LOCAL_PATH)/fw/adsp.b12:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b12	\
$(LOCAL_PATH)/fw/adsp.b13:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b13	\
$(LOCAL_PATH)/fw/adsp.b14:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b14	\
$(LOCAL_PATH)/fw/adsp.b15:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b15	\
$(LOCAL_PATH)/fw/adsp.b16:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b16	\
$(LOCAL_PATH)/fw/adsp.b17:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b17	\
$(LOCAL_PATH)/fw/adsp.b18:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b18	\
$(LOCAL_PATH)/fw/adsp.b19:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b19	\
$(LOCAL_PATH)/fw/adsp.b20:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b20	\
$(LOCAL_PATH)/fw/adsp.b21:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b21	\
$(LOCAL_PATH)/fw/adsp.b22:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b22	\
$(LOCAL_PATH)/fw/adsp.b23:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b23	\
$(LOCAL_PATH)/fw/adsp.b24:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b24	\
$(LOCAL_PATH)/fw/adsp.b25:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b25	\
$(LOCAL_PATH)/fw/adsp.b26:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b26	\
$(LOCAL_PATH)/fw/adsp.b27:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b27	\
$(LOCAL_PATH)/fw/adsp.b28:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b28	\
$(LOCAL_PATH)/fw/adsp.b29:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b29	\
$(LOCAL_PATH)/fw/adsp.b30:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b30	\
$(LOCAL_PATH)/fw/adsp.b31:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b31	\
$(LOCAL_PATH)/fw/adsp.b32:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b32	\
$(LOCAL_PATH)/fw/adsp.b33:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b33	\
$(LOCAL_PATH)/fw/adsp.b34:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.b34	\
$(LOCAL_PATH)/fw/adsp.mdt:$(TARGET_COPY_OUT_VENDOR)/firmware/adsp.mdt

#CDSP
#PRODUCT_COPY_FILES +=	\
$(LOCAL_PATH)/fw/cdsp.b00:$(TARGET_COPY_OUT_VENDOR)/firmware/cdsp.b00	\
$(LOCAL_PATH)/fw/cdsp.b01:$(TARGET_COPY_OUT_VENDOR)/firmware/cdsp.b01	\
$(LOCAL_PATH)/fw/cdsp.b02:$(TARGET_COPY_OUT_VENDOR)/firmware/cdsp.b02	\
$(LOCAL_PATH)/fw/cdsp.b03:$(TARGET_COPY_OUT_VENDOR)/firmware/cdsp.b03	\
$(LOCAL_PATH)/fw/cdsp.b04:$(TARGET_COPY_OUT_VENDOR)/firmware/cdsp.b04	\
$(LOCAL_PATH)/fw/cdsp.b05:$(TARGET_COPY_OUT_VENDOR)/firmware/cdsp.b05	\
$(LOCAL_PATH)/fw/cdsp.b06:$(TARGET_COPY_OUT_VENDOR)/firmware/cdsp.b06	\
$(LOCAL_PATH)/fw/cdsp.b08:$(TARGET_COPY_OUT_VENDOR)/firmware/cdsp.b08	\
$(LOCAL_PATH)/fw/cdsp.b09:$(TARGET_COPY_OUT_VENDOR)/firmware/cdsp.b09	\
$(LOCAL_PATH)/fw/cdsp.b11:$(TARGET_COPY_OUT_VENDOR)/firmware/cdsp.b11	\
$(LOCAL_PATH)/fw/cdsp.mdt:$(TARGET_COPY_OUT_VENDOR)/firmware/cdsp.mdt

#Mode
#PRODUCT_COPY_FILES +=	\
$(LOCAL_PATH)/fw/modem.b00:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b00	\
$(LOCAL_PATH)/fw/modem.b01:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b01	\
$(LOCAL_PATH)/fw/modem.b02:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b02	\
$(LOCAL_PATH)/fw/modem.b03:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b03	\
$(LOCAL_PATH)/fw/modem.b04:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b04	\
$(LOCAL_PATH)/fw/modem.b05:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b05	\
$(LOCAL_PATH)/fw/modem.b06:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b06	\
$(LOCAL_PATH)/fw/modem.b07:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b07	\
$(LOCAL_PATH)/fw/modem.b08:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b08	\
$(LOCAL_PATH)/fw/modem.b09:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b09	\
$(LOCAL_PATH)/fw/modem.b10:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b10	\
$(LOCAL_PATH)/fw/modem.b11:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b11	\
$(LOCAL_PATH)/fw/modem.b12:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b12	\
$(LOCAL_PATH)/fw/modem.b13:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b13	\
$(LOCAL_PATH)/fw/modem.b14:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b14	\
$(LOCAL_PATH)/fw/modem.b15:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b15	\
$(LOCAL_PATH)/fw/modem.b17:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b17	\
$(LOCAL_PATH)/fw/modem.b18:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b18	\
$(LOCAL_PATH)/fw/modem.b19:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b19	\
$(LOCAL_PATH)/fw/modem.b20:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b20	\
$(LOCAL_PATH)/fw/modem.b21:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b21	\
$(LOCAL_PATH)/fw/modem.b22:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b22	\
$(LOCAL_PATH)/fw/modem.b23:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b23	\
$(LOCAL_PATH)/fw/modem.b25:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b25	\
$(LOCAL_PATH)/fw/modem.b26:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b26	\
$(LOCAL_PATH)/fw/modem.b27:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b27	\
$(LOCAL_PATH)/fw/modem.b28:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b28	\
$(LOCAL_PATH)/fw/modem.b29:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b29	\
$(LOCAL_PATH)/fw/modem.b30:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b30	\
$(LOCAL_PATH)/fw/modem.b31:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b31	\
$(LOCAL_PATH)/fw/modem.b32:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b32	\
$(LOCAL_PATH)/fw/modem.b33:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b33	\
$(LOCAL_PATH)/fw/modem.b34:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.b34	\
$(LOCAL_PATH)/fw/modem.mdt:$(TARGET_COPY_OUT_VENDOR)/firmware/modem.mdt

#Wlan
#PRODUCT_COPY_FILES +=	\
$(LOCAL_PATH)/fw/wlanmdsp.mbn:$(TARGET_COPY_OUT_VENDOR)/firmware/wlanmdsp.mbn





PRODUCT_COPY_FILES +=   \
$(LOCAL_PATH)/audio-config/acdbdata/MTP/MTP_Bluetooth_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/MTP_Bluetooth_cal.acdb	\
$(LOCAL_PATH)/audio-config/acdbdata/MTP/MTP_General_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/MTP_General_cal.acdb		\
$(LOCAL_PATH)/audio-config/acdbdata/MTP/MTP_Global_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/MTP_Global_cal.acdb		\
$(LOCAL_PATH)/audio-config/acdbdata/MTP/MTP_Handset_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/MTP_Handset_cal.acdb		\
$(LOCAL_PATH)/audio-config/acdbdata/MTP/MTP_Hdmi_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/MTP_Hdmi_cal.acdb			\
$(LOCAL_PATH)/audio-config/acdbdata/MTP/MTP_Headset_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/MTP_Headset_cal.acdb		\
$(LOCAL_PATH)/audio-config/acdbdata/MTP/MTP_Speaker_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/MTP_Speaker_cal.acdb		\
$(LOCAL_PATH)/audio-config/acdbdata/MTP/MTP_workspaceFile.qwsp:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/MTP_workspaceFile.qwsp


PRODUCT_COPY_FILES +=   \
$(LOCAL_PATH)/audio-config/acdbdata/MTP/factory/MTP_Factory_Bluetooth_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/factory/MTP_Factory_Bluetooth_cal.acdb	\
$(LOCAL_PATH)/audio-config/acdbdata/MTP/factory/MTP_Factory_General_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/factory/MTP_Factory_General_cal.acdb		\
$(LOCAL_PATH)/audio-config/acdbdata/MTP/factory/MTP_Factory_Global_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/factory/MTP_Factory_Global_cal.acdb		\
$(LOCAL_PATH)/audio-config/acdbdata/MTP/factory/MTP_Factory_Handset_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/factory/MTP_Factory_Handset_cal.acdb		\
$(LOCAL_PATH)/audio-config/acdbdata/MTP/factory/MTP_Factory_Hdmi_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/factory/MTP_Factory_Hdmi_cal.acdb			\
$(LOCAL_PATH)/audio-config/acdbdata/MTP/factory/MTP_Factory_Headset_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/factory/MTP_Factory_Headset_cal.acdb		\
$(LOCAL_PATH)/audio-config/acdbdata/MTP/factory/MTP_Factory_Speaker_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/factory/MTP_Factory_Speaker_cal.acdb		\
$(LOCAL_PATH)/audio-config/acdbdata/MTP/factory/MTP_Factory_workspaceFile.qwsp:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/factory/MTP_Factory_workspaceFile.qwsp


PRODUCT_COPY_FILES +=   \
$(LOCAL_PATH)/audio-config/acdbdata/MTP/holi-mtpsku1-snd-card/MTP_SKU1_Bluetooth_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/holi-mtpsku1-snd-card/MTP_SKU1_Bluetooth_cal.acdb	\
$(LOCAL_PATH)/audio-config/acdbdata/MTP/holi-mtpsku1-snd-card/MTP_SKU1_General_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/holi-mtpsku1-snd-card/MTP_SKU1_General_cal.acdb		\
$(LOCAL_PATH)/audio-config/acdbdata/MTP/holi-mtpsku1-snd-card/MTP_SKU1_Global_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/holi-mtpsku1-snd-card/MTP_SKU1_Global_cal.acdb		\
$(LOCAL_PATH)/audio-config/acdbdata/MTP/holi-mtpsku1-snd-card/MTP_SKU1_Handset_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/holi-mtpsku1-snd-card/MTP_SKU1_Handset_cal.acdb		\
$(LOCAL_PATH)/audio-config/acdbdata/MTP/holi-mtpsku1-snd-card/MTP_SKU1_Hdmi_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/holi-mtpsku1-snd-card/MTP_SKU1_Hdmi_cal.acdb			\
$(LOCAL_PATH)/audio-config/acdbdata/MTP/holi-mtpsku1-snd-card/MTP_SKU1_Headset_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/holi-mtpsku1-snd-card/MTP_SKU1_Headset_cal.acdb		\
$(LOCAL_PATH)/audio-config/acdbdata/MTP/holi-mtpsku1-snd-card/MTP_SKU1_Speaker_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/holi-mtpsku1-snd-card/MTP_SKU1_Speaker_cal.acdb		\
$(LOCAL_PATH)/audio-config/acdbdata/MTP/holi-mtpsku1-snd-card/MTP_SKU1_workspaceFile.qwsp:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/MTP/holi-mtpsku1-snd-card/MTP_SKU1_workspaceFile.qwsp


PRODUCT_COPY_FILES +=   \
$(LOCAL_PATH)/audio-config/acdbdata/nn_ns_models/fai__2.0.0_0.1__3.0.0_0.0__eai_1.00.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__2.0.0_0.1__3.0.0_0.0__eai_1.00.pmd	\
$(LOCAL_PATH)/audio-config/acdbdata/nn_ns_models/fai__2.2.0_0.1__3.0.0_0.0__eai_1.00.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__2.2.0_0.1__3.0.0_0.0__eai_1.00.pmd	\
$(LOCAL_PATH)/audio-config/acdbdata/nn_ns_models/fai__2.7.20_0.0__eai_1.10.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_ns_models/fai__2.7.20_0.0__eai_1.10.pmd


PRODUCT_COPY_FILES +=   \
$(LOCAL_PATH)/audio-config/acdbdata/nn_vad_models/fai_3.0.0_0.0_eai_1.00.pmd:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/nn_vad_models/fai_3.0.0_0.0_eai_1.00.pmd


PRODUCT_COPY_FILES +=   \
$(LOCAL_PATH)/audio-config/acdbdata/QRD/QRD_Bluetooth_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/QRD/QRD_Bluetooth_cal.acdb	\
$(LOCAL_PATH)/audio-config/acdbdata/QRD/QRD_General_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/QRD/QRD_General_cal.acdb	\
$(LOCAL_PATH)/audio-config/acdbdata/QRD/QRD_Global_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/QRD/QRD_Global_cal.acdb	\
$(LOCAL_PATH)/audio-config/acdbdata/QRD/QRD_Handset_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/QRD/QRD_Handset_cal.acdb	\
$(LOCAL_PATH)/audio-config/acdbdata/QRD/QRD_Hdmi_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/QRD/QRD_Hdmi_cal.acdb	\
$(LOCAL_PATH)/audio-config/acdbdata/QRD/QRD_Headset_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/QRD/QRD_Headset_cal.acdb	\
$(LOCAL_PATH)/audio-config/acdbdata/QRD/QRD_Speaker_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/QRD/QRD_Speaker_cal.acdb	\
$(LOCAL_PATH)/audio-config/acdbdata/QRD/QRD_workspaceFile.qwsp:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/QRD/QRD_workspaceFile.qwsp


PRODUCT_COPY_FILES +=   \
$(LOCAL_PATH)/audio-config/acdbdata/adsp_avs_config.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/adsp_avs_config.acdb


PRODUCT_COPY_FILES +=   \
$(LOCAL_PATH)/audio-config/acdbdata/QRD/holi-qrdsku1-snd-card/QRD_SKU1_Bluetooth_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/QRD/holi-qrdsku1-snd-card/QRD_SKU1_Bluetooth_cal.acdb	\
$(LOCAL_PATH)/audio-config/acdbdata/QRD/holi-qrdsku1-snd-card/QRD_SKU1_General_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/QRD/holi-qrdsku1-snd-card/QRD_SKU1_General_cal.acdb	\
$(LOCAL_PATH)/audio-config/acdbdata/QRD/holi-qrdsku1-snd-card/QRD_SKU1_Global_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/QRD/holi-qrdsku1-snd-card/QRD_SKU1_Global_cal.acdb	\
$(LOCAL_PATH)/audio-config/acdbdata/QRD/holi-qrdsku1-snd-card/QRD_SKU1_Handset_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/QRD/holi-qrdsku1-snd-card/QRD_SKU1_Handset_cal.acdb	\
$(LOCAL_PATH)/audio-config/acdbdata/QRD/holi-qrdsku1-snd-card/QRD_SKU1_Hdmi_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/QRD/holi-qrdsku1-snd-card/QRD_SKU1_Hdmi_cal.acdb	\
$(LOCAL_PATH)/audio-config/acdbdata/QRD/holi-qrdsku1-snd-card/QRD_SKU1_Headset_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/QRD/holi-qrdsku1-snd-card/QRD_SKU1_Headset_cal.acdb	\
$(LOCAL_PATH)/audio-config/acdbdata/QRD/holi-qrdsku1-snd-card/QRD_SKU1_Speaker_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/QRD/holi-qrdsku1-snd-card/QRD_SKU1_Speaker_cal.acdb	\
$(LOCAL_PATH)/audio-config/acdbdata/QRD/holi-qrdsku1-snd-card/QRD_SKU1_workspaceFile.qwsp:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/QRD/holi-qrdsku1-snd-card/QRD_SKU1_workspaceFile.qwsp

