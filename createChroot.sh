#!/bin/bash 

apt-get install binfmt-support qemu qemu-user-static debootstrap
debootstrap --foreign --arch mipsel --include build-essential,openssh-server,rsync,sudo squeeze debian-mipsel-squeeze/ http://ftp.debian.org/debian/

cp /usr/bin/qemu-mipsel-static debian-mipsel-squeeze/usr/bin

DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true  LC_ALL=C LANGUAGE=C LANG=C chroot debian-mipsel-squeeze/ /debootstrap/debootstrap --second-stage

DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true LC_ALL=C LANGUAGE=C LANG=C chroot debian-mipsel-squeeze dpkg --configure -a

chroot debian-mipsel-squeeze apt-get update
chroot debian-mipsel-squeeze apt-get upgrade
