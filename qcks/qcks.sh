#!/system/bin/sh

mount /dev/block/mmcblk0p10 /firmware
mount /dev/block/mmcblk0p11 /tombstones

/system/vendor/bin/qcks s