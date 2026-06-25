LOCAL_PATH := $(call my-dir)

define fujisan-copy-to-recovery-root
include $(CLEAR_VARS)
LOCAL_MODULE := $(1)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := $(2)
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)$(3)
LOCAL_INSTALLED_MODULE_STEM := $(4)
include $(BUILD_PREBUILT)
endef

define fujisan-copy-exec-to-recovery-root
include $(CLEAR_VARS)
LOCAL_MODULE := $(1)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SRC_FILES := $(2)
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)$(3)
LOCAL_INSTALLED_MODULE_STEM := $(4)
include $(BUILD_PREBUILT)
endef

define fujisan-copy-to-recovery-vendor
include $(CLEAR_VARS)
LOCAL_MODULE := $(1)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := $(2)
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)$(3)
LOCAL_INSTALLED_MODULE_STEM := $(4)
include $(BUILD_PREBUILT)
endef

define fujisan-copy-exec-to-recovery-vendor
include $(CLEAR_VARS)
LOCAL_MODULE := $(1)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SRC_FILES := $(2)
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)$(3)
LOCAL_INSTALLED_MODULE_STEM := $(4)
include $(BUILD_PREBUILT)
endef

$(eval $(call fujisan-copy-to-recovery-root,fujisan_init_recovery_qcom_rc,recovery/root/init.recovery.qcom.rc,,init.recovery.qcom.rc))
$(eval $(call fujisan-copy-to-recovery-root,fujisan_init_recovery_vold_decrypt_rc,recovery/root/init.recovery.vold_decrypt.rc,,init.recovery.vold_decrypt.rc))
$(eval $(call fujisan-copy-to-recovery-root,fujisan_init_recovery_qcom_decrypt_fbe_rc,recovery/root/init.recovery.qcom_decrypt.fbe.rc,,init.recovery.qcom_decrypt.fbe.rc))
$(eval $(call fujisan-copy-to-recovery-root,fujisan_ueventd_rc,recovery/root/ueventd.rc,,ueventd.rc))
$(eval $(call fujisan-copy-to-recovery-root,fujisan_ueventd_qcom_rc,recovery/root/ueventd.qcom.rc,,ueventd.qcom.rc))
$(eval $(call fujisan-copy-exec-to-recovery-root,fujisan_postrecoveryboot_sh,recovery/root/sbin/postrecoveryboot.sh,/sbin,postrecoveryboot.sh))
$(eval $(call fujisan-copy-exec-to-recovery-root,fujisan_touchfilter_sh,recovery/root/sbin/touchfilter.sh,/sbin,touchfilter.sh))
$(eval $(call fujisan-copy-to-recovery-root,fujisan_synaptics_dsx_idc,recovery/root/system/usr/idc/synaptics_dsx.idc,/system/usr/idc,synaptics_dsx.idc))
$(eval $(call fujisan-copy-to-recovery-root,fujisan_zte_touchscreen_idc,recovery/root/system/usr/idc/zte-touchscreen.idc,/system/usr/idc,zte-touchscreen.idc))
$(eval $(call fujisan-copy-to-recovery-root,fujisan_gpio_keys_kl,recovery/root/system/usr/keylayout/gpio-keys.kl,/system/usr/keylayout,gpio-keys.kl))
$(eval $(call fujisan-copy-to-recovery-root,fujisan_qpnp_pon_kl,recovery/root/system/usr/keylayout/qpnp_pon.kl,/system/usr/keylayout,qpnp_pon.kl))

$(eval $(call fujisan-copy-exec-to-recovery-vendor,fujisan_vendor_qseecomd,recovery/root/vendor/bin/qseecomd,/vendor/bin,qseecomd))
$(eval $(call fujisan-copy-exec-to-recovery-vendor,fujisan_vendor_gatekeeper_service,recovery/root/vendor/bin/hw/android.hardware.gatekeeper@1.0-service,/vendor/bin/hw,android.hardware.gatekeeper@1.0-service))
$(eval $(call fujisan-copy-exec-to-recovery-vendor,fujisan_vendor_keymaster_service,recovery/root/vendor/bin/hw/android.hardware.keymaster@3.0-service,/vendor/bin/hw,android.hardware.keymaster@3.0-service))
$(eval $(call fujisan-copy-to-recovery-vendor,fujisan_vendor_libQSEEComAPI,recovery/root/vendor/lib64/libQSEEComAPI.so,/vendor/lib64,libQSEEComAPI.so))
$(eval $(call fujisan-copy-to-recovery-vendor,fujisan_vendor_libdrmfs,recovery/root/vendor/lib64/libdrmfs.so,/vendor/lib64,libdrmfs.so))
$(eval $(call fujisan-copy-to-recovery-vendor,fujisan_vendor_libdrmtime,recovery/root/vendor/lib64/libdrmtime.so,/vendor/lib64,libdrmtime.so))
$(eval $(call fujisan-copy-to-recovery-vendor,fujisan_vendor_librpmb,recovery/root/vendor/lib64/librpmb.so,/vendor/lib64,librpmb.so))
$(eval $(call fujisan-copy-to-recovery-vendor,fujisan_vendor_libssd,recovery/root/vendor/lib64/libssd.so,/vendor/lib64,libssd.so))
$(eval $(call fujisan-copy-to-recovery-vendor,fujisan_vendor_libtime_genoff,recovery/root/vendor/lib64/libtime_genoff.so,/vendor/lib64,libtime_genoff.so))
$(eval $(call fujisan-copy-to-recovery-vendor,fujisan_vendor_libkeymasterdeviceutils,recovery/root/vendor/lib64/libkeymasterdeviceutils.so,/vendor/lib64,libkeymasterdeviceutils.so))
$(eval $(call fujisan-copy-to-recovery-vendor,fujisan_vendor_libkeymasterprovision,recovery/root/vendor/lib64/libkeymasterprovision.so,/vendor/lib64,libkeymasterprovision.so))
$(eval $(call fujisan-copy-to-recovery-vendor,fujisan_vendor_libkeymasterutils,recovery/root/vendor/lib64/libkeymasterutils.so,/vendor/lib64,libkeymasterutils.so))
$(eval $(call fujisan-copy-to-recovery-vendor,fujisan_vendor_gatekeeper_impl,recovery/root/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl.so,/vendor/lib64/hw,android.hardware.gatekeeper@1.0-impl.so))
$(eval $(call fujisan-copy-to-recovery-vendor,fujisan_vendor_keymaster_impl,recovery/root/vendor/lib64/hw/android.hardware.keymaster@3.0-impl.so,/vendor/lib64/hw,android.hardware.keymaster@3.0-impl.so))
$(eval $(call fujisan-copy-to-recovery-vendor,fujisan_vendor_gatekeeper_msm8996,recovery/root/vendor/lib64/hw/gatekeeper.msm8996.so,/vendor/lib64/hw,gatekeeper.msm8996.so))
$(eval $(call fujisan-copy-to-recovery-vendor,fujisan_vendor_keystore_msm8996,recovery/root/vendor/lib64/hw/keystore.msm8996.so,/vendor/lib64/hw,keystore.msm8996.so))

include $(call all-makefiles-under,$(LOCAL_PATH)/cryptfs_hw)
