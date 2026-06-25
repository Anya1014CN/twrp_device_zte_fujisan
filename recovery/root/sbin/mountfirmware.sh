#!/sbin/sh

LOGFILE=/tmp/recovery.log
MODEM=/dev/block/bootdevice/by-name/modem

log_print() {
    echo "I:mountfirmware::$1" >> "$LOGFILE"
}

setprop firmware.ready 0

/sbin/timeout 10 /sbin/sh -c '
    while [ ! -e "'"$MODEM"'" ]; do
        sleep 0.2
    done
'

mkdir -p /firmware
umount /firmware 2>/dev/null

if mount -t vfat -o ro,shortname=lower,uid=1000,gid=1000,dmask=227,fmask=337 "$MODEM" /firmware; then
    if [ -d /firmware/image ]; then
        setprop firmware.ready 1
        log_print "mounted modem firmware"
        exit 0
    fi
    log_print "mount succeeded but /firmware/image missing"
else
    log_print "mount failed"
fi

exit 1
