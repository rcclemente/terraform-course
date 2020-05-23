#!/bin/bash

# volume setup
vgchange -ay

<<<<<<< HEAD
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
>>>>>>> 32a340e... add_docker
=======
DEVICE_FS=`blkid -o value -s TYPE ${DEVICE}`
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
>>>>>>> 32a340e... add_docker
=======
  pvcreate ${DEVICE}
  vgcreate data ${DEVICE}
>>>>>>> 78c7374... update_vars_image
  lvcreate --name volume1 -l 100%FREE data
  mkfs.ext4 /dev/data/volume1
fi
mkdir -p /var/lib/jenkins
echo '/dev/data/volume1 /var/lib/jenkins ext4 defaults 0 0' >> /etc/fstab
mount /var/lib/jenkins

# install default-jre (needed for ubuntu 18.04)
apt-get install -y default-jre

# install jenkins and docker
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
echo "deb http://pkg.jenkins.io/debian-stable binary/" >> /etc/apt/sources.list
apt-get update
<<<<<<< HEAD
<<<<<<< HEAD
apt-get install -y jenkins=${JENKINS_VERSION} unzip docker.io
=======
apt-get install -y jenkins=${JENKINS_VERSION***REMOVED*** unzip docker.io
>>>>>>> 32a340e... add_docker
=======
apt-get install -y jenkins=${JENKINS_VERSION} unzip docker.io
>>>>>>> 78c7374... update_vars_image

# enable docker and add perms
usermod -G docker jenkins
systemctl enable docker
service docker start
service jenkins restart

# install pip
wget -q https://bootstrap.pypa.io/get-pip.py
python get-pip.py
python3 get-pip.py
rm -f get-pip.py
# install awscli
pip install awscli

# install terraform
TERRAFORM_VERSION="0.12.18"
<<<<<<< HEAD
<<<<<<< HEAD
wget -q https://releases.hashicorp.com/terraform/$${TERRAFORM_VERSION}/terraform_$${TERRAFORM_VERSION}_linux_amd64.zip \
&& unzip -o terraform_$${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/local/bin \
&& rm terraform_$${TERRAFORM_VERSION}_linux_amd64.zip
=======
wget -q https://releases.hashicorp.com/terraform/$${TERRAFORM_VERSION***REMOVED***/terraform_$${TERRAFORM_VERSION***REMOVED***_linux_amd64.zip \
&& unzip -o terraform_$${TERRAFORM_VERSION***REMOVED***_linux_amd64.zip -d /usr/local/bin \
&& rm terraform_$${TERRAFORM_VERSION***REMOVED***_linux_amd64.zip
>>>>>>> 32a340e... add_docker
=======
wget -q https://releases.hashicorp.com/terraform/$${TERRAFORM_VERSION}/terraform_$${TERRAFORM_VERSION}_linux_amd64.zip \
&& unzip -o terraform_$${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/local/bin \
&& rm terraform_$${TERRAFORM_VERSION}_linux_amd64.zip
>>>>>>> 78c7374... update_vars_image

# clean up
apt-get clean
rm terraform_0.12.18_linux_amd64.zip
