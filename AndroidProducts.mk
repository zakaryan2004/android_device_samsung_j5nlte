LOCAL_PATH := device/samsung/j5nlte
PRODUCT_MAKEFILES := \
	$(LOCAL_DIR)/omni_j5nlte.mk \
	$(LOCAL_DIR)/rr_j5nlte.mk \
	$(LOCAL_DIR)/pa_j5nlte.mk \
	$(LOCAL_DIR)/lineage_j5nlte.mk

COMMON_LUNCH_CHOICES := \
    lineage_j5nlte-eng \
    lineage_j5nlte-userdebug \
	lineage_j5nlte-user