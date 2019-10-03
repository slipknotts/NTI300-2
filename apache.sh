#!/bin/bash
yum -y install httpd mod_ssl
systemctl start httpd
vi /etc/httpd/conf.d/welcome.conf
sed -i 's/^/#/g' /etc/httpd/conf.d/welcome.conf
echo "<html><body><h1>Hola NTI 300</h1></body></html>" > /var/www/html/index.html
