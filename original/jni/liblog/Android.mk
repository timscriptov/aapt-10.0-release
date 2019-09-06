
LOCAL_PATH := $(my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := log_static
LOCAL_SRC_FILES := \
    log.cpp
include $(BUILD_STATIC_LIBRARY)


