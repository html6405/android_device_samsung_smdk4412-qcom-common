#!/system/bin/sh

mount /dev/block/mmcblk0p10 /firmware
mount /dev/block/mmcblk0p11 /tombstones

mkdir /data/cp_log
chmod 0775 /data/cp_log
chown system radio /data/cp_log
chown system system /tombstones
chmod 0775 /tombstones
restorecon_recursive /tombstones
restorecon /tombstones/qcks/temp.dump

/system/vendor/bin/qcks s