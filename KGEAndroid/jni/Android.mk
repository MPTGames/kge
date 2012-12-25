# Copyright (C) 2009 The Android Open Source Project
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
LOCAL_PATH:= $(call my-dir)/../../engine

#================================================================
#	K	G	E
#================================================================

include $(CLEAR_VARS)

LOCAL_MODULE    := kge
LOCAL_CFLAGS    := -DANDROID -DNDK -DSTRUCT_MALLINFO_DECLARED
SRC_FILES := $(wildcard $(LOCAL_PATH)/KGEmain/*.cpp)
SRC_FILES := $(SRC_FILES:$(LOCAL_PATH)/%=%)
LOCAL_SRC_FILES := $(SRC_FILES)
LOCAL_LDLIBS    := -llog -ldl

include $(BUILD_SHARED_LIBRARY)

#================================================================
#	Renderer_ogl	plugin
#================================================================

include $(CLEAR_VARS)

LOCAL_MODULE    := Renderer_ogl
LOCAL_CFLAGS    := -DANDROID -DNDK -DSTRUCT_MALLINFO_DECLARED
SRC_FILES := $(wildcard $(LOCAL_PATH)/Renderer_ogl/*.cpp)
SRC_FILES := $(SRC_FILES:$(LOCAL_PATH)/%=%)
LOCAL_SRC_FILES := $(SRC_FILES)
LOCAL_LDLIBS    := -llog -ldl

include $(BUILD_SHARED_LIBRARY)

