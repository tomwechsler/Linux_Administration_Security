#Working on rocky

#We install the apache web server
sudo dnf install -y httpd

#On rocky the service will not be started

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

#The permissions the same as on rocky
ls -ld /var/www/html


Using Enterprise Linux, you might expect the defaults to work for you, just as an example
the file permissions in both the Ubuntu and RedHat enterprise distributions expect the web server
to gain access to HTML pages using permissions granted to others!!