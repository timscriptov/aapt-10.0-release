
LOCAL_PATH := $(my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := expat_static
LOCAL_SRC_FILES := \
    loadlibrary.c \
    xmlparse.c \
    xmlrole.c \
    xmltok.c
LOCAL_CFLAGS := -DHAVE_EXPAT_CONFIG_H
include $(BUILD_STATIC_LIBRARY)

