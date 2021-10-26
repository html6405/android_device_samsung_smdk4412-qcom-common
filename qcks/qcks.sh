#!/system/bin/sh

mount /dev/block/mmcblk0p10 /firmware
mount /dev/block/mmcblk0p11 /tombstones

mkdir /data/cp_log
chmod 0775 /data/cp_log
chown system radio /data/cp_log
chown system system /tombstones
chmod 0775 /tombstones

chmod 0775 /dev/block/modem/m9kefs1
chown system radio /dev/block/modem/m9kefs2
chmod 0775 /dev/block/modem/m9kefs2
chown system radio /dev/block/modem/m9kefs3
chmod 0775 /dev/block/modem/m9kefs3