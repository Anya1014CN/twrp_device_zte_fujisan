LOCAL_PATH := device/zte/fujisan

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/fstab.qcom:recovery/root/fstab.qcom \
    $(LOCAL_PATH)/recovery/root/init.recovery.usb.rc:recovery/root/init.recovery.usb.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.qcom.rc:recovery/root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.qcom_decrypt.rc:recovery/root/init.recovery.qcom_decrypt.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.rc:recovery/root/ueventd.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.qcom.rc:recovery/root/ueventd.qcom.rc \
    $(LOCAL_PATH)/recovery/root/sbin/mountfirmware.sh:recovery/root/sbin/mountfirmware.sh \
    $(LOCAL_PATH)/recovery/root/sbin/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    $(LOCAL_PATH)/recovery/root/sbin/prepdecrypt.sh:recovery/root/sbin/prepdecrypt.sh \
    $(LOCAL_PATH)/recovery/root/sbin/runatboot.sh:recovery/root/sbin/runatboot.sh \
    $(LOCAL_PATH)/recovery/root/system/manifest.xml:recovery/root/system/manifest.xml \
    $(LOCAL_PATH)/recovery/root/system/usr/idc/synaptics_dsx.idc:recovery/root/system/usr/idc/synaptics_dsx.idc \
    $(LOCAL_PATH)/recovery/root/system/usr/idc/zte-touchscreen.idc:recovery/root/system/usr/idc/zte-touchscreen.idc \
    $(LOCAL_PATH)/recovery/root/system/usr/keylayout/gpio-keys.kl:recovery/root/system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/recovery/root/system/usr/keylayout/qpnp_pon.kl:recovery/root/system/usr/keylayout/qpnp_pon.kl \
    $(LOCAL_PATH)/recovery/root/vendor/manifest.xml:recovery/root/system/vendor/manifest.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/vendor/bin/qseecomd:recovery/root/system/vendor/bin/qseecomd \
    $(LOCAL_PATH)/recovery/root/vendor/bin/hw/android.hardware.gatekeeper@1.0-service:recovery/root/system/vendor/bin/hw/android.hardware.gatekeeper@1.0-service \
    $(LOCAL_PATH)/recovery/root/vendor/bin/hw/android.hardware.keymaster@3.0-service:recovery/root/system/vendor/bin/hw/android.hardware.keymaster@3.0-service \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libQSEEComAPI.so:recovery/root/system/vendor/lib64/libQSEEComAPI.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libdiag.so:recovery/root/system/vendor/lib64/libdiag.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libdrmfs.so:recovery/root/system/vendor/lib64/libdrmfs.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libdrmtime.so:recovery/root/system/vendor/lib64/libdrmtime.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libkeymasterdeviceutils.so:recovery/root/system/vendor/lib64/libkeymasterdeviceutils.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libkeymasterprovision.so:recovery/root/system/vendor/lib64/libkeymasterprovision.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libkeymasterutils.so:recovery/root/system/vendor/lib64/libkeymasterutils.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/librpmb.so:recovery/root/system/vendor/lib64/librpmb.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libssd.so:recovery/root/system/vendor/lib64/libssd.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libtime_genoff.so:recovery/root/system/vendor/lib64/libtime_genoff.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl.so:recovery/root/system/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/hw/android.hardware.keymaster@3.0-impl.so:recovery/root/system/vendor/lib64/hw/android.hardware.keymaster@3.0-impl.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/hw/gatekeeper.msm8996.so:recovery/root/system/vendor/lib64/hw/gatekeeper.msm8996.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/hw/keystore.msm8996.so:recovery/root/system/vendor/lib64/hw/keystore.msm8996.so

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    ro.zygote=zygote64_32 \
    persist.sys.usb.config=adb

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.board=fujisan \
    ro.board.platform=msm8996 \
    ro.hardware=qcom \
    ro.build.product=fujisan \
    ro.sf.lcd_density=640

PRODUCT_SUPPORTS_BOOT_SIGNER := true
PRODUCT_VERITY_SIGNING_KEY := build/target/product/security/verity
