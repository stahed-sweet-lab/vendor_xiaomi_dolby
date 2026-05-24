#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/dolby/dolby-vendor.mk)

# Dolby
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.dolby.dax.version=DAX3_3.6.0.12_r1 \
    ro.vendor.dolby.model=PAFM00 \
    ro.vendor.dolby.device=OP46C3 \
    ro.vendor.dolby.manufacturer=OPLUS \
    ro.vendor.dolby.brand=OPLUS

# DolbyManager
PRODUCT_PACKAGES += \
    LunarisDolby

# Overlay-RRO
PRODUCT_PACKAGES += \
    XiaomiDolbyResCommon

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs_c2_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_dolby_audio.xml
