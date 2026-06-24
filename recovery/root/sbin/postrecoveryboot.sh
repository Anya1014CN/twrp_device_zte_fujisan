#!/sbin/sh

echo 200 > /sys/class/leds/lcd-backlight-2/brightness 2>/dev/null
echo 0 > /sys/class/leds/lcd-backlight/brightness 2>/dev/null
echo 0 > /sys/class/graphics/fb1/blank 2>/dev/null
echo 0 > /proc/touchscreen/integrate_device_mode 2>/dev/null

exit 0
