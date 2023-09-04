TARGET := iphone:clang:latest:12.2
FINALPACKAGE=1

# INSTALL_TARGET_PROCESSES = SpringBoard

THEOS_PACKAGE_SCHEME=rootless

ifeq ($(THEOS_PACKAGE_SCHEME), rootless)
TARGET = iphone:clang:latest:15.0
else
TARGET = iphone:clang:latest:12.0
endif
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = WechatTweak

WechatTweak_FILES = $(shell find Sources/WechatTweak -name '*.swift') $(shell find Sources/WechatTweakC -name '*.m' -o -name '*.c' -o -name '*.mm' -o -name '*.cpp')
WechatTweak_SWIFTFLAGS = -ISources/WechatTweakC/include
WechatTweak_CFLAGS = -fobjc-arc -ISources/WechatTweakC/include

include $(THEOS_MAKE_PATH)/tweak.mk
