#! /bin/bash
sudo -i
yum install httpd -y
#yum install git -y
#yum install docker -y
systemctl start httpd
systemctl enable httpd
echo "<h1> Webserver... </h1>" > /var/www/html/index.html
