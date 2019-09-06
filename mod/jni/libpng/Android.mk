LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := png_static
LOCAL_SRC_FILES := png.c \
        pngerror.c \
        pngget.c \
        pngmem.c \
        pngpread.c \
        pngread.c \
        pngrio.c \
        pngrtran.c \
        pngrutil.c \
        pngset.c \
        pngtrans.c \
        pngwio.c \
        pngwrite.c \
        pngwtran.c \
        pngwutil.c
ifeq (arm, $(findstring arm,$(TARGET_ARCH)))
LOCAL_SRC_FILES += arm/arm_init.c \
                arm/filter_neon.S \
                arm/filter_neon_intrinsics.c
else
ifeq (x86, $(findstring x86,$(TARGET_ARCH)))
LOCAL_SRC_FILES += intel/intel_init.c \
                intel/filter_sse2_intrinsics.c
endif
endif
LOCAL_CXXFLAGS := $(COMMON_CXX_FLAGS)

include $(BUILD_STATIC_LIBRARY)

