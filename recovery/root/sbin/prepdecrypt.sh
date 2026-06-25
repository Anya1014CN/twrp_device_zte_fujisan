#!/sbin/sh

LOGFILE=/tmp/recovery.log

if [ -x /sbin/resetprop ]; then
    SETPROP=/sbin/resetprop
else
    SETPROP=setprop
fi

log_print() {
    echo "I:prepdecrypt::$1" >> "$LOGFILE"
}

relink_dir() {
    src_dir="$1"

    if [ ! -d "$src_dir" ]; then
        log_print "missing $src_dir"
        return 0
    fi

    find "$src_dir" -maxdepth 1 -type f | while read -r src; do
        dst="/sbin/$(basename "$src")"
        sed 's|/system/bin/linker|///////sbin/linker|g' "$src" > "$dst"
        chmod 0755 "$dst"
        log_print "relinked $src -> $dst"
    done
}

log_print "starting qcom FDE prep"
relink_dir /vendor/bin
relink_dir /vendor/bin/hw

$SETPROP ro.build.version.release 8.1.0
$SETPROP ro.build.version.security_patch 2019-02-01
$SETPROP ro.build.version.sdk 27
$SETPROP ro.product.first_api_level 25

setprop crypto.ready 1
log_print "crypto.ready=$(getprop crypto.ready)"
exit 0
