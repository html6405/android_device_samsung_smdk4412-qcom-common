#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

COMMON_PATH := device/samsung/smdk4412-qcom-common

TARGET_SPECIFIC_HEADER_PATH := device/samsung/smdk4412-qcom-common/include

# GPS
TARGET_NO_RPC := true

# Radio
BOARD_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(COMMON_PATH)/releasetools

TARGET_LD_SHIM_LIBS += \
    /system/lib/libsec-ril.so|libshim_ril.so

DEXPREOPT_GENERATE_APEX_IMAGE := false
DEXPREOPT_USE_APEX_IMAGE := false
