# Heritage / Identity
PRODUCT_NAME := kansas
PRODUCT_DEVICE := kansas
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g 5G - 2025

# Recovery / FSTAB
# We keep this because the build system doesn't auto-copy fstab
PRODUCT_COPY_FILES += \
$(DEVICE_PATH)/recovery.fstab:recovery/root/system/etc/recovery.fstab

# Inherit from common AOSP/TWRP parts
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_no_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
