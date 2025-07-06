#
# Copyright (C) 2023-2024 The Evolution X Project
#
# SPDX-License-Identifier: Apache-2.0
#

# XiaomiParts app
PRODUCT_PACKAGES += \
    XiaomiParts

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage

# XiaomiParts sepolicy
BOARD_SEPOLICY_DIRS += packages/apps/XiaomiParts/sepolicy

SELINUX_IGNORE_NEVERALLOWS := true
