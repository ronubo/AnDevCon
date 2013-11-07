LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := hello_c_example
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := hello.c
LOCAL_SHARED_LIBRARIES := liblog

include $(BUILD_EXECUTABLE)
