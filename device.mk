LOCAL_PATH := device/zte/fujisan

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/recovery/root/sbin/postrecoveryboot.sh:root/sbin/postrecoveryboot.sh \
    $(LOCAL_PATH)/recovery/root/sbin/touchfilter.sh:root/sbin/touchfilter.sh \
    $(LOCAL_PATH)/recovery/root/system/usr/idc/synaptics_dsx.idc:root/system/usr/idc/synaptics_dsx.idc \
    $(LOCAL_PATH)/recovery/root/system/usr/idc/zte-touchscreen.idc:root/system/usr/idc/zte-touchscreen.idc \
    $(LOCAL_PATH)/recovery/root/system/usr/keylayout/gpio-keys.kl:root/system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/recovery/root/system/usr/keylayout/qpnp_pon.kl:root/system/usr/keylayout/qpnp_pon.kl

PRODUCT_PACKAGES += \
    qcom_decrypt \
    fujisan_vendor_qseecomd \
    fujisan_vendor_gatekeeper_service \
    fujisan_vendor_keymaster_service \
    fujisan_vendor_libQSEEComAPI \
    fujisan_vendor_libdrmfs \
    fujisan_vendor_libdrmtime \
    fujisan_vendor_librpmb \
    fujisan_vendor_libssd \
    fujisan_vendor_libtime_genoff \
    fujisan_vendor_libkeymasterdeviceutils \
    fujisan_vendor_libkeymasterprovision \
    fujisan_vendor_libkeymasterutils \
    fujisan_vendor_gatekeeper_impl \
    fujisan_vendor_keymaster_impl \
    fujisan_vendor_gatekeeper_msm8996 \
    fujisan_vendor_keystore_msm8996

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
