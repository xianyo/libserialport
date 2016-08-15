LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_SRC_FILES := linux.c linux_termios.c serialport.c

LOCAL_CFLAGS += -D__linux__ -D__ANDROID__

LOCAL_MODULE:= libserialport

include $(BUILD_SHARED_LIBRARY)