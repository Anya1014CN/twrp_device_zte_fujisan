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

$(eval $(call fujisan-copy-to-recovery-root,fujisan_init_recovery_qcom_rc,recovery/root/init.recovery.qcom.rc,,init.recovery.qcom.rc))
$(eval $(call fujisan-copy-to-recovery-root,fujisan_init_recovery_vold_decrypt_rc,recovery/root/init.recovery.vold_decrypt.rc,,init.recovery.vold_decrypt.rc))
$(eval $(call fujisan-copy-to-recovery-root,fujisan_ueventd_rc,recovery/root/ueventd.rc,,ueventd.rc))
$(eval $(call fujisan-copy-to-recovery-root,fujisan_ueventd_qcom_rc,recovery/root/ueventd.qcom.rc,,ueventd.qcom.rc))
$(eval $(call fujisan-copy-exec-to-recovery-root,fujisan_postrecoveryboot_sh,recovery/root/sbin/postrecoveryboot.sh,/sbin,postrecoveryboot.sh))
$(eval $(call fujisan-copy-exec-to-recovery-root,fujisan_setup_decrypt_sh,recovery/root/sbin/setup_decrypt,/sbin,setup_decrypt))
$(eval $(call fujisan-copy-exec-to-recovery-root,fujisan_touchfilter_sh,recovery/root/sbin/touchfilter.sh,/sbin,touchfilter.sh))
$(eval $(call fujisan-copy-to-recovery-root,fujisan_synaptics_dsx_idc,recovery/root/system/usr/idc/synaptics_dsx.idc,/system/usr/idc,synaptics_dsx.idc))
$(eval $(call fujisan-copy-to-recovery-root,fujisan_zte_touchscreen_idc,recovery/root/system/usr/idc/zte-touchscreen.idc,/system/usr/idc,zte-touchscreen.idc))
$(eval $(call fujisan-copy-to-recovery-root,fujisan_gpio_keys_kl,recovery/root/system/usr/keylayout/gpio-keys.kl,/system/usr/keylayout,gpio-keys.kl))
$(eval $(call fujisan-copy-to-recovery-root,fujisan_qpnp_pon_kl,recovery/root/system/usr/keylayout/qpnp_pon.kl,/system/usr/keylayout,qpnp_pon.kl))
