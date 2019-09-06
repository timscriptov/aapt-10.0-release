#
# Copyright (C) 2014 The Android Open Source Project
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

ifeq ($(TARGET_BUILD_APPS)$(filter true,$(TARGET_BUILD_PDK)),)

# ==========================================================
# Setup some common variables for the different build
# targets here.
# ==========================================================
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := aapt_static
LOCAL_CFLAGS := -DAAPT_VERSION=\"TimScriptov\"
LOCAL_SRC_FILES := \
    AaptAssets.cpp\
        AaptConfig.cpp\
        AaptUtil.cpp\
        AaptXml.cpp\
        ApkBuilder.cpp\
        Command.cpp\
        CrunchCache.cpp\
        FileFinder.cpp\
        Images.cpp\
        Package.cpp\
        pseudolocalize.cpp\
        Resource.cpp\
        ResourceFilter.cpp\
        ResourceIdCache.cpp\
        ResourceTable.cpp\
        SourcePos.cpp\
        StringPool.cpp\
        WorkQueue.cpp\
        XMLNode.cpp\
        ZipEntry.cpp\
        ZipFile.cpp
LOCAL_STATIC_LIBRARIES := androidfw_static expat_static png_static
LOCAL_C_INCLUDES := jni/expat jni/libpng
include $(BUILD_STATIC_LIBRARY)
# ==========================================================
# Build the host executable: aapt
# ==========================================================
include $(CLEAR_VARS)

LOCAL_MODULE := aapt
LOCAL_CFLAGS := -DAAPT_VERSION=\"TimScriptov\"
LOCAL_SRC_FILES := Main.cpp
LOCAL_STATIC_LIBRARIES := aapt_static
LOCAL_LDLIBS := -lz

include $(BUILD_EXECUTABLE)

endif # No TARGET_BUILD_APPS or TARGET_BUILD_PDK




