#!/sbin/sh

i=0
while [ "$i" -lt 30 ]; do
    echo 0 > /proc/touchscreen/integrate_device_mode 2>/dev/null
    rm /dev/input/event2 2>/dev/null
    rm /dev/input/mouse1 2>/dev/null
    rm /dev/input/event3 2>/dev/null
    rm /dev/input/mouse2 2>/dev/null
    sleep 1
    i=$((i + 1))
done
