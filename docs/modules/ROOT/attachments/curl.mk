LOCAL_PATH := $(call my-dir)

# declare the prebuilt static library

include $(CLEAR_VARS)

LOCAL_SRC_FILES := libcurl.a

LOCAL_MODULE := libcurl-static

LOCAL_MODULE_SUFFIX := .a

LOCAL_MODULE_CLASS := STATIC_LIBRARIES

include $(BUILD_PREBUILT)

# convert the static library into a shared library

include $(CLEAR_VARS)

LOCAL_SRC_FILES :=

LOCAL_MODULE := libcurl

LOCAL_WHOLE_STATIC_LIBRARIES := libcurl-static

LOCAL_PRELINK_MODULE := false

include $(BUILD_SHARED_LIBRARY)
