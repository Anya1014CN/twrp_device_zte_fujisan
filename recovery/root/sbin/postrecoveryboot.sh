#!/sbin/sh

echo 200 > /sys/class/leds/lcd-backlight-2/brightness 2>/dev/null
echo 0 > /sys/class/leds/lcd-backlight/brightness 2>/dev/null
echo 0 > /sys/class/graphics/fb1/blank 2>/dev/null

(
    i=0
    while [ "$i" -lt 12 ]; do
        echo 0 > /proc/touchscreen/integrate_device_mode 2>/dev/null
        rm /dev/input/event2 2>/dev/null
        rm /dev/input/mouse1 2>/dev/null
        rm /dev/input/event3 2>/dev/null
        rm /dev/input/mouse2 2>/dev/null
        sleep 1
        i=$((i + 1))
    done
) &

exit 0
