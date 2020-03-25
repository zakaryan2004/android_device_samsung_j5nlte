#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/j5nlte/j5nlte-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/j5-common/device-common.mk)

LOCAL_PATH := device/samsung/j5nlte

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Common overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# NFC
PRODUCT_PACKAGES += \
	android.hardware.nfc@1.1 \
	android.hardware.nfc@1.1-service \
	vendor.nxp.nxpnfc@1.0 \
	vendor.nxp.hardware.nfc@1.0-service

PRODUCT_PACKAGES += \
	com.android.nfc_extras \
	com.gsma.services.nfc \
	com.nxp.nfc.nq \
	nfc_nci.nqx.default \
	nqnfcee_access.xml \
	NfcNci \
	Tag

# NFC configs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/libnfc-nci.conf \
	$(LOCAL_PATH)/configs/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf \
	$(LOCAL_PATH)/configs/nfc/libnfc-nxp_RF.conf:$(TARGET_COPY_OUT_VENDOR)/etc/nfc/libnfc-nxp.conf

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
	frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
	frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml
