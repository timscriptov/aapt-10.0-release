
LOCAL_PATH := $(my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := utils_static
LOCAL_SRC_FILES := \
    FileMap.cpp \
    JenkinsHash.cpp \
    NativeHandle.cpp \
    Printer.cpp \
    PropertyMap.cpp \
    RefBase.cpp \
    SharedBuffer.cpp \
    Static.cpp \
    StopWatch.cpp \
    String8.cpp \
    String16.cpp \
    StrongPointer.cpp \
    SystemClock.cpp \
    Threads.cpp \
    Timers.cpp \
    Tokenizer.cpp \
    Unicode.cpp \
    VectorImpl.cpp \
    Looper.cpp
LOCAL_STATIC_LIBRARIES := log_static cutils_static
include $(BUILD_STATIC_LIBRARY)


