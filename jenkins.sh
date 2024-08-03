#!/bin/bash


# update the system
sudo apt update

#java --version


# install java dependency to install jenkins

sudo apt install default-jre -y

sudo apt install default-jdk -y
# java --version
  
#Add the repository key to the system

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc   https://pkg.jenkins.io/debian/jenkins.io-2023.key


# After the key is added the system will return with OK. Next, let’s append the Debian package repository address to the server’s sources.list


echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null

# update again
sudo apt-get update
 
#install jenkins
sudo apt-get install jenkins -y

#start jenkins
sudo systemctl start jenkins
     
#sudo systemctl status jenkins


# After the key is added the system will return with OK. Next, let’s append the Debian package repository address to the server’s sources.list
sudo ufw allow 8080

#  If the firewall is inactive, the following commands will allow OpenSSH and enable the firewall
     
sudo ufw allow OpenSSH

#
sudo ufw enable
     
# sudo ufw status
