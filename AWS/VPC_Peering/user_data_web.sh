#!/bin/bash
#web instance
sudo yum install wget -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
echo "<h1>  VPC-Peering Project  </h1>" | sudo tee /var/www/html/index.html
sudo amazon-linux-extras install php7.2 -y
sudo yum install php -y 
sudo yum restart httpd 
