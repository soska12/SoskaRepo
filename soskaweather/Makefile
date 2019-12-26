ARCHS = armv7 arm64

DEBUG = 0

FINALPACKAGE = 1

THEOS_DEVICE_IP = 192.168.0.129

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SoskaWeather

SoskaWeather_FILES = Tweak.x
SoskaWeather_CFLAGS = -fobjc-arc

after-install::
	install.exec "killall -9 SpringBoard"

include $(THEOS_MAKE_PATH)/tweak.mk
