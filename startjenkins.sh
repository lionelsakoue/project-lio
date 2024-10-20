#! /bin/bash/

echo " enabling jenkins "
sudo systemctl enable jenkins
echo " starting jenkins"
sudo systemctl start jenkins
echo " jenkins status "
sudo systemctl status jenkins
