#!/bin/bash

apt-get update
apt-get install -y git
ssh-keyscan github.com >> ~/.ssh/known_hosts
apt install -y maven
apt install -y openjdk-11-jdk-headless

git clone https://github.com/evermanisha/spring-petclinic-rest.git
cd spring-petclinic-rest
#mvn install



