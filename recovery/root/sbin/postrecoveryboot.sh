#!/sbin/sh

echo 200 > /sys/class/leds/lcd-backlight-2/brightness 2>/dev/null
echo 0 > /sys/class/leds/lcd-backlight/brightness 2>/dev/null
echo 0 > /sys/class/graphics/fb1/blank 2>/dev/null
echo 0 > /proc/touchscreen/integrate_device_mode 2>/dev/null

(
    log=/tmp/touchfilter.log
    echo "touchfilter: start $(date 2>/dev/null)" >> "$log"
    while true; do
        echo 0 > /proc/touchscreen/integrate_device_mode 2>/dev/null
        rm -f /dev/input/event2 /dev/input/mouse1 /dev/input/event3 /dev/input/mouse2 2>/dev/null
        sleep 1
    done
) >/dev/null 2>&1 &

exit 0
