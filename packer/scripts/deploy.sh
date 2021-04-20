#!/bin/bash

apt-get update
apt-get install -y git
ssh-keyscan github.com >> ~/.ssh/known_hosts
apt install -y maven
apt install -y openjdk-11-jdk-headless

git clone https://github.com/evermanisha/spring-petclinic-rest
git clone https://github.com/evermanisha/spring-petclinic-angular.git


#!/bin/bash

# enable memory and swap cgroup
perl -p -i -e 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="cgroup_enable=memory swapaccount=1"/g'  /etc/default/grub
/usr/sbin/update-grub

# add docker group and add vagrant to it
sudo groupadd docker
sudo usermod -a -G docker ubuntu
sudo usermod -a -G docker vagrant

# install curl
apt-get update
apt-get install -y curl

# add the docker gpg key
curl https://get.docker.io/gpg | apt-key add -

# Add the Docker repository to your apt sources list.
echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list

# Update your sources
apt-get update

# Install. Confirm install.
apt-get install -y lxc-docker

#cd spring-petclinic-rest/
#mvn install -DskipTests
