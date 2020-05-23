#!/bin/bash

# volume setup
vgchange -ay

<<<<<<< HEAD
DEVICE_FS=`blkid -o value -s TYPE ${DEVICE}`
if [ "`echo -n $DEVICE_FS`" == "" ] ; then 
  # wait for the device to be attached
  DEVICENAME=`echo "${DEVICE}" | awk -F '/' '{print $3}'`
=======
DEVICE_FS=`blkid -o value -s TYPE ${DEVICE***REMOVED***`
if [ "`echo -n $DEVICE_FS`" == "" ] ; then 
  # wait for the device to be attached
  DEVICENAME=`echo "${DEVICE***REMOVED***" | awk -F '/' '{print $3***REMOVED***'`
>>>>>>> 191d763... adding_other_demos
  DEVICEEXISTS=''
  while [[ -z $DEVICEEXISTS ]]; do
    echo "checking $DEVICENAME"
    DEVICEEXISTS=`lsblk |grep "$DEVICENAME" |wc -l`
    if [[ $DEVICEEXISTS != "1" ]]; then
      sleep 15
    fi
  done
<<<<<<< HEAD
  pvcreate ${DEVICE}
  vgcreate data ${DEVICE}
=======
  pvcreate ${DEVICE***REMOVED***
  vgcreate data ${DEVICE***REMOVED***
>>>>>>> 191d763... adding_other_demos
  lvcreate --name volume1 -l 100%FREE data
  mkfs.ext4 /dev/data/volume1
fi
mkdir -p /var/lib/jenkins
echo '/dev/data/volume1 /var/lib/jenkins ext4 defaults 0 0' >> /etc/fstab
mount /var/lib/jenkins

# jenkins repository
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
echo "deb http://pkg.jenkins.io/debian-stable binary/" >> /etc/apt/sources.list
apt-get update

# install dependencies
apt-get install -y python3 openjdk-11-jdk awscli
# install jenkins
<<<<<<< HEAD
apt-get install -y jenkins=${JENKINS_VERSION} unzip

# install terraform
wget -q https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
&& unzip -o terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/local/bin \
&& rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip
=======
apt-get install -y jenkins=${JENKINS_VERSION***REMOVED*** unzip

# install terraform
wget -q https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION***REMOVED***/terraform_${TERRAFORM_VERSION***REMOVED***_linux_amd64.zip \
&& unzip -o terraform_${TERRAFORM_VERSION***REMOVED***_linux_amd64.zip -d /usr/local/bin \
&& rm terraform_${TERRAFORM_VERSION***REMOVED***_linux_amd64.zip
>>>>>>> 191d763... adding_other_demos

# install packer
cd /usr/local/bin
wget -q https://releases.hashicorp.com/packer/0.10.2/packer_0.10.2_linux_amd64.zip
unzip packer_0.10.2_linux_amd64.zip
# clean up
apt-get clean
<<<<<<< HEAD
rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip
=======
rm terraform_${TERRAFORM_VERSION***REMOVED***_linux_amd64.zip
>>>>>>> 191d763... adding_other_demos
rm packer_0.10.2_linux_amd64.zip
