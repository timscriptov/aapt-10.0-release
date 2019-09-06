
LOCAL_PATH := $(my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := cutils_static
LOCAL_SRC_FILES := \
    android_get_control_file.cpp \
    fs.cpp \
    multiuser.cpp \
    socket_inaddr_any_server_unix.cpp \
    socket_local_client_unix.cpp \
    socket_local_server_unix.cpp \
    socket_network_client_unix.cpp \
    sockets_unix.cpp \
    str_parms.cpp \
    config_utils.cpp \
    fs_config.cpp \
    canned_fs_config.cpp \
    hashmap.cpp \
    iosched_policy.cpp \
    load_file.cpp \
    native_handle.cpp \
    open_memstream.c \
    record_stream.cpp \
    sched_policy.cpp \
    sockets.cpp \
    strdup16to8.cpp \
    strdup8to16.cpp \
    strlcpy.c \
    threads.cpp \
    trace-host.cpp
LOCAL_STATIC_LIBRARIES := log_static
include $(BUILD_STATIC_LIBRARY)

