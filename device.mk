LOCAL_PATH := device/zte/fujisan

PRODUCT_COPY_FILES +=

PRODUCT_PACKAGES += \
    qcom_decrypt \
    libcryptfs_hw \
    fujisan_init_recovery_qcom_rc \
    fujisan_init_recovery_vold_decrypt_rc \
    fujisan_init_recovery_qcom_decrypt_fbe_rc \
    fujisan_ueventd_rc \
    fujisan_ueventd_qcom_rc \
    fujisan_postrecoveryboot_sh \
    fujisan_touchfilter_sh \
    fujisan_synaptics_dsx_idc \
    fujisan_zte_touchscreen_idc \
    fujisan_gpio_keys_kl \
    fujisan_qpnp_pon_kl \
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
