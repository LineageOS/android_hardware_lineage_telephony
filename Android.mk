#
# Copyright (C) 2018 The LineageOS Project
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

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_PROVIDES_QTI_TELEPHONY_JAR),)
include $(CLEAR_VARS)
LOCAL_MODULE := qti-telephony-common
LOCAL_JAVA_LIBRARIES := telephony-common telephony-ext
LOCAL_SRC_FILES := $(call all-java-files-under,src_common)
ifeq ($(TARGET_USES_QCRILHOOK_PROVISIONING),true)
LOCAL_JAVA_LIBRARIES += qcrilhook
LOCAL_SRC_FILES += $(call all-java-files-under,src_qc)
else
LOCAL_SRC_FILES += $(call all-java-files-under,src_aosp)
endif
LOCAL_MODULE_TAGS := optional
LOCAL_DEX_PREOPT := false
include $(BUILD_JAVA_LIBRARY)
endif
