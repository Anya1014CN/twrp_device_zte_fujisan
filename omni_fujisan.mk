$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, device/zte/fujisan/device.mk)

PRODUCT_DEVICE := fujisan
PRODUCT_NAME := omni_fujisan
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := Z999
PRODUCT_MANUFACTURER := ZTE
PRODUCT_RELEASE_NAME := ZTE Axon M

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=P996A26 \
    PRIVATE_BUILD_DESC="P996A26-user 8.1.0 OPM1.171019.026 21 release-keys"

BUILD_FINGERPRINT := ZTE/P996A26/fujisan:8.1.0/OPM1.171019.026/20180807.141019:user/release-keys
