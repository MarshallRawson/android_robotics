LOCAL_PATH := $(call my-dir)
# power_example executable
# ========================================================
include $(CLEAR_VARS)
LOCAL_MODULE := android_robotics
LOCAL_SRC_FILES := \
  hello_world.cpp
LOCAL_CPPFLAGS := -Wall -Werror -fPIE
LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -llog -fPIE -pie
include $(BUILD_EXECUTABLE)
