mount | grep debian | awk '{print $3}' | while read folder; do  umount $folder; done
 mount | grep debian | awk '{print $3}' | while read folder; do  umount $folder; done
