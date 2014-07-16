SDKVERSION = 7.0
ARCHS = armv7 arm64

include theos/makefiles/common.mk
TWEAK_NAME = BackdropBlur
BackdropBlur_FILES = Tweak.xm
BackdropBlur_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
