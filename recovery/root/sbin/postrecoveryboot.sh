#!/sbin/sh

sleep 1

echo 200 > /sys/class/leds/lcd-backlight-2/brightness 2>/dev/null
echo 0 > /sys/class/leds/lcd-backlight/brightness 2>/dev/null
echo 0 > /sys/class/graphics/fb0/blank 2>/dev/null
echo 4 > /sys/class/graphics/fb1/blank 2>/dev/null
echo 4 > /sys/class/graphics/fb2/blank 2>/dev/null
echo 0 > /proc/touchscreen/integrate_device_mode 2>/dev/null
rm /dev/input/event2 2>/dev/null
rm /dev/input/mouse1 2>/dev/null

sleep 1
echo 200 > /sys/class/leds/lcd-backlight-2/brightness 2>/dev/null
echo 0 > /sys/class/leds/lcd-backlight/brightness 2>/dev/null
echo 0 > /sys/class/graphics/fb0/blank 2>/dev/null
echo 4 > /sys/class/graphics/fb1/blank 2>/dev/null
echo 4 > /sys/class/graphics/fb2/blank 2>/dev/null
echo 0 > /proc/touchscreen/integrate_device_mode 2>/dev/null
rm /dev/input/event2 2>/dev/null
rm /dev/input/mouse1 2>/dev/null

sleep 5
echo 200 > /sys/class/leds/lcd-backlight-2/brightness 2>/dev/null
echo 0 > /sys/class/leds/lcd-backlight/brightness 2>/dev/null
echo 0 > /sys/class/graphics/fb0/blank 2>/dev/null
echo 4 > /sys/class/graphics/fb1/blank 2>/dev/null
echo 4 > /sys/class/graphics/fb2/blank 2>/dev/null
echo 0 > /proc/touchscreen/integrate_device_mode 2>/dev/null
rm /dev/input/event2 2>/dev/null
rm /dev/input/mouse1 2>/dev/null

exit 0
