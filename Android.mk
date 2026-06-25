LOCAL_PATH := $(call my-dir)

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
