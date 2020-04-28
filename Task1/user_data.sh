#!/bin/bash
sudo yum install httpd -y 
sudo systemctl enable httpd
sudo systemctl start httpd

echo "<h4>httpd-user_data Terraform</h4>" > /var/www/html/index.html