#!/bin/bash

set -ex 

vgchange -ay

<<<<<<< HEAD
<<<<<<< HEAD
DEVICE_FS=`blkid -o value -s TYPE ${DEVICE} || echo ""`
if [ "`echo -n $DEVICE_FS`" == "" ] ; then 
  # wait for the device to be attached
  DEVICENAME=`echo "${DEVICE}" | awk -F '/' '{print $3}'`
=======
DEVICE_FS=`blkid -o value -s TYPE ${DEVICE***REMOVED*** || echo ""`
if [ "`echo -n $DEVICE_FS`" == "" ] ; then 
  # wait for the device to be attached
  DEVICENAME=`echo "${DEVICE***REMOVED***" | awk -F '/' '{print $3***REMOVED***'`
>>>>>>> 986ba1c... add_demos
=======
DEVICE_FS=`blkid -o value -s TYPE ${DEVICE} || echo ""`
if [ "`echo -n $DEVICE_FS`" == "" ] ; then 
  # wait for the device to be attached
  DEVICENAME=`echo "${DEVICE}" | awk -F '/' '{print $3}'`
>>>>>>> 78c7374... update_vars_image
  DEVICEEXISTS=''
  while [[ -z $DEVICEEXISTS ]]; do
    echo "checking $DEVICENAME"
    DEVICEEXISTS=`lsblk |grep "$DEVICENAME" |wc -l`
    if [[ $DEVICEEXISTS != "1" ]]; then
      sleep 15
    fi
  done
<<<<<<< HEAD
<<<<<<< HEAD
  pvcreate ${DEVICE}
  vgcreate data ${DEVICE}
=======
  pvcreate ${DEVICE***REMOVED***
  vgcreate data ${DEVICE***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
  pvcreate ${DEVICE}
  vgcreate data ${DEVICE}
>>>>>>> 78c7374... update_vars_image
  lvcreate --name volume1 -l 100%FREE data
  mkfs.ext4 /dev/data/volume1
fi
mkdir -p /data
echo '/dev/data/volume1 /data ext4 defaults 0 0' >> /etc/fstab
mount /data

# install docker
curl https://get.docker.com | bash
