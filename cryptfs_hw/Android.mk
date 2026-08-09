ifeq ($(TARGET_HW_DISK_ENCRYPTION),true)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libcryptfs_hw
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := qcom

LOCAL_SRC_FILES := cryptfs_hw.c

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH) \
    hardware/libhardware/include/hardware \
    system/vold \
    $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)

LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libutils \
    libdl \
    libhardware \
    liblog

ifeq ($(TARGET_SWV8_DISK_ENCRYPTION),true)
LOCAL_CFLAGS += -DCONFIG_SWV8_DISK_ENCRYPTION
endif

ifeq ($(TARGET_USE_UFS_ICE),true)
LOCAL_CFLAGS += -DUSE_ICE_FOR_STORAGE_ENCRYPTION
endif

include $(BUILD_SHARED_LIBRARY)

endif
