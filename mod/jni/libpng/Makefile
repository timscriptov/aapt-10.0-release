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
        pngwutil.c \
	arm/arm_init.c \
        arm/filter_neon.o \
        arm/filter_neon_intrinsics.c

OBJS = $(LOCAL_SRC_FILES:%.c=%.o)
COMMON_CXX_FLAGS := -frtti -fexceptions -std=gnu++11 -DAIDE_BUILD
all: $(OBJS)
	$(CXX) -o libpng.so $(OBJS) -I../include -I. -shared -Wl,-no-undefined -L/media/a4455jkjh/android/aide/aapt1/linux-arm64 -lz -pthread

#$(CC) -o libcutils.so $(OBJS)

.c.o:
	$(CC) -c -o $*.o $< -I../include -I. -fPIC
.cpp.o:
	$(CXX) -c -o $*.o $< -I../include -I. -fPIC
.S.o:
	$(CC) -c -o $*.o $< -I../include -I. -fPIC
