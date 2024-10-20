#!/bin/bash

echo " this is a script to install jenkins on vm" 

#read the scrip the script below
echo " installing git in my vm"
sudo apt install git -y 
echo " install tree"
sudo apt install tree -y

#this is the line to install jenkins on my vm 
echo " installing jenkins "
sudo apt update -y
sudo apt install fontconfig openjdk-17-jre -y 
java -version
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins

#read this after jenkins is installed 
echo " jenkins installed" 

