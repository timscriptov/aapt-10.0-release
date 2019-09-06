
LOCAL_PATH := $(my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := androidfw_static
LOCAL_SRC_FILES := \
    ApkAssets.cpp \
    Asset.cpp \
    AssetDir.cpp \
    AssetManager.cpp \
    AssetManager2.cpp \
    AttributeResolution.cpp \
    ChunkIterator.cpp \
    Idmap.cpp \
    LoadedArsc.cpp \
    LocaleData.cpp \
    misc.cpp \
    ObbFile.cpp \
    ResourceTypes.cpp \
    ResourceUtils.cpp \
    StreamingZipInflater.cpp \
    TypeWrappers.cpp \
    Util.cpp \
    ZipFileRO.cpp \
    ZipUtils.cpp
LOCAL_STATIC_LIBRARIES := ziparchive_static
include $(BUILD_STATIC_LIBRARY)

