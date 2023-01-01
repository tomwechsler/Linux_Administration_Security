#Working on alma

#We install the apache web server
sudo yum install -y httpd

#On alma the service will not be started

#The listening ports
ss -ntl

#The permissions
ls -ld /var/www/html

#SWITCH TO UBUNTU

#We install the apache web server
sudo apt update && sudo apt install -y apache2

#On ubuntu the service will be started

#The listening ports
ss -ntl

#The permissions the same as on alma
ls -ld /var/www/html


Using Enterprise Linux, you might expect the defaults to work for you, just as an example
the file permissions in both the green and red enterprise distributions expect the web server
to gain access to HTML pages using permissions granted to others!!