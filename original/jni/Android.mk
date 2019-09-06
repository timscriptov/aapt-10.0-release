
LOCAL_PATH := $(my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := protobuf_static
LOCAL_SRC_FILES := \
    google/protobuf/stubs/atomicops_internals_x86_gcc.cc \
    google/protobuf/stubs/atomicops_internals_x86_msvc.cc \
    google/protobuf/stubs/bytestream.cc \
    google/protobuf/stubs/common.cc \
    google/protobuf/stubs/int128.cc \
    google/protobuf/stubs/once.cc \
    google/protobuf/stubs/status.cc \
    google/protobuf/stubs/statusor.cc \
    google/protobuf/stubs/stringpiece.cc \
    google/protobuf/stubs/stringprintf.cc \
    google/protobuf/stubs/structurally_valid.cc \
    google/protobuf/stubs/strutil.cc \
    google/protobuf/stubs/time.cc \
    google/protobuf/arena.cc \
    google/protobuf/arenastring.cc \
    google/protobuf/extension_set.cc \
    google/protobuf/generated_message_util.cc \
    google/protobuf/message_lite.cc \
    google/protobuf/repeated_field.cc \
    google/protobuf/wire_format_lite.cc \
    google/protobuf/io/coded_stream.cc \
    google/protobuf/io/zero_copy_stream.cc \
    google/protobuf/io/zero_copy_stream_impl_lite.cc \

LOCAL_C_INCLUDES := $(INCLUDE_DIR)
LOCAL_CXXFLAGS := $(COMMON_CXX_FLAGS)
include $(BUILD_STATIC_LIBRARY)

include $(call all-makefiles-under,$(LOCAL_PATH))
