LOCAL_PATH := $(my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := base_static
LOCAL_SRC_FILES := \
    chrono_utils.cpp \
    file.cpp \
    logging.cpp \
    parsenetaddress.cpp \
    quick_exit.cpp \
    stringprintf.cpp \
    strings.cpp \
    errors_unix.cpp
LOCAL_STATIC_LIBRARIES := log_static
include $(BUILD_STATIC_LIBRARY)


