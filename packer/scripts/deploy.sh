#!/bin/bash
#sudo -s
apt-get update
apt-get install -y git
ssh-keyscan github.com >> ~/.ssh/known_hosts
apt install -y maven
apt install openjdk-11-jdk-headless

git clone https://github.com/evermanisha/spring-petclinic-rest

cd spring-petclinic-rest/
mvn install
