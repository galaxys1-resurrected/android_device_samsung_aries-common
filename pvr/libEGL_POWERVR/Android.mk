LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := egl.c
LOCAL_CFLAGS := -Wall -Werror
LOCAL_CFLAGS += -DFB_TARGET_FIX_EGL2_ALSO
LOCAL_LDFLAGS := -L $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
#LOCAL_ADDITIONAL_DEPENDENCIES
LOCAL_ADDITIONAL_LIBS := libIMGegl
LOCAL_ALLOWED_LDLIBS := $(LOCAL_ADDITIONAL_LIBS:lib%=-l%)
LOCAL_LDFLAGS += $(LOCAL_ALLOWED_LDLIBS)
LOCAL_MODULE := libEGL_POWERVR
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/egl
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
