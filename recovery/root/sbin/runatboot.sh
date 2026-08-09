#!/sbin/sh

# TWRP persists backup selections in /data/media/0/TWRP/.twrps.  Apply this
# device default once, after the GUI command FIFO becomes available, then
# leave every subsequent selection under the user's control.
defaults_marker=/data/media/0/TWRP/.fujisan_backup_defaults_v1

(
    while [ ! -e "$defaults_marker" ]; do
        if [ -d /data/media/0/TWRP ] && [ -p /sbin/orsin ]; then
            /sbin/twrp set tw_backup_list '/boot;/recovery;/system;/data;'
            if [ $? -eq 0 ]; then
                touch "$defaults_marker"
            fi
        fi
        sleep 1
    done
) &

exit 0
