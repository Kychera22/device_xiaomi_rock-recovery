#!/sbin/sh

sleep 5

#
umount /system_root
umount /system_ext
umount /product
umount /mi_ext
umount /vendor
#
mount /dev/block/mapper/system /system_root
mount /dev/block/mapper/system_ext /system_ext
mount /dev/block/mapper/product /product
mount /dev/block/mapper/mi_ext /mi_ext
mount /dev/block/mapper/vendor /vendor
#
mount -o remount,rw /system_root
mount -o remount,rw /system_ext
mount -o remount,rw /product
mount -o remount,rw /mi_ext
mount -o remount,rw /vendor

exit 0
