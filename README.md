gauntletNodeChroot
==================

Scripts for Gauntlet Node Chroot Creation and Operation

Create a set of mipsel debian files with "sudo ./createChroot.sh"

Copy those files (and the scripts, while you're at it) over to the gauntlet node using USB on an hfs plus case sensitive filesystem:

```shell
sudo gparted /dev/sdX
mkfs.hfsplus -s -v gauntletNode /dev/sdX1
sudo rsync -avH --progress --inplace  mountDebian.sh  runFromDebian.sh  umountDebian.sh debian-mipsel-squeeze /media/gauntletNode/
```

start the telnet server on the node:
```shell
wget -O /dev/null http://10.10.10.254/cgi-bin/killprocess.cgi?service
```

telnet in admin/admin (or to the address your router gave the node!  Everything is insecure this way!):
telnet 10.10.10.254

run:
```shell
/media/sda1/mountDebian.sh
```

you are now in debian on your node.  add users, change passwords, start ssh
```shell
adduser -m clashthebunny; passwd clashthebunny; service ssh start
```
