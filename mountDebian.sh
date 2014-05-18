#!/bin/sh

cd /media/sda1/debian-mipsel-squeeze
mount | grep -v debian | grep -v sda | grep -v rootfs | grep -v ramfs | awk '{print $3}' | while read fs; do mount -o bind $fs $PWD${fs}; done
cp /etc/resolv.conf etc/

/media/sda1/runFromDebian.sh /media/sda1/debian-mipsel-squeeze/usr/sbin/chroot /media/sda1/debian-mipsel-squeeze/ /bin/bash
